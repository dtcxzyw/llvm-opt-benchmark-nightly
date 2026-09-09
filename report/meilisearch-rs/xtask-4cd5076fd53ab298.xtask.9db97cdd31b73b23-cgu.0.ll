Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN5xtask6common6assets14download_asset28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfcb531a5aa52faeeE":bb.a
  store i32 %i.fu, ptr %i.gb, align 4, !alias.scope !33797
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.gc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) @1177, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !33798)
  call void @llvm.experimental.noalias.scope.decl(metadata !33799)
  call void @llvm.experimental.noalias.scope.decl(metadata !33800)
  call void @llvm.experimental.noalias.scope.decl(metadata !33801)
  call void @llvm.experimental.noalias.scope.decl(metadata !33802)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !33803, !noalias !33804, !noundef !24 ; 4 uses
  %i.gf = icmp ult i64 %i.ge, 88686269585142076
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp eq i64 %i.ge, 0
  br i1 %i.gg, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread", label %bb.bg

"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread": ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.thread427

bb.bg:                                            ; preds = %bb.bf
  %i.gh = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bv), !noalias !33805 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gj = load i16, ptr %i.gi, align 8, !alias.scope !33803, !noalias !33804, !noundef !24 ; 3 uses
  %i.gk = and i16 %i.gj, %i.gh
  %i.gl = zext nneg i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !33803, !noalias !33804, !noundef !24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !33803, !noalias !33804, !nonnull !24, !align !105
  %i.gq = zext i16 %i.gj to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !33803, !noalias !33804, !nonnull !24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.gv = load ptr, ptr %i.bv, align 8, !alias.scope !33799, !noalias !33798 ; 5 uses
  %i.gw = icmp eq ptr %i.gv, null                 ; 3 uses
  %i.gx = load i8, ptr %i.gt, align 8, !range !104, !alias.scope !33799, !noalias !33798
  %i.gy = load i64, ptr %i.gu, align 8, !alias.scope !33799, !noalias !33798 ; 4 uses
  %i.gz = load ptr, ptr %i.gt, align 8, !alias.scope !33799, !noalias !33798 ; 3 uses
  %.not572 = icmp eq i64 %i.gn, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i", %bb.bg
  %.sroa.05.0.i.i.i.i.ph = phi i64 [ %i.hm, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.0.0.i.i.i.i.ph = phi i64 [ %i.hn, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ %i.gl, %bb.bg ] ; 2 uses
  %i.ha = icmp ult i64 %.sroa.0.0.i.i.i.i.ph, %i.gn ; 2 uses
  %.not572.not = xor i1 %.not572, true
  %brmerge = or i1 %i.ha, %.not572.not
  %.sroa.0.0.i.i.i.i.ph.mux = select i1 %i.ha, i64 %.sroa.0.0.i.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.sroa.0.0.i.i.i.i.ph.mux ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !noalias !33806, !noundef !24 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.hc, -1
  br i1 %.not.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %i.hd = zext i16 %i.hc to i64                   ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !noalias !33806, !noundef !24 ; 2 uses
  %i.hg = and i16 %i.hf, %i.gj
  %i.hh = zext i16 %i.hg to i64
  %i.hi = sub i64 %.sroa.0.0.i.i.i.i.ph.mux, %i.hh
  %i.hj = and i64 %i.hi, %i.gq
  %i.hk = icmp samesign ugt i64 %.sroa.05.0.i.i.i.i.ph, %i.hj
  br i1 %i.hk, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = icmp eq i16 %i.hf, %i.gh
  br i1 %i.hl, label %bb.bj, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i, %bb.bm, %bb.bk, %bb.bi
  %i.hm = add nuw nsw i64 %.sroa.05.0.i.i.i.i.ph, 1
  %i.hn = add i64 %.sroa.0.0.i.i.i.i.ph.mux, 1
  br label %.outer

bb.bj:                                            ; preds = %bb.bi
  %i.ho = icmp samesign ugt i64 %i.ge, %i.hd
  br i1 %i.ho, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hp = getelementptr inbounds nuw [104 x i8], ptr %i.gs, i64 %i.hd ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !33806, !noundef !24
  %i.hs = icmp ne ptr %i.hr, null                 ; 2 uses
  %i.ht = xor i1 %i.gw, %i.hs
  br i1 %i.ht, label %bb.bl, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hs, label %bb.bm, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i"

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !33806, !noundef !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.hv, %i.gy
  br i1 %.not.i.i.i.i.i.i.i.i, label %.split.i.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

.split.i.i.i.i:                                   ; preds = %bb.bm
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !33806, !noundef !24
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hx, ptr %i.gz, i64 %i.gy), !noalias !33806
  %i.hy = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.hy, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i": ; preds = %bb.bl
  call void @llvm.assume(i1 %i.gw)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  %i.ia = load i8, ptr %i.hz, align 8, !range !104, !noalias !33806, !noundef !24
  %i.ib = icmp eq i8 %i.ia, %i.gx
  br i1 %i.ib, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i"

bb.bn:                                            ; preds = %bb.bj
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hd, i64 noundef %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574) #54
          to label %.noexc.i unwind label %bb.bo, !noalias !33807

.noexc.i:                                         ; preds = %bb.bn
  unreachable

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.i.i.i.i", %.split.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i"

bb.bo:                                            ; preds = %bb.bn
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gw, label %.body166, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !33808, !nonnull !24, !noundef !24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  invoke void %i.if(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.gz, i64 noundef %i.gy)
          to label %.body166 unwind label %bb.br, !noalias !33798, !inline_history !16

"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i": ; preds = %bb.bh, %.loopexit, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i"
  %.sroa.0.0.i.i = phi ptr [ %i.ic, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h54bdff71bbc06893E.exit.i.i" ], [ null, %.loopexit ], [ null, %bb.bh ] ; 3 uses
  %i.ih = icmp eq ptr %i.gv, null
  br i1 %i.ih, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit", label %bb.bq

bb.bq:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i"
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !33809, !nonnull !24, !noundef !24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  invoke void %i.ij(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ik, ptr noundef %i.gz, i64 noundef %i.gy)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" unwind label %bb.bs, !inline_history !33510

bb.br:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33798
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body166

"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h338f0330c7b1989aE.exit.i", %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i, label %.thread427, label %bb.bt

bb.bt:                                            ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit"
  %i.in = getelementptr i8, ptr %.sroa.0.0.i.i, i64 8
  %.val.i = load ptr, ptr %i.in, align 8, !nonnull !24, !noundef !24 ; 7 uses
  %i.io = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16
  %.val3.i = load i64, ptr %i.io, align 8, !noundef !24 ; 8 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val3.i
  %i.iq = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.iq, label %.thread427, label %.lr.ph.i.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ip
  br i1 %i.is, label %bb.bv, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bt, %bb.bu
  %.sroa.03.01.i.i.i = phi ptr [ %i.ir, %bb.bu ], [ %.val.i, %bb.bt ] ; 2 uses
  %i.it = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !24 ; 2 uses
  %i.iu = add i8 %i.it, -32
  %or.cond.i.i.i = icmp ult i8 %i.iu, 95
  %i.iv = icmp eq i8 %i.it, 9
  %or.cond1.i.i.i = or i1 %i.iv, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.bu, label %.thread427

bb.bv:                                            ; preds = %bb.bu
  %cond = icmp eq i64 %.val3.i, 1
  %i.iw = load i8, ptr %.val.i, align 1, !alias.scope !33810, !noalias !33811 ; 2 uses
  br i1 %cond, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  switch i8 %i.iw, label %.lr.ph.i.i.i169.preheader [
    i8 43, label %.thread427
    i8 45, label %.thread427
  ]

.lr.ph.i.i.i169.preheader:                        ; preds = %bb.ca, %bb.by, %bb.bw
  %.sroa.01.162.i.i.i.ph = phi ptr [ %i.ix, %bb.by ], [ %.val.i, %bb.ca ], [ %.val.i, %bb.bw ]
  %.sroa.16.161.i.i.i.ph = phi i64 [ %i.iy, %bb.by ], [ %.val3.i, %bb.ca ], [ 1, %bb.bw ]
  br label %.lr.ph.i.i.i169

bb.bx:                                            ; preds = %bb.bv
  %cond.i.i.i = icmp eq i8 %i.iw, 43
  br i1 %cond.i.i.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.iy = add i64 %.val3.i, -1                    ; 2 uses
  %i.iz = icmp ult i64 %.val3.i, 18
  br i1 %i.iz, label %.lr.ph.i.i.i169.preheader, label %.preheader53.i.i.i

.preheader53.i.i.i:                               ; preds = %bb.ca, %bb.by
  %.sroa.16.0.ph.i.i.i = phi i64 [ %.val3.i, %bb.ca ], [ %i.iy, %bb.by ] ; 2 uses
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.val.i, %bb.ca ], [ %i.ix, %bb.by ]
  %.not.i.not.i.i553 = icmp eq i64 %.sroa.16.0.ph.i.i.i, 0
  br i1 %.not.i.not.i.i553, label %.thread427, label %.lr.ph

bb.bz:                                            ; preds = %bb.cb
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i556, i64 1
  %3 = add i64 %.sroa.16.0.i.i.i555, -1           ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.not.i.i, label %.thread427, label %.lr.ph

bb.ca:                                            ; preds = %bb.bx
  %4 = icmp ult i64 %.val3.i, 17
  br i1 %4, label %.lr.ph.i.i.i169.preheader, label %.preheader53.i.i.i

.lr.ph:                                           ; preds = %.preheader53.i.i.i, %bb.bz
  %.sroa.01.0.i.i.i556 = phi ptr [ %2, %bb.bz ], [ %.sroa.01.0.ph.i.i.i, %.preheader53.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i555 = phi i64 [ %3, %bb.bz ], [ %.sroa.16.0.ph.i.i.i, %.preheader53.i.i.i ]
  %.sroa.017.0.i.i.i554 = phi i64 [ %i.ji, %bb.bz ], [ 0, %.preheader53.i.i.i ]
  %i.ja = load i8, ptr %.sroa.01.0.i.i.i556, align 1, !alias.scope !33810, !noalias !33811, !noundef !24
  %i.jb = zext i8 %i.ja to i32
  %i.jc = add nsw i32 %i.jb, -48                  ; 2 uses
  %i.jd = icmp ult i32 %i.jc, 10
  br i1 %i.jd, label %bb.cb, label %.thread427

bb.cb:                                            ; preds = %.lr.ph
  %i.je = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i.i.i554, i64 10) ; 2 uses
  %i.jf = extractvalue { i64, i1 } %i.je, 0       ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.je, 1
  %i.jh = zext nneg i32 %i.jc to i64
  %i.ji = add i64 %i.jf, %i.jh                    ; 3 uses
  %.not50.i.i.i = icmp ult i64 %i.ji, %i.jf
  %or.cond.i.i = select i1 %i.jg, i1 true, i1 %.not50.i.i.i
  br i1 %or.cond.i.i, label %.thread427, label %bb.bz

.lr.ph.i.i.i169:                                  ; preds = %.lr.ph.i.i.i169.preheader, %bb.cc
  %.sroa.01.162.i.i.i = phi ptr [ %i.jp, %bb.cc ], [ %.sroa.01.162.i.i.i.ph, %.lr.ph.i.i.i169.preheader ] ; 2 uses
  %.sroa.16.161.i.i.i = phi i64 [ %i.jo, %bb.cc ], [ %.sroa.16.161.i.i.i.ph, %.lr.ph.i.i.i169.preheader ]
  %.sroa.017.160.i.i.i = phi i64 [ %i.jr, %bb.cc ], [ 0, %.lr.ph.i.i.i169.preheader ]
  %i.jj = load i8, ptr %.sroa.01.162.i.i.i, align 1, !alias.scope !33810, !noalias !33811, !noundef !24
  %i.jk = zext i8 %i.jj to i32
  %i.jl = add nsw i32 %i.jk, -48                  ; 2 uses
  %i.jm = icmp ugt i32 %i.jl, 9
  br i1 %i.jm, label %.thread427, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i169
  %i.jn = mul i64 %.sroa.017.160.i.i.i, 10
  %i.jo = add nsw i64 %.sroa.16.161.i.i.i, -1     ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i.i.i, i64 1
  %i.jq = zext nneg i32 %i.jl to i64
  %i.jr = add i64 %i.jn, %i.jq                    ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not51.i.i.i, label %.thread427, label %.lr.ph.i.i.i169

.thread427:                                       ; preds = %.lr.ph.i.i.i, %bb.bz, %.lr.ph, %bb.cb, %bb.cc, %.lr.ph.i.i.i169, %.preheader53.i.i.i, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread", %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit", %bb.bt, %bb.bw, %bb.bw
  %.sroa.03.0.i = phi i64 [ 0, %bb.bt ], [ 0, %bb.bw ], [ 1, %bb.bz ], [ 0, %bb.bw ], [ 0, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" ], [ 1, %.preheader53.i.i.i ], [ 0, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread" ], [ 1, %bb.cc ], [ 0, %.lr.ph.i.i.i169 ], [ 0, %.lr.ph ], [ 0, %bb.cb ], [ 0, %.lr.ph.i.i.i ]
  %.sroa.34.0.i = phi i64 [ undef, %bb.bt ], [ undef, %bb.bw ], [ %i.ji, %bb.bz ], [ undef, %bb.bw ], [ undef, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit" ], [ 0, %.preheader53.i.i.i ], [ undef, %"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h1828a5dce7112c54E.exit.thread" ], [ %i.jr, %bb.cc ], [ undef, %.lr.ph.i.i.i169 ], [ undef, %.lr.ph ], [ undef, %bb.cb ], [ undef, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1178)
          to label %bb.ce unwind label %bb.cd

bb.cd:                                            ; preds = %.thread427
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %.body173

bb.ce:                                            ; preds = %.thread427
  store i8 0, ptr %i.fd, align 2
  %i.jt = load i32, ptr %i.dc, align 8, !range !93, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6342, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !33812
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %i.ju = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !33812 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i, label %bb.cf, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 %i.ju, ptr %i.as, align 8, !noalias !33812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !33812
  store ptr %i.as, ptr %i.aq, align 8, !noalias !33812
  %.sroa.6.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx.i.i170, align 8, !noalias !33812
  %.sroa.7.0..sroa_idx.i.i171 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store i64 %.sroa.03.0.i, ptr %.sroa.7.0..sroa_idx.i.i171, align 8
  %.sroa.5341.0..sroa.7.0..sroa_idx.i.i171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.34.0.i, ptr %.sroa.5341.0..sroa.7.0..sroa_idx.i.i171.sroa_idx, align 8
  %.sroa.6342.0..sroa.7.0..sroa_idx.i.i171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6342.0..sroa.7.0..sroa_idx.i.i171.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6342, i64 24, i1 false)
  %.sroa.7344.0..sroa.7.0..sroa_idx.i.i171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  store i32 %i.jt, ptr %.sroa.7344.0..sroa.7.0..sroa_idx.i.i171.sroa_idx, align 8
  %.sroa.8345.0..sroa.7.0..sroa_idx.i.i171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 172
  store i8 0, ptr %.sroa.8345.0..sroa.7.0..sroa_idx.i.i171.sroa_idx, align 4
  %i.jv = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 12 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !range !35, !noalias !33813, !noundef !24
  switch i8 %i.jx, label %default.unreachable534 [
    i8 0, label %bb.ch
    i8 1, label %bb.ci
    i8 2, label %bb.eg
  ], !prof !91

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.jv, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h6b03244abd963f7fE)
          to label %.noexc.i.i.i unwind label %bb.ee, !noalias !33813

.noexc.i.i.i:                                     ; preds = %bb.ch
  store i8 1, ptr %i.jw, align 8, !noalias !33813
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc.i.i.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !33813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.an, ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i64 176, i1 false), !noalias !33812
  %i.jy = load i64, ptr %i.jv, align 8, !noalias !33814, !noundef !24 ; 2 uses
  %i.jz = icmp ugt i64 %i.jy, 9223372036854775806
  br i1 %i.jz, label %bb.cj, label %bb.ck, !prof !26

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #54
          to label %bb.cl unwind label %bb.ed, !noalias !33814

bb.ck:                                            ; preds = %bb.ci
  %i.ka = add nuw nsw i64 %i.jy, 1
  store i64 %i.ka, ptr %i.jv, align 8, !noalias !33814
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !34, !noalias !33814, !noundef !24 ; 2 uses
  %.not.i.i.i.i172 = icmp eq i64 %i.kc, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !33814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.am, ptr noundef nonnull align 8 dereferenceable(176) %i.aq, i64 176, i1 false), !noalias !33812
  br i1 %.not.i.i.i.i172, label %bb.ea, label %bb.cm

common.resume.i.i.i.i.i.i:                        ; preds = %bb.eb, %bb.dw, %.noexc.i17.i.i.i.i.i.i, %bb.dq, %.noexc.i.i14.i.i.i.i.i.i, %bb.dn, %bb.dd, %.noexc.i.i.i.i.i.i.i, %bb.cx, %.noexc.i.i.i.i.i.i.i.i, %bb.cu
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.mm, %bb.eb ], [ %i.lf, %bb.dd ], [ %i.kz, %bb.cx ], [ %i.kw, %bb.cu ], [ %i.kz, %.noexc.i.i.i.i.i.i.i.i ], [ %i.lf, %.noexc.i.i.i.i.i.i.i ], [ %i.mb, %bb.dq ], [ %i.ly, %bb.dn ], [ %i.mb, %.noexc.i.i14.i.i.i.i.i.i ], [ %i.mh, %.noexc.i17.i.i.i.i.i.i ], [ %i.mh, %bb.dw ]
  %i.kd = load i64, ptr %i.jv, align 8, !noalias !33814, !noundef !24
  %i.ke = add i64 %i.kd, -1
  store i64 %i.ke, ptr %i.jv, align 8, !noalias !33814
  br label %.body173

bb.cl:                                            ; preds = %bb.cj
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %.sroa.08.0.copyload.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !33814, !nonnull !24, !noundef !24
  call void @llvm.experimental.noalias.scope.decl(metadata !33815)
  %i.kf = load i64, ptr %.sroa.08.0.copyload.i.i.i.i, align 8, !range !70, !noalias !33816, !noundef !24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33817)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 3 uses
  %i.kh = trunc nuw i64 %i.kc to i1
  br i1 %i.kh, label %bb.cn, label %bb.dg

bb.cn:                                            ; preds = %bb.cm
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kg, align 8, !alias.scope !33818, !noalias !33819, !nonnull !24, !noundef !24 ; 6 uses
  %i.ki = atomicrmw add ptr %.val.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !33820
  %i.kj = icmp slt i64 %i.ki, 0
  br i1 %i.kj, label %bb.cz, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !33821
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 528 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !33821, !noundef !24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kn = atomicrmw add ptr %i.km, i64 1 monotonic, align 8, !noalias !33821
  %i.ko = icmp slt i64 %i.kn, 0
  br i1 %i.ko, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kp = load <2 x ptr>, ptr %i.kl, align 8, !noalias !33821
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.trap()
  unreachable

bb.cs:                                            ; preds = %bb.cq, %bb.co
  %i.kq = phi <2 x ptr> [ %i.kp, %bb.cq ], [ <ptr null, ptr undef>, %bb.co ]
  %.sroa.412.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.sroa.412.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.kr, i64 160, i1 false), !noalias !33813
  store i64 204, ptr %i.ak, align 128, !noalias !33821
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33821
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @748, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !33821
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33821
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %.val.i.i.i.i.i.i, ptr %i.ks, align 32, !noalias !33821
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.kf, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33821
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !33821
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(164) %.sroa.412.i.i.i.i.i.i.i.i.i.i, i64 164, i1 false), !noalias !33821
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i8 0, i64 24, i1 false), !noalias !33821
  store <2 x ptr> %i.kq, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33821
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !33822
  %i.ku = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !33822 ; 9 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ct, label %_ZN5tokio7runtime4task8new_task17hcab24375e5a02288E.exit.i.i.i.i.i.i.i.i, !prof !37

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 384) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.cu, !noalias !33821

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr267drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..common..assets..download_asset..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17hfd6577f5502a39a6E"(ptr noundef nonnull align 128 dereferenceable(384) %i.ak) #55
          to label %common.resume.i.i.i.i.i.i unwind label %bb.cv, !noalias !33821

bb.cv:                                            ; preds = %bb.cu
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33821
  unreachable

_ZN5tokio7runtime4task8new_task17hcab24375e5a02288E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.ku, ptr noundef nonnull align 128 dereferenceable(384) %i.ak, i64 384, i1 false), !noalias !33821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !33821
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i.i.i.i)
  %i.ky = invoke fastcc noundef ptr @"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$10bind_inner17hdbabdec56884114fE"(ptr noundef nonnull align 8 %i.kk, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.ku)
          to label %"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$4bind17h81427db28242b766E.exit.i.i.i.i.i.i.i" unwind label %bb.cw, !noalias !33823 ; 2 uses

bb.cw:                                            ; preds = %_ZN5tokio7runtime4task8new_task17hcab24375e5a02288E.exit.i.i.i.i.i.i.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.ku)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cy, !noalias !33823

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw
  br i1 %i.la, label %bb.cx, label %common.resume.i.i.i.i.i.i

bb.cx:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.ku)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.cy, !noalias !33823

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !33823
  unreachable

"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$4bind17h81427db28242b766E.exit.i.i.i.i.i.i.i": ; preds = %_ZN5tokio7runtime4task8new_task17hcab24375e5a02288E.exit.i.i.i.i.i.i.i.i
end_hunk_0
