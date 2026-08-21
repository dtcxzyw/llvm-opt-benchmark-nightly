inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_unpack_array_xtc2:bb.a
  %.pre-phi427 = phi i32 [ %.pre426, %bb.bd ], [ %i.lk, %readbits.exit177 ] ; 3 uses
  %i.lq = phi ptr [ %i.lo, %bb.bd ], [ %i.lg, %readbits.exit177 ] ; 3 uses
  %i.lr = phi i32 [ 0, %bb.bd ], [ %i.lm, %readbits.exit177 ]
  %.117.i183 = phi i32 [ 128, %bb.bd ], [ %i.ln, %readbits.exit177 ] ; 3 uses
  %i.ls = select i1 %.not552.a, i32 0, i32 2
  %i.lt = and i32 %.117.i183, %.pre-phi427
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = zext i1 %i.lu to i32
  %i.lw = or disjoint i32 %i.ls, %i.lv
  %i.lx = lshr i32 %.117.i183, 1                  ; 2 uses
  %.not21.i182.1 = icmp eq i32 %i.lx, 0
  br i1 %.not21.i182.1, label %.thread614, label %bb.bf

.thread614:                                       ; preds = %bb.be
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.ly, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !52  ; 2 uses
  %.pre428 = zext i8 %i.lz to i32
  %.not553617 = icmp sgt i8 %i.lz, -1
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ma = and i32 %i.lx, %.pre-phi427
  %.not553.a = icmp eq i32 %i.ma, 0               ; 2 uses
  %i.mb = add nuw nsw i32 %i.lr, 2
  %i.mc = lshr i32 %.117.i183, 2                  ; 2 uses
  %.not21.i182.2 = icmp eq i32 %i.mc, 0
  br i1 %.not21.i182.2, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.md, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.me = load i8, ptr %i.md, align 1, !tbaa !52
  %.pre430 = zext i8 %i.me to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.thread614, %bb.bg, %bb.bf
  %.not553619 = phi i1 [ %.not553.a, %bb.bg ], [ %.not553.a, %bb.bf ], [ %.not553617, %.thread614 ]
  %.pre-phi431 = phi i32 [ %.pre430, %bb.bg ], [ %.pre-phi427, %bb.bf ], [ %.pre428, %.thread614 ] ; 3 uses
  %i.mf = phi ptr [ %i.md, %bb.bg ], [ %i.lq, %bb.bf ], [ %i.ly, %.thread614 ] ; 3 uses
  %i.mg = phi i32 [ 0, %bb.bg ], [ %i.mb, %bb.bf ], [ 1, %.thread614 ]
  %.117.i183.2 = phi i32 [ 128, %bb.bg ], [ %i.mc, %bb.bf ], [ 64, %.thread614 ] ; 3 uses
  %i.mh = shl nuw nsw i32 %i.lw, 2
  %i.mi = select i1 %.not553619, i32 0, i32 2
  %i.mj = or disjoint i32 %i.mh, %i.mi
  %i.mk = and i32 %.117.i183.2, %.pre-phi431
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = or disjoint i32 %i.mj, %i.mm
  %i.mo = lshr i32 %.117.i183.2, 1                ; 2 uses
  %.not21.i182.3 = icmp eq i32 %i.mo, 0
  br i1 %.not21.i182.3, label %.thread620, label %bb.bi

.thread620:                                       ; preds = %bb.bh
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !52  ; 2 uses
  %.pre432 = zext i8 %i.mq to i32
  %.not554623 = icmp sgt i8 %i.mq, -1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.mr = and i32 %i.mo, %.pre-phi431
  %.not554.a = icmp eq i32 %i.mr, 0               ; 2 uses
  %i.ms = add nuw nsw i32 %i.mg, 2
  %i.mt = lshr i32 %.117.i183.2, 2                ; 2 uses
  %.not21.i182.4 = icmp eq i32 %i.mt, 0
  br i1 %.not21.i182.4, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mu, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !52
  %.pre434 = zext i8 %i.mv to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.thread620, %bb.bj, %bb.bi
  %.not554625 = phi i1 [ %.not554.a, %bb.bj ], [ %.not554.a, %bb.bi ], [ %.not554623, %.thread620 ]
  %.pre-phi435 = phi i32 [ %.pre434, %bb.bj ], [ %.pre-phi431, %bb.bi ], [ %.pre432, %.thread620 ] ; 3 uses
  %i.mw = phi ptr [ %i.mu, %bb.bj ], [ %i.mf, %bb.bi ], [ %i.mp, %.thread620 ] ; 3 uses
  %i.mx = phi i32 [ 0, %bb.bj ], [ %i.ms, %bb.bi ], [ 1, %.thread620 ]
  %.117.i183.4 = phi i32 [ 128, %bb.bj ], [ %i.mt, %bb.bi ], [ 64, %.thread620 ] ; 3 uses
  %i.my = shl nuw nsw i32 %i.mn, 2
  %i.mz = select i1 %.not554625, i32 0, i32 2
  %i.na = or disjoint i32 %i.my, %i.mz
  %i.nb = and i32 %.117.i183.4, %.pre-phi435
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = zext i1 %i.nc to i32
  %i.ne = or disjoint i32 %i.na, %i.nd
  %i.nf = lshr i32 %.117.i183.4, 1                ; 2 uses
  %.not21.i182.5 = icmp eq i32 %i.nf, 0
  br i1 %.not21.i182.5, label %.thread626, label %bb.bl

.thread626:                                       ; preds = %bb.bk
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.ng, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !52  ; 2 uses
  %.pre436 = zext i8 %i.nh to i32
  %.not555629 = icmp sgt i8 %i.nh, -1
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ni = and i32 %i.nf, %.pre-phi435
  %.not555.a = icmp eq i32 %i.ni, 0               ; 2 uses
  %i.nj = add nuw nsw i32 %i.mx, 2
  %i.nk = lshr i32 %.117.i183.4, 2                ; 2 uses
  %.not21.i182.6 = icmp eq i32 %i.nk, 0
  br i1 %.not21.i182.6, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.nl, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !52
  %.pre438 = zext i8 %i.nm to i32
  br label %bb.bn

bb.bn:                                            ; preds = %.thread626, %bb.bm, %bb.bl
  %.not555631 = phi i1 [ %.not555.a, %bb.bm ], [ %.not555.a, %bb.bl ], [ %.not555629, %.thread626 ]
  %.pre-phi439 = phi i32 [ %.pre438, %bb.bm ], [ %.pre-phi435, %bb.bl ], [ %.pre436, %.thread626 ]
  %i.nn = phi ptr [ %i.nl, %bb.bm ], [ %i.mw, %bb.bl ], [ %i.ng, %.thread626 ]
  %i.no = phi i32 [ 0, %bb.bm ], [ %i.nj, %bb.bl ], [ 1, %.thread626 ]
  %.117.i183.6 = phi i32 [ 128, %bb.bm ], [ %i.nk, %bb.bl ], [ 64, %.thread626 ] ; 2 uses
  %i.np = shl nuw nsw i32 %i.ne, 2
  %i.nq = select i1 %.not555631, i32 0, i32 2
  %i.nr = or disjoint i32 %i.np, %i.nq
  %i.ns = and i32 %.117.i183.6, %.pre-phi439
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = zext i1 %i.nt to i32
  %i.nv = or disjoint i32 %i.nr, %i.nu
  %i.nw = add nuw nsw i32 %i.no, 1
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !8
  %.not21.i182.7 = icmp samesign ult i32 %.117.i183.6, 2
  br i1 %.not21.i182.7, label %bb.bo, label %readbits.exit187

bb.bo:                                            ; preds = %bb.bn
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store ptr %i.nx, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit187

readbits.exit187:                                 ; preds = %bb.bn, %bb.bo
  %i.ny = call fastcc i32 @compute_magic_bits(ptr noundef %i.i) ; 4 uses
  %.off346 = add i32 %3, 2
  %.not323 = icmp ult i32 %.off346, 5
  br i1 %.not323, label %._crit_edge345, label %.lr.ph344

.lr.ph344:                                        ; preds = %readbits.exit187
  %i.nz = icmp samesign ugt i32 %i.ny, 7
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.of = zext nneg i32 %i.lc to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.of
  %i.oh = zext nneg i32 %i.ij to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.oh
  %i.oj = zext nneg i32 %i.fr to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.oj
  %i.ol = zext nneg i32 %i.lc to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.ol
  %i.on = zext nneg i32 %i.ij to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.on
  %i.op = zext nneg i32 %i.fr to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ou = insertelement <2 x i32> poison, i32 %spec.select.i136, i64 0
  %i.ov = insertelement <2 x i32> %i.ou, i32 %spec.select.i147, i64 1
  %i.ow = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.ox = insertelement <2 x i32> %i.ow, i32 %spec.select.i136, i64 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph344, %bb.dy
  %.0101341 = phi ptr [ %2, %.lr.ph344 ], [ %.5, %bb.dy ] ; 10 uses
  %.0109340 = phi i32 [ 0, %.lr.ph344 ], [ %.2111, %bb.dy ] ; 11 uses
  %.0112337 = phi i32 [ 0, %.lr.ph344 ], [ %.1113, %bb.dy ] ; 7 uses
  %.0114336 = phi i32 [ %i.m, %.lr.ph344 ], [ %.3117, %bb.dy ] ; 7 uses
  %.sroa.071.0333 = phi i32 [ %spec.select.i, %.lr.ph344 ], [ %.sroa.071.5, %bb.dy ] ; 5 uses
  %.0118324 = phi i32 [ %i.nv, %.lr.ph344 ], [ %.1119, %bb.dy ] ; 10 uses
  %i.oy = phi <2 x i32> [ %i.ov, %.lr.ph344 ], [ %i.adr, %bb.dy ] ; 5 uses
  %i.oz = load ptr, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !52
  %i.pb = load i32, ptr %i.h, align 4, !tbaa !8   ; 3 uses
  %i.pc = lshr i32 128, %i.pb
  %i.pd = zext i8 %i.pa to i32
  %i.pe = and i32 %i.pc, %i.pd
  %.not54.i.not = icmp eq i32 %i.pe, 0            ; 2 uses
  %i.pf = add nsw i32 %i.pb, 1                    ; 2 uses
  store i32 %i.pf, ptr %i.h, align 4, !tbaa !8
  %.not21.i.i = icmp ugt i32 %i.pb, 6
  br i1 %.not21.i.i, label %bb.bq, label %readbits.exit.i

bb.bq:                                            ; preds = %bb.bp
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 1 ; 2 uses
  store ptr %i.pg, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit.i

readbits.exit.i:                                  ; preds = %bb.bq, %bb.bp
  %i.ph = phi i32 [ 0, %bb.bq ], [ %i.pf, %bb.bp ] ; 3 uses
  %i.pi = phi ptr [ %i.pg, %bb.bq ], [ %i.oz, %bb.bp ] ; 3 uses
  br i1 %.not54.i.not, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %readbits.exit.i
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !52
  %i.pk = lshr i32 128, %i.ph
  %i.pl = zext i8 %i.pj to i32
  %i.pm = and i32 %i.pk, %i.pl
  %.not.i188 = icmp eq i32 %i.pm, 0
  %i.pn = add nuw nsw i32 %i.ph, 1                ; 2 uses
  store i32 %i.pn, ptr %i.h, align 4, !tbaa !8
  %.not21.i21.i = icmp samesign ugt i32 %i.ph, 6
  br i1 %.not21.i21.i, label %bb.bs, label %readbits.exit26.i

bb.bs:                                            ; preds = %bb.br
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 2 uses
  store ptr %i.po, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit26.i

readbits.exit26.i:                                ; preds = %bb.bs, %bb.br
  %i.pp = phi i32 [ 0, %bb.bs ], [ %i.pn, %bb.br ] ; 4 uses
  %i.pq = phi ptr [ %i.po, %bb.bs ], [ %i.pi, %bb.br ] ; 5 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !52
  %i.ps = lshr i32 128, %i.pp
  %i.pt = zext i8 %i.pr to i32                    ; 3 uses
  %i.pu = and i32 %i.ps, %i.pt
  %.not559 = icmp eq i32 %i.pu, 0                 ; 2 uses
  %i.pv = add nuw nsw i32 %i.pp, 1                ; 2 uses
  %i.pw = lshr i32 64, %i.pp                      ; 2 uses
  %.not21.i239 = icmp samesign ugt i32 %i.pp, 6   ; 2 uses
  br i1 %.not.i188, label %bb.dl, label %bb.bt

bb.bt:                                            ; preds = %readbits.exit26.i
  br i1 %.not21.i239, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 1 ; 3 uses
  store ptr %i.px, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.py = load i8, ptr %i.px, align 1, !tbaa !52
  %.pre.i = zext i8 %i.py to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.bu ], [ %i.pt, %bb.bt ]
  %i.pz = phi ptr [ %i.px, %bb.bu ], [ %i.pq, %bb.bt ] ; 2 uses
  %i.qa = phi i32 [ 0, %bb.bu ], [ %i.pv, %bb.bt ]
  %.117.i32.i = phi i32 [ 128, %bb.bu ], [ %i.pw, %bb.bt ] ; 2 uses
  %i.qb = select i1 %.not559, i32 0, i32 2
  %i.qc = and i32 %.117.i32.i, %.pre-phi.i
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %i.qf = or disjoint i32 %i.qb, %i.qe
  %i.qg = add nuw nsw i32 %i.qa, 1                ; 2 uses
  store i32 %i.qg, ptr %i.h, align 4, !tbaa !8
  %.not21.i31.1.i = icmp samesign ult i32 %.117.i32.i, 2
  br i1 %.not21.i31.1.i, label %bb.bw, label %readbits.exit36.i

bb.bw:                                            ; preds = %bb.bv
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 1 ; 2 uses
  store ptr %i.qh, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit36.i

readbits.exit36.i:                                ; preds = %bb.bw, %bb.bv
  %i.qi = phi i32 [ 0, %bb.bw ], [ %i.qg, %bb.bv ] ; 8 uses
  %i.qj = phi ptr [ %i.qh, %bb.bw ], [ %i.pz, %bb.bv ] ; 6 uses
  switch i32 %i.qf, label %default.unreachable [
    i32 0, label %.lr.ph.i
    i32 1, label %.thread275
    i32 2, label %bb.dv
    i32 3, label %bb.bx
  ]

bb.bx:                                            ; preds = %readbits.exit36.i
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !52
  %i.ql = lshr i32 128, %i.qi
  %i.qm = zext i8 %i.qk to i32
  %i.qn = and i32 %i.ql, %i.qm
  %.not56.i.a = icmp eq i32 %i.qn, 0
  %i.qo = add nuw nsw i32 %i.qi, 1                ; 2 uses
  store i32 %i.qo, ptr %i.h, align 4, !tbaa !8
  %.not21.i41.i = icmp samesign ugt i32 %i.qi, 6
  br i1 %.not21.i41.i, label %bb.by, label %readbits.exit46.i

bb.by:                                            ; preds = %bb.bx
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 2 uses
  store ptr %i.qp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit46.i

readbits.exit46.i:                                ; preds = %bb.by, %bb.bx
  %i.qq = phi i32 [ 0, %bb.by ], [ %i.qo, %bb.bx ] ; 4 uses
  %i.qr = phi ptr [ %i.qp, %bb.by ], [ %i.qj, %bb.bx ] ; 3 uses
  br i1 %.not56.i.a, label %bb.du, label %bb.co

default.unreachable:                              ; preds = %readbits.exit36.i
  unreachable

.lr.ph.i:                                         ; preds = %readbits.exit.i, %readbits.exit36.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.ny, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.ob, align 8, !tbaa !8
  %i.qs = load i32, ptr %i.om, align 4, !tbaa !8
  %i.qt = call i32 @Ptngc_largeint_div(i32 noundef %i.qs, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.qt, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !8
  %i.qu = load i32, ptr %i.oo, align 4, !tbaa !8
  %i.qv = call i32 @Ptngc_largeint_div(i32 noundef %i.qu, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.e, ptr noundef nonnull align 16 dereferenceable(76) %i.f, i64 76, i1 false)
  store i32 %i.qv, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.qw = load i32, ptr %i.oq, align 4, !tbaa !8
  %i.qx = call i32 @Ptngc_largeint_div(i32 noundef %i.qw, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 19) #11 ; 3 uses
  store i32 %i.qx, ptr %i.k, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.qy = insertelement <2 x i32> poison, i32 %i.qv, i64 0
  %i.qz = insertelement <2 x i32> %i.qy, i32 %i.qt, i64 1 ; 2 uses
  br i1 %.not54.i.not, label %.loopexit.thread, label %.thread275

.thread275:                                       ; preds = %readbits.exit36.i, %.lr.ph.i
  %.sroa.0.0 = phi i32 [ %i.qx, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %i.qv, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %i.qt, %.lr.ph.i ], [ 0, %readbits.exit36.i ] ; 2 uses
  %i.ra = phi i1 [ true, %.lr.ph.i ], [ false, %readbits.exit36.i ]
  %.not124274279 = phi i1 [ false, %.lr.ph.i ], [ true, %readbits.exit36.i ] ; 2 uses
  %i.rb = phi <2 x i32> [ %i.qz, %.lr.ph.i ], [ zeroinitializer, %readbits.exit36.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 %.0118324, ptr %i.l, align 4, !tbaa !8
  store i32 %.0118324, ptr %i.oc, align 4, !tbaa !8
  store i32 %.0118324, ptr %i.od, align 4, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  %i.rc = sext i32 %.0118324 to i64
  %i.rd = getelementptr inbounds [32 x i8], ptr @magic_bits, i64 %i.rc
  %i.re = zext nneg i32 %.0109340 to i64
  %i.rf = getelementptr [4 x i8], ptr %i.rd, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !8
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.rh, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oe, align 8, !tbaa !8
  %.not.i192 = icmp eq i32 %.0109340, 0
  br i1 %.not.i192, label %.loopexit681, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread275
  %i.ri = mul nuw nsw i32 %.0109340, 3
  %i.rj = zext nneg i32 %i.ri to i64
  br label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %.lr.ph.i193, %.lr.ph.preheader.i
  %indvars.iv26.i194 = phi i64 [ %i.rj, %.lr.ph.preheader.i ], [ %indvars.iv.next27.i195, %.lr.ph.i193 ] ; 2 uses
  %indvars.iv.next27.i195 = add nsw i64 %indvars.iv26.i194, -1 ; 3 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv.next27.i195 to i32
  %i.rl = urem i32 %i.rk, 3
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !8
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !8
  %i.rs = call i32 @Ptngc_largeint_div(i32 noundef %i.rr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next27.i195
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !8
  %i.ru = icmp samesign ugt i64 %indvars.iv26.i194, 1
  br i1 %i.ru, label %.lr.ph.i193, label %.loopexit681, !llvm.loop !54

.loopexit681:                                     ; preds = %.lr.ph.i193, %.thread275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.rv = icmp ne i32 %.0112337, 0
  %or.cond5 = select i1 %i.ra, i1 %i.rv, i1 false
  br i1 %or.cond5, label %.preheader286.preheader, label %.loopexit

.preheader286.preheader:                          ; preds = %.loopexit681
  %i.rw = load i32, ptr %i.k, align 16, !tbaa !8  ; 3 uses
  %i.rx = add nsw i32 %i.rw, 1
  %i.ry = sdiv i32 %i.rx, 2                       ; 2 uses
  %i.rz = and i32 %i.rw, 1
  %i.sa = icmp eq i32 %i.rz, 0
  %i.sb = sub nsw i32 0, %i.ry
  %spec.select.i197 = select i1 %i.sa, i32 %i.sb, i32 %i.ry ; 5 uses
  %i.sc = load i32, ptr %i.or, align 4, !tbaa !8  ; 2 uses
  %i.sd = add nsw i32 %i.sc, 1
  %i.se = sdiv i32 %i.sd, 2                       ; 2 uses
  %i.sf = and i32 %i.sc, 1
  %i.sg = icmp eq i32 %i.sf, 0
  %i.sh = sub nsw i32 0, %i.se
  %spec.select.i198 = select i1 %i.sg, i32 %i.sh, i32 %i.se
  %i.si = add nsw i32 %spec.select.i197, %.sroa.0.0
  %i.sj = add nsw i32 %spec.select.i198, %spec.select.i197 ; 4 uses
  %i.sk = icmp slt i32 %spec.select.i197, 0
  br i1 %i.sk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.preheader286.preheader
  %i.sl = shl nsw i32 %spec.select.i197, 1
  %i.sm = xor i32 %i.sl, -1
  br label %positive_int.exit

bb.ca:                                            ; preds = %.preheader286.preheader
  %.off = add i32 %i.rw, 2
  %.not283 = icmp ult i32 %.off, 3
  %i.sn = shl nuw nsw i32 %spec.select.i197, 1
  %spec.select284 = select i1 %.not283, i32 0, i32 %i.sn
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.ca, %bb.bz
  %.0.i199 = phi i32 [ %i.sm, %bb.bz ], [ %spec.select284, %bb.ca ]
  store i32 %.0.i199, ptr %i.k, align 16, !tbaa !8
  %i.so = icmp sgt i32 %i.sj, 0
  br i1 %i.so, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %positive_int.exit
  %i.sp = shl nuw i32 %i.sj, 1
  %i.sq = add i32 %i.sp, -1
  br label %positive_int.exit201

bb.cc:                                            ; preds = %positive_int.exit
  %i.sr = icmp slt i32 %i.sj, 0
  br i1 %i.sr, label %bb.cd, label %positive_int.exit201

bb.cd:                                            ; preds = %bb.cc
  %i.ss = xor i32 %i.sj, -1
  %i.st = shl nuw nsw i32 %i.ss, 1
  %i.su = add nuw nsw i32 %i.st, 2
  br label %positive_int.exit201

positive_int.exit201:                             ; preds = %bb.cb, %bb.cc, %bb.cd
  %.0.i200 = phi i32 [ %i.sq, %bb.cb ], [ %i.su, %bb.cd ], [ 0, %bb.cc ]
  store i32 %.0.i200, ptr %i.or, align 4, !tbaa !8
  %i.sv = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %i.sw = add nsw i32 %i.sv, 1
  %i.sx = sdiv i32 %i.sw, 2                       ; 2 uses
  %i.sy = and i32 %i.sv, 1
  %i.sz = icmp eq i32 %i.sy, 0
  %i.ta = sub nsw i32 0, %i.sx
  %spec.select.i197.1 = select i1 %i.sz, i32 %i.ta, i32 %i.sx ; 5 uses
  %i.tb = load i32, ptr %i.os, align 16, !tbaa !8 ; 2 uses
  %i.tc = add nsw i32 %i.tb, 1
  %i.td = sdiv i32 %i.tc, 2                       ; 2 uses
  %i.te = and i32 %i.tb, 1
  %i.tf = icmp eq i32 %i.te, 0
  %i.tg = sub nsw i32 0, %i.td
  %spec.select.i198.1 = select i1 %i.tf, i32 %i.tg, i32 %i.td
  %i.th = add nsw i32 %spec.select.i197.1, %.sroa.10.0 ; 2 uses
  %i.ti = add nsw i32 %spec.select.i198.1, %spec.select.i197.1 ; 4 uses
  %i.tj = icmp slt i32 %spec.select.i197.1, 0
  br i1 %i.tj, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %positive_int.exit201
  %.off.1 = add i32 %i.sv, 2
  %.not283.1 = icmp ult i32 %.off.1, 3
  %i.tk = shl nuw nsw i32 %spec.select.i197.1, 1
  %spec.select284.1 = select i1 %.not283.1, i32 0, i32 %i.tk
  br label %positive_int.exit.1

bb.cf:                                            ; preds = %positive_int.exit201
  %i.tl = shl nsw i32 %spec.select.i197.1, 1
  %i.tm = xor i32 %i.tl, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.cf, %bb.ce
  %.0.i199.1 = phi i32 [ %i.tm, %bb.cf ], [ %spec.select284.1, %bb.ce ]
  store i32 %.0.i199.1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.tn = icmp sgt i32 %i.ti, 0
  br i1 %i.tn, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %positive_int.exit.1
  %i.to = icmp slt i32 %i.ti, 0
  br i1 %i.to, label %bb.ch, label %positive_int.exit201.1

bb.ch:                                            ; preds = %bb.cg
  %i.tp = xor i32 %i.ti, -1
  %i.tq = shl nuw nsw i32 %i.tp, 1
  %i.tr = add nuw nsw i32 %i.tq, 2
  br label %positive_int.exit201.1

bb.ci:                                            ; preds = %positive_int.exit.1
end_hunk_0
