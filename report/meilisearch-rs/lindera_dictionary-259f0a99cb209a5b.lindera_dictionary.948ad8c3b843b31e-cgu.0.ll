Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN18lindera_dictionary7viterbi7Lattice8set_text17h0a6e1402d793395cE:bb.a
  %.sroa.03.05.i.i = phi ptr [ %i.au, %.lr.ph7.i.i ], [ %.sroa.03.05.i.i.unr, %.lr.ph7.i.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 16
  store i64 0, ptr %i.an, align 8, !noalias !7319
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 40
  store i64 0, ptr %i.ao, align 8, !noalias !7319
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 64
  store i64 0, ptr %i.ap, align 8, !noalias !7319
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 88
  store i64 0, ptr %i.aq, align 8, !noalias !7319
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 112
  store i64 0, ptr %i.ar, align 8, !noalias !7319
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 136
  store i64 0, ptr %i.as, align 8, !noalias !7319
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 160
  store i64 0, ptr %i.at, align 8, !noalias !7319
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 192 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i, i64 184
  store i64 0, ptr %i.av, align 8, !noalias !7319
  %i.aw = icmp eq ptr %i.au, %i.af
  br i1 %i.aw, label %_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i, label %.lr.ph7.i.i

_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i: ; preds = %.lr.ph7.i.i.prol.loopexit, %.lr.ph7.i.i, %._crit_edge.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store i64 0, ptr %i.ax, align 8, !alias.scope !7319
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !7313, !noundef !6
  %i.ba = icmp ult i64 %i.az, %6
  br i1 %i.ba, label %bb.b, label %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit

bb.b:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i
  store i64 %6, ptr %i.ay, align 8, !alias.scope !7313
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = add i64 %6, 1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7313
  store i64 0, ptr %i.c, align 8, !noalias !7313
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bd, align 8, !noalias !7313
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.be, align 8, !noalias !7313
  call fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h3e8ac0e446ecdc5fE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb, i64 noundef %i.bc, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7313
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7313
  store i64 0, ptr %i.b, align 8, !noalias !7313
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bg, align 8, !noalias !7313
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bh, align 8, !noalias !7313
  call fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h3e8ac0e446ecdc5fE"(ptr noalias noundef align 8 dereferenceable(24) %i.bf, i64 noundef %i.bc, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7313
  %.pre = load i64, ptr %i.ax, align 8, !alias.scope !7322, !noalias !7325
  br label %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit

_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i, %bb.b
  %i.bi = phi i64 [ 0, %_ZN18lindera_dictionary7viterbi7Lattice5clear17hee35514674af731cE.exit.i ], [ %.pre, %bb.b ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  %i.bj = icmp ult i64 %i.bi, 230584300921369396
  tail call void @llvm.assume(i1 %i.bj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7327)
  %i.bk = load i64, ptr %0, align 8, !range !165, !alias.scope !7330, !noalias !7331, !noundef !6 ; 2 uses
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.c, label %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit

bb.c:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbc6804d8d8b4770fE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237), !noalias !7331
  %.pre1325 = load i64, ptr %0, align 8, !range !165, !alias.scope !7333, !noalias !7338
  br label %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit

_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit, %bb.c
  %i.bm = phi i64 [ %i.bk, %_ZN18lindera_dictionary7viterbi7Lattice12set_capacity17h9e3eb8f475ed6517E.exit ], [ %.pre1325, %bb.c ]
  %i.bn = trunc i64 %i.bi to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !7330, !noalias !7331, !nonnull !6, !noundef !6 ; 2 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.bi ; 7 uses
  store i32 0, ptr %i.bq, align 4, !noalias !7330
  %.sroa.5446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 -1, ptr %.sroa.5446.0..sroa_idx, align 4, !noalias !7330
  %.sroa.6447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 1, ptr %.sroa.6447.0..sroa_idx, align 4, !noalias !7330
  %.sroa.8449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i16 0, ptr %.sroa.8449.0..sroa_idx, align 4, !noalias !7330
  %.sroa.9450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  store i16 0, ptr %.sroa.9450.0..sroa_idx, align 2, !noalias !7330
  %.sroa.10451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  store i16 0, ptr %.sroa.10451.0..sroa_idx, align 4, !noalias !7330
  %.sroa.12453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.br = add nuw nsw i64 %i.bi, 1                ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.12453.0..sroa_idx, i8 0, i64 14, i1 false)
  store i64 %i.br, ptr %i.ax, align 8, !alias.scope !7330, !noalias !7331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7341)
  %i.bs = icmp samesign ult i64 %i.bi, 230584300921369395
  tail call void @llvm.assume(i1 %i.bs)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7342)
  %i.bt = icmp eq i64 %i.br, %i.bm
  br i1 %i.bt, label %bb.d, label %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit130

bb.d:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbc6804d8d8b4770fE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237), !noalias !7338
  %.pre1326 = load ptr, ptr %i.bo, align 8, !alias.scope !7333, !noalias !7338
  br label %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit130

_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit130: ; preds = %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit, %bb.d
  %i.bu = phi ptr [ %i.bp, %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit ], [ %.pre1326, %bb.d ] ; 2 uses
  %i.bv = trunc i64 %i.br to i32                  ; 2 uses
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.br ; 7 uses
  store i32 0, ptr %i.bw, align 4, !noalias !7333
  %.sroa.3317.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 -1, ptr %.sroa.3317.0..sroa_idx318, align 4, !noalias !7333
  %.sroa.4.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i8 1, ptr %.sroa.4.0..sroa_idx320, align 4, !noalias !7333
  %.sroa.5324.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i16 0, ptr %.sroa.5324.0..sroa_idx325, align 4, !noalias !7333
  %.sroa.6.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  store i16 0, ptr %.sroa.6.0..sroa_idx327, align 2, !noalias !7333
  %.sroa.7.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i16 0, ptr %.sroa.7.0..sroa_idx329, align 4, !noalias !7333
  %.sroa.8333.0..sroa_idx334 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.bx = add nuw nsw i64 %i.bi, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.8333.0..sroa_idx334, i8 0, i64 14, i1 false)
  store i64 %i.bx, ptr %i.ax, align 8, !alias.scope !7333, !noalias !7338
  store i32 %i.bv, ptr %i.e, align 4
  %i.by = icmp eq i32 %i.bv, 1
  br i1 %i.by, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit130
  %i.bz = load i64, ptr %i.ad, align 8, !noundef !6 ; 3 uses
  %.not120 = icmp eq i64 %i.bz, 0
  br i1 %.not120, label %bb.i, label %bb.g

bb.f:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice8add_edge17h1ef161f9a1cdaa06E.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  call void @_ZN4core9panicking13assert_failed17h8dd735116ffa62bfE(i8 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @27, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #46
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ca = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7343)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !7343, !noalias !7346, !noundef !6 ; 3 uses
  %i.cd = load i64, ptr %i.ca, align 8, !range !165, !alias.scope !7343, !noalias !7346, !noundef !6
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h84476a26323decb4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit": ; preds = %bb.g, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !7343, !noalias !7346, !nonnull !6, !noundef !6
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cc
  store i32 %i.bn, ptr %i.ch, align 4, !noalias !7343
  %i.ci = add i64 %i.cc, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !7343, !noalias !7346
  %i.cj = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.ck = icmp ult i64 %6, %i.cj
  br i1 %i.ck, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
  unreachable

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit"
  %i.cl = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7348)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !7348, !noalias !7351, !noundef !6 ; 3 uses
  %i.cp = load i64, ptr %i.cm, align 8, !range !165, !alias.scope !7348, !noalias !7351, !noundef !6
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131"

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h84476a26323decb4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @241)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131": ; preds = %bb.j, %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !7348, !noalias !7351, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.co
  store i32 1, ptr %i.ct, align 4, !noalias !7348
  %i.cu = add i64 %i.co, 1
  store i64 %i.cu, ptr %i.cn, align 8, !alias.scope !7348, !noalias !7351
  %i.cv = load ptr, ptr %2, align 8, !align !15   ; 6 uses
  %.not122 = icmp eq ptr %i.cv, null
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.sroa.52.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %.sroa.01.0.in.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i.i.i.i.i150 = load ptr, ptr %i.cy, align 8, !nonnull !6 ; 3 uses
  %.sroa.52.0.in.i.i.i.i.i.i159 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.52.0.i.i.i.i.i.i160 = load i64, ptr %.sroa.52.0.in.i.i.i.i.i.i159, align 8 ; 4 uses
  %.sroa.01.0.in.i.i.i.i.i.i161.le = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.i.i.i.i.i.i162.le = load ptr, ptr %.sroa.01.0.in.i.i.i.i.i.i161.le, align 8, !nonnull !6
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.da = load i8, ptr %i.cz, align 8, !range !1150
  %i.db = load i64, ptr %7, align 8, !range !66
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = getelementptr i8, ptr %5, i64 %6        ; 13 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !6 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dh = load i64, ptr %i.dg, align 8            ; 12 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dj = load i64, ptr %i.di, align 8            ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !6 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !6
  %i.dq = ptrtoint ptr %i.dd to i64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !6
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !6
  %.sroa.4484.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4484, i64 4
  %exitcond.not25002545 = icmp eq i64 %6, 0
  br i1 %exitcond.not25002545, label %.outer._crit_edge, label %.lr.ph2502

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %6, i64 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #46
  unreachable

bb.m:                                             ; preds = %bb.o
  %i.dz = add i64 %i.ea, 1
  %exitcond.not = icmp eq i64 %i.ea, %umax2551
  br i1 %exitcond.not, label %.outer._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph2502, %bb.m
  %i.ea = phi i64 [ %i.np, %.lr.ph2502 ], [ %i.dz, %bb.m ] ; 9 uses
  %.sroa.0114.02501 = phi i64 [ %.sroa.0114.0.ph2548, %.lr.ph2502 ], [ %i.ea, %bb.m ] ; 15 uses
  %exitcond1323.not = icmp eq i64 %.sroa.0114.02501, %umax13222552
  br i1 %exitcond1323.not, label %bb.p, label %bb.o

.outer._crit_edge:                                ; preds = %_ZN4core3str11validations15next_code_point17h4974bd84ddb91dc2E.exit.thread, %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc80d0abc48d87080E.exit131"
  ret void

bb.o:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %.pre132813432546, i64 %.sroa.0114.02501
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !6 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp eq i64 %i.ed, 0
  br i1 %i.ef, label %bb.m, label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax13222552, i64 noundef %.pre132713352547, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #46
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.eg = icmp eq i64 %.sroa.0114.02501, 0
  br i1 %i.eg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.0114.02501
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !7353, !noundef !6
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ek = sub nuw i64 %6, %.sroa.0114.02501       ; 12 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.0114.02501 ; 16 uses
  %.pre1347 = trunc i64 %.sroa.0114.02501 to i32  ; 3 uses
  %.pre1348 = and i64 %.sroa.0114.02501, 4294967295 ; 9 uses
  br i1 %.not122, label %.loopexit.i.preheader, label %.preheader598

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %.sroa.0114.02501, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #46
  unreachable

.preheader598:                                    ; preds = %bb.s, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit
  %.pre13281340 = phi ptr [ %i.ji, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ %.pre132813432546, %bb.s ] ; 3 uses
  %.pre13271332 = phi i64 [ %i.jg, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ %.pre132713352547, %bb.s ] ; 3 uses
  %i.em = phi i64 [ %i.iu, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ %i.ns, %bb.s ] ; 3 uses
  %i.en = phi ptr [ %i.ir, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ %i.nr, %bb.s ] ; 3 uses
  %i.eo = phi i64 [ %i.it, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ %i.nq, %bb.s ] ; 8 uses
  %.sroa.37.0 = phi i64 [ %.sroa.37.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ undef, %bb.s ] ; 2 uses
  %.sroa.32.0 = phi i64 [ %.sroa.32.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ undef, %bb.s ] ; 3 uses
  %.sroa.29.0 = phi i64 [ %.sroa.0459.0, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ undef, %bb.s ]
  %.sroa.26.0 = phi ptr [ %.sroa.26.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ undef, %bb.s ] ; 3 uses
  %.sroa.23.0 = phi i64 [ %.sroa.23.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ undef, %bb.s ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ null, %bb.s ] ; 3 uses
  %.sroa.12350.0 = phi i64 [ %.sroa.12350.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ 0, %bb.s ] ; 2 uses
  %.sroa.9349.0 = phi i64 [ %.sroa.9349.1, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ 0, %bb.s ] ; 2 uses
  %i.ep = phi i1 [ false, %_ZN18lindera_dictionary7viterbi7Lattice19add_edge_in_lattice17he58613ee92bd057cE.exit ], [ true, %bb.s ] ; 3 uses
  %.not.i211 = icmp ne ptr %.sroa.17.0, null
  %i.eq = icmp ult i64 %.sroa.32.0, %.sroa.37.0
  %or.cond595 = select i1 %.not.i211, i1 %i.eq, i1 false
  br i1 %or.cond595, label %bb.u, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit210

bb.u:                                             ; preds = %.preheader598
  %i.er = add nuw i64 %.sroa.32.0, 1
  %i.es = mul i64 %.sroa.32.0, 10                 ; 4 uses
  %i.et = icmp ugt i64 %i.es, %.sroa.23.0
  br i1 %i.et, label %bb.aa, label %bb.v, !prof !238

bb.v:                                             ; preds = %bb.u
  %i.eu = sub nuw i64 %.sroa.23.0, %i.es          ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 %i.es ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.26.0) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.26.0, i64 96
  %i.ex = load i8, ptr %i.ew, align 8, !range !1150, !noalias !7356, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7371), !noalias !7374
  %i.ey = icmp ugt i64 %i.eu, 3
  br i1 %i.ey, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i223", label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 4, i64 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #46, !noalias !7375
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i223": ; preds = %bb.v
  %.sroa.02.0.copyload.i.i.i.i.i224 = load i32, ptr %i.ev, align 1, !alias.scope !7371, !noalias !7377
  %i.ez = icmp ugt i64 %i.eu, 5
  br i1 %i.ez, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i225", label %bb.x, !prof !7

bb.x:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i223"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 4, i64 noundef 6, i64 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #46, !noalias !7375
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i225": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h8a6dc1aac1f242aaE.exit.i.i.i.i.i223"
  %i.fa = icmp ugt i64 %i.eu, 7
  br i1 %i.fa, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i227", label %bb.y, !prof !7

bb.y:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i225"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 6, i64 noundef 8, i64 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #46, !noalias !7375
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i227": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit27.i.i.i.i.i225"
  %i.fb = icmp ugt i64 %i.eu, 9
  br i1 %i.fb, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit231, label %bb.z, !prof !7

bb.z:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20a0dee7eee3e43bE.exit26.i.i.i.i.i227"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 8, i64 noundef 10, i64 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #46, !noalias !7375
  unreachable

bb.aa:                                            ; preds = %bb.u
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.es, i64 noundef %.sroa.23.0, i64 noundef %.sroa.23.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #46, !noalias !7356
  unreachable

_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit210: ; preds = %.preheader598, %bb.af
  %.sroa.12350.2 = phi i64 [ %i.fu, %bb.af ], [ %.sroa.12350.0, %.preheader598 ] ; 3 uses
  %.sroa.9349.2 = phi i64 [ %i.fq, %bb.af ], [ %.sroa.9349.0, %.preheader598 ]
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.12350.2, i64 %i.ek)
  %exitcond.not.i.i.i.i.i2504.not = icmp ult i64 %.sroa.12350.2, %i.ek
  br i1 %exitcond.not.i.i.i.i.i2504.not, label %.lr.ph2505.preheader, label %.loopexit.i.preheader

.lr.ph2505.preheader:                             ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h2a7252227c2c55ebE.exit210
  %.val4.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !7378, !nonnull !6, !noundef !6 ; 3 uses
  br label %.lr.ph2505

bb.ab:                                            ; preds = %bb.ac
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fu, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.preheader, label %.lr.ph2505

.lr.ph2505:                                       ; preds = %.lr.ph2505.preheader, %bb.ab
  %i.fc = phi i64 [ %i.fu, %bb.ab ], [ %.sroa.12350.2, %.lr.ph2505.preheader ] ; 2 uses
  %i.fd = phi i64 [ %i.fq, %bb.ab ], [ %.sroa.9349.2, %.lr.ph2505.preheader ] ; 2 uses
  %i.fe = shl nuw nsw i64 %i.fd, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 %i.fe
  %.sroa.017.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ff, align 1, !noalias !7392 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fc
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !7392, !noundef !6
  %i.fi = lshr i32 %.sroa.017.0.copyload.i.i.i.i.i.i, 10
  %i.fj = lshr i32 %.sroa.017.0.copyload.i.i.i.i.i.i, 6
  %i.fk = and i32 %i.fj, 8
  %i.fl = shl nuw nsw i32 %i.fi, %i.fk
  %i.fm = trunc nuw nsw i64 %i.fd to i32
  %i.fn = zext i8 %i.fh to i32                    ; 2 uses
  %i.fo = xor i32 %i.fl, %i.fm
  %i.fp = xor i32 %i.fo, %i.fn                    ; 2 uses
  %i.fq = zext nneg i32 %i.fp to i64              ; 4 uses
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 %i.fr
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fs, align 1, !noalias !7392 ; 4 uses
  %i.ft = and i32 %.sroa.018.0.copyload.i.i.i.i.i.i, -2147483393
  %.not21.i.i.i.i.i.i = icmp eq i32 %i.ft, %i.fn
  br i1 %.not21.i.i.i.i.i.i, label %bb.ac, label %.loopexit.i.preheader

bb.ac:                                            ; preds = %.lr.ph2505
  %i.fu = add i64 %i.fc, 1                        ; 5 uses
  %i.fv = and i32 %.sroa.018.0.copyload.i.i.i.i.i.i, 256
  %.not22.i.i.i.i.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not22.i.i.i.i.i.i, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = lshr i32 %.sroa.018.0.copyload.i.i.i.i.i.i, 10
  %i.fx = lshr i32 %.sroa.018.0.copyload.i.i.i.i.i.i, 6
  %i.fy = and i32 %i.fx, 8
  %i.fz = shl nuw nsw i32 %i.fw, %i.fy
  %i.ga = xor i32 %i.fz, %i.fp
  %i.gb = zext nneg i32 %i.ga to i64
end_hunk_0
