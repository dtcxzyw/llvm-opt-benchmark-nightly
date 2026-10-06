Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11075
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility17hec8a56f501fd5b6dE":bb.a
  %i.ah = lshr i64 %i.ag, 57
  %i.ai = trunc nuw nsw i64 %i.ah to i8           ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !85638, !noalias !85639, !noundef !41 ; 3 uses
  %i.al = load ptr, ptr %i.z, align 8, !alias.scope !85638, !noalias !85639, !nonnull !41, !noundef !41 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.ai, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.be, %bb.g ]
  %.pn.i.i = phi i64 [ %i.ag, %bb.d ], [ %i.bf, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ak     ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !85640 ; 2 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i = phi i16 [ %i.bd, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.01.0.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.ak
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -32
  %.val3.i.i.i = load i32, ptr %i.av, align 4, !noalias !85641, !noundef !41
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  %.val4.i.i.i = load i32, ptr %i.aw, align 4, !noalias !85641
  %i.ax = icmp eq i32 %.val3.i.i.i, %i.w
  %i.ay = icmp eq i32 %.val4.i.i.i, %i.y
  %spec.select.i.i.i.i.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %spec.select.i.i.i.i.i, label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit", label %bb.f, !prof !48

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !44

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bc = add i16 %.sroa.06.0.i33.i.i, -1
  %i.bd = and i16 %i.bc, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.be = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.bf = add i64 %.sroa.01.0.i.i.i, %i.be
  br label %bb.e

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !85642, !noalias !85643, !noundef !41
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %bb.j, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.bj = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h63aa24be94c81c84E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i1 noundef zeroext true), !noalias !85644 ; 0 uses
  %.val.i.i.pre = load ptr, ptr %i.z, align 8, !alias.scope !85645, !noalias !85646
  %.val4.i.i.pre = load i64, ptr %i.aj, align 8, !alias.scope !85645, !noalias !85646
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val4.i.i = phi i64 [ %.val4.i.i.pre, %bb.i ], [ %i.ak, %bb.h ] ; 4 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %bb.i ], [ %i.al, %bb.h ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85645)
  %.sroa.0.04.i.i.i.i = and i64 %.val4.i.i, %i.ag ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !85647
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.not.i.not6.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !67

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.04.i.i.i.i, %bb.j ]
  %i.bn = phi i64 [ %i.bo, %.lr.ph.i.i.i.i ], [ 0, %bb.j ]
  %i.bo = add i64 %i.bn, 16                       ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.0.07.i.i.i.i
  %.sroa.0.0.i.i.i.i = and i64 %i.bp, %.val4.i.i  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !85647
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !68

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.bm, %bb.j ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.bu
  %i.bw = and i64 %i.bv, %.val4.i.i               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !85648, !noundef !41 ; 2 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.k, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h3c1b37413f1b324cE.exit.i", !prof !44

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !85648
  %i.ca = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = icmp ne i16 %i.cb, 0
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cb, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !85648
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h3c1b37413f1b324cE.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h3c1b37413f1b324cE.exit.i": ; preds = %bb.k, %._crit_edge.i.i.i.i
  %i.cf = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.by, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.ce, %bb.k ], [ %i.bw, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.ch = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.ci = and i64 %i.ch, %.val4.i.i
  store i8 %i.ai, ptr %i.cg, align 1, !noalias !85648
  %i.cj = getelementptr i8, ptr %.val.i.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.ai, ptr %i.ck, align 1, !noalias !85648
  %i.cl = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.cm = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.cl ; 4 uses
  %i.cn = and i8 %i.cf, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -32
  store i32 %i.w, ptr %i.cp, align 8, !noalias !85649
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.cm, i64 -28
  store i32 %i.y, ptr %.sroa.415.0..sroa_idx.i, align 4, !noalias !85649
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds i8, ptr %i.cm, i64 -24
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i29, align 8, !noalias !85649
  %i.cq = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !85645, !noalias !85646
  %i.cr = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.co, i64 0
  %i.cs = sub <2 x i64> %i.cq, %i.cr
  store <2 x i64> %i.cs, ptr %i.bg, align 8, !alias.scope !85645, !noalias !85646
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit": ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h3c1b37413f1b324cE.exit.i"
  %.pn.i = phi ptr [ %i.cm, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h3c1b37413f1b324cE.exit.i" ], [ %i.au, %.lr.ph.i.i ] ; 7 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 5 uses
  %i.ct = load i64, ptr %.sroa.0.0.i, align 8, !range !104, !noundef !41 ; 4 uses
  %i.cu = xor i64 %i.ct, -9223372036854775808     ; 3 uses
  %i.cv = icmp slt i64 %i.ct, 0
  %i.cw = select i1 %i.cv, i64 %i.cu, i64 3
  switch i64 %i.cw, label %bb.l [
    i64 0, label %.loopexit
    i64 1, label %.thread
    i64 2, label %bb.m
    i64 3, label %bb.n
  ]

bb.l:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit"
  unreachable

bb.m:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit"
  br label %.thread

.thread:                                          ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit", %bb.m
  %.sroa.79.0.ph = phi i64 [ 8, %bb.m ], [ 4, %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit" ]
  %i.cx = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.79.0.ph
  br label %.lr.ph.i

bb.n:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h54c5454be5cf0854E.exit"
  %i.cz = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.dc = load i64, ptr %i.db, align 8, !noundef !41 ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85650)
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.n
  %i.dg = phi ptr [ %i.cy, %.thread ], [ %i.de, %bb.n ]
  %.sroa.08.0435 = phi ptr [ %i.cx, %.thread ], [ %i.da, %bb.n ]
  %i.dh = load ptr, ptr %i.m, align 8, !alias.scope !85650, !noalias !85651, !nonnull !41, !noundef !41 ; 2 uses
  %i.di = load i64, ptr %i.n, align 8, !alias.scope !85650, !noalias !85651, !noundef !41 ; 4 uses
  %i.dj = icmp ugt i64 %i.di, %i.k
  %i.dk = getelementptr inbounds nuw [528 x i8], ptr %i.dh, i64 %i.k ; 11 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 272
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 276
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 280
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 136 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 144 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br i1 %i.dj, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility28_$u7b$$u7b$closure$u7d$$u7d$17h862bb30a17aeae2dE.exit.us.i"
  %i.dv = phi ptr [ %i.dw, %"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility28_$u7b$$u7b$closure$u7d$$u7d$17h862bb30a17aeae2dE.exit.us.i" ], [ %.sroa.08.0435, %.lr.ph.i ] ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85653
  %i.dx = load i32, ptr %i.dv, align 4, !alias.scope !85652, !noalias !85654, !noundef !41
  %i.dy = zext i32 %i.dx to i64                   ; 3 uses
  %i.dz = icmp ugt i64 %i.di, %i.dy
  br i1 %i.dz, label %bb.o, label %.split.us.i

bb.o:                                             ; preds = %.lr.ph.split.us.i
  %i.ea = getelementptr inbounds nuw [528 x i8], ptr %i.dh, i64 %i.dy ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85655)
  call void @llvm.experimental.noalias.scope.decl(metadata !85656)
  %i.eb = load i32, ptr %i.dl, align 8, !range !164, !alias.scope !85655, !noalias !85657, !noundef !41
  %i.ec = icmp eq i32 %i.eb, 2
  br i1 %i.ec, label %bb.p, label %"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility28_$u7b$$u7b$closure$u7d$$u7d$17h862bb30a17aeae2dE.exit.us.i"

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr %i.dm, align 4, !alias.scope !85655, !noalias !85657, !noundef !41 ; 12 uses
  %i.ee = load i32, ptr %i.dn, align 8, !alias.scope !85655, !noalias !85657, !noundef !41 ; 12 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  %i.eg = load i32, ptr %i.ef, align 8, !range !164, !alias.scope !85656, !noalias !85658, !noundef !41
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.q, label %"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility28_$u7b$$u7b$closure$u7d$$u7d$17h862bb30a17aeae2dE.exit.us.i"

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 276
  %i.ej = load i32, ptr %i.ei, align 4, !alias.scope !85656, !noalias !85658, !noundef !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  %i.el = load i32, ptr %i.ek, align 8, !alias.scope !85656, !noalias !85658, !noundef !41
  %i.em = icmp ne i32 %i.ed, %i.ej
  %i.en = icmp ne i32 %i.ee, %i.el
  %or.cond.i.i.us.i = or i1 %i.em, %i.en
  br i1 %or.cond.i.i.us.i, label %"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility28_$u7b$$u7b$closure$u7d$$u7d$17h862bb30a17aeae2dE.exit.us.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !85659)
  %i.eo = load i64, ptr %i.do, align 8, !range !139, !alias.scope !85660, !noalias !85657, !noundef !41 ; 3 uses
  %i.ep = icmp ne i64 %i.eo, 4
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.eo, -2
  %.inv.i.i.i.us.i = icmp samesign ult i64 %i.eo, 2
  %i.er = select i1 %.inv.i.i.i.us.i, i64 2, i64 %i.eq ; 2 uses
  switch i64 %i.er, label %.split89.us.i [
    i64 0, label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i"
    i64 1, label %bb.z
    i64 2, label %bb.x
    i64 3, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !85661)
  %i.es = load i64, ptr %i.dp, align 8, !alias.scope !85662, !noalias !85657, !noundef !41
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i.i.i.us.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = zext i32 %i.ee to i64
  %i.ev = mul i64 %i.eu, -1065810590584100411     ; 2 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85663)
  call void @llvm.experimental.noalias.scope.decl(metadata !85664)
  %i.ex = lshr i64 %i.ew, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8
  %i.ez = load i64, ptr %i.dr, align 8, !alias.scope !85665, !noalias !85666, !noundef !41 ; 2 uses
  %i.fa = load ptr, ptr %i.dq, align 8, !alias.scope !85665, !noalias !85666, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.us.i = insertelement <16 x i8> poison, i8 %i.ey, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.us.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.us.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.sroa.9.0.i.i.i.i.i.i.us.i = phi i64 [ 0, %bb.t ], [ %i.fr, %bb.w ]
  %.pn.i.i.i.i.i.us.i = phi i64 [ %i.ew, %bb.t ], [ %i.fs, %bb.w ]
  %.sroa.01.0.i.i.i.i.i.i.us.i = and i64 %.pn.i.i.i.i.i.us.i, %i.ez ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.01.0.i.i.i.i.i.i.us.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.us.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !85667 ; 2 uses
  %i.fc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.us.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.us.i
  %i.fd = bitcast <16 x i1> %i.fc to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.us.i = icmp eq i16 %i.fd, 0
  br i1 %.not.i.not32.i.i.i.i.i.us.i, label %._crit_edge.i.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i.i.i.i.us.i = phi i16 [ %i.fn, %bb.v ], [ %i.fd, %bb.u ] ; 3 uses
  %i.fe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.us.i, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = add i64 %.sroa.01.0.i.i.i.i.i.i.us.i, %i.ff
  %i.fh = and i64 %i.fg, %i.ez
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = getelementptr inbounds [136 x i8], ptr %i.fa, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -136
  %.val3.i.i.i.i.i.i.us.i = load i32, ptr %i.fk, align 4, !noalias !85668, !noundef !41
  %i.fl = icmp eq i32 %i.ee, %.val3.i.i.i.i.i.i.us.i
  br i1 %i.fl, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h31c270f1563994edE.exit.i.i.i.i.us.i", label %bb.v, !prof !48

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.us.i
  %i.fm = add i16 %.sroa.06.0.i33.i.i.i.i.i.us.i, -1
  %i.fn = and i16 %i.fm, %.sroa.06.0.i33.i.i.i.i.i.us.i ; 2 uses
  %.not.i.not.i.i.i.i.i.us.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.not.i.i.i.i.i.us.i, label %._crit_edge.i.i.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i

._crit_edge.i.i.i.i.i.us.i:                       ; preds = %bb.v, %bb.u
  %i.fo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.us.i, splat (i8 -1)
  %i.fp = bitcast <16 x i1> %i.fo to i16
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %bb.w, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h31c270f1563994edE.exit.i.i.i.i.us.i", !prof !44

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i
  %i.fr = add i64 %.sroa.9.0.i.i.i.i.i.i.us.i, 16 ; 2 uses
  %i.fs = add i64 %.sroa.01.0.i.i.i.i.i.i.us.i, %i.fr
  br label %bb.u

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h31c270f1563994edE.exit.i.i.i.i.us.i": ; preds = %._crit_edge.i.i.i.i.i.us.i, %.lr.ph.i.i.i.i.i.us.i
  %i.ft = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.us.i ], [ null, %._crit_edge.i.i.i.i.i.us.i ] ; 2 uses
  %.not.i.i.i.i.us.i = icmp eq ptr %i.ft, null
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -136
  %.sroa.0.1.i.i.i.i.us.i = select i1 %.not.i.i.i.i.us.i, ptr null, ptr %i.fu
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i.i.i.us.i"

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i.i.i.us.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h31c270f1563994edE.exit.i.i.i.i.us.i", %bb.s
  %.sroa.0.0.i.i.i.i.us.i = phi ptr [ %.sroa.0.1.i.i.i.i.us.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h31c270f1563994edE.exit.i.i.i.i.us.i" ], [ null, %bb.s ] ; 2 uses
  %.not.i.i.i.us.i = icmp eq ptr %.sroa.0.0.i.i.i.i.us.i, null
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.us.i, i64 8
  %.sroa.0.1.i.i.i.us.i = select i1 %.not.i.i.i.us.i, ptr null, ptr %i.fv
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i"

bb.x:                                             ; preds = %bb.r
  %.val12.i.i.i.us.i = load i32, ptr %i.dk, align 8, !alias.scope !85660, !noalias !85657, !noundef !41
  %i.fw = icmp eq i32 %i.ee, %.val12.i.i.i.us.i
  br i1 %i.fw, label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val10.i.i.i.us.i = load i32, ptr %i.ds, align 8, !alias.scope !85660, !noalias !85657, !noundef !41
  %i.fx = icmp eq i32 %i.ee, %.val10.i.i.i.us.i
  %spec.select9.i.i.i.us.i = select i1 %i.fx, ptr %i.dt, ptr null
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i"

bb.z:                                             ; preds = %bb.r
  %.val13.i.i.i.us.i = load i32, ptr %i.dq, align 8, !alias.scope !85660, !noalias !85657, !noundef !41
  %i.fy = icmp eq i32 %.val13.i.i.i.us.i, %i.ee
  %spec.select.i.i.i.us.i = select i1 %i.fy, ptr %i.dr, ptr null
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i"

"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i": ; preds = %bb.z, %bb.y, %bb.x, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i.i.i.us.i", %bb.r
  %.sroa.0.0.i.i.i.us.i = phi ptr [ %.sroa.0.1.i.i.i.us.i, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i.i.i.us.i" ], [ %i.do, %bb.x ], [ null, %bb.r ], [ %spec.select9.i.i.i.us.i, %bb.y ], [ %spec.select.i.i.i.us.i, %bb.z ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85669)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !range !139, !alias.scope !85670, !noalias !85658, !noundef !41 ; 3 uses
  %i.gb = icmp ne i64 %i.ga, 4
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nsw i64 %i.ga, -2
  %.inv.i30.i.i.us.i = icmp samesign ult i64 %i.ga, 2
  %i.gd = select i1 %.inv.i30.i.i.us.i, i64 2, i64 %i.gc ; 2 uses
  switch i64 %i.gd, label %.split91.us.i [
    i64 0, label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit56.thread.i.i.us.i"
    i64 1, label %bb.ah
    i64 2, label %bb.af
    i64 3, label %bb.aa
  ]

bb.aa:                                            ; preds = %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$3get17hb7d71877b0811f69E.exit.i.i.us.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !85671)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !85672, !noalias !85658, !noundef !41
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5375bc787c5baea3E.exit.i46.i.i.us.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.gi = zext i32 %i.ee to i64
  %i.gj = mul i64 %i.gi, -1065810590584100411     ; 2 uses
  %i.gk = call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85673)
  call void @llvm.experimental.noalias.scope.decl(metadata !85674)
  %i.gl = lshr i64 %i.gk, 57
  %i.gm = trunc nuw nsw i64 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !85675, !noalias !85676, !noundef !41 ; 2 uses
  %i.gp = load ptr, ptr %i.gh, align 8, !alias.scope !85675, !noalias !85676, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i31.i.i.us.i = insertelement <16 x i8> poison, i8 %i.gm, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i32.i.i.us.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i31.i.i.us.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.sroa.9.0.i.i.i.i33.i.i.us.i = phi i64 [ 0, %bb.ab ], [ %i.hg, %bb.ae ]
  %.pn.i.i.i34.i.i.us.i = phi i64 [ %i.gk, %bb.ab ], [ %i.hh, %bb.ae ]
  %.sroa.01.0.i.i.i.i35.i.i.us.i = and i64 %.pn.i.i.i34.i.i.us.i, %i.go ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.01.0.i.i.i.i35.i.i.us.i
  %.sroa.0.0.copyload.i26.i.i.i36.i.i.us.i = load <16 x i8>, ptr %i.gq, align 1, !noalias !85677 ; 2 uses
  %i.gr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i36.i.i.us.i, %.sroa.0.15.vec.insert.i.i.i.i32.i.i.us.i
  %i.gs = bitcast <16 x i1> %i.gr to i16          ; 2 uses
  %.not.i.not32.i.i.i37.i.i.us.i = icmp eq i16 %i.gs, 0
  br i1 %.not.i.not32.i.i.i37.i.i.us.i, label %._crit_edge.i.i.i42.i.i.us.i, label %.lr.ph.i.i.i38.i.i.us.i

.lr.ph.i.i.i38.i.i.us.i:                          ; preds = %bb.ac, %bb.ad
  %.sroa.06.0.i33.i.i.i39.i.i.us.i = phi i16 [ %i.hc, %bb.ad ], [ %i.gs, %bb.ac ] ; 3 uses
  %i.gt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i39.i.i.us.i, i1 true)
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = add i64 %.sroa.01.0.i.i.i.i35.i.i.us.i, %i.gu
  %i.gw = and i64 %i.gv, %i.go
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [136 x i8], ptr %i.gp, i64 %i.gx ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN7pubgrub8internal4core15State$LT$DP$GT$21merge_incompatibility17hec8a56f501fd5b6dE":bb.a
  %.sroa.5150.1 = phi ptr [ %.sroa.5150.0, %bb.ca ], [ %i.nq, %.lr.ph.i.i.i ]
  %.sroa.0149.1 = phi ptr [ %.sroa.0149.0, %bb.ca ], [ %i.np, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.0, %bb.ca ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.nr = add i16 %.lcssa.i.i.i, -1
  %i.ns = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.nt = zext nneg i16 %i.ns to i64
  %i.nu = and i16 %i.nr, %.lcssa.i.i.i
  %i.nv = sub nsw i64 0, %i.nt
  %i.nw = getelementptr inbounds [136 x i8], ptr %.sroa.0149.1, i64 %i.nv
  %i.nx = add i64 %.sroa.12151.0, -1
  %i.ny = getelementptr inbounds i8, ptr %i.nw, i64 -136
  br label %bb.cd

bb.cb:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h2394da9a055a0129E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5150.0) ]
  %i.nz = icmp eq ptr %.sroa.5150.0, %.sroa.12184.0
  br i1 %i.nz, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.5150.0, i64 136
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i"
  %.sroa.12151.1 = phi i64 [ %i.nx, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i" ], [ %.sroa.12151.0, %bb.cc ]
  %.sroa.10.1 = phi i16 [ %i.nu, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i" ], [ %.sroa.10.0, %bb.cc ]
  %.sroa.5150.2 = phi ptr [ %.sroa.5150.1, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i" ], [ %i.oa, %bb.cc ]
  %.sroa.0149.2 = phi ptr [ %.sroa.0149.1, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i" ], [ null, %bb.cc ]
  %.sroa.0.0.i.pn.i = phi ptr [ %i.ny, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i" ], [ %.sroa.5150.0, %bb.cc ]
  %i.ob = load i32, ptr %.sroa.0.0.i.pn.i, align 4, !noundef !41 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85732)
  %i.oc = zext i32 %i.ob to i64
  %i.od = mul i64 %i.oc, -1065810590584100411     ; 2 uses
  %i.oe = call noundef i64 @llvm.fshl.i64(i64 %i.od, i64 %i.od, i64 26) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85733)
  call void @llvm.experimental.noalias.scope.decl(metadata !85734)
  %i.of = lshr i64 %i.oe, 57
  %i.og = trunc nuw nsw i64 %i.of to i8           ; 3 uses
  %i.oh = load i64, ptr %i.nj, align 8, !alias.scope !85735, !noalias !85736, !noundef !41 ; 3 uses
  %i.oi = load ptr, ptr %i.nh, align 8, !alias.scope !85735, !noalias !85736, !nonnull !41, !noundef !41 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i36 = insertelement <16 x i8> poison, i8 %i.og, i64 0
  %.sroa.0.15.vec.insert.i.i.i37 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i36, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %bb.cd
  %.sroa.9.0.i.i.i38 = phi i64 [ 0, %bb.cd ], [ %i.oz, %bb.cg ]
  %.pn.i.i39 = phi i64 [ %i.oe, %bb.cd ], [ %i.pa, %bb.cg ]
  %.sroa.01.0.i.i.i40 = and i64 %.pn.i.i39, %i.oh ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.sroa.01.0.i.i.i40
  %.sroa.0.0.copyload.i26.i.i41 = load <16 x i8>, ptr %i.oj, align 1, !noalias !85737 ; 2 uses
  %i.ok = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i41, %.sroa.0.15.vec.insert.i.i.i37
  %i.ol = bitcast <16 x i1> %i.ok to i16          ; 2 uses
  %.not.i.not32.i.i42 = icmp eq i16 %i.ol, 0
  br i1 %.not.i.not32.i.i42, label %._crit_edge.i.i47, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.ce, %bb.cf
  %.sroa.06.0.i33.i.i44 = phi i16 [ %i.oy, %bb.cf ], [ %i.ol, %bb.ce ] ; 3 uses
  %i.om = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i44, i1 true)
  %i.on = zext nneg i16 %i.om to i64
  %i.oo = add i64 %.sroa.01.0.i.i.i40, %i.on
  %i.op = and i64 %i.oo, %i.oh
  %i.oq = sub nsw i64 0, %i.op
  %i.or = getelementptr inbounds [32 x i8], ptr %i.oi, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -32
  %.val3.i.i.i45 = load i32, ptr %i.os, align 4, !noalias !85738, !noundef !41
  %i.ot = icmp eq i32 %.val3.i.i.i45, %i.ob
  br i1 %i.ot, label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit", label %bb.cf, !prof !48

._crit_edge.i.i47:                                ; preds = %bb.cf, %bb.ce
  %i.ou = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i41, splat (i8 -1)
  %i.ov = bitcast <16 x i1> %i.ou to i16
  %i.ow = icmp eq i16 %i.ov, 0
  br i1 %i.ow, label %bb.cg, label %bb.ch, !prof !44

bb.cf:                                            ; preds = %.lr.ph.i.i43
  %i.ox = add i16 %.sroa.06.0.i33.i.i44, -1
  %i.oy = and i16 %i.ox, %.sroa.06.0.i33.i.i44    ; 2 uses
  %.not.i.not.i.i46 = icmp eq i16 %i.oy, 0
  br i1 %.not.i.not.i.i46, label %._crit_edge.i.i47, label %.lr.ph.i.i43

bb.cg:                                            ; preds = %._crit_edge.i.i47
  %i.oz = add i64 %.sroa.9.0.i.i.i38, 16          ; 2 uses
  %i.pa = add i64 %.sroa.01.0.i.i.i40, %i.oz
  br label %bb.ce

bb.ch:                                            ; preds = %._crit_edge.i.i47
  %i.pb = load i64, ptr %i.nk, align 8, !alias.scope !85739, !noalias !85740, !noundef !41
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %bb.ci, label %bb.ck, !prof !44

bb.ci:                                            ; preds = %bb.ch
  %i.pd = call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h80124d230f4d276dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.nh, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ni, i1 noundef zeroext true), !noalias !85741 ; 0 uses
  %.val.i.i54.pre = load ptr, ptr %i.nh, align 8, !alias.scope !85742, !noalias !85743
  %.val4.i.i55.pre = load i64, ptr %i.nj, align 8, !alias.scope !85742, !noalias !85743
  br label %bb.ck

bb.cj:                                            ; preds = %bb.bz, %bb.cb
  store i32 %i.lw, ptr %i.dv, align 4
  %.pre394 = and i64 %i.ln, 4294967295
  br label %"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit"

"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit": ; preds = %bb.bu, %bb.bo, %bb.cj
  %.pre392.pre-phi = phi i64 [ %i.k, %bb.bu ], [ %i.k, %bb.bo ], [ %.pre394, %bb.cj ]
  %i.pe = phi i32 [ %1, %bb.bu ], [ %1, %bb.bo ], [ %i.lw, %bb.cj ]
  %.pre = load i64, ptr %i.n, align 8
  br label %bb.cu

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %.val4.i.i55 = phi i64 [ %.val4.i.i55.pre, %bb.ci ], [ %i.oh, %bb.ch ] ; 4 uses
  %.val.i.i54 = phi ptr [ %.val.i.i54.pre, %bb.ci ], [ %i.oi, %bb.ch ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85742)
  %.sroa.0.04.i.i.i.i56 = and i64 %.val4.i.i55, %i.oe ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.val.i.i54, i64 %.sroa.0.04.i.i.i.i56
  %.sroa.0.0.copyload.i35.i.i.i.i57 = load <16 x i8>, ptr %i.pf, align 1, !noalias !85744
  %i.pg = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i57, zeroinitializer
  %i.ph = bitcast <16 x i1> %i.pg to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i58 = icmp eq i16 %i.ph, 0
  br i1 %.not.not.i.not6.i.i.i.i58, label %.lr.ph.i.i.i.i69, label %._crit_edge.i.i.i.i59, !prof !67

.lr.ph.i.i.i.i69:                                 ; preds = %bb.ck, %.lr.ph.i.i.i.i69
  %.sroa.0.07.i.i.i.i70 = phi i64 [ %.sroa.0.0.i.i.i.i71, %.lr.ph.i.i.i.i69 ], [ %.sroa.0.04.i.i.i.i56, %bb.ck ]
  %i.pi = phi i64 [ %i.pj, %.lr.ph.i.i.i.i69 ], [ 0, %bb.ck ]
  %i.pj = add i64 %i.pi, 16                       ; 2 uses
  %i.pk = add i64 %i.pj, %.sroa.0.07.i.i.i.i70
  %.sroa.0.0.i.i.i.i71 = and i64 %i.pk, %.val4.i.i55 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.val.i.i54, i64 %.sroa.0.0.i.i.i.i71
  %.sroa.0.0.copyload.i3.i.i.i.i72 = load <16 x i8>, ptr %i.pl, align 1, !noalias !85744
  %i.pm = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i72, zeroinitializer
  %i.pn = bitcast <16 x i1> %i.pm to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i73 = icmp eq i16 %i.pn, 0
  br i1 %.not.not.i.not.i.i.i.i73, label %.lr.ph.i.i.i.i69, label %._crit_edge.i.i.i.i59, !prof !68

._crit_edge.i.i.i.i59:                            ; preds = %.lr.ph.i.i.i.i69, %bb.ck
  %.sroa.0.0.lcssa.i.i.i.i60 = phi i64 [ %.sroa.0.04.i.i.i.i56, %bb.ck ], [ %.sroa.0.0.i.i.i.i71, %.lr.ph.i.i.i.i69 ]
  %.lcssa.i.i.i.i61 = phi i16 [ %i.ph, %bb.ck ], [ %i.pn, %.lr.ph.i.i.i.i69 ]
  %i.po = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i61, i1 true)
  %i.pp = zext nneg i16 %i.po to i64
  %i.pq = add i64 %.sroa.0.0.lcssa.i.i.i.i60, %i.pp
  %i.pr = and i64 %i.pq, %.val4.i.i55             ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.val.i.i54, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !noalias !85745, !noundef !41 ; 2 uses
  %i.pu = icmp sgt i8 %i.pt, -1
  br i1 %i.pu, label %bb.cl, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc3835292623a741aE.exit.i", !prof !44

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i59
  %.val62.i.i.i.i.i66 = load <16 x i8>, ptr %.val.i.i54, align 16, !noalias !85745
  %i.pv = icmp slt <16 x i8> %.val62.i.i.i.i.i66, zeroinitializer
  %i.pw = bitcast <16 x i1> %i.pv to i16          ; 2 uses
  %i.px = icmp ne i16 %i.pw, 0
  call void @llvm.assume(i1 %i.px)
  %i.py = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pw, i1 true)
  %i.pz = zext nneg i16 %i.py to i64              ; 2 uses
  %.phi.trans.insert.i.i.i67 = getelementptr inbounds nuw i8, ptr %.val.i.i54, i64 %i.pz
  %.pre.i.i.i68 = load i8, ptr %.phi.trans.insert.i.i.i67, align 1, !noalias !85745
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc3835292623a741aE.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc3835292623a741aE.exit.i": ; preds = %bb.cl, %._crit_edge.i.i.i.i59
  %i.qa = phi i8 [ %.pre.i.i.i68, %bb.cl ], [ %i.pt, %._crit_edge.i.i.i.i59 ]
  %.sroa.0.0.i5.i.i.i.i62 = phi i64 [ %i.pz, %bb.cl ], [ %i.pr, %._crit_edge.i.i.i.i59 ] ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.val.i.i54, i64 %.sroa.0.0.i5.i.i.i.i62
  %i.qc = add i64 %.sroa.0.0.i5.i.i.i.i62, -16
  %i.qd = and i64 %i.qc, %.val4.i.i55
  store i8 %i.og, ptr %i.qb, align 1, !noalias !85745
  %i.qe = getelementptr i8, ptr %.val.i.i54, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 16
  store i8 %i.og, ptr %i.qf, align 1, !noalias !85745
  %i.qg = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i62
  %i.qh = getelementptr inbounds [32 x i8], ptr %.val.i.i54, i64 %i.qg ; 5 uses
  %i.qi = and i8 %i.qa, 1
  %i.qj = zext nneg i8 %i.qi to i64
  %i.qk = getelementptr inbounds i8, ptr %i.qh, i64 -32
  store i32 %i.ob, ptr %i.qk, align 8, !noalias !85746
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.qh, i64 -24
  store i64 0, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !85746
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.qh, i64 -16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !85746
  %.sroa.6.0..sroa_idx.i63 = getelementptr inbounds i8, ptr %i.qh, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i63, align 8, !noalias !85746
  %i.ql = load <2 x i64>, ptr %i.nk, align 8, !alias.scope !85742, !noalias !85743
  %i.qm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.qj, i64 0
  %i.qn = sub <2 x i64> %i.ql, %i.qm
  store <2 x i64> %i.qn, ptr %i.nk, align 8, !alias.scope !85742, !noalias !85743
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit": ; preds = %.lr.ph.i.i43, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc3835292623a741aE.exit.i"
  %.pn.i64 = phi ptr [ %i.qh, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hc3835292623a741aE.exit.i" ], [ %i.or, %.lr.ph.i.i43 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85747)
  call void @llvm.experimental.noalias.scope.decl(metadata !85748)
  %i.qo = getelementptr inbounds i8, ptr %.pn.i64, i64 -8 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !alias.scope !85749, !noalias !85750, !noundef !41 ; 8 uses
  %i.qq = icmp ult i64 %i.qp, 2305843009213693952
  call void @llvm.assume(i1 %i.qq)
  %i.qr = icmp eq i64 %i.qp, 0
  br i1 %i.qr, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h2394da9a055a0129E.exit.backedge", label %.lr.ph.i.i.i74

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h2394da9a055a0129E.exit.backedge": ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit._crit_edge.i.i"
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h2394da9a055a0129E.exit"

.lr.ph.i.i.i74:                                   ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit"
  %i.qs = getelementptr inbounds i8, ptr %.pn.i64, i64 -16
  %i.qt = load ptr, ptr %i.qs, align 8, !alias.scope !85749, !noalias !85751, !nonnull !41, !noundef !41 ; 7 uses
  %i.qu = load i32, ptr %i.dv, align 4, !noalias !85752, !noundef !41
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %.lr.ph.i.i.i74
  %i.qv = phi i64 [ 0, %.lr.ph.i.i.i74 ], [ %i.qx, %bb.cn ] ; 4 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.qv
  %.val1.i.i.i = load i32, ptr %i.qw, align 4, !noalias !85752, !noundef !41
  %.not1.i.i.i = icmp eq i32 %.val1.i.i.i, %i.qu
  %i.qx = add nuw nsw i64 %i.qv, 1                ; 4 uses
  %.not2.i.i.i = icmp eq i64 %i.qx, %i.qp         ; 2 uses
  br i1 %.not1.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h5a7082c55d2421dfE.exit.i.i", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not2.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit._crit_edge.i.i", label %bb.cm

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h5a7082c55d2421dfE.exit.i.i": ; preds = %bb.cm
  br i1 %.not2.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.thread31.i.i", label %.lr.ph.i4.i.i.preheader

.lr.ph.i4.i.i.preheader:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h5a7082c55d2421dfE.exit.i.i"
  %i.qy = xor i64 %i.qv, -1
  %i.qz = add nsw i64 %i.qp, %i.qy                ; 3 uses
  %i.ra = add nsw i64 %i.qp, -2
  %xtraiter = and i64 %i.qz, 1
  %i.rb = icmp eq i64 %i.ra, %i.qv
  br i1 %i.rb, label %.lr.ph.i4.i.i.epil.preheader, label %.lr.ph.i4.i.i.preheader.new

.lr.ph.i4.i.i.preheader.new:                      ; preds = %.lr.ph.i4.i.i.preheader
  %unroll_iter = and i64 %i.qz, -2
  br label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.backedge.i.i.i.1, %.lr.ph.i4.i.i.preheader.new
  %.sroa.14.1.i.i = phi i64 [ 1, %.lr.ph.i4.i.i.preheader.new ], [ %.sroa.14.2.i.i.1, %.backedge.i.i.i.1 ]
  %i.rc = phi i64 [ 1, %.lr.ph.i4.i.i.preheader.new ], [ %i.rl, %.backedge.i.i.i.1 ] ; 3 uses
  %i.rd = phi i64 [ %i.qx, %.lr.ph.i4.i.i.preheader.new ], [ %.sink.i.i.i.1, %.backedge.i.i.i.1 ] ; 4 uses
  %niter.a = phi i64 [ 0, %.lr.ph.i4.i.i.preheader.new ], [ %niter.next.1, %.backedge.i.i.i.1 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rd
  %.val1.i5.i.i = load i32, ptr %2, align 4, !noalias !85753, !noundef !41 ; 2 uses
  %i.re = load i32, ptr %i.dv, align 4, !noalias !85753, !noundef !41
  %.not1.i7.i.i = icmp eq i32 %.val1.i5.i.i, %i.re
  br i1 %.not1.i7.i.i, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %.lr.ph.i4.i.i
  %i.rf = add i64 %i.rc, 1                        ; 2 uses
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %bb.cr, %bb.co
  %.sroa.14.2.i.i = phi i64 [ %i.rf, %bb.co ], [ %.sroa.14.1.i.i, %bb.cr ]
  %i.rg = phi i64 [ %i.rf, %bb.co ], [ %i.rc, %bb.cr ] ; 3 uses
  %.sink.i.i.i = add nuw nsw i64 %i.rd, 1         ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.sink.i.i.i
  %.val1.i5.i.i.1 = load i32, ptr %3, align 4, !noalias !85753, !noundef !41 ; 2 uses
  %i.rh = load i32, ptr %i.dv, align 4, !noalias !85753, !noundef !41
  %.not1.i7.i.i.1 = icmp eq i32 %.val1.i5.i.i.1, %i.rh
  br i1 %.not1.i7.i.i.1, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.backedge.i.i.i
  %i.ri = sub i64 %.sink.i.i.i, %i.rg
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.ri
  store i32 %.val1.i5.i.i.1, ptr %i.rj, align 4, !noalias !85753
  br label %.backedge.i.i.i.1

bb.cq:                                            ; preds = %.backedge.i.i.i
  %i.rk = add i64 %i.rg, 1                        ; 2 uses
  br label %.backedge.i.i.i.1

.backedge.i.i.i.1:                                ; preds = %bb.cq, %bb.cp
  %.sroa.14.2.i.i.1 = phi i64 [ %i.rk, %bb.cq ], [ %.sroa.14.2.i.i, %bb.cp ] ; 3 uses
  %i.rl = phi i64 [ %i.rk, %bb.cq ], [ %i.rg, %bb.cp ] ; 2 uses
  %.sink.i.i.i.1 = add nuw nsw i64 %i.rd, 2       ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa", label %.lr.ph.i4.i.i

bb.cr:                                            ; preds = %.lr.ph.i4.i.i
  %i.rm = sub i64 %i.rd, %i.rc
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rm
  store i32 %.val1.i5.i.i, ptr %i.rn, align 4, !noalias !85753
  br label %.backedge.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa": ; preds = %.backedge.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i", label %.lr.ph.i4.i.i.epil.preheader

.lr.ph.i4.i.i.epil.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa", %.lr.ph.i4.i.i.preheader
  %.sroa.14.1.i.i.epil.init = phi i64 [ 1, %.lr.ph.i4.i.i.preheader ], [ %.sroa.14.2.i.i.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa" ]
  %.epil.init.a = phi i64 [ 1, %.lr.ph.i4.i.i.preheader ], [ %i.rl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa" ] ; 2 uses
  %.epil.init611 = phi i64 [ %i.qx, %.lr.ph.i4.i.i.preheader ], [ %.sink.i.i.i.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa" ] ; 2 uses
  %lcmp.mod613 = trunc i64 %i.qz to i1
  call void @llvm.assume(i1 %lcmp.mod613)
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.epil.init611
  %.val1.i5.i.i.epil = load i32, ptr %i.ro, align 4, !noalias !85753, !noundef !41 ; 2 uses
  %i.rp = load i32, ptr %i.dv, align 4, !noalias !85753, !noundef !41
  %.not1.i7.i.i.epil = icmp eq i32 %.val1.i5.i.i.epil, %i.rp
  br i1 %.not1.i7.i.i.epil, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i4.i.i.epil.preheader
  %i.rq = sub i64 %.epil.init611, %.epil.init.a
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rq
  store i32 %.val1.i5.i.i.epil, ptr %i.rr, align 4, !noalias !85753
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i"

bb.ct:                                            ; preds = %.lr.ph.i4.i.i.epil.preheader
  %i.rs = add i64 %.epil.init.a, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i": ; preds = %bb.cs, %bb.ct, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa"
  %.sroa.14.2.i.i.lcssa = phi i64 [ %.sroa.14.2.i.i.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i.unr-lcssa" ], [ %i.rs, %bb.ct ], [ %.sroa.14.1.i.i.epil.init, %bb.cs ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.14.2.i.i.lcssa, 0
  br i1 %.not.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit._crit_edge.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.thread31.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.thread31.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h5a7082c55d2421dfE.exit.i.i"
  %.sroa.14.334.i.i = phi i64 [ %.sroa.14.2.i.i.lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h5a7082c55d2421dfE.exit.i.i" ]
  %i.rt = sub i64 %i.qp, %.sroa.14.334.i.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit._crit_edge.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit._crit_edge.i.i": ; preds = %bb.cn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.thread31.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i"
  %.pre-phi.i.i = phi i64 [ %i.rt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.thread31.i.i" ], [ %i.qp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10retain_mut12process_loop17h676e777bc7c32104E.exit.i.i" ], [ %i.qp, %bb.cn ]
  store i64 %.pre-phi.i.i, ptr %i.qo, align 8, !alias.scope !85749, !noalias !85754
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17h2394da9a055a0129E.exit.backedge"

bb.cu:                                            ; preds = %bb.b, %"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit"
  %.pre-phi393 = phi i64 [ %i.k, %bb.b ], [ %.pre392.pre-phi, %"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit" ] ; 3 uses
  %i.ru = phi i64 [ %i.o, %bb.b ], [ %.pre, %"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit" ] ; 2 uses
  %i.rv = phi i32 [ %1, %bb.b ], [ %i.pe, %"_ZN7pubgrub8internal9small_vec17SmallVec$LT$T$GT$4push17h7bd8fbb5294523b8E.exit" ]
  %i.rw = icmp ugt i64 %i.ru, %.pre-phi393
  br i1 %i.rw, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.rx = load ptr, ptr %i.m, align 8, !nonnull !41, !noundef !41
  %i.ry = getelementptr inbounds nuw [528 x i8], ptr %i.rx, i64 %.pre-phi393 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85755)
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !range !139, !alias.scope !85755, !noalias !85756, !noundef !41 ; 3 uses
  %i.sb = icmp ne i64 %i.sa, 4
  call void @llvm.assume(i1 %i.sb)
  %i.sc = add nsw i64 %i.sa, -2
  %.inv.i76 = icmp samesign ult i64 %i.sa, 2
  %i.sd = select i1 %.inv.i76, i64 2, i64 %i.sc
  switch i64 %i.sd, label %bb.cw [
    i64 0, label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82"
    i64 1, label %bb.cx
    i64 2, label %bb.cy
    i64 3, label %bb.cz
  ]

bb.cw:                                            ; preds = %bb.cv
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 152
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82"

bb.cy:                                            ; preds = %bb.cv
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 272
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82"

bb.cz:                                            ; preds = %bb.cv
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !85757)
  %i.si = load ptr, ptr %i.sh, align 8, !alias.scope !85758, !noalias !85759, !nonnull !41, !noundef !41 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !85758, !noalias !85759, !noundef !41
  %i.sl = getelementptr i8, ptr %i.si, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 1
  %.val13.i.i.i77 = load <16 x i8>, ptr %i.si, align 16, !noalias !85760
  %i.sn = icmp sgt <16 x i8> %.val13.i.i.i77, splat (i8 -1)
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !85758, !noalias !85759, !noundef !41
  %i.sr = bitcast <16 x i1> %i.sn to i16
  br label %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82"

"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82": ; preds = %bb.cv, %bb.cx, %bb.cy, %bb.cz
  %.sroa.0194.0 = phi ptr [ %i.si, %bb.cz ], [ null, %bb.cx ], [ null, %bb.cy ], [ null, %bb.cv ]
  %.sroa.7195.0 = phi ptr [ %i.so, %bb.cz ], [ %i.se, %bb.cx ], [ %i.ry, %bb.cy ], [ inttoptr (i64 8 to ptr), %bb.cv ]
  %.sroa.12196.0 = phi ptr [ %i.sm, %bb.cz ], [ %i.sf, %bb.cx ], [ %i.sg, %bb.cy ], [ inttoptr (i64 8 to ptr), %bb.cv ]
  %.sroa.17197.0 = phi i16 [ %i.sr, %bb.cz ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cv ]
  %.sroa.20199.0 = phi i64 [ %i.sq, %bb.cz ], [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.cv ]
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  br label %bb.db

bb.da:                                            ; preds = %bb.cu
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.pre-phi393, i64 noundef %i.ru, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2377) #73
  unreachable

bb.db:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf4997948c9af17dbE.exit", %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82"
  %.sroa.12164.0 = phi i64 [ %.sroa.20199.0, %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82" ], [ %.sroa.12164.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf4997948c9af17dbE.exit" ] ; 3 uses
  %.sroa.10162.0 = phi i16 [ %.sroa.17197.0, %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82" ], [ %.sroa.10162.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf4997948c9af17dbE.exit" ] ; 3 uses
  %.sroa.5160.0 = phi ptr [ %.sroa.7195.0, %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82" ], [ %.sroa.5160.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf4997948c9af17dbE.exit" ] ; 6 uses
  %.sroa.0159.0 = phi ptr [ %.sroa.0194.0, %"_ZN7pubgrub8internal9small_map21SmallMap$LT$K$C$V$GT$4iter17h6f713d43a694a947E.exit82" ], [ %.sroa.0159.2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf4997948c9af17dbE.exit" ] ; 3 uses
  %.not.i83 = icmp eq ptr %.sroa.0159.0, null
  br i1 %.not.i83, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sw = icmp eq i64 %.sroa.12164.0, 0
  br i1 %i.sw, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not13.i.i.i84 = icmp eq i16 %.sroa.10162.0, 0
  br i1 %.not13.i.i.i84, label %.lr.ph.i.i.i91, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85"

.lr.ph.i.i.i91:                                   ; preds = %bb.dd, %.lr.ph.i.i.i91
  %i.sx = phi ptr [ %i.tb, %.lr.ph.i.i.i91 ], [ %.sroa.5160.0, %bb.dd ] ; 2 uses
  %i.sy = phi ptr [ %i.ta, %.lr.ph.i.i.i91 ], [ %.sroa.0159.0, %bb.dd ]
  %.val911.i.i.i93 = load <16 x i8>, ptr %i.sx, align 16, !noalias !85761
  %i.sz = icmp sgt <16 x i8> %.val911.i.i.i93, splat (i8 -1)
  %i.ta = getelementptr inbounds i8, ptr %i.sy, i64 -2176 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  %.cast.i.i.i94 = bitcast <16 x i1> %i.sz to i16 ; 2 uses
  %.not.i.i.i95 = icmp eq i16 %.cast.i.i.i94, 0
  br i1 %.not.i.i.i95, label %.lr.ph.i.i.i91, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85": ; preds = %.lr.ph.i.i.i91, %bb.dd
  %.sroa.5160.1 = phi ptr [ %.sroa.5160.0, %bb.dd ], [ %i.tb, %.lr.ph.i.i.i91 ]
  %.sroa.0159.1 = phi ptr [ %.sroa.0159.0, %bb.dd ], [ %i.ta, %.lr.ph.i.i.i91 ] ; 2 uses
  %.lcssa.i.i.i86 = phi i16 [ %.sroa.10162.0, %bb.dd ], [ %.cast.i.i.i94, %.lr.ph.i.i.i91 ] ; 3 uses
  %i.tc = add i16 %.lcssa.i.i.i86, -1
  %i.td = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i86, i1 true)
  %i.te = zext nneg i16 %i.td to i64
  %i.tf = and i16 %i.tc, %.lcssa.i.i.i86
  %i.tg = sub nsw i64 0, %i.te
  %i.th = getelementptr inbounds [136 x i8], ptr %.sroa.0159.1, i64 %i.tg
  %i.ti = add i64 %.sroa.12164.0, -1
  %i.tj = getelementptr inbounds i8, ptr %i.th, i64 -136
  br label %bb.dg

bb.de:                                            ; preds = %bb.db
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5160.0) ]
  %i.tk = icmp eq ptr %.sroa.5160.0, %.sroa.12196.0
  br i1 %i.tk, label %.critedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.5160.0, i64 136
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85"
  %.sroa.12164.1 = phi i64 [ %i.ti, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85" ], [ %.sroa.12164.0, %bb.df ]
  %.sroa.10162.1 = phi i16 [ %i.tf, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85" ], [ %.sroa.10162.0, %bb.df ]
  %.sroa.5160.2 = phi ptr [ %.sroa.5160.1, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85" ], [ %i.tl, %bb.df ]
  %.sroa.0159.2 = phi ptr [ %.sroa.0159.1, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85" ], [ null, %bb.df ]
  %.sroa.0.0.i.pn.i87 = phi ptr [ %i.tj, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hd9f27d01b800ad3bE.exit.i.i85" ], [ %.sroa.5160.0, %bb.df ]
  %i.tm = load i32, ptr %.sroa.0.0.i.pn.i87, align 4, !noundef !41 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85762)
  %i.tn = zext i32 %i.tm to i64
  %i.to = mul i64 %i.tn, -1065810590584100411     ; 2 uses
  %i.tp = call noundef i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 26) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85763)
  call void @llvm.experimental.noalias.scope.decl(metadata !85764)
  %i.tq = lshr i64 %i.tp, 57
  %i.tr = trunc nuw nsw i64 %i.tq to i8           ; 3 uses
  %i.ts = load i64, ptr %i.su, align 8, !alias.scope !85765, !noalias !85766, !noundef !41 ; 3 uses
  %i.tt = load ptr, ptr %i.ss, align 8, !alias.scope !85765, !noalias !85766, !nonnull !41, !noundef !41 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i98 = insertelement <16 x i8> poison, i8 %i.tr, i64 0
  %.sroa.0.15.vec.insert.i.i.i99 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i98, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dj, %bb.dg
  %.sroa.9.0.i.i.i100 = phi i64 [ 0, %bb.dg ], [ %i.uk, %bb.dj ]
  %.pn.i.i101 = phi i64 [ %i.tp, %bb.dg ], [ %i.ul, %bb.dj ]
  %.sroa.01.0.i.i.i102 = and i64 %.pn.i.i101, %i.ts ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.sroa.01.0.i.i.i102
  %.sroa.0.0.copyload.i26.i.i103 = load <16 x i8>, ptr %i.tu, align 1, !noalias !85767 ; 2 uses
  %i.tv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i103, %.sroa.0.15.vec.insert.i.i.i99
  %i.tw = bitcast <16 x i1> %i.tv to i16          ; 2 uses
  %.not.i.not32.i.i104 = icmp eq i16 %i.tw, 0
  br i1 %.not.i.not32.i.i104, label %._crit_edge.i.i109, label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %bb.dh, %bb.di
  %.sroa.06.0.i33.i.i106 = phi i16 [ %i.uj, %bb.di ], [ %i.tw, %bb.dh ] ; 3 uses
  %i.tx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i106, i1 true)
  %i.ty = zext nneg i16 %i.tx to i64
  %i.tz = add i64 %.sroa.01.0.i.i.i102, %i.ty
  %i.ua = and i64 %i.tz, %i.ts
  %i.ub = sub nsw i64 0, %i.ua
  %i.uc = getelementptr inbounds [32 x i8], ptr %i.tt, i64 %i.ub ; 2 uses
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 -32
  %.val3.i.i.i107 = load i32, ptr %i.ud, align 4, !noalias !85768, !noundef !41
  %i.ue = icmp eq i32 %.val3.i.i.i107, %i.tm
  br i1 %i.ue, label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h1e6b9e53f98ec3c4E.exit142", label %bb.di, !prof !48

._crit_edge.i.i109:                               ; preds = %bb.di, %bb.dh
  %i.uf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i103, splat (i8 -1)
  %i.ug = bitcast <16 x i1> %i.uf to i16
  %i.uh = icmp eq i16 %i.ug, 0
  br i1 %i.uh, label %bb.dj, label %bb.dk, !prof !44

bb.di:                                            ; preds = %.lr.ph.i.i105
  %i.ui = add i16 %.sroa.06.0.i33.i.i106, -1
  %i.uj = and i16 %i.ui, %.sroa.06.0.i33.i.i106   ; 2 uses
  %.not.i.not.i.i108 = icmp eq i16 %i.uj, 0
  br i1 %.not.i.not.i.i108, label %._crit_edge.i.i109, label %.lr.ph.i.i105

bb.dj:                                            ; preds = %._crit_edge.i.i109
  %i.uk = add i64 %.sroa.9.0.i.i.i100, 16         ; 2 uses
  %i.ul = add i64 %.sroa.01.0.i.i.i102, %i.uk
end_hunk_1
