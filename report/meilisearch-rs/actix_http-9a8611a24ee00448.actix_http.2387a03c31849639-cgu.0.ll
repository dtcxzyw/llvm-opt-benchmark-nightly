Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
  %.sroa.658.1.i = phi i64 [ %.sroa.658.0206.i, %._crit_edge.i ], [ %.sroa.658.2.i, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i ], [ %.sroa.658.0206.i, %bb.ay ]
  %.sroa.457.1.i = phi i64 [ %.sroa.457.0207.i, %._crit_edge.i ], [ %.sroa.457.2.i, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i ], [ %.sroa.457.0207.i, %bb.ay ]
  %.sroa.02.2.i = phi i8 [ %.sroa.02.1.lcssa.i, %._crit_edge.i ], [ %i.il, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i ], [ %i.il, %bb.ay ]
  %.sroa.0.2.i = phi i8 [ %.sroa.0.1.lcssa.i, %._crit_edge.i ], [ %i.iq, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i ], [ %i.iq, %bb.ay ]
  %i.if = icmp ult i64 %.sroa.015.1218.i, %9      ; 2 uses
  %i.ig = zext i1 %i.if to i64
  %.sroa.015.1.i = add nuw i64 %.sroa.015.1218.i, %i.ig
  br i1 %i.if, label %bb.ah, label %_ZN6brotli3enc9histogram32BrotliBuildHistogramsWithContext17hc482235d9a53e0e7E.exit

bb.aw:                                            ; preds = %._crit_edge.i
  %i.ih = add i64 %i.hq, 4294967294
  %i.ii = and i64 %i.ih, %3                       ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %1
  br i1 %i.ij, label %bb.ax, label %.invoke1147

bb.ax:                                            ; preds = %bb.aw
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 %i.ii
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !12460, !noalias !12487, !noundef !21 ; 2 uses
  %i.im = add i64 %i.hq, 4294967295
  %i.in = and i64 %i.im, %3                       ; 3 uses
  %i.io = icmp ult i64 %i.in, %1
  br i1 %i.io, label %bb.ay, label %.invoke1147

bb.ay:                                            ; preds = %bb.ax
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 %i.in
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !12460, !noalias !12487, !noundef !21 ; 2 uses
  %i.ir = icmp ugt i16 %i.fx, 127
  br i1 %i.ir, label %bb.az, label %bb.av

.invoke1147:                                      ; preds = %bb.bg, %bb.bh, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit.i", %bb.am, %bb.ah, %bb.ak, %bb.aj, %bb.bn, %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.i", %bb.at, %bb.as, %bb.aq, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.us.i", %bb.ao, %bb.an
  %i.is = phi i64 [ %i.ht, %bb.as ], [ %i.gl, %bb.an ], [ %i.gl, %bb.ao ], [ %.sroa.6.2.us.i, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.us.i" ], [ %i.gx, %bb.aq ], [ %i.ht, %bb.at ], [ %.sroa.6.2.i, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.i" ], [ %i.ky, %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i ], [ %i.la, %bb.bn ], [ %i.fy, %bb.am ], [ %.sroa.655.1.i, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit.i" ], [ %i.fk, %bb.aj ], [ %.sroa.015.0214.i, %bb.ah ], [ %i.iw, %bb.bb ], [ %i.jt, %bb.bh ], [ %i.ii, %bb.aw ], [ %i.in, %bb.ax ], [ %i.iw, %bb.ba ], [ %i.jo, %bb.bg ], [ %i.fk, %bb.ak ]
  %i.it = phi i64 [ %.val7.i42.i, %bb.as ], [ %.val7.i42.i, %bb.an ], [ %.val3.i.i, %bb.ao ], [ %i.cq, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.us.i" ], [ %1, %bb.aq ], [ %.val3.i.i, %bb.at ], [ %.sroa.10.3890899905, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.i" ], [ %i.cq, %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i ], [ %1, %bb.bn ], [ 704, %bb.am ], [ %i.dn, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit.i" ], [ %.val7.i.i, %bb.aj ], [ %8, %bb.ah ], [ %.val3.i38.i, %bb.bb ], [ 544, %bb.bh ], [ %1, %bb.aw ], [ %1, %bb.ax ], [ %.val7.i47.i, %bb.ba ], [ %i.cu, %bb.bg ], [ %.val3.i34.i, %bb.ak ]
  %i.iu = phi ptr [ @1290, %bb.as ], [ @1290, %bb.an ], [ @1291, %bb.ao ], [ @1298, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.us.i" ], [ @1299, %bb.aq ], [ @1291, %bb.at ], [ @1297, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.i" ], [ @1298, %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i ], [ @1299, %bb.bn ], [ @1285, %bb.am ], [ @1293, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit.i" ], [ @1290, %bb.aj ], [ @1292, %bb.ah ], [ @1291, %bb.bb ], [ @1285, %bb.bh ], [ @1294, %bb.aw ], [ @1295, %bb.ax ], [ @1290, %bb.ba ], [ @1296, %bb.bg ], [ @1291, %bb.ak ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.is, i64 noundef %i.it, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iu) #46
          to label %.cont1148 unwind label %bb.gr

.cont1148:                                        ; preds = %.invoke1147
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.iv = icmp eq i64 %.sroa.859.0205.i, 0
  br i1 %i.iv, label %bb.ba, label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i"

bb.ba:                                            ; preds = %bb.az
  %i.iw = add i64 %.sroa.457.0207.i, 1            ; 7 uses
  %i.ix = icmp ult i64 %i.iw, %.val7.i47.i
  br i1 %i.ix, label %bb.bb, label %.invoke1147

bb.bb:                                            ; preds = %bb.ba
  %i.iy = icmp ult i64 %i.iw, %.val3.i38.i
  br i1 %i.iy, label %bb.bc, label %.invoke1147

bb.bc:                                            ; preds = %bb.bb
  %i.iz = getelementptr inbounds nuw i8, ptr %.val6.i48.i, i64 %i.iw
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !12492, !noundef !21
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val.i50.i, i64 %i.iw
  %i.jd = load i32, ptr %i.jc, align 4, !noalias !12492, !noundef !21
  %i.je = zext i32 %i.jd to i64
  br label %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i"

"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i": ; preds = %bb.bc, %bb.az
  %.sroa.658.2.i = phi i64 [ %i.jb, %bb.bc ], [ %.sroa.658.0206.i, %bb.az ] ; 2 uses
  %.sroa.457.2.i = phi i64 [ %i.iw, %bb.bc ], [ %.sroa.457.0207.i, %bb.az ]
  %i.jf = phi i64 [ %i.je, %bb.bc ], [ %.sroa.859.0205.i, %bb.az ]
  %i.jg = add i64 %i.jf, -1
  %i.jh = shl nuw nsw i64 %.sroa.658.2.i, 2
  %i.ji = zext nneg i16 %i.fx to i32              ; 2 uses
  %i.jj = lshr i32 %i.ji, 6                       ; 2 uses
  %i.jk = and i32 %i.ji, 7                        ; 3 uses
  switch i32 %i.jj, label %bb.be [
    i32 4, label %bb.bd
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i", %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i"
  %.old.i = icmp samesign ult i32 %i.jk, 3
  br i1 %.old.i, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit51.i"
  %i.jl = icmp eq i32 %i.jj, 7
  %i.jm = icmp samesign ult i32 %i.jk, 3
  %or.cond.i = and i1 %i.jl, %i.jm
  br i1 %or.cond.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jn = zext nneg i32 %i.jk to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.014.0.i = phi i64 [ %i.jn, %bb.bf ], [ 3, %bb.be ], [ 3, %bb.bd ]
  %i.jo = add nuw nsw i64 %.sroa.014.0.i, %i.jh   ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.cu
  br i1 %i.jp, label %bb.bh, label %.invoke1147

bb.bh:                                            ; preds = %bb.bg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.jr = load i16, ptr %i.jq, align 2, !alias.scope !12456, !noalias !12481, !noundef !21
  %i.js = and i16 %i.jr, 1023                     ; 2 uses
  %i.jt = zext nneg i16 %i.js to i64              ; 2 uses
  %i.ju = icmp samesign ult i16 %i.js, 544
  br i1 %i.ju, label %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i, label %.invoke1147

_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i: ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89, i64 %i.jo ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jt ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !alias.scope !12493, !noalias !12494, !noundef !21
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4, !alias.scope !12493, !noalias !12494
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2176 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !12495, !noalias !12494, !noundef !21
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !alias.scope !12496, !noalias !12494
  br label %bb.av

bb.bi:                                            ; preds = %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$4next17h56a35be7785cad50E.exit46.i"
  %i.kc = shl nuw nsw i64 %.sroa.6.2.i, 6
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.09.3893898908, i64 %.sroa.6.2.i
  %i.ke = load i8, ptr %i.kd, align 1, !range !41, !alias.scope !12461, !noalias !12497, !noundef !21
  switch i8 %i.ke, label %default.unreachable [
    i8 0, label %bb.bj
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
  ]

default.unreachable:                              ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.kf = and i8 %.sroa.0.1183.i, 63
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.kg = lshr i8 %.sroa.0.1183.i, 2
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.kh = zext i8 %.sroa.02.1182.i to i64
  %i.ki = zext i8 %.sroa.0.1183.i to i64
  %i.kj = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants18kUTF8ContextLookup17h584713a12b80d5beE, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !12498, !noundef !21
  %i.kl = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants18kUTF8ContextLookup17h584713a12b80d5beE, i64 %i.kh
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 256
  %i.kn = load i8, ptr %i.km, align 1, !noalias !12498, !noundef !21
  %i.ko = or i8 %i.kn, %i.kk
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i

bb.bm:                                            ; preds = %bb.bi
  %i.kp = zext i8 %.sroa.02.1182.i to i64
  %i.kq = zext i8 %.sroa.0.1183.i to i64
  %i.kr = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants24kSigned3BitContextLookup17h3609b52fbd919fc3E, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !noalias !12498, !noundef !21
  %i.kt = shl i8 %i.ks, 3
  %i.ku = getelementptr inbounds nuw i8, ptr @_ZN6brotli3enc9constants24kSigned3BitContextLookup17h3609b52fbd919fc3E, i64 %i.kp
  %i.kv = load i8, ptr %i.ku, align 1, !noalias !12498, !noundef !21
  %i.kw = add i8 %i.kt, %i.kv
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i

_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.sroa.0.0.i.i = phi i8 [ %i.kf, %bb.bj ], [ %i.kg, %bb.bk ], [ %i.ko, %bb.bl ], [ %i.kw, %bb.bm ]
  %i.kx = zext i8 %.sroa.0.0.i.i to i64
  %i.ky = add nuw nsw i64 %i.kc, %i.kx            ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %i.cq
  br i1 %i.kz, label %bb.bn, label %.invoke1147

bb.bn:                                            ; preds = %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit.i
  %i.la = and i64 %.sroa.03.1181.i, %3            ; 3 uses
  %i.lb = icmp ult i64 %i.la, %1
  br i1 %i.lb, label %bb.bo, label %.invoke1147

bb.bo:                                            ; preds = %bb.bn
  %i.lc = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i912, i64 %i.ky ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 %i.la
  %i.le = load i8, ptr %i.ld, align 1, !alias.scope !12460, !noalias !12487, !noundef !21 ; 3 uses
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !alias.scope !12488, !noalias !12489, !noundef !21
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.lg, align 4, !alias.scope !12488, !noalias !12489
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 1024 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !12490, !noalias !12489, !noundef !21
  %i.ll = add i64 %i.lk, 1
  store i64 %i.ll, ptr %i.lj, align 8, !alias.scope !12491, !noalias !12489
  %i.lm = add i64 %.sroa.03.1181.i, 1             ; 2 uses
  %i.ln = add nsw i64 %.sroa.011.0180.i, -1       ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %._crit_edge.i, label %.lr.ph.split.i

_ZN6brotli3enc9histogram32BrotliBuildHistogramsWithContext17hc482235d9a53e0e7E.exit: ; preds = %bb.av, %"_ZN6brotli3enc9histogram31BlockSplitIterator$LT$Alloc$GT$3new17h35f2dd36f07c39c3E.exit41.i"
  %i.lp = icmp eq i64 %.sroa.10.3890899905, 0
  br i1 %i.lp, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %_ZN6brotli3enc9histogram32BrotliBuildHistogramsWithContext17hc482235d9a53e0e7E.exit
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.sroa.09.3893898908, i64 noundef %.sroa.10.3890899905, i64 noundef 1) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %_ZN6brotli3enc9histogram32BrotliBuildHistogramsWithContext17hc482235d9a53e0e7E.exit
  %i.lq = load i64, ptr %i.cr, align 8, !noundef !21 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.ls = shl i64 %i.lq, 6                        ; 61 uses
  store i64 %i.ls, ptr %i.lr, align 8
  %i.lt = shl i64 %i.lq, 8                        ; 5 uses
  %i.lu = icmp ugt i64 %i.ls, 4611686018427387903
  %i.lv = icmp ugt i64 %i.lt, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %i.lu, %i.lv
  br i1 %or.cond.i.i.i.i, label %.invoke1145, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit"
  %i.lw = icmp eq i64 %i.lt, 0
  br i1 %i.lw, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12499
  %i.lx = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.lt, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12499 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %.invoke1145, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lz = ptrtoint ptr %i.lx to i64
  br label %bb.br

.invoke1145:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", %bb.bs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit", %bb.bp
  %i.ma = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit" ], [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit" ], [ 4, %bb.bp ], [ 8, %bb.bs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i ]
  %i.mb = phi i64 [ %i.nc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.lt, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc79103a98b41dcfaE.exit" ], [ %i.mj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit" ], [ %i.lt, %bb.bp ], [ %i.mj, %bb.bs ], [ %i.uj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ma, i64 %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1146 unwind label %.split

.cont1146:                                        ; preds = %.invoke1145
  unreachable

bb.br:                                            ; preds = %bb.bq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.lz, %bb.bq ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.mc = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 16 uses
  %i.md = icmp samesign ult i64 %i.ls, 2305843009213693952
  call void @llvm.assume(i1 %i.md)
  %i.me = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %12, i64 152 ; 2 uses
  %.val40 = load i64, ptr %i.mf, align 8, !noundef !21 ; 2 uses
  %i.mg = icmp eq i64 %.val40, 0
  br i1 %i.mg, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135": ; preds = %bb.br
  %.val39 = load ptr, ptr %i.me, align 8, !nonnull !21, !noundef !21
  %i.mh = shl nuw nsw i64 %.val40, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %i.mh, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i135", %bb.br
  store ptr %i.mc, ptr %i.me, align 8
  store i64 %i.ls, ptr %i.mf, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 3 uses
  store i64 %i.ls, ptr %i.mi, align 8
  %i.mj = mul i64 %i.lq, 66560                    ; 4 uses
  %or.cond.i.i.i.i.i136 = icmp samesign ugt i64 %i.ls, 8868626958514207
  br i1 %or.cond.i.i.i.i.i136, label %.invoke1145, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138", label %bb.bs

bb.bs:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12500
  %i.ml = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mj, i64 noundef range(i64 1, 9) 8) #45, !noalias !12500 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %.invoke1145, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138": ; preds = %bb.bs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137
  %.sroa.10.0.i.i.i139 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137 ], [ %i.ml, %bb.bs ] ; 12 uses
  %.sroa.4.0.i.i.i140 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i137 ], [ %i.ls, %bb.bs ]
  %i.mn = icmp samesign ule i64 %i.ls, %.sroa.4.0.i.i.i140
  call void @llvm.assume(i1 %i.mn)
  %.not241 = icmp eq i64 %i.ls, 0                 ; 3 uses
  br i1 %.not241, label %._crit_edge.i.i.i141, label %.lr.ph.i.i.i146.preheader.new

.lr.ph.i.i.i146.preheader.new:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138"
  %i.mo = add nsw i64 %i.ls, -16
  br label %.lr.ph.i.i.i146

.lr.ph.i.i.i146.epil:                             ; preds = %.lr.ph.i.i.i146, %.lr.ph.i.i.i146.epil
  %.sroa.0.08.i.i.i147.epil = phi ptr [ %i.mp, %.lr.ph.i.i.i146.epil ], [ %i.mx, %.lr.ph.i.i.i146 ] ; 4 uses
  %epil.iter1520 = phi i64 [ %epil.iter1520.next, %.lr.ph.i.i.i146.epil ], [ 0, %.lr.ph.i.i.i146 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.epil, align 8, !noalias !12501
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 1040 ; 2 uses
  %epil.iter1520.next = add i64 %epil.iter1520, 1 ; 2 uses
  %epil.iter1520.cmp.not = icmp eq i64 %epil.iter1520.next, 7
  br i1 %epil.iter1520.cmp.not, label %._crit_edge.thread.i.i.i143, label %.lr.ph.i.i.i146.epil, !llvm.loop !12212

._crit_edge.thread.i.i.i143:                      ; preds = %.lr.ph.i.i.i146.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mp, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145, align 8, !noalias !12501
  br label %._crit_edge.i.i.i141

.lr.ph.i.i.i146:                                  ; preds = %.lr.ph.i.i.i146, %.lr.ph.i.i.i146.preheader.new
  %.sroa.0.08.i.i.i147 = phi ptr [ %.sroa.10.0.i.i.i139, %.lr.ph.i.i.i146.preheader.new ], [ %i.mx, %.lr.ph.i.i.i146 ] ; 17 uses
  %niter1526 = phi i64 [ 0, %.lr.ph.i.i.i146.preheader.new ], [ %niter1526.next.7, %.lr.ph.i.i.i146 ] ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149, align 8, !noalias !12501
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mq, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.1, align 8, !noalias !12501
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mr, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.2, align 8, !noalias !12501
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ms, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.3, align 8, !noalias !12501
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mt, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.4, align 8, !noalias !12501
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mu, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.5, align 8, !noalias !12501
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mv, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.6, align 8, !noalias !12501
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mw, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.7, align 8, !noalias !12501
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 8320 ; 2 uses
  %niter1526.next.7 = add nuw i64 %niter1526, 8
  %niter1526.ncmp.7 = icmp eq i64 %niter1526, %i.mo
  br i1 %niter1526.ncmp.7, label %.lr.ph.i.i.i146.epil, label %.lr.ph.i.i.i146

._crit_edge.i.i.i141:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138", %._crit_edge.thread.i.i.i143
  %i.my = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %12, i64 184 ; 2 uses
  %.val52 = load i64, ptr %i.mz, align 8, !noundef !21 ; 2 uses
  %i.na = icmp eq i64 %.val52, 0
  br i1 %i.na, label %bb.bt, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154": ; preds = %._crit_edge.i.i.i141
  %.val51 = load ptr, ptr %i.my, align 8, !nonnull !21, !noundef !21
  %i.nb = mul nuw nsw i64 %.val52, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %i.nb, i64 noundef 8) #45
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i141, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154"
  store ptr %.sroa.10.0.i.i.i139, ptr %i.my, align 8
  store i64 %i.ls, ptr %i.mz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12502)
  call void @llvm.experimental.noalias.scope.decl(metadata !12503)
  call void @llvm.experimental.noalias.scope.decl(metadata !12504)
  call void @llvm.experimental.noalias.scope.decl(metadata !12505)
  %.not.i155 = icmp eq i64 %i.cq, 0               ; 7 uses
  br i1 %.not.i155, label %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.nc = shl nuw nsw i64 %i.cq, 2                ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12506
  %i.nd = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.nc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12506 ; 3 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.invoke1145, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12507
  %i.nf = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.nc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12507 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.bu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i"

bb.bu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.nc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i unwind label %.thread72.i, !noalias !12508

.noexc.i:                                         ; preds = %bb.bu
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i
  %i.nh = insertvalue { ptr, i64 } poison, ptr %i.nf, 0
  %i.ni = insertvalue { ptr, i64 } %i.nh, i64 %i.cq, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i

.thread72.i:                                      ; preds = %bb.bu
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.thread38.thread.thread

_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i", %bb.bt
  %i.nk = phi ptr [ %i.nd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i" ], [ inttoptr (i64 4 to ptr), %bb.bt ] ; 6 uses
  %.pn.i82.i = phi { ptr, i64 } [ %i.ni, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.bt ] ; 2 uses
  %i.nl = extractvalue { ptr, i64 } %.pn.i82.i, 0 ; 12 uses
  %i.nm = extractvalue { ptr, i64 } %.pn.i82.i, 1 ; 19 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12509
  %i.nn = call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !12509 ; 12 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc91.i unwind label %.thread27.i, !noalias !12508
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
  %i.rv = add nuw nsw i64 %.sroa.014.066.i.i, 1   ; 2 uses
  %exitcond138.not.i.i = icmp eq i64 %.sroa.014.066.i.i, %i.nm
  br i1 %exitcond138.not.i.i, label %.split31.us.i.invoke.i, label %bb.cn

.lr.ph69.i.i:                                     ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i, %middle.block1313
  %.sroa.016.068.i.i = phi i64 [ %i.rw, %middle.block1313 ], [ 0, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i ] ; 4 uses
  %i.rw = add nuw nsw i64 %.sroa.016.068.i.i, 1   ; 2 uses
  %exitcond141.not.i.i = icmp eq i64 %.sroa.016.068.i.i, %i.ls
  br i1 %exitcond141.not.i.i, label %.split31.us.i.invoke.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph69.i.i
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.016.068.i.i
  %i.ry = load i32, ptr %i.rx, align 4, !alias.scope !12518, !noalias !12519, !noundef !21
  %i.rz = zext i32 %i.ry to i64                   ; 3 uses
  %i.sa = icmp samesign ugt i64 %i.ls, %i.rz
  br i1 %i.sa, label %vector.ph1305, label %.split31.us.i.invoke.i

vector.ph1305:                                    ; preds = %bb.cm
  %i.sb = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.rz ; 3 uses
  %i.sc = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i912, i64 %.sroa.016.068.i.i ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 1024 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !alias.scope !12544, !noalias !12545, !noundef !21
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 1024
  %i.sg = load i64, ptr %i.sf, align 8, !alias.scope !12546, !noalias !12547, !noundef !21
  %i.sh = add i64 %i.sg, %i.se
  store i64 %i.sh, ptr %i.sd, align 8, !alias.scope !12548, !noalias !12532
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1305
  %index1307 = phi i64 [ 0, %vector.ph1305 ], [ %index.next1312.1, %vector.body1306 ] ; 4 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index1307 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 2 uses
  %wide.load1308 = load <4 x i32>, ptr %i.si, align 8, !alias.scope !12530, !noalias !12532
  %wide.load1309 = load <4 x i32>, ptr %i.sj, align 8, !alias.scope !12530, !noalias !12532
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index1307 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load1310 = load <4 x i32>, ptr %i.sk, align 4, !alias.scope !12549, !noalias !12547
  %wide.load1311 = load <4 x i32>, ptr %i.sl, align 4, !alias.scope !12549, !noalias !12547
  %i.sm = add <4 x i32> %wide.load1310, %wide.load1308
  %i.sn = add <4 x i32> %wide.load1311, %wide.load1309
  store <4 x i32> %i.sm, ptr %i.si, align 8, !alias.scope !12530, !noalias !12532
  store <4 x i32> %i.sn, ptr %i.sj, align 8, !alias.scope !12530, !noalias !12532
  %index.next1312 = or disjoint i64 %index1307, 8 ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index.next1312 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %wide.load1308.1 = load <4 x i32>, ptr %i.so, align 8, !alias.scope !12530, !noalias !12532
  %wide.load1309.1 = load <4 x i32>, ptr %i.sp, align 8, !alias.scope !12530, !noalias !12532
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index.next1312 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load1310.1 = load <4 x i32>, ptr %i.sq, align 4, !alias.scope !12549, !noalias !12547
  %wide.load1311.1 = load <4 x i32>, ptr %i.sr, align 4, !alias.scope !12549, !noalias !12547
  %i.ss = add <4 x i32> %wide.load1310.1, %wide.load1308.1
  %i.st = add <4 x i32> %wide.load1311.1, %wide.load1309.1
  store <4 x i32> %i.ss, ptr %i.so, align 8, !alias.scope !12530, !noalias !12532
  store <4 x i32> %i.st, ptr %i.sp, align 8, !alias.scope !12530, !noalias !12532
  %index.next1312.1 = add nuw nsw i64 %index1307, 16 ; 2 uses
  %i.su = icmp eq i64 %index.next1312.1, 256
  br i1 %i.su, label %middle.block1313, label %vector.body1306, !llvm.loop !12298

middle.block1313:                                 ; preds = %vector.body1306
  %exitcond143.not.i.i = icmp eq i64 %i.rw, %i.cq
  br i1 %exitcond143.not.i.i, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i, label %.lr.ph69.i.i

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.014.066.i.i
  %i.sw = load i32, ptr %i.sv, align 4, !alias.scope !12515, !noalias !12533, !noundef !21
  %i.sx = zext i32 %i.sw to i64                   ; 3 uses
  %i.sy = icmp samesign ugt i64 %i.ls, %i.sx
  br i1 %i.sy, label %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i, label %.split31.us.i.invoke.i

_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i: ; preds = %bb.cn
  %i.sz = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.sx ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sz, i8 0, i64 1032, i1 false), !alias.scope !12530, !noalias !12532
  store float 3.402000e+38, ptr %i.ta, align 8, !alias.scope !12550, !noalias !12532
  %exitcond139.not.i.i = icmp eq i64 %i.rv, %i.oz
  br i1 %exitcond139.not.i.i, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i, label %.lr.ph.i.i

bb.co:                                            ; preds = %.lr.ph36.split.i.i
  br i1 %.not241, label %.split31.us.i.invoke.i, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph36.split.i.i
  %i.tb = add nsw i64 %.sroa.010.034.i.i, -1      ; 3 uses
  %i.tc = icmp ult i64 %i.tb, %i.ls
  br i1 %i.tc, label %bb.cr, label %.split31.us.i.invoke.i

bb.cq:                                            ; preds = %bb.cr, %bb.co
  %.sroa.01.0.in.i.i = phi ptr [ %i.tg, %bb.cr ], [ %i.mc, %bb.co ]
  %.sroa.01.0.i.i = load i32, ptr %.sroa.01.0.in.i.i, align 4, !alias.scope !12518, !noalias !12519, !noundef !21 ; 2 uses
  %i.td = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i912, i64 %.sroa.010.034.i.i ; 2 uses
  %i.te = zext i32 %.sroa.01.0.i.i to i64         ; 3 uses
  %i.tf = icmp samesign ugt i64 %i.ls, %i.te
  br i1 %i.tf, label %bb.cs, label %.split31.us.i.invoke.i

bb.cr:                                            ; preds = %bb.cp
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.tb
  br label %bb.cq

bb.cs:                                            ; preds = %bb.cq
  %i.th = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.te ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 1024
  %i.tj = load i64, ptr %i.ti, align 8, !alias.scope !12520, !noalias !12521, !noundef !21
  %i.tk = icmp eq i64 %i.tj, 0
  br i1 %i.tk, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i, label %vector.ph1295

vector.ph1295:                                    ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.td, i64 1040, i1 false), !alias.scope !12523, !noalias !12521
  %i.tl = load i64, ptr %i.pc, align 8, !alias.scope !12524, !noalias !12525, !noundef !21
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 1024
  %i.tn = load i64, ptr %i.tm, align 8, !alias.scope !12526, !noalias !12527, !noundef !21
  %i.to = add i64 %i.tn, %i.tl
  store i64 %i.to, ptr %i.pc, align 8, !alias.scope !12528, !noalias !12529
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1295
  %index1297 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1302.1, %vector.body1296 ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1297 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %wide.load1298 = load <4 x i32>, ptr %i.tp, align 8, !noalias !12529
  %wide.load1299 = load <4 x i32>, ptr %i.tq, align 8, !noalias !12529
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index1297 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %wide.load1300 = load <4 x i32>, ptr %i.tr, align 8, !alias.scope !12530, !noalias !12527
  %wide.load1301 = load <4 x i32>, ptr %i.ts, align 8, !alias.scope !12530, !noalias !12527
  %i.tt = add <4 x i32> %wide.load1300, %wide.load1298
  %i.tu = add <4 x i32> %wide.load1301, %wide.load1299
  store <4 x i32> %i.tt, ptr %i.tp, align 8, !noalias !12529
  store <4 x i32> %i.tu, ptr %i.tq, align 8, !noalias !12529
  %index.next1302 = or disjoint i64 %index1297, 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index.next1302 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16 ; 2 uses
  %wide.load1298.1 = load <4 x i32>, ptr %i.tv, align 8, !noalias !12529
  %wide.load1299.1 = load <4 x i32>, ptr %i.tw, align 8, !noalias !12529
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index.next1302 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %wide.load1300.1 = load <4 x i32>, ptr %i.tx, align 8, !alias.scope !12530, !noalias !12527
  %wide.load1301.1 = load <4 x i32>, ptr %i.ty, align 8, !alias.scope !12530, !noalias !12527
  %i.tz = add <4 x i32> %wide.load1300.1, %wide.load1298.1
  %i.ua = add <4 x i32> %wide.load1301.1, %wide.load1299.1
  store <4 x i32> %i.tz, ptr %i.tv, align 8, !noalias !12529
  store <4 x i32> %i.ua, ptr %i.tw, align 8, !noalias !12529
  %index.next1302.1 = add nuw nsw i64 %index1297, 16 ; 2 uses
  %i.ub = icmp eq i64 %index.next1302.1, 256
  br i1 %i.ub, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i, label %vector.body1296, !llvm.loop !12301

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i: ; preds = %vector.body1296
  %i.uc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.c)
          to label %.noexc107.i unwind label %.thread45.thread81.loopexit.i, !noalias !12508 ; 0 uses

.noexc107.i:                                      ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12522
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i: ; preds = %.noexc107.i, %bb.cs
  %exitcond136.not.i.i = icmp eq i64 %.sroa.010.034.i.i, %i.ls
  br i1 %exitcond136.not.i.i, label %.split31.us.i.invoke.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.010.034.i.i
  store i32 %.sroa.01.0.i.i, ptr %i.ud, align 4, !alias.scope !12518, !noalias !12519
  %exitcond137.not.i.i = icmp eq i64 %i.rt, %i.cq
  br i1 %exitcond137.not.i.i, label %.preheader.i.i, label %.lr.ph36.split.i.i

.split31.us.i.invoke.i:                           ; preds = %._crit_edge.us.i.i, %bb.ch, %bb.cg, %bb.ce, %bb.cj, %.lr.ph.split.us37.i.i, %bb.ck, %.lr.ph.split.us.us.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i, %bb.cq, %bb.cp, %bb.co, %bb.cn, %.lr.ph.i.i, %bb.cm, %.lr.ph69.i.i
  %i.ue = phi i64 [ %i.rz, %bb.cm ], [ %i.rq, %bb.ck ], [ %i.nm, %.lr.ph.split.us37.i.i ], [ %i.ls, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ %i.nm, %.lr.ph.i.i ], [ %i.ls, %.lr.ph69.i.i ], [ %i.sx, %bb.cn ], [ %i.te, %bb.cq ], [ %i.tb, %bb.cp ], [ 0, %bb.co ], [ %i.nm, %.lr.ph.split.us.us.i.i ], [ %i.qo, %bb.cj ], [ %i.pg, %bb.ce ], [ %i.pk, %bb.ch ], [ 0, %bb.cg ], [ %i.ls, %._crit_edge.us.i.i ]
  %i.uf = phi i64 [ %i.ls, %bb.cm ], [ %i.ls, %bb.ck ], [ %i.nm, %.lr.ph.split.us37.i.i ], [ %i.ls, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ %i.nm, %.lr.ph.i.i ], [ %i.ls, %.lr.ph69.i.i ], [ %i.ls, %bb.cn ], [ %i.ls, %bb.cq ], [ %i.ls, %bb.cp ], [ 0, %bb.co ], [ %i.nm, %.lr.ph.split.us.us.i.i ], [ %i.ls, %bb.cj ], [ %i.ls, %bb.ce ], [ %i.ls, %bb.ch ], [ 0, %bb.cg ], [ %i.ls, %._crit_edge.us.i.i ]
  %i.ug = phi ptr [ @1232, %bb.cm ], [ @1242, %bb.ck ], [ @1241, %.lr.ph.split.us37.i.i ], [ @1240, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ @1234, %.lr.ph.i.i ], [ @1231, %.lr.ph69.i.i ], [ @1235, %bb.cn ], [ @1239, %bb.cq ], [ @1237, %bb.cp ], [ @1236, %bb.co ], [ @1241, %.lr.ph.split.us.us.i.i ], [ @1242, %bb.cj ], [ @1237, %bb.ce ], [ @1239, %bb.ch ], [ @1236, %bb.cg ], [ @1240, %._crit_edge.us.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ue, i64 noundef %i.uf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug) #46
          to label %.split31.us.i.cont.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !12508

.split31.us.i.cont.i:                             ; preds = %.split31.us.i.invoke.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i: ; preds = %middle.block1313, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i
  %i.uh = icmp eq i64 %i.nm, 0
  br i1 %i.uh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i
  %i.ui = shl nuw nsw i64 %i.nm, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.nl, i64 noundef %i.ui, i64 noundef 4) #45, !noalias !12508
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12551)
  br i1 %.not.i155, label %.thread90, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i

.thread90:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"
  store i64 0, ptr %i.mi, align 8, !alias.scope !12504, !noalias !12552
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"
  %i.uj = shl nuw nsw i64 %i.cq, 2                ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12553
  %i.uk = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.uj, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12553 ; 6 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %.invoke1145, label %.lr.ph.i117.i.preheader

.lr.ph.i117.i.preheader:                          ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uk, i8 -1, i64 %i.uj, i1 false), !noalias !12554
  %i.um = or disjoint i64 %i.ls, 1                ; 2 uses
  br label %bb.dk

._crit_edge.i.i:                                  ; preds = %bb.do
  %i.un = zext i32 %.sroa.0.3.i.i to i64          ; 3 uses
  %.not42.i.i = icmp eq i32 %.sroa.0.3.i.i, 0
  br i1 %.not42.i.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i
  %i.uo = mul nuw nsw i64 %i.un, 1040             ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12555
  %i.up = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.uo, i64 noundef range(i64 1, 9) 8) #45, !noalias !12555 ; 5 uses
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %bb.cv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.uo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i.i unwind label %.thread29.i.i, !noalias !12554

.noexc.i.i:                                       ; preds = %bb.cv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i": ; preds = %bb.cu
  %.not.i.i.i161 = icmp eq i32 %.sroa.0.3.i.i, 1
  br i1 %.not.i.i.i161, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"
  %i.ur = add nsw i64 %i.un, -1                   ; 2 uses
  %xtraiter1527 = and i64 %i.ur, 7                ; 3 uses
  %i.us = add i32 %.sroa.0.3.i.i, -2
  %i.ut = icmp ult i32 %i.us, 7
  br i1 %i.ut, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter1532 = and i64 %i.ur, -8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod1529.not = icmp eq i64 %xtraiter1527, 0
  br i1 %lcmp.mod1529.not, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.i.i.epil.init = phi ptr [ %i.up, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ve, %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1531 = icmp ne i64 %xtraiter1527, 0
  call void @llvm.assume(i1 %lcmp.mod1531)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i.epil = phi ptr [ %i.uu, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter1528 = phi i64 [ %epil.iter1528.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil, align 8, !noalias !12556
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter1528.next = add i64 %epil.iter1528, 1 ; 2 uses
  %epil.iter1528.cmp.not = icmp eq i64 %epil.iter1528.next, %xtraiter1527
  br i1 %epil.iter1528.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12318

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i = phi ptr [ %i.up, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i" ], [ %i.ve, %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.uu, %.lr.ph.i.i.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12556
  %i.uv = insertvalue { ptr, i64 } poison, ptr %i.up, 0
  %i.uw = insertvalue { ptr, i64 } %i.uv, i64 %i.un, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.up, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ve, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %niter1533 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter1533.next.7, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12556
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ux, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1, align 8, !noalias !12556
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.uy, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2, align 8, !noalias !12556
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.uz, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.3, align 8, !noalias !12556
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.va, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.4, align 8, !noalias !12556
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.vb, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.5, align 8, !noalias !12556
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.vc, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.6, align 8, !noalias !12556
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.vd, i8 0, i64 1032, i1 false), !noalias !12554
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.7, align 8, !noalias !12556
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 8320 ; 3 uses
  %niter1533.next.7 = add i64 %niter1533, 8       ; 2 uses
  %niter1533.ncmp.7 = icmp eq i64 %niter1533.next.7, %unroll_iter1532
  br i1 %niter1533.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

.thread29.i.i:                                    ; preds = %.invoke.i.i, %bb.cv
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i
  %.pn.i71.i.i = phi { ptr, i64 } [ %i.uw, %._crit_edge.thread.i.i.i.i.i.i ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %._crit_edge.i.i ] ; 2 uses
  %i.vf = extractvalue { ptr, i64 } %.pn.i71.i.i, 0 ; 10 uses
  %i.vg = extractvalue { ptr, i64 } %.pn.i71.i.i, 1 ; 11 uses
  br label %bb.dc

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i": ; preds = %bb.dj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.uk, i64 noundef %i.uj, i64 noundef 4) #45, !noalias !12554
  %i.vh = zext i32 %.sroa.0.2.i.i to i64          ; 2 uses
  %.not84.i.i = icmp eq i32 %.sroa.0.2.i.i, 0
  br i1 %.not84.i.i, label %._crit_edge80.i.i, label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  %i.vi = add nuw nsw i64 %i.vg, 1
  %13 = or disjoint i64 %i.ls, 1
  br label %bb.cw

._crit_edge80.i.i:                                ; preds = %bb.db, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  %i.vj = icmp eq i64 %i.vg, 0
  br i1 %i.vj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i": ; preds = %._crit_edge80.i.i
  %i.vk = mul nuw nsw i64 %i.vg, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.vf, i64 noundef %i.vk, i64 noundef 8) #45, !noalias !12554
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164"

bb.cw:                                            ; preds = %bb.db, %.lr.ph79.i.i
  %i.vl = phi i64 [ 1, %.lr.ph79.i.i ], [ %i.vq, %bb.db ] ; 5 uses
  %.sroa.029.078.i.i = phi i64 [ 0, %.lr.ph79.i.i ], [ %i.vl, %bb.db ] ; 4 uses
  %exitcond106.not.i.i = icmp eq i64 %i.vl, %i.vi
  br i1 %exitcond106.not.i.i, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i, i64 noundef %i.vg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1255) #46
          to label %bb.cy unwind label %.thread.i.i, !noalias !12554

bb.cy:                                            ; preds = %bb.dh, %bb.da, %bb.cx
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %exitcond107.not.i.i = icmp eq i64 %i.vl, %13
  br i1 %exitcond107.not.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #46
          to label %bb.cy unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i", !noalias !12554

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i": ; preds = %bb.da
  %i.vm = landingpad { ptr, i32 }
          cleanup
  %i.vn = mul nuw nsw i64 %i.vg, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.vn, i64 noundef 8) #45, !noalias !12554
  br label %.thread38.thread

bb.db:                                            ; preds = %bb.cz
  %i.vo = getelementptr inbounds nuw [1040 x i8], ptr %i.vf, i64 %.sroa.029.078.i.i
  %i.vp = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %.sroa.029.078.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vp, ptr noundef nonnull align 8 dereferenceable(1040) %i.vo, i64 1040, i1 false), !noalias !12557
  %i.vq = add nuw nsw i64 %i.vl, 1
  %exitcond108.not.i.i = icmp eq i64 %i.vl, %i.vh
  br i1 %exitcond108.not.i.i, label %._crit_edge80.i.i, label %bb.cw

bb.dc:                                            ; preds = %bb.dj, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i
  %i.vr = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %i.wj, %bb.dj ] ; 4 uses
  %.sroa.0.173.i.i = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %.sroa.0.2.i.i, %bb.dj ] ; 4 uses
  %.sroa.027.072.i.i = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %i.vr, %bb.dj ]
  %exitcond104.not.i.i = icmp eq i64 %i.vr, %i.um
  br i1 %exitcond104.not.i.i, label %.invoke180.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.027.072.i.i ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !alias.scope !12558, !noalias !12559, !noundef !21
  %i.vu = zext i32 %i.vt to i64                   ; 6 uses
  %i.vv = icmp samesign ugt i64 %i.cq, %i.vu
  br i1 %i.vv, label %bb.de, label %.invoke180.i.i

.invoke180.i.i:                                   ; preds = %bb.df, %bb.dd, %bb.dc
  %i.vw = phi i64 [ %i.ls, %bb.dc ], [ %i.vu, %bb.dd ], [ %i.vu, %bb.df ]
  %i.vx = phi i64 [ %i.ls, %bb.dc ], [ %i.cq, %bb.dd ], [ %i.ls, %bb.df ]
  %i.vy = phi ptr [ @1257, %bb.dc ], [ @1258, %bb.dd ], [ @1259, %bb.df ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vw, i64 noundef %i.vx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vy) #46
          to label %.cont181.i.i unwind label %.thread.i.i, !noalias !12554

.cont181.i.i:                                     ; preds = %.invoke180.i.i
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.vu ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4, !noalias !12554, !noundef !21 ; 2 uses
  %i.wb = icmp eq i32 %i.wa, %.sroa.0.173.i.i
  br i1 %i.wb, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.wc = icmp samesign ugt i64 %i.ls, %i.vu
  br i1 %i.wc, label %bb.dg, label %.invoke180.i.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  %i.wd = zext i32 %.sroa.0.173.i.i to i64        ; 3 uses
  %i.we = icmp ugt i64 %i.vg, %i.wd
  br i1 %i.we, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wd, i64 noundef %i.vg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #46
          to label %bb.cy unwind label %.thread.thread.i.i, !noalias !12554

bb.di:                                            ; preds = %bb.dg
  %i.wf = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.vu
  %i.wg = getelementptr inbounds nuw [1040 x i8], ptr %i.vf, i64 %i.wd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.wg, ptr noundef nonnull align 8 dereferenceable(1040) %i.wf, i64 1040, i1 false), !noalias !12557
  %i.wh = add i32 %.sroa.0.173.i.i, 1
  %.pre.i.i = load i32, ptr %i.vz, align 4, !noalias !12554
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.de
  %i.wi = phi i32 [ %.pre.i.i, %bb.di ], [ %i.wa, %bb.de ]
  %.sroa.0.2.i.i = phi i32 [ %i.wh, %bb.di ], [ %.sroa.0.173.i.i, %bb.de ] ; 3 uses
  store i32 %i.wi, ptr %i.vs, align 4, !alias.scope !12558, !noalias !12559
  %i.wj = add i64 %i.vr, 1
  %exitcond105.not.i.i = icmp eq i64 %i.vr, %i.cq
  br i1 %exitcond105.not.i.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i", label %bb.dc

bb.dk:                                            ; preds = %bb.do, %.lr.ph.i117.i.preheader
  %i.wk = phi i64 [ 1, %.lr.ph.i117.i.preheader ], [ %i.wt, %bb.do ] ; 4 uses
  %.sroa.0.070.i.i = phi i32 [ 0, %.lr.ph.i117.i.preheader ], [ %.sroa.0.3.i.i, %bb.do ] ; 3 uses
  %.sroa.025.069.i.i = phi i64 [ 0, %.lr.ph.i117.i.preheader ], [ %i.wk, %bb.do ]
  %exitcond102.not.i.i = icmp eq i64 %i.wk, %i.um
  br i1 %exitcond102.not.i.i, label %.invoke.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.025.069.i.i
  %i.wm = load i32, ptr %i.wl, align 4, !alias.scope !12558, !noalias !12559, !noundef !21
  %i.wn = zext i32 %i.wm to i64                   ; 3 uses
  %i.wo = icmp samesign ugt i64 %i.cq, %i.wn
  br i1 %i.wo, label %bb.dm, label %.invoke.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.wn ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !noalias !12554, !noundef !21
  %i.wr = icmp eq i32 %i.wq, -1
  br i1 %i.wr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 %.sroa.0.070.i.i, ptr %i.wp, align 4, !noalias !12554
  %i.ws = add i32 %.sroa.0.070.i.i, 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.sroa.0.3.i.i = phi i32 [ %i.ws, %bb.dn ], [ %.sroa.0.070.i.i, %bb.dm ] ; 5 uses
  %i.wt = add nuw nsw i64 %i.wk, 1
  %exitcond103.not.i.i = icmp eq i64 %i.wk, %i.cq
  br i1 %exitcond103.not.i.i, label %._crit_edge.i.i, label %bb.dk

.invoke.i.i:                                      ; preds = %bb.dl, %bb.dk
  %.ph.i = phi i64 [ %i.ls, %bb.dk ], [ %i.wn, %bb.dl ]
  %.ph165.i = phi i64 [ %i.ls, %bb.dk ], [ %i.cq, %bb.dl ]
  %.ph166.i = phi ptr [ @1261, %bb.dk ], [ @1262, %bb.dl ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i, i64 noundef %.ph165.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i) #46
          to label %.cont.i.i unwind label %.thread29.i.i, !noalias !12554

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dp:                                            ; preds = %.thread.i.i
  br i1 %i.wu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %.thread38.thread

.thread.i.i:                                      ; preds = %.invoke180.i.i, %bb.cx
  %i.wu = phi i1 [ true, %.invoke180.i.i ], [ false, %bb.cx ] ; 2 uses
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.wv = icmp eq i64 %i.vg, 0
  br i1 %i.wv, label %bb.dp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i"

.thread.thread.i.i:                               ; preds = %bb.dh
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = icmp eq i64 %i.vg, 0
  br i1 %i.wx, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i": ; preds = %.thread.thread.i.i
  %i.wy = mul nuw nsw i64 %i.vg, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.wy, i64 noundef 8) #45, !noalias !12554
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i": ; preds = %.thread.i.i
  %i.wz = mul nuw nsw i64 %i.vg, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.wz, i64 noundef 8) #45, !noalias !12554
  br i1 %i.wu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %.thread38.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i", %.thread.thread.i.i, %bb.dp, %.thread29.i.i
  %.pn2033169.i.i = phi { ptr, i32 } [ %i.ww, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i" ], [ %i.ww, %.thread.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.thread29.i.i ], [ %lpad.thr_comm.i.i, %bb.dp ], [ %lpad.thr_comm.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uk, i64 noundef %i.uj, i64 noundef 4) #45, !noalias !12554
  br label %.thread38.thread

._crit_edge.i158:                                 ; preds = %bb.dt
  %i.xa = icmp samesign ugt i64 %.sroa.08.0157.i, %i.ls
  br i1 %i.xa, label %.invoke.i, label %bb.dq, !prof !30

.invoke.i:                                        ; preds = %bb.dq, %._crit_edge.i158
  %i.xb = phi i64 [ %.sroa.08.0157.i, %._crit_edge.i158 ], [ %.sroa.0.0158.i, %bb.dq ]
  %i.xc = phi i64 [ %i.ls, %._crit_edge.i158 ], [ %i.nm, %bb.dq ] ; 2 uses
  %i.xd = phi ptr [ @1264, %._crit_edge.i158 ], [ @1263, %bb.dq ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.xb, i64 noundef %i.xc, i64 noundef %i.xc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xd) #46
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12508

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.dq:                                            ; preds = %._crit_edge.i158
  %i.xe = icmp ugt i64 %.sroa.0.0158.i, %i.nm
  br i1 %i.xe, label %.invoke.i, label %bb.dr, !prof !30

bb.dr:                                            ; preds = %bb.dq
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.08.0157.i
  %i.xg = sub nuw nsw i64 %i.ls, %.sroa.08.0157.i
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.0.0158.i
  %i.xi = sub nuw nsw i64 %i.nm, %.sroa.0.0158.i
  %i.xj = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139, i64 noundef %i.ls, ptr noalias noundef nonnull align 4 %i.nk, i64 noundef %i.cq, ptr noalias noundef nonnull align 4 %i.xf, i64 noundef %i.xg, ptr noalias noundef nonnull align 4 %i.xh, i64 noundef %i.xi, ptr noalias noundef nonnull align 4 %i.nn, i64 noundef 2049, i64 noundef %.sroa.0.0.i92.i, i64 noundef %.sroa.0.0.i92.i, i64 noundef 256, i64 noundef 2048)
          to label %bb.ds unwind label %.loopexit.i, !noalias !12513

bb.ds:                                            ; preds = %bb.dr
  %i.xk = add nuw nsw i64 %i.xj, %.sroa.0.0158.i  ; 2 uses
  %i.xl = add nuw nsw i64 %.sroa.08.0157.i, 64    ; 2 uses
  %i.xm = icmp ult i64 %i.xl, %i.cq
  %indvars.iv.next.i = add i64 %indvars.iv.i, -64
  br i1 %i.xm, label %.lr.ph156.i, label %._crit_edge160.i

scalar.ph1265:                                    ; preds = %scalar.ph1265.preheader, %bb.dt
  %i.xn = phi i64 [ %i.xs, %bb.dt ], [ %.ph1451, %scalar.ph1265.preheader ] ; 4 uses
  %.sroa.033.0155.i = phi i64 [ %i.xn, %bb.dt ], [ %.sroa.033.0155.i.ph, %scalar.ph1265.preheader ] ; 2 uses
  %i.xo = add nuw i64 %.sroa.033.0155.i, %.sroa.0.0158.i ; 2 uses
  %exitcond225.not.i = icmp eq i64 %i.xn, %i.ny
  br i1 %exitcond225.not.i, label %.invoke340.i, label %bb.dt

bb.dt:                                            ; preds = %scalar.ph1265
  %i.xp = add nuw nsw i64 %.sroa.033.0155.i, %.sroa.08.0157.i
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.xo
  %i.xr = trunc i64 %i.xp to i32
  store i32 %i.xr, ptr %i.xq, align 4, !noalias !12508
  %i.xs = add nuw nsw i64 %i.xn, 1
  %exitcond227.not.i = icmp eq i64 %i.xn, %umax226.i
  br i1 %exitcond227.not.i, label %._crit_edge.i158, label %scalar.ph1265, !llvm.loop !12319

.invoke340.i:                                     ; preds = %bb.dy, %scalar.ph1265
  %i.xt = phi i64 [ %i.xo, %scalar.ph1265 ], [ %i.ls, %bb.dy ]
  %i.xu = phi i64 [ %i.nm, %scalar.ph1265 ], [ %i.ls, %bb.dy ]
  %i.xv = phi ptr [ @1265, %scalar.ph1265 ], [ @1268, %bb.dy ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.xt, i64 noundef %i.xu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xv) #46
          to label %.cont341.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12508

.cont341.i:                                       ; preds = %.invoke340.i
  unreachable

bb.du:                                            ; preds = %.preheader105.i, %bb.dz
  %i.xw = phi i64 [ %i.ye, %bb.dz ], [ 1, %.preheader105.i ] ; 5 uses
  %.sroa.031.0153.i = phi i64 [ %i.xw, %bb.dz ], [ 0, %.preheader105.i ] ; 4 uses
  %exitcond222.not.i = icmp eq i64 %i.xw, %i.nu
  br i1 %exitcond222.not.i, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ls, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1267) #46
          to label %bb.cb unwind label %bb.dw, !noalias !12508

bb.dw:                                            ; preds = %bb.dv
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

bb.dx:                                            ; preds = %bb.du
  %i.xy = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i912, i64 %.sroa.031.0153.i ; 2 uses
  %i.xz = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %.sroa.031.0153.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.xz, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.xy, i64 1040, i1 false), !alias.scope !12560, !noalias !12561
  %i.ya = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.xy)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.i, !noalias !12562

bb.dy:                                            ; preds = %bb.dx
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 1032
  store float %i.ya, ptr %i.yb, align 8, !alias.scope !12563, !noalias !12564
  %exitcond223.not.i = icmp eq i64 %i.xw, %i.nv
  br i1 %exitcond223.not.i, label %.invoke340.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.031.0153.i
  %i.yd = trunc i64 %.sroa.031.0153.i to i32
  store i32 %i.yd, ptr %i.yc, align 4, !alias.scope !12505, !noalias !12565
  %i.ye = add nuw nsw i64 %i.xw, 1
  %exitcond224.not.i = icmp eq i64 %i.xw, %i.cq
  br i1 %exitcond224.not.i, label %.preheader101.i, label %bb.du

.lr.ph.i156:                                      ; preds = %.lr.ph.i156.preheader1456, %.lr.ph.i156
  %i.yf = phi i64 [ %i.yh, %.lr.ph.i156 ], [ %.ph1457, %.lr.ph.i156.preheader1456 ] ; 3 uses
  %.sroa.029.0152.i = phi i64 [ %i.yf, %.lr.ph.i156 ], [ %.sroa.029.0152.i.ph, %.lr.ph.i156.preheader1456 ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.sroa.029.0152.i
  store i32 1, ptr %i.yg, align 4, !noalias !12508
  %i.yh = add i64 %i.yf, 1
  %exitcond.not.i = icmp eq i64 %i.yf, %i.cq
  br i1 %exitcond.not.i, label %.preheader105.i, label %.lr.ph.i156, !llvm.loop !12322

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i": ; preds = %bb.dw, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn42.i = phi { ptr, i32 } [ %i.xx, %bb.dw ], [ %lpad.thr_comm.split-lp63.i, %bb.bz ], [ %lpad.loopexit102.i, %.loopexit.i ], [ %lpad.loopexit106.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp107.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.011.041.i = phi ptr [ %i.nn, %bb.dw ], [ %i.nn, %bb.bz ], [ %i.nn, %.loopexit.i ], [ %i.nn, %.loopexit.split-lp.loopexit.i ], [ %.sroa.011.1.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.10.040.i = phi i64 [ 32784, %bb.dw ], [ 32784, %bb.bz ], [ 32784, %.loopexit.i ], [ 32784, %.loopexit.split-lp.loopexit.i ], [ %i.ol, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.041.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.041.i, i64 noundef %.sroa.10.040.i, i64 noundef 4) #45, !noalias !12508
  br label %.thread45.thread81.i

.thread45.thread81.i:                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i", %.thread27.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.thread45.thread81.loopexit.split-lp.loopexit.i, %.thread45.thread81.loopexit.i
  %.sroa.028.132.not.i = phi i1 [ %.not.i155, %.thread27.i ], [ %.not.i155, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i" ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ true, %.thread45.thread81.loopexit.i ]
  %.pn.pn31.i = phi { ptr, i32 } [ %i.np, %.thread27.i ], [ %.pn42.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i" ], [ %lpad.loopexit90.i, %.thread45.thread81.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit98.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.i, %.thread45.thread81.loopexit.i ] ; 2 uses
  %i.yi = icmp eq i64 %i.nm, 0
  br i1 %i.yi, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i": ; preds = %.thread45.thread81.i
  %i.yj = shl nuw nsw i64 %i.nm, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nl) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.yj, i64 noundef 4) #45, !noalias !12508
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i", %.thread45.thread81.i
  br i1 %.sroa.028.132.not.i, label %.thread38.thread, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i"
  %.pre.i = shl nuw nsw i64 %i.cq, 2
  br label %.thread38.thread.thread

.thread38.thread.thread:                          ; preds = %.thread72.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i"
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nc, %.thread72.i ]
  %i.yk = phi ptr [ %i.nk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nd, %.thread72.i ] ; 2 uses
  %.pn.pn.pn2574.i = phi { ptr, i32 } [ %.pn.pn31.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nj, %.thread72.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yk) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yk, i64 noundef %.pre-phi.i, i64 noundef 4) #45, !noalias !12508
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i912, i64 noundef %i.cp, i64 noundef 8) #45
  br label %.thread.thread144

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i", %._crit_edge80.i.i
  store i64 %i.vh, ptr %i.mi, align 8, !alias.scope !12504, !noalias !12552
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i912, i64 noundef %i.cp, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164", %.thread90
  %i.yl = load i32, ptr %i.o, align 4, !noundef !21
  %i.ym = icmp eq i32 %i.yl, 0
  %i.yn = icmp eq i64 %i.lq, 0
  %or.cond = or i1 %i.ym, %i.yn
  br i1 %or.cond, label %.loopexit270, label %.lr.ph469

.lr.ph469:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"
  %i.yo = add i64 %i.lq, -1
  %.first_iter = icmp ult i64 %i.yo, %i.ls
  br label %bb.ec

.loopexit270:                                     ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"
  %i.yp = load i64, ptr %i.cs, align 8, !noundef !21 ; 7 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %12, i64 232
  %i.yr = shl i64 %i.yp, 2                        ; 76 uses
  store i64 %i.yr, ptr %i.yq, align 8
  %i.ys = shl i64 %i.yp, 4                        ; 5 uses
  %i.yt = icmp ugt i64 %i.yr, 4611686018427387903
  %i.yu = icmp ugt i64 %i.ys, 9223372036854775804
  %or.cond.i.i.i.i165 = or i1 %i.yt, %i.yu
  br i1 %or.cond.i.i.i.i165, label %.invoke1143, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166: ; preds = %.loopexit270
  %i.yv = icmp eq i64 %i.ys, 0
  br i1 %i.yv, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12566
  %i.yw = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ys, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12566 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, null
  br i1 %i.yx, label %.invoke1143, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.yy = ptrtoint ptr %i.yw to i64
  br label %bb.ed

.invoke1143:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172", %bb.ee, %.loopexit270, %bb.ea
  %i.yz = phi i64 [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172" ], [ 0, %.loopexit270 ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194 ], [ 4, %bb.ea ], [ 8, %bb.ee ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301 ]
  %i.za = phi i64 [ %i.zm, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172" ], [ %i.ys, %.loopexit270 ], [ %i.aah, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194 ], [ %i.ys, %bb.ea ], [ %i.zm, %bb.ee ], [ %i.ahq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.yz, i64 %i.za, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1144 unwind label %.split.thread

.cont1144:                                        ; preds = %.invoke1143
  unreachable

.loopexit:                                        ; preds = %bb.gq
  %i.zb = icmp eq i64 %i.zc, 0
  br i1 %i.zb, label %.loopexit270, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph469, %.loopexit
  %.sroa.0.0468 = phi i64 [ %i.lq, %.lr.ph469 ], [ %i.zc, %.loopexit ]
  %i.zc = add i64 %.sroa.0.0468, -1               ; 5 uses
  %i.zd = shl i64 %i.zc, 6                        ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.zc ; 2 uses
  br i1 %.first_iter, label %.split467, label %.invoke

bb.ed:                                            ; preds = %bb.eb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166
  %.sroa.10.0.i.i167 = phi i64 [ %i.yy, %bb.eb ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166 ]
  %i.zf = inttoptr i64 %.sroa.10.0.i.i167 to ptr  ; 14 uses
  %i.zg = icmp samesign ult i64 %i.yr, 2305843009213693952
  call void @llvm.assume(i1 %i.zg)
  %i.zh = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %.val38 = load i64, ptr %i.zi, align 8, !noundef !21 ; 2 uses
  %i.zj = icmp eq i64 %.val38, 0
  br i1 %i.zj, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171": ; preds = %bb.ed
  %.val = load ptr, ptr %i.zh, align 8, !nonnull !21, !noundef !21
  %i.zk = shl nuw nsw i64 %.val38, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.zk, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171", %bb.ed
  store ptr %i.zf, ptr %i.zh, align 8
  store i64 %i.yr, ptr %i.zi, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 2 uses
  store i64 %i.yr, ptr %i.zl, align 8
  %i.zm = mul i64 %i.yp, 8768                     ; 4 uses
  %or.cond.i.i.i.i.i173 = icmp samesign ugt i64 %i.yr, 4207742717543237
  br i1 %or.cond.i.i.i.i.i173, label %.invoke1143, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172"
  %i.zn = icmp eq i64 %i.zm, 0
  br i1 %i.zn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175", label %bb.ee

bb.ee:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12567
  %i.zo = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.zm, i64 noundef range(i64 1, 9) 8) #45, !noalias !12567 ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %.invoke1143, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175": ; preds = %bb.ee, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174
  %.sroa.10.0.i.i.i176 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174 ], [ %i.zo, %bb.ee ] ; 13 uses
  %.sroa.4.0.i.i.i177 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174 ], [ %i.yr, %bb.ee ]
  %i.zq = icmp samesign ule i64 %i.yr, %.sroa.4.0.i.i.i177
  call void @llvm.assume(i1 %i.zq)
  %.not242 = icmp eq i64 %i.yr, 0                 ; 7 uses
  br i1 %.not242, label %._crit_edge.i.i.i178, label %.lr.ph.i.i.i183.preheader

.lr.ph.i.i.i183.preheader:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175"
  %i.zr = add nsw i64 %i.yr, -1                   ; 2 uses
  %i.zs = add nsw i64 %i.yr, -2
  %xtraiter1534 = and i64 %i.zr, 7
  %i.zt = icmp ult i64 %i.zs, 7
  br i1 %i.zt, label %.lr.ph.i.i.i183.epil.preheader, label %.lr.ph.i.i.i183.preheader.new

.lr.ph.i.i.i183.preheader.new:                    ; preds = %.lr.ph.i.i.i183.preheader
  %unroll_iter1540 = and i64 %i.zr, -8
  br label %.lr.ph.i.i.i183

.lr.ph.i.i.i183.epil.preheader:                   ; preds = %.lr.ph.i.i.i183, %.lr.ph.i.i.i183.preheader
  %.sroa.0.08.i.i.i184.epil.init = phi ptr [ %.sroa.10.0.i.i.i176, %.lr.ph.i.i.i183.preheader ], [ %i.aac, %.lr.ph.i.i.i183 ]
  br label %.lr.ph.i.i.i183.epil

.lr.ph.i.i.i183.epil:                             ; preds = %.lr.ph.i.i.i183.epil, %.lr.ph.i.i.i183.epil.preheader
  %.sroa.0.08.i.i.i184.epil = phi ptr [ %i.zu, %.lr.ph.i.i.i183.epil ], [ %.sroa.0.08.i.i.i184.epil.init, %.lr.ph.i.i.i183.epil.preheader ] ; 4 uses
  %epil.iter1535 = phi i64 [ %epil.iter1535.next, %.lr.ph.i.i.i183.epil ], [ 0, %.lr.ph.i.i.i183.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.epil, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.epil, align 8, !noalias !12568
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 2192 ; 2 uses
  %epil.iter1535.next = add i64 %epil.iter1535, 1 ; 2 uses
  %epil.iter1535.cmp.not = icmp eq i64 %epil.iter1535.next, %xtraiter1534
  br i1 %epil.iter1535.cmp.not, label %._crit_edge.thread.i.i.i180, label %.lr.ph.i.i.i183.epil, !llvm.loop !12336

._crit_edge.thread.i.i.i180:                      ; preds = %.lr.ph.i.i.i183.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zu, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182, align 8, !noalias !12568
  br label %._crit_edge.i.i.i178

.lr.ph.i.i.i183:                                  ; preds = %.lr.ph.i.i.i183, %.lr.ph.i.i.i183.preheader.new
  %.sroa.0.08.i.i.i184 = phi ptr [ %.sroa.10.0.i.i.i176, %.lr.ph.i.i.i183.preheader.new ], [ %i.aac, %.lr.ph.i.i.i183 ] ; 17 uses
  %niter1541 = phi i64 [ 0, %.lr.ph.i.i.i183.preheader.new ], [ %niter1541.next.7, %.lr.ph.i.i.i183 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186, align 8, !noalias !12568
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zv, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.1, align 8, !noalias !12568
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zw, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.2, align 8, !noalias !12568
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zx, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.3, align 8, !noalias !12568
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zy, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.4, align 8, !noalias !12568
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zz, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.5, align 8, !noalias !12568
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aaa, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.6, align 8, !noalias !12568
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aab, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.7, align 8, !noalias !12568
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 17536 ; 2 uses
  %niter1541.next.7 = add i64 %niter1541, 8       ; 2 uses
  %niter1541.ncmp.7 = icmp eq i64 %niter1541.next.7, %unroll_iter1540
  br i1 %niter1541.ncmp.7, label %.lr.ph.i.i.i183.epil.preheader, label %.lr.ph.i.i.i183

._crit_edge.i.i.i178:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175", %._crit_edge.thread.i.i.i180
  %i.aad = getelementptr inbounds nuw i8, ptr %12, i64 208 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %12, i64 216 ; 2 uses
  %.val70 = load i64, ptr %i.aae, align 8, !noundef !21 ; 2 uses
  %i.aaf = icmp eq i64 %.val70, 0
  br i1 %i.aaf, label %bb.ef, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191": ; preds = %._crit_edge.i.i.i178
  %.val69 = load ptr, ptr %i.aad, align 8, !nonnull !21, !noundef !21
  %i.aag = mul nuw nsw i64 %.val70, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69, i64 noundef %i.aag, i64 noundef 8) #45
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge.i.i.i178, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191"
  store ptr %.sroa.10.0.i.i.i176, ptr %i.aad, align 8
  store i64 %i.yr, ptr %i.aae, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12569)
  call void @llvm.experimental.noalias.scope.decl(metadata !12570)
  call void @llvm.experimental.noalias.scope.decl(metadata !12571)
  call void @llvm.experimental.noalias.scope.decl(metadata !12572)
  br i1 %.not242, label %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i197, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194: ; preds = %bb.ef
  %i.aah = shl i64 %i.yp, 4                       ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12573
  %i.aai = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aah, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12573 ; 3 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %.invoke1143, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12574
  %i.aak = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aah, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12574 ; 2 uses
  %i.aal = icmp eq ptr %i.aak, null
  br i1 %i.aal, label %bb.eg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i196"

bb.eg:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.aah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i393 unwind label %.thread72.i392, !noalias !12575

.noexc.i393:                                      ; preds = %bb.eg
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i196": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195
  %i.aam = insertvalue { ptr, i64 } poison, ptr %i.aak, 0
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
.lr.ph69.i.i291:                                  ; preds = %.lr.ph69.i.i291.preheader, %middle.block1379
  %.sroa.016.068.i.i292 = phi i64 [ %i.afd, %middle.block1379 ], [ 0, %.lr.ph69.i.i291.preheader ] ; 5 uses
  %i.afd = add nuw i64 %.sroa.016.068.i.i292, 1   ; 2 uses
  %exitcond141.not.i.i293 = icmp eq i64 %.sroa.016.068.i.i292, %i.yr
  br i1 %exitcond141.not.i.i293, label %.split.us.i.invoke.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph69.i.i291
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.sroa.016.068.i.i292
  %i.aff = load i32, ptr %i.afe, align 4, !alias.scope !12585, !noalias !12586, !noundef !21
  %i.afg = zext i32 %i.aff to i64                 ; 3 uses
  %i.afh = icmp samesign ugt i64 %i.yr, %i.afg
  br i1 %i.afh, label %bb.ez, label %.split.us.i.invoke.i

bb.ez:                                            ; preds = %bb.ey
  %exitcond142.not.i.i294 = icmp eq i64 %.sroa.016.068.i.i292, %i.cu
  br i1 %exitcond142.not.i.i294, label %.split.us.i.invoke.i, label %vector.ph1371

vector.ph1371:                                    ; preds = %bb.ez
  %i.afi = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %i.afg ; 3 uses
  %i.afj = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89, i64 %.sroa.016.068.i.i292 ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 2176 ; 2 uses
  %i.afl = load i64, ptr %i.afk, align 8, !alias.scope !12611, !noalias !12612, !noundef !21
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 2176
  %i.afn = load i64, ptr %i.afm, align 8, !alias.scope !12613, !noalias !12614, !noundef !21
  %i.afo = add i64 %i.afn, %i.afl
  store i64 %i.afo, ptr %i.afk, align 8, !alias.scope !12615, !noalias !12599
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1371
  %index1373 = phi i64 [ 0, %vector.ph1371 ], [ %index.next1378.1, %vector.body1372 ] ; 4 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %index1373 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 16 ; 2 uses
  %wide.load1374 = load <4 x i32>, ptr %i.afp, align 8, !alias.scope !12597, !noalias !12599
  %wide.load1375 = load <4 x i32>, ptr %i.afq, align 8, !alias.scope !12597, !noalias !12599
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %index1373 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %wide.load1376 = load <4 x i32>, ptr %i.afr, align 8, !alias.scope !12616, !noalias !12614
  %wide.load1377 = load <4 x i32>, ptr %i.afs, align 8, !alias.scope !12616, !noalias !12614
  %i.aft = add <4 x i32> %wide.load1376, %wide.load1374
  %i.afu = add <4 x i32> %wide.load1377, %wide.load1375
  store <4 x i32> %i.aft, ptr %i.afp, align 8, !alias.scope !12597, !noalias !12599
  store <4 x i32> %i.afu, ptr %i.afq, align 8, !alias.scope !12597, !noalias !12599
  %index.next1378 = or disjoint i64 %index1373, 8 ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %index.next1378 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16 ; 2 uses
  %wide.load1374.1 = load <4 x i32>, ptr %i.afv, align 8, !alias.scope !12597, !noalias !12599
  %wide.load1375.1 = load <4 x i32>, ptr %i.afw, align 8, !alias.scope !12597, !noalias !12599
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %index.next1378 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %wide.load1376.1 = load <4 x i32>, ptr %i.afx, align 8, !alias.scope !12616, !noalias !12614
  %wide.load1377.1 = load <4 x i32>, ptr %i.afy, align 8, !alias.scope !12616, !noalias !12614
  %i.afz = add <4 x i32> %wide.load1376.1, %wide.load1374.1
  %i.aga = add <4 x i32> %wide.load1377.1, %wide.load1375.1
  store <4 x i32> %i.afz, ptr %i.afv, align 8, !alias.scope !12597, !noalias !12599
  store <4 x i32> %i.aga, ptr %i.afw, align 8, !alias.scope !12597, !noalias !12599
  %index.next1378.1 = add nuw nsw i64 %index1373, 16 ; 2 uses
  %i.agb = icmp eq i64 %index.next1378.1, 544
  br i1 %i.agb, label %middle.block1379, label %vector.body1372, !llvm.loop !12422

middle.block1379:                                 ; preds = %vector.body1372
  %exitcond143.not.i.i297 = icmp eq i64 %i.afd, %i.yr
  br i1 %exitcond143.not.i.i297, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17h9fe0d4366c49bd9fE.exit.i, label %.lr.ph69.i.i291

bb.fa:                                            ; preds = %.lr.ph.i.i287
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.sroa.014.066.i.i288
  %i.agd = load i32, ptr %i.agc, align 4, !alias.scope !12582, !noalias !12600, !noundef !21
  %i.age = zext i32 %i.agd to i64                 ; 3 uses
  %i.agf = icmp samesign ugt i64 %i.yr, %i.age
  br i1 %i.agf, label %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i, label %.split.us.i.invoke.i

_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i: ; preds = %bb.fa
  %i.agg = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %i.age ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 2184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.agg, i8 0, i64 2184, i1 false), !alias.scope !12597, !noalias !12599
  store float 3.402000e+38, ptr %i.agh, align 8, !alias.scope !12617, !noalias !12599
  %exitcond139.not.i.i290 = icmp eq i64 %i.afc, %i.acg
  br i1 %exitcond139.not.i.i290, label %.lr.ph69.i.i291.preheader, label %.lr.ph.i.i287

bb.fb:                                            ; preds = %.lr.ph36.split.i.i360
  %i.agi = add i64 %.sroa.010.034.i.i361, -1      ; 3 uses
  %i.agj = icmp ult i64 %i.agi, %i.yr
  br i1 %i.agj, label %bb.fd, label %.split.us.i.invoke.i

bb.fc:                                            ; preds = %.lr.ph36.split.i.i360, %bb.fd
  %.sroa.01.0.in.i.i362 = phi ptr [ %i.agk, %bb.fd ], [ %i.zf, %.lr.ph36.split.i.i360 ]
  %.sroa.01.0.i.i363 = load i32, ptr %.sroa.01.0.in.i.i362, align 4, !alias.scope !12585, !noalias !12586, !noundef !21 ; 2 uses
  %exitcond135.not.i.i364 = icmp eq i64 %.sroa.010.034.i.i361, %i.cu
  br i1 %exitcond135.not.i.i364, label %.split.us.i.invoke.i, label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.agi
  br label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  %i.agl = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89, i64 %.sroa.010.034.i.i361 ; 2 uses
  %i.agm = zext i32 %.sroa.01.0.i.i363 to i64     ; 3 uses
  %i.agn = icmp samesign ugt i64 %i.yr, %i.agm
  br i1 %i.agn, label %bb.ff, label %.split.us.i.invoke.i

bb.ff:                                            ; preds = %bb.fe
  %i.ago = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %i.agm ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 2176
  %i.agq = load i64, ptr %i.agp, align 8, !alias.scope !12587, !noalias !12588, !noundef !21
  %i.agr = icmp eq i64 %i.agq, 0
  br i1 %i.agr, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i, label %vector.ph1361

vector.ph1361:                                    ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.agl, i64 2192, i1 false), !alias.scope !12590, !noalias !12588
  %i.ags = load i64, ptr %i.acj, align 8, !alias.scope !12591, !noalias !12592, !noundef !21
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ago, i64 2176
  %i.agu = load i64, ptr %i.agt, align 8, !alias.scope !12593, !noalias !12594, !noundef !21
  %i.agv = add i64 %i.agu, %i.ags
  store i64 %i.agv, ptr %i.acj, align 8, !alias.scope !12595, !noalias !12596
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1361
  %index1363 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1368.1, %vector.body1362 ] ; 4 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1363 ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16 ; 2 uses
  %wide.load1364 = load <4 x i32>, ptr %i.agw, align 8, !noalias !12596
  %wide.load1365 = load <4 x i32>, ptr %i.agx, align 8, !noalias !12596
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %index1363 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 16
  %wide.load1366 = load <4 x i32>, ptr %i.agy, align 8, !alias.scope !12597, !noalias !12594
  %wide.load1367 = load <4 x i32>, ptr %i.agz, align 8, !alias.scope !12597, !noalias !12594
  %i.aha = add <4 x i32> %wide.load1366, %wide.load1364
  %i.ahb = add <4 x i32> %wide.load1367, %wide.load1365
  store <4 x i32> %i.aha, ptr %i.agw, align 8, !noalias !12596
  store <4 x i32> %i.ahb, ptr %i.agx, align 8, !noalias !12596
  %index.next1368 = or disjoint i64 %index1363, 8 ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next1368 ; 3 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16 ; 2 uses
  %wide.load1364.1 = load <4 x i32>, ptr %i.ahc, align 8, !noalias !12596
  %wide.load1365.1 = load <4 x i32>, ptr %i.ahd, align 8, !noalias !12596
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %index.next1368 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %wide.load1366.1 = load <4 x i32>, ptr %i.ahe, align 8, !alias.scope !12597, !noalias !12594
  %wide.load1367.1 = load <4 x i32>, ptr %i.ahf, align 8, !alias.scope !12597, !noalias !12594
  %i.ahg = add <4 x i32> %wide.load1366.1, %wide.load1364.1
  %i.ahh = add <4 x i32> %wide.load1367.1, %wide.load1365.1
  store <4 x i32> %i.ahg, ptr %i.ahc, align 8, !noalias !12596
  store <4 x i32> %i.ahh, ptr %i.ahd, align 8, !noalias !12596
  %index.next1368.1 = add nuw nsw i64 %index1363, 16 ; 2 uses
  %i.ahi = icmp eq i64 %index.next1368.1, 544
  br i1 %i.ahi, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i, label %vector.body1362, !llvm.loop !12425

_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i: ; preds = %vector.body1362
  %i.ahj = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a)
          to label %.noexc107.i369 unwind label %.thread45.thread81.loopexit.i367, !noalias !12575 ; 0 uses

.noexc107.i369:                                   ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h516f5b75452acef8E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12589
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i: ; preds = %.noexc107.i369, %bb.ff
  %exitcond136.not.i.i370 = icmp eq i64 %.sroa.010.034.i.i361, %i.yr
  br i1 %exitcond136.not.i.i370, label %.split.us.i.invoke.i, label %bb.fg

bb.fg:                                            ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.sroa.010.034.i.i361
  store i32 %.sroa.01.0.i.i363, ptr %i.ahk, align 4, !alias.scope !12585, !noalias !12586
  %exitcond137.not.i.i371 = icmp eq i64 %i.afa, %i.yr
  br i1 %exitcond137.not.i.i371, label %.lr.ph69.i.i291.preheader, label %.lr.ph36.split.i.i360

.lr.ph69.i.i291.preheader:                        ; preds = %bb.fg, %_ZN6brotli3enc9histogram14HistogramClear17h73b414b40f3c8b11E.exit.i.i
  br label %.lr.ph69.i.i291

.split.us.i.invoke.i:                             ; preds = %._crit_edge.us.i.i282, %bb.et, %bb.es, %bb.eq, %bb.ev, %.lr.ph.split.us37.i.i269, %bb.ew, %.lr.ph.split.us.us.i.i356, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i, %bb.fe, %bb.fc, %bb.fb, %bb.fa, %.lr.ph.i.i287, %bb.ez, %bb.ey, %.lr.ph69.i.i291
  %i.ahl = phi i64 [ %i.adv, %bb.ev ], [ %i.age, %bb.fa ], [ %i.cu, %bb.fc ], [ %i.aar, %.lr.ph.split.us.us.i.i356 ], [ %i.yr, %.lr.ph69.i.i291 ], [ %i.cu, %bb.ez ], [ %i.afg, %bb.ey ], [ %i.aar, %.lr.ph.i.i287 ], [ %i.agi, %bb.fb ], [ %i.agm, %bb.fe ], [ %i.yr, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i ], [ %i.aex, %bb.ew ], [ %i.aar, %.lr.ph.split.us37.i.i269 ], [ %i.yr, %._crit_edge.us.i.i282 ], [ %i.acr, %bb.et ], [ %i.acn, %bb.eq ], [ %i.cu, %bb.es ]
  %i.ahm = phi i64 [ %i.yr, %bb.ev ], [ %i.yr, %bb.fa ], [ %i.cu, %bb.fc ], [ %i.aar, %.lr.ph.split.us.us.i.i356 ], [ %i.yr, %.lr.ph69.i.i291 ], [ %i.cu, %bb.ez ], [ %i.yr, %bb.ey ], [ %i.aar, %.lr.ph.i.i287 ], [ %i.yr, %bb.fb ], [ %i.yr, %bb.fe ], [ %i.yr, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i ], [ %i.yr, %bb.ew ], [ %i.aar, %.lr.ph.split.us37.i.i269 ], [ %i.yr, %._crit_edge.us.i.i282 ], [ %i.yr, %bb.et ], [ %i.yr, %bb.eq ], [ %i.cu, %bb.es ]
  %i.ahn = phi ptr [ @1242, %bb.ev ], [ @1235, %bb.fa ], [ @1238, %bb.fc ], [ @1241, %.lr.ph.split.us.us.i.i356 ], [ @1231, %.lr.ph69.i.i291 ], [ @1233, %bb.ez ], [ @1232, %bb.ey ], [ @1234, %.lr.ph.i.i287 ], [ @1237, %bb.fb ], [ @1239, %bb.fe ], [ @1240, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit40.i.i ], [ @1242, %bb.ew ], [ @1241, %.lr.ph.split.us37.i.i269 ], [ @1240, %._crit_edge.us.i.i282 ], [ @1239, %bb.et ], [ @1237, %bb.eq ], [ @1238, %bb.es ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ahl, i64 noundef %i.ahm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahn) #46
          to label %.split.us.i.cont.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i258, !noalias !12575

.split.us.i.cont.i:                               ; preds = %.split.us.i.invoke.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17h9fe0d4366c49bd9fE.exit.i: ; preds = %middle.block1379, %.preheader.i.i372.thread
  %i.aho = icmp eq i64 %i.aar, 0
  br i1 %i.aho, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i298"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i298": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17h9fe0d4366c49bd9fE.exit.i
  %i.ahp = shl nuw nsw i64 %i.aar, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.aaq, i64 noundef %i.ahp, i64 noundef 4) #45, !noalias !12575
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i298", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17h9fe0d4366c49bd9fE.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12618)
  br i1 %.not242, label %bb.gp, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299"
  %i.ahq = shl i64 %i.yp, 4                       ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12619
  %i.ahr = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ahq, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12619 ; 7 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %.invoke1143, label %.lr.ph.i117.i302

.lr.ph.i117.i302:                                 ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ahr, i8 -1, i64 %i.ahq, i1 false), !noalias !12620
  %i.aht = or disjoint i64 %i.yr, 1
  br label %bb.fw

._crit_edge.i.i320:                               ; preds = %bb.gd
  %i.ahu = zext i32 %.sroa.0.3.i.i318.1 to i64    ; 3 uses
  %.not42.i.i321 = icmp eq i32 %.sroa.0.3.i.i318.1, 0
  br i1 %.not42.i.i321, label %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge.i.i320
  %i.ahv = mul nuw nsw i64 %i.ahu, 2192           ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12621
  %i.ahw = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ahv, i64 noundef range(i64 1, 9) 8) #45, !noalias !12621 ; 5 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  br i1 %i.ahx, label %bb.fi, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i.i.i"

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ahv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i.i353 unwind label %.thread29.i.i313, !noalias !12620

.noexc.i.i353:                                    ; preds = %bb.fi
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i.i.i": ; preds = %bb.fh
  %.not.i.i.i322 = icmp eq i32 %.sroa.0.3.i.i318.1, 1
  br i1 %.not.i.i.i322, label %._crit_edge.thread.i.i.i.i.i.i327, label %.lr.ph.i.i.i.i.i.i323.preheader

.lr.ph.i.i.i.i.i.i323.preheader:                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i.i.i"
  %i.ahy = add nsw i64 %i.ahu, -1                 ; 2 uses
  %xtraiter1542 = and i64 %i.ahy, 7               ; 3 uses
  %i.ahz = add i32 %.sroa.0.3.i.i318.1, -2
  %i.aia = icmp ult i32 %i.ahz, 7
  br i1 %i.aia, label %.lr.ph.i.i.i.i.i.i323.epil.preheader, label %.lr.ph.i.i.i.i.i.i323.preheader.new

.lr.ph.i.i.i.i.i.i323.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i.i323.preheader
  %unroll_iter1547 = and i64 %i.ahy, -8
  br label %.lr.ph.i.i.i.i.i.i323

._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i323
  %lcmp.mod1544.not = icmp eq i64 %xtraiter1542, 0
  br i1 %lcmp.mod1544.not, label %._crit_edge.thread.i.i.i.i.i.i327, label %.lr.ph.i.i.i.i.i.i323.epil.preheader

.lr.ph.i.i.i.i.i.i323.epil.preheader:             ; preds = %._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i323.preheader
  %.sroa.0.08.i.i.i.i.i.i324.epil.init = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i323.preheader ], [ %i.ail, %._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa ]
  %lcmp.mod1546 = icmp ne i64 %xtraiter1542, 0
  call void @llvm.assume(i1 %lcmp.mod1546)
  br label %.lr.ph.i.i.i.i.i.i323.epil

.lr.ph.i.i.i.i.i.i323.epil:                       ; preds = %.lr.ph.i.i.i.i.i.i323.epil, %.lr.ph.i.i.i.i.i.i323.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i324.epil = phi ptr [ %i.aib, %.lr.ph.i.i.i.i.i.i323.epil ], [ %.sroa.0.08.i.i.i.i.i.i324.epil.init, %.lr.ph.i.i.i.i.i.i323.epil.preheader ] ; 3 uses
  %epil.iter1543 = phi i64 [ %epil.iter1543.next, %.lr.ph.i.i.i.i.i.i323.epil ], [ 0, %.lr.ph.i.i.i.i.i.i323.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i324.epil, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil, align 8, !noalias !12622
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324.epil, i64 2192 ; 2 uses
  %epil.iter1543.next = add i64 %epil.iter1543, 1 ; 2 uses
  %epil.iter1543.cmp.not = icmp eq i64 %epil.iter1543.next, %xtraiter1542
  br i1 %epil.iter1543.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i327, label %.lr.ph.i.i.i.i.i.i323.epil, !llvm.loop !12442

._crit_edge.thread.i.i.i.i.i.i327:                ; preds = %._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i323.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i328 = phi ptr [ %i.ahw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i.i.i.i" ], [ %i.ail, %._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa ], [ %i.aib, %.lr.ph.i.i.i.i.i.i323.epil ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i.i.i328, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i328, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12622
  %i.aic = insertvalue { ptr, i64 } poison, ptr %i.ahw, 0
  %i.aid = insertvalue { ptr, i64 } %i.aic, i64 %i.ahu, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i

.lr.ph.i.i.i.i.i.i323:                            ; preds = %.lr.ph.i.i.i.i.i.i323, %.lr.ph.i.i.i.i.i.i323.preheader.new
  %.sroa.0.08.i.i.i.i.i.i324 = phi ptr [ %i.ahw, %.lr.ph.i.i.i.i.i.i323.preheader.new ], [ %i.ail, %.lr.ph.i.i.i.i.i.i323 ] ; 17 uses
  %niter1548 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i323.preheader.new ], [ %niter1548.next.7, %.lr.ph.i.i.i.i.i.i323 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i.i.i324, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12622
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aie, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1, align 8, !noalias !12622
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aif, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2, align 8, !noalias !12622
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aig, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.3, align 8, !noalias !12622
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aih, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.4, align 8, !noalias !12622
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aii, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.5, align 8, !noalias !12622
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aij, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.6, align 8, !noalias !12622
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.aik, i8 0, i64 2184, i1 false), !noalias !12620
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.7, align 8, !noalias !12622
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i324, i64 17536 ; 3 uses
  %niter1548.next.7 = add i64 %niter1548, 8       ; 2 uses
  %niter1548.ncmp.7 = icmp eq i64 %niter1548.next.7, %unroll_iter1547
  br i1 %niter1548.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.i327.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i323

.thread29.i.i313:                                 ; preds = %.invoke.i.i309, %bb.fi
  %lpad.thr_comm.split-lp.i.i314 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315"

_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i: ; preds = %._crit_edge.thread.i.i.i.i.i.i327, %._crit_edge.i.i320
  %.pn.i71.i.i329 = phi { ptr, i64 } [ %i.aid, %._crit_edge.thread.i.i.i.i.i.i327 ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %._crit_edge.i.i320 ] ; 2 uses
  %i.aim = extractvalue { ptr, i64 } %.pn.i71.i.i329, 0 ; 10 uses
  %i.ain = extractvalue { ptr, i64 } %.pn.i71.i.i329, 1 ; 11 uses
  br label %bb.fp

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i340": ; preds = %bb.fv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ahr, i64 noundef %i.ahq, i64 noundef 4) #45, !noalias !12620
  %i.aio = zext i32 %.sroa.0.2.i.i338 to i64      ; 3 uses
  %.not84.i.i341 = icmp eq i32 %.sroa.0.2.i.i338, 0
  br i1 %.not84.i.i341, label %._crit_edge80.i.i347, label %.lr.ph79.i.i342

.lr.ph79.i.i342:                                  ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i340"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aim) ]
  %i.aip = add nuw nsw i64 %i.ain, 1
  %14 = or disjoint i64 %i.yr, 1
  br label %bb.fj

._crit_edge80.i.i347:                             ; preds = %bb.fo, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i340"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aim) ]
  %i.aiq = icmp eq i64 %i.ain, 0
  br i1 %i.aiq, label %bb.gp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i348"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i348": ; preds = %._crit_edge80.i.i347
  %i.air = mul nuw nsw i64 %i.ain, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.aim, i64 noundef %i.air, i64 noundef 8) #45, !noalias !12620
  br label %bb.gp

bb.fj:                                            ; preds = %bb.fo, %.lr.ph79.i.i342
  %i.ais = phi i64 [ 1, %.lr.ph79.i.i342 ], [ %i.aix, %bb.fo ] ; 5 uses
  %.sroa.029.078.i.i343 = phi i64 [ 0, %.lr.ph79.i.i342 ], [ %i.ais, %bb.fo ] ; 4 uses
  %exitcond106.not.i.i344 = icmp eq i64 %i.ais, %i.aip
  br i1 %exitcond106.not.i.i344, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i343, i64 noundef %i.ain, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1255) #46
          to label %bb.fl unwind label %.thread.i.i334, !noalias !12620

bb.fl:                                            ; preds = %bb.ft, %bb.fn, %bb.fk
  unreachable

bb.fm:                                            ; preds = %bb.fj
  %exitcond107.not.i.i345 = icmp eq i64 %i.ais, %14
  br i1 %exitcond107.not.i.i345, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i343, i64 noundef %i.yr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #46
          to label %bb.fl unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349", !noalias !12620

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349": ; preds = %bb.fn
  %i.ait = landingpad { ptr, i32 }
          cleanup
  %i.aiu = mul nuw nsw i64 %i.ain, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aim, i64 noundef %i.aiu, i64 noundef 8) #45, !noalias !12620
  br label %.thread.thread144

bb.fo:                                            ; preds = %bb.fm
  %i.aiv = getelementptr inbounds nuw [2192 x i8], ptr %i.aim, i64 %.sroa.029.078.i.i343
  %i.aiw = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %.sroa.029.078.i.i343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.aiw, ptr noundef nonnull align 8 dereferenceable(2192) %i.aiv, i64 2192, i1 false), !noalias !12623
  %i.aix = add nuw nsw i64 %i.ais, 1
  %exitcond108.not.i.i346 = icmp eq i64 %i.ais, %i.aio
  br i1 %exitcond108.not.i.i346, label %._crit_edge80.i.i347, label %bb.fj

bb.fp:                                            ; preds = %bb.fv, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i
  %i.aiy = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %i.ajm, %bb.fv ] ; 4 uses
  %.sroa.0.173.i.i330 = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %.sroa.0.2.i.i338, %bb.fv ] ; 4 uses
  %.sroa.027.072.i.i331 = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %i.aiy, %bb.fv ]
  %exitcond104.not.i.i332 = icmp eq i64 %i.aiy, %i.aht
  br i1 %exitcond104.not.i.i332, label %.invoke180.i.i333, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.sroa.027.072.i.i331 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !alias.scope !12624, !noalias !12625, !noundef !21
  %i.ajb = zext i32 %i.aja to i64                 ; 4 uses
  %i.ajc = icmp samesign ugt i64 %i.yr, %i.ajb
  br i1 %i.ajc, label %bb.fr, label %.invoke180.i.i333

bb.fr:                                            ; preds = %bb.fq
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ajb ; 2 uses
  %i.aje = load i32, ptr %i.ajd, align 4, !noalias !12620, !noundef !21 ; 2 uses
  %i.ajf = icmp eq i32 %i.aje, %.sroa.0.173.i.i330
  br i1 %i.ajf, label %bb.fs, label %bb.fv

.invoke180.i.i333:                                ; preds = %bb.fq, %bb.fp
  %.ph682 = phi i64 [ %i.yr, %bb.fp ], [ %i.ajb, %bb.fq ]
  %.ph683 = phi ptr [ @1257, %bb.fp ], [ @1258, %bb.fq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph682, i64 noundef %i.yr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph683) #46
          to label %.cont181.i.i337 unwind label %.thread.i.i334, !noalias !12620

.cont181.i.i337:                                  ; preds = %.invoke180.i.i333
  unreachable

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aim) ]
  %i.ajg = zext i32 %.sroa.0.173.i.i330 to i64    ; 3 uses
  %i.ajh = icmp ugt i64 %i.ain, %i.ajg
  br i1 %i.ajh, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ajg, i64 noundef %i.ain, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #46
          to label %bb.fl unwind label %.thread.thread.i.i350, !noalias !12620

bb.fu:                                            ; preds = %bb.fs
  %i.aji = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %i.ajb
  %i.ajj = getelementptr inbounds nuw [2192 x i8], ptr %i.aim, i64 %i.ajg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.ajj, ptr noundef nonnull align 8 dereferenceable(2192) %i.aji, i64 2192, i1 false), !noalias !12623
  %i.ajk = add i32 %.sroa.0.173.i.i330, 1
  %.pre.i.i352 = load i32, ptr %i.ajd, align 4, !noalias !12620
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fr
  %i.ajl = phi i32 [ %.pre.i.i352, %bb.fu ], [ %i.aje, %bb.fr ]
  %.sroa.0.2.i.i338 = phi i32 [ %i.ajk, %bb.fu ], [ %.sroa.0.173.i.i330, %bb.fr ] ; 3 uses
  store i32 %i.ajl, ptr %i.aiz, align 4, !alias.scope !12624, !noalias !12625
  %i.ajm = add i64 %i.aiy, 1
  %exitcond105.not.i.i339 = icmp eq i64 %i.aiy, %i.yr
  br i1 %exitcond105.not.i.i339, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i340", label %bb.fp

bb.fw:                                            ; preds = %bb.gd, %.lr.ph.i117.i302
  %i.ajn = phi i64 [ 1, %.lr.ph.i117.i302 ], [ %i.akf, %bb.gd ] ; 4 uses
  %.sroa.0.070.i.i306 = phi i32 [ 0, %.lr.ph.i117.i302 ], [ %.sroa.0.3.i.i318.1, %bb.gd ] ; 3 uses
  %.sroa.025.069.i.i307 = phi i64 [ 0, %.lr.ph.i117.i302 ], [ %i.ajw, %bb.gd ]
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.sroa.025.069.i.i307
  %i.ajp = load i32, ptr %i.ajo, align 4, !alias.scope !12624, !noalias !12625, !noundef !21
  %i.ajq = zext i32 %i.ajp to i64                 ; 3 uses
  %i.ajr = icmp samesign ugt i64 %i.yr, %i.ajq
  br i1 %i.ajr, label %bb.fx, label %.invoke.i.i309

bb.fx:                                            ; preds = %bb.fw
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ajq ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 4, !noalias !12620, !noundef !21
  %i.aju = icmp eq i32 %i.ajt, -1
  br i1 %i.aju, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  store i32 %.sroa.0.070.i.i306, ptr %i.ajs, align 4, !noalias !12620
  %i.ajv = add i32 %.sroa.0.070.i.i306, 1
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.0.3.i.i318 = phi i32 [ %i.ajv, %bb.fy ], [ %.sroa.0.070.i.i306, %bb.fx ] ; 3 uses
  %i.ajw = add nuw nsw i64 %i.ajn, 1              ; 2 uses
  %exitcond102.not.i.i308.1 = icmp eq i64 %i.ajn, %i.yr
  br i1 %exitcond102.not.i.i308.1, label %.invoke.i.i309, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.ajn
  %i.ajy = load i32, ptr %i.ajx, align 4, !alias.scope !12624, !noalias !12625, !noundef !21
  %i.ajz = zext i32 %i.ajy to i64                 ; 3 uses
  %i.aka = icmp samesign ugt i64 %i.yr, %i.ajz
  br i1 %i.aka, label %bb.gb, label %.invoke.i.i309

bb.gb:                                            ; preds = %bb.ga
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ajz ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 4, !noalias !12620, !noundef !21
  %i.akd = icmp eq i32 %i.akc, -1
  br i1 %i.akd, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  store i32 %.sroa.0.3.i.i318, ptr %i.akb, align 4, !noalias !12620
  %i.ake = add i32 %.sroa.0.3.i.i318, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.sroa.0.3.i.i318.1 = phi i32 [ %i.ake, %bb.gc ], [ %.sroa.0.3.i.i318, %bb.gb ] ; 5 uses
  %i.akf = add nuw nsw i64 %i.ajn, 2
  %exitcond103.not.i.i319.1 = icmp eq i64 %i.ajw, %i.yr
  br i1 %exitcond103.not.i.i319.1, label %._crit_edge.i.i320, label %bb.fw

.invoke.i.i309:                                   ; preds = %bb.ga, %bb.fz, %bb.fw
  %.ph.i310 = phi i64 [ %i.ajz, %bb.ga ], [ %i.ajq, %bb.fw ], [ %i.yr, %bb.fz ]
  %.ph166.i312 = phi ptr [ @1262, %bb.ga ], [ @1262, %bb.fw ], [ @1261, %bb.fz ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i310, i64 noundef %i.yr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i312) #46
          to label %.cont.i.i317 unwind label %.thread29.i.i313, !noalias !12620

.cont.i.i317:                                     ; preds = %.invoke.i.i309
  unreachable

bb.ge:                                            ; preds = %.thread.i.i334
  br i1 %i.akg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %.thread.thread144

.thread.i.i334:                                   ; preds = %.invoke180.i.i333, %bb.fk
  %i.akg = phi i1 [ false, %bb.fk ], [ true, %.invoke180.i.i333 ] ; 2 uses
  %lpad.thr_comm.i.i335 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.akh = icmp eq i64 %i.ain, 0
  br i1 %i.akh, label %bb.ge, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336"

.thread.thread.i.i350:                            ; preds = %bb.ft
  %i.aki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akj = icmp eq i64 %i.ain, 0
  br i1 %i.akj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351": ; preds = %.thread.thread.i.i350
  %i.akk = mul nuw nsw i64 %i.ain, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aim, i64 noundef %i.akk, i64 noundef 8) #45, !noalias !12620
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336": ; preds = %.thread.i.i334
  %i.akl = mul nuw nsw i64 %i.ain, 2192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aim) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aim, i64 noundef %i.akl, i64 noundef 8) #45, !noalias !12620
  br i1 %i.akg, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %.thread.thread144

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351", %.thread.thread.i.i350, %bb.ge, %.thread29.i.i313
  %.pn2033169.i.i316 = phi { ptr, i32 } [ %i.aki, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351" ], [ %i.aki, %.thread.thread.i.i350 ], [ %lpad.thr_comm.split-lp.i.i314, %.thread29.i.i313 ], [ %lpad.thr_comm.i.i335, %bb.ge ], [ %lpad.thr_comm.i.i335, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahr, i64 noundef %i.ahq, i64 noundef 4) #45, !noalias !12620
  br label %.thread.thread144

._crit_edge.i239:                                 ; preds = %bb.gi
  %i.akm = icmp samesign ugt i64 %.sroa.08.0157.i232, %i.yr
  br i1 %i.akm, label %.invoke.i386, label %bb.gf, !prof !30

.invoke.i386:                                     ; preds = %bb.gf, %._crit_edge.i239
  %i.akn = phi i64 [ %.sroa.08.0157.i232, %._crit_edge.i239 ], [ %.sroa.0.0158.i231, %bb.gf ]
  %i.ako = phi i64 [ %i.yr, %._crit_edge.i239 ], [ %i.aar, %bb.gf ] ; 2 uses
  %i.akp = phi ptr [ @1264, %._crit_edge.i239 ], [ @1263, %bb.gf ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.akn, i64 noundef %i.ako, i64 noundef %i.ako, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akp) #46
          to label %.cont.i387 unwind label %.loopexit.split-lp.loopexit.split-lp.i248, !noalias !12575

.cont.i387:                                       ; preds = %.invoke.i386
  unreachable

bb.gf:                                            ; preds = %._crit_edge.i239
  %i.akq = icmp ugt i64 %.sroa.0.0158.i231, %i.aar
  br i1 %i.akq, label %.invoke.i386, label %bb.gg, !prof !30

bb.gg:                                            ; preds = %bb.gf
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %.sroa.08.0157.i232
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.sroa.0.0158.i231
  %i.akt = sub nuw nsw i64 %i.aar, %.sroa.0.0158.i231
  %i.aku = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i176, i64 noundef %i.yr, ptr noalias noundef nonnull align 4 %i.aap, i64 noundef %i.yr, ptr noalias noundef nonnull align 4 %i.akr, i64 noundef %i.abe, ptr noalias noundef nonnull align 4 %i.aks, i64 noundef %i.akt, ptr noalias noundef nonnull align 4 %i.aas, i64 noundef 2049, i64 noundef %.sroa.0.0.i92.i234, i64 noundef %.sroa.0.0.i92.i234, i64 noundef 256, i64 noundef 2048)
          to label %bb.gh unwind label %.loopexit.i240, !noalias !12580

bb.gh:                                            ; preds = %bb.gg
  %i.akv = add nuw nsw i64 %i.aku, %.sroa.0.0158.i231 ; 2 uses
  %i.akw = add nuw nsw i64 %.sroa.08.0157.i232, 64 ; 2 uses
  %i.akx = icmp samesign ult i64 %i.akw, %i.yr
  %indvars.iv.next.i242 = add i64 %indvars.iv.i230, -64
  br i1 %i.akx, label %.lr.ph156.i229, label %._crit_edge160.i243

end_hunk_2
