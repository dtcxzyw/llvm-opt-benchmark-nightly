Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$30eval_dot_index_chain_arguments17h495d18ae9b36f06aE":bb.a
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f0a29ad24a4eb5bE", ptr %.sroa.4103.0..sroa_idx, align 8
  store ptr @676, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %i.es, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @678) #70
  unreachable

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_expr17haed8650a3eaf3411E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(200) %2, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias noundef align 8 dereferenceable_or_null(16) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %6)
  %i.et = load i8, ptr %i.l, align 8, !range !70, !noundef !55 ; 2 uses
  %i.eu = icmp eq i8 %i.et, 12
  br i1 %i.eu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !55, !align !56, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit"

bb.bg:                                            ; preds = %.critedge
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.764.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.764.0..sroa_idx65, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.498.0..sroa_idx, i64 7, i1 false)
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i8 %i.et, ptr %i.k, align 8
  %.sroa.766.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.599.0.copyload, ptr %.sroa.766.0..sroa_idx67, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !29998)
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !29999, !noalias !30000, !noundef !55 ; 2 uses
  %i.ez = icmp ugt i64 %i.ey, 5                   ; 2 uses
  %i.fa = load ptr, ptr %7, align 8, !alias.scope !29999, !noalias !30000, !nonnull !55
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %.sink10.i.i167 = select i1 %i.ez, ptr %i.fa, ptr %7
  %.sink9.i.i168 = select i1 %i.ez, ptr %i.fb, ptr %i.ex ; 2 uses
  %.sink.i.i169 = call i64 @llvm.umax.i64(i64 %i.ey, i64 5)
  %i.fc = load i64, ptr %.sink9.i.i168, align 8, !alias.scope !29998, !noalias !30001, !noundef !55 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %.sink.i.i169
  br i1 %i.fd, label %bb.bi, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit174", !prof !66

bb.bh:                                            ; preds = %bb.bi
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.m)
          to label %common.resume unwind label %bb.bk, !noalias !29998, !inline_history !73

bb.bi:                                            ; preds = %bb.bg
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h1ab5bb65b1b551c5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %7)
          to label %bb.bj unwind label %bb.bh, !noalias !30001

bb.bj:                                            ; preds = %bb.bi
  %i.ff = load ptr, ptr %7, align 8, !alias.scope !29998, !noalias !30001, !nonnull !55, !noundef !55
  %.pre.i173 = load i64, ptr %i.fb, align 8, !alias.scope !29998, !noalias !30001
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit174"

bb.bk:                                            ; preds = %bb.bh
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !30002
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit174": ; preds = %bb.bg, %bb.bj
  %i.fh = phi i64 [ %.pre.i173, %bb.bj ], [ %i.fc, %bb.bg ]
  %.sroa.01.0.i170 = phi ptr [ %i.fb, %bb.bj ], [ %.sink9.i.i168, %bb.bg ] ; 2 uses
  %.sroa.0.0.i171 = phi ptr [ %i.ff, %bb.bj ], [ %.sink10.i.i167, %bb.bg ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i171, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.fj = load i64, ptr %.sroa.01.0.i170, align 8, !alias.scope !29998, !noalias !30001, !noundef !55
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %.sroa.01.0.i170, align 8, !alias.scope !29998, !noalias !30001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit"

"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit": ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit", %bb.x, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", %"_ZN4core3ptr118drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h12599909d2365876E.exit", %bb.z, %bb.au, %bb.bf, %bb.t, %bb.bb, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit174"
  %.sroa.08.2 = phi ptr [ %.sroa.08.1, %bb.au ], [ %i.bf, %"_ZN4core3ptr118drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h12599909d2365876E.exit" ], [ null, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit174" ], [ null, %bb.bb ], [ null, %bb.t ], [ %i.ew, %bb.bf ], [ %i.cj, %bb.z ], [ %i.au, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ], [ null, %bb.x ], [ null, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h48468056d07ca05aE.exit" ]
  ret ptr %.sroa.08.2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn17h0ba5323d301245f5E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(200) %2, ptr noalias nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(32) %3, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(16) %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address_is_null) %6, i64 %7, i1 noundef zeroext %8) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %6, null                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30167)
  br i1 %.not, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30168)
  %i.d = load atomic ptr, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE acquire, align 8, !noalias !30169
  %.not.i.i.i = icmp eq ptr %i.d, inttoptr (i64 2 to ptr)
  %.val14.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 8), align 8, !range !63, !noalias !30169
  %i.e = trunc nuw i64 %.val14.i.i.i to i1
  %i.f = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 16), align 8, !noalias !30169 ; 2 uses
  %.val10.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 24), align 8, !noalias !30169 ; 2 uses
  %.val12.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 32), align 8, !noalias !30169
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 40), align 8, !noalias !30170, !noundef !55
  %i.h = or i64 %.val12.i.i.i, %i.g
  %i.i = or i64 %i.h, %.val.i.i.i
  %i.j = or i64 %i.i, %.val10.i.i.i
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load atomic ptr, ptr @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E acquire, align 8, !noalias !30169 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i", !prof !66

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h356f4c85e7ef4921E"(ptr noundef nonnull align 8 @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E), !noalias !30169
  br label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i"

"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i": ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.o = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !30170, !noundef !55
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !30170, !noundef !55
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.r = xor i64 %.val.i.i.i, 4983270260364809079
  %i.s = xor i64 %.val10.i.i.i, -4732044268327596948
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i

_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i: ; preds = %bb.f, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i"
  %.sroa.15.0.i.i.i = phi i64 [ %i.o, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.r, %bb.f ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.q, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i.i.i" ], [ %i.s, %bb.f ]
  %i.t = xor i64 %.sroa.6.0.i.i.i, 65
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw nsw i128 %i.u, 6364136223846793005 ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = xor i128 %i.w, %i.v
  %i.y = trunc i128 %i.x to i64                   ; 2 uses
  %i.z = icmp eq i64 %7, 0
  br i1 %i.z, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h3dfb262f50d19b9bE.exit.i", label %bb.g

bb.g:                                             ; preds = %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.6.1.i.i.i = phi i64 [ %i.y, %bb.g ], [ %i.ah, %bb.h ]
  %i.aa = phi i64 [ 0, %bb.g ], [ %i.ai, %bb.h ]  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aa
  %.val17.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !30171, !noalias !30172, !nonnull !55, !align !56, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30173
  call void @_ZN4rhai5types7dynamic7Dynamic7type_id17hea8bc8aaa12b2054E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val17.i.i.i.i.i.i), !noalias !30173
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !30173
  %i.ac = xor i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, %.sroa.6.1.i.i.i
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw nsw i128 %i.ad, 6364136223846793005 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64                 ; 2 uses
  %i.ai = add nuw i64 %i.aa, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30173
  %i.aj = icmp eq i64 %i.ai, %7
  br i1 %i.aj, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h2f21aa429000ab84E.exit.loopexit.i.i.i, label %bb.h

_ZN4core4iter6traits8iterator8Iterator8for_each17h2f21aa429000ab84E.exit.loopexit.i.i.i: ; preds = %bb.h
  %i.ak = xor i64 %7, %i.ah
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h3dfb262f50d19b9bE.exit.i"

"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h3dfb262f50d19b9bE.exit.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator8for_each17h2f21aa429000ab84E.exit.loopexit.i.i.i, %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.y, %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i.i.i ], [ %i.ak, %_ZN4core4iter6traits8iterator8Iterator8for_each17h2f21aa429000ab84E.exit.loopexit.i.i.i ]
  %i.al = zext i64 %.sroa.04.0.i.i.i to i128
  %i.am = mul nuw nsw i128 %i.al, 6364136223846793005 ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = xor i128 %i.an, %i.am                   ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = and i128 %i.ao, 18446744073709551615
  %i.ar = zext i64 %.sroa.15.0.i.i.i to i128
  %i.as = mul nuw i128 %i.aq, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64                 ; 2 uses
  %i.aw = call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 %i.ap)
  %i.ax = xor i64 %i.aw, %5
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit": ; preds = %bb.a, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h3dfb262f50d19b9bE.exit.i"
  %.sroa.03.0.i = phi i64 [ %i.ax, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h3dfb262f50d19b9bE.exit.i" ], [ %5, %bb.a ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30174)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !30175, !noalias !30176, !noundef !55 ; 3 uses
  %i.ba = icmp ugt i64 %i.az, 3                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !30175, !noalias !30176 ; 2 uses
  %.sink10.i.i = select i1 %i.ba, i64 %i.bc, i64 %i.az
  %i.bd = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.bd, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i", label %bb.i

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit"
  %i.be = load ptr, ptr %2, align 8, !alias.scope !30175, !noalias !30176, !nonnull !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.32..32..32..sroa_idx, i8 0, i64 32, i1 false), !alias.scope !30177, !noalias !30174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @513, i64 32, i1 false), !noalias !30174
  %.sink9.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %i.ay ; 2 uses
  %.sink10.i.i.i = select i1 %i.ba, ptr %i.be, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sink10.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.bf = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !30178, !noalias !30179, !noundef !55
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %.sink9.i.i.i, align 8, !alias.scope !30178, !noalias !30179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre.i = load i64, ptr %i.ay, align 8, !alias.scope !30180, !noalias !30181
  %.val.i.pre = load i64, ptr %i.bb, align 8, !alias.scope !30174
  br label %bb.i

bb.i:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit"
  %i.bh = phi i64 [ %i.bc, %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit" ], [ %.val.i.pre, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i" ]
  %.val4.i = phi i64 [ %i.az, %"_ZN4core6option15Option$LT$T$GT$6map_or17h070d900e9c2d5a07E.exit" ], [ %.pre.i, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i" ] ; 2 uses
  %9 = icmp ugt i64 %.val4.i, 3                   ; 2 uses
  %10 = select i1 %9, i64 %i.bh, i64 %.val4.i     ; 2 uses
  %.not.i = icmp eq i64 %10, 0
  br i1 %.not.i, label %bb.j, label %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit, !prof !66

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @615) #70, !noalias !30174
  unreachable

_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit: ; preds = %bb.i
  %i.bi = load ptr, ptr %2, align 8, !alias.scope !30180, !noalias !30181, !nonnull !55
  %.sink10.i1.i = select i1 %9, ptr %i.bi, ptr %2
  %i.bj = getelementptr [64 x i8], ptr %.sink10.i1.i, i64 %10 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -64    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30182)
  %i.bl = getelementptr i8, ptr %i.bj, i64 -32    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30183)
  call void @llvm.experimental.noalias.scope.decl(metadata !30184)
  %i.bm = lshr i64 %.sroa.03.0.i, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bj, i64 -56    ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !30185, !noalias !30186, !noundef !55 ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8, !alias.scope !30185, !noalias !30186, !nonnull !55, !noundef !55 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit
  %.sroa.9.0.i.i.i = phi i64 [ 0, %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit ], [ %i.ch, %bb.m ]
  %.pn.i.i = phi i64 [ %.sroa.03.0.i, %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit ], [ %i.ci, %bb.m ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bp     ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.br, align 1, !noalias !30187 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i = phi i16 [ %i.cg, %bb.l ], [ %i.bt, %bb.k ] ; 3 uses
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bp
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [40 x i8], ptr %i.bq, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -40
  %.val3.i.i.i = load i64, ptr %i.ca, align 8, !noalias !30188, !noundef !55
  %i.cb = icmp eq i64 %.val3.i.i.i, %.sroa.03.0.i
  br i1 %i.cb, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread", label %bb.l, !prof !74

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %bb.n, !prof !66

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cf = add i16 %.sroa.06.0.i33.i.i, -1
  %i.cg = and i16 %i.cf, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ch = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i, %i.ch
  br label %bb.k

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cj = getelementptr i8, ptr %i.bj, i64 -48    ; 5 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !30189, !noalias !30190, !noundef !55
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread276", label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit", !prof !66

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread276": ; preds = %bb.n
  %i.cm = call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd476f90b5e071fc0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bl, i1 noundef zeroext true), !noalias !30191 ; 0 uses
  br label %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit"

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit": ; preds = %bb.n, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread276"
  %spec.select.i = select i1 %.not, i64 0, i64 %7 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !30192, !noalias !30193, !noundef !55 ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 3                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !30192, !noalias !30193, !nonnull !55
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !30192, !noalias !30193
  %.sink11.i = select i1 %i.cp, ptr %i.cr, ptr %i.cq ; 3 uses
  %.sink10.i = select i1 %i.cp, i64 %i.ct, i64 %i.co ; 3 uses
  %.idx = shl nuw nsw i64 %.sink10.i, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %.idx ; 2 uses
  %i.cv = icmp eq i64 %.sink10.i, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.i70 = call i64 @llvm.umin.i64(i64 %spec.select.i, i64 16) ; 3 uses
  %i.cy = icmp ne i64 %spec.select.i, 0
  %invariant.op = and i1 %8, %i.cy
  %i.cz = and i64 %5, 63
  %i.da = shl nuw i64 1, %i.cz                    ; 2 uses
  %i.db = lshr i64 %5, 6
  %i.dc = and i64 %i.db, 3                        ; 2 uses
  %i.dd = shl nuw nsw i64 1, %.sroa.0.0.i70       ; 2 uses
  %.sroa.3.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.de = icmp eq i64 %7, 0
  %.not10.not.not.i79.not407 = icmp eq i64 %.sink10.i, 0
  br label %bb.p

"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread": ; preds = %.lr.ph.i.i
  %i.df = getelementptr inbounds i8, ptr %i.bz, i64 -32 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8, !range !103, !noundef !55
  %.not43 = icmp eq i8 %i.dg, 5
  %. = select i1 %.not43, ptr null, ptr %i.df
  br label %bb.o

bb.o:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit105", %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit110", %bb.bm, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit", %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread"
  %.sroa.0.1 = phi ptr [ %., %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit.thread" ], [ null, %bb.bm ], [ %.57, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit" ], [ %3, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit" ], [ %.not50, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit110" ], [ %.61, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit105" ]
  ret ptr %.sroa.0.1

bb.p:                                             ; preds = %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit"
  %.sroa.0115.0 = phi i64 [ %.sroa.03.0.i, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit" ], [ %i.mp, %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit ] ; 10 uses
  %storemerge = phi i64 [ 1, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit" ], [ %i.mq, %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17he9f795f8f24b9b05E.exit" ], [ %.sroa.09.1, %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit ] ; 2 uses
  br i1 %i.cv, label %.loopexit294, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.dh = lshr i64 %.sroa.0115.0, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i", %.lr.ph.i
  %i.dj = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.dk, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i" ]
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 3 uses
  %.val10.i = load ptr, ptr %i.dk, align 8, !noalias !30194, !nonnull !55, !noundef !55 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val10.i, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !30194, !noundef !55 ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i67, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !30195)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val10.i, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !30195, !noalias !30194, !noundef !55
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !30196)
  call void @llvm.experimental.noalias.scope.decl(metadata !30197)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 56
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !30198, !noalias !30199, !noundef !55 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.ei, %bb.v ]
  %.pn.i.i.i.i.i = phi i64 [ %.sroa.0115.0, %bb.s ], [ %i.ej, %bb.v ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.dr ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !30200 ; 2 uses
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t, %bb.u
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.eh, %bb.u ], [ %i.du, %bb.t ] ; 3 uses
  %i.dv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.dw
  %i.dy = and i64 %i.dx, %i.dr
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [40 x i8], ptr %i.dm, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -40
  %.val3.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !30201, !noundef !55
  %i.ec = icmp eq i64 %.sroa.0115.0, %.val3.i.i.i.i.i.i
  br i1 %i.ec, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h47c05f454e15c2d6E.exit, label %bb.u, !prof !74

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %bb.t
  %i.ed = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.v, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i", !prof !66

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eg = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.eh = and i16 %i.eg, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ei = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ej = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ei
  br label %bb.t

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i": ; preds = %._crit_edge.i.i.i.i.i, %bb.r, %bb.q
  %i.ek = icmp eq ptr %.sink11.i, %i.dk
  br i1 %i.ek, label %.loopexit294, label %bb.q

.loopexit294:                                     ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17haa6f91ac1d643775E.exit.i", %bb.p
  %i.el = load ptr, ptr %i.cw, align 8, !noalias !30202, !nonnull !55, !noundef !55 ; 4 uses
  %i.em = load i64, ptr %i.cx, align 8, !noalias !30202, !noundef !55 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4rhai4func6native17NativeCallContext12_call_fn_raw17h05da1eb1389bb8a2E:bb.a
  br label %"_ZN68_$LT$ahash..fallback_hash..AHasher$u20$as$u20$core..hash..Hasher$GT$5write17ha71fc7cf933c9a30E.exit133"

bb.bh:                                            ; preds = %_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE.exit57
  %i.rf = icmp ugt i64 %3, 16
  br i1 %i.rf, label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122", label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i119"

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i119": ; preds = %bb.bh
  %.sroa.0.0.copyload.i33.i120 = load i64, ptr %2, align 1, !alias.scope !32581, !noalias !32584
  %i.rg = getelementptr i8, ptr %2, i64 %3
  %i.rh = getelementptr i8, ptr %i.rg, i64 -8
  %.sroa.0.0.copyload.i25.i121 = load i64, ptr %i.rh, align 1, !alias.scope !32581, !noalias !32585
  %i.ri = xor i64 %.sroa.0.0.copyload.i33.i120, %.sink12.i49
  %i.rj = xor i64 %.sroa.0.0.copyload.i25.i121, %.sink.i50
  %i.rk = zext i64 %i.ri to i128
  %i.rl = zext i64 %i.rj to i128
  %i.rm = mul nuw i128 %i.rl, %i.rk               ; 2 uses
  %i.rn = lshr i128 %i.rm, 64
  %i.ro = xor i128 %i.rn, %i.rm
  %i.rp = trunc i128 %i.ro to i64
  %i.rq = add i64 %i.qg, %.sink13.i48
  %i.rr = xor i64 %i.rq, %i.rp                    ; 2 uses
  %i.rs = tail call i64 @llvm.fshl.i64(i64 %i.rr, i64 %i.rr, i64 23)
  br label %"_ZN68_$LT$ahash..fallback_hash..AHasher$u20$as$u20$core..hash..Hasher$GT$5write17ha71fc7cf933c9a30E.exit133"

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122": ; preds = %bb.bh
  %i.rt = getelementptr i8, ptr %2, i64 %3
  %i.ru = getelementptr i8, ptr %i.rt, i64 -16
  %.sroa.0.0.copyload.i27.i123 = load i128, ptr %i.ru, align 1, !alias.scope !32581, !noalias !32585 ; 2 uses
  %.sroa.017.0.extract.trunc.i124 = trunc i128 %.sroa.0.0.copyload.i27.i123 to i64
  %.sroa.4.0.extract.shift.i125 = lshr i128 %.sroa.0.0.copyload.i27.i123, 64
  %i.rv = xor i64 %.sink12.i49, %.sroa.017.0.extract.trunc.i124
  %i.rw = zext i64 %i.rv to i128
  %i.rx = zext i64 %.sink.i50 to i128             ; 2 uses
  %i.ry = xor i128 %.sroa.4.0.extract.shift.i125, %i.rx
  %i.rz = mul nuw i128 %i.ry, %i.rw               ; 2 uses
  %i.sa = lshr i128 %i.rz, 64
  %i.sb = xor i128 %i.sa, %i.rz
  %i.sc = trunc i128 %i.sb to i64
  %i.sd = add i64 %i.qg, %.sink13.i48
  %i.se = xor i64 %i.sd, %i.sc                    ; 2 uses
  %i.sf = tail call i64 @llvm.fshl.i64(i64 %i.se, i64 %i.se, i64 23)
  br label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126"

"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126": ; preds = %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126", %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122"
  %.sroa.0.076.i127 = phi ptr [ %2, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122" ], [ %i.sg, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126" ] ; 2 uses
  %.sroa.13.075.i128 = phi i64 [ %3, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122" ], [ %i.sh, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126" ]
  %storemerge74.i129 = phi i64 [ %i.sf, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$14read_last_u12817h07febf17c0a2ace9E.exit.i122" ], [ %i.sr, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126" ]
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.076.i127, i64 16
  %i.sh = add i64 %.sroa.13.075.i128, -16         ; 2 uses
  %.sroa.0.0.copyload.i35.i130 = load i128, ptr %.sroa.0.076.i127, align 1, !alias.scope !32581, !noalias !32586 ; 2 uses
  %.sroa.018.0.extract.trunc.i131 = trunc i128 %.sroa.0.0.copyload.i35.i130 to i64
  %.sroa.419.0.extract.shift.i132 = lshr i128 %.sroa.0.0.copyload.i35.i130, 64
  %i.si = xor i64 %.sink12.i49, %.sroa.018.0.extract.trunc.i131
  %i.sj = zext i64 %i.si to i128
  %i.sk = xor i128 %.sroa.419.0.extract.shift.i132, %i.rx
  %i.sl = mul nuw i128 %i.sk, %i.sj               ; 2 uses
  %i.sm = lshr i128 %i.sl, 64
  %i.sn = xor i128 %i.sm, %i.sl
  %i.so = trunc i128 %i.sn to i64
  %i.sp = add i64 %storemerge74.i129, %.sink13.i48
  %i.sq = xor i64 %i.sp, %i.so                    ; 2 uses
  %i.sr = tail call i64 @llvm.fshl.i64(i64 %i.sq, i64 %i.sq, i64 23) ; 2 uses
  %i.ss = icmp ugt i64 %i.sh, 16
  br i1 %i.ss, label %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126", label %"_ZN68_$LT$ahash..fallback_hash..AHasher$u20$as$u20$core..hash..Hasher$GT$5write17ha71fc7cf933c9a30E.exit133"

"_ZN68_$LT$ahash..fallback_hash..AHasher$u20$as$u20$core..hash..Hasher$GT$5write17ha71fc7cf933c9a30E.exit133": ; preds = %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126", %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit.i110, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i119"
  %.lcssa.sink.i113 = phi i64 [ %i.re, %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit.i110 ], [ %i.rs, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i119" ], [ %i.sr, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i126" ]
  %i.st = xor i64 %.lcssa.sink.i113, 255
  %i.su = zext i64 %i.st to i128
  %i.sv = mul nuw nsw i128 %i.su, 6364136223846793005 ; 2 uses
  %i.sw = lshr i128 %i.sv, 64
  %i.sx = xor i128 %i.sw, %i.sv
  %i.sy = trunc i128 %i.sx to i64
  %i.sz = xor i64 %5, %i.sy
  %i.ta = zext i64 %i.sz to i128
  %i.tb = mul nuw nsw i128 %i.ta, 6364136223846793005 ; 2 uses
  %i.tc = lshr i128 %i.tb, 64
  %i.td = xor i128 %i.tc, %i.tb                   ; 2 uses
  %i.te = trunc i128 %i.td to i64
  %i.tf = and i128 %i.td, 18446744073709551615
  %i.tg = zext i64 %.sink13.i48 to i128
  %i.th = mul nuw i128 %i.tf, %i.tg               ; 2 uses
  %i.ti = lshr i128 %i.th, 64
  %i.tj = xor i128 %i.ti, %i.th
  %i.tk = trunc i128 %i.tj to i64                 ; 2 uses
  %i.tl = tail call noundef i64 @llvm.fshl.i64(i64 %i.tk, i64 %i.tk, i64 %i.te)
  br label %bb.ay

bb.bi:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.tn = load i8, ptr %i.tm, align 8, !range !110, !noundef !55
  %i.to = icmp eq i8 %i.tn, 2
  br i1 %i.to, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.tp = load ptr, ptr %i.e, align 8, !nonnull !55, !align !56, !noundef !55
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tp, ptr %i.tq, align 8
  store i8 12, ptr %0, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not, label %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke", label %.invoke

bb.bm:                                            ; preds = %bb.bn, %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit"
  %.pn7 = phi { ptr, i32 } [ %i.tr, %bb.bn ], [ %.pn, %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit" ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$rhai..eval..global_state..GlobalRuntimeState$GT$17h50e16b71733bfb6cE"(ptr noalias noundef align 8 dereferenceable(88) %i.i) #72
          to label %common.resume unwind label %bb.bt

bb.bn:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke"
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$rhai..eval..global_state..GlobalRuntimeState$GT$17h50e16b71733bfb6cE"(ptr noalias noundef align 8 dereferenceable(88) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit:                                        ; preds = %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i", %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i", %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit.i
  %.lcssa.sink.i = phi i64 [ %i.dy, %_ZN5ahash10operations10read_small17ha2f9f74cc39f9b19E.exit.i ], [ %i.em, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$13read_last_u6417h4e45caf3e8d3f5d5E.exit.i" ], [ %i.fl, %"_ZN62_$LT$$u5b$u8$u5d$$u20$as$u20$ahash..convert..ReadFromSlice$GT$9read_u12817hbd64b110a6ea7285E.exit.i" ]
  %i.ts = xor i64 %.lcssa.sink.i, 255
  %i.tt = zext i64 %i.ts to i128
  %i.tu = mul nuw nsw i128 %i.tt, 6364136223846793005 ; 2 uses
  %i.tv = lshr i128 %i.tu, 64
  %i.tw = xor i128 %i.tv, %i.tu
  %i.tx = trunc i128 %i.tw to i64
  %i.ty = xor i64 %5, %i.tx
  %i.tz = zext i64 %i.ty to i128
  %i.ua = mul nuw nsw i128 %i.tz, 6364136223846793005 ; 2 uses
  %i.ub = lshr i128 %i.ua, 64
  %i.uc = xor i128 %i.ub, %i.ua                   ; 2 uses
  %i.ud = trunc i128 %i.uc to i64
  %i.ue = and i128 %i.uc, 18446744073709551615
  %i.uf = zext i64 %.sink13.i to i128
  %i.ug = mul nuw i128 %i.ue, %i.uf               ; 2 uses
  %i.uh = lshr i128 %i.ug, 64
  %i.ui = xor i128 %i.uh, %i.ug
  %i.uj = trunc i128 %i.ui to i64                 ; 2 uses
  %i.uk = tail call noundef i64 @llvm.fshl.i64(i64 %i.uj, i64 %i.uj, i64 %i.ud)
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.um = load i16, ptr %i.ul, align 8, !noundef !55
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.uo = load i16, ptr %i.un, align 2, !noundef !55
  invoke void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$19exec_native_fn_call17hc8b56f7fcaf6958cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %., i64 noundef %i.uk, ptr noalias noundef nonnull align 8 %4, i64 noundef %5, i1 noundef zeroext %7, i1 noundef zeroext false, i16 noundef %i.um, i16 noundef %i.uo)
          to label %bb.bp unwind label %bb.aw

bb.bp:                                            ; preds = %.loopexit
  %i.up = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.uq = load i8, ptr %i.up, align 8, !range !110, !noundef !55
  %i.ur = icmp eq i8 %i.uq, 2
  br i1 %i.ur, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.us = load ptr, ptr %i.f, align 8, !nonnull !55, !align !56, !noundef !55
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.us, ptr %i.ut, align 8
  store i8 12, ptr %0, align 8
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.uu = load i32, ptr %i.g, align 8, !range !113, !alias.scope !32587, !noundef !55
  %i.uv = icmp eq i32 %i.uu, 86
  br i1 %i.uv, label %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke", label %.invoke

.invoke:                                          ; preds = %bb.bs, %bb.bl
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke" unwind label %bb.i

"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit61.invoke": ; preds = %.invoke, %bb.bs, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$rhai..eval..cache..Caches$GT$17hb1b63aca478a9293E"(ptr noalias noundef align 8 dereferenceable(200) %i.h)
          to label %bb.bo unwind label %bb.bn

bb.bt:                                            ; preds = %bb.ax, %bb.bm, %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$rhai..tokenizer..Token$GT$$GT$17hfeea7e4b61d922cdE.exit"
  %i.uw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn17hede38caa1416f956E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(200) %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32694)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !32695, !noalias !32696, !noundef !55 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 3                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !32695, !noalias !32696 ; 2 uses
  %.sink10.i.i = select i1 %i.f, i64 %i.h, i64 %i.e
  %i.i = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i", label %bb.b

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i": ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !alias.scope !32695, !noalias !32696, !nonnull !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.32..32..32..sroa_idx, i8 0, i64 32, i1 false), !alias.scope !32697, !noalias !32694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @513, i64 32, i1 false), !noalias !32694
  %.sink9.i.i.i = select i1 %i.f, ptr %i.g, ptr %i.d
  %.sink10.i.i.i = select i1 %i.f, ptr %i.j, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sink10.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  store i64 1, ptr %.sink9.i.i.i, align 8, !alias.scope !32698, !noalias !32699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !32700, !noalias !32701
  %.val.i.pre = load i64, ptr %i.g, align 8, !alias.scope !32694
  br label %bb.b

bb.b:                                             ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i", %bb.a
  %i.k = phi i64 [ %i.h, %bb.a ], [ %.val.i.pre, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i" ]
  %.val4.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h5515eec8e12180dbE.exit.i" ] ; 2 uses
  %4 = icmp ugt i64 %.val4.i, 3                   ; 2 uses
  %5 = select i1 %4, i64 %i.k, i64 %.val4.i       ; 2 uses
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.c, label %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @615) #70, !noalias !32694
  unreachable

_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !alias.scope !32700, !noalias !32701, !nonnull !55
  %.sink10.i1.i = select i1 %4, ptr %i.l, ptr %2
  %i.m = getelementptr [64 x i8], ptr %.sink10.i1.i, i64 %5 ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -64      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32702)
  %i.o = getelementptr i8, ptr %i.m, i64 -40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !32702, !noundef !55
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32704)
  %i.r = lshr i64 %3, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr i8, ptr %i.m, i64 -56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !32705, !noalias !32706, !noundef !55 ; 2 uses
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !32705, !noalias !32706, !nonnull !55, !noundef !55 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.am, %bb.g ]
  %.pn.i.i = phi i64 [ %3, %bb.d ], [ %i.an, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.u      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !32707 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i = phi i16 [ %i.al, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.u
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [40 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -40
  %.val3.i.i.i = load i64, ptr %i.af, align 8, !noalias !32708, !noundef !55
  %i.ag = icmp eq i64 %3, %.val3.i.i.i
  br i1 %i.ag, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h009cb9b7d65f0562E.exit", label %bb.f, !prof !74

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %select.unfold, !prof !66

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i16 %.sroa.06.0.i33.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i, %i.am
  br label %bb.e

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h009cb9b7d65f0562E.exit": ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -32
  %i.ap = load i8, ptr %i.ao, align 8, !range !103, !noundef !55
  %i.aq = icmp ne i8 %i.ap, 5
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17he4d5b6eebe1b4160E.exit"

select.unfold:                                    ; preds = %._crit_edge.i.i, %_ZN4rhai4eval5cache6Caches23fn_resolution_cache_mut17h7bff02018a0d8525E.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !32709, !noalias !32710, !noundef !55 ; 2 uses
  %i.at = icmp ugt i64 %i.as, 3                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !32709, !noalias !32710, !nonnull !55
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !32709, !noalias !32710
  %.sink11.i = select i1 %i.at, ptr %i.av, ptr %i.au ; 2 uses
  %.sink10.i = select i1 %i.at, i64 %i.ax, i64 %i.as ; 2 uses
  %.idx = shl nuw nsw i64 %.sink10.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %.idx
  %.not.i8 = icmp eq i64 %.sink10.i, 0
  br i1 %.not.i8, label %.loopexit43, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold
  %i.az = lshr i64 %3, 57
  %i.ba = trunc nuw nsw i64 %i.az to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i", %.lr.ph.i
  %i.bb = phi ptr [ %.sink11.i, %.lr.ph.i ], [ %i.bc, %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i" ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.val4.i.a = load ptr, ptr %i.bb, align 8, !noalias !32711, !nonnull !55, !noundef !55 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i.a, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !32711, !noundef !55 ; 3 uses
  %.not.i.i = icmp eq ptr %i.be, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32712)
  br i1 %.not.i.i, label %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32714)
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4.i.a, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !32715, !noalias !32711, !noundef !55
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32717)
  %i.bi = getelementptr inbounds nuw i8, ptr %.val4.i.a, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !32718, !noalias !32719, !noundef !55 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ca, %bb.m ]
  %.pn.i.i.i.i.i.i = phi i64 [ %3, %bb.j ], [ %i.cb, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bj ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !32720 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.bz, %bb.l ], [ %i.bm, %bb.k ] ; 3 uses
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.bj
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.be, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -40
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !32721, !noundef !55
  %i.bu = icmp eq i64 %3, %.val3.i.i.i.i.i.i.i
  br i1 %i.bu, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17he4d5b6eebe1b4160E.exit", label %bb.l, !prof !74

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.k
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i", !prof !66

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.bz = and i16 %i.by, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ca = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.cb = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ca
  br label %bb.k

"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.i, %bb.h
  %.not15.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not15.i, label %.loopexit43, label %bb.h

.loopexit43:                                      ; preds = %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17heef09166c9bcdd79E.exit.i", %select.unfold
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !55 ; 2 uses
  %.idx41 = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx41
  %.not.i10 = icmp eq i64 %i.cf, 0
  br i1 %.not.i10, label %.loopexit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.loopexit43
  %i.ch = lshr i64 %3, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i12 = insertelement <16 x i8> poison, i8 %i.ci, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i13 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i12, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17h7c65f428ef9c075cE.exit.i", %.lr.ph.i11
  %i.cj = phi ptr [ %i.cd, %.lr.ph.i11 ], [ %i.ck, %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17h7c65f428ef9c075cE.exit.i" ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.val4.i14 = load ptr, ptr %i.cj, align 8, !noalias !32722, !nonnull !55, !noundef !55 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val4.i14, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !32722, !noundef !55 ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.cm, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32723)
  br i1 %.not.i.i15, label %"_ZN4rhai4func6script38_$LT$impl$u20$rhai..engine..Engine$GT$13has_script_fn28_$u7b$$u7b$closure$u7d$$u7d$17h7c65f428ef9c075cE.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32725)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val4.i14, i64 72
end_hunk_1
begin_hunk_2_@_ZN4rhai8packages10blob_basic21write_float_functions20write_le_float_range17hb86f46f826992500E:bb.a
_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !43519, !nonnull !55, !noundef !55
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 %.val1.i)
  %spec.select.i.i.i = sub nuw nsw i64 %i.f, %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.0.i)
  store double %3, ptr %.sroa.0.i.sroa.0.i, align 8, !noalias !43519
  %.sroa.0.0.i9.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i.i, i64 8)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 8 %.sroa.0.i.sroa.0.i, i64 %.sroa.0.0.i9.i.i, i1 false), !alias.scope !43520, !noalias !43521
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.0.i)
  br label %_ZN4rhai8packages10blob_basic21write_float_functions14write_le_float17h0a208e455b46399eE.exit

_ZN4rhai8packages10blob_basic21write_float_functions14write_le_float17h0a208e455b46399eE.exit: ; preds = %bb.a, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages10blob_basic21write_float_functions30write_be_float_range_inclusive17h6928fc2afd8d9948E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, double noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 4 uses
  %i.a = load i64, ptr %1, align 8, !noundef !55
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !55
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %i.d = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 9223372036854775806)
  %i.e = sub nsw i64 %i.d, %.sroa.0.0.i           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43528)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !43528, !noundef !55 ; 4 uses
  %i.g = icmp sgt i64 %.val1.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ne i64 %.val1.i, 0
  %i.i = icmp sgt i64 %i.e, -1
  %or.cond.i.i.not4 = and i1 %i.i, %i.h
  %.not.i.i.i = icmp samesign ult i64 %.sroa.0.0.i, %.val1.i
  %or.cond = select i1 %or.cond.i.i.not4, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i, label %_ZN4rhai8packages10blob_basic21write_float_functions14write_be_float17hc405dab71bf004b8E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !43528, !nonnull !55, !noundef !55
  %i.k = add nuw nsw i64 %i.e, 1
  %i.l = sub nuw nsw i64 %.val1.i, %.sroa.0.0.i
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.m = bitcast double %2 to i64
  %i.n = tail call i64 @llvm.bswap.i64(i64 %i.m)
  store i64 %i.n, ptr %.sroa.0.i.i, align 8, !noalias !43528
  %.sroa.0.0.i9.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i.i, i64 8)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 8 %.sroa.0.i.i, i64 %.sroa.0.0.i9.i.i, i1 false), !alias.scope !43529, !noalias !43530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN4rhai8packages10blob_basic21write_float_functions14write_be_float17hc405dab71bf004b8E.exit

_ZN4rhai8packages10blob_basic21write_float_functions14write_be_float17hc405dab71bf004b8E.exit: ; preds = %bb.a, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages10blob_basic21write_float_functions30write_le_float_range_inclusive17h7c06e2ac301f3ca0E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, double noundef %2) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.sroa.0.i = alloca double, align 8    ; 4 uses
  %i.a = load i64, ptr %1, align 8, !noundef !55
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !55
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %i.d = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 9223372036854775806)
  %i.e = sub nsw i64 %i.d, %.sroa.0.0.i           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43537)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !43537, !noundef !55 ; 4 uses
  %i.g = icmp sgt i64 %.val1.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ne i64 %.val1.i, 0
  %i.i = icmp sgt i64 %i.e, -1
  %or.cond.i.i.not4 = and i1 %i.i, %i.h
  %.not.i.i.i = icmp samesign ult i64 %.sroa.0.0.i, %.val1.i
  %or.cond = select i1 %or.cond.i.i.not4, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i, label %_ZN4rhai8packages10blob_basic21write_float_functions14write_le_float17h0a208e455b46399eE.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !43537, !nonnull !55, !noundef !55
  %i.k = add nuw nsw i64 %i.e, 1
  %i.l = sub nuw nsw i64 %.val1.i, %.sroa.0.0.i
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.0.i)
  store double %2, ptr %.sroa.0.i.sroa.0.i, align 8, !noalias !43537
  %.sroa.0.0.i9.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i.i, i64 8)
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 8 %.sroa.0.i.sroa.0.i, i64 %.sroa.0.0.i9.i.i, i1 false), !alias.scope !43538, !noalias !43539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.0.i)
  br label %_ZN4rhai8packages10blob_basic21write_float_functions14write_le_float17h0a208e455b46399eE.exit

_ZN4rhai8packages10blob_basic21write_float_functions14write_le_float17h0a208e455b46399eE.exit: ; preds = %bb.a, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions17write_utf8_string17ha39e3e50fb234e8dE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43547)
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !43547, !noalias !43548, !noundef !55 ; 9 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  %i.f = icmp eq i64 %4, 0
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ult i64 %1, %i.c
  br i1 %.not.i.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.e:                                             ; preds = %bb.c
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.c, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.i, %bb.e ], [ %1, %bb.d ] ; 5 uses
  %i.j = icmp eq i64 %i.c, %.sroa.01.0.i.i
  br i1 %i.j, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  %i.k = icmp samesign ugt i64 %.sroa.01.0.i.i, %i.c
  br i1 %i.k, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.01.0.i.i, i64 noundef %i.c, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1629) #70, !noalias !43549
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %i.c, %.sroa.01.0.i.i
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l)
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %spec.select.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !43547, !noalias !43548, !nonnull !55, !noundef !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %3, i64 %.sroa.0.0.i11.i, i1 false), !alias.scope !43550, !noalias !43551
  br label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions18write_ascii_string17h1c92931ec4f4e7a0E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43582)
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !43581, !noalias !43582, !noundef !55 ; 8 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  %i.f = icmp eq i64 %4, 0
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ult i64 %1, %i.c
  br i1 %.not.i.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.e:                                             ; preds = %bb.c
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.c, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.i, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %i.j = icmp eq i64 %i.c, %.sroa.01.0.i.i
  br i1 %i.j, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  %i.k = sub nsw i64 %i.c, %.sroa.01.0.i.i
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.k)
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %spec.select.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !43581, !noalias !43582, !nonnull !55
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %bb.f
  %i.o = phi i64 [ %i.bj, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %.sroa.0.0.i11.i, %bb.f ] ; 2 uses
  %i.p = phi i64 [ %i.bk, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ 0, %bb.f ] ; 3 uses
  %i.q = phi ptr [ %i.bl, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %3, %bb.f ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.s = load i8, ptr %i.q, align 1, !alias.scope !43582, !noalias !43583, !noundef !55 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.u = and i8 %i.s, 31
  %i.v = zext nneg i8 %i.u to i32                 ; 3 uses
  %i.w = icmp ne ptr %i.r, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 3 uses
  %i.y = load i8, ptr %i.r, align 1, !alias.scope !43582, !noalias !43583, !noundef !55
  %i.z = shl nuw nsw i32 %i.v, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32               ; 2 uses
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ad, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = zext nneg i8 %i.s to i32
  br label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.af = icmp ne ptr %i.x, %i.l
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 3 uses
  %i.ah = load i8, ptr %i.x, align 1, !alias.scope !43582, !noalias !43583, !noundef !55
  %i.ai = shl nuw nsw i32 %i.ab, 6
  %i.aj = and i8 %i.ah, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak            ; 2 uses
  %i.am = shl nuw nsw i32 %i.v, 12
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ao, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i"
  %i.ap = icmp ne ptr %i.ag, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ar = load i8, ptr %i.ag, align 1, !alias.scope !43582, !noalias !43583, !noundef !55
  %i.as = shl nuw nsw i32 %i.v, 18
  %i.at = and i32 %i.as, 1835008
  %i.au = shl nuw nsw i32 %i.al, 6
  %i.av = and i8 %i.ar, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.at            ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.ay, 1114112
  br i1 %.not.not.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.az = phi ptr [ %i.aq, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %spec.select.i8.i.i.i.i.i = phi i32 [ %i.ay, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.an, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.ac, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ba = icmp samesign ult i32 %spec.select.i8.i.i.i.i.i, 128
  br i1 %i.ba, label %bb.g, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

bb.g:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i"
  %i.bb = phi ptr [ %i.r, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %i.az, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %spec.select.i818.i.i.i.i.i = phi i32 [ %i.ae, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %spec.select.i8.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bc = add i64 %i.p, %.sroa.01.0.i.i           ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %i.c
  br i1 %i.bd, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bc, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1630) #70, !noalias !43584
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i": ; preds = %bb.g
  %i.be = add i64 %i.o, -1                        ; 2 uses
  %i.bf = trunc nuw nsw i32 %spec.select.i818.i.i.i.i.i to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bc
  store i8 %i.bf, ptr %i.bg, align 1, !noalias !43584
  %i.bh = add i64 %i.p, 1
  %i.bi = icmp eq i64 %i.be, 0
  br i1 %i.bi, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.bj = phi i64 [ %i.be, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.o, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bk = phi i64 [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.p, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bl = phi ptr [ %i.bb, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.az, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %.lr.ph.i.i.i.i.i

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %bb.a, %bb.b, %bb.d, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions23write_utf8_string_range17h2b888b049a2a7576E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %1, i64 0) ; 5 uses
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43592)
  %.not = icmp slt i64 %.sroa.0.0.i, %2
  br i1 %.not, label %bb.b, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !43592, !noalias !43593, !noundef !55 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i64 %i.b, 0
  %i.e = icmp ne i64 %4, 0
  %or.cond.i.not3 = and i1 %i.e, %i.d
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.b
  %or.cond = select i1 %or.cond.i.not3, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 %i.b)
  %spec.select.i.i = sub nuw nsw i64 %i.f, %.sroa.0.0.i
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %spec.select.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !43592, !noalias !43593, !nonnull !55, !noundef !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %3, i64 %.sroa.0.0.i11.i, i1 false), !alias.scope !43594, !noalias !43595
  br label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions24write_ascii_string_range17h6b8fdaa651f31625E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address) %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %1, i64 0) ; 5 uses
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43626)
  %.not = icmp slt i64 %.sroa.0.0.i, %2
  br i1 %.not, label %bb.b, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !43625, !noalias !43626, !noundef !55 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i64 %i.b, 0
  %i.e = icmp ne i64 %4, 0
  %or.cond.i.not3 = and i1 %i.e, %i.d
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.b
  %or.cond = select i1 %or.cond.i.not3, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.b
  %i.f = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 %i.b)
  %spec.select.i.i = sub nuw nsw i64 %i.f, %.sroa.0.0.i
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %spec.select.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !43625, !noalias !43626, !nonnull !55
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  %i.j = phi i64 [ %i.be, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %.sroa.0.0.i11.i, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.bf, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ 0, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 3 uses
  %i.l = phi ptr [ %i.bg, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %3, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.l, align 1, !alias.scope !43626, !noalias !43627, !noundef !55 ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp ne ptr %i.m, %i.g
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !alias.scope !43626, !noalias !43627, !noundef !55
  %i.u = shl nuw nsw i32 %i.q, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.z = zext nneg i8 %i.n to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.aa = icmp ne ptr %i.s, %i.g
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 3 uses
  %i.ac = load i8, ptr %i.s, align 1, !alias.scope !43626, !noalias !43627, !noundef !55
  %i.ad = shl nuw nsw i32 %i.w, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.q, 12
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp samesign ugt i8 %i.n, -17
  br i1 %i.aj, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i"
  %i.ak = icmp ne ptr %i.ab, %i.g
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.am = load i8, ptr %i.ab, align 1, !alias.scope !43626, !noalias !43627, !noundef !55
  %i.an = shl nuw nsw i32 %i.q, 18
  %i.ao = and i32 %i.an, 1835008
  %i.ap = shl nuw nsw i32 %i.ag, 6
  %i.aq = and i8 %i.am, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = or disjoint i32 %i.as, %i.ao            ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.at, 1114112
  br i1 %.not.not.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.au = phi ptr [ %i.al, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %spec.select.i8.i.i.i.i.i = phi i32 [ %i.at, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ai, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %i.av = icmp samesign ult i32 %spec.select.i8.i.i.i.i.i, 128
  br i1 %i.av, label %bb.c, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

bb.c:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i"
  %i.aw = phi ptr [ %i.m, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %i.au, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %spec.select.i818.i.i.i.i.i = phi i32 [ %i.z, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %spec.select.i8.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.ax = add i64 %i.k, %.sroa.0.0.i              ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.b
  br i1 %i.ay, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ax, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1630) #70, !noalias !43628
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i": ; preds = %bb.c
  %i.az = add i64 %i.j, -1                        ; 2 uses
  %i.ba = trunc nuw nsw i32 %spec.select.i818.i.i.i.i.i to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  store i8 %i.ba, ptr %i.bb, align 1, !noalias !43628
  %i.bc = add i64 %i.k, 1
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.be = phi i64 [ %i.az, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.j, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bf = phi i64 [ %i.bc, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.k, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bg = phi ptr [ %i.aw, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.au, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %.lr.ph.i.i.i.i.i

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions33write_utf8_string_range_inclusive17hcaf94cdc44273f8dE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !55
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !55
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %i.d = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 9223372036854775806)
  %i.e = sub nsw i64 %i.d, %.sroa.0.0.i           ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43636)
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43636, !noalias !43637, !noundef !55 ; 4 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ne i64 %i.i, 0
  %i.l = icmp ne i64 %3, 0
  %or.cond.i.not4 = and i1 %i.l, %i.k
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  %or.cond = select i1 %or.cond.i.not4, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.i, %.sroa.0.0.i
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.m)
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %spec.select.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !43636, !noalias !43637, !nonnull !55, !noundef !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %2, i64 %.sroa.0.0.i11.i, i1 false), !alias.scope !43638, !noalias !43639
  br label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic22write_string_functions34write_ascii_string_range_inclusive17hff1141b612e700d1E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address) %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !55
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !55
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %i.d = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 9223372036854775806)
  %i.e = sub nsw i64 %i.d, %.sroa.0.0.i           ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43670)
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !43669, !noalias !43670, !noundef !55 ; 6 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ne i64 %i.i, 0
  %i.l = icmp ne i64 %3, 0
  %or.cond.i.not4 = and i1 %i.l, %i.k
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  %or.cond = select i1 %or.cond.i.not4, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.i, %.sroa.0.0.i
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.m)
  %.sroa.0.0.i11.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %spec.select.i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !43669, !noalias !43670, !nonnull !55
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  %i.q = phi i64 [ %i.bl, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %.sroa.0.0.i11.i, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 2 uses
  %i.r = phi i64 [ %i.bm, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ 0, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 3 uses
  %i.s = phi ptr [ %i.bn, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i" ], [ %2, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.s, align 1, !alias.scope !43670, !noalias !43671, !noundef !55 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp ne ptr %i.t, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.aa = load i8, ptr %i.t, align 1, !alias.scope !43670, !noalias !43671, !noundef !55
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = zext nneg i8 %i.u to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.ah = icmp ne ptr %i.z, %i.n
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.aj = load i8, ptr %i.z, align 1, !alias.scope !43670, !noalias !43671, !noundef !55
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i"
  %i.ar = icmp ne ptr %i.ai, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.at = load i8, ptr %i.ai, align 1, !alias.scope !43670, !noalias !43671, !noundef !55
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av            ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.ba, 1114112
  br i1 %.not.not.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.bb = phi ptr [ %i.as, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ai, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %spec.select.i8.i.i.i.i.i = phi i32 [ %i.ba, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bc = icmp samesign ult i32 %spec.select.i8.i.i.i.i.i, 128
  br i1 %i.bc, label %bb.c, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

bb.c:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i"
  %i.bd = phi ptr [ %i.t, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %i.bb, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %spec.select.i818.i.i.i.i.i = phi i32 [ %i.ag, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ], [ %spec.select.i8.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.be = add i64 %i.r, %.sroa.0.0.i              ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.i
  br i1 %i.bf, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.be, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1630) #70, !noalias !43672
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i": ; preds = %bb.c
  %i.bg = add i64 %i.q, -1                        ; 2 uses
  %i.bh = trunc nuw nsw i32 %spec.select.i818.i.i.i.i.i to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.be
  store i8 %i.bh, ptr %i.bi, align 1, !noalias !43672
  %i.bj = add i64 %i.r, 1
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.bl = phi i64 [ %i.bg, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.q, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bm = phi i64 [ %i.bj, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.r, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ]
  %i.bn = phi ptr [ %i.bd, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i" ], [ %i.bb, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit, label %.lr.ph.i.i.i.i.i

_ZN4rhai8packages10blob_basic22write_string_functions12write_string17h811ace60c9398ae7E.exit: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hc48a06b874cbce97E.exit.i.i.i.i.i.i", %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efcb087bc114c65E.exit.backedge.i.i.i.i.i", %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4rhai8packages10iter_basic11CharsStream3new17hbb9e8c0c970ee671E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = icmp slt i64 %4, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %3, -1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.i = icmp ult i64 %2, 32
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.01.0.i, i64 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.510.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %4, ptr %i.m, align 8
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h59d06607c5b7def4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.b, align 8, !alias.scope !43679, !noalias !43680
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i16 = load ptr, ptr %.sroa.4.0..sroa_idx.i15, align 8, !alias.scope !43679, !noalias !43680, !nonnull !55, !noundef !55 ; 2 uses
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i18 = load i64, ptr %.sroa.5.0..sroa_idx.i17, align 8, !alias.scope !43679, !noalias !43680 ; 2 uses
  %i.n = icmp ult i64 %.sroa.5.0.copyload.i18, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i16, i64 %.sroa.5.0.copyload.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %4, ptr %i.q, align 8
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h59d06607c5b7def4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.copyload.i19 = load i64, ptr %i.d, align 8, !alias.scope !43681, !noalias !43682
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i21 = load ptr, ptr %.sroa.4.0..sroa_idx.i20, align 8, !alias.scope !43681, !noalias !43682, !nonnull !55, !noundef !55 ; 2 uses
  %.sroa.5.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload.i23 = load i64, ptr %.sroa.5.0..sroa_idx.i22, align 8, !alias.scope !43681, !noalias !43682 ; 2 uses
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i23, 2305843009213693952
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i21, i64 %.sroa.5.0.copyload.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %.sroa.4.0.copyload.i21.sink40 = phi ptr [ %.sroa.4.0.copyload.i21, %bb.f ], [ %.sroa.4.0.copyload.i16, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" ], [ inttoptr (i64 4 to ptr), %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i19.sink = phi i64 [ %.sroa.0.0.copyload.i19, %bb.f ], [ %.sroa.0.0.copyload.i14, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" ], [ 0, %bb.a ]
  %.sink = phi ptr [ %i.s, %bb.f ], [ %i.o, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit" ], [ inttoptr (i64 4 to ptr), %bb.a ]
  store ptr %.sroa.4.0.copyload.i21.sink40, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i21.sink40, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload.i19.sink, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %.sroa.632.0..sroa_idx, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, double } @_ZN4rhai8packages10iter_basic11regular_add17hbfd32a09ab9a03b6E(double noundef %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = insertvalue { i64, double } { i64 1, double poison }, double %i.a, 1
  ret { i64, double } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4rhai8packages10iter_basic15range_functions18contains_exclusive17ha89b57672d904055E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #39 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !43688, !noalias !43689, !noundef !55
  %.not.i = icmp sle i64 %i.a, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
