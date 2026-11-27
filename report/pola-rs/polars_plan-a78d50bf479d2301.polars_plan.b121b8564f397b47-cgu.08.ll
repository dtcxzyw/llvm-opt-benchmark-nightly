Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.08?download=true
inline.NumInlined: 7193
inline.NumDeleted: 1889
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_13RenameAliasFn4call:bb.a
  br i1 %i.gu, label %bb.bm, label %.split200.us.invoke.i, !dbg !140390

bb.bm:                                            ; preds = %.lr.ph380
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.gs, !dbg !140391
  %i.gw = load i8, ptr %i.gv, align 1, !dbg !140391, !alias.scope !140102, !noalias !140088, !noundef !2281
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.gt, !dbg !140390
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !140390, !alias.scope !140101, !noalias !140088, !noundef !2281
  %.not.i56.us.i.us = icmp eq i8 %i.gw, %i.gy, !dbg !140391
  br i1 %.not.i56.us.i.us, label %.preheader.us.i.us, label %.split.us, !dbg !140391

.split.us:                                        ; preds = %bb.bm
  %i.gz = add i64 %i.gj, %.sroa.6104.0.copyload.i, !dbg !140392
  br label %bb.bq, !dbg !140393

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not133.us.i, label %.loopexit.i.us.i, label %.split200.us.invoke.i, !dbg !140386

.lr.ph377:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i51.us.i376 = phi i64 [ %i.gr, %.preheader.i ], [ %.sroa.4102.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.ha = add i64 %.sroa.02.0.i51.us.i376, %i.gj, !dbg !140394 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %.sroa.13111.0.copyload.i, !dbg !140395
  br i1 %i.hb, label %bb.bn, label %.split200.us.i, !dbg !140395

bb.bn:                                            ; preds = %.lr.ph377
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i51.us.i376, !dbg !140396
  %i.hd = load i8, ptr %i.hc, align 1, !dbg !140396, !alias.scope !140102, !noalias !140088, !noundef !2281
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.ha, !dbg !140395
  %i.hf = load i8, ptr %i.he, align 1, !dbg !140395, !alias.scope !140101, !noalias !140088, !noundef !2281
  %.not21.i54.us.i = icmp eq i8 %i.hd, %i.hf, !dbg !140396
  br i1 %.not21.i54.us.i, label %.preheader.i, label %bb.bo, !dbg !140396

bb.bo:                                            ; preds = %bb.bn
  %.reass332.i.reass.reass = add i64 %i.gj, %invariant.op465
  %i.hg = add i64 %.reass332.i.reass.reass, %.sroa.02.0.i51.us.i376, !dbg !140397
  br label %bb.bq, !dbg !140398

bb.bp:                                            ; preds = %.lr.ph.i47.us.i
  %i.hh = add i64 %i.gj, %.sroa.15.0.copyload.i, !dbg !140399
  br label %bb.bq, !dbg !140400

bb.bq:                                            ; preds = %bb.bp, %.split.us, %bb.bo
  %i.hi = phi i64 [ %i.hg, %bb.bo ], [ %i.hh, %bb.bp ], [ %i.gz, %.split.us ] ; 2 uses
  %i.hj = add i64 %i.hi, %i.ew, !dbg !140401      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %.sroa.13111.0.copyload.i, !dbg !140377
  br i1 %i.hk, label %.lr.ph.i47.us.i, label %.loopexit.i, !dbg !140377

.loopexit.i.us.i:                                 ; preds = %.preheader135.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader135.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.7113.1.us.i = phi i64 [ %i.gj, %.preheader.us.i.preheader.split ], [ %i.gj, %.preheader.us.i.us ], [ %i.fe, %.preheader135.us.i ], [ %i.gj, %.preheader.us.i.us.preheader ], [ %i.fe, %.preheader135.us.i.preheader ], !dbg !140402 ; 3 uses
  %.sroa.3075.1.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader135.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader135.us.i.preheader ], !dbg !140343
  %.sroa.11114.1.us.i = add i64 %.sroa.7113.1.us.i, %.sroa.15.0.copyload.i, !dbg !140403 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 %.sroa.04.0.us.i, !dbg !140404
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.7113.1.us.i, %.sroa.04.0.us.i, !dbg !140405 ; 3 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff.us.i)
          to label %.noexc31.us.i unwind label %.loopexit138.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140406, !noalias !140088

.noexc31.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.hm = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140407, !alias.scope !140103, !noalias !140087, !noundef !2281 ; 3 uses
  %i.hn = icmp sgt i64 %i.hm, -1, !dbg !140408
  call void @llvm.assume(i1 %i.hn), !dbg !140409
  %.not.i29.us.i = icmp eq i64 %.sroa.7113.1.us.i, %.sroa.04.0.us.i, !dbg !140410
  br i1 %.not.i29.us.i, label %bb.bs, label %bb.br, !dbg !140410

bb.br:                                            ; preds = %.noexc31.us.i
  %i.ho = load ptr, ptr %.sroa.4.0..sroa_idx.i70, align 8, !dbg !140411, !alias.scope !140103, !noalias !140087, !nonnull !2281, !noundef !2281
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hm, !dbg !140412
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr nonnull readonly align 1 %i.hl, i64 %gepdiff.us.i, i1 false), !dbg !140413, !noalias !140088
  %.pre.i30.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140414, !alias.scope !140103, !noalias !140087
  br label %bb.bs, !dbg !140415

bb.bs:                                            ; preds = %bb.br, %.noexc31.us.i
  %i.hq = phi i64 [ %.pre.i30.us.i, %bb.br ], [ %i.hm, %.noexc31.us.i ], !dbg !140414
  %i.hr = add i64 %i.hq, %gepdiff.us.i, !dbg !140414
  store i64 %i.hr, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140414, !alias.scope !140103, !noalias !140087
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.01.0.i67)
          to label %.noexc35.us.i unwind label %.loopexit138.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140416, !noalias !140088

.noexc35.us.i:                                    ; preds = %bb.bs
  %i.hs = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140417, !alias.scope !140106, !noalias !140087, !noundef !2281 ; 3 uses
  %i.ht = icmp sgt i64 %i.hs, -1, !dbg !140418
  call void @llvm.assume(i1 %i.ht), !dbg !140419
  br i1 %.not.i33.i, label %bb.bu, label %bb.bt, !dbg !140420

bb.bt:                                            ; preds = %.noexc35.us.i
  %i.hu = load ptr, ptr %.sroa.4.0..sroa_idx.i70, align 8, !dbg !140421, !alias.scope !140106, !noalias !140087, !nonnull !2281, !noundef !2281
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs, !dbg !140422
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hv, ptr nonnull readonly align 1 %.sroa.0.0.i68, i64 %.sroa.01.0.i67, i1 false), !dbg !140423, !noalias !140107
  %.pre.i34.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140424, !alias.scope !140106, !noalias !140087
  br label %bb.bu, !dbg !140425

bb.bu:                                            ; preds = %bb.bt, %.noexc35.us.i
  %i.hw = phi i64 [ %.pre.i34.us.i, %bb.bt ], [ %i.hs, %.noexc35.us.i ], !dbg !140424
  %i.hx = add i64 %i.hw, %.sroa.01.0.i67, !dbg !140424
  store i64 %i.hx, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140424, !alias.scope !140106, !noalias !140087
  br label %bb.bb, !dbg !140342

_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.hy = and i64 %.sroa.6104.0.copyload.i, 65536
  %.not132.i = icmp eq i64 %i.hy, 0
  br i1 %.not132.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i, !dbg !140426

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12110.0.copyload.i) ]
  %i.hz = trunc i64 %.sroa.6104.0.copyload.i to i1, !dbg !140427 ; 2 uses
  %i.ia = icmp eq i64 %.sroa.4102.0.copyload.i, 0, !dbg !140428
  br i1 %i.ia, label %bb.bx, label %bb.bv, !dbg !140428

bb.bv:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.4102.0.copyload.i, %.sroa.13111.0.copyload.i, !dbg !140429
  br i1 %.not.i.i.i.peel.i.peel, label %bb.bw, label %.split.i.i.i.peel.i.peel, !dbg !140429

.split.i.i.i.peel.i.peel:                         ; preds = %bb.bv
  %i.ib = icmp eq i64 %.sroa.4102.0.copyload.i, %.sroa.13111.0.copyload.i, !dbg !140430
  br i1 %i.ib, label %bb.bx, label %.loopexit266.i, !dbg !140431

bb.bw:                                            ; preds = %bb.bv
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %.sroa.4102.0.copyload.i, !dbg !140432
  %i.id = load i8, ptr %i.ic, align 1, !dbg !140432, !alias.scope !140108, !noalias !140109, !noundef !2281
  %i.ie = icmp sgt i8 %i.id, -65, !dbg !140433
  br i1 %i.ie, label %bb.bx, label %.loopexit266.i, !dbg !140431

bb.bx:                                            ; preds = %bb.bw, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %.sroa.4102.0.copyload.i, !dbg !140434 ; 4 uses
  %i.ig = icmp samesign eq i64 %.sroa.4102.0.copyload.i, %.sroa.13111.0.copyload.i, !dbg !140435
  br i1 %i.ig, label %.loopexit267.i.peel, label %bb.by, !dbg !140436

bb.by:                                            ; preds = %bb.bx
  %i.ih = load i8, ptr %i.if, align 1, !dbg !140437, !noalias !140110, !noundef !2281 ; 5 uses
  %i.ii = icmp sgt i8 %i.ih, -1, !dbg !140438
  br i1 %i.ii, label %bb.bz, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i.peel, !dbg !140438

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i.peel: ; preds = %bb.by
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 1, !dbg !140439
  %i.ik = and i8 %i.ih, 31, !dbg !140440
  %i.il = zext nneg i8 %i.ik to i32, !dbg !140440 ; 3 uses
  %i.im = add nuw nsw i64 %.sroa.4102.0.copyload.i, 1, !dbg !140441
  %i.in = icmp samesign ne i64 %i.im, %.sroa.13111.0.copyload.i, !dbg !140441
  tail call void @llvm.assume(i1 %i.in), !dbg !140442
  %i.io = load i8, ptr %i.ij, align 1, !dbg !140443, !noalias !140110, !noundef !2281
  %i.ip = shl nuw nsw i32 %i.il, 6, !dbg !140444
  %i.iq = and i8 %i.io, 63, !dbg !140445
  %i.ir = zext nneg i8 %i.iq to i32, !dbg !140445 ; 2 uses
  %i.is = or disjoint i32 %i.ip, %i.ir, !dbg !140444
  %i.it = icmp samesign ugt i8 %i.ih, -33, !dbg !140446
  br i1 %i.it, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i.peel, label %bb.ca, !dbg !140446

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i.peel
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 2, !dbg !140447
  %i.iv = add nuw nsw i64 %.sroa.4102.0.copyload.i, 2, !dbg !140448
  %i.iw = icmp samesign ne i64 %i.iv, %.sroa.13111.0.copyload.i, !dbg !140448
  tail call void @llvm.assume(i1 %i.iw), !dbg !140449
  %i.ix = load i8, ptr %i.iu, align 1, !dbg !140450, !noalias !140110, !noundef !2281
  %i.iy = shl nuw nsw i32 %i.ir, 6, !dbg !140451
  %i.iz = and i8 %i.ix, 63, !dbg !140452
  %i.ja = zext nneg i8 %i.iz to i32, !dbg !140452
  %i.jb = or disjoint i32 %i.iy, %i.ja, !dbg !140451 ; 2 uses
  %i.jc = shl nuw nsw i32 %i.il, 12, !dbg !140453
  %i.jd = or disjoint i32 %i.jb, %i.jc, !dbg !140454
  %i.je = icmp samesign ugt i8 %i.ih, -17, !dbg !140455
  br i1 %i.je, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i.peel, label %bb.ca, !dbg !140455

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i.peel
  %i.jf = getelementptr inbounds nuw i8, ptr %i.if, i64 3, !dbg !140456
  %i.jg = add nuw nsw i64 %.sroa.4102.0.copyload.i, 3, !dbg !140457
  %i.jh = icmp samesign ne i64 %i.jg, %.sroa.13111.0.copyload.i, !dbg !140457
  tail call void @llvm.assume(i1 %i.jh), !dbg !140458
  %i.ji = load i8, ptr %i.jf, align 1, !dbg !140459, !noalias !140110, !noundef !2281
  %i.jj = shl nuw nsw i32 %i.il, 18, !dbg !140460
  %i.jk = and i32 %i.jj, 1835008, !dbg !140460
  %i.jl = shl nuw nsw i32 %i.jb, 6, !dbg !140461
  %i.jm = and i8 %i.ji, 63, !dbg !140462
  %i.jn = zext nneg i8 %i.jm to i32, !dbg !140462
  %i.jo = or disjoint i32 %i.jl, %i.jn, !dbg !140461
  %i.jp = or disjoint i32 %i.jo, %i.jk, !dbg !140463
  br label %bb.ca, !dbg !140464

bb.bz:                                            ; preds = %bb.by
  %i.jq = zext nneg i8 %i.ih to i32, !dbg !140465
  br label %bb.ca, !dbg !140466

bb.ca:                                            ; preds = %bb.bz, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.jd, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i.peel ], [ %i.jp, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i.peel ], [ %i.is, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i.peel ], [ %i.jq, %bb.bz ] ; 4 uses
  %i.jr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112, !dbg !140467
  tail call void @llvm.assume(i1 %i.jr), !dbg !140467
  br i1 %i.hz, label %.loopexit.i.i.peel, label %bb.cb, !dbg !140468

bb.cb:                                            ; preds = %bb.ca
  %i.js = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128, !dbg !140469
  br i1 %i.js, label %bb.ce, label %bb.cc, !dbg !140469

bb.cc:                                            ; preds = %bb.cb
  %i.jt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048, !dbg !140470
  br i1 %i.jt, label %bb.ce, label %bb.cd, !dbg !140470

bb.cd:                                            ; preds = %bb.cc
  %i.ju = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536, !dbg !140471
  %..i.i.peel.i.peel = select i1 %i.ju, i64 3, i64 4, !dbg !140472
  br label %bb.ce, !dbg !140472

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.cc ], [ %..i.i.peel.i.peel, %bb.cd ], [ 1, %bb.cb ], !dbg !140472
  %i.jv = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.4102.0.copyload.i, !dbg !140473 ; 15 uses
  %i.jw = icmp eq i64 %i.jv, 0, !dbg !140428
  br i1 %i.jw, label %bb.ch, label %bb.cf, !dbg !140428

bb.cf:                                            ; preds = %bb.ce
  %.not.i.i.i.i.peel = icmp ult i64 %i.jv, %.sroa.13111.0.copyload.i, !dbg !140429
  br i1 %.not.i.i.i.i.peel, label %bb.cg, label %.split.i.i.i.i.peel, !dbg !140429

.split.i.i.i.i.peel:                              ; preds = %bb.cf
  %i.jx = icmp eq i64 %i.jv, %.sroa.13111.0.copyload.i, !dbg !140430
  br i1 %i.jx, label %bb.ch, label %.loopexit266.i, !dbg !140431

bb.cg:                                            ; preds = %bb.cf
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.jv, !dbg !140432
  %i.jz = load i8, ptr %i.jy, align 1, !dbg !140432, !alias.scope !140108, !noalias !140109, !noundef !2281
  %i.ka = icmp sgt i8 %i.jz, -65, !dbg !140433
  br i1 %i.ka, label %bb.ch, label %.loopexit266.i, !dbg !140431

bb.ch:                                            ; preds = %bb.cg, %.split.i.i.i.i.peel, %bb.ce
  %i.kb = icmp samesign eq i64 %i.jv, %.sroa.13111.0.copyload.i, !dbg !140435
  br i1 %i.kb, label %.loopexit.i.i.peel, label %bb.ci, !dbg !140436

bb.ci:                                            ; preds = %bb.ch
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.jv, !dbg !140434
  %i.kc = load i8, ptr %3, align 1, !dbg !140437, !noalias !140110, !noundef !2281 ; 3 uses
  %i.kd = icmp sgt i8 %i.kc, -1, !dbg !140438
  br i1 %i.kd, label %.loopexit.i.i.peel, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i.peel, !dbg !140438

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i.peel: ; preds = %bb.ci
  %i.ke = add nuw nsw i64 %i.jv, 1, !dbg !140441
  %i.kf = icmp samesign ne i64 %i.ke, %.sroa.13111.0.copyload.i, !dbg !140441
  tail call void @llvm.assume(i1 %i.kf), !dbg !140442
  %i.kg = icmp samesign ugt i8 %i.kc, -33, !dbg !140446
  br i1 %i.kg, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i.peel, label %.loopexit.i.i.peel, !dbg !140446

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i.peel
  %i.kh = add nuw nsw i64 %i.jv, 2, !dbg !140448
  %i.ki = icmp samesign ne i64 %i.kh, %.sroa.13111.0.copyload.i, !dbg !140448
  tail call void @llvm.assume(i1 %i.ki), !dbg !140449
  %i.kj = icmp samesign ugt i8 %i.kc, -17, !dbg !140455
  br i1 %i.kj, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i.peel, label %.loopexit.i.i.peel, !dbg !140455

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i.peel
  %i.kk = add nuw nsw i64 %i.jv, 3, !dbg !140457
  %i.kl = icmp samesign ne i64 %i.kk, %.sroa.13111.0.copyload.i, !dbg !140457
  tail call void @llvm.assume(i1 %i.kl), !dbg !140458
  br label %.loopexit.i.i.peel, !dbg !140464

.loopexit267.i.peel:                              ; preds = %bb.bx
  br i1 %i.hz, label %.loopexit.i.i.peel, label %.loopexit.i, !dbg !140468

.loopexit.i.i.peel:                               ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i.peel, %bb.ci, %.loopexit267.i.peel, %bb.ch, %bb.ca
  %.sroa.468.1264.i.peel = phi i64 [ %.sroa.4102.0.copyload.i, %.loopexit267.i.peel ], [ %.sroa.13111.0.copyload.i, %bb.ch ], [ %.sroa.4102.0.copyload.i, %bb.ca ], [ %i.jv, %bb.ci ], [ %i.jv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i.peel ], [ %i.jv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i.peel ], [ %i.jv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i.peel ] ; 6 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.468.1264.i.peel)
          to label %.noexc31.i.peel unwind label %.loopexit138.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140406, !noalias !140088

.noexc31.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.km = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140407, !alias.scope !140103, !noalias !140087, !noundef !2281 ; 3 uses
  %i.kn = icmp sgt i64 %i.km, -1, !dbg !140408
  call void @llvm.assume(i1 %i.kn), !dbg !140409
  %.not.i29.i.peel = icmp eq i64 %.sroa.468.1264.i.peel, 0, !dbg !140410
  br i1 %.not.i29.i.peel, label %bb.ck, label %bb.cj, !dbg !140410

bb.cj:                                            ; preds = %.noexc31.i.peel
  %i.ko = load ptr, ptr %.sroa.4.0..sroa_idx.i70, align 8, !dbg !140411, !alias.scope !140103, !noalias !140087, !nonnull !2281, !noundef !2281
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.km, !dbg !140412
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr nonnull readonly align 1 %.sroa.0.0.i60, i64 %.sroa.468.1264.i.peel, i1 false), !dbg !140413, !noalias !140088
  %.pre.i30.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140414, !alias.scope !140103, !noalias !140087
  br label %bb.ck, !dbg !140415

bb.ck:                                            ; preds = %bb.cj, %.noexc31.i.peel
  %i.kq = phi i64 [ %.pre.i30.i.peel, %bb.cj ], [ %i.km, %.noexc31.i.peel ], !dbg !140414
  %i.kr = add i64 %i.kq, %.sroa.468.1264.i.peel, !dbg !140414
  store i64 %i.kr, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140414, !alias.scope !140103, !noalias !140087
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.01.0.i67)
          to label %.noexc35.i.peel unwind label %.loopexit138.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140416, !noalias !140088

.noexc35.i.peel:                                  ; preds = %bb.ck
  %i.ks = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140417, !alias.scope !140106, !noalias !140087, !noundef !2281 ; 3 uses
  %i.kt = icmp sgt i64 %i.ks, -1, !dbg !140418
  call void @llvm.assume(i1 %i.kt), !dbg !140419
  br i1 %.not.i33.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.sink.split, !dbg !140420

.lr.ph.i.i.sink.split:                            ; preds = %.noexc35.i.peel, %bb.cz
  %.sink384 = phi i64 [ %i.oa, %bb.cz ], [ %i.ks, %.noexc35.i.peel ]
  %.sroa.04.0215.i.ph = phi i64 [ %.sroa.468.1264.i, %bb.cz ], [ %.sroa.468.1264.i.peel, %.noexc35.i.peel ]
  %i.ku = load ptr, ptr %.sroa.4.0..sroa_idx.i70, align 8, !dbg !140421, !alias.scope !140106, !noalias !140087, !nonnull !2281, !noundef !2281
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sink384, !dbg !140422
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kv, ptr nonnull readonly align 1 %.sroa.0.0.i68, i64 %.sroa.01.0.i67, i1 false), !dbg !140423, !noalias !140107
  %.pre.i34.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140424, !alias.scope !140106, !noalias !140087
  br label %.lr.ph.i.i.preheader, !dbg !140424

.lr.ph.i.i.preheader:                             ; preds = %.noexc35.i.peel, %.lr.ph.i.i.sink.split
  %.pn.ph = phi i64 [ %.pre.i34.i, %.lr.ph.i.i.sink.split ], [ %i.ks, %.noexc35.i.peel ]
  %.sroa.04.0215.i.ph422 = phi i64 [ %.sroa.04.0215.i.ph, %.lr.ph.i.i.sink.split ], [ %.sroa.468.1264.i.peel, %.noexc35.i.peel ]
  br label %.lr.ph.i.i, !dbg !140428

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc35.i
  %.pn = phi i64 [ %i.oa, %.noexc35.i ], [ %.pn.ph, %.lr.ph.i.i.preheader ]
  %.sroa.04.0215.i = phi i64 [ %.sroa.468.1264.i, %.noexc35.i ], [ %.sroa.04.0215.i.ph422, %.lr.ph.i.i.preheader ] ; 14 uses
  %storemerge = add i64 %.pn, %.sroa.01.0.i67, !dbg !140424
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !140424, !alias.scope !140106, !noalias !140087
  %i.kw = icmp eq i64 %.sroa.04.0215.i, 0, !dbg !140428
  br i1 %i.kw, label %bb.cn, label %bb.cl, !dbg !140428

bb.cl:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0215.i, %.sroa.13111.0.copyload.i, !dbg !140429
  br i1 %.not.i.i.i.peel.i, label %bb.cm, label %.split.i.i.i.peel.i, !dbg !140429

.split.i.i.i.peel.i:                              ; preds = %bb.cl
  %i.kx = icmp eq i64 %.sroa.04.0215.i, %.sroa.13111.0.copyload.i, !dbg !140430
  br i1 %i.kx, label %bb.cn, label %.loopexit266.i, !dbg !140431

bb.cm:                                            ; preds = %bb.cl
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %.sroa.04.0215.i, !dbg !140432
  %i.kz = load i8, ptr %i.ky, align 1, !dbg !140432, !alias.scope !140108, !noalias !140109, !noundef !2281
  %i.la = icmp sgt i8 %i.kz, -65, !dbg !140433
  br i1 %i.la, label %bb.cn, label %.loopexit266.i, !dbg !140431

bb.cn:                                            ; preds = %bb.cm, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %.sroa.04.0215.i, !dbg !140434 ; 4 uses
  %i.lc = icmp samesign eq i64 %.sroa.04.0215.i, %.sroa.13111.0.copyload.i, !dbg !140435
  br i1 %i.lc, label %.loopexit.i, label %bb.co, !dbg !140436

bb.co:                                            ; preds = %bb.cn
  %i.ld = load i8, ptr %i.lb, align 1, !dbg !140437, !noalias !140110, !noundef !2281 ; 4 uses
  %i.le = icmp sgt i8 %i.ld, -1, !dbg !140438
  br i1 %i.le, label %.thread, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i, !dbg !140438

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i: ; preds = %bb.co
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1, !dbg !140439
  %i.lg = and i8 %i.ld, 31, !dbg !140440
  %i.lh = zext nneg i8 %i.lg to i32, !dbg !140440 ; 3 uses
  %i.li = add nuw nsw i64 %.sroa.04.0215.i, 1, !dbg !140441
  %i.lj = icmp samesign ne i64 %i.li, %.sroa.13111.0.copyload.i, !dbg !140441
  call void @llvm.assume(i1 %i.lj), !dbg !140442
  %i.lk = load i8, ptr %i.lf, align 1, !dbg !140443, !noalias !140110, !noundef !2281
  %i.ll = shl nuw nsw i32 %i.lh, 6, !dbg !140444
  %i.lm = and i8 %i.lk, 63, !dbg !140445
  %i.ln = zext nneg i8 %i.lm to i32, !dbg !140445 ; 2 uses
  %i.lo = or disjoint i32 %i.ll, %i.ln, !dbg !140444
  %i.lp = icmp samesign ugt i8 %i.ld, -33, !dbg !140446
  br i1 %i.lp, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i, label %bb.cp, !dbg !140446

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 2, !dbg !140447
  %i.lr = add nuw nsw i64 %.sroa.04.0215.i, 2, !dbg !140448
  %i.ls = icmp samesign ne i64 %i.lr, %.sroa.13111.0.copyload.i, !dbg !140448
  call void @llvm.assume(i1 %i.ls), !dbg !140449
  %i.lt = load i8, ptr %i.lq, align 1, !dbg !140450, !noalias !140110, !noundef !2281
  %i.lu = shl nuw nsw i32 %i.ln, 6, !dbg !140451
  %i.lv = and i8 %i.lt, 63, !dbg !140452
  %i.lw = zext nneg i8 %i.lv to i32, !dbg !140452
  %i.lx = or disjoint i32 %i.lu, %i.lw, !dbg !140451 ; 2 uses
  %i.ly = shl nuw nsw i32 %i.lh, 12, !dbg !140453
  %i.lz = or disjoint i32 %i.lx, %i.ly, !dbg !140454
  %i.ma = icmp samesign ugt i8 %i.ld, -17, !dbg !140455
  br i1 %i.ma, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i, label %bb.cp, !dbg !140455

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lb, i64 3, !dbg !140456
  %i.mc = add nuw nsw i64 %.sroa.04.0215.i, 3, !dbg !140457
  %i.md = icmp samesign ne i64 %i.mc, %.sroa.13111.0.copyload.i, !dbg !140457
  call void @llvm.assume(i1 %i.md), !dbg !140458
  %i.me = load i8, ptr %i.mb, align 1, !dbg !140459, !noalias !140110, !noundef !2281
  %i.mf = shl nuw nsw i32 %i.lh, 18, !dbg !140460
  %i.mg = and i32 %i.mf, 1835008, !dbg !140460
  %i.mh = shl nuw nsw i32 %i.lx, 6, !dbg !140461
  %i.mi = and i8 %i.me, 63, !dbg !140462
  %i.mj = zext nneg i8 %i.mi to i32, !dbg !140462
  %i.mk = or disjoint i32 %i.mh, %i.mj, !dbg !140461
  %i.ml = or disjoint i32 %i.mk, %i.mg, !dbg !140463
  br label %bb.cp, !dbg !140464

bb.cp:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.lz, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.peel.i ], [ %i.ml, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.peel.i ], [ %i.lo, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.peel.i ] ; 4 uses
  %i.mm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112, !dbg !140467
  call void @llvm.assume(i1 %i.mm), !dbg !140467
  %i.mn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128, !dbg !140469
  br i1 %i.mn, label %.thread, label %bb.cq, !dbg !140469

bb.cq:                                            ; preds = %bb.cp
  %i.mo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048, !dbg !140470
  br i1 %i.mo, label %.thread, label %bb.cr, !dbg !140470

bb.cr:                                            ; preds = %bb.cq
  %i.mp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536, !dbg !140471
  %..i.i.peel.i = select i1 %i.mp, i64 3, i64 4, !dbg !140472
  br label %.thread, !dbg !140472

.thread:                                          ; preds = %bb.co, %bb.cr, %bb.cq, %bb.cp
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.cq ], [ %..i.i.peel.i, %bb.cr ], [ 1, %bb.cp ], [ 1, %bb.co ], !dbg !140472
  %i.mq = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0215.i, !dbg !140473 ; 15 uses
  %i.mr = icmp eq i64 %i.mq, 0, !dbg !140428
  br i1 %i.mr, label %bb.cu, label %bb.cs, !dbg !140428

bb.cs:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.mq, %.sroa.13111.0.copyload.i, !dbg !140429
  br i1 %.not.i.i.i.i, label %bb.ct, label %.split.i.i.i.i, !dbg !140429

.split.i.i.i.i:                                   ; preds = %bb.cs
  %i.ms = icmp eq i64 %i.mq, %.sroa.13111.0.copyload.i, !dbg !140430
  br i1 %i.ms, label %bb.cu, label %.loopexit266.i, !dbg !140431

bb.ct:                                            ; preds = %bb.cs
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.mq, !dbg !140432
  %i.mu = load i8, ptr %i.mt, align 1, !dbg !140432, !alias.scope !140108, !noalias !140109, !noundef !2281
  %i.mv = icmp sgt i8 %i.mu, -65, !dbg !140433
  br i1 %i.mv, label %bb.cu, label %.loopexit266.i, !dbg !140431

bb.cu:                                            ; preds = %bb.ct, %.split.i.i.i.i, %.thread
  %i.mw = icmp samesign eq i64 %i.mq, %.sroa.13111.0.copyload.i, !dbg !140435
  br i1 %i.mw, label %.loopexit.i.i, label %bb.cv, !dbg !140436

bb.cv:                                            ; preds = %bb.cu
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.12110.0.copyload.i, i64 %i.mq, !dbg !140434
  %i.my = load i8, ptr %i.mx, align 1, !dbg !140437, !noalias !140110, !noundef !2281 ; 3 uses
  %i.mz = icmp sgt i8 %i.my, -1, !dbg !140438
  br i1 %i.mz, label %.loopexit.i.i, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i, !dbg !140438

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i: ; preds = %bb.cv
  %i.na = add nuw nsw i64 %i.mq, 1, !dbg !140441
  %i.nb = icmp samesign ne i64 %i.na, %.sroa.13111.0.copyload.i, !dbg !140441
  call void @llvm.assume(i1 %i.nb), !dbg !140442
  %i.nc = icmp samesign ugt i8 %i.my, -33, !dbg !140446
  br i1 %i.nc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i, label %.loopexit.i.i, !dbg !140446

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.i.i
  %i.nd = add nuw nsw i64 %i.mq, 2, !dbg !140448
  %i.ne = icmp samesign ne i64 %i.nd, %.sroa.13111.0.copyload.i, !dbg !140448
  call void @llvm.assume(i1 %i.ne), !dbg !140449
  %i.nf = icmp samesign ugt i8 %i.my, -17, !dbg !140455
  br i1 %i.nf, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i, label %.loopexit.i.i, !dbg !140455

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.i.i
  %i.ng = add nuw nsw i64 %i.mq, 3, !dbg !140457
  %i.nh = icmp samesign ne i64 %i.ng, %.sroa.13111.0.copyload.i, !dbg !140457
  call void @llvm.assume(i1 %i.nh), !dbg !140458
  br label %.loopexit.i.i, !dbg !140464

.loopexit266.i:                                   ; preds = %bb.ct, %.split.i.i.i.i, %bb.cm, %.split.i.i.i.peel.i, %bb.cg, %.split.i.i.i.i.peel, %bb.bw, %.split.i.i.i.peel.i.peel
  %.sroa.468.1.lcssa.i = phi i64 [ %.sroa.4102.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.4102.0.copyload.i, %bb.bw ], [ %i.jv, %.split.i.i.i.i.peel ], [ %i.jv, %bb.cg ], [ %i.mq, %bb.ct ], [ %i.mq, %.split.i.i.i.i ], [ %.sroa.04.0215.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0215.i, %bb.cm ], !dbg !140343
  invoke void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.12110.0.copyload.i, i64 noundef %.sroa.13111.0.copyload.i, i64 noundef %.sroa.468.1.lcssa.i, i64 noundef %.sroa.13111.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1266) #54
          to label %.noexc.i unwind label %.loopexit138.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140474, !noalias !140109

.noexc.i:                                         ; preds = %.loopexit266.i
  unreachable, !dbg !140474

.split200.us.i:                                   ; preds = %.lr.ph377
  %i.ni = add i64 %i.gj, %.sroa.4102.0.copyload.i, !dbg !140475
  %umax.i53.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.13111.0.copyload.i, i64 %i.ni), !dbg !140475
  br label %.split200.us.invoke.i, !dbg !140395

end_hunk_0
