Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.07?download=true
inline.NumInlined: 429
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs7BtpbLEd5q3_9elfshaker:bb.a
  %.sroa.1089.0.copyload = load i64, ptr %.sroa.1089.0..sroa_idx, align 8
  %.sroa.1291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1291.0.copyload = load ptr, ptr %.sroa.1291.0..sroa_idx, align 8 ; 15 uses
  %.sroa.1392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1392.0.copyload = load i64, ptr %.sroa.1392.0..sroa_idx, align 8 ; 29 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.1148.sroa.0.0.extract.trunc = trunc i64 %.sroa.685.0.copyload to i8
  %i.o = add nsw i64 %.sroa.15.0.copyload, -1     ; 3 uses
  %.sroa.1148.sroa.10.0.insert.insert = and i64 %.sroa.685.0.copyload, -256 ; 2 uses
  %i.p = and i64 %.sroa.685.0.copyload, 65536
  %.not113 = icmp eq i64 %i.p, 0
  %.not.i34 = icmp eq i64 %5, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.ao, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit
  %.sroa.1148.sroa.0.0 = phi i8 [ %.sroa.1148.sroa.0.0.extract.trunc, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.1148.sroa.0.2, %bb.ao ] ; 8 uses
  %.sroa.3053.0 = phi i64 [ %.sroa.1089.0.copyload, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.3053.2, %bb.ao ] ; 10 uses
  %.sroa.22.0 = phi i64 [ %.sroa.887.0.copyload, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.22.1, %bb.ao ] ; 11 uses
  %.sroa.445.0 = phi i64 [ %.sroa.483.0.copyload, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.445.2, %bb.ao ]
  %.sroa.04.0 = phi i64 [ 0, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit ], [ %.sroa.1095.0, %bb.ao ] ; 6 uses
  %.fr215.i = freeze i64 %.sroa.445.0             ; 32 uses
  switch i64 %.sroa.082.0.copyload, label %default.unreachable261.i [
    i64 0, label %.preheader.i
    i64 1, label %bb.t
    i64 2, label %bb.u
  ]

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not113, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.q = trunc nuw i8 %.sroa.1148.sroa.0.0 to i1  ; 2 uses
  %i.r = icmp eq i64 %.fr215.i, 0
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.preheader
  %.not.i.i.us.i.peel = icmp ult i64 %.fr215.i, %.sroa.1392.0.copyload
  br i1 %.not.i.i.us.i.peel, label %bb.h, label %.split.i.i.us.i.peel

.split.i.i.us.i.peel:                             ; preds = %bb.g
  %i.s = icmp eq i64 %.fr215.i, %.sroa.1392.0.copyload
  br i1 %i.s, label %bb.i, label %.split.us161.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %.fr215.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !89, !noalias !90, !noundef !5
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.i, label %.split.us161.i

bb.i:                                             ; preds = %bb.h, %.split.i.i.us.i.peel, %.lr.ph.i.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %.fr215.i ; 4 uses
  %i.x = icmp samesign eq i64 %.fr215.i, %.sroa.1392.0.copyload
  br i1 %i.x, label %.split166.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i8, ptr %i.w, align 1, !noalias !91, !noundef !5 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = add nuw nsw i64 %.fr215.i, 1
  %i.ae = icmp samesign ne i64 %i.ad, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.aa, align 1, !noalias !91, !noundef !5
  %i.ag = shl nuw nsw i32 %i.ac, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i8 %i.y, -33
  br i1 %i.ak, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel, label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.am = add nuw nsw i64 %.fr215.i, 2
  %i.an = icmp samesign ne i64 %i.am, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.al, align 1, !noalias !91, !noundef !5
  %i.ap = shl nuw nsw i32 %i.ai, 6
  %i.aq = and i8 %i.ao, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = shl nuw nsw i32 %i.ac, 12
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp samesign ugt i8 %i.y, -17
  br i1 %i.av, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel, label %bb.l

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ax = add nuw nsw i64 %.fr215.i, 3
  %i.ay = icmp samesign ne i64 %i.ax, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.aw, align 1, !noalias !91, !noundef !5
  %i.ba = shl nuw nsw i32 %i.ac, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.as, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = zext nneg i8 %i.y to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.au, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel ], [ %i.bg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel ], [ %i.bh, %bb.k ] ; 4 uses
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  call void @llvm.assume(i1 %i.bi)
  br i1 %i.q, label %.loopexit42.split.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.bj, label %.lr.ph.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.bk, label %.lr.ph.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.bl, i64 3, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.n ], [ %..i.us.i.peel, %bb.o ], [ 1, %bb.m ]
  %i.bm = add i64 %.sroa.01.0.i.us.i.peel, %.fr215.i ; 23 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bm, %.sroa.1392.0.copyload
  br i1 %.not.i.i.us.i, label %bb.q, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.p
  %i.bo = icmp eq i64 %i.bm, %.sroa.1392.0.copyload
  br i1 %i.bo, label %bb.r, label %.split.us161.i

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !89, !noalias !90, !noundef !5
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.r, label %.split.us161.i

bb.r:                                             ; preds = %bb.q, %.split.i.i.us.i, %.lr.ph.i
  %i.bs = icmp samesign eq i64 %i.bm, %.sroa.1392.0.copyload
  br i1 %i.bs, label %.loopexit42.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.bm
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !91, !noundef !5 ; 3 uses
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %.loopexit42.split.us.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i: ; preds = %bb.s
  %i.bw = add nuw nsw i64 %i.bm, 1
  %i.bx = icmp samesign ne i64 %i.bw, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.by, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i
  %i.bz = add nuw nsw i64 %i.bm, 2
  %i.ca = icmp samesign ne i64 %i.bz, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bu, -17
  br i1 %i.cb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i
  %i.cc = add nuw nsw i64 %i.bm, 3
  %i.cd = icmp samesign ne i64 %i.cc, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.cd)
  br label %.loopexit42.split.us.i

.split.us161.i:                                   ; preds = %bb.h, %.split.i.i.us.i.peel, %bb.q, %.split.i.i.us.i
  %.sroa.445.1.lcssa = phi i64 [ %i.bm, %bb.q ], [ %i.bm, %.split.i.i.us.i ], [ %.fr215.i, %.split.i.i.us.i.peel ], [ %.fr215.i, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1291.0.copyload, i64 noundef %.sroa.1392.0.copyload, i64 noundef %.sroa.445.1.lcssa, i64 noundef %.sroa.1392.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us161.i
  unreachable

.split166.us.i:                                   ; preds = %bb.i
  br i1 %i.q, label %.loopexit42.split.us.i, label %.loopexit

default.unreachable261.i:                         ; preds = %bb.f
  unreachable

bb.t:                                             ; preds = %bb.f
  %.not.i = icmp ult i64 %.fr215.i, %.sroa.1392.0.copyload
  br i1 %.not.i, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.f
  %6 = icmp eq i64 %.sroa.3053.0, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1291.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.ce = add i64 %.sroa.22.0, %i.o               ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.1392.0.copyload ; 2 uses
  br i1 %6, label %bb.ag, label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1291.0.copyload) ]
  %i.cg = sub nuw i64 %.sroa.1392.0.copyload, %.fr215.i ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %.fr215.i ; 2 uses
  %i.ci = icmp samesign ult i64 %i.cg, 16
  br i1 %i.ci, label %.lr.ph.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.sroa.1148.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef range(i64 0, -9223372036854775808) %i.cg)
          to label %.noexc25 unwind label %.loopexit118 ; 2 uses

.noexc25:                                         ; preds = %bb.w
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.loopexit43.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.x
  %.sroa.04.011.i.i = phi i64 [ %i.cq, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.011.i.i
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !92, !noalias !93, !noundef !5
  %i.cp = icmp eq i8 %i.co, %.sroa.1148.sroa.0.0
  br i1 %i.cp, label %.loopexit43.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cq = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.cq, %i.cg
  br i1 %exitcond.not.i7.i, label %.loopexit, label %.lr.ph.i.i

.loopexit43.i:                                    ; preds = %.lr.ph.i.i, %.noexc25
  %.sroa.5.0.i.i = phi i64 [ %i.cl, %.noexc25 ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cr = icmp ult i64 %.sroa.5.0.i.i, %i.cg
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add i64 %.sroa.5.0.i.i, %.fr215.i       ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  br label %.loopexit42.split.us.i

bb.y:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  br i1 %i.cf, label %.lr.ph.i8.i, label %.loopexit

.lr.ph.i8.i:                                      ; preds = %bb.y
  %.sroa.1148.sroa.0.0.insert.ext = zext i8 %.sroa.1148.sroa.0.0 to i64
  %.sroa.1148.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1148.sroa.10.0.insert.insert, %.sroa.1148.sroa.0.0.insert.ext ; 2 uses
  %i.cu = sub i64 %.sroa.15.0.copyload, %.sroa.1148.sroa.0.0.insert.insert
  %invariant.op = sub i64 1, %.fr215.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ab, %.lr.ph.i8.i
  %i.cv = phi i64 [ %.sink70.i.i, %bb.ab ], [ %.sroa.3053.0, %.lr.ph.i8.i ] ; 3 uses
  %i.cw = phi i64 [ %i.dg, %bb.ab ], [ %i.ce, %.lr.ph.i8.i ]
  %i.cx = phi i64 [ %.sink71.i.i, %bb.ab ], [ %.sroa.22.0, %.lr.ph.i8.i ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %i.da = and i8 %i.cz, 63
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %.sroa.786.0.copyload
  %.not.i9.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i9.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i.i
  %i.de = add i64 %i.cx, %.sroa.15.0.copyload
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %..i.i10.i = call noundef i64 @llvm.umax.i64(i64 %i.cv, i64 %.fr215.i) ; 2 uses
  %i.df = icmp ult i64 %..i.i10.i, %.sroa.15.0.copyload
  br i1 %i.df, label %.lr.ph, label %.preheader36.i.i.preheader

bb.ab:                                            ; preds = %bb.af, %bb.ae, %bb.z
  %.sink71.i.i = phi i64 [ %i.ed, %bb.af ], [ %i.ec, %bb.ae ], [ %i.de, %bb.z ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.af ], [ %i.cu, %bb.ae ], [ 0, %bb.z ]
  %i.dg = add i64 %.sink71.i.i, %i.o              ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %.sroa.1392.0.copyload
  br i1 %i.dh, label %.lr.ph.split.i.i, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph
  %i.di = add nuw nsw i64 %.sroa.04.0.i.i26, 1    ; 2 uses
  %i.dj = icmp ult i64 %i.di, %.sroa.15.0.copyload
  br i1 %i.dj, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ac, %bb.aa
  %i.dk = icmp ult i64 %i.cv, %.fr215.i
  br i1 %i.dk, label %.lr.ph28, label %.split.us.i11.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.04.0.i.i26 = phi i64 [ %i.di, %bb.ac ], [ %..i.i10.i, %bb.aa ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i26
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !95, !noalias !97, !noundef !5
  %i.dn = add i64 %.sroa.04.0.i.i26, %i.cx        ; 2 uses
  %i.do = icmp ult i64 %i.dn, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.dn
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %.not21.i.i = icmp eq i8 %i.dm, %i.dq
  br i1 %.not21.i.i, label %bb.ac, label %bb.af

.preheader36.i.i:                                 ; preds = %bb.ad
  %i.dr = icmp ult i64 %i.cv, %i.dt
  br i1 %i.dr, label %.lr.ph28, label %.split.us.i11.i

.split.us.i11.i:                                  ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.ds = add i64 %i.cx, %.sroa.15.0.copyload     ; 2 uses
  br label %.loopexit42.split.us.i

.lr.ph28:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i27 = phi i64 [ %i.dt, %.preheader36.i.i ], [ %.fr215.i, %.preheader36.i.i.preheader ]
  %i.dt = add i64 %.sroa.2.0.i.i27, -1            ; 6 uses
  %i.du = icmp ult i64 %i.dt, %.sroa.15.0.copyload
  br i1 %i.du, label %bb.ad, label %.split32.us.i.i.invoke

bb.ad:                                            ; preds = %.lr.ph28
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !95, !noalias !97, !noundef !5
  %i.dx = add i64 %i.dt, %i.cx                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !94, !noalias !96, !noundef !5
  %.not20.i.i = icmp eq i8 %i.dw, %i.ea
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ae

.split32.us.i.i.invoke:                           ; preds = %.preheader.i19.i, %.lr.ph28
  %i.eb = phi i64 [ %i.dt, %.lr.ph28 ], [ %i.ee, %.preheader.i19.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.split32.us.i.i.cont unwind label %.loopexit.split-lp

.split32.us.i.i.cont:                             ; preds = %.split32.us.i.i.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ec = add i64 %i.cx, %.sroa.1148.sroa.0.0.insert.insert
  br label %bb.ab

bb.af:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cx, %invariant.op
  %i.ed = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i26
  br label %bb.ab

bb.ag:                                            ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  br i1 %i.cf, label %.lr.ph.i15.i, label %.loopexit

.lr.ph.i15.i:                                     ; preds = %bb.ag
  %.sroa.1148.sroa.0.0.insert.ext59 = zext i8 %.sroa.1148.sroa.0.0 to i64
  %.sroa.1148.sroa.0.0.insert.insert61 = or disjoint i64 %.sroa.1148.sroa.10.0.insert.insert, %.sroa.1148.sroa.0.0.insert.ext59
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload)
  %i.ee = add i64 %.fr215.i, -1                   ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.ee, %.sroa.15.0.copyload
  %exitcond.not.i17.i30.not = icmp ult i64 %.fr215.i, %.sroa.15.0.copyload
  %invariant.op96 = sub i64 1, %.fr215.i
  %.not34.i.us.i33 = icmp eq i64 %.fr215.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.aj, %.lr.ph.i15.i
  %i.ef = phi i64 [ %i.fe, %bb.aj ], [ %i.ce, %.lr.ph.i15.i ]
  %i.eg = phi i64 [ %.sink.i18.i, %bb.aj ], [ %.sroa.22.0, %.lr.ph.i15.i ] ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.ef
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !98, !noalias !100, !noundef !5
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.el, %.sroa.786.0.copyload
  %.not.us.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.us.i.i, label %bb.ai, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i17.i30.not, label %.lr.ph32, label %.preheader.i19.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph32
  %i.en = add i64 %.sroa.04.0.us.i.i31, 1         ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.en, %umax.i.i
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph32

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.i19.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i33, label %.split.us.i21.i, label %.lr.ph35

.preheader.i19.us.i:                              ; preds = %.lr.ph35
  %.not34.i.us.i = icmp eq i64 %i.eo, 0
  br i1 %.not34.i.us.i, label %.split.us.i21.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i34 = phi i64 [ %i.eo, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.eo = add i64 %.sroa.2.0.us.i.us.i34, -1      ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !99, !noalias !101, !noundef !5
  %i.er = add i64 %i.eo, %i.eg                    ; 2 uses
  %i.es = icmp ult i64 %i.er, %.sroa.1392.0.copyload
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.1291.0.copyload, i64 %i.er
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs7BtpbLEd5q3_9elfshaker:bb.a

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc6borrow3CoweEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !5
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskfBPnJUU6aB_12clap_builder5error7MessageEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder5error7MessageECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder5error7MessageECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder5error7MessageECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder5error7MessageECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !110 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !110, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !110

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !5, !noalias !110 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !12, !invariant.load !5, !noalias !110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #28, !noalias !110
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !5, !noalias !110 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !12, !invariant.load !5, !noalias !110
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #28, !noalias !110
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrIBC_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !13, !noundef !5
  %switch = icmp ugt i64 %i.b, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBI_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1i_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1i_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker:bb.a
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB1W_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1t_6os_str5OsStrEEENtNtNtB2e_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !12, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #28
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !12, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #28
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapAhj14_mEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapAhj14_mEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringmEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtBK_3ffi6os_str8OsStringmEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs3pG3ROnddAj_8clap_lex7RawArgsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %.body8 unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBI_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body8 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body8:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #25
          to label %.body10 unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.body.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.m ], [ %i.k, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body10 unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.o

bb.n:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body10:                                          ; preds = %bb.o, %.body.i, %.body8
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body8 ], [ %i.r, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #25
          to label %.body14 unwind label %bb.w

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.body.i12 unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i12

.body.i12:                                        ; preds = %bb.s, %bb.p
  %eh.lpad-body.i13 = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.t, %bb.p ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body14 unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.u

bb.t:                                             ; preds = %.body.i12
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body14:                                          ; preds = %bb.u, %.body.i12, %.body10
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body10 ], [ %i.aa, %bb.u ], [ %eh.lpad-body.i13, %.body.i12 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.w

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit16 unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body14, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.ad, %bb.v ], [ %.pn4, %.body14 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
  ret void

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit, %.body14, %.body10, %.body8, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker.exit
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !18

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !133
  store i8 3, ptr %i.a, align 8, !alias.scope !133
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !146, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %.body36 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !9, !alias.scope !147, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body36 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39 unwind label %bb.i

.body36:                                          ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #25
          to label %.body40 unwind label %bb.by

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.p = load i64, ptr %i.o, align 8, !range !15, !alias.scope !148, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %switch.i.i.i = icmp samesign ult i64 %i.p, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !151 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !151, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !151 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i.i)
          to label %bb.m unwind label %bb.o, !noalias !151

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !11, !invariant.load !5, !noalias !151 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !12, !invariant.load !5, !noalias !151
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28, !noalias !151
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.o:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !11, !invariant.load !5, !noalias !151 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !12, !invariant.load !5, !noalias !151
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #28, !noalias !151
  br label %.body40

.body40:                                          ; preds = %bb.p, %bb.o, %.body36
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body36 ], [ %i.z, %bb.o ], [ %i.z, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #25
          to label %.body43 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body43 unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body43:                                          ; preds = %bb.t, %bb.q, %.body40
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body40 ], [ %i.ak, %bb.t ], [ %i.ah, %bb.q ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #25
          to label %.body47 unwind label %bb.by

bb.t:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body47 unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49 unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body47:                                          ; preds = %bb.x, %bb.u, %.body43
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body43 ], [ %i.ap, %bb.x ], [ %i.am, %bb.u ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #25
          to label %.body52 unwind label %bb.by

bb.x:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49: ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body52 unwind label %bb.aa

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body52:                                          ; preds = %bb.ab, %bb.y, %.body47
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body47 ], [ %i.au, %bb.ab ], [ %i.ar, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #25
          to label %.body56 unwind label %bb.by

bb.ab:                                            ; preds = %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body52

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54: ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body56 unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body56:                                          ; preds = %bb.af, %bb.ac, %.body52
  %.pn10 = phi { ptr, i32 } [ %.pn8, %.body52 ], [ %i.az, %bb.af ], [ %i.aw, %bb.ac ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #25
          to label %.body59 unwind label %bb.by

bb.af:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body56

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body59 unwind label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body59:                                          ; preds = %bb.aj, %bb.ag, %.body56
  %.pn12 = phi { ptr, i32 } [ %.pn10, %.body56 ], [ %i.be, %bb.aj ], [ %i.bb, %bb.ag ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #25
          to label %.body63 unwind label %bb.by

bb.aj:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body63 unwind label %bb.am

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit65 unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bh = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker:bb.a

.body94:                                          ; preds = %bb.ba, %bb.ay, %.body88
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body88 ], [ %i.cg, %bb.ba ], [ %i.cd, %bb.ay ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #25
          to label %.body100 unwind label %bb.cb

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body94

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit91, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !9, !alias.scope !193, !noundef !5
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body100 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103 unwind label %bb.be

.body100:                                         ; preds = %bb.be, %bb.bc, %.body94
  %.pn24 = phi { ptr, i32 } [ %.pn22, %.body94 ], [ %i.cn, %bb.be ], [ %i.ck, %bb.bc ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cm) #25
          to label %.body106 unwind label %bb.cb

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body100

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !9, !alias.scope !194, !noundef !5
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body106 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109 unwind label %bb.bi

.body106:                                         ; preds = %bb.bi, %bb.bg, %.body100
  %.pn26 = phi { ptr, i32 } [ %.pn24, %.body100 ], [ %i.cu, %bb.bi ], [ %i.cr, %bb.bg ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #25
          to label %bb.bj unwind label %bb.cb

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cv)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %.body106
  %.pn28 = phi { ptr, i32 } [ %i.cx, %bb.bk ], [ %.pn26, %.body106 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #25
          to label %.body111 unwind label %bb.cb

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body111 unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body111:                                         ; preds = %bb.bp, %bb.bm, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %.pn28, %bb.bj ], [ %i.dc, %bb.bp ], [ %i.cz, %bb.bm ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #25
          to label %.body114 unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bn
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body111

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bn
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %.body114 unwind label %bb.bs

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body114:                                         ; preds = %bb.bt, %bb.bq, %.body111
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body111 ], [ %i.dh, %bb.bt ], [ %i.de, %bb.bq ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #25
          to label %.body116 unwind label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body114

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.br
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.dj = load i64, ptr %i.di, align 8, !range !15, !alias.scope !195, !noundef !5 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %switch.i.i.i = icmp samesign ult i64 %i.dj, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !198 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !198, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.dn = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !198 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dn(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bx unwind label %bb.bz, !noalias !198

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !11, !invariant.load !5, !noalias !198 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !12, !invariant.load !5, !noalias !198
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dp, i64 noundef range(i64 1, 536870913) %i.ds) #28, !noalias !198
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.bz:                                            ; preds = %bb.bw
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !11, !invariant.load !5, !noalias !198 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.body116, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !12, !invariant.load !5, !noalias !198
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dv, i64 noundef range(i64 1, 536870913) %i.dy) #28, !noalias !198
  br label %.body116

.body116:                                         ; preds = %bb.ca, %bb.bz, %.body114
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body114 ], [ %i.dt, %bb.bz ], [ %i.dt, %bb.ca ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dz) #25
          to label %bb.cc unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.by, %bb.bx, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ea)
  ret void

bb.cb:                                            ; preds = %.body116, %.body114, %.body111, %bb.bj, %.body106, %.body100, %.body94, %.body88, %.body83, %.body79, %.body76, %.body71, %.body65, %.body59, %.body53, %.body47, %.body42, %.body38, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.cc:                                            ; preds = %.body116
  resume { ptr, i32 } %.pn34
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %.body11 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body11 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13 unwind label %bb.g

.body11:                                          ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !5, !align !10, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.val5, ptr nonnull %.val6) #25
          to label %.body14 unwind label %bb.o

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.l, align 8, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.m = load ptr, ptr %.val4, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.m(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !12, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #28
  br label %.body14

.body14:                                          ; preds = %bb.l, %bb.k, %.body11
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load i32, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.z = icmp eq i32 %.val8, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.m

bb.m:                                             ; preds = %.body14
  %i.aa = tail call noundef i32 @close(i32 noundef %.val8) #28 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val7 = load i32, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp eq i32 %.val7, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
  %i.ad = tail call noundef i32 @close(i32 noundef %.val7) #28 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, %bb.n
  ret void

bb.o:                                             ; preds = %.body11, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.m, %.body14
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !19, !noundef !5 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808       ; 2 uses
  %i.f = icmp ult i64 %i.e, 16
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %.unreachabledefault [
    i64 0, label %bb.h
    i64 1, label %bb.k
    i64 2, label %bb.z
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 6, label %bb.an
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 9, label %bb.ap
    i64 10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 11, label %bb.as
    i64 12, label %bb.av
    i64 13, label %bb.ay
    i64 14, label %bb.bb
    i64 15, label %bb.b
  ]

.unreachabledefault:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !12, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !11, !invariant.load !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !12, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #28
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.bk, %.body.i, %bb.bg, %bb.az, %bb.aw, %bb.at, %bb.af, %bb.ai, %bb.al, %bb.aa, %.body.i.i, %.body3.i.i, %bb.x, %bb.f, %bb.g, %bb.ao
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %bb.bk ], [ %i.p, %bb.f ], [ %i.az, %bb.x ], [ %i.bc, %bb.aa ], [ %i.bq, %bb.ao ], [ %i.bm, %bb.al ], [ %i.bv, %bb.at ], [ %i.by, %bb.aw ], [ %i.cb, %bb.az ], [ %eh.lpad-body.i, %.body.i ], [ %i.p, %bb.g ], [ %eh.lpad-body4.i.i, %.body3.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.bk, %bb.ai ], [ %i.bi, %bb.af ], [ %i.cl, %bb.bg ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = ptrtoint ptr %.val2 to i64               ; 2 uses
  %i.x = and i64 %i.w, 3
  switch i64 %i.x, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.j
  ], !prof !18

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.z = and i64 %i.w, 1095216660480
  %i.aa = icmp ne i64 %i.z, 1095216660480
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.assume(i1 %i.aa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val2, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !218
  store i8 3, ptr %i.b, align 8, !alias.scope !218
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ad = icmp eq i64 %i.c, -1
  br i1 %i.ad, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !9, !alias.scope !221, !noundef !5
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body3.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.n
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.ah, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load ptr, ptr %i.am, align 8, !alias.scope !222, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %.val2.i.i) #25
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.an, align 8, !alias.scope !222, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  %i.ao = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.ap = and i64 %i.ao, 3
  switch i64 %i.ap, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 1, label %bb.u
  ], !prof !18

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.aq = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ar = and i64 %i.ao, 1095216660480
  %i.as = icmp ne i64 %i.ar, 1095216660480
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.as)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.at = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !223, !noalias !222
  store i8 3, ptr %i.a, align 8, !alias.scope !223, !noalias !222
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.u, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.v:                                             ; preds = %.body3.i.i, %.body.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

.body3.i.i:                                       ; preds = %bb.w, %bb.q
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %i.aw, %bb.w ], [ %i.aj, %bb.q ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #25
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit8.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit8.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.z:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_4
