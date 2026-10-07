Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn17h0ba5323d301245f5E":bb.a
  %i.kq = load atomic ptr, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE acquire, align 8, !noalias !30229
  %.not.i84 = icmp eq ptr %i.kq, inttoptr (i64 2 to ptr)
  %.val20.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 8), align 8, !range !63, !noalias !30229
  %i.kr = trunc nuw i64 %.val20.i to i1
  %i.ks = select i1 %.not.i84, i1 %i.kr, i1 false
  br i1 %i.ks, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.val.i86 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 16), align 8, !noalias !30229 ; 2 uses
  %.val16.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 24), align 8, !noalias !30229 ; 2 uses
  %.val18.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 32), align 8, !noalias !30229
  %i.kt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 40), align 8, !noalias !30230, !noundef !55
  %i.ku = or i64 %.val18.i, %i.kt
  %i.kv = or i64 %i.ku, %.val.i86
  %i.kw = or i64 %i.kv, %.val16.i
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ky = load atomic ptr, ptr @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E acquire, align 8, !noalias !30229 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bq, label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i", !prof !66

bb.bq:                                            ; preds = %bb.bp
  %i.la = call noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h356f4c85e7ef4921E"(ptr noundef nonnull align 8 @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E), !noalias !30229
  br label %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i"

"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i": ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.i.i = phi ptr [ %i.la, %bb.bq ], [ %i.ky, %bb.bp ] ; 2 uses
  %i.lb = load i64, ptr %.sroa.0.0.i.i, align 8, !noalias !30230, !noundef !55
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !30230, !noundef !55
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i

bb.br:                                            ; preds = %bb.bo
  %i.le = xor i64 %.val.i86, 4983270260364809079
  %i.lf = xor i64 %.val16.i, -4732044268327596948
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i

_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i: ; preds = %bb.br, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i"
  %.sroa.15.0.i = phi i64 [ %i.lb, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i" ], [ %i.le, %bb.br ]
  %.sroa.6.0.i = phi i64 [ %i.ld, %"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$15get_or_try_init17hd4d917efe3c9ac15E.exit.i" ], [ %i.lf, %bb.br ]
  %i.lg = xor i64 %.sroa.6.0.i, 65
  %i.lh = zext i64 %i.lg to i128
  %i.li = mul nuw nsw i128 %i.lh, 6364136223846793005 ; 2 uses
  %i.lj = lshr i128 %i.li, 64
  %i.lk = xor i128 %i.lj, %i.li
  %i.ll = trunc i128 %i.lk to i64                 ; 2 uses
  br i1 %i.df, label %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit, label %.preheader

.preheader:                                       ; preds = %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i"
  %.sroa.6.1.i = phi i64 [ %i.ma, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i" ], [ %i.ll, %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i ]
  %i.lm = phi i64 [ %i.mb, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i" ], [ 0, %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.lm
  %.val.i.i.i.i.i = load ptr, ptr %i.ln, align 8, !noalias !30231 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30232
  %i.lo = icmp ult i64 %i.lm, %.sroa.0.0.i70
  br i1 %i.lo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.preheader
  %i.lp = xor i64 %i.lm, -1
  %i.lq = add nsw i64 %.sroa.0.0.i70, %i.lp
  %i.lr = and i64 %i.lq, 63
  %i.ls = shl nuw i64 1, %i.lr
  %i.lt = and i64 %i.ls, %storemerge
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %bb.bt, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.bs, %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_ZN4rhai5types7dynamic7Dynamic7type_id17hea8bc8aaa12b2054E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i.i.i.i), !noalias !30232
  %.sroa.3.0.copyload.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !30232
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i": ; preds = %bb.bt, %bb.bs
  %.sroa.3.0.copyload.i.i.i.i.i.i.i85 = phi i64 [ %.sroa.3.0.copyload.pre.i.i.i.i.i.i.i, %bb.bt ], [ -306558617750429994, %bb.bs ]
  %i.lv = xor i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i85, %.sroa.6.1.i
  %i.lw = zext i64 %i.lv to i128
  %i.lx = mul nuw nsw i128 %i.lw, 6364136223846793005 ; 2 uses
  %i.ly = lshr i128 %i.lx, 64
  %i.lz = xor i128 %i.ly, %i.lx
  %i.ma = trunc i128 %i.lz to i64                 ; 2 uses
  %i.mb = add nuw i64 %i.lm, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30232
  %i.mc = icmp eq i64 %i.mb, %7
  br i1 %i.mc, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h0a3c9fc2d0ec7badE.exit.loopexit.i, label %.preheader

_ZN4core4iter6traits8iterator8Iterator8for_each17h0a3c9fc2d0ec7badE.exit.loopexit.i: ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h434096141ad2df8eE.exit.i.i.i.i.i"
  %i.md = xor i64 %7, %i.ma
  br label %_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit

_ZN4rhai4func7hashing17calc_fn_hash_full17hcf2cf6282721bb96E.exit: ; preds = %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i, %_ZN4core4iter6traits8iterator8Iterator8for_each17h0a3c9fc2d0ec7badE.exit.loopexit.i
  %.sroa.04.0.i = phi i64 [ %i.ll, %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit.i ], [ %i.md, %_ZN4core4iter6traits8iterator8Iterator8for_each17h0a3c9fc2d0ec7badE.exit.loopexit.i ]
  %i.me = zext i64 %.sroa.04.0.i to i128
  %i.mf = mul nuw nsw i128 %i.me, 6364136223846793005 ; 2 uses
  %i.mg = lshr i128 %i.mf, 64
  %i.mh = xor i128 %i.mg, %i.mf                   ; 2 uses
  %i.mi = trunc i128 %i.mh to i64
  %i.mj = and i128 %i.mh, 18446744073709551615
  %i.mk = zext i64 %.sroa.15.0.i to i128
  %i.ml = mul nuw i128 %i.mj, %i.mk               ; 2 uses
  %i.mm = lshr i128 %i.ml, 64
  %i.mn = xor i128 %i.mm, %i.ml
  %i.mo = trunc i128 %i.mn to i64                 ; 2 uses
  %i.mp = call i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 %i.mi)
  %i.mq = xor i64 %i.mp, %5
  %i.mr = add nuw nsw i64 %storemerge, 1
  br label %bb.p

bb.bu:                                            ; preds = %bb.bl
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @681) #70
  unreachable

bb.bv:                                            ; preds = %bb.bm
  br i1 %.not, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !30233)
  %.not.i87 = icmp eq ptr %4, null
  br i1 %.not.i87, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ms = load i32, ptr %4, align 8, !range !96, !noalias !30234, !noundef !55 ; 3 uses
  %.off.i = add nsw i32 %i.ms, -70
  %switch.i = icmp ult i32 %.off.i, 11
  br i1 %switch.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i64 %7, label %bb.cg [
    i64 0, label %bb.cf
    i64 1, label %bb.ch
  ]

bb.bz:                                            ; preds = %bb.bx
  switch i64 %7, label %bb.cb [
    i64 0, label %bb.ca
    i64 1, label %bb.cc
  ], !prof !135

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @682) #70, !noalias !30234
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.mt = load ptr, ptr %6, align 8, !alias.scope !30233, !noalias !30235, !nonnull !55, !align !56, !noundef !55
  %i.mu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !alias.scope !30233, !noalias !30235, !nonnull !55, !align !56, !noundef !55
  %.val40.i = load i8, ptr %i.mt, align 8, !range !67, !noalias !30234, !noundef !55
  %.val41.i = load i8, ptr %i.mv, align 8, !noalias !30234
  %i.mw = call fastcc { ptr, i8 } @_ZN4rhai4func7builtin28get_builtin_op_assignment_fn17h5b7ae8d82086b6c2E(i32 %i.ms, i8 %.val40.i, i8 %.val41.i) ; 2 uses
  %i.mx = extractvalue { ptr, i8 } %i.mw, 1       ; 2 uses
  %.not36.i = icmp eq i8 %i.mx, 2
  br i1 %.not36.i, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit", label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @683) #70, !noalias !30234
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30236
  %i.my = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !30236 ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.ce, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split", !prof !58

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !30236
  unreachable

bb.cf:                                            ; preds = %bb.by
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @685) #70, !noalias !30234
  unreachable

bb.cg:                                            ; preds = %bb.by
  %i.na = load ptr, ptr %6, align 8, !alias.scope !30233, !noalias !30235, !nonnull !55, !align !56, !noundef !55
  %i.nb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !alias.scope !30233, !noalias !30235, !nonnull !55, !align !56, !noundef !55
  %i.nd = call fastcc { ptr, i8 } @_ZN4rhai4func7builtin24get_builtin_binary_op_fn17h878b72701bc67765E(i32 %i.ms, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.na, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.nc), !noalias !30234 ; 2 uses
  %i.ne = extractvalue { ptr, i8 } %i.nd, 1       ; 2 uses
  %.not39.i = icmp eq i8 %i.ne, 2
  br i1 %.not39.i, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit", label %bb.ci

bb.ch:                                            ; preds = %bb.by
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #70, !noalias !30234
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !30237
  %i.nf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !30237 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.cj, label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split", !prof !58

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !30237
  unreachable

"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split": ; preds = %bb.ci, %bb.cd
  %.sink391 = phi { ptr, i8 } [ %i.mw, %bb.cd ], [ %i.nd, %bb.ci ]
  %.sink390 = phi ptr [ %i.my, %bb.cd ], [ %i.nf, %bb.ci ] ; 4 uses
  %.sroa.12.0.ph = phi i8 [ 0, %bb.cd ], [ 1, %bb.ci ]
  %.sroa.10189.0.ph = phi i8 [ %i.mx, %bb.cd ], [ %i.ne, %bb.ci ]
  %i.nh = extractvalue { ptr, i8 } %.sink391, 0
  store i64 1, ptr %.sink390, align 8, !noalias !30234
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink390, i64 8
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30234
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink390, i64 16
  store ptr %i.nh, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !30234
  br label %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit"

"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit": ; preds = %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split", %bb.bv, %bb.bw, %bb.cb, %bb.cg
  %.sroa.16198.0 = phi ptr [ undef, %bb.cg ], [ undef, %bb.cb ], [ undef, %bb.bw ], [ undef, %bb.bv ], [ %.sink390, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split" ] ; 6 uses
  %.sroa.12.0 = phi i8 [ undef, %bb.cg ], [ undef, %bb.cb ], [ undef, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.12.0.ph, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split" ] ; 6 uses
  %.sroa.10189.0 = phi i8 [ undef, %bb.cg ], [ undef, %bb.cb ], [ undef, %bb.bw ], [ undef, %bb.bv ], [ %.sroa.10189.0.ph, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split" ] ; 6 uses
  %.not50 = phi ptr [ null, %bb.cg ], [ null, %bb.cb ], [ null, %bb.bw ], [ null, %bb.bv ], [ %3, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split" ]
  %.sroa.0187.0 = phi i8 [ 5, %bb.cg ], [ 5, %bb.cb ], [ 5, %bb.bw ], [ 5, %bb.bv ], [ 1, %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit.sink.split" ] ; 6 uses
  %i.ni = and i64 %.sroa.0117.0, 63
  %i.nj = shl nuw i64 1, %i.ni                    ; 2 uses
  %i.nk = lshr i64 %.sroa.0117.0, 6
  %i.nl = and i64 %i.nk, 3
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.nl ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !noundef !55 ; 2 uses
  %i.no = and i64 %i.nn, %i.nj
  %i.np = icmp eq i64 %i.no, 0
  %i.nq = or i64 %i.nn, %i.nj
  store i64 %i.nq, ptr %i.nm, align 8
  br i1 %i.np, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !30238)
  %.val.i90 = load ptr, ptr %i.bl, align 8, !alias.scope !30238, !noalias !30239, !nonnull !55, !noundef !55 ; 8 uses
  %.val4.i91 = load i64, ptr %i.bp, align 8, !alias.scope !30238, !noalias !30239, !noundef !55 ; 4 uses
  %.sroa.0.04.i.i.i92 = and i64 %.val4.i91, %.sroa.03.0.i ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.val.i90, i64 %.sroa.0.04.i.i.i92
  %.sroa.0.0.copyload.i35.i.i.i93 = load <16 x i8>, ptr %i.nr, align 1, !noalias !30240
  %i.ns = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i93, zeroinitializer
  %i.nt = bitcast <16 x i1> %i.ns to i16          ; 2 uses
  %.not.not.i.not6.i.i.i94 = icmp eq i16 %i.nt, 0
  br i1 %.not.not.i.not6.i.i.i94, label %.lr.ph.i.i.i102, label %._crit_edge.i.i.i95, !prof !139

.lr.ph.i.i.i102:                                  ; preds = %bb.ck, %.lr.ph.i.i.i102
  %.sroa.0.07.i.i.i103 = phi i64 [ %.sroa.0.0.i.i.i104, %.lr.ph.i.i.i102 ], [ %.sroa.0.04.i.i.i92, %bb.ck ]
  %i.nu = phi i64 [ %i.nv, %.lr.ph.i.i.i102 ], [ 0, %bb.ck ]
  %i.nv = add i64 %i.nu, 16                       ; 2 uses
  %i.nw = add i64 %i.nv, %.sroa.0.07.i.i.i103
  %.sroa.0.0.i.i.i104 = and i64 %i.nw, %.val4.i91 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.val.i90, i64 %.sroa.0.0.i.i.i104
  %.sroa.0.0.copyload.i3.i.i.i105 = load <16 x i8>, ptr %i.nx, align 1, !noalias !30240
  %i.ny = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i105, zeroinitializer
  %i.nz = bitcast <16 x i1> %i.ny to i16          ; 2 uses
  %.not.not.i.not.i.i.i106 = icmp eq i16 %i.nz, 0
  br i1 %.not.not.i.not.i.i.i106, label %.lr.ph.i.i.i102, label %._crit_edge.i.i.i95, !prof !140

._crit_edge.i.i.i95:                              ; preds = %.lr.ph.i.i.i102, %bb.ck
  %.sroa.0.0.lcssa.i.i.i96 = phi i64 [ %.sroa.0.04.i.i.i92, %bb.ck ], [ %.sroa.0.0.i.i.i104, %.lr.ph.i.i.i102 ]
  %.lcssa.i.i.i97 = phi i16 [ %i.nt, %bb.ck ], [ %i.nz, %.lr.ph.i.i.i102 ]
  %i.oa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i97, i1 true)
  %i.ob = zext nneg i16 %i.oa to i64
  %i.oc = add i64 %.sroa.0.0.lcssa.i.i.i96, %i.ob
  %i.od = and i64 %i.oc, %.val4.i91               ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.val.i90, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !noalias !30241, !noundef !55 ; 2 uses
  %i.og = icmp sgt i8 %i.of, -1
  br i1 %i.og, label %bb.cl, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit107", !prof !66

bb.cl:                                            ; preds = %._crit_edge.i.i.i95
  %.val2.i.i.i.i99 = load <16 x i8>, ptr %.val.i90, align 16, !noalias !30241
  %i.oh = icmp slt <16 x i8> %.val2.i.i.i.i99, zeroinitializer
  %i.oi = bitcast <16 x i1> %i.oh to i16          ; 2 uses
  %i.oj = icmp ne i16 %i.oi, 0
  call void @llvm.assume(i1 %i.oj)
  %i.ok = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.oi, i1 true)
  %i.ol = zext nneg i16 %i.ok to i64              ; 2 uses
  %.phi.trans.insert.i.i100 = getelementptr inbounds nuw i8, ptr %.val.i90, i64 %i.ol
  %.pre.i.i101 = load i8, ptr %.phi.trans.insert.i.i100, align 1, !noalias !30241
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit107"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h66a9948db6c67360E.exit107": ; preds = %._crit_edge.i.i.i95, %bb.cl
  %i.om = phi i8 [ %.pre.i.i101, %bb.cl ], [ %i.of, %._crit_edge.i.i.i95 ]
  %.sroa.0.0.i5.i.i.i98 = phi i64 [ %i.ol, %bb.cl ], [ %i.od, %._crit_edge.i.i.i95 ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.val.i90, i64 %.sroa.0.0.i5.i.i.i98
  %i.oo = add i64 %.sroa.0.0.i5.i.i.i98, -16
  %i.op = and i64 %i.oo, %.val4.i91
  store i8 %i.bo, ptr %i.on, align 1, !noalias !30241
  %i.oq = getelementptr i8, ptr %.val.i90, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 16
  store i8 %i.bo, ptr %i.or, align 1, !noalias !30241
  %i.os = sub nsw i64 0, %.sroa.0.0.i5.i.i.i98
  %i.ot = getelementptr inbounds [40 x i8], ptr %.val.i90, i64 %i.os ; 8 uses
  %i.ou = and i8 %i.om, 1
  %i.ov = zext nneg i8 %i.ou to i64
  %i.ow = getelementptr inbounds i8, ptr %i.ot, i64 -40
  store i64 %.sroa.03.0.i, ptr %i.ow, align 8, !noalias !30238
  %.sroa.4260.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -32 ; 3 uses
  store i8 %.sroa.0187.0, ptr %.sroa.4260.0..sroa_idx, align 8, !noalias !30238
  %.sroa.5261.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -31
  store i8 %.sroa.10189.0, ptr %.sroa.5261.0..sroa_idx, align 1, !noalias !30238
  %.sroa.6262.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -30
  store i8 %.sroa.12.0, ptr %.sroa.6262.0..sroa_idx, align 2, !noalias !30238
  %.sroa.7263.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -29
  store i8 0, ptr %.sroa.7263.0..sroa_idx, align 1, !noalias !30238
  %.sroa.9265.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -24
  store ptr %.sroa.16198.0, ptr %.sroa.9265.0..sroa_idx, align 8, !noalias !30238
  %.sroa.10266.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -16
  store ptr @684, ptr %.sroa.10266.0..sroa_idx, align 8, !noalias !30238
  %.sroa.11267.0..sroa_idx = getelementptr inbounds i8, ptr %i.ot, i64 -8
  store ptr null, ptr %.sroa.11267.0..sroa_idx, align 8, !noalias !30238
  %i.ox = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !30238, !noalias !30239
  %i.oy = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ov, i64 0
  %i.oz = sub <2 x i64> %i.ox, %i.oy
  store <2 x i64> %i.oz, ptr %i.ck, align 8, !alias.scope !30238, !noalias !30239
  %i.pa = load i8, ptr %.sroa.4260.0..sroa_idx, align 8, !range !103, !noundef !55
  %.not48 = icmp eq i8 %i.pa, 5
  %.61 = select i1 %.not48, ptr null, ptr %.sroa.4260.0..sroa_idx
  br label %bb.o

bb.cm:                                            ; preds = %"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$10resolve_fn28_$u7b$$u7b$closure$u7d$$u7d$17h0c6f71fb5b6d9b8eE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !30242)
  %i.pb = load i8, ptr %3, align 8, !range !103, !alias.scope !30242, !noundef !55
  %i.pc = icmp eq i8 %i.pb, 5
  br i1 %i.pc, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit112", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !30243)
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rhai..func..function..RhaiFunc$GT$17h7f9230e723de46a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %3)
          to label %bb.cr unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30244)
  %i.pf = load ptr, ptr %i.pe, align 8, !alias.scope !30245, !noundef !55 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %.body110, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ph = atomicrmw sub ptr %i.pf, i64 1 release, align 8, !noalias !30246
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.cq, label %.body110

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.pe)
          to label %.body110 unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cn
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30247)
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !30248, !noundef !55 ; 2 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit112", label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pm = atomicrmw sub ptr %i.pk, i64 1 release, align 8, !noalias !30249
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.ct, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit112"

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.pj)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit112" unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cq
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !30250
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body110

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit112": ; preds = %bb.cs, %bb.cr, %bb.cm, %bb.ct
  store i8 %.sroa.0187.0, ptr %3, align 8
  %.sroa.5207.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %.sroa.10189.0, ptr %.sroa.5207.0..sroa_idx208, align 1
  %.sroa.6210.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %.sroa.12.0, ptr %.sroa.6210.0..sroa_idx211, align 2
  %.sroa.7213.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 0, ptr %.sroa.7213.0..sroa_idx214, align 1
  %.sroa.9219.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.16198.0, ptr %.sroa.9219.0..sroa_idx220, align 8
  %.sroa.10222.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @684, ptr %.sroa.10222.0..sroa_idx223, align 8
  %.sroa.11225.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %.sroa.11225.0..sroa_idx226, align 8
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$12exec_fn_call17h5d85ae488fcc2194E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noalias noundef align 8 dereferenceable(200) %3, ptr noalias noundef align 8 dereferenceable_or_null(24) %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(16) %7, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %8, ptr noalias noundef nonnull align 8 %9, i64 noundef %10, i1 noundef zeroext %11, i1 noundef zeroext %12, i16 noundef %13, i16 noundef %14) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages11string_more16string_functions10min_string17h7304be694b9e152dE:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  %..i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %.merged.i.i.i)
  %i.w = sub i64 %i.v, %.merged.i.i.i
  %i.x = extractvalue { ptr, i64 } %.merged.i.i, 0
  %i.y = tail call i32 @memcmp(ptr %i.x, ptr nonnull %.sroa.0.0.i.i.i, i64 %..i) ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %spec.store.select.i = select i1 %i.aa, i64 %i.w, i64 %i.z
  %i.ab = icmp slt i64 %spec.store.select.i, 1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !45214
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13.sink.split", label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13"

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13.sink.split": ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.b, %bb.j ], [ %i.a, %bb.i ]
  %.sroa.0.0.ph = phi ptr [ %1, %bb.j ], [ %0, %bb.i ]
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sink)
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13"

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13": ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13.sink.split", %bb.j, %bb.i
  %.sroa.0.0 = phi ptr [ %0, %bb.i ], [ %1, %bb.j ], [ %.sroa.0.0.ph, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13.sink.split" ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !45215
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13.sink.split", label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit13"

bb.k:                                             ; preds = %bb.m, %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit16": ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ah = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !45216
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit16"

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit16" unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4rhai8packages11string_more16string_functions10pop_string17h23a3d84a3637a5beE(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !55
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7": ; preds = %bb.b, %bb.c
  %.merged.i6 = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i64 %.merged.i6, 0
  %i.l = icmp slt i64 %2, 1
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7"
  %i.m = load ptr, ptr %0, align 8, !nonnull !55, !align !56, !noundef !55
  %i.n = tail call fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  br label %bb.ap

bb.e:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit7"
  %i.o = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.e, align 8, !nonnull !55, !noundef !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !55
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %.merged.i = phi i64 [ %i.r, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.v = icmp ult i64 %.merged.i, 32
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  %i.w = tail call noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.merged.i)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

bb.i:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  %i.x = tail call noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.merged.i)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit": ; preds = %bb.h, %bb.i
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.i ], [ %i.w, %bb.h ]
  %i.y = icmp ult i64 %2, %.sroa.01.0.i
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.z = load ptr, ptr %0, align 8, !nonnull !55, !align !56, !noundef !55
  %i.aa = tail call fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  store ptr %i.aa, ptr %1, align 8
  br label %bb.ap

bb.k:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.ab = tail call fastcc noundef align 8 dereferenceable(24) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hbebdc65590243689E"(ptr noalias noundef align 8 dereferenceable(8) %1) ; 11 uses
  %i.ac = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  %i.ad = load i8, ptr %i.ab, align 8, !alias.scope !45285
  %i.ae = lshr i8 %i.ad, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !45285
  %.sroa.0.0.i9 = select i1 %i.ac, i64 %i.af, i64 %i.ah
  %.sroa.0.0.i10 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i9, i64 %2) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45286
  %exitcond.not.i.i.i.i.i.i.i97 = icmp eq i64 %.sroa.0.0.i10, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i97, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.aj, %.sroa.0.0.i10
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ai = phi i64 [ %i.aj, %bb.l ], [ 0, %bb.k ]
  %i.aj = add nuw i64 %i.ai, 1                    ; 4 uses
  %i.ak = tail call fastcc noundef range(i32 0, 1114113) i32 @"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E"(ptr noalias noundef align 8 dereferenceable(24) %i.ab), !noalias !45287 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 1114112
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45288
  %i.al = tail call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 4) #71, !noalias !45288 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70, !noalias !45286
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i": ; preds = %bb.m
  store i32 %i.ak, ptr %i.al, align 4, !noalias !45286
  store i64 4, ptr %i.b, align 8, !noalias !45286
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !45286
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !45286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45290)
  %exitcond.not.i.i.i1319.not.i.i.i.i.i.i = icmp ult i64 %i.aj, %.sroa.0.0.i10
  br i1 %exitcond.not.i.i.i1319.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i", %.noexc13.i.i.i.i
  %i.an = phi ptr [ %i.ej, %.noexc13.i.i.i.i ], [ %i.al, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ]
  %i.ao = phi i64 [ %i.el, %.noexc13.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ] ; 6 uses
  %umax.i.i.i20.i.i.i.i.i.i = phi i64 [ %umax.i.i.i.i.i.i.i.i.i, %.noexc13.i.i.i.i ], [ %.sroa.0.0.i10, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ]
  %i.ap = phi i64 [ %i.ar, %.noexc13.i.i.i.i ], [ %i.aj, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ]
  br label %bb.o

bb.o:                                             ; preds = %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.aq = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i" ]
  %i.ar = add i64 %i.aq, 1                        ; 5 uses
  %i.as = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45286

.noexc.i.i.i.i:                                   ; preds = %bb.o
  br i1 %i.as, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.noexc.i.i.i.i
  %i.at = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc10.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45286 ; 2 uses

.noexc10.i.i.i.i:                                 ; preds = %bb.p
  %i.au = extractvalue { ptr, i64 } %i.at, 1      ; 5 uses
  %i.av = icmp samesign eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %.noexc10.i.i.i.i
  %i.aw = extractvalue { ptr, i64 } %i.at, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !noalias !45291, !noundef !55 ; 3 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %.thread.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %i.bb = icmp ne i64 %i.au, 1
  tail call void @llvm.assume(i1 %i.bb), !noalias !45292
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -2
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !45291, !noundef !55 ; 3 uses
  %i.be = and i8 %i.bd, 31
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = icmp slt i8 %i.bd, -64
  br i1 %i.bg, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.i.i.i.i.i.i", label %bb.s

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.q
  %i.bh = zext nneg i8 %i.az to i32
  %i.bi = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45286

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.i.i.i.i.i.i"
  %i.bj = icmp ne i64 %i.au, 2
  tail call void @llvm.assume(i1 %i.bj), !noalias !45292
  %i.bk = getelementptr inbounds i8, ptr %i.ax, i64 -3
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !45291, !noundef !55 ; 3 uses
  %i.bm = and i8 %i.bl, 15
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = icmp slt i8 %i.bl, -64
  br i1 %i.bo, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.i.i.i.i.i.i", label %bb.r

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.i.i.i.i.i.i"
  %i.bp = icmp ne i64 %i.au, 3
  tail call void @llvm.assume(i1 %i.bp), !noalias !45292
  %i.bq = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.br = load i8, ptr %i.bq, align 1, !noalias !45291, !noundef !55
  %i.bs = and i8 %i.br, 7
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 6
  %i.bv = and i8 %i.bl, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw
  br label %bb.r

bb.r:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.i.i.i.i.i.i"
  %.sroa.04.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bx, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i.i.i.i.i.i.i.i" ], [ %i.bn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i.i.i.i.i.i.i.i" ]
  %i.by = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i.i.i.i, 6
  %i.bz = and i8 %i.bd, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.i.i.i.i.i.i"
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.r ], [ %i.bf, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i.i.i.i.i.i.i.i" ] ; 5 uses
  %i.cc = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 6
  %i.cd = and i8 %i.az, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce            ; 3 uses
  %i.cg = icmp samesign ult i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 17408
  tail call void @llvm.assume(i1 %i.cg), !noalias !45292
  %i.ch = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45286 ; 3 uses

.noexc12.i.i.i.i:                                 ; preds = %bb.s
  %i.ci = icmp samesign ult i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ci, label %.noexc11.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc12.i.i.i.i
  %i.cj = icmp samesign ult i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 32
  br i1 %i.cj, label %.noexc11.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp samesign ult i32 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1024
  %..i4.i.i.i.i.i.i.i = select i1 %i.ck, i64 -3, i64 -4
  br label %.noexc11.i.i.i.i

.noexc11.i.i.i.i:                                 ; preds = %bb.u, %bb.t, %.noexc12.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.ch, %bb.t ], [ %i.ch, %bb.u ], [ %i.ch, %.noexc12.i.i.i.i ], [ %i.bi, %.thread.i.i.i.i.i.i.i.i ]
  %.sroa.4.1.i.ph10.i.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.t ], [ %i.cf, %bb.u ], [ %i.cf, %.noexc12.i.i.i.i ], [ %i.bh, %.thread.i.i.i.i.i.i.i.i ]
  %.sroa.03.0.neg.i.i.i.i.i.i.i.i = phi i64 [ -2, %bb.t ], [ %..i4.i.i.i.i.i.i.i, %bb.u ], [ -1, %.noexc12.i.i.i.i ], [ -1, %.thread.i.i.i.i.i.i.i.i ]
  %i.cl = extractvalue { ptr, i64 } %.pn.i.i.i.i.i.i.i.i, 1
  %i.cm = add i64 %.sroa.03.0.neg.i.i.i.i.i.i.i.i, %i.cl
  %i.cn = load i8, ptr %i.ab, align 8, !alias.scope !45293, !noalias !45294, !noundef !55
  %i.co = trunc i64 %i.cm to i8
  %i.cp = shl i8 %i.co, 1
  %i.cq = and i8 %i.cn, 1
  %i.cr = or disjoint i8 %i.cp, %i.cq
  store i8 %i.cr, ptr %i.ab, align 8, !alias.scope !45293, !noalias !45294
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"

bb.v:                                             ; preds = %.noexc.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45295), !noalias !45292
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !45296, !noalias !45294, !noundef !55 ; 6 uses
  %i.cs = icmp samesign eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !45296, !noalias !45294, !nonnull !55, !noundef !55
  %i.ct = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i.i.i.i ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !45297, !noundef !55 ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %.thread.i13.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i5.i.i.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i5.i.i.i.i.i.i.i": ; preds = %bb.w
  %i.cx = icmp ne i64 %.val8.i.i.i.i.i.i.i.i, 1
  tail call void @llvm.assume(i1 %i.cx), !noalias !45292
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 -2
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !45297, !noundef !55 ; 3 uses
  %i.da = and i8 %i.cz, 31
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = icmp slt i8 %i.cz, -64
  br i1 %i.dc, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i10.i.i.i.i.i.i.i", label %bb.y

.thread.i13.i.i.i.i.i.i.i:                        ; preds = %bb.w
  %i.dd = zext nneg i8 %i.cv to i32
  br label %bb.ab

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i10.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i5.i.i.i.i.i.i.i"
  %i.de = icmp ne i64 %.val8.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.assume(i1 %i.de), !noalias !45292
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 -3
  %i.dg = load i8, ptr %i.df, align 1, !noalias !45297, !noundef !55 ; 3 uses
  %i.dh = and i8 %i.dg, 15
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = icmp slt i8 %i.dg, -64
  br i1 %i.dj, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i12.i.i.i.i.i.i.i", label %bb.x

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i12.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i10.i.i.i.i.i.i.i"
  %i.dk = icmp ne i64 %.val8.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.assume(i1 %i.dk), !noalias !45292
  %i.dl = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !45297, !noundef !55
  %i.dn = and i8 %i.dm, 7
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 6
  %i.dq = and i8 %i.dg, 63
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.dp, %i.dr
  br label %bb.x

bb.x:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i12.i.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i10.i.i.i.i.i.i.i"
  %.sroa.04.1.i.i11.i.i.i.i.i.i.i = phi i32 [ %i.ds, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i12.i.i.i.i.i.i.i" ], [ %i.di, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i10.i.i.i.i.i.i.i" ]
  %i.dt = shl nuw nsw i32 %.sroa.04.1.i.i11.i.i.i.i.i.i.i, 6
  %i.du = and i8 %i.cz, 63
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = or disjoint i32 %i.dt, %i.dv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i5.i.i.i.i.i.i.i"
  %.sroa.04.0.i.i6.i.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.x ], [ %i.db, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i5.i.i.i.i.i.i.i" ] ; 5 uses
  %i.dx = shl nuw nsw i32 %.sroa.04.0.i.i6.i.i.i.i.i.i.i, 6
  %i.dy = and i8 %i.cv, 63
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dx, %i.dz            ; 3 uses
  %i.eb = icmp samesign ult i32 %.sroa.04.0.i.i6.i.i.i.i.i.i.i, 17408
  tail call void @llvm.assume(i1 %i.eb), !noalias !45292
  %i.ec = icmp samesign ult i32 %.sroa.04.0.i.i6.i.i.i.i.i.i.i, 2
  br i1 %i.ec, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = icmp samesign ult i32 %.sroa.04.0.i.i6.i.i.i.i.i.i.i, 32
  br i1 %i.ed, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = icmp samesign ult i32 %.sroa.04.0.i.i6.i.i.i.i.i.i.i, 1024
  %..i7.i.i.i.i.i.i.i = select i1 %i.ee, i64 -3, i64 -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %.thread.i13.i.i.i.i.i.i.i
  %.sroa.4.1.i.ph13.i.i.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.z ], [ %i.ea, %bb.aa ], [ %i.ea, %bb.y ], [ %i.dd, %.thread.i13.i.i.i.i.i.i.i ]
  %.sroa.03.0.neg.i8.i.i.i.i.i.i.i = phi i64 [ -2, %bb.z ], [ %..i7.i.i.i.i.i.i.i, %bb.aa ], [ -1, %bb.y ], [ -1, %.thread.i13.i.i.i.i.i.i.i ]
  %i.ef = add i64 %.sroa.03.0.neg.i8.i.i.i.i.i.i.i, %.val8.i.i.i.i.i.i.i.i
  store i64 %i.ef, ptr %i.ag, align 8, !alias.scope !45298, !noalias !45294
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"

"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i": ; preds = %bb.v, %.noexc10.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i20.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i", label %bb.o

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i": ; preds = %bb.ab, %.noexc11.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i.i.i.i = phi i32 [ %.sroa.4.1.i.ph13.i.i.i.i.i.i.i.i, %bb.ab ], [ %.sroa.4.1.i.ph10.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i ]
  %i.eg = icmp samesign ult i64 %i.ao, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = load i64, ptr %i.b, align 8, !range !65, !alias.scope !45299, !noalias !45300, !noundef !55
  %i.ei = icmp eq i64 %i.ao, %i.eh
  br i1 %i.ei, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i", label %.noexc13.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i": ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i" unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45286

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45299, !noalias !45300
  br label %.noexc13.i.i.i.i

.noexc13.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i", %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i"
  %i.ej = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i..noexc13_crit_edge.i.i.i.i" ], [ %i.an, %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ao
  store i32 %.sroa.0.0.i.ph.i.i.i.i.i.i, ptr %i.ek, align 4, !noalias !45301
  %i.el = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45299, !noalias !45300
  %umax.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i10, i64 %i.ar)
  %exitcond.not.i.i.i13.not.i.i.i.i.i.i = icmp ult i64 %i.ar, %.sroa.0.0.i10
  br i1 %exitcond.not.i.i.i13.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i"

.loopexit.i.i.i.i:                                ; preds = %bb.p, %bb.o
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h593ffbb863a758e8E.exit.i.i.i.i.i.i", %bb.s, %.thread.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !45286 ; 2 uses
  %i.em = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.em, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !45286, !nonnull !55, !noundef !55
  %i.en = shl nuw i64 %.val.i.i.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45286
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i": ; preds = %.noexc13.i.i.i.i, %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  %.sroa.5.0.copyload = phi i64 [ %i.ao, %"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E.exit.i.i.i.i.i.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i" ], [ %i.el, %.noexc13.i.i.i.i ]
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !45302
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !45302
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit

common.resume:                                    ; preds = %bb.an, %.noexc21, %.noexc.i.i, %bb.ae, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.et, %.noexc.i.i ], [ %lpad.phi.i.i.i.i, %bb.ac ], [ %lpad.phi.i.i.i.i, %bb.ad ], [ %i.et, %bb.ae ], [ %i.ff, %.noexc21 ], [ %i.ff, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit: ; preds = %bb.l, %bb.k, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i"
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ 0, %bb.k ], [ 0, %bb.l ] ; 3 uses
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ inttoptr (i64 4 to ptr), %bb.k ], [ inttoptr (i64 4 to ptr), %bb.l ] ; 5 uses
  %.sroa.0.031 = phi i64 [ %.sroa.0.0.copyload, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE.exit.i.i.i.i" ], [ 0, %bb.k ], [ 0, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45286
  %i.eo = icmp ult i64 %.sroa.5.0, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45303
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa_idx.i.i, i8 0, i64 23, i1 false), !noalias !45303
  store i8 1, ptr %i.a, align 8, !noalias !45303
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  %i.ep = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.ep, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit
  %.idx = shl nuw nsw i64 %.sroa.5.0, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %.idx
  br label %bb.ai

"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i": ; preds = %bb.ah, %bb.ag
  %i.er = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc.i.i unwind label %bb.ak, !noalias !45303

.noexc.i.i:                                       ; preds = %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"
  br i1 %i.er, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ak, !noalias !45303

bb.af:                                            ; preds = %bb.ai
  %i.es = icmp eq ptr %.sroa.3.0, %i.ew
  br i1 %i.es, label %._crit_edge, label %bb.ai

bb.ag:                                            ; preds = %bb.ai
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = icmp eq i64 %.sroa.0.031, 0
  br i1 %i.eu, label %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = shl nuw i64 %.sroa.0.031, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45304
  br label %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"

bb.ai:                                            ; preds = %.lr.ph99, %bb.af
  %.sroa.8.0.i.i98 = phi ptr [ %i.eq, %.lr.ph99 ], [ %i.ew, %bb.af ]
  %i.ew = getelementptr inbounds i8, ptr %.sroa.8.0.i.i98, i64 -4 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !range !62, !noalias !45305, !noundef !55
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.a, i32 noundef %i.ex)
          to label %bb.af unwind label %bb.ag, !noalias !45303

._crit_edge:                                      ; preds = %bb.af, %_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E.exit
  %i.ey = icmp eq i64 %.sroa.0.031, 0
  br i1 %i.ey, label %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ez = shl nuw i64 %.sroa.0.031, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !45306
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit

bb.ak:                                            ; preds = %bb.ae, %"_ZN4core3ptr102drop_in_place$LT$core..iter..adapters..rev..Rev$LT$alloc..vec..into_iter..IntoIter$LT$char$GT$$GT$$GT$17hdbfcf4d23a147b70E.exit.i.i"
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !45303
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit: ; preds = %._crit_edge, %bb.aj
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45303
  store i64 1, ptr %i.c, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fc, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45307
  %i.fd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !45307 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit", !prof !58

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %.noexc21 unwind label %bb.ao

.noexc21:                                         ; preds = %bb.am
  br i1 %i.fg, label %common.resume, label %bb.an

bb.an:                                            ; preds = %.noexc21
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit", %bb.j, %bb.d
  %.sroa.0.0 = phi ptr [ %i.n, %bb.d ], [ %i.fd, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit" ], [ %i.d, %bb.j ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4rhai8packages11string_more16string_functions10sub_string17ha45a76b445a11fbeE(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_ZN4rhai8packages9lang_core14core_functions10parse_json17h5a2c00fe632be800E:bb.a
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !47877
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.068.0.i, i64 16
  %i.fa = load i64, ptr %.sroa.068.0.i, align 8, !noalias !47883, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !47877
  invoke void @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$15eval_stmt_block17h3c746e72af9baf26E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias noundef align 8 dereferenceable_or_null(16) null, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ez, i64 noundef %i.fa, i1 noundef zeroext false)
          to label %.noexc.i.i.i unwind label %bb.au, !noalias !47885

.noexc.i.i.i:                                     ; preds = %bb.av
  %i.fb = load i8, ptr %i.h, align 8, !range !70, !noalias !47886, !noundef !55 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 12
  br i1 %i.fc, label %bb.aw, label %.thread42.i.i.i

bb.aw:                                            ; preds = %.noexc.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !47886, !nonnull !55, !align !56, !noundef !55 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47887)
  call void @llvm.experimental.noalias.scope.decl(metadata !47888)
  %i.ff = load i8, ptr %i.fe, align 8, !range !79, !alias.scope !47888, !noalias !47889, !noundef !55
  switch i8 %i.ff, label %.thread38.i.i.i [
    i8 32, label %bb.ax
    i8 33, label %bb.bc
    i8 34, label %bb.bc
  ], !prof !47890

.thread38.i.i.i:                                  ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47877
  br label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47891
  store ptr @589, ptr %i.e, align 8, !noalias !47891
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !47891
  store ptr @75, ptr %i.f, align 8, !noalias !47891
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.fg, align 8, !noalias !47891
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.fh, align 8, !noalias !47891
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.fi, align 8, !noalias !47891
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.fj, align 8, !noalias !47891
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #70
          to label %bb.ay unwind label %bb.az, !noalias !47892

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fe) #72
          to label %bb.bb unwind label %bb.ba, !noalias !47889

bb.ba:                                            ; preds = %bb.az
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47892
  unreachable

bb.bb:                                            ; preds = %bb.az
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.fe, i64 noundef 64, i64 noundef 8) #71, !noalias !47889
  br label %.body21.i.i.i

.thread42.i.i.i:                                  ; preds = %.noexc.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !47893
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0.copyload.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !47893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47877
  br label %bb.be

bb.bc:                                            ; preds = %bb.aw, %bb.aw
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.0.0.copyload24.i.i.i = load i8, ptr %i.fm, align 8, !alias.scope !47894, !noalias !47885 ; 2 uses
  %.sroa.7.0..sroa_idx25.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx25.i.i.i, i64 7, i1 false), !alias.scope !47894, !noalias !47885
  %.sroa.8.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.sroa.8.0.copyload27.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx26.i.i.i, align 8, !alias.scope !47894, !noalias !47885 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.fe, i64 noundef 64, i64 noundef 8) #71, !noalias !47889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47877
  %i.fn = icmp eq i8 %.sroa.0.0.copyload24.i.i.i, 12
  br i1 %i.fn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.thread38.i.i.i
  %.sroa.8.041.i.i.i = phi ptr [ %i.fe, %.thread38.i.i.i ], [ %.sroa.8.0.copyload27.i.i.i, %bb.bc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.041.i.i.i) ]
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %.thread42.i.i.i
  %.sroa.0.03046.i.i.i = phi i8 [ %i.fb, %.thread42.i.i.i ], [ %.sroa.0.0.copyload24.i.i.i, %bb.bc ]
  %.sroa.8.045.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i, %.thread42.i.i.i ], [ %.sroa.8.0.copyload27.i.i.i, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.629.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.i, i64 7, i1 false), !noalias !47895
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.8.0.i.i = phi ptr [ %.sroa.8.041.i.i.i, %bb.bd ], [ %.sroa.8.045.i.i.i, %bb.be ] ; 2 uses
  %.sroa.028.0.i.i = phi i8 [ 12, %bb.bd ], [ %.sroa.0.03046.i.i.i, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  invoke fastcc void @"_ZN4core3ptr205drop_in_place$LT$rhai..defer..Deferred$LT$rhai..eval..global_state..GlobalRuntimeState$C$rhai..api..eval..$LT$impl$u20$rhai..engine..Engine$GT$..eval_ast_with_scope_raw..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17haf709f0face821dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %bb.bi unwind label %bb.bh, !noalias !47896

bb.bg:                                            ; preds = %.body21.i.i.i
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47885
  unreachable

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.bl, %bb.bh, %.body21.i.i.i, %bb.ap, %bb.ao
  %.pn.i31.i = phi { ptr, i32 } [ %i.eo, %bb.ap ], [ %i.fp, %bb.bh ], [ %i.eo, %bb.ao ], [ %eh.lpad-body22.i.i.i, %.body21.i.i.i ], [ %i.ft, %bb.bl ], [ %.pn.i.i.i, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$rhai..eval..cache..Caches$GT$17hb1b63aca478a9293E"(ptr noalias noundef align 8 dereferenceable(200) %i.m) #72
          to label %bb.ch unwind label %bb.ck, !noalias !47896

bb.bh:                                            ; preds = %bb.bf
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47877
  %i.fq = icmp eq i8 %.sroa.028.0.i.i, 12
  br i1 %i.fq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i.i)
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ce, %bb.cg, %bb.bj
  %.sroa.11.sroa.4.0 = phi i64 [ undef, %bb.bj ], [ %.sroa.11.sroa.4.0.copyload, %bb.cg ], [ undef, %bb.ce ]
  %.sroa.11.sroa.0.0 = phi i64 [ undef, %bb.bj ], [ %.sroa.11.sroa.0.0.copyload, %bb.cg ], [ undef, %bb.ce ]
  %.sroa.59.0 = phi ptr [ %.sroa.8.0.i.i, %bb.bj ], [ %.sroa.59.8.copyload10, %bb.cg ], [ %i.gx, %bb.ce ] ; 4 uses
  %storemerge39.i.i = phi i1 [ true, %bb.bj ], [ false, %bb.cg ], [ true, %bb.ce ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$rhai..eval..cache..Caches$GT$17hb1b63aca478a9293E"(ptr noalias noundef align 8 dereferenceable(200) %i.m)
          to label %bb.cj unwind label %bb.ci, !noalias !47896

bb.bk:                                            ; preds = %bb.bi
  %.sroa.5.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx26.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.629.i.i, i64 7, i1 false), !noalias !47864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629.i.i)
  store i8 %.sroa.028.0.i.i, ptr %i.l, align 8, !noalias !47864
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.8.0.i.i, ptr %.sroa.627.0..sroa_idx.i.i, align 8, !noalias !47864
  call void @llvm.experimental.noalias.scope.decl(metadata !47897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47898
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l)
          to label %.noexc18.i.i unwind label %bb.bl, !noalias !47896

.noexc18.i.i:                                     ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !47899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !47898
  %i.fr = load i8, ptr %i.l, align 8, !range !67, !alias.scope !47897, !noalias !47899, !noundef !55
  %i.fs = icmp eq i8 %i.fr, 8
  br i1 %i.fs, label %bb.cg, label %bb.bm

bb.bl:                                            ; preds = %bb.ce, %bb.bk
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bm:                                            ; preds = %.noexc18.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !47864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47864
  %i.fu = invoke fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hbec7160a0e3b1a28E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @494, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @476, i64 noundef 131)
          to label %bb.bo unwind label %bb.bn, !noalias !47900

.body.i.i.i:                                      ; preds = %bb.cc, %bb.bv, %bb.bu, %bb.bn
  %.pn.i.i.i = phi { ptr, i32 } [ %i.gh, %bb.bv ], [ %i.fv, %bb.bn ], [ %i.gh, %bb.bu ], [ %i.gz, %bb.cc ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.431.i.i)
          to label %.body.i.i unwind label %bb.cf, !noalias !47896

bb.bn:                                            ; preds = %bb.bs, %bb.bp, %bb.bm
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.fu, label %bb.bp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47901
  br label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.fw = getelementptr i8, ptr %i.ae, i64 104
  %.val9.i.i.i = load ptr, ptr %i.fw, align 8, !noalias !47901, !nonnull !55, !noundef !55
  %i.fx = getelementptr i8, ptr %i.ae, i64 112
  %.val10.i.i.i = load i64, ptr %i.fx, align 8, !noalias !47901, !noundef !55
  %i.fy = invoke fastcc { ptr, i64 } @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$13map_type_name17h365f4fe751f60630E"(ptr nonnull %.val9.i.i.i, i64 %.val10.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @476, i64 noundef 131)
          to label %bb.bq unwind label %bb.bn, !noalias !47900 ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.fz = extractvalue { ptr, i64 } %i.fy, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47901
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %bb.bs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !162

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.bq
  %i.gb = extractvalue { ptr, i64 } %i.fy, 0      ; 2 uses
  %i.gc = icmp eq i64 %i.fz, 0
  br i1 %i.gc, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i
  %.sroa.5.01623.i.i.i = phi i64 [ 131, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i ], [ %i.fz, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.01821.i.i.i = phi ptr [ @476, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread.i.i.i ], [ %i.gb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !47902
  %i.gd = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.5.01623.i.i.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !47902 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.5.017.i.i.i = phi i64 [ %.sroa.5.01623.i.i.i, %bb.br ], [ %i.fz, %bb.bq ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.br ], [ 0, %bb.bq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.5.017.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc.i20.i.i unwind label %bb.bn, !noalias !47900

.noexc.i20.i.i:                                   ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.gf = phi i1 [ true, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ false, %bb.br ]
  %.sroa.5.01624.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.5.01623.i.i.i, %bb.br ] ; 4 uses
  %.sroa.0.01822.i.i.i = phi ptr [ %i.gb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.01821.i.i.i, %bb.br ]
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.gd, %bb.br ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.0.01822.i.i.i, i64 %.sroa.5.01624.i.i.i, i1 false), !noalias !47903
  %i.gg = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.431.i.i)
          to label %bb.bw unwind label %bb.bu, !noalias !47896 ; 2 uses

bb.bu:                                            ; preds = %bb.bz, %bb.bw, %bb.bt
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gf, label %.body.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.sroa.5.01624.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !47904
  br label %.body.i.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.gi = extractvalue { ptr, i64 } %i.gg, 0
  %i.gj = extractvalue { ptr, i64 } %i.gg, 1
  %i.gk = getelementptr i8, ptr %i.ae, i64 104
  %.val.i19.i.i = load ptr, ptr %i.gk, align 8, !noalias !47901, !nonnull !55, !noundef !55
  %i.gl = getelementptr i8, ptr %i.ae, i64 112
  %.val8.i.i.i = load i64, ptr %i.gl, align 8, !noalias !47901, !noundef !55
  %i.gm = invoke fastcc { ptr, i64 } @"_ZN4rhai3api10formatting38_$LT$impl$u20$rhai..engine..Engine$GT$13map_type_name17h365f4fe751f60630E"(ptr nonnull %.val.i19.i.i, i64 %.val8.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gi, i64 noundef %i.gj)
          to label %bb.bx unwind label %bb.bu, !noalias !47900 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.gn = extractvalue { ptr, i64 } %i.gm, 0
  %i.go = extractvalue { ptr, i64 } %i.gm, 1      ; 7 uses
  %i.gp = icmp slt i64 %i.go, 0
  br i1 %i.gp, label %bb.bz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i.i.i: ; preds = %bb.bx
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !47905
  %i.gr = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.go, i64 noundef range(i64 1, 9) 1) #71, !noalias !47905 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.4.0.ph.i.i15.i.i.i = phi i64 [ 1, %bb.by ], [ 0, %bb.bx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i15.i.i.i, i64 %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc16.i.i.i unwind label %bb.bu, !noalias !47900

.noexc16.i.i.i:                                   ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i.i.i
  %.sroa.10.0.i.i12.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i11.i.i.i ], [ %i.gr, %bb.by ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i12.i.i.i, ptr nonnull readonly align 1 %i.gn, i64 %i.go, i1 false), !noalias !47906
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.01624.i.i.i, ptr %i.gt, align 8, !noalias !47901
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !47901
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.5.01624.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !47901
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.go, ptr %i.gu, align 8, !noalias !47901
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.10.0.i.i12.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !47901
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.go, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !47901
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.gv, align 2, !noalias !47901
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 0, ptr %i.gw, align 4, !noalias !47901
  store i8 13, ptr %i.c, align 8, !noalias !47901
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !47907
  %i.gx = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !47907 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.cb, label %bb.ce, !prof !58

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc18.i.i.i unwind label %bb.cc, !noalias !47900

.noexc18.i.i.i:                                   ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c) #72
          to label %.body.i.i.i unwind label %bb.cd, !noalias !47900

bb.cd:                                            ; preds = %bb.cc
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47900
  unreachable

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gx, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !47900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47901
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.431.i.i)
          to label %.invoke.i.i unwind label %bb.bl, !noalias !47896

bb.cf:                                            ; preds = %.body.i.i.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47900
  unreachable

bb.cg:                                            ; preds = %.noexc18.i.i
  %i.hc = load ptr, ptr %.sroa.627.0..sroa_idx.i.i, align 8, !alias.scope !47897, !noalias !47899, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.431.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !noalias !47896
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef 24, i64 noundef 8) #71, !noalias !47908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47864
  %.sroa.59.8.copyload10 = load ptr, ptr %.sroa.431.i.i, align 8, !noalias !47909
  %.sroa.11.8..sroa.431.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431.i.i, i64 8
  %.sroa.11.sroa.0.0.copyload = load i64, ptr %.sroa.11.8..sroa.431.i.i.sroa_idx, align 8, !noalias !47909
  %.sroa.11.sroa.4.0..sroa.11.8..sroa.431.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431.i.i, i64 16
  %.sroa.11.sroa.4.0.copyload = load i64, ptr %.sroa.11.sroa.4.0..sroa.11.8..sroa.431.i.i.sroa_idx.sroa_idx, align 8, !noalias !47909
  br label %.invoke.i.i

bb.ch:                                            ; preds = %bb.ci, %.body.i.i
  %.pn15.i.i = phi { ptr, i32 } [ %i.hd, %bb.ci ], [ %.pn.i31.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$rhai..eval..global_state..GlobalRuntimeState$GT$17h50e16b71733bfb6cE"(ptr noalias noundef align 8 dereferenceable(88) %i.n) #72
          to label %.body32.i unwind label %bb.ck, !noalias !47896

bb.ci:                                            ; preds = %.invoke.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !47864
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$rhai..eval..global_state..GlobalRuntimeState$GT$17h50e16b71733bfb6cE"(ptr noalias noundef align 8 dereferenceable(88) %i.n)
          to label %bb.cm unwind label %bb.cl, !noalias !47828

bb.ck:                                            ; preds = %bb.ch, %.body.i.i
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47896
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body32.i

.body32.i:                                        ; preds = %bb.cl, %bb.ch, %bb.aj
  %eh.lpad-body33.i = phi { ptr, i32 } [ %i.hf, %bb.cl ], [ %i.dw, %bb.aj ], [ %.pn15.i.i, %bb.ch ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$rhai..types..scope..Scope$GT$17ha79202e60abd8a14E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #72
          to label %.body.i unwind label %bb.cn, !noalias !47910

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !47864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431.i.i), !noalias !47830
  invoke void @"_ZN4core3ptr46drop_in_place$LT$rhai..types..scope..Scope$GT$17ha79202e60abd8a14E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %"_ZN4rhai3api4json38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_json17h7678637070c9024eE.exit" unwind label %bb.co, !noalias !47828

bb.cn:                                            ; preds = %.body32.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47910
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.co, %.body32.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body33.i, %.body32.i ], [ %i.hh, %bb.co ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rhai..ast..ast..AST$GT$17ha2f4cc96cbede6baE"(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #72
          to label %common.resume unwind label %bb.cp, !noalias !47828

bb.cp:                                            ; preds = %bb.cx, %bb.cq, %.body.i, %bb.ah, %.body25.i
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !47828
  unreachable

bb.cq:                                            ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@"_ZN61_$LT$rhai..tokenizer..Token$u20$as$u20$core..fmt..Display$GT$3fmt17hea7d9051570f50daE":bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !55, !noundef !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !55
  %i.ba = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !55, !align !56, !noundef !55 ; 4 uses
  %i.bd = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc) ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.j:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.bc, align 8, !nonnull !55, !noundef !55
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !55
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.bf, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %.merged.i = phi i64 [ %i.bg, %bb.i ], [ %i.bj, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.bk = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.merged.i)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2646, i64 noundef 5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit", %bb.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51, %bb.f, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit46, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit22", %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.b ], [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.z, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit36 ], [ %i.aj, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit22" ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit41 ], [ %i.ap, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit46 ], [ %i.aq, %bb.f ], [ %i.at, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit51 ], [ %i.ba, %bb.g ], [ %i.bk, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit" ], [ %i.bl, %bb.k ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$rhai..api..limits..Limits$u20$as$u20$core..fmt..Debug$GT$3fmt17hbef399c65d4e9213E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.j, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @2639, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @2647, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @2647, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @2648, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @2639, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @2639, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @2647, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @2647, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @2375, ptr %i.aa, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2659, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @2658, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$rhai..module..ModuleFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a1d1d39b1875987E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2661, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$rhai..types..scope..Scope$u20$as$u20$core..fmt..Debug$GT$3fmt17hb99dfa28186ae071E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2666, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2156, i64 noundef 6, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2662, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2667, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2663, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2668, i64 noundef 7, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2664, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2669, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2665)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h37840a5ca74d494dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57270
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2700, i64 noundef 7)
  %i.f = load i64, ptr %i.e, align 8, !noalias !57270, !noundef !55 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775807
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57270
  store ptr @2704, ptr %i.a, align 8, !noalias !57270
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.h, align 8, !noalias !57270
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.i, align 8, !noalias !57270
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !noalias !57270
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.k, align 8, !noalias !57270
  %i.l = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2702, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2705) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57270
  br label %"_ZN65_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a22403e815d4691E.exit"

bb.c:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.f, 1
  store i64 %i.m, ptr %i.e, align 8, !noalias !57270
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57270
  store ptr %i.n, ptr %i.b, align 8, !noalias !57270
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.o, align 8, !noalias !57270
  %i.p = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2702, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2701)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !57271)
  %.val.i4.i = load ptr, ptr %i.o, align 8, !alias.scope !57271, !noalias !57270, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.q = load i64, ptr %.val.i4.i, align 8, !noalias !57271, !noundef !55
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %.val.i4.i, align 8, !noalias !57271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57270
  br label %"_ZN65_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a22403e815d4691E.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !57272)
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !57272, !noalias !57270, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %i.t = load i64, ptr %.val.i.i, align 8, !noalias !57272, !noundef !55
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr %.val.i.i, align 8, !noalias !57272
  resume { ptr, i32 } %i.s

"_ZN65_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9a22403e815d4691E.exit": ; preds = %bb.b, %bb.d
  %i.v = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57270
  ret i1 %i.v
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$rhai..ast..flags..ASTFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17hdf1eb0d18d5add16E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN76_$LT$rhai..ast..flags.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h336aef7450a94243E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57275
  store ptr @415, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !57275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN63_$LT$rhai..ast..flags..FnAccess$u20$as$u20$core..fmt..Debug$GT$3fmt17h578349412085535dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !57, !noundef !55
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 6, i64 7
  %.1 = select i1 %i.b, ptr @2670, ptr @2568
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$rhai..ast..stmt..RangeCase$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e3afffd4aed891dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !110, !noundef !55
  %.not = icmp eq i8 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.419.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hce6a3787a3a7012cE", ptr %.sroa.423.0..sroa_idx, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %.val26 = load ptr, ptr %i.i, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57280
  store ptr @2673, ptr %i.b, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.734.0..sroa_idx, align 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 3, ptr %.sroa.835.0..sroa_idx, align 8
  %.sroa.1036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1036.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !57280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.p, ptr %i.q, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.r, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hce6a3787a3a7012cE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %.val24 = load ptr, ptr %i.i, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57281
  store ptr @2672, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !57281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit31 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$rhai..ast..stmt..StmtBlock$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f2e8235f934b924E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2486, i64 noundef 5)
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !57295
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !57294, !inline_history !57285
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !57296, !noalias !57297, !noundef !55 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 8                     ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !57296, !noalias !57297, !nonnull !55
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !57296, !noalias !57297
  %.sink11.i.i = select i1 %i.i, ptr %i.j, ptr %0 ; 2 uses
  %.sink10.i.i = select i1 %i.i, i64 %i.l, i64 %i.h ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sink10.i.i, 4
  %i.m = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx.i
  %i.n = icmp eq i64 %.sink10.i.i, 0
  br i1 %i.n, label %"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sink11.i.i, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !57298
  store ptr %.sroa.0.07.i.i, ptr %i.b, align 8, !noalias !57298
  %i.p = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @389), !inline_history !57291 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !57298
  %i.q = icmp eq ptr %i.o, %i.m
  br i1 %i.q, label %"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit", label %.lr.ph.i.i

"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit": ; preds = %.lr.ph.i.i, %bb.b
  %i.r = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !inline_history !57285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57295
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %or.cond2 = icmp eq i64 %i.t, 0
  br i1 %or.cond2, label %bb.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load i64, ptr %i.s, align 8
  store i64 %i.u, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN64_$LT$rhai..types..position..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17hbff79daa0ef34609E", ptr %.sroa.45.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57299
  store ptr @2470, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.w = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !57299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.c, %"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit", %bb.a
  %.sroa.0.0 = phi i1 [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %bb.a ], [ true, %"_ZN64_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6bf085233970475dE.exit" ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN63_$LT$rhai..tokenizer..Token$u20$as$u20$core..cmp..PartialEq$GT$2eq17h42b22208bedd3d4aE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
end_hunk_3
begin_hunk_4_@"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE":bb.a
  %i.cs = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2797, i64 noundef 19, ptr noundef nonnull align 1 %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2639, ptr noundef nonnull align 1 %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2794, ptr noundef nonnull align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ak

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ct, ptr %i.q, align 8
  %i.cu = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2798, i64 noundef 8, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ak

bb.u:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.cw, ptr %i.p, align 8
  %i.cx = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2799, i64 noundef 13, ptr noundef nonnull align 1 %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.cz, ptr %i.o, align 8
  %i.da = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2800, i64 noundef 32, ptr noundef nonnull align 1 %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ak

bb.w:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dc, ptr %i.n, align 8
  %i.dd = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2801, i64 noundef 25, ptr noundef nonnull align 1 %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ak

bb.x:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.df, ptr %i.m, align 8
  %i.dg = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2802, i64 noundef 12, ptr noundef nonnull align 1 %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ak

bb.y:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.di, ptr %i.l, align 8
  %i.dj = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2803, i64 noundef 15, ptr noundef nonnull align 1 %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ak

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dk, ptr %i.k, align 8
  %i.dl = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2804, i64 noundef 22, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ak

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dm, ptr %i.j, align 8
  %i.dn = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2805, i64 noundef 21, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ak

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.do, ptr %i.i, align 8
  %i.dp = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2806, i64 noundef 19, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dq, ptr %i.h, align 8
  %i.dr = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2807, i64 noundef 18, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.ad:                                            ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dt, ptr %i.g, align 8
  %i.du = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2808, i64 noundef 17, ptr noundef nonnull align 1 %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.ae:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.dw, ptr %i.f, align 8
  %i.dx = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2809, i64 noundef 15, ptr noundef nonnull align 1 %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ak

bb.af:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ea, ptr %i.e, align 8
  %i.eb = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2810, i64 noundef 17, ptr noundef nonnull align 1 %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2446, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ed, ptr %i.d, align 8
  %i.ee = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2811, i64 noundef 12, ptr noundef nonnull align 1 %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.eh, ptr %i.c, align 8
  %i.ei = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2812, i64 noundef 9, ptr noundef nonnull align 1 %i.ef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2426, ptr noundef nonnull align 1 %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.ek, ptr %i.b, align 8
  %i.el = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2492, i64 noundef 6, ptr noundef nonnull align 1 %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.en, ptr %i.a, align 8
  %i.eo = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2813, i64 noundef 4, ptr noundef nonnull align 1 %i.em, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2372)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.am, %bb.b ], [ %i.ap, %bb.c ], [ %i.as, %bb.d ], [ %i.av, %bb.e ], [ %i.ay, %bb.f ], [ %i.bb, %bb.g ], [ %i.be, %bb.h ], [ %i.bh, %bb.i ], [ %i.bk, %bb.j ], [ %i.bp, %bb.k ], [ %i.bt, %bb.l ], [ %i.bv, %bb.m ], [ %i.bz, %bb.n ], [ %i.cd, %bb.o ], [ %i.cg, %bb.p ], [ %i.ck, %bb.q ], [ %i.co, %bb.r ], [ %i.cs, %bb.s ], [ %i.cu, %bb.t ], [ %i.cx, %bb.u ], [ %i.da, %bb.v ], [ %i.dd, %bb.w ], [ %i.dg, %bb.x ], [ %i.dj, %bb.y ], [ %i.dl, %bb.z ], [ %i.dn, %bb.aa ], [ %i.dp, %bb.ab ], [ %i.dr, %bb.ac ], [ %i.du, %bb.ad ], [ %i.dx, %bb.ae ], [ %i.eb, %bb.af ], [ %i.ee, %bb.ag ], [ %i.ei, %bb.ah ], [ %i.el, %bb.ai ], [ %i.eo, %bb.aj ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$rhai..types..position..Position$u20$as$u20$core..fmt..Display$GT$3fmt17h9ba0e9bd4570cca1E"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i16, ptr %0, align 2, !noundef !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !55
  %i.f = or i16 %i.e, %i.c
  %or.cond = icmp eq i16 %i.f, 0
  br i1 %or.cond, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hceed42adcc2968d9E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hceed42adcc2968d9E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val9 = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.h, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58286
  store ptr @2816, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.1020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1020.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !55, !noalias !58287, !nonnull !55
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2766, i64 noundef 4), !noalias !58287, !inline_history !58288
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit15: ; preds = %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.m, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$rhai..module.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h878536f783ab1b13E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$rhai..optimizer..OptimizationLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hff4f74f4cdf0d0f9E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !110, !noundef !55 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN71_$LT$rhai..optimizer..OptimizationLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hff4f74f4cdf0d0f9E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN71_$LT$rhai..optimizer..OptimizationLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hff4f74f4cdf0d0f9E.3299", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h844e6de30f5c24d8E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17hd565d81ae3c9d599E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u8$GT$3fmt17h64a589b259a2d727E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN71_$LT$rhai..types..parse_error..LexError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ab09caeaae4b8a8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !87, !noundef !55 ; 3 uses
  %i.j = icmp ne i64 %i.i, -9223372036854775801
  tail call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %i.i, -9223372036854775808
  %i.l = icmp slt i64 %i.i, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 7
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.h, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2822, i64 noundef 15, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2823, i64 noundef 18)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.g, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2824, i64 noundef 13, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @397)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.f, align 8
  %i.t = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2825, i64 noundef 23, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.e, align 8
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2826, i64 noundef 15, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.d, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2827, i64 noundef 13, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.c, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2828, i64 noundef 19, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.b, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2829, i64 noundef 14, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2830, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.z, %bb.i ], [ %i.ab, %bb.j ], [ %i.ad, %bb.k ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$rhai..module.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17he42e79ac6657fb4bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !55   ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58302)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @3246, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @3246, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @3246, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @3246, i64 72), %.lr.ph.split.i.i.3.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.k = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !58303, !noundef !55
  %i.n = and i8 %i.e, %i.k
  %i.o = load ptr, ptr %.lcssa56.peel, align 8, !noalias !58303, !nonnull !55, !align !61, !noundef !55
  %i.p = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.m)
  br i1 %i.p, label %_ZN8bitflags6parser9to_writer17h70a568d23c78b152E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.ax, %bb.h ], [ %i.n, %bb.a ] ; 11 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.q = icmp ult i64 %.sroa.7.0.i, 4
  br i1 %i.q, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.r = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.r, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58302
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw [24 x i8], ptr @3246, i64 %.sroa.7.0.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val.i.i = load i8, ptr %i.u, align 8, !noalias !58303, !noundef !55 ; 4 uses
  %i.v = and i8 %.val.i.i, %i.e
  %i.w = icmp eq i8 %i.v, %.val.i.i
  %i.x = and i8 %.val.i.i, %.sroa.13.0.i
  %i.y = icmp ne i8 %i.x, 0
  %or.cond.i.i = and i1 %i.y, %i.w
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.t, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @3246, i64 %i.t ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val.i.i.1 = load i8, ptr %i.ab, align 8, !noalias !58303, !noundef !55 ; 4 uses
  %i.ac = and i8 %.val.i.i.1, %i.e
  %i.ad = icmp eq i8 %i.ac, %.val.i.i.1
  %i.ae = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond.i.i.1 = and i1 %i.af, %i.ad
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.aa, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @3246, i64 %i.aa ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val.i.i.2 = load i8, ptr %i.ai, align 8, !noalias !58303, !noundef !55 ; 4 uses
  %i.aj = and i8 %.val.i.i.2, %i.e
  %i.ak = icmp eq i8 %i.aj, %.val.i.i.2
  %i.al = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.am = icmp ne i8 %i.al, 0
  %or.cond.i.i.2 = and i1 %i.am, %i.ak
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ah, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.an = getelementptr inbounds nuw [24 x i8], ptr @3246, i64 %i.ah ; 2 uses
  %i.ao = or disjoint i64 %.sroa.7.0.i, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.val.i.i.3 = load i8, ptr %i.ap, align 8, !noalias !58303, !noundef !55 ; 4 uses
  %i.aq = and i8 %.val.i.i.3, %i.e
  %i.ar = icmp eq i8 %i.aq, %.val.i.i.3
  %i.as = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.at = icmp ne i8 %i.as, 0
  %or.cond.i.i.3 = and i1 %i.at, %i.ar
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ], [ %i.an, %.lr.ph.split.i.i.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.t, %.lr.ph.split.i.i ], [ %i.aa, %.lr.ph.split.i.i.1 ], [ %i.ah, %.lr.ph.split.i.i.2 ], [ %i.ao, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !58303, !noundef !55
  %i.aw = xor i8 %.val.i.i.lcssa, -1
  %i.ax = and i8 %.sroa.13.0.i, %i.aw
  %i.ay = load ptr, ptr %.lcssa56, align 8, !noalias !58303, !nonnull !55, !align !61, !noundef !55
  %i.az = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.az, label %_ZN8bitflags6parser9to_writer17h70a568d23c78b152E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58302
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !58302
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3257, i64 noundef 2)
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58302
  store ptr %i.d, ptr %i.c, align 8, !noalias !58305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58305
  store ptr %i.c, ptr %i.b, align 8, !noalias !58305
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h37437aea66a2d7e6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !58305
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !58306, !noalias !58307
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !58306, !noalias !58307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58308
  store ptr @415, ptr %i.a, align 8, !noalias !58305
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !58305
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !58305
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58305
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !58305
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58302
  br i1 %i.bd, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58302
  br label %_ZN8bitflags6parser9to_writer17h70a568d23c78b152E.exit

bb.h:                                             ; preds = %bb.b
  %i.be = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.av)
  br i1 %i.be, label %_ZN8bitflags6parser9to_writer17h70a568d23c78b152E.exit, label %.peel.newph, !llvm.loop !58301

_ZN8bitflags6parser9to_writer17h70a568d23c78b152E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h0100c46842f67691E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 9 uses
  %i.e = load i8, ptr %0, align 1, !noundef !55   ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58323)
  %invariant.op = and i8 %i.e, 2                  ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.preheader.peel

.lr.ph.split.i.i.preheader.peel:                  ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.peel.not, label %.backedge.i.i.peel.peel, label %.loopexit.peel

.backedge.i.i.peel.peel:                          ; preds = %.lr.ph.split.i.i.preheader.peel
  %or.cond.i.i.not.peel = icmp eq i8 %invariant.op, 0
  br i1 %or.cond.i.i.not.peel, label %.critedge58, label %.loopexit.peel

.loopexit.peel:                                   ; preds = %.backedge.i.i.peel.peel, %.lr.ph.split.i.i.preheader.peel
  %.lcssa17.peel = phi ptr [ @3256, %.lr.ph.split.i.i.preheader.peel ], [ getelementptr inbounds nuw (i8, ptr @3256, i64 24), %.backedge.i.i.peel.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.preheader.peel ], [ 2, %.backedge.i.i.peel.peel ]
  %i.h = phi i8 [ -2, %.lr.ph.split.i.i.preheader.peel ], [ -3, %.backedge.i.i.peel.peel ]
  %i.i = getelementptr inbounds nuw i8, ptr %.lcssa17.peel, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !58324, !noundef !55
  %i.k = and i8 %i.e, %i.h
  %i.l = load ptr, ptr %.lcssa17.peel, align 8, !noalias !58324, !nonnull !55, !align !61, !noundef !55
  %i.m = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.j)
  br i1 %i.m, label %_ZN8bitflags6parser9to_writer17h90cefe187656fcacE.exit, label %.peel.newph

.peel.newph:                                      ; preds = %.loopexit.peel, %bb.d
  %.sroa.13.0.i = phi i8 [ %i.z, %bb.d ], [ %i.k, %.loopexit.peel ] ; 7 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.d ], [ %.lcssa.peel, %.loopexit.peel ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.7.0.i, 2
  br i1 %i.n, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.o = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.o, label %.thread.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @3256, i64 %.sroa.7.0.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.7.0.i, 1          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val.i.i.peel = load i8, ptr %i.r, align 8, !noalias !58324, !noundef !55 ; 4 uses
  %i.s = and i8 %.val.i.i.peel, %i.e
  %i.t = icmp eq i8 %i.s, %.val.i.i.peel
  %i.u = and i8 %.val.i.i.peel, %.sroa.13.0.i
  %i.v = icmp ne i8 %i.u, 0
  %or.cond.i.i.peel = and i1 %i.v, %i.t
  br i1 %or.cond.i.i.peel, label %.loopexit, label %.backedge.i.i.peel

.backedge.i.i.peel:                               ; preds = %.lr.ph.split.i.i.preheader
  %exitcond.not.i.i.peel = icmp eq i64 %i.q, 2
  %.reass = and i8 %.sroa.13.0.i, %invariant.op
  %or.cond.i.i.not = icmp eq i8 %.reass, 0
  %or.cond = select i1 %exitcond.not.i.i.peel, i1 true, i1 %or.cond.i.i.not
  br i1 %or.cond, label %.loopexit.i.thread, label %.loopexit

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58323
  br label %.loopexit13.sink.split.i

.loopexit:                                        ; preds = %.backedge.i.i.peel, %.lr.ph.split.i.i.preheader
  %.lcssa17 = phi ptr [ %i.p, %.lr.ph.split.i.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @3256, i64 24), %.backedge.i.i.peel ] ; 2 uses
  %.lcssa = phi i64 [ %i.q, %.lr.ph.split.i.i.preheader ], [ 2, %.backedge.i.i.peel ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i.peel, %.lr.ph.split.i.i.preheader ], [ 2, %.backedge.i.i.peel ]
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa17, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !58324, !noundef !55
  %i.y = xor i8 %.val.i.i.lcssa, -1
  %i.z = and i8 %.sroa.13.0.i, %i.y
  %i.aa = load ptr, ptr %.lcssa17, align 8, !noalias !58324, !nonnull !55, !align !61, !noundef !55
  %i.ab = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.ab, label %_ZN8bitflags6parser9to_writer17h90cefe187656fcacE.exit, label %bb.d

.loopexit.i.thread:                               ; preds = %.backedge.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58323
  store i8 %.sroa.13.0.i, ptr %i.d, align 1, !noalias !58323
  br label %.critedge

.loopexit.i:                                      ; preds = %.peel.newph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58323
  store i8 %.sroa.13.0.i, ptr %i.d, align 1, !noalias !58323
  %.not.i = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %.critedge

.critedge:                                        ; preds = %.loopexit.i, %.loopexit.i.thread
  %i.ac = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.ac, label %bb.b, label %bb.a

.critedge58:                                      ; preds = %.backedge.i.i.peel.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58323
  store i8 %i.e, ptr %i.d, align 1, !noalias !58323
  br label %bb.a

bb.a:                                             ; preds = %.critedge58, %.critedge
  %i.ad = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3257, i64 noundef 2)
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a, %.critedge
  br label %.loopexit13.sink.split.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58323
  store ptr %i.d, ptr %i.c, align 8, !noalias !58326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58326
  store ptr %i.c, ptr %i.b, align 8, !noalias !58326
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h37437aea66a2d7e6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !58326
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !58327, !noalias !58328
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !58327, !noalias !58328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58329
  store ptr @415, ptr %i.a, align 8, !noalias !58326
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !58326
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !58326
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58326
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !58326
  %i.af = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58323
  br i1 %i.af, label %bb.b, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.c, %bb.b, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.b ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58323
  br label %_ZN8bitflags6parser9to_writer17h90cefe187656fcacE.exit

bb.d:                                             ; preds = %.loopexit
  %i.ag = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.x)
  br i1 %i.ag, label %_ZN8bitflags6parser9to_writer17h90cefe187656fcacE.exit, label %.peel.newph, !llvm.loop !58322

_ZN8bitflags6parser9to_writer17h90cefe187656fcacE.exit: ; preds = %.loopexit.peel, %.loopexit, %bb.d, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.d ], [ true, %.loopexit ], [ true, %.loopexit.peel ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17he1d102f869529b7cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !55   ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58344)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.k = and i8 %i.e, 16
  %or.cond.i.i.4.peel.not = icmp eq i8 %i.k, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.l = and i8 %i.e, 32
  %or.cond.i.i.5.peel.not = icmp eq i8 %i.l, 0
  br i1 %or.cond.i.i.5.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @3253, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @3253, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @3253, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @3253, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @3253, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @3253, i64 120), %.lr.ph.split.i.i.5.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ]
  %i.m = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ], [ -17, %.lr.ph.split.i.i.4.peel ], [ -33, %.lr.ph.split.i.i.5.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !58345, !noundef !55
  %i.p = and i8 %i.e, %i.m
  %i.q = load ptr, ptr %.lcssa56.peel, align 8, !noalias !58345, !nonnull !55, !align !61, !noundef !55
  %i.r = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.o)
  br i1 %i.r, label %_ZN8bitflags6parser9to_writer17h3086ef5030be9868E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.bn, %bb.h ], [ %i.p, %bb.a ] ; 15 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 8 uses
  %i.s = icmp ult i64 %.sroa.7.0.i, 6
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.t = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.t, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58344
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %.sroa.7.0.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val.i.i = load i8, ptr %i.w, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.x = and i8 %.val.i.i, %i.e
  %i.y = icmp eq i8 %i.x, %.val.i.i
  %i.z = and i8 %.val.i.i, %.sroa.13.0.i
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.i.i = and i1 %i.aa, %i.y
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, 6
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %i.v ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val.i.i.1 = load i8, ptr %i.ad, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.ae = and i8 %.val.i.i.1, %i.e
  %i.af = icmp eq i8 %i.ae, %.val.i.i.1
  %i.ag = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.ah = icmp ne i8 %i.ag, 0
  %or.cond.i.i.1 = and i1 %i.ah, %i.af
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.ac, 6
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %i.ac ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i.i.2 = load i8, ptr %i.ak, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.al = and i8 %.val.i.i.2, %i.e
  %i.am = icmp eq i8 %i.al, %.val.i.i.2
  %i.an = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.ao = icmp ne i8 %i.an, 0
  %or.cond.i.i.2 = and i1 %i.ao, %i.am
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.aj, 6
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %i.aj ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val.i.i.3 = load i8, ptr %i.ar, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.as = and i8 %.val.i.i.3, %i.e
  %i.at = icmp eq i8 %i.as, %.val.i.i.3
  %i.au = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.av = icmp ne i8 %i.au, 0
  %or.cond.i.i.3 = and i1 %i.av, %i.at
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.aq, 6
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %i.aq ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i.4 = load i8, ptr %i.ay, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.az = and i8 %.val.i.i.4, %i.e
  %i.ba = icmp eq i8 %i.az, %.val.i.i.4
  %i.bb = and i8 %.val.i.i.4, %.sroa.13.0.i
  %i.bc = icmp ne i8 %i.bb, 0
  %or.cond.i.i.4 = and i1 %i.bc, %i.ba
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr @3253, i64 %i.ax ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.7.0.i, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.5 = load i8, ptr %i.bf, align 8, !noalias !58345, !noundef !55 ; 4 uses
  %i.bg = and i8 %.val.i.i.5, %i.e
  %i.bh = icmp eq i8 %i.bg, %.val.i.i.5
  %i.bi = and i8 %.val.i.i.5, %.sroa.13.0.i
  %i.bj = icmp ne i8 %i.bi, 0
  %or.cond.i.i.5 = and i1 %i.bj, %i.bh
  br i1 %or.cond.i.i.5, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.u, %.lr.ph.split.i.i ], [ %i.ab, %.lr.ph.split.i.i.1 ], [ %i.ai, %.lr.ph.split.i.i.2 ], [ %i.ap, %.lr.ph.split.i.i.3 ], [ %i.aw, %.lr.ph.split.i.i.4 ], [ %i.bd, %.lr.ph.split.i.i.5 ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %.lr.ph.split.i.i ], [ %i.ac, %.lr.ph.split.i.i.1 ], [ %i.aj, %.lr.ph.split.i.i.2 ], [ %i.aq, %.lr.ph.split.i.i.3 ], [ %i.ax, %.lr.ph.split.i.i.4 ], [ %i.be, %.lr.ph.split.i.i.5 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ], [ %.val.i.i.4, %.lr.ph.split.i.i.4 ], [ %.val.i.i.5, %.lr.ph.split.i.i.5 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !58345, !noundef !55
  %i.bm = xor i8 %.val.i.i.lcssa, -1
  %i.bn = and i8 %.sroa.13.0.i, %i.bm
  %i.bo = load ptr, ptr %.lcssa56, align 8, !noalias !58345, !nonnull !55, !align !61, !noundef !55
  %i.bp = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.bp, label %_ZN8bitflags6parser9to_writer17h3086ef5030be9868E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.5, %.lr.ph.split.i.i.5.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2, %.backedge.i.i.3, %.backedge.i.i.4
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.4 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.5 ], [ %i.e, %.lr.ph.split.i.i.5.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.backedge.i.i.3 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.4 ], [ false, %.lr.ph.split.i.i.5 ], [ true, %.lr.ph.split.i.i.5.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.backedge.i.i.2 ], [ false, %.backedge.i.i.3 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58344
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !58344
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.br = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3257, i64 noundef 2)
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58344
  store ptr %i.d, ptr %i.c, align 8, !noalias !58347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58347
  store ptr %i.c, ptr %i.b, align 8, !noalias !58347
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h37437aea66a2d7e6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !58347
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !58348, !noalias !58349
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !58348, !noalias !58349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58350
  store ptr @415, ptr %i.a, align 8, !noalias !58347
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !58347
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !58347
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58347
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !58347
  %i.bt = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58344
  br i1 %i.bt, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58344
  br label %_ZN8bitflags6parser9to_writer17h3086ef5030be9868E.exit

bb.h:                                             ; preds = %bb.b
  %i.bu = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bl)
  br i1 %i.bu, label %_ZN8bitflags6parser9to_writer17h3086ef5030be9868E.exit, label %.peel.newph, !llvm.loop !58343

_ZN8bitflags6parser9to_writer17h3086ef5030be9868E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..module.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h38464818e7ccb35dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..module.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h10ca57030cd7775eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h18d32057df1d519dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hb0252cdb9a658103E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h0b04828d128da1f3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..parser.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hc6a78444f735f916E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$rhai..types..parse_error..LexError$u20$as$u20$core..fmt..Display$GT$3fmt17h96b5e94b1ac4980aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = load i64, ptr %0, align 8, !range !87, !noundef !55 ; 3 uses
  %i.w = icmp ne i64 %i.v, -9223372036854775801
  tail call void @llvm.assume(i1 %i.w)
  %i.x = xor i64 %i.v, -9223372036854775808
  %i.y = icmp slt i64 %i.v, 0
  %i.z = select i1 %i.y, i64 %i.x, i64 7
  switch i64 %i.z, label %bb.b [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 1, label %bb.c
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit47
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit52
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67
    i64 7, label %bb.d
    i64 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hafea6a739c0fba9dE", ptr %.sroa.425.0..sroa_idx, align 8
  %.val41 = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val42 = load ptr, ptr %i.ab, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58366
  store ptr @2834, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !58366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !58366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2835, i64 noundef 29)
  br label %bb.f

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit47: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hce6a3787a3a7012cE", ptr %.sroa.45.0..sroa_idx, align 8
  %.val39 = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.af, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58367
  store ptr @2837, ptr %i.f, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8100.0..sroa_idx, align 8
  %.sroa.10101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10101.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val40, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !58367
end_hunk_4
begin_hunk_5_@"_ZN76_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h29c112f3cf300488E":bb.a
  store ptr @2869, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !55, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58535
  store ptr @415, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @2774, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17hfcd451e7a21ce97aE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !55
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u16$GT$3fmt17h67f4e3110ad583bbE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$rhai..ast..flags.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h336aef7450a94243E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !noundef !55   ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58549)
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i8 %i.e, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.h = and i8 %i.e, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.i = and i8 %i.e, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.j = and i8 %i.e, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.j, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @3241, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @3241, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @3241, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @3241, i64 72), %.lr.ph.split.i.i.3.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.k = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !58550, !noundef !55
  %i.n = and i8 %i.e, %i.k
  %i.o = load ptr, ptr %.lcssa56.peel, align 8, !noalias !58550, !nonnull !55, !align !61, !noundef !55
  %i.p = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.m)
  br i1 %i.p, label %_ZN8bitflags6parser9to_writer17h23a6cb582b37e968E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i8 [ %i.ax, %bb.h ], [ %i.n, %bb.a ] ; 11 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.q = icmp ult i64 %.sroa.7.0.i, 4
  br i1 %i.q, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.r = icmp eq i8 %.sroa.13.0.i, 0
  br i1 %i.r, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58549
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw [24 x i8], ptr @3241, i64 %.sroa.7.0.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val.i.i = load i8, ptr %i.u, align 8, !noalias !58550, !noundef !55 ; 4 uses
  %i.v = and i8 %.val.i.i, %i.e
  %i.w = icmp eq i8 %i.v, %.val.i.i
  %i.x = and i8 %.val.i.i, %.sroa.13.0.i
  %i.y = icmp ne i8 %i.x, 0
  %or.cond.i.i = and i1 %i.y, %i.w
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.t, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @3241, i64 %i.t ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val.i.i.1 = load i8, ptr %i.ab, align 8, !noalias !58550, !noundef !55 ; 4 uses
  %i.ac = and i8 %.val.i.i.1, %i.e
  %i.ad = icmp eq i8 %i.ac, %.val.i.i.1
  %i.ae = and i8 %.val.i.i.1, %.sroa.13.0.i
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond.i.i.1 = and i1 %i.af, %i.ad
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.aa, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @3241, i64 %i.aa ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val.i.i.2 = load i8, ptr %i.ai, align 8, !noalias !58550, !noundef !55 ; 4 uses
  %i.aj = and i8 %.val.i.i.2, %i.e
  %i.ak = icmp eq i8 %i.aj, %.val.i.i.2
  %i.al = and i8 %.val.i.i.2, %.sroa.13.0.i
  %i.am = icmp ne i8 %i.al, 0
  %or.cond.i.i.2 = and i1 %i.am, %i.ak
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ah, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.an = getelementptr inbounds nuw [24 x i8], ptr @3241, i64 %i.ah ; 2 uses
  %i.ao = or disjoint i64 %.sroa.7.0.i, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.val.i.i.3 = load i8, ptr %i.ap, align 8, !noalias !58550, !noundef !55 ; 4 uses
  %i.aq = and i8 %.val.i.i.3, %i.e
  %i.ar = icmp eq i8 %i.aq, %.val.i.i.3
  %i.as = and i8 %.val.i.i.3, %.sroa.13.0.i
  %i.at = icmp ne i8 %i.as, 0
  %or.cond.i.i.3 = and i1 %i.at, %i.ar
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ], [ %i.an, %.lr.ph.split.i.i.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.t, %.lr.ph.split.i.i ], [ %i.aa, %.lr.ph.split.i.i.1 ], [ %i.ah, %.lr.ph.split.i.i.2 ], [ %i.ao, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !58550, !noundef !55
  %i.aw = xor i8 %.val.i.i.lcssa, -1
  %i.ax = and i8 %.sroa.13.0.i, %i.aw
  %i.ay = load ptr, ptr %.lcssa56, align 8, !noalias !58550, !nonnull !55, !align !61, !noundef !55
  %i.az = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.az, label %_ZN8bitflags6parser9to_writer17h23a6cb582b37e968E.exit, label %bb.h

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.13.0.i65 = phi i8 [ %.sroa.13.0.i, %.backedge.i.i.2 ], [ %.sroa.13.0.i, %.lr.ph.split.i.i.3 ], [ %i.e, %.lr.ph.split.i.i.3.peel ], [ %.sroa.13.0.i, %.backedge.i.i ], [ %.sroa.13.0.i, %.backedge.i.i.1 ], [ %.sroa.13.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58549
  store i8 %.sroa.13.0.i65, ptr %i.d, align 1, !noalias !58549
  %.not.i = icmp eq i8 %.sroa.13.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3257, i64 noundef 2)
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58549
  store ptr %i.d, ptr %i.c, align 8, !noalias !58552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58552
  store ptr %i.c, ptr %i.b, align 8, !noalias !58552
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h37437aea66a2d7e6E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !58552
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !58553, !noalias !58554
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !58553, !noalias !58554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58555
  store ptr @415, ptr %i.a, align 8, !noalias !58552
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !58552
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !58552
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58552
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !58552
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58549
  br i1 %i.bd, label %bb.f, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.g, %bb.f, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.f ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58549
  br label %_ZN8bitflags6parser9to_writer17h23a6cb582b37e968E.exit

bb.h:                                             ; preds = %bb.b
  %i.be = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ay, i64 noundef %i.av)
  br i1 %i.be, label %_ZN8bitflags6parser9to_writer17h23a6cb582b37e968E.exit, label %.peel.newph, !llvm.loop !58548

_ZN8bitflags6parser9to_writer17h23a6cb582b37e968E.exit: ; preds = %bb.a, %bb.b, %bb.h, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.h ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h0024fe7bf9e93ec4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ugt i64 %2, 23
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58569
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58570
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #71, !noalias !58570 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i"

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.c
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !58571
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !58572
  store i64 %2, ptr %i.a, align 8, !noalias !58569
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !58569
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !58569
  call void @"_ZN100_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17hfc4d082b05fc8cb7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !58573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58569
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"

"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit": ; preds = %bb.b, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !58574
  %i.j = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !58574 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit", !prof !58

bb.e:                                             ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.f
  br i1 %i.m, label %"_ZN4core3ptr114drop_in_place$LT$alloc..sync..ArcInner$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hafff56ca63d3afe4E.exit", label %bb.g

bb.g:                                             ; preds = %.noexc8
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr114drop_in_place$LT$alloc..sync..ArcInner$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hafff56ca63d3afe4E.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr114drop_in_place$LT$alloc..sync..ArcInner$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hafff56ca63d3afe4E.exit": ; preds = %.noexc8, %bb.g
  resume { ptr, i32 } %i.l

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit": ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 2, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.65.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h586136874871e6a2E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2872, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17he82eb858dd70b87aE"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !55
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u16$GT$3fmt17h4d15c251d4fbbf20E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$rhai..ast..flags.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h90484ad08fb816f7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$rhai..ast..flags.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h89425d5f78e3065cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !55
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$rhai..ast..script_fn..ScriptFnMetadata$u20$as$u20$core..fmt..Display$GT$3fmt17hb0174e9b298fac86E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 14 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [88 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !61, !noundef !55
  %.not = icmp eq ptr %i.m, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58651)
  %.sink60.sroa.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink60.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58652
  store ptr %i.l, ptr %i.e, align 8, !noalias !58653
end_hunk_5
begin_hunk_6_@"_ZN77_$LT$rhai..types..parse_error..ParseErrorType$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ffb9e35b8e7b541E":bb.a
bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.f, align 8
  %i.bz = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2902, i64 noundef 20, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.e, align 8
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2903, i64 noundef 22, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.an

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.d, align 8
  %i.cd = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2904, i64 noundef 14, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.an

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.c, align 8
  %i.cf = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2905, i64 noundef 17, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.b, align 8
  %i.ch = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2906, i64 noundef 15, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @399)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.aj:                                            ; preds = %bb.a
  %i.ci = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2907, i64 noundef 11)
  br label %bb.an

bb.ak:                                            ; preds = %bb.a
  %i.cj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2908, i64 noundef 16)
  br label %bb.an

bb.al:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.a, align 8
  %i.cm = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2909, i64 noundef 15, ptr noundef nonnull align 1 %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2775, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @397)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.an

bb.am:                                            ; preds = %bb.a
  %i.cn = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2812, i64 noundef 9)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.z, %bb.b ], [ %i.ab, %bb.c ], [ %i.ad, %bb.d ], [ %i.ag, %bb.e ], [ %i.ai, %bb.f ], [ %i.ak, %bb.g ], [ %i.am, %bb.h ], [ %i.ao, %bb.i ], [ %i.aq, %bb.j ], [ %i.as, %bb.k ], [ %i.at, %bb.l ], [ %i.av, %bb.m ], [ %i.aw, %bb.n ], [ %i.ax, %bb.o ], [ %i.ay, %bb.p ], [ %i.az, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.be, %bb.t ], [ %i.bh, %bb.u ], [ %i.bj, %bb.v ], [ %i.bk, %bb.w ], [ %i.bl, %bb.x ], [ %i.bo, %bb.y ], [ %i.bp, %bb.z ], [ %i.br, %bb.aa ], [ %i.bu, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.bx, %bb.ad ], [ %i.bz, %bb.ae ], [ %i.cb, %bb.af ], [ %i.cd, %bb.ag ], [ %i.cf, %bb.ah ], [ %i.ch, %bb.ai ], [ %i.ci, %bb.aj ], [ %i.cj, %bb.ak ], [ %i.cm, %bb.al ], [ %i.cn, %bb.am ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN77_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h3cadbbcc856a2dc8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit5"

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !55, !noundef !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !55
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit5"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit5": ; preds = %bb.b, %bb.c
  %.merged.i4 = phi { ptr, i64 } [ %i.b, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = extractvalue { ptr, i64 } %.merged.i4, 1 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit5"
  %i.j = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.e:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit5"
  %i.k = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !55
  %i.n = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.m, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.d, %bb.e
  %.merged.i = phi { ptr, i64 } [ %i.j, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = extractvalue { ptr, i64 } %.merged.i, 1
  %.not = icmp eq i64 %i.h, %i.p
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  %i.q = extractvalue { ptr, i64 } %.merged.i, 0
  %i.r = extractvalue { ptr, i64 } %.merged.i4, 0
  %bcmp = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.h)
  %i.s = icmp eq i32 %bcmp, 0
  br label %bb.g

bb.g:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit", %bb.f
  %.sroa.0.0 = phi i1 [ %i.s, %bb.f ], [ false, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hcd6abc85be9f39a2E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %i.e = load i16, ptr %0, align 2, !noundef !55  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58701)
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.13.0.i = phi i16 [ %i.e, %bb.a ], [ %i.s, %bb.j ] ; 5 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.j ] ; 2 uses
  %.sroa.01.0.i = phi i1 [ true, %bb.a ], [ false, %bb.j ] ; 2 uses
  %i.f = icmp ult i64 %.sroa.7.0.i, 10
  br i1 %i.f, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = icmp eq i16 %.sroa.13.0.i, 0
  br i1 %i.g, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58701
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.h = phi i64 [ %i.j, %.backedge.i.i ], [ %.sroa.7.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @525, i64 %i.h ; 3 uses
  %i.j = add nuw nsw i64 %i.h, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i = load i16, ptr %i.k, align 8, !noalias !58702, !noundef !55 ; 4 uses
  %i.l = and i16 %.val.i.i, %i.e
  %i.m = icmp eq i16 %i.l, %.val.i.i
  %i.n = and i16 %.val.i.i, %.sroa.13.0.i
  %i.o = icmp ne i16 %i.n, 0
  %or.cond.i.i = and i1 %i.o, %i.m
  br i1 %or.cond.i.i, label %bb.c, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, 10
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !58702, !noundef !55
  %i.r = xor i16 %.val.i.i, -1
  %i.s = and i16 %.sroa.13.0.i, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !noalias !58702, !nonnull !55, !align !61, !noundef !55
  br i1 %.sroa.01.0.i, label %bb.j, label %bb.i

.loopexit.i:                                      ; preds = %bb.b, %.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58701
  store i16 %.sroa.13.0.i, ptr %i.d, align 2, !noalias !58701
  %.not.i = icmp eq i16 %.sroa.13.0.i, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3257, i64 noundef 2)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  br label %.loopexit13.sink.split.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58701
  store ptr %i.d, ptr %i.c, align 8, !noalias !58704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58704
  store ptr %i.c, ptr %i.b, align 8, !noalias !58704
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfaa8e5f78c25fe33E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !58704
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !58705, !noalias !58706
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !58705, !noalias !58706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58707
  store ptr @415, ptr %i.a, align 8, !noalias !58704
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !58704
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !58704
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58704
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !58704
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !58708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58701
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58701
  br label %_ZN8bitflags6parser9to_writer17h6aafbd22f2c29f44E.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3258, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h6aafbd22f2c29f44E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h6aafbd22f2c29f44E.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h6aafbd22f2c29f44E.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$rhai..types..float..FloatWrapper$LT$F$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha0bc3bd55ba85de8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h775cdd3f9382e619E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$rhai..types..float..FloatWrapper$LT$F$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda24691efea9cbc8E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f32$GT$3fmt17h43e013fe7f54c1a5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17he90ced0a3d880b95E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !55
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u16$GT$3fmt17h53de4c1af350953cE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$rhai..api..options.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hb24a06a2f814cf65E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !55
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u16$GT$3fmt17h1a6d6988b6104a81E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$rhai..packages..logic..LogicPackage$u20$as$u20$rhai..packages..Package$GT$4init17h878ae981cdc62779E"(ptr noalias noundef align 8 dereferenceable(264) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [144 x i8], align 8               ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [144 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [144 x i8], align 8               ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [144 x i8], align 8               ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [144 x i8], align 8               ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [144 x i8], align 8               ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [144 x i8], align 8               ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [144 x i8], align 8               ; 12 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [144 x i8], align 8              ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 5 uses
  %i.ad = alloca [144 x i8], align 8              ; 12 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [144 x i8], align 8              ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 5 uses
  %i.aj = alloca [144 x i8], align 8              ; 12 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %i.am = alloca [144 x i8], align 8              ; 12 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 5 uses
  %i.ap = alloca [144 x i8], align 8              ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [144 x i8], align 8              ; 12 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 5 uses
  %i.av = alloca [144 x i8], align 8              ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 5 uses
  %i.ay = alloca [144 x i8], align 8              ; 12 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 5 uses
  %i.bb = alloca [144 x i8], align 8              ; 12 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 5 uses
  %i.be = alloca [144 x i8], align 8              ; 12 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [144 x i8], align 8              ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 5 uses
  %i.bk = alloca [144 x i8], align 8              ; 12 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 5 uses
  %i.bn = alloca [144 x i8], align 8              ; 12 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 5 uses
  %i.bq = alloca [144 x i8], align 8              ; 12 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [32 x i8], align 8               ; 5 uses
  %i.bt = alloca [144 x i8], align 8              ; 12 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 5 uses
  %i.bw = alloca [144 x i8], align 8              ; 12 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [32 x i8], align 8               ; 5 uses
  %i.bz = alloca [144 x i8], align 8              ; 12 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [32 x i8], align 8               ; 5 uses
  %i.cc = alloca [144 x i8], align 8              ; 12 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [32 x i8], align 8               ; 5 uses
  %i.cf = alloca [144 x i8], align 8              ; 12 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [32 x i8], align 8               ; 5 uses
  %i.ci = alloca [144 x i8], align 8              ; 12 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 5 uses
  %i.cl = alloca [144 x i8], align 8              ; 12 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 5 uses
  %i.co = alloca [144 x i8], align 8              ; 12 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [32 x i8], align 8               ; 5 uses
  %i.cr = alloca [144 x i8], align 8              ; 12 uses
  %i.cs = alloca [24 x i8], align 8               ; 6 uses
  %i.ct = alloca [32 x i8], align 8               ; 5 uses
  %i.cu = alloca [144 x i8], align 8              ; 12 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 5 uses
  %i.cx = alloca [144 x i8], align 8              ; 12 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [32 x i8], align 8               ; 5 uses
  %i.da = alloca [144 x i8], align 8              ; 12 uses
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [32 x i8], align 8               ; 5 uses
  %i.dd = alloca [144 x i8], align 8              ; 12 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 5 uses
  %i.dg = alloca [144 x i8], align 8              ; 12 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [32 x i8], align 8               ; 5 uses
  %i.dj = alloca [144 x i8], align 8              ; 12 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 5 uses
  %i.dm = alloca [144 x i8], align 8              ; 12 uses
  %i.dn = alloca [24 x i8], align 8               ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 5 uses
  %i.dp = alloca [144 x i8], align 8              ; 12 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [32 x i8], align 8               ; 5 uses
  %i.ds = alloca [144 x i8], align 8              ; 12 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 5 uses
end_hunk_6
begin_hunk_7_@llvm.ctpop.i32
!45046 = distinct !{!45046, !128}
!45047 = distinct !{!45047, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45048 = distinct !{!45048, !45047, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45049 = distinct !{!45049, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45050 = distinct !{!45050, !45049, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45051 = distinct !{!45051, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45052 = distinct !{!45052, !45051, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45053 = distinct !{!45053, i1 false, !"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E"}
!45054 = distinct !{!45054, !45053, !"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E: argument 1"}
!45055 = distinct !{!45055, !45053, !"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E: argument 0"}
!45056 = distinct !{!45056, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45057 = distinct !{!45057, !45056, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45058 = distinct !{!45058, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45059 = distinct !{!45059, !45058, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45060 = distinct !{!45060, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45061 = distinct !{!45061, !45060, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45062 = distinct !{!45062, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45063 = distinct !{!45063, !45062, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45064 = distinct !{!45064, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45065 = distinct !{!45065, !45064, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45066 = distinct !{!45066, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45067 = distinct !{!45067, !45066, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45068 = distinct !{!45068, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45069 = distinct !{!45069, !45068, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45070 = !{!45052, !45050, !45048}
!45071 = !{!45055, !45054}
!45072 = !{!45061, !45059, !45057}
!45073 = !{!45063}
!45074 = !{!45069, !45067, !45065}
!45075 = distinct !{!45075, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hea94a9dd6eb38f69E"}
!45076 = distinct !{!45076, !45075, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hea94a9dd6eb38f69E: argument 0"}
!45077 = distinct !{!45077, i1 false, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E"}
!45078 = distinct !{!45078, !45077, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E: argument 0"}
!45079 = distinct !{!45079, i1 false, !"_ZN4core3str11validations15next_code_point17h5bd96adb02bfb3e4E"}
!45080 = distinct !{!45080, !45079, !"_ZN4core3str11validations15next_code_point17h5bd96adb02bfb3e4E: argument 0"}
!45081 = distinct !{!45081, i1 false, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E"}
!45082 = distinct !{!45082, !45081, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 1"}
!45083 = distinct !{!45083, !45081, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 0"}
!45084 = distinct !{!45084, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45085 = distinct !{!45085, !45084, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45086 = distinct !{!45086, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45087 = distinct !{!45087, !45086, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45088 = distinct !{!45088, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45089 = distinct !{!45089, !45088, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45090 = distinct !{!45090, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45091 = distinct !{!45091, !45090, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45092 = distinct !{!45092, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45093 = distinct !{!45093, !45092, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45094 = distinct !{!45094, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45095 = distinct !{!45095, !45094, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45096 = distinct !{!45096, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45097 = distinct !{!45097, !45096, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45098 = distinct !{!45098, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45099 = distinct !{!45099, !45098, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45100 = !{!45080, !45078, !45076}
!45101 = !{!45076}
!45102 = !{!45082}
!45103 = !{!45083}
!45104 = !{!45083, !45082}
!45105 = !{!45085}
!45106 = !{!45087}
!45107 = !{!45087, !45085, !45082}
!45108 = !{!45087, !45085, !45083, !45082}
!45109 = !{!45089}
!45110 = !{!45091}
!45111 = !{!45091, !45089, !45082}
!45112 = !{!45091, !45089, !45083, !45082}
!45113 = !{!45093}
!45114 = !{!45099, !45097, !45095}
!45115 = distinct !{!45115, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hd0df2893f2ff81c3E"}
!45116 = distinct !{!45116, !45115, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hd0df2893f2ff81c3E: argument 0"}
!45117 = distinct !{!45117, i1 false, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E"}
!45118 = distinct !{!45118, !45117, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E: argument 0"}
!45119 = distinct !{!45119, i1 false, !"_ZN4core3str11validations15next_code_point17h5bd96adb02bfb3e4E"}
!45120 = distinct !{!45120, !45119, !"_ZN4core3str11validations15next_code_point17h5bd96adb02bfb3e4E: argument 0"}
!45121 = distinct !{!45121, i1 false, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E"}
!45122 = distinct !{!45122, !45121, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 1"}
!45123 = distinct !{!45123, !45121, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 0"}
!45124 = distinct !{!45124, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45125 = distinct !{!45125, !45124, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45126 = distinct !{!45126, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45127 = distinct !{!45127, !45126, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45128 = distinct !{!45128, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45129 = distinct !{!45129, !45128, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45130 = distinct !{!45130, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45131 = distinct !{!45131, !45130, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45132 = distinct !{!45132, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45133 = distinct !{!45133, !45132, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45134 = distinct !{!45134, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45135 = distinct !{!45135, !45134, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45136 = distinct !{!45136, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45137 = distinct !{!45137, !45136, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45138 = distinct !{!45138, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45139 = distinct !{!45139, !45138, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45140 = !{!45120, !45118, !45116}
!45141 = !{!45116}
!45142 = !{!45122}
!45143 = !{!45123}
!45144 = !{!45123, !45122}
!45145 = !{!45125}
!45146 = !{!45127}
!45147 = !{!45127, !45125, !45122}
!45148 = !{!45127, !45125, !45123, !45122}
!45149 = !{!45129}
!45150 = !{!45131}
!45151 = !{!45131, !45129, !45122}
!45152 = !{!45131, !45129, !45123, !45122}
!45153 = !{!45133}
!45154 = !{!45139, !45137, !45135}
!45155 = distinct !{!45155, i1 false, !"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E"}
!45156 = distinct !{!45156, !45155, !"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E: argument 0"}
!45157 = distinct !{!45157, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45158 = distinct !{!45158, !45157, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45159 = distinct !{!45159, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45160 = distinct !{!45160, !45159, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45161 = distinct !{!45161, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45162 = distinct !{!45162, !45161, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45163 = distinct !{!45163, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45164 = distinct !{!45164, !45163, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45165 = distinct !{!45165, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45166 = distinct !{!45166, !45165, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45167 = distinct !{!45167, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45168 = distinct !{!45168, !45167, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45169 = distinct !{!45169, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45170 = distinct !{!45170, !45169, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45171 = distinct !{!45171, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45172 = distinct !{!45172, !45171, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45173 = distinct !{!45173, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45174 = distinct !{!45174, !45173, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45175 = distinct !{!45175, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45176 = distinct !{!45176, !45175, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45177 = distinct !{!45177, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45178 = distinct !{!45178, !45177, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45179 = distinct !{!45179, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45180 = distinct !{!45180, !45179, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45181 = !{!45156}
!45182 = !{!45162, !45160, !45158}
!45183 = !{!45168, !45166, !45164}
!45184 = !{!45174, !45172, !45170}
!45185 = !{!45180, !45178, !45176}
!45186 = distinct !{!45186, i1 false, !"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E"}
!45187 = distinct !{!45187, !45186, !"_ZN98_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17hb8582d5a222231a0E: argument 0"}
!45188 = distinct !{!45188, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45189 = distinct !{!45189, !45188, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45190 = distinct !{!45190, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45191 = distinct !{!45191, !45190, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45192 = distinct !{!45192, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45193 = distinct !{!45193, !45192, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45194 = distinct !{!45194, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45195 = distinct !{!45195, !45194, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45196 = distinct !{!45196, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45197 = distinct !{!45197, !45196, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45198 = distinct !{!45198, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45199 = distinct !{!45199, !45198, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45200 = distinct !{!45200, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45201 = distinct !{!45201, !45200, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45202 = distinct !{!45202, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45203 = distinct !{!45203, !45202, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45204 = distinct !{!45204, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45205 = distinct !{!45205, !45204, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45206 = distinct !{!45206, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45207 = distinct !{!45207, !45206, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45208 = distinct !{!45208, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45209 = distinct !{!45209, !45208, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45210 = distinct !{!45210, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45211 = distinct !{!45211, !45210, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45212 = !{!45187}
!45213 = !{!45193, !45191, !45189}
!45214 = !{!45199, !45197, !45195}
!45215 = !{!45205, !45203, !45201}
!45216 = !{!45211, !45209, !45207}
!45217 = distinct !{!45217, i1 false, !"_ZN11smartstring23SmartString$LT$Mode$GT$3len17hf74b6a29aaf3ae87E"}
!45218 = distinct !{!45218, !45217, !"_ZN11smartstring23SmartString$LT$Mode$GT$3len17hf74b6a29aaf3ae87E: argument 0"}
!45219 = distinct !{!45219, i1 false, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E"}
!45220 = distinct !{!45220, !45219, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E: argument 1"}
!45221 = distinct !{!45221, !45219, !"_ZN4core4iter6traits8iterator8Iterator7collect17hf33ee17768d0ea54E: argument 0"}
!45222 = distinct !{!45222, i1 false, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he1136ac3ee438ed3E"}
!45223 = distinct !{!45223, !45222, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he1136ac3ee438ed3E: argument 1"}
!45224 = distinct !{!45224, !45222, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he1136ac3ee438ed3E: argument 0"}
!45225 = distinct !{!45225, i1 false, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9974c71fa966b5baE"}
!45226 = distinct !{!45226, !45225, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9974c71fa966b5baE: argument 1"}
!45227 = distinct !{!45227, !45225, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9974c71fa966b5baE: argument 0"}
!45228 = distinct !{!45228, i1 false, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h91e512e76827e6cbE"}
!45229 = distinct !{!45229, !45228, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h91e512e76827e6cbE: argument 1"}
!45230 = distinct !{!45230, !45228, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h91e512e76827e6cbE: argument 0"}
!45231 = distinct !{!45231, i1 false, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE"}
!45232 = distinct !{!45232, !45231, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE: argument 0"}
!45233 = distinct !{!45233, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8find_map17hddb323e5b920f624E"}
!45234 = distinct !{!45234, !45233, !"_ZN4core4iter6traits8iterator8Iterator8find_map17hddb323e5b920f624E: argument 0"}
!45235 = distinct !{!45235, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E"}
!45236 = distinct !{!45236, !45235, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E: argument 1"}
!45237 = distinct !{!45237, !45235, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E: argument 0"}
!45238 = distinct !{!45238, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE"}
!45239 = distinct !{!45239, !45238, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE: argument 0"}
!45240 = distinct !{!45240, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E"}
!45241 = distinct !{!45241, !45240, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E: argument 0"}
!45242 = distinct !{!45242, i1 false, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE"}
!45243 = distinct !{!45243, !45242, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE: argument 0"}
!45244 = distinct !{!45244, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h770aedd37b20eff2E"}
!45245 = distinct !{!45245, !45244, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h770aedd37b20eff2E: argument 0"}
!45246 = distinct !{!45246, !45242, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h90e2910ef31049deE: argument 1"}
!45247 = distinct !{!45247, !45244, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h770aedd37b20eff2E: argument 1"}
!45248 = distinct !{!45248, i1 false, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE"}
!45249 = distinct !{!45249, !45248, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hba338808b3f035bbE: argument 0"}
!45250 = distinct !{!45250, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8find_map17hddb323e5b920f624E"}
!45251 = distinct !{!45251, !45250, !"_ZN4core4iter6traits8iterator8Iterator8find_map17hddb323e5b920f624E: argument 0"}
!45252 = distinct !{!45252, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E"}
!45253 = distinct !{!45253, !45252, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E: argument 1"}
!45254 = distinct !{!45254, !45252, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h06c02e1ea9c6bd41E: argument 0"}
!45255 = distinct !{!45255, i1 false, !"_ZN4core3str11validations23next_code_point_reverse17h91a344c48779acd6E"}
!45256 = distinct !{!45256, !45255, !"_ZN4core3str11validations23next_code_point_reverse17h91a344c48779acd6E: argument 0"}
!45257 = distinct !{!45257, i1 false, !"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E"}
!45258 = distinct !{!45258, !45257, !"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E: argument 0"}
!45259 = distinct !{!45259, i1 false, !"_ZN11smartstring3ops3Pop2op17hfe35f3b3562106a4E"}
!45260 = distinct !{!45260, !45259, !"_ZN11smartstring3ops3Pop2op17hfe35f3b3562106a4E: argument 0"}
!45261 = distinct !{!45261, i1 false, !"_ZN85_$LT$smartstring..inline..InlineString$u20$as$u20$smartstring..ops..GenericString$GT$8set_size17he7df2854e4b97a84E"}
!45262 = distinct !{!45262, !45261, !"_ZN85_$LT$smartstring..inline..InlineString$u20$as$u20$smartstring..ops..GenericString$GT$8set_size17he7df2854e4b97a84E: argument 0"}
!45263 = distinct !{!45263, i1 false, !"_ZN11smartstring3ops3Pop2op17h1825a085afe90de7E"}
!45264 = distinct !{!45264, !45263, !"_ZN11smartstring3ops3Pop2op17h1825a085afe90de7E: argument 0"}
!45265 = distinct !{!45265, i1 false, !"_ZN4core3str11validations23next_code_point_reverse17h91a344c48779acd6E"}
!45266 = distinct !{!45266, !45265, !"_ZN4core3str11validations23next_code_point_reverse17h91a344c48779acd6E: argument 0"}
!45267 = distinct !{!45267, i1 false, !"_ZN83_$LT$smartstring..boxed..BoxedString$u20$as$u20$smartstring..ops..GenericString$GT$8set_size17haa711faa9ba4f4f5E"}
!45268 = distinct !{!45268, !45267, !"_ZN83_$LT$smartstring..boxed..BoxedString$u20$as$u20$smartstring..ops..GenericString$GT$8set_size17haa711faa9ba4f4f5E: argument 0"}
!45269 = distinct !{!45269, i1 false, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E"}
!45270 = distinct !{!45270, !45269, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E: argument 1"}
!45271 = distinct !{!45271, !45269, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7d4cb08623b84699E: argument 0"}
!45272 = distinct !{!45272, i1 false, !"_ZN110_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hcd7a7f255f5f51b9E"}
!45273 = distinct !{!45273, !45272, !"_ZN110_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hcd7a7f255f5f51b9E: argument 1"}
!45274 = distinct !{!45274, !45272, !"_ZN110_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hcd7a7f255f5f51b9E: argument 0"}
!45275 = distinct !{!45275, i1 false, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ce1713d4e71afecE"}
!45276 = distinct !{!45276, !45275, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ce1713d4e71afecE: argument 0"}
!45277 = distinct !{!45277, i1 false, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17b3567b00111caaE"}
!45278 = distinct !{!45278, !45277, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h17b3567b00111caaE: argument 0"}
!45279 = distinct !{!45279, i1 false, !"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9c8b6ae3782fa204E"}
!45280 = distinct !{!45280, !45279, !"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9c8b6ae3782fa204E: argument 0"}
!45281 = distinct !{!45281, i1 false, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ce1713d4e71afecE"}
!45282 = distinct !{!45282, !45281, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ce1713d4e71afecE: argument 0"}
!45283 = distinct !{!45283, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45284 = distinct !{!45284, !45283, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45285 = !{!45218}
!45286 = !{!45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45287 = !{!45237, !45236, !45234, !45232, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45288 = !{!45241, !45239, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45289 = !{!45243}
!45290 = !{!45245}
!45291 = !{!45256, !45254, !45253, !45251, !45249, !45245, !45247, !45243, !45246, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45292 = !{!45254, !45253, !45251, !45249}
!45293 = !{!45262, !45260, !45258}
!45294 = !{!45254, !45253, !45251, !45249, !45245, !45247, !45243, !45246, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45295 = !{!45264}
!45296 = !{!45264, !45258}
!45297 = !{!45266, !45264, !45254, !45253, !45251, !45249, !45245, !45247, !45243, !45246, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45298 = !{!45268, !45264, !45258}
!45299 = !{!45245, !45243}
!45300 = !{!45247, !45246, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45301 = !{!45245, !45247, !45243, !45246, !45230, !45229, !45227, !45226, !45224, !45223, !45221, !45220}
!45302 = !{!45229, !45226, !45223, !45220}
!45303 = !{!45274, !45273, !45271, !45270}
!45304 = !{!45276, !45274, !45273, !45271, !45270}
!45305 = !{!45280, !45278, !45274, !45273, !45271, !45270}
!45306 = !{!45282, !45274, !45273, !45271, !45270}
!45307 = !{!45284}
!45308 = distinct !{!45308, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE"}
!45309 = distinct !{!45309, !45308, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE: argument 0"}
!45310 = distinct !{!45310, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E"}
!45311 = distinct !{!45311, !45310, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E: argument 0"}
!45312 = distinct !{!45312, i1 false, !"_ZN4core4iter6traits8iterator8Iterator7collect17h90021ec44438d290E"}
!45313 = distinct !{!45313, !45312, !"_ZN4core4iter6traits8iterator8Iterator7collect17h90021ec44438d290E: argument 1"}
!45314 = distinct !{!45314, !45312, !"_ZN4core4iter6traits8iterator8Iterator7collect17h90021ec44438d290E: argument 0"}
!45315 = distinct !{!45315, i1 false, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17ha9b8e62bd4234b43E"}
!45316 = distinct !{!45316, !45315, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17ha9b8e62bd4234b43E: argument 1"}
!45317 = distinct !{!45317, !45315, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17ha9b8e62bd4234b43E: argument 0"}
!45318 = distinct !{!45318, i1 false, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17hc432ec39da8c7b9eE"}
!45319 = distinct !{!45319, !45318, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17hc432ec39da8c7b9eE: argument 0"}
!45320 = distinct !{!45320, i1 false, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3ed7b3d8e5b6bc68E"}
!45321 = distinct !{!45321, !45320, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3ed7b3d8e5b6bc68E: argument 1"}
!45322 = distinct !{!45322, i1 false, !"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h90e176bedd3d5aa1E"}
!45323 = distinct !{!45323, !45322, !"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h90e176bedd3d5aa1E: argument 1"}
!45324 = distinct !{!45324, i1 false, !"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7af591156735d6b5E"}
!45325 = distinct !{!45325, !45324, !"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7af591156735d6b5E: argument 1"}
!45326 = distinct !{!45326, i1 false, !"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h59d63e3d72c9b4b6E"}
!45327 = distinct !{!45327, !45326, !"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h59d63e3d72c9b4b6E: argument 1"}
!45328 = distinct !{!45328, i1 false, !"_ZN5alloc6string6String4push17hdb86633958c7be9cE"}
!45329 = distinct !{!45329, !45328, !"_ZN5alloc6string6String4push17hdb86633958c7be9cE: argument 0"}
!45330 = distinct !{!45330, !45318, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17hc432ec39da8c7b9eE: argument 1"}
!45331 = distinct !{!45331, !45320, !"_ZN4core4iter6traits8iterator8Iterator8for_each17h3ed7b3d8e5b6bc68E: argument 0"}
!45332 = distinct !{!45332, !45322, !"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h90e176bedd3d5aa1E: argument 0"}
!45333 = distinct !{!45333, !45324, !"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7af591156735d6b5E: argument 0"}
!45334 = distinct !{!45334, !45326, !"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h59d63e3d72c9b4b6E: argument 0"}
!45335 = distinct !{!45335, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE"}
!45336 = distinct !{!45336, !45335, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE: argument 0"}
!45337 = distinct !{!45337, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45338 = distinct !{!45338, !45337, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45339 = distinct !{!45339, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45340 = distinct !{!45340, !45339, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45341 = distinct !{!45341, i1 false, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E"}
!45342 = distinct !{!45342, !45341, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 1"}
!45343 = distinct !{!45343, !45341, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 0"}
!45344 = distinct !{!45344, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45345 = distinct !{!45345, !45344, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45346 = distinct !{!45346, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45347 = distinct !{!45347, !45346, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45348 = distinct !{!45348, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45349 = distinct !{!45349, !45348, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45350 = distinct !{!45350, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45351 = distinct !{!45351, !45350, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45352 = distinct !{!45352, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45353 = distinct !{!45353, !45352, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45354 = !{!45311, !45309}
!45355 = !{!45317, !45316, !45314, !45313}
!45356 = !{!45319}
!45357 = !{!45321}
!45358 = !{!45323}
!45359 = !{!45325}
!45360 = !{!45327}
!45361 = !{!45329, !45327, !45325, !45323, !45321, !45319}
!45362 = !{!45334, !45333, !45332, !45331, !45330, !45317, !45316, !45314, !45313}
!45363 = !{!45334, !45327, !45333, !45325, !45332, !45323, !45331, !45321, !45319, !45330, !45317, !45316, !45314, !45313}
!45364 = !{!45329}
!45365 = !{!45336, !45329, !45327, !45325, !45323, !45321, !45319}
!45366 = !{!45329, !45334, !45327, !45333, !45325, !45332, !45323, !45331, !45321, !45319, !45330, !45317, !45316, !45314, !45313}
!45367 = !{!45338}
!45368 = !{!45340}
!45369 = !{!45340, !45338}
!45370 = !{!45340, !45338, !45317, !45316, !45314, !45313}
!45371 = !{!45316, !45313}
!45372 = !{!45343, !45342}
!45373 = !{!45343}
!45374 = !{!45342}
!45375 = !{!45347, !45345, !45343, !45342}
!45376 = !{!45351, !45349, !45343, !45342}
!45377 = !{!45353}
!45378 = distinct !{!45378, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45379 = distinct !{!45379, !45378, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45380 = distinct !{!45380, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45381 = distinct !{!45381, !45380, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45382 = distinct !{!45382, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45383 = distinct !{!45383, !45382, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45384 = !{!45379}
!45385 = !{!45381}
!45386 = !{!45383}
!45387 = !{!45383, !45381, !45379}
!45388 = distinct !{!45388, i1 false, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h35dca606b91dd8d7E"}
!45389 = distinct !{!45389, !45388, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h35dca606b91dd8d7E: argument 1"}
!45390 = distinct !{!45390, !45388, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h35dca606b91dd8d7E: argument 0"}
!45391 = distinct !{!45391, i1 false, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h670d4d70ab5378f7E"}
!45392 = distinct !{!45392, !45391, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h670d4d70ab5378f7E: argument 1"}
!45393 = distinct !{!45393, !45391, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h670d4d70ab5378f7E: argument 0"}
!45394 = !{!45393, !45392, !45390, !45389}
!45395 = distinct !{!45395, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!45396 = distinct !{!45396, !45395, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!45397 = distinct !{!45397, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E"}
!45398 = distinct !{!45398, !45397, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E: argument 1"}
!45399 = distinct !{!45399, !45397, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E: argument 0"}
!45400 = distinct !{!45400, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE"}
!45401 = distinct !{!45401, !45400, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE: argument 0"}
!45402 = distinct !{!45402, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E"}
!45403 = distinct !{!45403, !45402, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E: argument 0"}
!45404 = distinct !{!45404, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!45405 = distinct !{!45405, !45404, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!45406 = distinct !{!45406, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E"}
!45407 = distinct !{!45407, !45406, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E: argument 1"}
!45408 = distinct !{!45408, !45406, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E: argument 0"}
!45409 = distinct !{!45409, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE"}
!45410 = distinct !{!45410, !45409, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE: argument 0"}
!45411 = distinct !{!45411, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E"}
!45412 = distinct !{!45412, !45411, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4665f0c0afd1bec7E: argument 0"}
!45413 = distinct !{!45413, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45414 = distinct !{!45414, !45413, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45415 = distinct !{!45415, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45416 = distinct !{!45416, !45415, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45417 = distinct !{!45417, i1 false, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E"}
!45418 = distinct !{!45418, !45417, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 1"}
!45419 = distinct !{!45419, !45417, !"_ZN105_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h8b8464d35af53b32E: argument 0"}
!45420 = distinct !{!45420, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45421 = distinct !{!45421, !45420, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45422 = distinct !{!45422, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45423 = distinct !{!45423, !45422, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45424 = distinct !{!45424, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45425 = distinct !{!45425, !45424, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45426 = distinct !{!45426, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45427 = distinct !{!45427, !45426, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45428 = distinct !{!45428, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45429 = distinct !{!45429, !45428, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45430 = distinct !{!45430, i1 false, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE"}
!45431 = distinct !{!45431, !45430, !"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE: argument 0"}
!45432 = distinct !{!45432, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45433 = distinct !{!45433, !45432, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45434 = distinct !{!45434, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45435 = distinct !{!45435, !45434, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45436 = distinct !{!45436, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45437 = distinct !{!45437, !45436, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45438 = distinct !{!45438, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45439 = distinct !{!45439, !45438, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45440 = distinct !{!45440, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45441 = distinct !{!45441, !45440, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45442 = distinct !{!45442, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45443 = distinct !{!45443, !45442, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45444 = distinct !{!45444, i1 false, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E"}
!45445 = distinct !{!45445, !45444, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E: argument 0"}
!45446 = distinct !{!45446, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45447 = distinct !{!45447, !45446, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45448 = !{!45396}
!45449 = !{!45403, !45401, !45399, !45398}
!45450 = !{!45399, !45398}
!45451 = !{!45399}
!45452 = !{!45405}
!45453 = !{!45412, !45410, !45408, !45407}
!45454 = !{!45408}
!45455 = !{!45416, !45414}
!45456 = !{!45418}
!45457 = !{!45419}
!45458 = !{!45419, !45418}
!45459 = !{!45421}
!45460 = !{!45423}
!45461 = !{!45423, !45421, !45418}
!45462 = !{!45423, !45421, !45419, !45418}
!45463 = !{!45425}
!45464 = !{!45427}
!45465 = !{!45427, !45425, !45418}
!45466 = !{!45427, !45425, !45419, !45418}
!45467 = !{!45429}
!45468 = !{!45435, !45433, !45431}
!45469 = !{!45439, !45437}
!45470 = !{!45443, !45441}
!45471 = !{!45447, !45445}
!45472 = distinct !{!45472, i1 false, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E"}
!45473 = distinct !{!45473, !45472, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E: argument 0"}
!45474 = distinct !{!45474, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!45475 = distinct !{!45475, !45474, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!45476 = distinct !{!45476, i1 false, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E"}
!45477 = distinct !{!45477, !45476, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E: argument 0"}
!45478 = !{!45473}
!45479 = !{!45475}
!45480 = !{!45477, !45473}
!45481 = distinct !{!45481, i1 false, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!45482 = distinct !{!45482, !45481, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!45483 = !{!45482}
!45484 = distinct !{!45484, i1 false, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E"}
!45485 = distinct !{!45485, !45484, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E: argument 0"}
!45486 = !{!45485}
!45487 = distinct !{!45487, i1 false, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E"}
!45488 = distinct !{!45488, !45487, !"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E: argument 0"}
!45489 = distinct !{!45489, i1 false, !"_ZN4rhai5types16immutable_string15ImmutableString10into_owned17h9ec964f9fadee339E"}
!45490 = distinct !{!45490, !45489, !"_ZN4rhai5types16immutable_string15ImmutableString10into_owned17h9ec964f9fadee339E: argument 0"}
!45491 = distinct !{!45491, i1 false, !"_ZN4rhai4func6native11shared_take17ha26fe4f695a87dedE"}
!45492 = distinct !{!45492, !45491, !"_ZN4rhai4func6native11shared_take17ha26fe4f695a87dedE: argument 0"}
!45493 = distinct !{!45493, i1 false, !"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hdd81d8e7552571bcE"}
!45494 = distinct !{!45494, !45493, !"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hdd81d8e7552571bcE: argument 0"}
!45495 = distinct !{!45495, i1 false, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E"}
!45496 = distinct !{!45496, !45495, !"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Arc$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$GT$$GT$17hcdd88b09341e2186E: argument 0"}
!45497 = distinct !{!45497, i1 false, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E"}
!45498 = distinct !{!45498, !45497, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681460611d2af769E: argument 0"}
!45499 = distinct !{!45499, i1 false, !"_ZN5alloc6string6String9from_utf817h5068d2e87c18bec7E"}
!45500 = distinct !{!45500, !45499, !"_ZN5alloc6string6String9from_utf817h5068d2e87c18bec7E: argument 1"}
!45501 = distinct !{!45501, !45499, !"_ZN5alloc6string6String9from_utf817h5068d2e87c18bec7E: argument 0"}
end_hunk_7
