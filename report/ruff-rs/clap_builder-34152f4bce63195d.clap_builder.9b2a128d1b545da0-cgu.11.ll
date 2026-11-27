Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.11?download=true
inline.NumInlined: 256
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var:bb.a
  br i1 %.not72.us.i.us, label %.loopexit.i.us.i, label %.lr.ph190

.lr.ph190:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i53.us.i.us189 = phi i64 [ %i.bm, %.preheader.us.i.us ], [ %.sroa.442.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.bm = add i64 %.sroa.2.0.i53.us.i.us189, -1   ; 4 uses
  %i.bn = add i64 %i.bm, %i.bd                    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %.sroa.1351.0.copyload.i
  br i1 %i.bo, label %bb.n, label %.split139.us.invoke.i

bb.n:                                             ; preds = %.lr.ph190
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !141, !noalias !137, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !140, !noalias !137, !noundef !6
  %.not.i54.us.i.us = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i54.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.bt = add i64 %i.bd, %.sroa.644.0.copyload.i
  br label %bb.r

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not72.us.i, label %.loopexit.i.us.i, label %.split139.us.invoke.i

.lr.ph187:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i49.us.i186 = phi i64 [ %i.bl, %.preheader.i ], [ %.sroa.442.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.bu = add i64 %.sroa.02.0.i49.us.i186, %i.bd  ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.1351.0.copyload.i
  br i1 %i.bv, label %bb.o, label %.split139.us.i

bb.o:                                             ; preds = %.lr.ph187
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.02.0.i49.us.i186
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !141, !noalias !137, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !140, !noalias !137, !noundef !6
  %.not21.i52.us.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not21.i52.us.i, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass269.i.reass.reass = add i64 %i.bd, %invariant.op262
  %i.ca = add i64 %.reass269.i.reass.reass, %.sroa.02.0.i49.us.i186
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i45.us.i
  %i.cb = add i64 %i.bd, %.sroa.15.0.copyload.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.split.us, %bb.p
  %i.cc = phi i64 [ %i.ca, %bb.p ], [ %i.cb, %bb.q ], [ %i.bt, %.split.us ] ; 2 uses
  %i.cd = add i64 %i.cc, %i.q                     ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.1351.0.copyload.i
  br i1 %i.ce, label %.lr.ph.i45.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader74.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader74.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.753.3.us.i = phi i64 [ %i.bd, %.preheader.us.i.preheader.split ], [ %i.bd, %.preheader.us.i.us ], [ %i.y, %.preheader74.us.i ], [ %i.bd, %.preheader.us.i.us.preheader ], [ %i.y, %.preheader74.us.i.preheader ] ; 3 uses
  %.sroa.3013.3.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader74.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader74.us.i.preheader ]
  %.sroa.1154.3.us.i = add i64 %.sroa.753.3.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i)
          to label %.noexc29.us.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

.noexc29.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.cg = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136, !noundef !6 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.ch)
  %.not.i27.us.i = icmp eq i64 %.sroa.753.3.us.i, %.sroa.04.0.us.i
  br i1 %.not.i27.us.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc29.us.i
  %i.ci = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136, !nonnull !6, !noundef !6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %i.cf, i64 %gepdiff.us.i, i1 false), !noalias !137
  %.pre.i28.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc29.us.i
  %i.ck = phi i64 [ %.pre.i28.us.i, %bb.s ], [ %i.cg, %.noexc29.us.i ]
  %i.cl = add i64 %i.ck, %gepdiff.us.i
  store i64 %i.cl, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.u unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

bb.u:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136, !noundef !6 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136, !nonnull !6, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 10, ptr %i.cp, align 1, !noalias !137
  %.pre.i32.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136
  %i.cq = add i64 %.pre.i32.us.i, 1
  store i64 %i.cq, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136
  br label %bb.c

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i: ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.cr = and i64 %.sroa.644.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i) ]
  %i.cs = trunc i64 %.sroa.644.0.copyload.i to i1 ; 2 uses
  %i.ct = icmp eq i64 %.sroa.442.0.copyload.i, 0
  br i1 %i.ct, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.w, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.v
  %i.cu = icmp eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.cu, label %bb.x, label %.loopexit205.i

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !144, !noalias !145, !noundef !6
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %bb.x, label %.loopexit205.i

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.442.0.copyload.i ; 4 uses
  %i.cz = icmp samesign eq i64 %.sroa.442.0.copyload.i, %.sroa.1351.0.copyload.i
  br i1 %i.cz, label %.loopexit206.i.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.cy, align 1, !noalias !146, !noundef !6 ; 5 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i.peel: ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dd = and i8 %i.da, 31
  %i.de = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.df = add nuw nsw i64 %.sroa.442.0.copyload.i, 1
  %i.dg = icmp samesign ne i64 %i.df, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.dc, align 1, !noalias !146, !noundef !6
  %i.di = shl nuw nsw i32 %i.de, 6
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i32               ; 2 uses
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = icmp samesign ugt i8 %i.da, -33
  br i1 %i.dm, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i.peel, label %bb.aa

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i.peel
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.do = add nuw nsw i64 %.sroa.442.0.copyload.i, 2
  %i.dp = icmp samesign ne i64 %i.do, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = load i8, ptr %i.dn, align 1, !noalias !146, !noundef !6
  %i.dr = shl nuw nsw i32 %i.dk, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt            ; 2 uses
  %i.dv = shl nuw nsw i32 %i.de, 12
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = icmp samesign ugt i8 %i.da, -17
  br i1 %i.dx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i.peel, label %bb.aa

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i.peel
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  %i.dz = add nuw nsw i64 %.sroa.442.0.copyload.i, 3
  %i.ea = icmp samesign ne i64 %i.dz, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = load i8, ptr %i.dy, align 1, !noalias !146, !noundef !6
  %i.ec = shl nuw nsw i32 %i.de, 18
  %i.ed = and i32 %i.ec, 1835008
  %i.ee = shl nuw nsw i32 %i.du, 6
  %i.ef = and i8 %i.eb, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = or disjoint i32 %i.eh, %i.ed
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = zext nneg i8 %i.da to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.dw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i.peel ], [ %i.ei, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i.peel ], [ %i.dl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i.peel ], [ %i.ej, %bb.z ] ; 4 uses
  %i.ek = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ek)
  br i1 %i.cs, label %.loopexit.i.i.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.el, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.em, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.en, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.ac ], [ %..i.i.peel.i.peel, %bb.ad ], [ 1, %bb.ab ]
  %i.eo = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.442.0.copyload.i ; 12 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.i.peel = icmp ult i64 %i.eo, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.ag, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.af
  %i.eq = icmp eq i64 %i.eo, %.sroa.1351.0.copyload.i
  br i1 %i.eq, label %bb.ah, label %.loopexit205.i

bb.ag:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.eo
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !144, !noalias !145, !noundef !6
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %bb.ah, label %.loopexit205.i

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.i.peel, %bb.ae
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.eo ; 4 uses
  %i.eu = icmp samesign eq i64 %i.eo, %.sroa.1351.0.copyload.i
  br i1 %i.eu, label %.loopexit.i.i.peel, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load i8, ptr %1, align 1, !noalias !146, !noundef !6 ; 5 uses
  %i.ew = icmp sgt i8 %i.ev, -1
  br i1 %i.ew, label %27, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i.peel: ; preds = %bb.ai
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = and i8 %i.ev, 31
  %4 = zext nneg i8 %3 to i32                     ; 3 uses
  %i.ex = add nuw nsw i64 %i.eo, 1
  %i.ey = icmp samesign ne i64 %i.ex, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.ey)
  %5 = load i8, ptr %2, align 1, !noalias !146, !noundef !6
  %6 = shl nuw nsw i32 %4, 6
  %7 = and i8 %5, 63
  %8 = zext nneg i8 %7 to i32                     ; 2 uses
  %9 = or disjoint i32 %6, %8
  %i.ez = icmp samesign ugt i8 %i.ev, -33
  br i1 %i.ez, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i.peel
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fa = add nuw nsw i64 %i.eo, 2
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.fb)
  %11 = load i8, ptr %10, align 1, !noalias !146, !noundef !6
  %12 = shl nuw nsw i32 %8, 6
  %13 = and i8 %11, 63
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %12, %14                  ; 2 uses
  %16 = shl nuw nsw i32 %4, 12
  %17 = or disjoint i32 %15, %16
  %i.fc = icmp samesign ugt i8 %i.ev, -17
  br i1 %i.fc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i.peel
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fd = add nuw nsw i64 %i.eo, 3
  %i.fe = icmp samesign ne i64 %i.fd, %.sroa.1351.0.copyload.i
  tail call void @llvm.assume(i1 %i.fe)
  %19 = load i8, ptr %18, align 1, !noalias !146, !noundef !6
  %20 = shl nuw nsw i32 %4, 18
  %21 = and i32 %20, 1835008
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %19, 63
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %22, %24
  %26 = or disjoint i32 %25, %21
  br label %.loopexit.i.loopexit.loopexit.i.peel

27:                                               ; preds = %bb.ai
  %28 = zext nneg i8 %i.ev to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %27, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %17, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i.peel ], [ %26, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i.peel ], [ %9, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i.peel ], [ %28, %27 ]
  %29 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %29)
  br label %.loopexit.i.i.peel

.loopexit206.i.peel:                              ; preds = %bb.x
  br i1 %i.cs, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %.loopexit206.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.ah, %bb.aa
  %.sroa.47.1203.i.peel = phi i64 [ %.sroa.442.0.copyload.i, %.loopexit206.i.peel ], [ %i.eo, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.sroa.442.0.copyload.i, %bb.aa ], [ %.sroa.1351.0.copyload.i, %bb.ah ] ; 5 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.47.1203.i.peel)
          to label %.noexc29.i.peel unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

.noexc29.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.ff = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136, !noundef !6 ; 3 uses
  %i.fg = icmp sgt i64 %i.ff, -1
  call void @llvm.assume(i1 %i.fg)
  %.not.i27.i.peel = icmp eq i64 %.sroa.47.1203.i.peel, 0
  br i1 %.not.i27.i.peel, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc29.i.peel
  %i.fh = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136, !nonnull !6, !noundef !6
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull readonly align 1 %i.f, i64 %.sroa.47.1203.i.peel, i1 false), !noalias !137
  %.pre.i28.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc29.i.peel
  %i.fj = phi i64 [ %.pre.i28.i.peel, %bb.aj ], [ %i.ff, %.noexc29.i.peel ]
  %i.fk = add i64 %i.fj, %.sroa.47.1203.i.peel
  store i64 %i.fk, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !136
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %.lr.ph.i.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137

.lr.ph.i.i:                                       ; preds = %bb.ak, %bb.ax
  %.sroa.04.0154.i = phi i64 [ %.sroa.47.1203.i, %bb.ax ], [ %.sroa.47.1203.i.peel, %bb.ak ] ; 14 uses
  %i.fl = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136, !noundef !6 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136, !nonnull !6, !noundef !6
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl
  store i8 10, ptr %i.fo, align 1, !noalias !137
  %.pre.i32.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136
  %storemerge = add i64 %.pre.i32.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !143, !noalias !136
  %i.fp = icmp eq i64 %.sroa.04.0154.i, 0
  br i1 %i.fp, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.am, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.al
  %i.fq = icmp eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.fq, label %bb.an, label %.loopexit205.i

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !144, !noalias !145, !noundef !6
  %i.ft = icmp sgt i8 %i.fs, -65
  br i1 %i.ft, label %bb.an, label %.loopexit205.i

bb.an:                                            ; preds = %bb.am, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %.sroa.04.0154.i ; 4 uses
  %i.fv = icmp samesign eq i64 %.sroa.04.0154.i, %.sroa.1351.0.copyload.i
  br i1 %i.fv, label %.loopexit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = load i8, ptr %i.fu, align 1, !noalias !146, !noundef !6 ; 4 uses
  %i.fx = icmp sgt i8 %i.fw, -1
  br i1 %i.fx, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i: ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fz = and i8 %i.fw, 31
  %i.ga = zext nneg i8 %i.fz to i32               ; 3 uses
  %i.gb = add nuw nsw i64 %.sroa.04.0154.i, 1
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.fy, align 1, !noalias !146, !noundef !6
  %i.ge = shl nuw nsw i32 %i.ga, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32               ; 2 uses
  %i.gh = or disjoint i32 %i.ge, %i.gg
  %i.gi = icmp samesign ugt i8 %i.fw, -33
  br i1 %i.gi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i, label %bb.ap

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.gk = add nuw nsw i64 %.sroa.04.0154.i, 2
  %i.gl = icmp samesign ne i64 %i.gk, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gl)
  %i.gm = load i8, ptr %i.gj, align 1, !noalias !146, !noundef !6
  %i.gn = shl nuw nsw i32 %i.gg, 6
  %i.go = and i8 %i.gm, 63
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = or disjoint i32 %i.gn, %i.gp            ; 2 uses
  %i.gr = shl nuw nsw i32 %i.ga, 12
  %i.gs = or disjoint i32 %i.gq, %i.gr
  %i.gt = icmp samesign ugt i8 %i.fw, -17
  br i1 %i.gt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i, label %bb.ap

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.gv = add nuw nsw i64 %.sroa.04.0154.i, 3
  %i.gw = icmp samesign ne i64 %i.gv, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.gw)
  %i.gx = load i8, ptr %i.gu, align 1, !noalias !146, !noundef !6
  %i.gy = shl nuw nsw i32 %i.ga, 18
  %i.gz = and i32 %i.gy, 1835008
  %i.ha = shl nuw nsw i32 %i.gq, 6
  %i.hb = and i8 %i.gx, 63
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.ha, %i.hc
  %i.he = or disjoint i32 %i.hd, %i.gz
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.peel.i ], [ %i.he, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.peel.i ], [ %i.gh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.peel.i ] ; 4 uses
  %i.hf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.hg, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.hh, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.hi, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.ar, %bb.aq, %bb.ap
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.aq ], [ %..i.i.peel.i, %bb.ar ], [ 1, %bb.ap ], [ 1, %bb.ao ]
  %i.hj = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.04.0154.i ; 15 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.hj, %.sroa.1351.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.at, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.as
  %i.hl = icmp eq i64 %i.hj, %.sroa.1351.0.copyload.i
  br i1 %i.hl, label %bb.au, label %.loopexit205.i

bb.at:                                            ; preds = %bb.as
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hj
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !144, !noalias !145, !noundef !6
  %i.ho = icmp sgt i8 %i.hn, -65
  br i1 %i.ho, label %bb.au, label %.loopexit205.i

bb.au:                                            ; preds = %bb.at, %.split.i.i.i.i, %.thread
  %i.hp = icmp samesign eq i64 %i.hj, %.sroa.1351.0.copyload.i
  br i1 %i.hp, label %.loopexit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i, i64 %i.hj
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !146, !noundef !6 ; 3 uses
  %i.hs = icmp sgt i8 %i.hr, -1
  br i1 %i.hs, label %.loopexit.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i: ; preds = %bb.av
  %i.ht = add nuw nsw i64 %i.hj, 1
  %i.hu = icmp samesign ne i64 %i.ht, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp samesign ugt i8 %i.hr, -33
  br i1 %i.hv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit12.i.i.i.i
  %i.hw = add nuw nsw i64 %i.hj, 2
  %i.hx = icmp samesign ne i64 %i.hw, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ugt i8 %i.hr, -17
  br i1 %i.hy, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit14.i.i.i.i
  %i.hz = add nuw nsw i64 %i.hj, 3
  %i.ia = icmp samesign ne i64 %i.hz, %.sroa.1351.0.copyload.i
  call void @llvm.assume(i1 %i.ia)
  br label %.loopexit.i.i

.loopexit205.i:                                   ; preds = %bb.at, %.split.i.i.i.i, %bb.am, %.split.i.i.i.peel.i, %bb.ag, %.split.i.i.i.i.peel, %bb.w, %.split.i.i.i.peel.i.peel
  %.sroa.47.1.lcssa.i = phi i64 [ %.sroa.442.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.442.0.copyload.i, %bb.w ], [ %i.eo, %.split.i.i.i.i.peel ], [ %i.eo, %bb.ag ], [ %i.hj, %bb.at ], [ %i.hj, %.split.i.i.i.i ], [ %.sroa.04.0154.i, %.split.i.i.i.peel.i ], [ %.sroa.04.0154.i, %bb.am ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.1250.0.copyload.i, i64 noundef %.sroa.1351.0.copyload.i, i64 noundef %.sroa.47.1.lcssa.i, i64 noundef %.sroa.1351.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22
          to label %.noexc.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !145

.noexc.i:                                         ; preds = %.loopexit205.i
  unreachable

.split139.us.i:                                   ; preds = %.lr.ph187
  %i.ib = add i64 %i.bd, %.sroa.442.0.copyload.i
  %umax.i51.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.ib)
  br label %.split139.us.invoke.i

.split139.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.i, %.lr.ph183, %.lr.ph190, %.split.us.i, %.split139.us.i
  %i.ic = phi i64 [ %umax.i51.i, %.split139.us.i ], [ %umax.i.i, %.split.us.i ], [ %i.bn, %.lr.ph190 ], [ %i.aq, %.lr.ph183 ], [ %i.as, %bb.i ], [ %i.s, %.preheader.us.i.preheader.split ]
  %i.id = phi i64 [ %.sroa.1351.0.copyload.i, %.split139.us.i ], [ %.sroa.1351.0.copyload.i, %.split.us.i ], [ %.sroa.1351.0.copyload.i, %.lr.ph190 ], [ %.sroa.15.0.copyload.i, %.lr.ph183 ], [ %.sroa.1351.0.copyload.i, %bb.i ], [ %.sroa.15.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.ie = phi ptr [ @3, %.split139.us.i ], [ @3, %.split.us.i ], [ @2, %.lr.ph190 ], [ @1, %.lr.ph183 ], [ @2, %bb.i ], [ @1, %.preheader.us.i.preheader.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ic, i64 noundef range(i64 0, -9223372036854775808) %i.id, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ie) #22
          to label %.split139.us.cont.i unwind label %.loopexit77.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !147

.split139.us.cont.i:                              ; preds = %.split139.us.invoke.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.if = add i64 %i.y, %.sroa.0.0.i.i.us.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i, i64 %i.if)
  br label %.split139.us.invoke.i
end_hunk_0
