Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.09?download=true
inline.NumInlined: 432
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsl6EuCK7xub1_5insta5utils22format_rust_expression:bb.a
  br i1 %.not72.us.i.us, label %.loopexit.i.us.i, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i53.us.i.us256 = phi i64 [ %i.df, %.preheader.us.i.us ], [ %.sroa.442.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.df = add i64 %.sroa.2.0.i53.us.i.us256, -1   ; 4 uses
  %i.dg = add i64 %i.df, %i.cw                    ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %.sroa.1351.0.copyload.i
  br i1 %i.dh, label %bb.ay, label %.split139.us.invoke.i

bb.ay:                                            ; preds = %.lr.ph257
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.df
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !502, !noalias !498, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !501, !noalias !498, !noundef !7
  %.not.i54.us.i.us = icmp eq i8 %i.dj, %i.dl
  br i1 %.not.i54.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.ay
  %i.dm = add i64 %i.cw, %.sroa.644.0.copyload.i
  br label %bb.bc

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not72.us.i, label %.loopexit.i.us.i, label %.split139.us.invoke.i

.lr.ph254:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i49.us.i253 = phi i64 [ %i.de, %.preheader.i ], [ %.sroa.442.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.dn = add i64 %.sroa.02.0.i49.us.i253, %i.cw  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %.sroa.1351.0.copyload.i
  br i1 %i.do, label %bb.az, label %.split139.us.i

bb.az:                                            ; preds = %.lr.ph254
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i49.us.i253
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !502, !noalias !498, !noundef !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !501, !noalias !498, !noundef !7
  %.not21.i52.us.i = icmp eq i8 %i.dq, %i.ds
  br i1 %.not21.i52.us.i, label %.preheader.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.reass269.i.reass.reass = add i64 %i.cw, %invariant.op329
  %i.dt = add i64 %.reass269.i.reass.reass, %.sroa.02.0.i49.us.i253
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i45.us.i
  %i.du = add i64 %i.cw, %.sroa.15.0.copyload.i
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.split.us, %bb.ba
  %i.dv = phi i64 [ %i.dt, %bb.ba ], [ %i.du, %bb.bb ], [ %i.dm, %.split.us ] ; 2 uses
  %i.dw = add i64 %i.dv, %i.bj                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.1351.0.copyload.i
  br i1 %i.dx, label %.lr.ph.i45.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader74.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader74.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.753.3.us.i = phi i64 [ %i.cw, %.preheader.us.i.preheader.split ], [ %i.cw, %.preheader.us.i.us ], [ %i.br, %.preheader74.us.i ], [ %i.cw, %.preheader.us.i.us.preheader ], [ %i.br, %.preheader74.us.i.preheader ] ; 3 uses
  %.sroa.3013.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader74.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader74.us.i.preheader ]
  %.sroa.1154.3.us.i = add i64 %.sroa.753.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i)
          to label %.noexc29.us.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

.noexc29.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.dz = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497, !noundef !7 ; 3 uses
  %i.ea = icmp sgt i64 %i.dz, -1
  call void @llvm.assume(i1 %i.ea)
  %.not.i27.us.i = icmp eq i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i
  br i1 %.not.i27.us.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc29.us.i
  %i.eb = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497, !nonnull !7, !noundef !7
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 1 %i.dy, i64 %gepdiff.us.i, i1 false), !noalias !498
  %.pre.i28.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.noexc29.us.i
  %i.ed = phi i64 [ %.pre.i28.us.i, %bb.bd ], [ %i.dz, %.noexc29.us.i ]
  %i.ee = add i64 %i.ed, %gepdiff.us.i
  store i64 %i.ee, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.bf unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

bb.bf:                                            ; preds = %bb.be
  %i.ef = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497, !noundef !7 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, -1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497, !nonnull !7, !noundef !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 10, ptr %i.ei, align 1, !noalias !498
  %.pre.i32.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497
  %i.ej = add i64 %.pre.i32.us.i, 1
  store i64 %i.ej, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497
  br label %bb.an

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.ek = and i64 %.sroa.644.0.copyload.i, 65536
  %.not.i21 = icmp eq i64 %i.ek, 0
  br i1 %.not.i21, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i) ]
  %i.el = trunc i64 %.sroa.644.0.copyload.i to i1 ; 2 uses
  %i.em = icmp eq i64 %.sroa.442.0.copyload.i, 0
  br i1 %i.em, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.bh, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.bg
  %i.en = icmp eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.en, label %bb.bi, label %.loopexit205.i

bb.bh:                                            ; preds = %bb.bg
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !505, !noalias !506, !noundef !7
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.bi, label %.loopexit205.i

bb.bi:                                            ; preds = %bb.bh, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i ; 4 uses
  %i.es = icmp samesign eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.es, label %.loopexit206.i.peel, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.et = load i8, ptr %i.er, align 1, !noalias !507, !noundef !7 ; 5 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %bb.bk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel: ; preds = %bb.bj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.ew = and i8 %i.et, 31
  %i.ex = zext nneg i8 %i.ew to i32               ; 3 uses
  %i.ey = add nuw nsw i64 %.sroa.442.0.copyload.i, 1
  %i.ez = icmp samesign ne i64 %i.ey, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ez)
  %i.fa = load i8, ptr %i.ev, align 1, !noalias !507, !noundef !7
  %i.fb = shl nuw nsw i32 %i.ex, 6
  %i.fc = and i8 %i.fa, 63
  %i.fd = zext nneg i8 %i.fc to i32               ; 2 uses
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = icmp samesign ugt i8 %i.et, -33
  br i1 %i.ff, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, label %bb.bl

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.fh = add nuw nsw i64 %.sroa.442.0.copyload.i, 2
  %i.fi = icmp samesign ne i64 %i.fh, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !507, !noundef !7
  %i.fk = shl nuw nsw i32 %i.fd, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm            ; 2 uses
  %i.fo = shl nuw nsw i32 %i.ex, 12
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i8 %i.et, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, label %bb.bl

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.fs = add nuw nsw i64 %.sroa.442.0.copyload.i, 3
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fr, align 1, !noalias !507, !noundef !7
  %i.fv = shl nuw nsw i32 %i.ex, 18
  %i.fw = and i32 %i.fv, 1835008
  %i.fx = shl nuw nsw i32 %i.fn, 6
  %i.fy = and i8 %i.fu, 63
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = or disjoint i32 %i.fx, %i.fz
  %i.gb = or disjoint i32 %i.ga, %i.fw
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gc = zext nneg i8 %i.et to i32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.fp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel ], [ %i.gb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel ], [ %i.fe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel ], [ %i.gc, %bb.bk ] ; 4 uses
  %i.gd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.gd)
  br i1 %i.el, label %.loopexit.i.i.peel, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ge = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.ge, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.gf, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.gg, i64 3, i64 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.bn ], [ %..i.i.peel.i.peel, %bb.bo ], [ 1, %bb.bm ]
  %i.gh = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.442.0.copyload.i ; 12 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i.i.i.peel = icmp ult i64 %i.gh, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.br, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.bq
  %i.gj = icmp eq i64 %i.gh, %.sroa.1351.0.copyload.i
  br i1 %i.gj, label %bb.bs, label %.loopexit205.i

bb.br:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.gh
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !505, !noalias !506, !noundef !7
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %bb.bs, label %.loopexit205.i

bb.bs:                                            ; preds = %bb.br, %.split.i.i.i.i.peel, %bb.bp
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.gh ; 4 uses
  %i.gn = icmp samesign eq i64 %i.gh, %.sroa.1351.0.copyload.i
  br i1 %i.gn, label %.loopexit.i.i.peel, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.go = load i8, ptr %3, align 1, !noalias !507, !noundef !7 ; 5 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %29, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel: ; preds = %bb.bt
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %5 = and i8 %i.go, 31
  %6 = zext nneg i8 %5 to i32                     ; 3 uses
  %i.gq = add nuw nsw i64 %i.gh, 1
  %i.gr = icmp samesign ne i64 %i.gq, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gr)
  %7 = load i8, ptr %4, align 1, !noalias !507, !noundef !7
  %8 = shl nuw nsw i32 %6, 6
  %9 = and i8 %7, 63
  %10 = zext nneg i8 %9 to i32                    ; 2 uses
  %11 = or disjoint i32 %8, %10
  %i.gs = icmp samesign ugt i8 %i.go, -33
  br i1 %i.gs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.gt = add nuw nsw i64 %i.gh, 2
  %i.gu = icmp samesign ne i64 %i.gt, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gu)
  %13 = load i8, ptr %12, align 1, !noalias !507, !noundef !7
  %14 = shl nuw nsw i32 %10, 6
  %15 = and i8 %13, 63
  %16 = zext nneg i8 %15 to i32
  %17 = or disjoint i32 %14, %16                  ; 2 uses
  %18 = shl nuw nsw i32 %6, 12
  %19 = or disjoint i32 %17, %18
  %i.gv = icmp samesign ugt i8 %i.go, -17
  br i1 %i.gv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.gw = add nuw nsw i64 %i.gh, 3
  %i.gx = icmp samesign ne i64 %i.gw, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gx)
  %21 = load i8, ptr %20, align 1, !noalias !507, !noundef !7
  %22 = shl nuw nsw i32 %6, 18
  %23 = and i32 %22, 1835008
  %24 = shl nuw nsw i32 %17, 6
  %25 = and i8 %21, 63
  %26 = zext nneg i8 %25 to i32
  %27 = or disjoint i32 %24, %26
  %28 = or disjoint i32 %27, %23
  br label %.loopexit.i.loopexit.loopexit.i.peel

29:                                               ; preds = %bb.bt
  %30 = zext nneg i8 %i.go to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %29, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %19, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel ], [ %28, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel ], [ %11, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel ], [ %30, %29 ]
  %31 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %31)
  br label %.loopexit.i.i.peel

.loopexit206.i.peel:                              ; preds = %bb.bi
  br i1 %i.el, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %.loopexit206.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.bs, %bb.bl
  %.sroa.47.1203.i.peel = phi i64 [ %.sroa.442.0.copyload.i, %.loopexit206.i.peel ], [ %i.gh, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.sroa.442.0.copyload.i, %bb.bl ], [ %.sroa.1351.0.copyload.i, %bb.bs ] ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.47.1203.i.peel)
          to label %.noexc29.i.peel unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

.noexc29.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.gy = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497, !noundef !7 ; 3 uses
  %i.gz = icmp sgt i64 %i.gy, -1
  call void @llvm.assume(i1 %i.gz)
  %.not.i27.i.peel = icmp eq i64 %.sroa.47.1203.i.peel, 0
  br i1 %.not.i27.i.peel, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc29.i.peel
  %i.ha = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497, !nonnull !7, !noundef !7
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr nonnull readonly align 1 %i.ay, i64 %.sroa.47.1203.i.peel, i1 false), !noalias !498
  %.pre.i28.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc29.i.peel
  %i.hc = phi i64 [ %.pre.i28.i.peel, %bb.bu ], [ %i.gy, %.noexc29.i.peel ]
  %i.hd = add i64 %i.hc, %.sroa.47.1203.i.peel
  store i64 %i.hd, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !503, !noalias !497
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %.lr.ph.i.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

.lr.ph.i.i:                                       ; preds = %bb.bv, %bb.ci
  %.sroa.04.0154.i = phi i64 [ %.sroa.47.1203.i, %bb.ci ], [ %.sroa.47.1203.i.peel, %bb.bv ] ; 14 uses
  %i.he = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497, !noundef !7 ; 2 uses
  %i.hf = icmp sgt i64 %i.he, -1
  call void @llvm.assume(i1 %i.hf)
  %i.hg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497, !nonnull !7, !noundef !7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i8 10, ptr %i.hh, align 1, !noalias !498
  %.pre.i32.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497
  %storemerge = add i64 %.pre.i32.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !504, !noalias !497
  %i.hi = icmp eq i64 %.sroa.04.0154.i, 0
  br i1 %i.hi, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.bx, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.bw
  %i.hj = icmp eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.hj, label %bb.by, label %.loopexit205.i

bb.bx:                                            ; preds = %bb.bw
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !505, !noalias !506, !noundef !7
  %i.hm = icmp sgt i8 %i.hl, -65
  br i1 %i.hm, label %bb.by, label %.loopexit205.i

bb.by:                                            ; preds = %bb.bx, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i ; 4 uses
  %i.ho = icmp samesign eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.ho, label %.loopexit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hp = load i8, ptr %i.hn, align 1, !noalias !507, !noundef !7 ; 4 uses
  %i.hq = icmp sgt i8 %i.hp, -1
  br i1 %i.hq, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i: ; preds = %bb.bz
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hs = and i8 %i.hp, 31
  %i.ht = zext nneg i8 %i.hs to i32               ; 3 uses
  %i.hu = add nuw nsw i64 %.sroa.04.0154.i, 1
  %i.hv = icmp samesign ne i64 %i.hu, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hv)
  %i.hw = load i8, ptr %i.hr, align 1, !noalias !507, !noundef !7
  %i.hx = shl nuw nsw i32 %i.ht, 6
  %i.hy = and i8 %i.hw, 63
  %i.hz = zext nneg i8 %i.hy to i32               ; 2 uses
  %i.ia = or disjoint i32 %i.hx, %i.hz
  %i.ib = icmp samesign ugt i8 %i.hp, -33
  br i1 %i.ib, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, label %bb.ca

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.id = add nuw nsw i64 %.sroa.04.0154.i, 2
  %i.ie = icmp samesign ne i64 %i.id, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ie)
  %i.if = load i8, ptr %i.ic, align 1, !noalias !507, !noundef !7
  %i.ig = shl nuw nsw i32 %i.hz, 6
  %i.ih = and i8 %i.if, 63
  %i.ii = zext nneg i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.ig, %i.ii            ; 2 uses
  %i.ik = shl nuw nsw i32 %i.ht, 12
  %i.il = or disjoint i32 %i.ij, %i.ik
  %i.im = icmp samesign ugt i8 %i.hp, -17
  br i1 %i.im, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i, label %bb.ca

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %i.io = add nuw nsw i64 %.sroa.04.0154.i, 3
  %i.ip = icmp samesign ne i64 %i.io, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ip)
  %i.iq = load i8, ptr %i.in, align 1, !noalias !507, !noundef !7
  %i.ir = shl nuw nsw i32 %i.ht, 18
  %i.is = and i32 %i.ir, 1835008
  %i.it = shl nuw nsw i32 %i.ij, 6
  %i.iu = and i8 %i.iq, 63
  %i.iv = zext nneg i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.it, %i.iv
  %i.ix = or disjoint i32 %i.iw, %i.is
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.il, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i ], [ %i.ix, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i ], [ %i.ia, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i ] ; 4 uses
  %i.iy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.iz, label %.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ja = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ja, label %.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.jb, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.bz, %bb.cc, %bb.cb, %bb.ca
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.cb ], [ %..i.i.peel.i, %bb.cc ], [ 1, %bb.ca ], [ 1, %bb.bz ]
  %i.jc = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0154.i ; 15 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.jc, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.ce, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cd
  %i.je = icmp eq i64 %i.jc, %.sroa.1351.0.copyload.i
  br i1 %i.je, label %bb.cf, label %.loopexit205.i

bb.ce:                                            ; preds = %bb.cd
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.jc
  %i.jg = load i8, ptr %i.jf, align 1, !alias.scope !505, !noalias !506, !noundef !7
  %i.jh = icmp sgt i8 %i.jg, -65
  br i1 %i.jh, label %bb.cf, label %.loopexit205.i

bb.cf:                                            ; preds = %bb.ce, %.split.i.i.i.i, %.thread
  %i.ji = icmp samesign eq i64 %i.jc, %.sroa.1351.0.copyload.i
  br i1 %i.ji, label %.loopexit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.jc
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !507, !noundef !7 ; 3 uses
  %i.jl = icmp sgt i8 %i.jk, -1
  br i1 %i.jl, label %.loopexit.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i: ; preds = %bb.cg
  %i.jm = add nuw nsw i64 %i.jc, 1
  %i.jn = icmp samesign ne i64 %i.jm, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jn)
  %i.jo = icmp samesign ugt i8 %i.jk, -33
  br i1 %i.jo, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i
  %i.jp = add nuw nsw i64 %i.jc, 2
  %i.jq = icmp samesign ne i64 %i.jp, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jq)
  %i.jr = icmp samesign ugt i8 %i.jk, -17
  br i1 %i.jr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i
  %i.js = add nuw nsw i64 %i.jc, 3
  %i.jt = icmp samesign ne i64 %i.js, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jt)
  br label %.loopexit.i.i

.loopexit205.i:                                   ; preds = %bb.ce, %.split.i.i.i.i, %bb.bx, %.split.i.i.i.peel.i, %bb.br, %.split.i.i.i.i.peel, %bb.bh, %.split.i.i.i.peel.i.peel
  %.sroa.47.1.lcssa.i = phi i64 [ %.sroa.442.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.442.0.copyload.i, %bb.bh ], [ %i.gh, %.split.i.i.i.i.peel ], [ %i.gh, %bb.br ], [ %i.jc, %bb.ce ], [ %i.jc, %.split.i.i.i.i ], [ %.sroa.04.0154.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0154.i, %bb.bx ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1250.0.copyload.i, i64 noundef %.sroa.1351.0.copyload.i, i64 noundef %.sroa.47.1.lcssa.i, i64 noundef %.sroa.1351.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #25
          to label %.noexc.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

.noexc.i:                                         ; preds = %.loopexit205.i
  unreachable

.split139.us.i:                                   ; preds = %.lr.ph254
  %i.ju = add i64 %i.cw, %.sroa.442.0.copyload.i
  %umax.i51.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.ju)
  br label %.split139.us.invoke.i

.split139.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.at, %.lr.ph250, %.lr.ph257, %.split.us.i, %.split139.us.i
  %i.jv = phi i64 [ %umax.i51.i, %.split139.us.i ], [ %umax.i.i, %.split.us.i ], [ %i.dg, %.lr.ph257 ], [ %i.cj, %.lr.ph250 ], [ %i.cl, %bb.at ], [ %i.bl, %.preheader.us.i.preheader.split ]
  %i.jw = phi i64 [ %.sroa.1351.0.copyload.i, %.split139.us.i ], [ %.sroa.1351.0.copyload.i, %.split.us.i ], [ %.sroa.1351.0.copyload.i, %.lr.ph257 ], [ %.sroa.15.0.copyload.i, %.lr.ph250 ], [ %.sroa.1351.0.copyload.i, %bb.at ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.jx = phi ptr [ @8, %.split139.us.i ], [ @8, %.split.us.i ], [ @7, %.lr.ph257 ], [ @6, %.lr.ph250 ], [ @7, %bb.at ], [ @6, %.preheader.us.i.preheader.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef range(i64 0, -9223372036854775808) %i.jw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jx) #25
          to label %.split139.us.cont.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !498

.split139.us.cont.i:                              ; preds = %.split139.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.jy = add i64 %i.br, %.sroa.0.0.i.i.us.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.jy)
  br label %.split139.us.invoke.i
end_hunk_0
