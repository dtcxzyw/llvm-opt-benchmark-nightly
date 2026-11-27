Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.05?download=true
inline.NumInlined: 976
inline.NumDeleted: 392
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals9inference22rust_name_for_sql_name:bb.a
  br i1 %.not72.us.i.us, label %.loopexit.i.us.i, label %.lr.ph519

.lr.ph519:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i53.us.i.us518 = phi i64 [ %i.eg, %.preheader.us.i.us ], [ %.sroa.442.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.eg = add i64 %.sroa.2.0.i53.us.i.us518, -1   ; 4 uses
  %i.eh = add i64 %i.eg, %i.dx                    ; 3 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.1351.0.copyload.i
  br i1 %i.ei, label %bb.ab, label %.split139.us.invoke.i

bb.ab:                                            ; preds = %.lr.ph519
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !1508, !noalias !1504, !noundef !32
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.eh
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !1507, !noalias !1504, !noundef !32
  %.not.i54.us.i.us = icmp eq i8 %i.ek, %i.em
  br i1 %.not.i54.us.i.us, label %.preheader.us.i.us, label %.split128.us

.split128.us:                                     ; preds = %bb.ab
  %i.en = add i64 %i.dx, %.sroa.644.0.copyload.i
  br label %bb.af

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not72.us.i, label %.loopexit.i.us.i, label %.split139.us.invoke.i

.lr.ph516:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i49.us.i515 = phi i64 [ %i.ef, %.preheader.i ], [ %.sroa.442.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.eo = add i64 %.sroa.02.0.i49.us.i515, %i.dx  ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %.sroa.1351.0.copyload.i
  br i1 %i.ep, label %bb.ac, label %.split139.us.i

bb.ac:                                            ; preds = %.lr.ph516
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i49.us.i515
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !1508, !noalias !1504, !noundef !32
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.eo
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !1507, !noalias !1504, !noundef !32
  %.not21.i52.us.i = icmp eq i8 %i.er, %i.et
  br i1 %.not21.i52.us.i, label %.preheader.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.reass269.i.reass.reass = add i64 %i.dx, %invariant.op730
  %i.eu = add i64 %.reass269.i.reass.reass, %.sroa.02.0.i49.us.i515
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i45.us.i
  %i.ev = add i64 %i.dx, %.sroa.15.0.copyload.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split128.us, %bb.ad
  %i.ew = phi i64 [ %i.eu, %bb.ad ], [ %i.ev, %bb.ae ], [ %i.en, %.split128.us ] ; 2 uses
  %i.ex = add i64 %i.ew, %i.ck                    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %.sroa.1351.0.copyload.i
  br i1 %i.ey, label %.lr.ph.i45.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader74.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader74.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.753.3.us.i = phi i64 [ %i.dx, %.preheader.us.i.preheader.split ], [ %i.dx, %.preheader.us.i.us ], [ %i.cs, %.preheader74.us.i ], [ %i.dx, %.preheader.us.i.us.preheader ], [ %i.cs, %.preheader74.us.i.preheader ] ; 3 uses
  %.sroa.3013.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader74.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader74.us.i.preheader ]
  %.sroa.1154.3.us.i = add i64 %.sroa.753.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i)
          to label %.noexc29.us.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1504

.noexc29.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.fa = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503, !noundef !32 ; 3 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  %.not.i27.us.i = icmp eq i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i
  br i1 %.not.i27.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc29.us.i
  %i.fc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503, !nonnull !32, !noundef !32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull readonly align 1 %i.ez, i64 %gepdiff.us.i, i1 false), !noalias !1504
  %.pre.i28.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.noexc29.us.i
  %i.fe = phi i64 [ %.pre.i28.us.i, %bb.ag ], [ %i.fa, %.noexc29.us.i ]
  %i.ff = add i64 %i.fe, %gepdiff.us.i
  store i64 %i.ff, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1504

bb.ai:                                            ; preds = %bb.ah
  %i.fg = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503, !noundef !32 ; 2 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503, !nonnull !32, !noundef !32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  store i8 95, ptr %i.fj, align 1, !noalias !1504
  %.pre.i32.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503
  %i.fk = add i64 %.pre.i32.us.i, 1
  store i64 %i.fk, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503
  br label %bb.q

_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.fl = and i64 %.sroa.644.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i) ]
  %i.fm = trunc i64 %.sroa.644.0.copyload.i to i1 ; 2 uses
  %i.fn = icmp eq i64 %.sroa.442.0.copyload.i, 0
  br i1 %i.fn, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.ak, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.aj
  %i.fo = icmp eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.fo, label %bb.al, label %.loopexit205.i

bb.ak:                                            ; preds = %bb.aj
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !1511, !noalias !1512, !noundef !32
  %i.fr = icmp sgt i8 %i.fq, -65
  br i1 %i.fr, label %bb.al, label %.loopexit205.i

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i ; 4 uses
  %i.ft = icmp samesign eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.ft, label %.loopexit206.i.peel, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fu = load i8, ptr %i.fs, align 1, !noalias !1513, !noundef !32 ; 5 uses
  %i.fv = icmp sgt i8 %i.fu, -1
  br i1 %i.fv, label %bb.an, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i.peel: ; preds = %bb.am
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fx = and i8 %i.fu, 31
  %i.fy = zext nneg i8 %i.fx to i32               ; 3 uses
  %i.fz = add nuw nsw i64 %.sroa.442.0.copyload.i, 1
  %i.ga = icmp samesign ne i64 %i.fz, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fw, align 1, !noalias !1513, !noundef !32
  %i.gc = shl nuw nsw i32 %i.fy, 6
  %i.gd = and i8 %i.gb, 63
  %i.ge = zext nneg i8 %i.gd to i32               ; 2 uses
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fu, -33
  br i1 %i.gg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i.peel, label %bb.ao

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i.peel
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.gi = add nuw nsw i64 %.sroa.442.0.copyload.i, 2
  %i.gj = icmp samesign ne i64 %i.gi, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i8, ptr %i.gh, align 1, !noalias !1513, !noundef !32
  %i.gl = shl nuw nsw i32 %i.ge, 6
  %i.gm = and i8 %i.gk, 63
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gl, %i.gn            ; 2 uses
  %i.gp = shl nuw nsw i32 %i.fy, 12
  %i.gq = or disjoint i32 %i.go, %i.gp
  %i.gr = icmp samesign ugt i8 %i.fu, -17
  br i1 %i.gr, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i.peel, label %bb.ao

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i.peel
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.gt = add nuw nsw i64 %.sroa.442.0.copyload.i, 3
  %i.gu = icmp samesign ne i64 %i.gt, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gu)
  %i.gv = load i8, ptr %i.gs, align 1, !noalias !1513, !noundef !32
  %i.gw = shl nuw nsw i32 %i.fy, 18
  %i.gx = and i32 %i.gw, 1835008
  %i.gy = shl nuw nsw i32 %i.go, 6
  %i.gz = and i8 %i.gv, 63
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = or disjoint i32 %i.hb, %i.gx
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hd = zext nneg i8 %i.fu to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.gq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i.peel ], [ %i.hc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i.peel ], [ %i.gf, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i.peel ], [ %i.hd, %bb.an ] ; 4 uses
  %i.he = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.he)
  br i1 %i.fm, label %.loopexit.i.i.peel, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.hf, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.hg, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.hh, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.aq ], [ %..i.i.peel.i.peel, %bb.ar ], [ 1, %bb.ap ]
  %i.hi = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.442.0.copyload.i ; 12 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i.i.peel = icmp ult i64 %i.hi, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.au, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.at
  %i.hk = icmp eq i64 %i.hi, %.sroa.1351.0.copyload.i
  br i1 %i.hk, label %bb.av, label %.loopexit205.i

bb.au:                                            ; preds = %bb.at
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hi
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !1511, !noalias !1512, !noundef !32
  %i.hn = icmp sgt i8 %i.hm, -65
  br i1 %i.hn, label %bb.av, label %.loopexit205.i

bb.av:                                            ; preds = %bb.au, %.split.i.i.i.i.peel, %bb.as
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hi ; 4 uses
  %i.ho = icmp samesign eq i64 %i.hi, %.sroa.1351.0.copyload.i
  br i1 %i.ho, label %.loopexit.i.i.peel, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hp = load i8, ptr %4, align 1, !noalias !1513, !noundef !32 ; 5 uses
  %i.hq = icmp sgt i8 %i.hp, -1
  br i1 %i.hq, label %30, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23.peel: ; preds = %bb.aw
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %6 = and i8 %i.hp, 31
  %7 = zext nneg i8 %6 to i32                     ; 3 uses
  %i.hr = add nuw nsw i64 %i.hi, 1
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hs)
  %8 = load i8, ptr %5, align 1, !noalias !1513, !noundef !32
  %9 = shl nuw nsw i32 %7, 6
  %10 = and i8 %8, 63
  %11 = zext nneg i8 %10 to i32                   ; 2 uses
  %12 = or disjoint i32 %9, %11
  %i.ht = icmp samesign ugt i8 %i.hp, -33
  br i1 %i.ht, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23.peel
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.hu = add nuw nsw i64 %i.hi, 2
  %i.hv = icmp samesign ne i64 %i.hu, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hv)
  %14 = load i8, ptr %13, align 1, !noalias !1513, !noundef !32
  %15 = shl nuw nsw i32 %11, 6
  %16 = and i8 %14, 63
  %17 = zext nneg i8 %16 to i32
  %18 = or disjoint i32 %15, %17                  ; 2 uses
  %19 = shl nuw nsw i32 %7, 12
  %20 = or disjoint i32 %18, %19
  %i.hw = icmp samesign ugt i8 %i.hp, -17
  br i1 %i.hw, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24.peel
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.hx = add nuw nsw i64 %i.hi, 3
  %i.hy = icmp samesign ne i64 %i.hx, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hy)
  %22 = load i8, ptr %21, align 1, !noalias !1513, !noundef !32
  %23 = shl nuw nsw i32 %7, 18
  %24 = and i32 %23, 1835008
  %25 = shl nuw nsw i32 %18, 6
  %26 = and i8 %22, 63
  %27 = zext nneg i8 %26 to i32
  %28 = or disjoint i32 %25, %27
  %29 = or disjoint i32 %28, %24
  br label %.loopexit.i.loopexit.loopexit.i.peel

30:                                               ; preds = %bb.aw
  %31 = zext nneg i8 %i.hp to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %30, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23.peel
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %20, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24.peel ], [ %29, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25.peel ], [ %12, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23.peel ], [ %31, %30 ]
  %32 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %32)
  br label %.loopexit.i.i.peel

.loopexit206.i.peel:                              ; preds = %bb.al
  br i1 %i.fm, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %.loopexit206.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.av, %bb.ao
  %.sroa.47.1203.i.peel = phi i64 [ %.sroa.442.0.copyload.i, %.loopexit206.i.peel ], [ %i.hi, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.sroa.442.0.copyload.i, %bb.ao ], [ %.sroa.1351.0.copyload.i, %bb.av ] ; 5 uses
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.47.1203.i.peel)
          to label %.noexc29.i.peel unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1504

.noexc29.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.hz = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503, !noundef !32 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1
  call void @llvm.assume(i1 %i.ia)
  %.not.i27.i.peel = icmp eq i64 %.sroa.47.1203.i.peel, 0
  br i1 %.not.i27.i.peel, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc29.i.peel
  %i.ib = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503, !nonnull !32, !noundef !32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.cd, i64 %.sroa.47.1203.i.peel, i1 false), !noalias !1504
  %.pre.i28.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc29.i.peel
  %i.id = phi i64 [ %.pre.i28.i.peel, %bb.ax ], [ %i.hz, %.noexc29.i.peel ]
  %i.ie = add i64 %i.id, %.sroa.47.1203.i.peel
  store i64 %i.ie, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1509, !noalias !1503
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %.lr.ph.i.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1504

.lr.ph.i.i:                                       ; preds = %bb.ay, %bb.bl
  %.sroa.04.0154.i = phi i64 [ %.sroa.47.1203.i, %bb.bl ], [ %.sroa.47.1203.i.peel, %bb.ay ] ; 14 uses
  %i.if = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503, !noundef !32 ; 2 uses
  %i.ig = icmp sgt i64 %i.if, -1
  call void @llvm.assume(i1 %i.ig)
  %i.ih = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503, !nonnull !32, !noundef !32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if
  store i8 95, ptr %i.ii, align 1, !noalias !1504
  %.pre.i32.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503
  %storemerge = add i64 %.pre.i32.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1503
  %i.ij = icmp eq i64 %.sroa.04.0154.i, 0
  br i1 %i.ij, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.ba, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.az
  %i.ik = icmp eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.ik, label %bb.bb, label %.loopexit205.i

bb.ba:                                            ; preds = %bb.az
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !1511, !noalias !1512, !noundef !32
  %i.in = icmp sgt i8 %i.im, -65
  br i1 %i.in, label %bb.bb, label %.loopexit205.i

bb.bb:                                            ; preds = %bb.ba, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i ; 4 uses
  %i.ip = icmp samesign eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.ip, label %.loopexit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iq = load i8, ptr %i.io, align 1, !noalias !1513, !noundef !32 ; 4 uses
  %i.ir = icmp sgt i8 %i.iq, -1
  br i1 %i.ir, label %.thread, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i: ; preds = %bb.bc
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.it = and i8 %i.iq, 31
  %i.iu = zext nneg i8 %i.it to i32               ; 3 uses
  %i.iv = add nuw nsw i64 %.sroa.04.0154.i, 1
  %i.iw = icmp samesign ne i64 %i.iv, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.iw)
  %i.ix = load i8, ptr %i.is, align 1, !noalias !1513, !noundef !32
  %i.iy = shl nuw nsw i32 %i.iu, 6
  %i.iz = and i8 %i.ix, 63
  %i.ja = zext nneg i8 %i.iz to i32               ; 2 uses
  %i.jb = or disjoint i32 %i.iy, %i.ja
  %i.jc = icmp samesign ugt i8 %i.iq, -33
  br i1 %i.jc, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i, label %bb.bd

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.je = add nuw nsw i64 %.sroa.04.0154.i, 2
  %i.jf = icmp samesign ne i64 %i.je, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jf)
  %i.jg = load i8, ptr %i.jd, align 1, !noalias !1513, !noundef !32
  %i.jh = shl nuw nsw i32 %i.ja, 6
  %i.ji = and i8 %i.jg, 63
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = or disjoint i32 %i.jh, %i.jj            ; 2 uses
  %i.jl = shl nuw nsw i32 %i.iu, 12
  %i.jm = or disjoint i32 %i.jk, %i.jl
  %i.jn = icmp samesign ugt i8 %i.iq, -17
  br i1 %i.jn, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i, label %bb.bd

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jp = add nuw nsw i64 %.sroa.04.0154.i, 3
  %i.jq = icmp samesign ne i64 %i.jp, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.jq)
  %i.jr = load i8, ptr %i.jo, align 1, !noalias !1513, !noundef !32
  %i.js = shl nuw nsw i32 %i.iu, 18
  %i.jt = and i32 %i.js, 1835008
  %i.ju = shl nuw nsw i32 %i.jk, 6
  %i.jv = and i8 %i.jr, 63
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = or disjoint i32 %i.ju, %i.jw
  %i.jy = or disjoint i32 %i.jx, %i.jt
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.jm, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.peel.i ], [ %i.jy, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.peel.i ], [ %i.jb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.peel.i ] ; 4 uses
  %i.jz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.ka, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.kb, label %.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.kc, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.bc, %bb.bf, %bb.be, %bb.bd
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.be ], [ %..i.i.peel.i, %bb.bf ], [ 1, %bb.bd ], [ 1, %bb.bc ]
  %i.kd = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0154.i ; 15 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.kd, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.bh, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bg
  %i.kf = icmp eq i64 %i.kd, %.sroa.1351.0.copyload.i
  br i1 %i.kf, label %bb.bi, label %.loopexit205.i

bb.bh:                                            ; preds = %bb.bg
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.kd
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !1511, !noalias !1512, !noundef !32
  %i.ki = icmp sgt i8 %i.kh, -65
  br i1 %i.ki, label %bb.bi, label %.loopexit205.i

bb.bi:                                            ; preds = %bb.bh, %.split.i.i.i.i, %.thread
  %i.kj = icmp samesign eq i64 %i.kd, %.sroa.1351.0.copyload.i
  br i1 %i.kj, label %.loopexit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.kd
  %i.kl = load i8, ptr %i.kk, align 1, !noalias !1513, !noundef !32 ; 3 uses
  %i.km = icmp sgt i8 %i.kl, -1
  br i1 %i.km, label %.loopexit.i.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23: ; preds = %bb.bj
  %i.kn = add nuw nsw i64 %i.kd, 1
  %i.ko = icmp samesign ne i64 %i.kn, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ko)
  %i.kp = icmp samesign ugt i8 %i.kl, -33
  br i1 %i.kp, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24, label %.loopexit.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.i.i23
  %i.kq = add nuw nsw i64 %i.kd, 2
  %i.kr = icmp samesign ne i64 %i.kq, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp samesign ugt i8 %i.kl, -17
  br i1 %i.ks, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25, label %.loopexit.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.i.i25: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.i.i24
  %i.kt = add nuw nsw i64 %i.kd, 3
  %i.ku = icmp samesign ne i64 %i.kt, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ku)
  br label %.loopexit.i.i

.loopexit205.i:                                   ; preds = %bb.au, %.split.i.i.i.i.peel, %bb.ak, %.split.i.i.i.peel.i.peel, %bb.bh, %.split.i.i.i.i, %bb.ba, %.split.i.i.i.peel.i
  %.sroa.47.1.lcssa.i = phi i64 [ %i.kd, %bb.bh ], [ %i.kd, %.split.i.i.i.i ], [ %.sroa.04.0154.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0154.i, %bb.ba ], [ %.sroa.442.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.442.0.copyload.i, %bb.ak ], [ %i.hi, %.split.i.i.i.i.peel ], [ %i.hi, %bb.au ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1250.0.copyload.i, i64 noundef %.sroa.1351.0.copyload.i, i64 noundef %.sroa.47.1.lcssa.i, i64 noundef %.sroa.1351.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #29
          to label %.noexc.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1512

.noexc.i:                                         ; preds = %.loopexit205.i
  unreachable

.split139.us.i:                                   ; preds = %.lr.ph516
  %i.kv = add i64 %i.dx, %.sroa.442.0.copyload.i
  %umax.i51.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.kv)
  br label %.split139.us.invoke.i

.split139.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.w, %.lr.ph512, %.lr.ph519, %.split.us.i, %.split139.us.i
  %i.kw = phi i64 [ %umax.i51.i, %.split139.us.i ], [ %umax.i.i, %.split.us.i ], [ %i.eh, %.lr.ph519 ], [ %i.dk, %.lr.ph512 ], [ %i.dm, %bb.w ], [ %i.cm, %.preheader.us.i.preheader.split ]
  %i.kx = phi i64 [ %.sroa.1351.0.copyload.i, %.split139.us.i ], [ %.sroa.1351.0.copyload.i, %.split.us.i ], [ %.sroa.1351.0.copyload.i, %.lr.ph519 ], [ %.sroa.15.0.copyload.i, %.lr.ph512 ], [ %.sroa.1351.0.copyload.i, %bb.w ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.ky = phi ptr [ @32, %.split139.us.i ], [ @32, %.split.us.i ], [ @31, %.lr.ph519 ], [ @30, %.lr.ph512 ], [ @31, %bb.w ], [ @30, %.preheader.us.i.preheader.split ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef range(i64 0, -9223372036854775808) %i.kx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky) #29
          to label %.split139.us.cont.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1514

.split139.us.cont.i:                              ; preds = %.split139.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.kz = add i64 %i.cs, %.sroa.0.0.i.i.us.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.kz)
  br label %.split139.us.invoke.i
end_hunk_0
