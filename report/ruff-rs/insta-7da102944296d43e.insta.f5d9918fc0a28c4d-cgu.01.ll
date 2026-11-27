Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.01?download=true
inline.NumInlined: 445
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs3_NtCsl6EuCK7xub1_5insta8snapshotNtB5_20TextSnapshotContents9normalize:bb.a
  br i1 %.not72.us.i.us, label %.loopexit.i.us.i, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i53.us.i.us207 = phi i64 [ %i.ej, %.preheader.us.i.us ], [ %.sroa.442.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.ej = add i64 %.sroa.2.0.i53.us.i.us207, -1   ; 4 uses
  %i.ek = add i64 %i.ej, %i.ea                    ; 3 uses
  %i.el = icmp ult i64 %i.ek, %.sroa.1351.0.copyload.i
  br i1 %i.el, label %bb.aw, label %.split139.us.invoke.i

bb.aw:                                            ; preds = %.lr.ph208
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.ej
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !422, !noalias !418, !noundef !6
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.ek
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !421, !noalias !418, !noundef !6
  %.not.i54.us.i.us = icmp eq i8 %i.en, %i.ep
  br i1 %.not.i54.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.aw
  %i.eq = add i64 %i.ea, %.sroa.644.0.copyload.i
  br label %bb.ba

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not72.us.i, label %.loopexit.i.us.i, label %.split139.us.invoke.i

.lr.ph205:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i49.us.i204 = phi i64 [ %i.ei, %.preheader.i ], [ %.sroa.442.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.er = add i64 %.sroa.02.0.i49.us.i204, %i.ea  ; 2 uses
  %i.es = icmp ult i64 %i.er, %.sroa.1351.0.copyload.i
  br i1 %i.es, label %bb.ax, label %.split139.us.i

bb.ax:                                            ; preds = %.lr.ph205
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i49.us.i204
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !422, !noalias !418, !noundef !6
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.er
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !421, !noalias !418, !noundef !6
  %.not21.i52.us.i = icmp eq i8 %i.eu, %i.ew
  br i1 %.not21.i52.us.i, label %.preheader.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.reass269.i.reass.reass = add i64 %i.ea, %invariant.op286
  %i.ex = add i64 %.reass269.i.reass.reass, %.sroa.02.0.i49.us.i204
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i45.us.i
  %i.ey = add i64 %i.ea, %.sroa.15.0.copyload.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.split.us, %bb.ay
  %i.ez = phi i64 [ %i.ex, %bb.ay ], [ %i.ey, %bb.az ], [ %i.eq, %.split.us ] ; 2 uses
  %i.fa = add i64 %i.ez, %i.cn                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %.sroa.1351.0.copyload.i
  br i1 %i.fb, label %.lr.ph.i45.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader74.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader74.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.753.3.us.i = phi i64 [ %i.ea, %.preheader.us.i.preheader.split ], [ %i.ea, %.preheader.us.i.us ], [ %i.cv, %.preheader74.us.i ], [ %i.ea, %.preheader.us.i.us.preheader ], [ %i.cv, %.preheader74.us.i.preheader ] ; 3 uses
  %.sroa.3013.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader74.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader74.us.i.preheader ]
  %.sroa.1154.3.us.i = add i64 %.sroa.753.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i)
          to label %.noexc29.us.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !418

.noexc29.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.fd = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417, !noundef !6 ; 3 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  call void @llvm.assume(i1 %i.fe)
  %.not.i27.us.i = icmp eq i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i
  br i1 %.not.i27.us.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.noexc29.us.i
  %i.ff = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417, !nonnull !6, !noundef !6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull readonly align 1 %i.fc, i64 %gepdiff.us.i, i1 false), !noalias !418
  %.pre.i28.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc29.us.i
  %i.fh = phi i64 [ %.pre.i28.us.i, %bb.bb ], [ %i.fd, %.noexc29.us.i ]
  %i.fi = add i64 %i.fh, %gepdiff.us.i
  store i64 %i.fi, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.bd unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !418

bb.bd:                                            ; preds = %bb.bc
  %i.fj = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417, !noundef !6 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417, !nonnull !6, !noundef !6
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 10, ptr %i.fm, align 1, !noalias !418
  %.pre.i32.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417
  %i.fn = add i64 %.pre.i32.us.i, 1
  store i64 %i.fn, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417
  br label %bb.al

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.fo = and i64 %.sroa.644.0.copyload.i, 65536
  %.not.i1 = icmp eq i64 %i.fo, 0
  br i1 %.not.i1, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i) ]
  %i.fp = trunc i64 %.sroa.644.0.copyload.i to i1 ; 2 uses
  %i.fq = icmp eq i64 %.sroa.442.0.copyload.i, 0
  br i1 %i.fq, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.bf, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.be
  %i.fr = icmp eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.fr, label %bb.bg, label %.loopexit205.i

bb.bf:                                            ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !425, !noalias !426, !noundef !6
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.bg, label %.loopexit205.i

bb.bg:                                            ; preds = %bb.bf, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i ; 4 uses
  %i.fw = icmp samesign eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.fw, label %.loopexit206.i.peel, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fx = load i8, ptr %i.fv, align 1, !noalias !427, !noundef !6 ; 5 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %bb.bi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel: ; preds = %bb.bh
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.ga = and i8 %i.fx, 31
  %i.gb = zext nneg i8 %i.ga to i32               ; 3 uses
  %i.gc = add nuw nsw i64 %.sroa.442.0.copyload.i, 1
  %i.gd = icmp samesign ne i64 %i.gc, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gd)
  %i.ge = load i8, ptr %i.fz, align 1, !noalias !427, !noundef !6
  %i.gf = shl nuw nsw i32 %i.gb, 6
  %i.gg = and i8 %i.ge, 63
  %i.gh = zext nneg i8 %i.gg to i32               ; 2 uses
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, label %bb.bj

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gl = add nuw nsw i64 %.sroa.442.0.copyload.i, 2
  %i.gm = icmp samesign ne i64 %i.gl, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gm)
  %i.gn = load i8, ptr %i.gk, align 1, !noalias !427, !noundef !6
  %i.go = shl nuw nsw i32 %i.gh, 6
  %i.gp = and i8 %i.gn, 63
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.go, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i32 %i.gb, 12
  %i.gt = or disjoint i32 %i.gr, %i.gs
  %i.gu = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.gu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, label %bb.bj

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.gw = add nuw nsw i64 %.sroa.442.0.copyload.i, 3
  %i.gx = icmp samesign ne i64 %i.gw, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gx)
  %i.gy = load i8, ptr %i.gv, align 1, !noalias !427, !noundef !6
  %i.gz = shl nuw nsw i32 %i.gb, 18
  %i.ha = and i32 %i.gz, 1835008
  %i.hb = shl nuw nsw i32 %i.gr, 6
  %i.hc = and i8 %i.gy, 63
  %i.hd = zext nneg i8 %i.hc to i32
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = or disjoint i32 %i.he, %i.ha
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hg = zext nneg i8 %i.fx to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.gt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel ], [ %i.hf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel ], [ %i.gi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel ], [ %i.hg, %bb.bi ] ; 4 uses
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.hh)
  br i1 %i.fp, label %.loopexit.i.i.peel, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.hi, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.hj, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.hk, i64 3, i64 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.bl ], [ %..i.i.peel.i.peel, %bb.bm ], [ 1, %bb.bk ]
  %i.hl = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.442.0.copyload.i ; 15 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i.i.peel = icmp ult i64 %i.hl, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.bp, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.bo
  %i.hn = icmp eq i64 %i.hl, %.sroa.1351.0.copyload.i
  br i1 %i.hn, label %bb.bq, label %.loopexit205.i

bb.bp:                                            ; preds = %bb.bo
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hl
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !425, !noalias !426, !noundef !6
  %i.hq = icmp sgt i8 %i.hp, -65
  br i1 %i.hq, label %bb.bq, label %.loopexit205.i

bb.bq:                                            ; preds = %bb.bp, %.split.i.i.i.i.peel, %bb.bn
  %i.hr = icmp samesign eq i64 %i.hl, %.sroa.1351.0.copyload.i
  br i1 %i.hr, label %.loopexit.i.i.peel, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hl
  %i.hs = load i8, ptr %2, align 1, !noalias !427, !noundef !6 ; 3 uses
  %i.ht = icmp sgt i8 %i.hs, -1
  br i1 %i.ht, label %.loopexit.i.i.peel, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel: ; preds = %bb.br
  %i.hu = add nuw nsw i64 %i.hl, 1
  %i.hv = icmp samesign ne i64 %i.hu, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hv)
  %i.hw = icmp samesign ugt i8 %i.hs, -33
  br i1 %i.hw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, label %.loopexit.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel
  %i.hx = add nuw nsw i64 %i.hl, 2
  %i.hy = icmp samesign ne i64 %i.hx, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp samesign ugt i8 %i.hs, -17
  br i1 %i.hz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, label %.loopexit.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel
  %i.ia = add nuw nsw i64 %i.hl, 3
  %i.ib = icmp samesign ne i64 %i.ia, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ib)
  br label %.loopexit.i.i.peel

.loopexit206.i.peel:                              ; preds = %bb.bg
  br i1 %i.fp, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, %bb.br, %.loopexit206.i.peel, %bb.bq, %bb.bj
  %.sroa.47.1203.i.peel = phi i64 [ %.sroa.442.0.copyload.i, %.loopexit206.i.peel ], [ %.sroa.1351.0.copyload.i, %bb.bq ], [ %.sroa.442.0.copyload.i, %bb.bj ], [ %i.hl, %bb.br ], [ %i.hl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel ], [ %i.hl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel ], [ %i.hl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel ] ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.47.1203.i.peel)
          to label %.noexc29.i.peel unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !418

.noexc29.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.ic = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417, !noundef !6 ; 3 uses
  %i.id = icmp sgt i64 %i.ic, -1
  call void @llvm.assume(i1 %i.id)
  %.not.i27.i.peel = icmp eq i64 %.sroa.47.1203.i.peel, 0
  br i1 %.not.i27.i.peel, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc29.i.peel
  %i.ie = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417, !nonnull !6, !noundef !6
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull readonly align 1 %i.cd, i64 %.sroa.47.1203.i.peel, i1 false), !noalias !418
  %.pre.i28.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.noexc29.i.peel
  %i.ig = phi i64 [ %.pre.i28.i.peel, %bb.bs ], [ %i.ic, %.noexc29.i.peel ]
  %i.ih = add i64 %i.ig, %.sroa.47.1203.i.peel
  store i64 %i.ih, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !423, !noalias !417
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %.lr.ph.i.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !418

.lr.ph.i.i:                                       ; preds = %bb.bt, %bb.cg
  %.sroa.04.0154.i = phi i64 [ %.sroa.47.1203.i, %bb.cg ], [ %.sroa.47.1203.i.peel, %bb.bt ] ; 14 uses
  %i.ii = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417, !noundef !6 ; 2 uses
  %i.ij = icmp sgt i64 %i.ii, -1
  call void @llvm.assume(i1 %i.ij)
  %i.ik = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417, !nonnull !6, !noundef !6
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ii
  store i8 10, ptr %i.il, align 1, !noalias !418
  %.pre.i32.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417
  %storemerge = add i64 %.pre.i32.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !424, !noalias !417
  %i.im = icmp eq i64 %.sroa.04.0154.i, 0
  br i1 %i.im, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.bv, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.bu
  %i.in = icmp eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.in, label %bb.bw, label %.loopexit205.i

bb.bv:                                            ; preds = %bb.bu
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !425, !noalias !426, !noundef !6
  %i.iq = icmp sgt i8 %i.ip, -65
  br i1 %i.iq, label %bb.bw, label %.loopexit205.i

bb.bw:                                            ; preds = %bb.bv, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i ; 4 uses
  %i.is = icmp samesign eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.is, label %.loopexit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = load i8, ptr %i.ir, align 1, !noalias !427, !noundef !6 ; 4 uses
  %i.iu = icmp sgt i8 %i.it, -1
  br i1 %i.iu, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i: ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.iw = and i8 %i.it, 31
  %i.ix = zext nneg i8 %i.iw to i32               ; 3 uses
  %i.iy = add nuw nsw i64 %.sroa.04.0154.i, 1
  %i.iz = icmp samesign ne i64 %i.iy, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.iz)
  %i.ja = load i8, ptr %i.iv, align 1, !noalias !427, !noundef !6
  %i.jb = shl nuw nsw i32 %i.ix, 6
  %i.jc = and i8 %i.ja, 63
  %i.jd = zext nneg i8 %i.jc to i32               ; 2 uses
  %i.je = or disjoint i32 %i.jb, %i.jd
  %i.jf = icmp samesign ugt i8 %i.it, -33
  br i1 %i.jf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, label %bb.by

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.jh = add nuw nsw i64 %.sroa.04.0154.i, 2
  %i.ji = icmp samesign ne i64 %i.jh, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ji)
  %i.jj = load i8, ptr %i.jg, align 1, !noalias !427, !noundef !6
  %i.jk = shl nuw nsw i32 %i.jd, 6
  %i.jl = and i8 %i.jj, 63
  %i.jm = zext nneg i8 %i.jl to i32
  %i.jn = or disjoint i32 %i.jk, %i.jm            ; 2 uses
  %i.jo = shl nuw nsw i32 %i.ix, 12
  %i.jp = or disjoint i32 %i.jn, %i.jo
  %i.jq = icmp samesign ugt i8 %i.it, -17
  br i1 %i.jq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i, label %bb.by

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ir, i64 3
  %i.js = add nuw nsw i64 %.sroa.04.0154.i, 3
  %i.jt = icmp samesign ne i64 %i.js, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jt)
  %i.ju = load i8, ptr %i.jr, align 1, !noalias !427, !noundef !6
  %i.jv = shl nuw nsw i32 %i.ix, 18
  %i.jw = and i32 %i.jv, 1835008
  %i.jx = shl nuw nsw i32 %i.jn, 6
  %i.jy = and i8 %i.ju, 63
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = or disjoint i32 %i.ka, %i.jw
  br label %bb.by

bb.by:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.jp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i ], [ %i.kb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i ], [ %i.je, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i ] ; 4 uses
  %i.kc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.kc)
  %i.kd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.kd, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ke = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ke, label %.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.kf, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.bx, %bb.ca, %bb.bz, %bb.by
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bz ], [ %..i.i.peel.i, %bb.ca ], [ 1, %bb.by ], [ 1, %bb.bx ]
  %i.kg = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0154.i ; 15 uses
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.kg, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.cc, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cb
  %i.ki = icmp eq i64 %i.kg, %.sroa.1351.0.copyload.i
  br i1 %i.ki, label %bb.cd, label %.loopexit205.i

bb.cc:                                            ; preds = %bb.cb
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.kg
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !425, !noalias !426, !noundef !6
  %i.kl = icmp sgt i8 %i.kk, -65
  br i1 %i.kl, label %bb.cd, label %.loopexit205.i

bb.cd:                                            ; preds = %bb.cc, %.split.i.i.i.i, %.thread
  %i.km = icmp samesign eq i64 %i.kg, %.sroa.1351.0.copyload.i
  br i1 %i.km, label %.loopexit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.kg
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !427, !noundef !6 ; 3 uses
  %i.kp = icmp sgt i8 %i.ko, -1
  br i1 %i.kp, label %.loopexit.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i: ; preds = %bb.ce
  %i.kq = add nuw nsw i64 %i.kg, 1
  %i.kr = icmp samesign ne i64 %i.kq, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp samesign ugt i8 %i.ko, -33
  br i1 %i.ks, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i
  %i.kt = add nuw nsw i64 %i.kg, 2
  %i.ku = icmp samesign ne i64 %i.kt, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp samesign ugt i8 %i.ko, -17
  br i1 %i.kv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i
  %i.kw = add nuw nsw i64 %i.kg, 3
  %i.kx = icmp samesign ne i64 %i.kw, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.kx)
  br label %.loopexit.i.i

.loopexit205.i:                                   ; preds = %bb.cc, %.split.i.i.i.i, %bb.bv, %.split.i.i.i.peel.i, %bb.bp, %.split.i.i.i.i.peel, %bb.bf, %.split.i.i.i.peel.i.peel
  %.sroa.47.1.lcssa.i = phi i64 [ %.sroa.442.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.442.0.copyload.i, %bb.bf ], [ %i.hl, %.split.i.i.i.i.peel ], [ %i.hl, %bb.bp ], [ %i.kg, %bb.cc ], [ %i.kg, %.split.i.i.i.i ], [ %.sroa.04.0154.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0154.i, %bb.bv ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1250.0.copyload.i, i64 noundef %.sroa.1351.0.copyload.i, i64 noundef %.sroa.47.1.lcssa.i, i64 noundef %.sroa.1351.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #21
          to label %.noexc.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !426

.noexc.i:                                         ; preds = %.loopexit205.i
  unreachable

.split139.us.i:                                   ; preds = %.lr.ph205
  %i.ky = add i64 %i.ea, %.sroa.442.0.copyload.i
  %umax.i51.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.ky)
  br label %.split139.us.invoke.i

.split139.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.ar, %.lr.ph201, %.lr.ph208, %.split.us.i, %.split139.us.i
  %i.kz = phi i64 [ %umax.i51.i, %.split139.us.i ], [ %umax.i.i, %.split.us.i ], [ %i.ek, %.lr.ph208 ], [ %i.dn, %.lr.ph201 ], [ %i.dp, %bb.ar ], [ %i.cp, %.preheader.us.i.preheader.split ]
  %i.la = phi i64 [ %.sroa.1351.0.copyload.i, %.split139.us.i ], [ %.sroa.1351.0.copyload.i, %.split.us.i ], [ %.sroa.1351.0.copyload.i, %.lr.ph208 ], [ %.sroa.15.0.copyload.i, %.lr.ph201 ], [ %.sroa.1351.0.copyload.i, %bb.ar ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.lb = phi ptr [ @3, %.split139.us.i ], [ @3, %.split.us.i ], [ @2, %.lr.ph208 ], [ @1, %.lr.ph201 ], [ @2, %bb.ar ], [ @1, %.preheader.us.i.preheader.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef range(i64 0, -9223372036854775808) %i.la, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lb) #21
          to label %.split139.us.cont.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !428

.split139.us.cont.i:                              ; preds = %.split139.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.lc = add i64 %i.cv, %.sroa.0.0.i.i.us.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.lc)
  br label %.split139.us.invoke.i
end_hunk_0
