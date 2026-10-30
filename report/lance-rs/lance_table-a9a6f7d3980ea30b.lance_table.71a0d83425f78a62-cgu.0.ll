Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit26make_staging_manifest_path:bb.a

.thread209.i:                                     ; preds = %.split.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i
  %i.ad = phi ptr [ %i.y, %.split.i ], [ %.val.i17, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.ae = phi i64 [ %i.z, %.split.i ], [ %.val79.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs9KQ7US1M400_11lance_table.exit.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %rhsc.i = load i8, ptr %i.ag, align 1, !noalias !61244
  %i.ah = icmp eq i8 %rhsc.i, 47
  %i.ai = sext i1 %i.ah to i64
  %spec.select.i = add i64 %i.ae, %i.ai           ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61244
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %spec.select.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !61244

bb.i:                                             ; preds = %.thread209.i
  %.sroa.038.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !61244
  %.sroa.038.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.038.sroa.4.0.copyload.i = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx.i, align 8, !noalias !61244 ; 33 uses
  %.sroa.038.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.038.sroa.6.0.copyload.i = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx.i, align 8, !noalias !61244 ; 5 uses
  %.sroa.038.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.038.sroa.7.0.copyload.i = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx.i, align 8, !noalias !61244 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.038.sroa.8.0.copyload.i = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx.i, align 8, !noalias !61244
  %.sroa.038.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.038.sroa.10.0.copyload.i = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx.i, align 8, !noalias !61244
  %.sroa.038.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.038.sroa.12.0.copyload.i = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx.i, align 8, !noalias !61244, !nonnull !62, !noundef !62 ; 23 uses
  %.sroa.038.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.038.sroa.13.0.copyload.i = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx.i, align 8, !noalias !61244 ; 69 uses
  %.sroa.038.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.038.sroa.14.0.copyload.i = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx.i, align 8, !noalias !61244 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.038.sroa.15.0.copyload.i = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx.i, align 8, !noalias !61244 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61244
  %i.aj = trunc nuw i64 %.sroa.038.sroa.0.0.copyload.i to i1
  %i.ak = add nsw i64 %.sroa.038.sroa.15.0.copyload.i, -1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.4181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  br i1 %i.aj, label %.split312.us.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.i
  %i.am = and i64 %.sroa.038.sroa.6.0.copyload.i, 65536
  %.sroa.9125.sroa.10142.0.extract.trunc.i.not = icmp eq i64 %i.am, 0
  %.sroa.9125.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.038.sroa.6.0.copyload.i to i1 ; 3 uses
  br i1 %.sroa.9125.sroa.10142.0.extract.trunc.i.not, label %.lr.ph.i.i.i.peel, label %.sink.split.i.i.peel

.lr.ph.i.i.i.peel:                                ; preds = %.preheader.i.i.preheader.i
  %i.an = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, 0
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.peel
  %.not.i.i.i.peel.i.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel, label %bb.k, label %.split.i.i.i.peel.i.i.peel

.split.i.i.i.peel.i.i.peel:                       ; preds = %bb.j
  %i.ao = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ao, label %bb.l, label %.loopexit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !61246, !noalias !61247, !noundef !62
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k, %.split.i.i.i.peel.i.i.peel, %.lr.ph.i.i.i.peel
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.038.sroa.4.0.copyload.i ; 4 uses
  %i.at = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.at, label %.loopexit19.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.as, align 1, !noalias !61248, !noundef !62 ; 5 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.n, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = and i8 %i.au, 31
  %i.ay = zext nneg i8 %i.ax to i32               ; 3 uses
  %i.az = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 1
  %i.ba = icmp samesign ne i64 %i.az, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.aw, align 1, !noalias !61248, !noundef !62
  %i.bc = shl nuw nsw i32 %i.ay, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = icmp samesign ugt i8 %i.au, -33
  br i1 %i.bg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 2
  %i.bj = icmp samesign ne i64 %i.bi, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i8, ptr %i.bh, align 1, !noalias !61248, !noundef !62
  %i.bl = shl nuw nsw i32 %i.be, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.ay, 12
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = icmp samesign ugt i8 %i.au, -17
  br i1 %i.br, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bt = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload.i, 3
  %i.bu = icmp samesign ne i64 %i.bt, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.bu)
  %i.bv = load i8, ptr %i.bs, align 1, !noalias !61248, !noundef !62
  %i.bw = shl nuw nsw i32 %i.ay, 18
  %i.bx = and i32 %i.bw, 1835008
  %i.by = shl nuw nsw i32 %i.bo, 6
  %i.bz = and i8 %i.bv, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = or disjoint i32 %i.cb, %i.bx
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = zext nneg i8 %i.au to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel = phi i32 [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel ], [ %i.cc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel ], [ %i.bf, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel ], [ %i.cd, %bb.n ] ; 4 uses
  %i.ce = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.ce)
  br i1 %.sroa.9125.sroa.0.0.extract.trunc.i, label %.sink.split.i.i.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 128
  br i1 %i.cf, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 2048
  br i1 %i.cg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel, 65536
  %..i.i.peel.i.i.peel = select i1 %i.ch, i64 3, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.01.0.i.i.peel.i.i.peel = phi i64 [ 2, %bb.q ], [ %..i.i.peel.i.i.peel, %bb.r ], [ 1, %bb.p ]
  %i.ci = add i64 %.sroa.01.0.i.i.peel.i.i.peel, %.sroa.038.sroa.4.0.copyload.i ; 23 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i.peel = icmp ult i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel, label %bb.u, label %.split.i.i.i.i.i.peel

.split.i.i.i.i.i.peel:                            ; preds = %bb.t
  %i.ck = icmp eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ck, label %bb.v, label %.loopexit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !61246, !noalias !61249, !noundef !62
  %i.cn = icmp sgt i8 %i.cm, -65
  br i1 %i.cn, label %bb.v, label %.loopexit.i.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i.i.peel, %bb.s
  %i.co = icmp samesign eq i64 %i.ci, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.co, label %.sink.split.i.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ci
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !61250, !noundef !62 ; 3 uses
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %.sink.split.i.i.peel, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel: ; preds = %bb.w
  %i.cs = add nuw nsw i64 %i.ci, 1
  %i.ct = icmp samesign ne i64 %i.cs, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp samesign ugt i8 %i.cq, -33
  br i1 %i.cu, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, label %.sink.split.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel
  %i.cv = add nuw nsw i64 %i.ci, 2
  %i.cw = icmp samesign ne i64 %i.cv, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp samesign ugt i8 %i.cq, -17
  br i1 %i.cx, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, label %.sink.split.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel
  %i.cy = add nuw nsw i64 %i.ci, 3
  %i.cz = icmp samesign ne i64 %i.cy, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.cz)
  br label %.sink.split.i.i.peel

.loopexit19.i.i.peel:                             ; preds = %bb.l
  br i1 %.sroa.9125.sroa.0.0.extract.trunc.i, label %.sink.split.i.i.peel, label %bb.x

bb.x:                                             ; preds = %.loopexit19.i.i.peel
  br label %.sink.split.i.i.peel

.sink.split.i.i.peel:                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel, %bb.w, %bb.x, %.loopexit19.i.i.peel, %bb.v, %bb.o, %.preheader.i.i.preheader.i
  %.sroa.9125.sroa.0.4.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ %.sroa.9125.sroa.0.0.extract.trunc.i, %.preheader.i.i.preheader.i ], [ false, %bb.v ], [ false, %bb.w ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ] ; 2 uses
  %.sroa.51.2.i.peel = phi i1 [ true, %bb.x ], [ false, %.loopexit19.i.i.peel ], [ false, %bb.o ], [ true, %.preheader.i.i.preheader.i ], [ false, %bb.v ], [ false, %bb.w ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ]
  %.sroa.41.2.i.peel = phi i64 [ 0, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ 0, %.preheader.i.i.preheader.i ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %i.ci, %bb.w ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ] ; 4 uses
  %.sroa.5.5.i.peel = phi i64 [ %.sroa.038.sroa.4.0.copyload.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader.i.i.preheader.i ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %i.ci, %bb.w ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ] ; 15 uses
  %spec.select.pn.i.peel = phi i64 [ %spec.select.i, %bb.x ], [ %.sroa.038.sroa.4.0.copyload.i, %.loopexit19.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.o ], [ %spec.select.i, %.preheader.i.i.preheader.i ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.v ], [ %i.ci, %bb.w ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel ], [ %i.ci, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel ] ; 2 uses
  %i.da = icmp eq i64 %spec.select.pn.i.peel, 0
  br i1 %i.da, label %.split333.us.i, label %bb.y

bb.y:                                             ; preds = %.sink.split.i.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61244
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload.i, i64 noundef %spec.select.pn.i.peel)
          to label %bb.z unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !61244

bb.z:                                             ; preds = %bb.y
  %i.db = load i64, ptr %i.c, align 8, !range !64, !noalias !61244, !noundef !62 ; 2 uses
  %.not77.i.peel = icmp eq i64 %i.db, -1
  br i1 %.not77.i.peel, label %bb.aa, label %.split336.us.i

bb.aa:                                            ; preds = %bb.z
  %.sroa.0180.0.copyload.i.peel = load ptr, ptr %i.al, align 8, !noalias !61244
  %.sroa.4181.0.copyload.i.peel = load i64, ptr %.sroa.4181.0..sroa_idx.i, align 8, !noalias !61244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61244
  %i.dc = ptrtoint ptr %.sroa.0180.0.copyload.i.peel to i64 ; 2 uses
  %.0.val.off.i.i.i.peel = add i64 %i.dc, -1
  %switch.i.i.i.peel = icmp ult i64 %.0.val.off.i.i.i.peel, -2
  br i1 %switch.i.i.i.peel, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

bb.ab:                                            ; preds = %bb.aa
  %i.dd = inttoptr i64 %.sroa.4181.0.copyload.i.peel to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !61251
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel: ; preds = %bb.ab, %bb.aa
  br i1 %.sroa.51.2.i.peel, label %.thread230.i, label %.lr.ph.i.i.i.peel257

.lr.ph.i.i.i.peel257:                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel
  %i.de = icmp eq i64 %.sroa.5.5.i.peel, 0
  br i1 %i.de, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.peel257
  %.not.i.i.i.peel.i.i.peel258 = icmp ult i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i.peel258, label %bb.ad, label %.split.i.i.i.peel.i.i.peel259

.split.i.i.i.peel.i.i.peel259:                    ; preds = %bb.ac
  %i.df = icmp eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.df, label %bb.ae, label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !61246, !noalias !61247, !noundef !62
  %i.di = icmp sgt i8 %i.dh, -65
  br i1 %i.di, label %bb.ae, label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.peel.i.i.peel259, %.lr.ph.i.i.i.peel257
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.5.i.peel ; 4 uses
  %i.dk = icmp samesign eq i64 %.sroa.5.5.i.peel, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.dk, label %.loopexit19.i.i.peel271, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = load i8, ptr %i.dj, align 1, !noalias !61248, !noundef !62 ; 5 uses
  %i.dm = icmp sgt i8 %i.dl, -1
  br i1 %i.dm, label %bb.ag, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260: ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.do = and i8 %i.dl, 31
  %i.dp = zext nneg i8 %i.do to i32               ; 3 uses
  %i.dq = add nuw nsw i64 %.sroa.5.5.i.peel, 1
  %i.dr = icmp samesign ne i64 %i.dq, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.dr)
  %i.ds = load i8, ptr %i.dn, align 1, !noalias !61248, !noundef !62
  %i.dt = shl nuw nsw i32 %i.dp, 6
  %i.du = and i8 %i.ds, 63
  %i.dv = zext nneg i8 %i.du to i32               ; 2 uses
  %i.dw = or disjoint i32 %i.dt, %i.dv
  %i.dx = icmp samesign ugt i8 %i.dl, -33
  br i1 %i.dx, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dz = add nuw nsw i64 %.sroa.5.5.i.peel, 2
  %i.ea = icmp samesign ne i64 %i.dz, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dy, align 1, !noalias !61248, !noundef !62
  %i.ec = shl nuw nsw i32 %i.dv, 6
  %i.ed = and i8 %i.eb, 63
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.ec, %i.ee            ; 2 uses
  %i.eg = shl nuw nsw i32 %i.dp, 12
  %i.eh = or disjoint i32 %i.ef, %i.eg
  %i.ei = icmp samesign ugt i8 %i.dl, -17
  br i1 %i.ei, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, label %bb.ah

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  %i.ek = add nuw nsw i64 %.sroa.5.5.i.peel, 3
  %i.el = icmp samesign ne i64 %i.ek, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.el)
  %i.em = load i8, ptr %i.ej, align 1, !noalias !61248, !noundef !62
  %i.en = shl nuw nsw i32 %i.dp, 18
  %i.eo = and i32 %i.en, 1835008
  %i.ep = shl nuw nsw i32 %i.ef, 6
  %i.eq = and i8 %i.em, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.ep, %i.er
  %i.et = or disjoint i32 %i.es, %i.eo
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = zext nneg i8 %i.dl to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel263 = phi i32 [ %i.eh, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i.peel261 ], [ %i.et, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i.peel262 ], [ %i.dw, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i.peel260 ], [ %i.eu, %bb.ag ] ; 4 uses
  %i.ev = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 1114112
  call void @llvm.assume(i1 %i.ev)
  br i1 %.sroa.9125.sroa.0.4.i.peel, label %.sink.split.i.i.peel272, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 128
  br i1 %i.ew, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 2048
  br i1 %i.ex, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel263, 65536
  %..i.i.peel.i.i.peel264 = select i1 %i.ey, i64 3, i64 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.01.0.i.i.peel.i.i.peel265 = phi i64 [ 2, %bb.aj ], [ %..i.i.peel.i.i.peel264, %bb.ak ], [ 1, %bb.ai ]
  %i.ez = add i64 %.sroa.01.0.i.i.peel.i.i.peel265, %.sroa.5.5.i.peel ; 23 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i.i.peel266 = icmp ult i64 %i.ez, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i.peel266, label %bb.an, label %.split.i.i.i.i.i.peel267

.split.i.i.i.i.i.peel267:                         ; preds = %bb.am
  %i.fb = icmp eq i64 %i.ez, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.fb, label %bb.ao, label %.loopexit.i.i

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !61246, !noalias !61249, !noundef !62
  %i.fe = icmp sgt i8 %i.fd, -65
  br i1 %i.fe, label %bb.ao, label %.loopexit.i.i

bb.ao:                                            ; preds = %bb.an, %.split.i.i.i.i.i.peel267, %bb.al
  %i.ff = icmp samesign eq i64 %i.ez, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ff, label %.sink.split.i.i.peel272, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.ez
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !61250, !noundef !62 ; 3 uses
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %.sink.split.i.i.peel272, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268: ; preds = %bb.ap
  %i.fj = add nuw nsw i64 %i.ez, 1
  %i.fk = icmp samesign ne i64 %i.fj, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp samesign ugt i8 %i.fh, -33
  br i1 %i.fl, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, label %.sink.split.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268
  %i.fm = add nuw nsw i64 %i.ez, 2
  %i.fn = icmp samesign ne i64 %i.fm, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp samesign ugt i8 %i.fh, -17
  br i1 %i.fo, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, label %.sink.split.i.i.peel272

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269
  %i.fp = add nuw nsw i64 %i.ez, 3
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.fq)
  br label %.sink.split.i.i.peel272

.loopexit19.i.i.peel271:                          ; preds = %bb.ae
  br i1 %.sroa.9125.sroa.0.4.i.peel, label %.sink.split.i.i.peel272, label %bb.aq

bb.aq:                                            ; preds = %.loopexit19.i.i.peel271
  br label %.sink.split.i.i.peel272

.sink.split.i.i.peel272:                          ; preds = %bb.aq, %.loopexit19.i.i.peel271, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268, %bb.ap, %bb.ao, %bb.ah
  %.sroa.9125.sroa.0.4.i.peel273 = phi i1 [ true, %bb.aq ], [ false, %.loopexit19.i.i.peel271 ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.41.2.i.peel274 = phi i64 [ %.sroa.41.2.i.peel, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ez, %bb.ap ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %.sroa.5.5.i.peel275 = phi i64 [ %.sroa.038.sroa.13.0.copyload.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ez, %bb.ap ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ]
  %spec.select.pn.i.peel276 = phi i64 [ %spec.select.i, %bb.aq ], [ %.sroa.038.sroa.13.0.copyload.i, %.loopexit19.i.i.peel271 ], [ %.sroa.5.5.i.peel, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.ao ], [ %i.ez, %bb.ap ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i.peel270 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i.peel269 ], [ %i.ez, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i.peel268 ] ; 2 uses
  %i.fr = icmp eq i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  br i1 %i.fr, label %.split333.us.i, label %bb.ar

bb.ar:                                            ; preds = %.sink.split.i.i.peel272
  %.sroa.4.1.i.i.peel = sub nuw i64 %spec.select.pn.i.peel276, %.sroa.41.2.i.peel
  %.sroa.0.1.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.41.2.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61244
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.peel, i64 noundef %.sroa.4.1.i.i.peel)
          to label %bb.as unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !61244

bb.as:                                            ; preds = %bb.ar
  %i.fs = load i64, ptr %i.c, align 8, !range !64, !noalias !61244, !noundef !62 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit26make_staging_manifest_path:bb.a
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload.i
  %exitcond.not.i114.us.i212.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload.i, %.sroa.038.sroa.15.0.copyload.i
  %invariant.op310 = sub i64 1, %.sroa.038.sroa.4.0.copyload.i
  %.not263.us.i.us215 = icmp eq i64 %.sroa.038.sroa.4.0.copyload.i, 0
  br label %bb.av

bb.av:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i, %.split312.us.i
  %.sroa.19.0309.us.i = phi i64 [ %.sroa.038.sroa.8.0.copyload.i, %.split312.us.i ], [ %.sroa.19.2.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i ] ; 3 uses
  %.sroa.31129.0308.us.i = phi i64 [ %.sroa.038.sroa.10.0.copyload.i, %.split312.us.i ], [ %.sroa.31129.2.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i ] ; 3 uses
  %.sroa.41.0307.us.i = phi i64 [ 0, %.split312.us.i ], [ %.sroa.41.2.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i ] ; 7 uses
  %i.fx = icmp eq i64 %.sroa.31129.0308.us.i, -1
  %i.fy = add i64 %.sroa.19.0309.us.i, %i.ak      ; 3 uses
  %i.fz = icmp ult i64 %i.fy, %.sroa.038.sroa.13.0.copyload.i ; 2 uses
  br i1 %i.fx, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !61252)
  call void @llvm.experimental.noalias.scope.decl(metadata !61253)
  br i1 %i.fz, label %.lr.ph.i.us.i, label %.sink.split.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.aw, %.sink.split.i100.us.i
  %i.ga = phi i64 [ %.sink.i101.us.i, %.sink.split.i100.us.i ], [ %.sroa.31129.0308.us.i, %bb.aw ] ; 3 uses
  %i.gb = phi i64 [ %i.he, %.sink.split.i100.us.i ], [ %i.fy, %bb.aw ]
  %i.gc = phi i64 [ %.ph71.i.us.i, %.sink.split.i100.us.i ], [ %.sroa.19.0309.us.i, %bb.aw ] ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.gb
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !61252, !noalias !61244, !noundef !62
  %i.gf = and i8 %i.ge, 63
  %i.gg = zext nneg i8 %i.gf to i64
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = and i64 %i.gh, %.sroa.038.sroa.7.0.copyload.i
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.us.i
  %.sroa.0.0.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 %.sroa.038.sroa.4.0.copyload.i) ; 4 uses
  %umax49.i.us.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload.i)
  %exitcond.not.i.us.i207.not = icmp ult i64 %.sroa.0.0.i.i.us.i, %.sroa.038.sroa.15.0.copyload.i
  br i1 %exitcond.not.i.us.i207.not, label %.lr.ph, label %.preheader264.us.i.preheader

bb.ay:                                            ; preds = %bb.az
  %i.gk = add nuw i64 %.sroa.02.0.i.us.i208, 1    ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.gk, %umax49.i.us.i
  br i1 %exitcond.not.i.us.i, label %.preheader264.us.i.preheader, label %.lr.ph

.preheader264.us.i.preheader:                     ; preds = %bb.ay, %bb.ax
  %i.gl = icmp ult i64 %i.ga, %.sroa.038.sroa.4.0.copyload.i
  br i1 %i.gl, label %.lr.ph210, label %.preheader264.us.i.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ax, %bb.ay
  %.sroa.02.0.i.us.i208 = phi i64 [ %i.gk, %bb.ay ], [ %.sroa.0.0.i.i.us.i, %bb.ax ] ; 4 uses
  %i.gm = add i64 %.sroa.02.0.i.us.i208, %i.gc    ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.gn, label %bb.az, label %.split314.us.i

bb.az:                                            ; preds = %.lr.ph
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload.i, i64 %.sroa.02.0.i.us.i208
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !61253, !noalias !61244, !noundef !62
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.gm
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !61252, !noalias !61244, !noundef !62
  %.not21.i.us.i = icmp eq i8 %i.gp, %i.gr
  br i1 %.not21.i.us.i, label %bb.ay, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.reass.i.reass.reass = add i64 %i.gc, %invariant.op
  %i.gs = add i64 %.reass.i.reass.reass, %.sroa.02.0.i.us.i208
  br label %.sink.split.i100.us.i

.preheader264.us.i:                               ; preds = %bb.bc
  %i.gt = icmp ult i64 %i.ga, %i.gu
  br i1 %i.gt, label %.lr.ph210, label %.preheader264.us.i.preheader._crit_edge

.lr.ph210:                                        ; preds = %.preheader264.us.i.preheader, %.preheader264.us.i
  %.sroa.2.0.i.us.i209 = phi i64 [ %i.gu, %.preheader264.us.i ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader264.us.i.preheader ]
  %i.gu = add i64 %.sroa.2.0.i.us.i209, -1        ; 6 uses
  %i.gv = icmp ult i64 %i.gu, %.sroa.038.sroa.15.0.copyload.i
  br i1 %i.gv, label %bb.bb, label %.split323.us.invoke.i

bb.bb:                                            ; preds = %.lr.ph210
  %i.gw = add i64 %i.gu, %i.gc                    ; 3 uses
  %i.gx = icmp ult i64 %i.gw, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.gx, label %bb.bc, label %.split323.us.invoke.i

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload.i, i64 %i.gu
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !61253, !noalias !61244, !noundef !62
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.gw
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !61252, !noalias !61244, !noundef !62
  %.not.i102.us.i = icmp eq i8 %i.gz, %i.hb
  br i1 %.not.i102.us.i, label %.preheader264.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hc = add i64 %i.gc, %.sroa.038.sroa.6.0.copyload.i
  br label %.sink.split.i100.us.i

bb.be:                                            ; preds = %.lr.ph.i.us.i
  %i.hd = add i64 %i.gc, %.sroa.038.sroa.15.0.copyload.i
  br label %.sink.split.i100.us.i

.sink.split.i100.us.i:                            ; preds = %bb.be, %bb.bd, %bb.ba
  %.sink.i101.us.i = phi i64 [ %i.fv, %bb.bd ], [ 0, %bb.ba ], [ 0, %bb.be ] ; 2 uses
  %.ph71.i.us.i = phi i64 [ %i.hc, %bb.bd ], [ %i.gs, %bb.ba ], [ %i.hd, %bb.be ] ; 2 uses
  %i.he = add i64 %.ph71.i.us.i, %i.ak            ; 2 uses
  %i.hf = icmp ult i64 %i.he, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.hf, label %.lr.ph.i.us.i, label %.sink.split.i.us.i

.preheader264.us.i.preheader._crit_edge:          ; preds = %.preheader264.us.i.preheader, %.preheader264.us.i
  %i.hg = add i64 %i.gc, %.sroa.038.sroa.15.0.copyload.i ; 2 uses
  br label %.sink.split.i.us.i

bb.bf:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !61254)
  call void @llvm.experimental.noalias.scope.decl(metadata !61255)
  br i1 %i.fz, label %.lr.ph.i109.us.i, label %.sink.split.i.us.i

.lr.ph.i109.us.i:                                 ; preds = %bb.bf, %bb.bk
  %i.hh = phi i64 [ %i.ii, %bb.bk ], [ %i.fy, %bb.bf ]
  %i.hi = phi i64 [ %i.ih, %bb.bk ], [ %.sroa.19.0309.us.i, %bb.bf ] ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !61254, !noalias !61244, !noundef !62
  %i.hl = and i8 %i.hk, 63
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %.sroa.038.sroa.7.0.copyload.i
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.bj, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i109.us.i
  br i1 %exitcond.not.i114.us.i212.not, label %.lr.ph214, label %.preheader.us.i.preheader

.preheader.i:                                     ; preds = %bb.bh
  %i.hq = add nuw i64 %.sroa.02.0.i113.us.i213, 1 ; 2 uses
  %exitcond.not.i114.us.i = icmp eq i64 %i.hq, %umax49.i112.us.i
  br i1 %exitcond.not.i114.us.i, label %.preheader.us.i.preheader, label %.lr.ph214

.preheader.us.i.preheader:                        ; preds = %.preheader.i, %.preheader.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader.us.i.us.preheader, label %.preheader.us.i.preheader.split

.preheader.us.i.us.preheader:                     ; preds = %.preheader.us.i.preheader
  br i1 %.not263.us.i.us215, label %.split.us, label %.lr.ph217

.preheader.us.i.us:                               ; preds = %bb.bg
  %.not263.us.i.us = icmp eq i64 %i.hr, 0
  br i1 %.not263.us.i.us, label %.split.us, label %.lr.ph217

.lr.ph217:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i117.us.i.us216 = phi i64 [ %i.hr, %.preheader.us.i.us ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.hr = add i64 %.sroa.2.0.i117.us.i.us216, -1  ; 4 uses
  %i.hs = add i64 %i.hr, %i.hi                    ; 3 uses
  %i.ht = icmp ult i64 %i.hs, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ht, label %bb.bg, label %.split323.us.invoke.i

bb.bg:                                            ; preds = %.lr.ph217
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload.i, i64 %i.hr
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !61255, !noalias !61244, !noundef !62
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.hs
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !61254, !noalias !61244, !noundef !62
  %.not.i118.us.i.us = icmp eq i8 %i.hv, %i.hx
  br i1 %.not.i118.us.i.us, label %.preheader.us.i.us, label %.split75.us

.split75.us:                                      ; preds = %bb.bg
  %i.hy = add i64 %i.hi, %.sroa.038.sroa.6.0.copyload.i
  br label %bb.bk

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not263.us.i, label %.split.us, label %.split323.us.invoke.i

.lr.ph214:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i113.us.i213 = phi i64 [ %i.hq, %.preheader.i ], [ %.sroa.038.sroa.4.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.hz = add i64 %.sroa.02.0.i113.us.i213, %i.hi ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ia, label %bb.bh, label %.split323.us.i

bb.bh:                                            ; preds = %.lr.ph214
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload.i, i64 %.sroa.02.0.i113.us.i213
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !61255, !noalias !61244, !noundef !62
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.hz
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !61254, !noalias !61244, !noundef !62
  %.not21.i116.us.i = icmp eq i8 %i.ic, %i.ie
  br i1 %.not21.i116.us.i, label %.preheader.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.reass434.i.reass.reass = add i64 %i.hi, %invariant.op310
  %i.if = add i64 %.reass434.i.reass.reass, %.sroa.02.0.i113.us.i213
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i109.us.i
  %i.ig = add i64 %i.hi, %.sroa.038.sroa.15.0.copyload.i
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.split75.us, %bb.bi
  %i.ih = phi i64 [ %i.if, %bb.bi ], [ %i.ig, %bb.bj ], [ %i.hy, %.split75.us ] ; 2 uses
  %i.ii = add i64 %i.ih, %i.ak                    ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.ij, label %.lr.ph.i109.us.i, label %.sink.split.i.us.i

.split.us:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %i.ik = add i64 %i.hi, %.sroa.038.sroa.15.0.copyload.i ; 2 uses
  br label %.sink.split.i.us.i

.sink.split.i.us.i:                               ; preds = %.sink.split.i100.us.i, %bb.bk, %.split.us, %bb.bf, %.preheader264.us.i.preheader._crit_edge, %bb.aw
  %.sroa.51.2.us.i = phi i1 [ false, %.preheader264.us.i.preheader._crit_edge ], [ false, %.split.us ], [ true, %bb.bk ], [ true, %bb.bf ], [ true, %bb.aw ], [ true, %.sink.split.i100.us.i ]
  %.sroa.41.2.us.i = phi i64 [ %i.hg, %.preheader264.us.i.preheader._crit_edge ], [ %i.ik, %.split.us ], [ %.sroa.41.0307.us.i, %bb.bk ], [ %.sroa.41.0307.us.i, %bb.bf ], [ %.sroa.41.0307.us.i, %bb.aw ], [ %.sroa.41.0307.us.i, %.sink.split.i100.us.i ]
  %.sroa.31129.2.us.i = phi i64 [ 0, %.preheader264.us.i.preheader._crit_edge ], [ -1, %.split.us ], [ -1, %bb.bk ], [ -1, %bb.bf ], [ %.sroa.31129.0308.us.i, %bb.aw ], [ %.sink.i101.us.i, %.sink.split.i100.us.i ]
  %.sroa.19.2.us.i = phi i64 [ %i.hg, %.preheader264.us.i.preheader._crit_edge ], [ %i.ik, %.split.us ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.bk ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.bf ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.aw ], [ %.sroa.038.sroa.13.0.copyload.i, %.sink.split.i100.us.i ]
  %spec.select.pn.us.i = phi i64 [ %i.gc, %.preheader264.us.i.preheader._crit_edge ], [ %i.hi, %.split.us ], [ %spec.select.i, %bb.bk ], [ %spec.select.i, %bb.bf ], [ %spec.select.i, %bb.aw ], [ %spec.select.i, %.sink.split.i100.us.i ] ; 2 uses
  %i.il = icmp eq i64 %spec.select.pn.us.i, %.sroa.41.0307.us.i
  br i1 %i.il, label %.split333.us.i, label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i.us.i
  %.sroa.4.1.i.us.i = sub nuw i64 %spec.select.pn.us.i, %.sroa.41.0307.us.i
  %.sroa.0.1.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.41.0307.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61244
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us.i, i64 noundef %.sroa.4.1.i.us.i)
          to label %bb.bm unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !61244

bb.bm:                                            ; preds = %bb.bl
  %i.im = load i64, ptr %i.c, align 8, !range !64, !noalias !61244, !noundef !62 ; 2 uses
  %.not77.us.i = icmp eq i64 %i.im, -1
  br i1 %.not77.us.i, label %bb.bn, label %.split336.us.i

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0180.0.copyload.us.i = load ptr, ptr %i.al, align 8, !noalias !61244
  %.sroa.4181.0.copyload.us.i = load i64, ptr %.sroa.4181.0..sroa_idx.i, align 8, !noalias !61244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61244
  %i.in = ptrtoint ptr %.sroa.0180.0.copyload.us.i to i64 ; 2 uses
  %.0.val.off.i.i.us.i = add i64 %i.in, -1
  %switch.i.i.us.i = icmp ult i64 %.0.val.off.i.i.us.i, -2
  br i1 %switch.i.i.us.i, label %bb.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i

bb.bo:                                            ; preds = %bb.bn
  %i.io = inttoptr i64 %.sroa.4181.0.copyload.us.i to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.io) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.io, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !61251
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.us.i: ; preds = %bb.bo, %bb.bn
  br i1 %.sroa.51.2.us.i, label %.thread230.i, label %bb.av

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.bl, %.thread209.i, %.loopexit.i.i, %.split323.us.invoke.i, %.invoke.i, %bb.y, %bb.cg, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel282, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5.0310.i = phi i64 [ %.sroa.5.5.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i ], [ %.sroa.5.5.i.peel275, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel282 ] ; 12 uses
  %.sroa.41.0307.i = phi i64 [ %.sroa.41.2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i ], [ %.sroa.41.2.i.peel274, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs9KQ7US1M400_11lance_table.exit.i.peel282 ] ; 4 uses
  %i.ip = icmp eq i64 %.sroa.5.0310.i, 0
  br i1 %i.ip, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.sroa.5.0310.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.peel.i.i, label %bb.bq, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.bp
  %i.iq = icmp eq i64 %.sroa.5.0310.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.iq, label %bb.br, label %.loopexit.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.0310.i
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !61246, !noalias !61247, !noundef !62
  %i.it = icmp sgt i8 %i.is, -65
  br i1 %i.it, label %bb.br, label %.loopexit.i.i

bb.br:                                            ; preds = %bb.bq, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %.sroa.5.0310.i ; 4 uses
  %i.iv = icmp samesign eq i64 %.sroa.5.0310.i, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.iv, label %.sink.split.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iw = load i8, ptr %i.iu, align 1, !noalias !61248, !noundef !62 ; 5 uses
  %i.ix = icmp sgt i8 %i.iw, -1
  br i1 %i.ix, label %bb.bt, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i: ; preds = %bb.bs
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.iz = and i8 %i.iw, 31
  %i.ja = zext nneg i8 %i.iz to i32               ; 3 uses
  %i.jb = add nuw nsw i64 %.sroa.5.0310.i, 1
  %i.jc = icmp samesign ne i64 %i.jb, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.jc)
  %i.jd = load i8, ptr %i.iy, align 1, !noalias !61248, !noundef !62
  %i.je = shl nuw nsw i32 %i.ja, 6
  %i.jf = and i8 %i.jd, 63
  %i.jg = zext nneg i8 %i.jf to i32               ; 2 uses
  %i.jh = or disjoint i32 %i.je, %i.jg
  %i.ji = icmp samesign ugt i8 %i.iw, -33
  br i1 %i.ji, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i, label %bb.bu

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  %i.jk = add nuw nsw i64 %.sroa.5.0310.i, 2
  %i.jl = icmp samesign ne i64 %i.jk, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load i8, ptr %i.jj, align 1, !noalias !61248, !noundef !62
  %i.jn = shl nuw nsw i32 %i.jg, 6
  %i.jo = and i8 %i.jm, 63
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jn, %i.jp            ; 2 uses
  %i.jr = shl nuw nsw i32 %i.ja, 12
  %i.js = or disjoint i32 %i.jq, %i.jr
  %i.jt = icmp samesign ugt i8 %i.iw, -17
  br i1 %i.jt, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i, label %bb.bu

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 3
  %i.jv = add nuw nsw i64 %.sroa.5.0310.i, 3
  %i.jw = icmp samesign ne i64 %i.jv, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.jw)
  %i.jx = load i8, ptr %i.ju, align 1, !noalias !61248, !noundef !62
  %i.jy = shl nuw nsw i32 %i.ja, 18
  %i.jz = and i32 %i.jy, 1835008
  %i.ka = shl nuw nsw i32 %i.jq, 6
  %i.kb = and i8 %i.jx, 63
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.ka, %i.kc
  %i.ke = or disjoint i32 %i.kd, %i.jz
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kf = zext nneg i8 %i.iw to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.js, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.peel.i.i ], [ %i.ke, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.peel.i.i ], [ %i.jh, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.peel.i.i ], [ %i.kf, %bb.bt ] ; 4 uses
  %i.kg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.kh, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ki = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.ki, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.kj, i64 3, i64 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.bv ], [ %..i.i.peel.i.i, %bb.bw ], [ 1, %bb.bu ]
  %i.kk = add i64 %.sroa.01.0.i.i.peel.i.i, %.sroa.5.0310.i ; 23 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not.i.i.i.i.i = icmp ult i64 %i.kk, %.sroa.038.sroa.13.0.copyload.i
  br i1 %.not.i.i.i.i.i, label %bb.bz, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.by
  %i.km = icmp eq i64 %i.kk, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.km, label %bb.ca, label %.loopexit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.kk
  %i.ko = load i8, ptr %i.kn, align 1, !alias.scope !61246, !noalias !61249, !noundef !62
  %i.kp = icmp sgt i8 %i.ko, -65
  br i1 %i.kp, label %bb.ca, label %.loopexit.i.i

bb.ca:                                            ; preds = %bb.bz, %.split.i.i.i.i.i, %bb.bx
  %i.kq = icmp samesign eq i64 %i.kk, %.sroa.038.sroa.13.0.copyload.i
  br i1 %i.kq, label %.sink.split.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload.i, i64 %i.kk
  %i.ks = load i8, ptr %i.kr, align 1, !noalias !61250, !noundef !62 ; 3 uses
  %i.kt = icmp sgt i8 %i.ks, -1
  br i1 %i.kt, label %.sink.split.i.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i: ; preds = %bb.cb
  %i.ku = add nuw nsw i64 %i.kk, 1
  %i.kv = icmp samesign ne i64 %i.ku, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp samesign ugt i8 %i.ks, -33
  br i1 %i.kw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit12.i.i.i.i.i
  %i.kx = add nuw nsw i64 %i.kk, 2
  %i.ky = icmp samesign ne i64 %i.kx, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ky)
  %i.kz = icmp samesign ugt i8 %i.ks, -17
  br i1 %i.kz, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit14.i.i.i.i.i
  %i.la = add nuw nsw i64 %i.kk, 3
  %i.lb = icmp samesign ne i64 %i.la, %.sroa.038.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.lb)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %.split.i.i.i.peel.i.i.peel259, %bb.ad, %.split.i.i.i.i.i.peel267, %bb.an, %bb.bz, %.split.i.i.i.i.i, %bb.bq, %.split.i.i.i.peel.i.i, %bb.u, %.split.i.i.i.i.i.peel, %bb.k, %.split.i.i.i.peel.i.i.peel
  %.lcssa12.i.i = phi i64 [ %.sroa.038.sroa.4.0.copyload.i, %.split.i.i.i.peel.i.i.peel ], [ %.sroa.038.sroa.4.0.copyload.i, %bb.k ], [ %i.ci, %.split.i.i.i.i.i.peel ], [ %i.ci, %bb.u ], [ %.sroa.5.5.i.peel, %.split.i.i.i.peel.i.i.peel259 ], [ %.sroa.5.5.i.peel, %bb.ad ], [ %i.ez, %.split.i.i.i.i.i.peel267 ], [ %i.ez, %bb.an ], [ %i.kk, %bb.bz ], [ %i.kk, %.split.i.i.i.i.i ], [ %.sroa.5.0310.i, %bb.bq ], [ %.sroa.5.0310.i, %.split.i.i.i.peel.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload.i, i64 noundef %.sroa.038.sroa.13.0.copyload.i, i64 noundef %.lcssa12.i.i, i64 noundef %.sroa.038.sroa.13.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2100) #80
          to label %.noexc.i20 unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !61244

.noexc.i20:                                       ; preds = %.loopexit.i.i
  unreachable

.split323.us.i:                                   ; preds = %.lr.ph214
  %i.lc = add i64 %i.hi, %.sroa.038.sroa.4.0.copyload.i
  %umax.i115.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload.i, i64 %i.lc)
  br label %.split323.us.invoke.i

.split323.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.bb, %.lr.ph210, %.lr.ph217, %.split314.us.i, %.split323.us.i
  %i.ld = phi i64 [ %umax.i115.i, %.split323.us.i ], [ %umax.i.i, %.split314.us.i ], [ %i.hs, %.lr.ph217 ], [ %i.gu, %.lr.ph210 ], [ %i.gw, %bb.bb ], [ %i.fw, %.preheader.us.i.preheader.split ]
  %i.le = phi i64 [ %.sroa.038.sroa.13.0.copyload.i, %.split323.us.i ], [ %.sroa.038.sroa.13.0.copyload.i, %.split314.us.i ], [ %.sroa.038.sroa.13.0.copyload.i, %.lr.ph217 ], [ %.sroa.038.sroa.15.0.copyload.i, %.lr.ph210 ], [ %.sroa.038.sroa.13.0.copyload.i, %bb.bb ], [ %.sroa.038.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.lf = phi ptr [ @136, %.split323.us.i ], [ @136, %.split314.us.i ], [ @135, %.lr.ph217 ], [ @134, %.lr.ph210 ], [ @135, %bb.bb ], [ @134, %.preheader.us.i.preheader.split ]
end_hunk_1
