Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_unpack_array_xtc2:bb.a
  %.pre-phi436 = phi i32 [ %.pre435, %bb.ac ], [ %i.lk, %readbits.exit182 ] ; 3 uses
  %i.lq = phi ptr [ %i.lo, %bb.ac ], [ %i.lg, %readbits.exit182 ] ; 3 uses
  %i.lr = phi i32 [ 0, %bb.ac ], [ %i.lm, %readbits.exit182 ]
  %.117.i189 = phi i32 [ 128, %bb.ac ], [ %i.ln, %readbits.exit182 ] ; 3 uses
  %i.ls = select i1 %.not561.a, i32 0, i32 2
  %i.lt = and i32 %.117.i189, %.pre-phi436
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = zext i1 %i.lu to i32
  %i.lw = or disjoint i32 %i.ls, %i.lv
  %i.lx = lshr i32 %.117.i189, 1                  ; 2 uses
  %.not21.i188.1 = icmp eq i32 %i.lx, 0
  br i1 %.not21.i188.1, label %.lr.ph.i183.2.thread, label %.lr.ph.i183.2

.lr.ph.i183.2.thread:                             ; preds = %.lr.ph.i183.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.ly, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !52  ; 2 uses
  %.pre437 = zext i8 %i.lz to i32
  %.not562617 = icmp sgt i8 %i.lz, -1
  br label %.lr.ph.i183.3

.lr.ph.i183.2:                                    ; preds = %.lr.ph.i183.1
  %i.ma = and i32 %i.lx, %.pre-phi436
  %.not562.a = icmp eq i32 %i.ma, 0               ; 2 uses
  %i.mb = add nuw nsw i32 %i.lr, 2
  %i.mc = lshr i32 %.117.i189, 2                  ; 2 uses
  %.not21.i188.2 = icmp eq i32 %i.mc, 0
  br i1 %.not21.i188.2, label %bb.ad, label %.lr.ph.i183.3

bb.ad:                                            ; preds = %.lr.ph.i183.2
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 1 ; 3 uses
  store ptr %i.md, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.me = load i8, ptr %i.md, align 1, !tbaa !52
  %.pre439 = zext i8 %i.me to i32
  br label %.lr.ph.i183.3

.lr.ph.i183.3:                                    ; preds = %.lr.ph.i183.2.thread, %bb.ad, %.lr.ph.i183.2
  %.not562619 = phi i1 [ %.not562.a, %bb.ad ], [ %.not562.a, %.lr.ph.i183.2 ], [ %.not562617, %.lr.ph.i183.2.thread ]
  %.pre-phi440 = phi i32 [ %.pre439, %bb.ad ], [ %.pre-phi436, %.lr.ph.i183.2 ], [ %.pre437, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mf = phi ptr [ %i.md, %bb.ad ], [ %i.lq, %.lr.ph.i183.2 ], [ %i.ly, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mg = phi i32 [ 0, %bb.ad ], [ %i.mb, %.lr.ph.i183.2 ], [ 1, %.lr.ph.i183.2.thread ]
  %.117.i189.2 = phi i32 [ 128, %bb.ad ], [ %i.mc, %.lr.ph.i183.2 ], [ 64, %.lr.ph.i183.2.thread ] ; 3 uses
  %i.mh = shl nuw nsw i32 %i.lw, 2
  %i.mi = select i1 %.not562619, i32 0, i32 2
  %i.mj = or disjoint i32 %i.mh, %i.mi
  %i.mk = and i32 %.117.i189.2, %.pre-phi440
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = or disjoint i32 %i.mj, %i.mm
  %i.mo = lshr i32 %.117.i189.2, 1                ; 2 uses
  %.not21.i188.3 = icmp eq i32 %i.mo, 0
  br i1 %.not21.i188.3, label %.lr.ph.i183.4.thread, label %.lr.ph.i183.4

.lr.ph.i183.4.thread:                             ; preds = %.lr.ph.i183.3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !52  ; 2 uses
  %.pre441 = zext i8 %i.mq to i32
  %.not563622 = icmp sgt i8 %i.mq, -1
  br label %.lr.ph.i183.5

.lr.ph.i183.4:                                    ; preds = %.lr.ph.i183.3
  %i.mr = and i32 %i.mo, %.pre-phi440
  %.not563.a = icmp eq i32 %i.mr, 0               ; 2 uses
  %i.ms = add nuw nsw i32 %i.mg, 2
  %i.mt = lshr i32 %.117.i189.2, 2                ; 2 uses
  %.not21.i188.4 = icmp eq i32 %i.mt, 0
  br i1 %.not21.i188.4, label %bb.ae, label %.lr.ph.i183.5

bb.ae:                                            ; preds = %.lr.ph.i183.4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 3 uses
  store ptr %i.mu, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !52
  %.pre443 = zext i8 %i.mv to i32
  br label %.lr.ph.i183.5

.lr.ph.i183.5:                                    ; preds = %.lr.ph.i183.4.thread, %bb.ae, %.lr.ph.i183.4
  %.not563624 = phi i1 [ %.not563.a, %bb.ae ], [ %.not563.a, %.lr.ph.i183.4 ], [ %.not563622, %.lr.ph.i183.4.thread ]
  %.pre-phi444 = phi i32 [ %.pre443, %bb.ae ], [ %.pre-phi440, %.lr.ph.i183.4 ], [ %.pre441, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.mw = phi ptr [ %i.mu, %bb.ae ], [ %i.mf, %.lr.ph.i183.4 ], [ %i.mp, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.mx = phi i32 [ 0, %bb.ae ], [ %i.ms, %.lr.ph.i183.4 ], [ 1, %.lr.ph.i183.4.thread ]
  %.117.i189.4 = phi i32 [ 128, %bb.ae ], [ %i.mt, %.lr.ph.i183.4 ], [ 64, %.lr.ph.i183.4.thread ] ; 3 uses
  %i.my = shl nuw nsw i32 %i.mn, 2
  %i.mz = select i1 %.not563624, i32 0, i32 2
  %i.na = or disjoint i32 %i.my, %i.mz
  %i.nb = and i32 %.117.i189.4, %.pre-phi444
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = zext i1 %i.nc to i32
  %i.ne = or disjoint i32 %i.na, %i.nd
  %i.nf = lshr i32 %.117.i189.4, 1                ; 2 uses
  %.not21.i188.5 = icmp eq i32 %i.nf, 0
  br i1 %.not21.i188.5, label %.lr.ph.i183.6.thread, label %.lr.ph.i183.6

.lr.ph.i183.6.thread:                             ; preds = %.lr.ph.i183.5
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.ng, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !52  ; 2 uses
  %.pre445 = zext i8 %i.nh to i32
  %.not564627 = icmp sgt i8 %i.nh, -1
  br label %.lr.ph.i183.7

.lr.ph.i183.6:                                    ; preds = %.lr.ph.i183.5
  %i.ni = and i32 %i.nf, %.pre-phi444
  %.not564.a = icmp eq i32 %i.ni, 0               ; 2 uses
  %i.nj = add nuw nsw i32 %i.mx, 2
  %i.nk = lshr i32 %.117.i189.4, 2                ; 2 uses
  %.not21.i188.6 = icmp eq i32 %i.nk, 0
  br i1 %.not21.i188.6, label %bb.af, label %.lr.ph.i183.7

bb.af:                                            ; preds = %.lr.ph.i183.6
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  store ptr %i.nl, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !52
  %.pre447 = zext i8 %i.nm to i32
  br label %.lr.ph.i183.7

.lr.ph.i183.7:                                    ; preds = %.lr.ph.i183.6.thread, %bb.af, %.lr.ph.i183.6
  %.not564629 = phi i1 [ %.not564.a, %bb.af ], [ %.not564.a, %.lr.ph.i183.6 ], [ %.not564627, %.lr.ph.i183.6.thread ]
  %.pre-phi448 = phi i32 [ %.pre447, %bb.af ], [ %.pre-phi444, %.lr.ph.i183.6 ], [ %.pre445, %.lr.ph.i183.6.thread ]
  %i.nn = phi ptr [ %i.nl, %bb.af ], [ %i.mw, %.lr.ph.i183.6 ], [ %i.ng, %.lr.ph.i183.6.thread ]
  %i.no = phi i32 [ 0, %bb.af ], [ %i.nj, %.lr.ph.i183.6 ], [ 1, %.lr.ph.i183.6.thread ]
  %.117.i189.6 = phi i32 [ 128, %bb.af ], [ %i.nk, %.lr.ph.i183.6 ], [ 64, %.lr.ph.i183.6.thread ] ; 2 uses
  %i.np = shl nuw nsw i32 %i.ne, 2
  %i.nq = select i1 %.not564629, i32 0, i32 2
  %i.nr = or disjoint i32 %i.np, %i.nq
  %i.ns = and i32 %.117.i189.6, %.pre-phi448
  %i.nt = icmp ne i32 %i.ns, 0
  %i.nu = zext i1 %i.nt to i32
  %i.nv = or disjoint i32 %i.nr, %i.nu
  %i.nw = add nuw nsw i32 %i.no, 1
  store i32 %i.nw, ptr %i.h, align 4, !tbaa !8
  %.not21.i188.7 = icmp samesign ult i32 %.117.i189.6, 2
  br i1 %.not21.i188.7, label %bb.ag, label %readbits.exit193

bb.ag:                                            ; preds = %.lr.ph.i183.7
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store ptr %i.nx, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit193

readbits.exit193:                                 ; preds = %.lr.ph.i183.7, %bb.ag
  %i.ny = call fastcc i32 @compute_magic_bits(ptr noundef %i.i) ; 4 uses
  %.off355 = add i32 %3, 2
  %.not332 = icmp ult i32 %.off355, 5
  br i1 %.not332, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %readbits.exit193
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
  %i.ou = insertelement <2 x i32> poison, i32 %spec.select.i137, i64 0
  %i.ov = insertelement <2 x i32> %i.ou, i32 %spec.select.i149, i64 1
  %i.ow = insertelement <2 x i32> poison, i32 %spec.select.i, i64 0
  %i.ox = insertelement <2 x i32> %i.ow, i32 %spec.select.i137, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph353, %bb.bu
  %.0101350 = phi ptr [ %2, %.lr.ph353 ], [ %.5, %bb.bu ] ; 10 uses
  %.0109349 = phi i32 [ 0, %.lr.ph353 ], [ %.2111, %bb.bu ] ; 11 uses
  %.0112346 = phi i32 [ 0, %.lr.ph353 ], [ %.1113, %bb.bu ] ; 7 uses
  %.0114345 = phi i32 [ %i.m, %.lr.ph353 ], [ %.3117, %bb.bu ] ; 7 uses
  %.sroa.071.0342 = phi i32 [ %spec.select.i, %.lr.ph353 ], [ %.sroa.071.5, %bb.bu ] ; 5 uses
  %.0118333 = phi i32 [ %i.nv, %.lr.ph353 ], [ %.1119, %bb.bu ] ; 10 uses
  %i.oy = phi <2 x i32> [ %i.ov, %.lr.ph353 ], [ %i.adr, %bb.bu ] ; 5 uses
  %i.oz = load ptr, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !52
  %i.pb = load i32, ptr %i.h, align 4, !tbaa !8   ; 3 uses
  %i.pc = lshr i32 128, %i.pb
  %i.pd = zext i8 %i.pa to i32
  %i.pe = and i32 %i.pc, %i.pd
  %.not57.i.not = icmp eq i32 %i.pe, 0            ; 2 uses
  %i.pf = add nsw i32 %i.pb, 1                    ; 2 uses
  store i32 %i.pf, ptr %i.h, align 4, !tbaa !8
  %.not21.i.i = icmp ugt i32 %i.pb, 6
  br i1 %.not21.i.i, label %bb.ai, label %readbits.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 1 ; 2 uses
  store ptr %i.pg, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit.i

readbits.exit.i:                                  ; preds = %bb.ai, %bb.ah
  %i.ph = phi i32 [ 0, %bb.ai ], [ %i.pf, %bb.ah ] ; 3 uses
  %i.pi = phi ptr [ %i.pg, %bb.ai ], [ %i.oz, %bb.ah ] ; 3 uses
  br i1 %.not57.i.not, label %.lr.ph.i17.i, label %.lr.ph.i195

.lr.ph.i17.i:                                     ; preds = %readbits.exit.i
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !52
  %i.pk = lshr i32 128, %i.ph
  %i.pl = zext i8 %i.pj to i32
  %i.pm = and i32 %i.pk, %i.pl
  %.not.i194 = icmp eq i32 %i.pm, 0
  %i.pn = add nuw nsw i32 %i.ph, 1                ; 2 uses
  store i32 %i.pn, ptr %i.h, align 4, !tbaa !8
  %.not21.i22.i = icmp samesign ugt i32 %i.ph, 6
  br i1 %.not21.i22.i, label %bb.aj, label %readbits.exit27.i

bb.aj:                                            ; preds = %.lr.ph.i17.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 2 uses
  store ptr %i.po, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit27.i

readbits.exit27.i:                                ; preds = %bb.aj, %.lr.ph.i17.i
  %i.pp = phi i32 [ 0, %bb.aj ], [ %i.pn, %.lr.ph.i17.i ] ; 4 uses
  %i.pq = phi ptr [ %i.po, %bb.aj ], [ %i.pi, %.lr.ph.i17.i ] ; 5 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !52
  %i.ps = lshr i32 128, %i.pp
  %i.pt = zext i8 %i.pr to i32                    ; 3 uses
  %i.pu = and i32 %i.ps, %i.pt
  %.not568.a = icmp eq i32 %i.pu, 0               ; 2 uses
  %i.pv = add nuw nsw i32 %i.pp, 1                ; 2 uses
  %i.pw = lshr i32 64, %i.pp                      ; 2 uses
  %.not21.i247 = icmp samesign ugt i32 %i.pp, 6   ; 2 uses
  br i1 %.not.i194, label %.lr.ph.i242, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %readbits.exit27.i
  br i1 %.not21.i247, label %bb.ak, label %.lr.ph.i28.1.i

bb.ak:                                            ; preds = %.lr.ph.i28.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 1 ; 3 uses
  store ptr %i.px, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.py = load i8, ptr %i.px, align 1, !tbaa !52
  %.pre.i = zext i8 %i.py to i32
  br label %.lr.ph.i28.1.i

.lr.ph.i28.1.i:                                   ; preds = %bb.ak, %.lr.ph.i28.i
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.ak ], [ %i.pt, %.lr.ph.i28.i ]
  %i.pz = phi ptr [ %i.px, %bb.ak ], [ %i.pq, %.lr.ph.i28.i ] ; 2 uses
  %i.qa = phi i32 [ 0, %bb.ak ], [ %i.pv, %.lr.ph.i28.i ]
  %.117.i34.i = phi i32 [ 128, %bb.ak ], [ %i.pw, %.lr.ph.i28.i ] ; 2 uses
  %i.qb = select i1 %.not568.a, i32 0, i32 2
  %i.qc = and i32 %.117.i34.i, %.pre-phi.i
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = zext i1 %i.qd to i32
  %i.qf = or disjoint i32 %i.qb, %i.qe
  %i.qg = add nuw nsw i32 %i.qa, 1                ; 2 uses
  store i32 %i.qg, ptr %i.h, align 4, !tbaa !8
  %.not21.i33.1.i = icmp samesign ult i32 %.117.i34.i, 2
  br i1 %.not21.i33.1.i, label %bb.al, label %readbits.exit38.i

bb.al:                                            ; preds = %.lr.ph.i28.1.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 1 ; 2 uses
  store ptr %i.qh, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit38.i

readbits.exit38.i:                                ; preds = %bb.al, %.lr.ph.i28.1.i
  %i.qi = phi i32 [ 0, %bb.al ], [ %i.qg, %.lr.ph.i28.1.i ] ; 8 uses
  %i.qj = phi ptr [ %i.qh, %bb.al ], [ %i.pz, %.lr.ph.i28.1.i ] ; 6 uses
  switch i32 %i.qf, label %default.unreachable [
    i32 0, label %.lr.ph.i195
    i32 1, label %.thread284
    i32 2, label %.lr.ph.i255
    i32 3, label %.lr.ph.i39.i
  ]

.lr.ph.i39.i:                                     ; preds = %readbits.exit38.i
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !52
  %i.ql = lshr i32 128, %i.qi
  %i.qm = zext i8 %i.qk to i32
  %i.qn = and i32 %i.ql, %i.qm
  %.not59.i = icmp eq i32 %i.qn, 0
  %i.qo = add nuw nsw i32 %i.qi, 1                ; 2 uses
  store i32 %i.qo, ptr %i.h, align 4, !tbaa !8
  %.not21.i44.i = icmp samesign ugt i32 %i.qi, 6
  br i1 %.not21.i44.i, label %bb.am, label %readbits.exit49.i

bb.am:                                            ; preds = %.lr.ph.i39.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 2 uses
  store ptr %i.qp, ptr %i.g, align 8, !tbaa !11
  store i32 0, ptr %i.h, align 4, !tbaa !8
  br label %readbits.exit49.i

readbits.exit49.i:                                ; preds = %bb.am, %.lr.ph.i39.i
  %i.qq = phi i32 [ 0, %bb.am ], [ %i.qo, %.lr.ph.i39.i ] ; 4 uses
  %i.qr = phi ptr [ %i.qp, %bb.am ], [ %i.qj, %.lr.ph.i39.i ] ; 3 uses
  br i1 %.not59.i, label %bb.bs, label %.lr.ph.i213

default.unreachable:                              ; preds = %readbits.exit38.i
  unreachable

.lr.ph.i195:                                      ; preds = %readbits.exit.i, %readbits.exit38.i
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
  br i1 %.not57.i.not, label %.loopexit.thread, label %.thread284

.thread284:                                       ; preds = %readbits.exit38.i, %.lr.ph.i195
  %.sroa.0.0 = phi i32 [ %i.qx, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %i.qv, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %i.qt, %.lr.ph.i195 ], [ 0, %readbits.exit38.i ] ; 2 uses
  %i.ra = phi i1 [ true, %.lr.ph.i195 ], [ false, %readbits.exit38.i ]
  %.not124283288 = phi i1 [ false, %.lr.ph.i195 ], [ true, %readbits.exit38.i ] ; 2 uses
  %i.rb = phi <2 x i32> [ %i.qz, %.lr.ph.i195 ], [ zeroinitializer, %readbits.exit38.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store i32 %.0118333, ptr %i.l, align 4, !tbaa !8
  store i32 %.0118333, ptr %i.oc, align 4, !tbaa !8
  store i32 %.0118333, ptr %i.od, align 4, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !tbaa !52
  %i.rc = sext i32 %.0118333 to i64
  %i.rd = getelementptr inbounds [32 x i8], ptr @magic_bits, i64 %i.rc
  %i.re = zext nneg i32 %.0109349 to i64
  %i.rf = getelementptr [4 x i8], ptr %i.rd, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 -4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !8
  call fastcc void @readmanybits(ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.rh, ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, ptr noundef nonnull align 16 dereferenceable(72) %i.j, i64 72, i1 false)
  store i32 0, ptr %i.oe, align 8, !tbaa !8
  %.not.i199 = icmp eq i32 %.0109349, 0
  br i1 %.not.i199, label %.loopexit675, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread284
  %i.ri = mul nuw nsw i32 %.0109349, 3
  %i.rj = zext nneg i32 %i.ri to i64
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200, %.lr.ph.preheader.i
  %indvars.iv26.i201 = phi i64 [ %i.rj, %.lr.ph.preheader.i ], [ %indvars.iv.next27.i202, %.lr.ph.i200 ] ; 2 uses
  %indvars.iv.next27.i202 = add nsw i64 %indvars.iv26.i201, -1 ; 3 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv.next27.i202 to i32
  %i.rl = urem i32 %i.rk, 3
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !8
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr @magic, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !8
  %i.rs = call i32 @Ptngc_largeint_div(i32 noundef %i.rr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 19) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.c, ptr noundef nonnull align 16 dereferenceable(76) %i.d, i64 76, i1 false)
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next27.i202
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !8
  %i.ru = icmp samesign ugt i64 %indvars.iv26.i201, 1
  br i1 %i.ru, label %.lr.ph.i200, label %.loopexit675, !llvm.loop !54

.loopexit675:                                     ; preds = %.lr.ph.i200, %.thread284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.rv = icmp ne i32 %.0112346, 0
  %or.cond5 = select i1 %i.ra, i1 %i.rv, i1 false
  br i1 %or.cond5, label %.preheader295.preheader, label %.loopexit

.preheader295.preheader:                          ; preds = %.loopexit675
  %i.rw = load i32, ptr %i.k, align 16, !tbaa !8  ; 3 uses
  %i.rx = add nsw i32 %i.rw, 1
  %i.ry = sdiv i32 %i.rx, 2                       ; 2 uses
  %i.rz = and i32 %i.rw, 1
  %i.sa = icmp eq i32 %i.rz, 0
  %i.sb = sub nsw i32 0, %i.ry
  %spec.select.i204 = select i1 %i.sa, i32 %i.sb, i32 %i.ry ; 5 uses
  %i.sc = load i32, ptr %i.or, align 4, !tbaa !8  ; 2 uses
  %i.sd = add nsw i32 %i.sc, 1
  %i.se = sdiv i32 %i.sd, 2                       ; 2 uses
  %i.sf = and i32 %i.sc, 1
  %i.sg = icmp eq i32 %i.sf, 0
  %i.sh = sub nsw i32 0, %i.se
  %spec.select.i205 = select i1 %i.sg, i32 %i.sh, i32 %i.se
  %i.si = add nsw i32 %spec.select.i204, %.sroa.0.0
  %i.sj = add nsw i32 %spec.select.i205, %spec.select.i204 ; 4 uses
  %i.sk = icmp slt i32 %spec.select.i204, 0
  br i1 %i.sk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.preheader295.preheader
  %i.sl = shl nsw i32 %spec.select.i204, 1
  %i.sm = xor i32 %i.sl, -1
  br label %positive_int.exit

bb.ao:                                            ; preds = %.preheader295.preheader
  %.off = add i32 %i.rw, 2
  %.not292 = icmp ult i32 %.off, 3
  %i.sn = shl nuw nsw i32 %spec.select.i204, 1
  %spec.select293 = select i1 %.not292, i32 0, i32 %i.sn
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.ao, %bb.an
  %.0.i206 = phi i32 [ %i.sm, %bb.an ], [ %spec.select293, %bb.ao ]
  store i32 %.0.i206, ptr %i.k, align 16, !tbaa !8
  %i.so = icmp sgt i32 %i.sj, 0
  br i1 %i.so, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %positive_int.exit
  %i.sp = shl nuw i32 %i.sj, 1
  %i.sq = add i32 %i.sp, -1
  br label %positive_int.exit208

bb.aq:                                            ; preds = %positive_int.exit
  %i.sr = icmp slt i32 %i.sj, 0
  br i1 %i.sr, label %bb.ar, label %positive_int.exit208

bb.ar:                                            ; preds = %bb.aq
  %i.ss = xor i32 %i.sj, -1
  %i.st = shl nuw nsw i32 %i.ss, 1
  %i.su = add nuw nsw i32 %i.st, 2
  br label %positive_int.exit208

positive_int.exit208:                             ; preds = %bb.ap, %bb.aq, %bb.ar
  %.0.i207 = phi i32 [ %i.sq, %bb.ap ], [ %i.su, %bb.ar ], [ 0, %bb.aq ]
  store i32 %.0.i207, ptr %i.or, align 4, !tbaa !8
  %i.sv = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %i.sw = add nsw i32 %i.sv, 1
  %i.sx = sdiv i32 %i.sw, 2                       ; 2 uses
  %i.sy = and i32 %i.sv, 1
  %i.sz = icmp eq i32 %i.sy, 0
  %i.ta = sub nsw i32 0, %i.sx
  %spec.select.i204.1 = select i1 %i.sz, i32 %i.ta, i32 %i.sx ; 5 uses
  %i.tb = load i32, ptr %i.os, align 16, !tbaa !8 ; 2 uses
  %i.tc = add nsw i32 %i.tb, 1
  %i.td = sdiv i32 %i.tc, 2                       ; 2 uses
  %i.te = and i32 %i.tb, 1
  %i.tf = icmp eq i32 %i.te, 0
  %i.tg = sub nsw i32 0, %i.td
  %spec.select.i205.1 = select i1 %i.tf, i32 %i.tg, i32 %i.td
  %i.th = add nsw i32 %spec.select.i204.1, %.sroa.10.0 ; 2 uses
  %i.ti = add nsw i32 %spec.select.i205.1, %spec.select.i204.1 ; 4 uses
  %i.tj = icmp slt i32 %spec.select.i204.1, 0
  br i1 %i.tj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %positive_int.exit208
  %.off.1 = add i32 %i.sv, 2
  %.not292.1 = icmp ult i32 %.off.1, 3
  %i.tk = shl nuw nsw i32 %spec.select.i204.1, 1
  %spec.select293.1 = select i1 %.not292.1, i32 0, i32 %i.tk
  br label %positive_int.exit.1

bb.at:                                            ; preds = %positive_int.exit208
  %i.tl = shl nsw i32 %spec.select.i204.1, 1
  %i.tm = xor i32 %i.tl, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.at, %bb.as
  %.0.i206.1 = phi i32 [ %i.tm, %bb.at ], [ %spec.select293.1, %bb.as ]
  store i32 %.0.i206.1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.tn = icmp sgt i32 %i.ti, 0
  br i1 %i.tn, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %positive_int.exit.1
  %i.to = icmp slt i32 %i.ti, 0
  br i1 %i.to, label %bb.av, label %positive_int.exit208.1

bb.av:                                            ; preds = %bb.au
  %i.tp = xor i32 %i.ti, -1
  %i.tq = shl nuw nsw i32 %i.tp, 1
  %i.tr = add nuw nsw i32 %i.tq, 2
  br label %positive_int.exit208.1

bb.aw:                                            ; preds = %positive_int.exit.1
end_hunk_0
