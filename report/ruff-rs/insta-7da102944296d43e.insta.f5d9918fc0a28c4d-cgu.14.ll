Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.14?download=true
inline.NumInlined: 409
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsl6EuCK7xub1_5insta6output16render_invisible:bb.a
  br i1 %.not71.us.i.us, label %.loopexit.i.us.i, label %.lr.ph234

.lr.ph234:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i53.us.i.us233 = phi i64 [ %i.do, %.preheader.us.i.us ], [ %.sroa.441.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.do = add i64 %.sroa.2.0.i53.us.i.us233, -1   ; 4 uses
  %i.dp = add i64 %i.do, %i.df                    ; 3 uses
  %i.dq = icmp ult i64 %i.dp, %.sroa.1350.0.copyload.i
  br i1 %i.dq, label %bb.s, label %.split138.us.invoke.i

bb.s:                                             ; preds = %.lr.ph234
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !347, !noalias !343, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.dp
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !346, !noalias !343, !noundef !4
  %.not.i54.us.i.us = icmp eq i8 %i.ds, %i.du
  br i1 %.not.i54.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.s
  %i.dv = add i64 %i.df, %.sroa.643.0.copyload.i
  br label %bb.w

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not71.us.i, label %.loopexit.i.us.i, label %.split138.us.invoke.i

.lr.ph231:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i49.us.i230 = phi i64 [ %i.dn, %.preheader.i ], [ %.sroa.441.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.dw = add i64 %.sroa.02.0.i49.us.i230, %i.df  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.1350.0.copyload.i
  br i1 %i.dx, label %bb.t, label %.split138.us.i

bb.t:                                             ; preds = %.lr.ph231
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i49.us.i230
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !347, !noalias !343, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.dw
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !346, !noalias !343, !noundef !4
  %.not21.i52.us.i = icmp eq i8 %i.dz, %i.eb
  br i1 %.not21.i52.us.i, label %.preheader.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.reass268.i.reass.reass = add i64 %i.df, %invariant.op306
  %i.ec = add i64 %.reass268.i.reass.reass, %.sroa.02.0.i49.us.i230
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i45.us.i
  %i.ed = add i64 %i.df, %.sroa.15.0.copyload.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.us, %bb.u
  %i.ee = phi i64 [ %i.ec, %bb.u ], [ %i.ed, %bb.v ], [ %i.dv, %.split.us ] ; 2 uses
  %i.ef = add i64 %i.ee, %i.bs                    ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.1350.0.copyload.i
  br i1 %i.eg, label %.lr.ph.i45.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader73.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader73.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.752.3.us.i = phi i64 [ %i.df, %.preheader.us.i.preheader.split ], [ %i.df, %.preheader.us.i.us ], [ %i.ca, %.preheader73.us.i ], [ %i.df, %.preheader.us.i.us.preheader ], [ %i.ca, %.preheader73.us.i.preheader ] ; 3 uses
  %.sroa.3012.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader73.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader73.us.i.preheader ]
  %.sroa.1153.3.us.i = add i64 %.sroa.752.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.752.3.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i)
          to label %.noexc29.us.i unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.noexc29.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.ei = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342, !noundef !4 ; 3 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.ej)
  %.not.i27.us.i = icmp eq i64 %.sroa.752.3.us.i, %.sroa.04.0.us.i
  br i1 %.not.i27.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc29.us.i
  %i.ek = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr nonnull readonly align 1 %i.eh, i64 %gepdiff.us.i, i1 false), !noalias !343
  %.pre.i28.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc29.us.i
  %i.em = phi i64 [ %.pre.i28.us.i, %bb.x ], [ %i.ei, %.noexc29.us.i ]
  %i.en = add i64 %i.em, %gepdiff.us.i
  store i64 %i.en, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 8)
          to label %bb.z unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

bb.z:                                             ; preds = %bb.y
  %i.eo = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342, !noundef !4 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342, !nonnull !4, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eo
  store i64 724387469957370082, ptr %i.er, align 1, !noalias !343
  %.pre.i32.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342
  %i.es = add i64 %.pre.i32.us.i, 8
  store i64 %i.es, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342
  br label %bb.h

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.et = and i64 %.sroa.643.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.et, 0
  br i1 %.not.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1249.0.copyload.i) ]
  %i.eu = trunc i64 %.sroa.643.0.copyload.i to i1 ; 2 uses
  %i.ev = icmp eq i64 %.sroa.441.0.copyload.i, 0
  br i1 %i.ev, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.441.0.copyload.i, %.sroa.1350.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.ab, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.aa
  %i.ew = icmp eq i64 %.sroa.441.0.copyload.i, %.sroa.1350.0.copyload.i
  br i1 %i.ew, label %bb.ac, label %.loopexit204.i

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %.sroa.441.0.copyload.i
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !350, !noalias !351, !noundef !4
  %i.ez = icmp sgt i8 %i.ey, -65
  br i1 %i.ez, label %bb.ac, label %.loopexit204.i

bb.ac:                                            ; preds = %bb.ab, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %.sroa.441.0.copyload.i ; 4 uses
  %i.fb = icmp samesign eq i64 %.sroa.441.0.copyload.i, %.sroa.1350.0.copyload.i
  br i1 %i.fb, label %.loopexit205.i.peel, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !352, !noundef !4 ; 5 uses
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel: ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = and i8 %i.fc, 31
  %i.fg = zext nneg i8 %i.ff to i32               ; 3 uses
  %i.fh = add nuw nsw i64 %.sroa.441.0.copyload.i, 1
  %i.fi = icmp samesign ne i64 %i.fh, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fe, align 1, !noalias !352, !noundef !4
  %i.fk = shl nuw nsw i32 %i.fg, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = icmp samesign ugt i8 %i.fc, -33
  br i1 %i.fo, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fq = add nuw nsw i64 %.sroa.441.0.copyload.i, 2
  %i.fr = icmp samesign ne i64 %i.fq, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = load i8, ptr %i.fp, align 1, !noalias !352, !noundef !4
  %i.ft = shl nuw nsw i32 %i.fm, 6
  %i.fu = and i8 %i.fs, 63
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.ft, %i.fv            ; 2 uses
  %i.fx = shl nuw nsw i32 %i.fg, 12
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fc, -17
  br i1 %i.fz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  %i.gb = add nuw nsw i64 %.sroa.441.0.copyload.i, 3
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !352, !noundef !4
  %i.ge = shl nuw nsw i32 %i.fg, 18
  %i.gf = and i32 %i.ge, 1835008
  %i.gg = shl nuw nsw i32 %i.fw, 6
  %i.gh = and i8 %i.gd, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gg, %i.gi
  %i.gk = or disjoint i32 %i.gj, %i.gf
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gl = zext nneg i8 %i.fc to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.fy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i.peel ], [ %i.gk, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i.peel ], [ %i.fn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i.peel ], [ %i.gl, %bb.ae ] ; 4 uses
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gm)
  br i1 %i.eu, label %.loopexit.i.i.peel, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.gn, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.go, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.gp, i64 3, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.ah ], [ %..i.i.peel.i.peel, %bb.ai ], [ 1, %bb.ag ]
  %i.gq = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.441.0.copyload.i ; 12 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i.peel = icmp ult i64 %i.gq, %.sroa.1350.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.al, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.ak
  %i.gs = icmp eq i64 %i.gq, %.sroa.1350.0.copyload.i
  br i1 %i.gs, label %bb.am, label %.loopexit204.i

bb.al:                                            ; preds = %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.gq
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !350, !noalias !351, !noundef !4
  %i.gv = icmp sgt i8 %i.gu, -65
  br i1 %i.gv, label %bb.am, label %.loopexit204.i

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.i.peel, %bb.aj
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.gq ; 4 uses
  %i.gw = icmp samesign eq i64 %i.gq, %.sroa.1350.0.copyload.i
  br i1 %i.gw, label %.loopexit.i.i.peel, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gx = load i8, ptr %4, align 1, !noalias !352, !noundef !4 ; 5 uses
  %i.gy = icmp sgt i8 %i.gx, -1
  br i1 %i.gy, label %30, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel: ; preds = %bb.an
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %6 = and i8 %i.gx, 31
  %7 = zext nneg i8 %6 to i32                     ; 3 uses
  %i.gz = add nuw nsw i64 %i.gq, 1
  %i.ha = icmp samesign ne i64 %i.gz, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.ha)
  %8 = load i8, ptr %5, align 1, !noalias !352, !noundef !4
  %9 = shl nuw nsw i32 %7, 6
  %10 = and i8 %8, 63
  %11 = zext nneg i8 %10 to i32                   ; 2 uses
  %12 = or disjoint i32 %9, %11
  %i.hb = icmp samesign ugt i8 %i.gx, -33
  br i1 %i.hb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.hc = add nuw nsw i64 %i.gq, 2
  %i.hd = icmp samesign ne i64 %i.hc, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.hd)
  %14 = load i8, ptr %13, align 1, !noalias !352, !noundef !4
  %15 = shl nuw nsw i32 %11, 6
  %16 = and i8 %14, 63
  %17 = zext nneg i8 %16 to i32
  %18 = or disjoint i32 %15, %17                  ; 2 uses
  %19 = shl nuw nsw i32 %7, 12
  %20 = or disjoint i32 %18, %19
  %i.he = icmp samesign ugt i8 %i.gx, -17
  br i1 %i.he, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.hf = add nuw nsw i64 %i.gq, 3
  %i.hg = icmp samesign ne i64 %i.hf, %.sroa.1350.0.copyload.i
  tail call void @llvm.assume(i1 %i.hg)
  %22 = load i8, ptr %21, align 1, !noalias !352, !noundef !4
  %23 = shl nuw nsw i32 %7, 18
  %24 = and i32 %23, 1835008
  %25 = shl nuw nsw i32 %18, 6
  %26 = and i8 %22, 63
  %27 = zext nneg i8 %26 to i32
  %28 = or disjoint i32 %25, %27
  %29 = or disjoint i32 %28, %24
  br label %.loopexit.i.loopexit.loopexit.i.peel

30:                                               ; preds = %bb.an
  %31 = zext nneg i8 %i.gx to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %30, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %20, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i.peel ], [ %29, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i.peel ], [ %12, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i.peel ], [ %31, %30 ]
  %32 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %32)
  br label %.loopexit.i.i.peel

.loopexit205.i.peel:                              ; preds = %bb.ac
  br i1 %i.eu, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %.loopexit205.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.am, %bb.af
  %.sroa.46.1202.i.peel = phi i64 [ %.sroa.441.0.copyload.i, %.loopexit205.i.peel ], [ %i.gq, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.sroa.441.0.copyload.i, %bb.af ], [ %.sroa.1350.0.copyload.i, %bb.am ] ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.46.1202.i.peel)
          to label %.noexc29.i.peel unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.noexc29.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.hh = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342, !noundef !4 ; 3 uses
  %i.hi = icmp sgt i64 %i.hh, -1
  call void @llvm.assume(i1 %i.hi)
  %.not.i27.i.peel = icmp eq i64 %.sroa.46.1202.i.peel, 0
  br i1 %.not.i27.i.peel, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc29.i.peel
  %i.hj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342, !nonnull !4, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr nonnull readonly align 1 %i.bg, i64 %.sroa.46.1202.i.peel, i1 false), !noalias !343
  %.pre.i28.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc29.i.peel
  %i.hl = phi i64 [ %.pre.i28.i.peel, %bb.ao ], [ %i.hh, %.noexc29.i.peel ]
  %i.hm = add i64 %i.hl, %.sroa.46.1202.i.peel
  store i64 %i.hm, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !348, !noalias !342
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 8)
          to label %.lr.ph.i.i unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.lr.ph.i.i:                                       ; preds = %bb.ap, %bb.bc
  %.sroa.04.0153.i = phi i64 [ %.sroa.46.1202.i, %bb.bc ], [ %.sroa.46.1202.i.peel, %bb.ap ] ; 14 uses
  %i.hn = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342, !noundef !4 ; 2 uses
  %i.ho = icmp sgt i64 %i.hn, -1
  call void @llvm.assume(i1 %i.ho)
  %i.hp = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342, !nonnull !4, !noundef !4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hn
  store i64 724387469957370082, ptr %i.hq, align 1, !noalias !343
  %.pre.i32.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342
  %storemerge = add i64 %.pre.i32.i, 8
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !349, !noalias !342
  %i.hr = icmp eq i64 %.sroa.04.0153.i, 0
  br i1 %i.hr, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0153.i, %.sroa.1350.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.aq
  %i.hs = icmp eq i64 %.sroa.04.0153.i, %.sroa.1350.0.copyload.i
  br i1 %i.hs, label %bb.as, label %.loopexit204.i

bb.ar:                                            ; preds = %bb.aq
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %.sroa.04.0153.i
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !350, !noalias !351, !noundef !4
  %i.hv = icmp sgt i8 %i.hu, -65
  br i1 %i.hv, label %bb.as, label %.loopexit204.i

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %.sroa.04.0153.i ; 4 uses
  %i.hx = icmp samesign eq i64 %.sroa.04.0153.i, %.sroa.1350.0.copyload.i
  br i1 %i.hx, label %.loopexit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hy = load i8, ptr %i.hw, align 1, !noalias !352, !noundef !4 ; 4 uses
  %i.hz = icmp sgt i8 %i.hy, -1
  br i1 %i.hz, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i: ; preds = %bb.at
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ib = and i8 %i.hy, 31
  %i.ic = zext nneg i8 %i.ib to i32               ; 3 uses
  %i.id = add nuw nsw i64 %.sroa.04.0153.i, 1
  %i.ie = icmp samesign ne i64 %i.id, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.ie)
  %i.if = load i8, ptr %i.ia, align 1, !noalias !352, !noundef !4
  %i.ig = shl nuw nsw i32 %i.ic, 6
  %i.ih = and i8 %i.if, 63
  %i.ii = zext nneg i8 %i.ih to i32               ; 2 uses
  %i.ij = or disjoint i32 %i.ig, %i.ii
  %i.ik = icmp samesign ugt i8 %i.hy, -33
  br i1 %i.ik, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, label %bb.au

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.im = add nuw nsw i64 %.sroa.04.0153.i, 2
  %i.in = icmp samesign ne i64 %i.im, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.in)
  %i.io = load i8, ptr %i.il, align 1, !noalias !352, !noundef !4
  %i.ip = shl nuw nsw i32 %i.ii, 6
  %i.iq = and i8 %i.io, 63
  %i.ir = zext nneg i8 %i.iq to i32
  %i.is = or disjoint i32 %i.ip, %i.ir            ; 2 uses
  %i.it = shl nuw nsw i32 %i.ic, 12
  %i.iu = or disjoint i32 %i.is, %i.it
  %i.iv = icmp samesign ugt i8 %i.hy, -17
  br i1 %i.iv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i, label %bb.au

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 3
  %i.ix = add nuw nsw i64 %.sroa.04.0153.i, 3
  %i.iy = icmp samesign ne i64 %i.ix, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.iy)
  %i.iz = load i8, ptr %i.iw, align 1, !noalias !352, !noundef !4
  %i.ja = shl nuw nsw i32 %i.ic, 18
  %i.jb = and i32 %i.ja, 1835008
  %i.jc = shl nuw nsw i32 %i.is, 6
  %i.jd = and i8 %i.iz, 63
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je
  %i.jg = or disjoint i32 %i.jf, %i.jb
  br label %bb.au

bb.au:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.iu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.peel.i ], [ %i.jg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.peel.i ], [ %i.ij, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.peel.i ] ; 4 uses
  %i.jh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.jh)
  %i.ji = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.ji, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.jj, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.jk, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.aw, %bb.av, %bb.au
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.av ], [ %..i.i.peel.i, %bb.aw ], [ 1, %bb.au ], [ 1, %bb.at ]
  %i.jl = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0153.i ; 15 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.jl, %.sroa.1350.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.ay, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ax
  %i.jn = icmp eq i64 %i.jl, %.sroa.1350.0.copyload.i
  br i1 %i.jn, label %bb.az, label %.loopexit204.i

bb.ay:                                            ; preds = %bb.ax
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.jl
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !350, !noalias !351, !noundef !4
  %i.jq = icmp sgt i8 %i.jp, -65
  br i1 %i.jq, label %bb.az, label %.loopexit204.i

bb.az:                                            ; preds = %bb.ay, %.split.i.i.i.i, %.thread
  %i.jr = icmp samesign eq i64 %i.jl, %.sroa.1350.0.copyload.i
  br i1 %i.jr, label %.loopexit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.1249.0.copyload.i, i64 %i.jl
  %i.jt = load i8, ptr %i.js, align 1, !noalias !352, !noundef !4 ; 3 uses
  %i.ju = icmp sgt i8 %i.jt, -1
  br i1 %i.ju, label %.loopexit.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i: ; preds = %bb.ba
  %i.jv = add nuw nsw i64 %i.jl, 1
  %i.jw = icmp samesign ne i64 %i.jv, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp samesign ugt i8 %i.jt, -33
  br i1 %i.jx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit12.i.i.i.i
  %i.jy = add nuw nsw i64 %i.jl, 2
  %i.jz = icmp samesign ne i64 %i.jy, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp samesign ugt i8 %i.jt, -17
  br i1 %i.ka, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl6EuCK7xub1_5insta.exit14.i.i.i.i
  %i.kb = add nuw nsw i64 %i.jl, 3
  %i.kc = icmp samesign ne i64 %i.kb, %.sroa.1350.0.copyload.i
  call void @llvm.assume(i1 %i.kc)
  br label %.loopexit.i.i

.loopexit204.i:                                   ; preds = %bb.ay, %.split.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i, %bb.al, %.split.i.i.i.i.peel, %bb.ab, %.split.i.i.i.peel.i.peel
  %.sroa.46.1.lcssa.i = phi i64 [ %.sroa.441.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.441.0.copyload.i, %bb.ab ], [ %i.gq, %.split.i.i.i.i.peel ], [ %i.gq, %bb.al ], [ %i.jl, %bb.ay ], [ %i.jl, %.split.i.i.i.i ], [ %.sroa.04.0153.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0153.i, %bb.ar ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1249.0.copyload.i, i64 noundef %.sroa.1350.0.copyload.i, i64 noundef %.sroa.46.1.lcssa.i, i64 noundef %.sroa.1350.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #13
          to label %.noexc.i unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !351

.noexc.i:                                         ; preds = %.loopexit204.i
  unreachable

.split138.us.i:                                   ; preds = %.lr.ph231
  %i.kd = add i64 %i.df, %.sroa.441.0.copyload.i
  %umax.i51.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1350.0.copyload.i, i64 %i.kd)
  br label %.split138.us.invoke.i

.split138.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.n, %.lr.ph227, %.lr.ph234, %.split.us.i, %.split138.us.i
  %i.ke = phi i64 [ %umax.i51.i, %.split138.us.i ], [ %umax.i.i, %.split.us.i ], [ %i.dp, %.lr.ph234 ], [ %i.cs, %.lr.ph227 ], [ %i.cu, %bb.n ], [ %i.bu, %.preheader.us.i.preheader.split ]
  %i.kf = phi i64 [ %.sroa.1350.0.copyload.i, %.split138.us.i ], [ %.sroa.1350.0.copyload.i, %.split.us.i ], [ %.sroa.1350.0.copyload.i, %.lr.ph234 ], [ %.sroa.15.0.copyload.i, %.lr.ph227 ], [ %.sroa.1350.0.copyload.i, %bb.n ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.kg = phi ptr [ @3, %.split138.us.i ], [ @3, %.split.us.i ], [ @2, %.lr.ph234 ], [ @1, %.lr.ph227 ], [ @2, %bb.n ], [ @1, %.preheader.us.i.preheader.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ke, i64 noundef range(i64 0, -9223372036854775808) %i.kf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kg) #13
          to label %.split138.us.cont.i unwind label %.loopexit76.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !353

.split138.us.cont.i:                              ; preds = %.split138.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.kh = add i64 %i.ca, %.sroa.0.0.i.i.us.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1350.0.copyload.i, i64 %i.kh)
  br label %.split138.us.invoke.i
end_hunk_0
