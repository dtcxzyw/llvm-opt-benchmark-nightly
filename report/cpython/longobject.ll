Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@long_to_decimal_string_internal:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.2238, 9223372036854775804    ; 4 uses
  %i.ng = mul i64 %n.vec, -9
  %i.nh = getelementptr i8, ptr %i.lf, i64 %i.ng  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ni = mul i64 %index, -9                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.lf, i64 %i.ni ; 9 uses
  %i.nj = getelementptr i8, ptr %i.lf, i64 %i.ni  ; 9 uses
  %i.nk = getelementptr i8, ptr %i.lf, i64 %i.ni  ; 9 uses
  %i.nl = getelementptr i8, ptr %i.lf, i64 %i.ni  ; 9 uses
  %i.nm = getelementptr [4 x i8], ptr %i.ii, i64 %index
  %wide.load = load <4 x i32>, ptr %i.nm, align 4, !tbaa !26, !alias.scope !235, !noalias !236 ; 8 uses
  %wide.load.frozen = freeze <4 x i32> %wide.load ; 2 uses
  %i.nn = udiv <4 x i32> %wide.load.frozen, splat (i32 10) ; 2 uses
  %i.no = mul <4 x i32> %i.nn, splat (i32 10)
  %.decomposed = sub <4 x i32> %wide.load.frozen, %i.no
  %i.np = trunc nuw nsw <4 x i32> %.decomposed to <4 x i8>
  %i.nq = or disjoint <4 x i8> %i.np, splat (i8 48) ; 4 uses
  %i.nr = getelementptr i8, ptr %next.gep, i64 -1
  %i.ns = getelementptr i8, ptr %i.nj, i64 -10
  %i.nt = getelementptr i8, ptr %i.nk, i64 -19
  %i.nu = getelementptr i8, ptr %i.nl, i64 -28
  %i.nv = extractelement <4 x i8> %i.nq, i64 0
  store i8 %i.nv, ptr %i.nr, align 1, !tbaa !40, !alias.scope !236
  %i.nw = extractelement <4 x i8> %i.nq, i64 1
  store i8 %i.nw, ptr %i.ns, align 1, !tbaa !40, !alias.scope !236
  %i.nx = extractelement <4 x i8> %i.nq, i64 2
  store i8 %i.nx, ptr %i.nt, align 1, !tbaa !40, !alias.scope !236
  %i.ny = extractelement <4 x i8> %i.nq, i64 3
  store i8 %i.ny, ptr %i.nu, align 1, !tbaa !40, !alias.scope !236
  %i.nz = urem <4 x i32> %i.nn, splat (i32 10)
  %i.oa = trunc nuw nsw <4 x i32> %i.nz to <4 x i8>
  %i.ob = or disjoint <4 x i8> %i.oa, splat (i8 48) ; 4 uses
  %i.oc = getelementptr i8, ptr %next.gep, i64 -2
  %i.od = getelementptr i8, ptr %i.nj, i64 -11
  %i.oe = getelementptr i8, ptr %i.nk, i64 -20
  %i.of = getelementptr i8, ptr %i.nl, i64 -29
  %i.og = extractelement <4 x i8> %i.ob, i64 0
  store i8 %i.og, ptr %i.oc, align 1, !tbaa !40, !alias.scope !236
  %i.oh = extractelement <4 x i8> %i.ob, i64 1
  store i8 %i.oh, ptr %i.od, align 1, !tbaa !40, !alias.scope !236
  %i.oi = extractelement <4 x i8> %i.ob, i64 2
  store i8 %i.oi, ptr %i.oe, align 1, !tbaa !40, !alias.scope !236
  %i.oj = extractelement <4 x i8> %i.ob, i64 3
  store i8 %i.oj, ptr %i.of, align 1, !tbaa !40, !alias.scope !236
  %i.ok = udiv <4 x i32> %wide.load, splat (i32 100)
  %i.ol = urem <4 x i32> %i.ok, splat (i32 10)
  %i.om = trunc nuw nsw <4 x i32> %i.ol to <4 x i8>
  %i.on = or disjoint <4 x i8> %i.om, splat (i8 48) ; 4 uses
  %i.oo = getelementptr i8, ptr %next.gep, i64 -3
  %i.op = getelementptr i8, ptr %i.nj, i64 -12
  %i.oq = getelementptr i8, ptr %i.nk, i64 -21
  %i.or = getelementptr i8, ptr %i.nl, i64 -30
  %i.os = extractelement <4 x i8> %i.on, i64 0
  store i8 %i.os, ptr %i.oo, align 1, !tbaa !40, !alias.scope !236
  %i.ot = extractelement <4 x i8> %i.on, i64 1
  store i8 %i.ot, ptr %i.op, align 1, !tbaa !40, !alias.scope !236
  %i.ou = extractelement <4 x i8> %i.on, i64 2
  store i8 %i.ou, ptr %i.oq, align 1, !tbaa !40, !alias.scope !236
  %i.ov = extractelement <4 x i8> %i.on, i64 3
  store i8 %i.ov, ptr %i.or, align 1, !tbaa !40, !alias.scope !236
  %i.ow = udiv <4 x i32> %wide.load, splat (i32 1000)
  %i.ox = urem <4 x i32> %i.ow, splat (i32 10)
  %i.oy = trunc nuw nsw <4 x i32> %i.ox to <4 x i8>
  %i.oz = or disjoint <4 x i8> %i.oy, splat (i8 48) ; 4 uses
  %i.pa = getelementptr i8, ptr %next.gep, i64 -4
  %i.pb = getelementptr i8, ptr %i.nj, i64 -13
  %i.pc = getelementptr i8, ptr %i.nk, i64 -22
  %i.pd = getelementptr i8, ptr %i.nl, i64 -31
  %i.pe = extractelement <4 x i8> %i.oz, i64 0
  store i8 %i.pe, ptr %i.pa, align 1, !tbaa !40, !alias.scope !236
  %i.pf = extractelement <4 x i8> %i.oz, i64 1
  store i8 %i.pf, ptr %i.pb, align 1, !tbaa !40, !alias.scope !236
  %i.pg = extractelement <4 x i8> %i.oz, i64 2
  store i8 %i.pg, ptr %i.pc, align 1, !tbaa !40, !alias.scope !236
  %i.ph = extractelement <4 x i8> %i.oz, i64 3
  store i8 %i.ph, ptr %i.pd, align 1, !tbaa !40, !alias.scope !236
  %i.pi = udiv <4 x i32> %wide.load, splat (i32 10000)
  %i.pj = urem <4 x i32> %i.pi, splat (i32 10)
  %i.pk = trunc nuw nsw <4 x i32> %i.pj to <4 x i8>
  %i.pl = or disjoint <4 x i8> %i.pk, splat (i8 48) ; 4 uses
  %i.pm = getelementptr i8, ptr %next.gep, i64 -5
  %i.pn = getelementptr i8, ptr %i.nj, i64 -14
  %i.po = getelementptr i8, ptr %i.nk, i64 -23
  %i.pp = getelementptr i8, ptr %i.nl, i64 -32
  %i.pq = extractelement <4 x i8> %i.pl, i64 0
  store i8 %i.pq, ptr %i.pm, align 1, !tbaa !40, !alias.scope !236
  %i.pr = extractelement <4 x i8> %i.pl, i64 1
  store i8 %i.pr, ptr %i.pn, align 1, !tbaa !40, !alias.scope !236
  %i.ps = extractelement <4 x i8> %i.pl, i64 2
  store i8 %i.ps, ptr %i.po, align 1, !tbaa !40, !alias.scope !236
  %i.pt = extractelement <4 x i8> %i.pl, i64 3
  store i8 %i.pt, ptr %i.pp, align 1, !tbaa !40, !alias.scope !236
  %i.pu = udiv <4 x i32> %wide.load, splat (i32 100000)
  %i.pv = trunc nuw <4 x i32> %i.pu to <4 x i16>
  %i.pw = urem <4 x i16> %i.pv, splat (i16 10)
  %i.px = trunc nuw nsw <4 x i16> %i.pw to <4 x i8>
  %i.py = or disjoint <4 x i8> %i.px, splat (i8 48) ; 4 uses
  %i.pz = getelementptr i8, ptr %next.gep, i64 -6
  %i.qa = getelementptr i8, ptr %i.nj, i64 -15
  %i.qb = getelementptr i8, ptr %i.nk, i64 -24
  %i.qc = getelementptr i8, ptr %i.nl, i64 -33
  %i.qd = extractelement <4 x i8> %i.py, i64 0
  store i8 %i.qd, ptr %i.pz, align 1, !tbaa !40, !alias.scope !236
  %i.qe = extractelement <4 x i8> %i.py, i64 1
  store i8 %i.qe, ptr %i.qa, align 1, !tbaa !40, !alias.scope !236
  %i.qf = extractelement <4 x i8> %i.py, i64 2
  store i8 %i.qf, ptr %i.qb, align 1, !tbaa !40, !alias.scope !236
  %i.qg = extractelement <4 x i8> %i.py, i64 3
  store i8 %i.qg, ptr %i.qc, align 1, !tbaa !40, !alias.scope !236
  %i.qh = udiv <4 x i32> %wide.load, splat (i32 1000000)
  %i.qi = trunc nuw nsw <4 x i32> %i.qh to <4 x i16>
  %i.qj = urem <4 x i16> %i.qi, splat (i16 10)
  %i.qk = trunc nuw nsw <4 x i16> %i.qj to <4 x i8>
  %i.ql = or disjoint <4 x i8> %i.qk, splat (i8 48) ; 4 uses
  %i.qm = getelementptr i8, ptr %next.gep, i64 -7
  %i.qn = getelementptr i8, ptr %i.nj, i64 -16
  %i.qo = getelementptr i8, ptr %i.nk, i64 -25
  %i.qp = getelementptr i8, ptr %i.nl, i64 -34
  %i.qq = extractelement <4 x i8> %i.ql, i64 0
  store i8 %i.qq, ptr %i.qm, align 1, !tbaa !40, !alias.scope !236
  %i.qr = extractelement <4 x i8> %i.ql, i64 1
  store i8 %i.qr, ptr %i.qn, align 1, !tbaa !40, !alias.scope !236
  %i.qs = extractelement <4 x i8> %i.ql, i64 2
  store i8 %i.qs, ptr %i.qo, align 1, !tbaa !40, !alias.scope !236
  %i.qt = extractelement <4 x i8> %i.ql, i64 3
  store i8 %i.qt, ptr %i.qp, align 1, !tbaa !40, !alias.scope !236
  %i.qu = udiv <4 x i32> %wide.load, splat (i32 10000000)
  %i.qv = trunc nuw nsw <4 x i32> %i.qu to <4 x i16>
  %i.qw = urem <4 x i16> %i.qv, splat (i16 10)
  %i.qx = trunc nuw nsw <4 x i16> %i.qw to <4 x i8>
  %i.qy = or disjoint <4 x i8> %i.qx, splat (i8 48) ; 4 uses
  %i.qz = getelementptr i8, ptr %next.gep, i64 -8
  %i.ra = getelementptr i8, ptr %i.nj, i64 -17
  %i.rb = getelementptr i8, ptr %i.nk, i64 -26
  %i.rc = getelementptr i8, ptr %i.nl, i64 -35
  %i.rd = extractelement <4 x i8> %i.qy, i64 0
  store i8 %i.rd, ptr %i.qz, align 1, !tbaa !40, !alias.scope !236
  %i.re = extractelement <4 x i8> %i.qy, i64 1
  store i8 %i.re, ptr %i.ra, align 1, !tbaa !40, !alias.scope !236
  %i.rf = extractelement <4 x i8> %i.qy, i64 2
  store i8 %i.rf, ptr %i.rb, align 1, !tbaa !40, !alias.scope !236
  %i.rg = extractelement <4 x i8> %i.qy, i64 3
  store i8 %i.rg, ptr %i.rc, align 1, !tbaa !40, !alias.scope !236
  %i.rh = udiv <4 x i32> %wide.load, splat (i32 100000000)
  %i.ri = trunc nuw nsw <4 x i32> %i.rh to <4 x i8>
  %i.rj = urem <4 x i8> %i.ri, splat (i8 10)
  %i.rk = or disjoint <4 x i8> %i.rj, splat (i8 48) ; 4 uses
  %i.rl = getelementptr i8, ptr %next.gep, i64 -9
  %i.rm = getelementptr i8, ptr %i.nj, i64 -18
  %i.rn = getelementptr i8, ptr %i.nk, i64 -27
  %i.ro = getelementptr i8, ptr %i.nl, i64 -36
  %i.rp = extractelement <4 x i8> %i.rk, i64 0
  store i8 %i.rp, ptr %i.rl, align 1, !tbaa !40, !alias.scope !236
  %i.rq = extractelement <4 x i8> %i.rk, i64 1
  store i8 %i.rq, ptr %i.rm, align 1, !tbaa !40, !alias.scope !236
  %i.rr = extractelement <4 x i8> %i.rk, i64 2
  store i8 %i.rr, ptr %i.rn, align 1, !tbaa !40, !alias.scope !236
  %i.rs = extractelement <4 x i8> %i.rk, i64 3
  store i8 %i.rs, ptr %i.ro, align 1, !tbaa !40, !alias.scope !236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2238, %n.vec
  br i1 %cmp.n, label %._crit_edge382, label %.lr.ph381.preheader768

.lr.ph381.preheader768:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph381.preheader, %middle.block
  %.0206380.ph = phi ptr [ %i.lf, %vector.memcheck ], [ %i.lf, %vector.scevcheck ], [ %i.lf, %.lr.ph381.preheader ], [ %i.nh, %middle.block ]
  %.1231379.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph381.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph381

.lr.ph381:                                        ; preds = %.lr.ph381.preheader768, %.lr.ph381
  %.0206380 = phi ptr [ %i.sf, %.lr.ph381 ], [ %.0206380.ph, %.lr.ph381.preheader768 ] ; 2 uses
  %.1231379 = phi i64 [ %i.sx, %.lr.ph381 ], [ %.1231379.ph, %.lr.ph381.preheader768 ] ; 2 uses
  %i.ru = getelementptr [4 x i8], ptr %i.ii, i64 %.1231379
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !26 ; 6 uses
  %i.rw = urem i32 %i.rv, 10
  %i.rx = trunc nuw nsw i32 %i.rw to i8
  %i.ry = or disjoint i8 %i.rx, 48
  %i.rz = getelementptr i8, ptr %.0206380, i64 -1
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !40
  %i.sa = udiv i32 %i.rv, 10000000
  %.lhs.trunc497 = trunc nuw nsw i32 %i.sa to i16
  %i.sb = urem i16 %.lhs.trunc497, 10
  %i.sc = trunc nuw nsw i16 %i.sb to i8
  %i.sd = udiv i32 %i.rv, 100000000
  %.lhs.trunc499 = trunc nuw nsw i32 %i.sd to i8
  %i.se = urem i8 %.lhs.trunc499, 10
  %i.sf = getelementptr i8, ptr %.0206380, i64 -9 ; 3 uses
  %i.sg = insertelement <4 x i32> poison, i32 %i.rv, i64 0
  %i.sh = shufflevector <4 x i32> %i.sg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.si = udiv <4 x i32> %i.sh, <i32 10000, i32 1000, i32 100, i32 10>
  %i.sj = urem <4 x i32> %i.si, splat (i32 10)
  %i.sk = trunc nuw nsw <4 x i32> %i.sj to <4 x i8>
  %i.sl = udiv i32 %i.rv, 100000
  %.lhs.trunc493 = trunc nuw i32 %i.sl to i16
  %5 = udiv i32 %i.rv, 1000000
  %.lhs.trunc495 = trunc nuw nsw i32 %5 to i16
  %i.sm = insertelement <2 x i16> poison, i16 %.lhs.trunc495, i64 0
  %i.sn = insertelement <2 x i16> %i.sm, i16 %.lhs.trunc493, i64 1
  %i.so = urem <2 x i16> %i.sn, splat (i16 10)
  %i.sp = insertelement <8 x i8> poison, i8 %i.se, i64 0
  %i.sq = insertelement <8 x i8> %i.sp, i8 %i.sc, i64 1
  %i.sr = shufflevector <4 x i8> %i.sk, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ss = shufflevector <8 x i8> %i.sq, <8 x i8> %i.sr, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.st = shufflevector <2 x i16> %i.so, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.su = trunc <8 x i16> %i.st to <8 x i8>
  %i.sv = shufflevector <8 x i8> %i.ss, <8 x i8> %i.su, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.sw = or disjoint <8 x i8> %i.sv, splat (i8 48)
  store <8 x i8> %i.sw, ptr %i.sf, align 1, !tbaa !40
  %i.sx = add nuw nsw i64 %.1231379, 1            ; 2 uses
  %exitcond429.not = icmp eq i64 %i.sx, %.2238
  br i1 %exitcond429.not, label %._crit_edge382, label %.lr.ph381, !llvm.loop !212

._crit_edge382:                                   ; preds = %.lr.ph381, %middle.block, %.critedge275.thread345
  %.1231.lcssa = phi i64 [ 0, %.critedge275.thread345 ], [ %.2238, %middle.block ], [ %.2238, %.lr.ph381 ]
  %.0206.lcssa = phi ptr [ %i.lf, %.critedge275.thread345 ], [ %i.nh, %middle.block ], [ %i.sf, %.lr.ph381 ]
  %i.sy = getelementptr [4 x i8], ptr %i.ii, i64 %.1231.lcssa
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %._crit_edge382
  %.1220 = phi i32 [ %i.sz, %._crit_edge382 ], [ %i.te, %bb.bf ] ; 3 uses
  %.2208 = phi ptr [ %.0206.lcssa, %._crit_edge382 ], [ %i.td, %bb.bf ] ; 2 uses
  %i.ta = urem i32 %.1220, 10
  %i.tb = trunc nuw nsw i32 %i.ta to i8
  %i.tc = or disjoint i8 %i.tb, 48
  %i.td = getelementptr i8, ptr %.2208, i64 -1    ; 2 uses
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !40
  %i.te = udiv i32 %.1220, 10
  %.not266 = icmp ult i32 %.1220, 10
  br i1 %.not266, label %bb.bg, label %bb.bf, !llvm.loop !213

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.h, label %bb.bh, label %bb.cp

bb.bh:                                            ; preds = %bb.bg
  %i.tf = getelementptr i8, ptr %.2208, i64 -2
  store i8 45, ptr %i.tf, align 1, !tbaa !40
  br label %bb.cp

bb.bi:                                            ; preds = %.critedge275
  %i.tg = getelementptr i8, ptr %2, i64 16
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !151
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb
  %i.ti = getelementptr i8, ptr %i.kz, i64 32
  %i.tj = load i32, ptr %i.ti, align 8
  %i.tk = lshr i32 %i.tj, 2
  %i.tl = and i32 %i.tk, 7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0239342355 = phi ptr [ null, %bb.bi ], [ %i.kz, %bb.bj ] ; 15 uses
  %i.tm = phi i32 [ %i.th, %bb.bi ], [ %i.tl, %bb.bj ]
  switch i32 %i.tm, label %bb.cf [
    i32 1, label %bb.bl
    i32 2, label %bb.bv
  ]

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tn = load ptr, ptr %2, align 8, !tbaa !152   ; 3 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 32
  %.val.i292 = load i32, ptr %i.to, align 8       ; 2 uses
  %i.tp = and i32 %.val.i292, 32
  %.not.i293 = icmp eq i32 %i.tp, 0
  br i1 %.not.i293, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tq = and i32 %.val.i292, 64
  %.not.i.i294 = icmp eq i32 %i.tq, 0
  %.0.v.i.i = select i1 %.not.i.i294, i64 56, i64 40
  %.0.i.i295 = getelementptr i8, ptr %i.tn, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.bo:                                            ; preds = %bb.bm
  %i.tr = getelementptr i8, ptr %i.tn, i64 56
  %.val4.i = load ptr, ptr %i.tr, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.bn, %bb.bo
  %.0.i296 = phi ptr [ %.0.i.i295, %bb.bn ], [ %.val4.i, %bb.bo ]
  %i.ts = getelementptr i8, ptr %2, i64 32
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !146
  %i.tu = getelementptr i8, ptr %.0.i296, i64 %i.tt
  br label %_PyUnicode_DATA.exit304

bb.bp:                                            ; preds = %bb.bl
  %i.tv = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i297 = load i32, ptr %i.tv, align 8       ; 2 uses
  %i.tw = and i32 %.val.i297, 32
  %.not.i298 = icmp eq i32 %i.tw, 0
  br i1 %.not.i298, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.tx = and i32 %.val.i297, 64
  %.not.i.i299 = icmp eq i32 %i.tx, 0
  %.0.v.i.i300 = select i1 %.not.i.i299, i64 56, i64 40
  %.0.i.i301 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i300
  br label %_PyUnicode_DATA.exit304

bb.br:                                            ; preds = %bb.bp
  %i.ty = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i303 = load ptr, ptr %i.ty, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit304

_PyUnicode_DATA.exit304:                          ; preds = %bb.br, %bb.bq, %_PyUnicode_DATA.exit
  %.pn264 = phi ptr [ %i.tu, %_PyUnicode_DATA.exit ], [ %.0.i.i301, %bb.bq ], [ %.val4.i303, %bb.br ] ; 11 uses
  %.0202 = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 10 uses
  %i.tz = icmp sgt i64 %.2238, 0
  br i1 %i.tz, label %.lr.ph399.preheader, label %._crit_edge400

.lr.ph399.preheader:                              ; preds = %_PyUnicode_DATA.exit304
  %min.iters.check593 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check593, label %.lr.ph399.preheader764, label %vector.scevcheck572

vector.scevcheck572:                              ; preds = %.lr.ph399.preheader
  %umax573 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.ua = add i64 %umax573, -2
  %i.ub = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %mul575 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ua, i64 9) ; 2 uses
  %mul.result576 = extractvalue { i64, i1 } %mul575, 0 ; 9 uses
  %mul.overflow577 = extractvalue { i64, i1 } %mul575, 1
  %i.uc = sub i64 0, %mul.result576
  %i.ud = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ue = sub i64 0, %mul.result576
  %i.uf = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ug = sub i64 0, %mul.result576
  %i.uh = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.ui = sub i64 0, %mul.result576
  %i.uj = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.uk = sub i64 0, %mul.result576
  %i.ul = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.um = sub i64 0, %mul.result576
  %i.un = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.uo = sub i64 0, %mul.result576
  %i.up = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa ; 2 uses
  %i.uq = sub i64 0, %mul.result576
  %scevgep584 = getelementptr i8, ptr %i.up, i64 -8
  %i.ur = insertelement <8 x ptr> poison, ptr %i.ud, i64 0
  %i.us = insertelement <8 x ptr> %i.ur, ptr %i.ub, i64 1
  %i.ut = insertelement <8 x ptr> %i.us, ptr %i.uf, i64 2
  %i.uu = insertelement <8 x ptr> %i.ut, ptr %i.uh, i64 3
  %i.uv = insertelement <8 x ptr> %i.uu, ptr %i.uj, i64 4
  %i.uw = insertelement <8 x ptr> %i.uv, ptr %i.ul, i64 5
  %i.ux = insertelement <8 x ptr> %i.uw, ptr %i.un, i64 6
  %i.uy = insertelement <8 x ptr> %i.ux, ptr %i.up, i64 7
  %i.uz = getelementptr i8, <8 x ptr> %i.uy, <8 x i64> <i64 -2, i64 -1, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8>
  %scevgep583 = getelementptr i8, ptr %i.un, i64 -7
  %scevgep582 = getelementptr i8, ptr %i.ul, i64 -6
  %scevgep581 = getelementptr i8, ptr %i.uj, i64 -5
  %scevgep580 = getelementptr i8, ptr %i.uh, i64 -4
  %scevgep579 = getelementptr i8, ptr %i.uf, i64 -3
  %scevgep574 = getelementptr i8, ptr %i.ub, i64 -1
  %scevgep578 = getelementptr i8, ptr %i.ud, i64 -2
  %i.va = getelementptr i8, ptr %scevgep574, i64 %i.uc
  %i.vb = getelementptr i8, ptr %scevgep578, i64 %i.ue
  %i.vc = getelementptr i8, ptr %scevgep579, i64 %i.ug
  %i.vd = getelementptr i8, ptr %scevgep580, i64 %i.ui
  %i.ve = getelementptr i8, ptr %scevgep581, i64 %i.uk
  %i.vf = getelementptr i8, ptr %scevgep582, i64 %i.um
  %i.vg = getelementptr i8, ptr %scevgep583, i64 %i.uo
  %i.vh = getelementptr i8, ptr %scevgep584, i64 %i.uq
  %i.vi = insertelement <8 x ptr> poison, ptr %i.vb, i64 0
  %i.vj = insertelement <8 x ptr> %i.vi, ptr %i.va, i64 1
  %i.vk = insertelement <8 x ptr> %i.vj, ptr %i.vc, i64 2
  %i.vl = insertelement <8 x ptr> %i.vk, ptr %i.vd, i64 3
  %i.vm = insertelement <8 x ptr> %i.vl, ptr %i.ve, i64 4
  %i.vn = insertelement <8 x ptr> %i.vm, ptr %i.vf, i64 5
  %i.vo = insertelement <8 x ptr> %i.vn, ptr %i.vg, i64 6
  %i.vp = insertelement <8 x ptr> %i.vo, ptr %i.vh, i64 7
  %i.vq = icmp ugt <8 x ptr> %i.vp, %i.uz
  %i.vr = getelementptr i8, ptr %.pn264, i64 %.0235.lcssa
  %scevgep585 = getelementptr i8, ptr %i.vr, i64 -9 ; 2 uses
  %i.vs = sub i64 0, %mul.result576
  %i.vt = getelementptr i8, ptr %scevgep585, i64 %i.vs
  %i.vu = icmp ugt ptr %i.vt, %scevgep585
  %i.vv = bitcast <8 x i1> %i.vq to i8
  %i.vw = icmp ne i8 %i.vv, 0
  %op.rdx731 = or i1 %mul.overflow577, %i.vw
  %op.rdx732 = or i1 %op.rdx731, %i.vu
  br i1 %op.rdx732, label %.lr.ph399.preheader764, label %vector.memcheck586

vector.memcheck586:                               ; preds = %vector.scevcheck572
  %umax587 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg727 = mul i64 %umax587, -9
  %i.vx = getelementptr i8, ptr %.pn264, i64 %.neg727
  %i.vy = getelementptr i8, ptr %i.vx, i64 %.0235.lcssa
  %scevgep588 = getelementptr i8, ptr %i.vy, i64 9
  %bound0589 = icmp ult ptr %i.ii, %.0202
  %bound1590 = icmp ult ptr %scevgep588, %i.jm
  %found.conflict591 = and i1 %bound0589, %bound1590
  br i1 %found.conflict591, label %.lr.ph399.preheader764, label %vector.ph594
end_hunk_0
begin_hunk_1_@long_to_decimal_string_internal:bb.a
vector.ph594:                                     ; preds = %vector.memcheck586
  %n.vec595 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.vz = mul i64 %n.vec595, -9
  %i.wa = getelementptr i8, ptr %.0202, i64 %i.vz ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next603, %vector.body596 ] ; 3 uses
  %i.wb = mul i64 %index597, -9                   ; 4 uses
  %next.gep598 = getelementptr i8, ptr %.0202, i64 %i.wb ; 9 uses
  %i.wc = getelementptr i8, ptr %.0202, i64 %i.wb ; 9 uses
  %i.wd = getelementptr i8, ptr %.0202, i64 %i.wb ; 9 uses
  %i.we = getelementptr i8, ptr %.0202, i64 %i.wb ; 9 uses
  %i.wf = getelementptr [4 x i8], ptr %i.ii, i64 %index597
  %wide.load602 = load <4 x i32>, ptr %i.wf, align 4, !tbaa !26, !alias.scope !237, !noalias !238 ; 8 uses
  %wide.load602.frozen = freeze <4 x i32> %wide.load602 ; 2 uses
  %i.wg = udiv <4 x i32> %wide.load602.frozen, splat (i32 10) ; 2 uses
  %i.wh = mul <4 x i32> %i.wg, splat (i32 10)
  %.decomposed797 = sub <4 x i32> %wide.load602.frozen, %i.wh
  %i.wi = trunc nuw nsw <4 x i32> %.decomposed797 to <4 x i8>
  %i.wj = or disjoint <4 x i8> %i.wi, splat (i8 48) ; 4 uses
  %i.wk = getelementptr i8, ptr %next.gep598, i64 -1
  %i.wl = getelementptr i8, ptr %i.wc, i64 -10
  %i.wm = getelementptr i8, ptr %i.wd, i64 -19
  %i.wn = getelementptr i8, ptr %i.we, i64 -28
  %i.wo = extractelement <4 x i8> %i.wj, i64 0
  store i8 %i.wo, ptr %i.wk, align 1, !tbaa !40, !alias.scope !238
  %i.wp = extractelement <4 x i8> %i.wj, i64 1
  store i8 %i.wp, ptr %i.wl, align 1, !tbaa !40, !alias.scope !238
  %i.wq = extractelement <4 x i8> %i.wj, i64 2
  store i8 %i.wq, ptr %i.wm, align 1, !tbaa !40, !alias.scope !238
  %i.wr = extractelement <4 x i8> %i.wj, i64 3
  store i8 %i.wr, ptr %i.wn, align 1, !tbaa !40, !alias.scope !238
  %i.ws = urem <4 x i32> %i.wg, splat (i32 10)
  %i.wt = trunc nuw nsw <4 x i32> %i.ws to <4 x i8>
  %i.wu = or disjoint <4 x i8> %i.wt, splat (i8 48) ; 4 uses
  %i.wv = getelementptr i8, ptr %next.gep598, i64 -2
  %i.ww = getelementptr i8, ptr %i.wc, i64 -11
  %i.wx = getelementptr i8, ptr %i.wd, i64 -20
  %i.wy = getelementptr i8, ptr %i.we, i64 -29
  %i.wz = extractelement <4 x i8> %i.wu, i64 0
  store i8 %i.wz, ptr %i.wv, align 1, !tbaa !40, !alias.scope !238
  %i.xa = extractelement <4 x i8> %i.wu, i64 1
  store i8 %i.xa, ptr %i.ww, align 1, !tbaa !40, !alias.scope !238
  %i.xb = extractelement <4 x i8> %i.wu, i64 2
  store i8 %i.xb, ptr %i.wx, align 1, !tbaa !40, !alias.scope !238
  %i.xc = extractelement <4 x i8> %i.wu, i64 3
  store i8 %i.xc, ptr %i.wy, align 1, !tbaa !40, !alias.scope !238
  %i.xd = udiv <4 x i32> %wide.load602, splat (i32 100)
  %i.xe = urem <4 x i32> %i.xd, splat (i32 10)
  %i.xf = trunc nuw nsw <4 x i32> %i.xe to <4 x i8>
  %i.xg = or disjoint <4 x i8> %i.xf, splat (i8 48) ; 4 uses
  %i.xh = getelementptr i8, ptr %next.gep598, i64 -3
  %i.xi = getelementptr i8, ptr %i.wc, i64 -12
  %i.xj = getelementptr i8, ptr %i.wd, i64 -21
  %i.xk = getelementptr i8, ptr %i.we, i64 -30
  %i.xl = extractelement <4 x i8> %i.xg, i64 0
  store i8 %i.xl, ptr %i.xh, align 1, !tbaa !40, !alias.scope !238
  %i.xm = extractelement <4 x i8> %i.xg, i64 1
  store i8 %i.xm, ptr %i.xi, align 1, !tbaa !40, !alias.scope !238
  %i.xn = extractelement <4 x i8> %i.xg, i64 2
  store i8 %i.xn, ptr %i.xj, align 1, !tbaa !40, !alias.scope !238
  %i.xo = extractelement <4 x i8> %i.xg, i64 3
  store i8 %i.xo, ptr %i.xk, align 1, !tbaa !40, !alias.scope !238
  %i.xp = udiv <4 x i32> %wide.load602, splat (i32 1000)
  %i.xq = urem <4 x i32> %i.xp, splat (i32 10)
  %i.xr = trunc nuw nsw <4 x i32> %i.xq to <4 x i8>
  %i.xs = or disjoint <4 x i8> %i.xr, splat (i8 48) ; 4 uses
  %i.xt = getelementptr i8, ptr %next.gep598, i64 -4
  %i.xu = getelementptr i8, ptr %i.wc, i64 -13
  %i.xv = getelementptr i8, ptr %i.wd, i64 -22
  %i.xw = getelementptr i8, ptr %i.we, i64 -31
  %i.xx = extractelement <4 x i8> %i.xs, i64 0
  store i8 %i.xx, ptr %i.xt, align 1, !tbaa !40, !alias.scope !238
  %i.xy = extractelement <4 x i8> %i.xs, i64 1
  store i8 %i.xy, ptr %i.xu, align 1, !tbaa !40, !alias.scope !238
  %i.xz = extractelement <4 x i8> %i.xs, i64 2
  store i8 %i.xz, ptr %i.xv, align 1, !tbaa !40, !alias.scope !238
  %i.ya = extractelement <4 x i8> %i.xs, i64 3
  store i8 %i.ya, ptr %i.xw, align 1, !tbaa !40, !alias.scope !238
  %i.yb = udiv <4 x i32> %wide.load602, splat (i32 10000)
  %i.yc = urem <4 x i32> %i.yb, splat (i32 10)
  %i.yd = trunc nuw nsw <4 x i32> %i.yc to <4 x i8>
  %i.ye = or disjoint <4 x i8> %i.yd, splat (i8 48) ; 4 uses
  %i.yf = getelementptr i8, ptr %next.gep598, i64 -5
  %i.yg = getelementptr i8, ptr %i.wc, i64 -14
  %i.yh = getelementptr i8, ptr %i.wd, i64 -23
  %i.yi = getelementptr i8, ptr %i.we, i64 -32
  %i.yj = extractelement <4 x i8> %i.ye, i64 0
  store i8 %i.yj, ptr %i.yf, align 1, !tbaa !40, !alias.scope !238
  %i.yk = extractelement <4 x i8> %i.ye, i64 1
  store i8 %i.yk, ptr %i.yg, align 1, !tbaa !40, !alias.scope !238
  %i.yl = extractelement <4 x i8> %i.ye, i64 2
  store i8 %i.yl, ptr %i.yh, align 1, !tbaa !40, !alias.scope !238
  %i.ym = extractelement <4 x i8> %i.ye, i64 3
  store i8 %i.ym, ptr %i.yi, align 1, !tbaa !40, !alias.scope !238
  %i.yn = udiv <4 x i32> %wide.load602, splat (i32 100000)
  %i.yo = trunc nuw <4 x i32> %i.yn to <4 x i16>
  %i.yp = urem <4 x i16> %i.yo, splat (i16 10)
  %i.yq = trunc nuw nsw <4 x i16> %i.yp to <4 x i8>
  %i.yr = or disjoint <4 x i8> %i.yq, splat (i8 48) ; 4 uses
  %i.ys = getelementptr i8, ptr %next.gep598, i64 -6
  %i.yt = getelementptr i8, ptr %i.wc, i64 -15
  %i.yu = getelementptr i8, ptr %i.wd, i64 -24
  %i.yv = getelementptr i8, ptr %i.we, i64 -33
  %i.yw = extractelement <4 x i8> %i.yr, i64 0
  store i8 %i.yw, ptr %i.ys, align 1, !tbaa !40, !alias.scope !238
  %i.yx = extractelement <4 x i8> %i.yr, i64 1
  store i8 %i.yx, ptr %i.yt, align 1, !tbaa !40, !alias.scope !238
  %i.yy = extractelement <4 x i8> %i.yr, i64 2
  store i8 %i.yy, ptr %i.yu, align 1, !tbaa !40, !alias.scope !238
  %i.yz = extractelement <4 x i8> %i.yr, i64 3
  store i8 %i.yz, ptr %i.yv, align 1, !tbaa !40, !alias.scope !238
  %i.za = udiv <4 x i32> %wide.load602, splat (i32 1000000)
  %i.zb = trunc nuw nsw <4 x i32> %i.za to <4 x i16>
  %i.zc = urem <4 x i16> %i.zb, splat (i16 10)
  %i.zd = trunc nuw nsw <4 x i16> %i.zc to <4 x i8>
  %i.ze = or disjoint <4 x i8> %i.zd, splat (i8 48) ; 4 uses
  %i.zf = getelementptr i8, ptr %next.gep598, i64 -7
  %i.zg = getelementptr i8, ptr %i.wc, i64 -16
  %i.zh = getelementptr i8, ptr %i.wd, i64 -25
  %i.zi = getelementptr i8, ptr %i.we, i64 -34
  %i.zj = extractelement <4 x i8> %i.ze, i64 0
  store i8 %i.zj, ptr %i.zf, align 1, !tbaa !40, !alias.scope !238
  %i.zk = extractelement <4 x i8> %i.ze, i64 1
  store i8 %i.zk, ptr %i.zg, align 1, !tbaa !40, !alias.scope !238
  %i.zl = extractelement <4 x i8> %i.ze, i64 2
  store i8 %i.zl, ptr %i.zh, align 1, !tbaa !40, !alias.scope !238
  %i.zm = extractelement <4 x i8> %i.ze, i64 3
  store i8 %i.zm, ptr %i.zi, align 1, !tbaa !40, !alias.scope !238
  %i.zn = udiv <4 x i32> %wide.load602, splat (i32 10000000)
  %i.zo = trunc nuw nsw <4 x i32> %i.zn to <4 x i16>
  %i.zp = urem <4 x i16> %i.zo, splat (i16 10)
  %i.zq = trunc nuw nsw <4 x i16> %i.zp to <4 x i8>
  %i.zr = or disjoint <4 x i8> %i.zq, splat (i8 48) ; 4 uses
  %i.zs = getelementptr i8, ptr %next.gep598, i64 -8
  %i.zt = getelementptr i8, ptr %i.wc, i64 -17
  %i.zu = getelementptr i8, ptr %i.wd, i64 -26
  %i.zv = getelementptr i8, ptr %i.we, i64 -35
  %i.zw = extractelement <4 x i8> %i.zr, i64 0
  store i8 %i.zw, ptr %i.zs, align 1, !tbaa !40, !alias.scope !238
  %i.zx = extractelement <4 x i8> %i.zr, i64 1
  store i8 %i.zx, ptr %i.zt, align 1, !tbaa !40, !alias.scope !238
  %i.zy = extractelement <4 x i8> %i.zr, i64 2
  store i8 %i.zy, ptr %i.zu, align 1, !tbaa !40, !alias.scope !238
  %i.zz = extractelement <4 x i8> %i.zr, i64 3
  store i8 %i.zz, ptr %i.zv, align 1, !tbaa !40, !alias.scope !238
  %i.aaa = udiv <4 x i32> %wide.load602, splat (i32 100000000)
  %i.aab = trunc nuw nsw <4 x i32> %i.aaa to <4 x i8>
  %i.aac = urem <4 x i8> %i.aab, splat (i8 10)
  %i.aad = or disjoint <4 x i8> %i.aac, splat (i8 48) ; 4 uses
  %i.aae = getelementptr i8, ptr %next.gep598, i64 -9
  %i.aaf = getelementptr i8, ptr %i.wc, i64 -18
  %i.aag = getelementptr i8, ptr %i.wd, i64 -27
  %i.aah = getelementptr i8, ptr %i.we, i64 -36
  %i.aai = extractelement <4 x i8> %i.aad, i64 0
  store i8 %i.aai, ptr %i.aae, align 1, !tbaa !40, !alias.scope !238
  %i.aaj = extractelement <4 x i8> %i.aad, i64 1
  store i8 %i.aaj, ptr %i.aaf, align 1, !tbaa !40, !alias.scope !238
  %i.aak = extractelement <4 x i8> %i.aad, i64 2
  store i8 %i.aak, ptr %i.aag, align 1, !tbaa !40, !alias.scope !238
  %i.aal = extractelement <4 x i8> %i.aad, i64 3
  store i8 %i.aal, ptr %i.aah, align 1, !tbaa !40, !alias.scope !238
  %index.next603 = add nuw i64 %index597, 4       ; 2 uses
  %i.aam = icmp eq i64 %index.next603, %n.vec595
  br i1 %i.aam, label %middle.block604, label %vector.body596, !llvm.loop !217

middle.block604:                                  ; preds = %vector.body596
  %cmp.n605 = icmp eq i64 %.2238, %n.vec595
  br i1 %cmp.n605, label %._crit_edge400, label %.lr.ph399.preheader764

.lr.ph399.preheader764:                           ; preds = %vector.memcheck586, %vector.scevcheck572, %.lr.ph399.preheader, %middle.block604
  %.1203398.ph = phi ptr [ %.0202, %vector.memcheck586 ], [ %.0202, %vector.scevcheck572 ], [ %.0202, %.lr.ph399.preheader ], [ %i.wa, %middle.block604 ]
  %.2232397.ph = phi i64 [ 0, %vector.memcheck586 ], [ 0, %vector.scevcheck572 ], [ 0, %.lr.ph399.preheader ], [ %n.vec595, %middle.block604 ]
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader764, %.lr.ph399
  %.1203398 = phi ptr [ %i.aay, %.lr.ph399 ], [ %.1203398.ph, %.lr.ph399.preheader764 ] ; 2 uses
  %.2232397 = phi i64 [ %i.abq, %.lr.ph399 ], [ %.2232397.ph, %.lr.ph399.preheader764 ] ; 2 uses
  %i.aan = getelementptr [4 x i8], ptr %i.ii, i64 %.2232397
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !26 ; 6 uses
  %i.aap = urem i32 %i.aao, 10
  %i.aaq = trunc nuw nsw i32 %i.aap to i8
  %i.aar = or disjoint i8 %i.aaq, 48
  %i.aas = getelementptr i8, ptr %.1203398, i64 -1
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !40
  %i.aat = udiv i32 %i.aao, 10000000
  %.lhs.trunc481 = trunc nuw nsw i32 %i.aat to i16
  %i.aau = urem i16 %.lhs.trunc481, 10
  %i.aav = trunc nuw nsw i16 %i.aau to i8
  %i.aaw = udiv i32 %i.aao, 100000000
  %.lhs.trunc483 = trunc nuw nsw i32 %i.aaw to i8
  %i.aax = urem i8 %.lhs.trunc483, 10
  %i.aay = getelementptr i8, ptr %.1203398, i64 -9 ; 3 uses
  %i.aaz = insertelement <4 x i32> poison, i32 %i.aao, i64 0
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abb = udiv <4 x i32> %i.aba, <i32 10000, i32 1000, i32 100, i32 10>
  %i.abc = urem <4 x i32> %i.abb, splat (i32 10)
  %i.abd = trunc nuw nsw <4 x i32> %i.abc to <4 x i8>
  %i.abe = udiv i32 %i.aao, 100000
  %.lhs.trunc477 = trunc nuw i32 %i.abe to i16
  %6 = udiv i32 %i.aao, 1000000
  %.lhs.trunc479 = trunc nuw nsw i32 %6 to i16
  %i.abf = insertelement <2 x i16> poison, i16 %.lhs.trunc479, i64 0
  %i.abg = insertelement <2 x i16> %i.abf, i16 %.lhs.trunc477, i64 1
  %i.abh = urem <2 x i16> %i.abg, splat (i16 10)
  %i.abi = insertelement <8 x i8> poison, i8 %i.aax, i64 0
  %i.abj = insertelement <8 x i8> %i.abi, i8 %i.aav, i64 1
  %i.abk = shufflevector <4 x i8> %i.abd, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abl = shufflevector <8 x i8> %i.abj, <8 x i8> %i.abk, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.abm = shufflevector <2 x i16> %i.abh, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abn = trunc <8 x i16> %i.abm to <8 x i8>
  %i.abo = shufflevector <8 x i8> %i.abl, <8 x i8> %i.abn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.abp = or disjoint <8 x i8> %i.abo, splat (i8 48)
  store <8 x i8> %i.abp, ptr %i.aay, align 1, !tbaa !40
  %i.abq = add nuw nsw i64 %.2232397, 1           ; 2 uses
  %exitcond433.not = icmp eq i64 %i.abq, %.2238
  br i1 %exitcond433.not, label %._crit_edge400, label %.lr.ph399, !llvm.loop !218

._crit_edge400:                                   ; preds = %.lr.ph399, %middle.block604, %_PyUnicode_DATA.exit304
  %.2232.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit304 ], [ %.2238, %middle.block604 ], [ %.2238, %.lr.ph399 ]
  %.1203.lcssa = phi ptr [ %.0202, %_PyUnicode_DATA.exit304 ], [ %i.wa, %middle.block604 ], [ %i.aay, %.lr.ph399 ]
  %i.abr = getelementptr [4 x i8], ptr %i.ii, i64 %.2232.lcssa
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %._crit_edge400
  %.3222 = phi i32 [ %i.abs, %._crit_edge400 ], [ %i.abx, %bb.bs ] ; 3 uses
  %.3205 = phi ptr [ %.1203.lcssa, %._crit_edge400 ], [ %i.abw, %bb.bs ] ; 2 uses
  %i.abt = urem i32 %.3222, 10
  %i.abu = trunc nuw nsw i32 %i.abt to i8
  %i.abv = or disjoint i8 %i.abu, 48
  %i.abw = getelementptr i8, ptr %.3205, i64 -1   ; 2 uses
  store i8 %i.abv, ptr %i.abw, align 1, !tbaa !40
  %i.abx = udiv i32 %.3222, 10
  %.not265 = icmp ult i32 %.3222, 10
  br i1 %.not265, label %bb.bt, label %bb.bs, !llvm.loop !219

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.h, label %bb.bu, label %bb.cp

bb.bu:                                            ; preds = %bb.bt
  %i.aby = getelementptr i8, ptr %.3205, i64 -2
  store i8 45, ptr %i.aby, align 1, !tbaa !40
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abz = load ptr, ptr %2, align 8, !tbaa !152  ; 3 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 32
  %.val.i305 = load i32, ptr %i.aca, align 8      ; 2 uses
  %i.acb = and i32 %.val.i305, 32
  %.not.i306 = icmp eq i32 %i.acb, 0
  br i1 %.not.i306, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.acc = and i32 %.val.i305, 64
  %.not.i.i307 = icmp eq i32 %i.acc, 0
  %.0.v.i.i308 = select i1 %.not.i.i307, i64 56, i64 40
  %.0.i.i309 = getelementptr i8, ptr %i.abz, i64 %.0.v.i.i308
  br label %_PyUnicode_DATA.exit312

bb.by:                                            ; preds = %bb.bw
  %i.acd = getelementptr i8, ptr %i.abz, i64 56
  %.val4.i311 = load ptr, ptr %i.acd, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit312

_PyUnicode_DATA.exit312:                          ; preds = %bb.bx, %bb.by
  %.0.i310 = phi ptr [ %.0.i.i309, %bb.bx ], [ %.val4.i311, %bb.by ]
  %i.ace = getelementptr i8, ptr %2, i64 32
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !146
  %i.acg = getelementptr [2 x i8], ptr %.0.i310, i64 %i.acf
  br label %_PyUnicode_DATA.exit320

bb.bz:                                            ; preds = %bb.bv
  %i.ach = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i313 = load i32, ptr %i.ach, align 8      ; 2 uses
  %i.aci = and i32 %.val.i313, 32
  %.not.i314 = icmp eq i32 %i.aci, 0
  br i1 %.not.i314, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.acj = and i32 %.val.i313, 64
  %.not.i.i315 = icmp eq i32 %i.acj, 0
  %.0.v.i.i316 = select i1 %.not.i.i315, i64 56, i64 40
  %.0.i.i317 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i316
  br label %_PyUnicode_DATA.exit320

bb.cb:                                            ; preds = %bb.bz
  %i.ack = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i319 = load ptr, ptr %i.ack, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit320

_PyUnicode_DATA.exit320:                          ; preds = %bb.cb, %bb.ca, %_PyUnicode_DATA.exit312
  %.pn262 = phi ptr [ %i.acg, %_PyUnicode_DATA.exit312 ], [ %.0.i.i317, %bb.ca ], [ %.val4.i319, %bb.cb ] ; 10 uses
  %.0198 = getelementptr [2 x i8], ptr %.pn262, i64 %.0235.lcssa ; 8 uses
  %i.acl = icmp sgt i64 %.2238, 0
  br i1 %i.acl, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %_PyUnicode_DATA.exit320
  %min.iters.check557 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check557, label %.lr.ph390.preheader766, label %vector.scevcheck542

vector.scevcheck542:                              ; preds = %.lr.ph390.preheader
  %umax543 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.acm = add i64 %umax543, -2
  %i.acn = shl i64 %.0235.lcssa, 1                ; 9 uses
  %i.aco = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %mul545 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.acm, i64 18) ; 2 uses
  %mul.result546 = extractvalue { i64, i1 } %mul545, 0 ; 9 uses
  %mul.overflow547 = extractvalue { i64, i1 } %mul545, 1
  %i.acp = sub i64 0, %mul.result546
  %i.acq = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.acr = sub i64 0, %mul.result546
  %i.acs = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.act = sub i64 0, %mul.result546
  %i.acu = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.acv = sub i64 0, %mul.result546
  %i.acw = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.acx = sub i64 0, %mul.result546
  %i.acy = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.acz = sub i64 0, %mul.result546
  %i.ada = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.adb = sub i64 0, %mul.result546
  %i.adc = getelementptr i8, ptr %.pn262, i64 %i.acn ; 2 uses
  %i.add = sub i64 0, %mul.result546
  %scevgep554 = getelementptr i8, ptr %i.adc, i64 -16
  %i.ade = insertelement <8 x ptr> poison, ptr %i.acq, i64 0
  %i.adf = insertelement <8 x ptr> %i.ade, ptr %i.aco, i64 1
  %i.adg = insertelement <8 x ptr> %i.adf, ptr %i.acs, i64 2
  %i.adh = insertelement <8 x ptr> %i.adg, ptr %i.acu, i64 3
  %i.adi = insertelement <8 x ptr> %i.adh, ptr %i.acw, i64 4
  %i.adj = insertelement <8 x ptr> %i.adi, ptr %i.acy, i64 5
  %i.adk = insertelement <8 x ptr> %i.adj, ptr %i.ada, i64 6
  %i.adl = insertelement <8 x ptr> %i.adk, ptr %i.adc, i64 7
  %i.adm = getelementptr i8, <8 x ptr> %i.adl, <8 x i64> <i64 -4, i64 -2, i64 -6, i64 -8, i64 -10, i64 -12, i64 -14, i64 -16>
  %scevgep553 = getelementptr i8, ptr %i.ada, i64 -14
  %scevgep552 = getelementptr i8, ptr %i.acy, i64 -12
  %scevgep551 = getelementptr i8, ptr %i.acw, i64 -10
  %scevgep550 = getelementptr i8, ptr %i.acu, i64 -8
  %scevgep549 = getelementptr i8, ptr %i.acs, i64 -6
  %scevgep544 = getelementptr i8, ptr %i.aco, i64 -2
  %scevgep548 = getelementptr i8, ptr %i.acq, i64 -4
  %i.adn = getelementptr i8, ptr %scevgep544, i64 %i.acp
  %i.ado = getelementptr i8, ptr %scevgep548, i64 %i.acr
  %i.adp = getelementptr i8, ptr %scevgep549, i64 %i.act
  %i.adq = getelementptr i8, ptr %scevgep550, i64 %i.acv
  %i.adr = getelementptr i8, ptr %scevgep551, i64 %i.acx
  %i.ads = getelementptr i8, ptr %scevgep552, i64 %i.acz
  %i.adt = getelementptr i8, ptr %scevgep553, i64 %i.adb
  %i.adu = getelementptr i8, ptr %scevgep554, i64 %i.add
  %i.adv = insertelement <8 x ptr> poison, ptr %i.ado, i64 0
  %i.adw = insertelement <8 x ptr> %i.adv, ptr %i.adn, i64 1
  %i.adx = insertelement <8 x ptr> %i.adw, ptr %i.adp, i64 2
  %i.ady = insertelement <8 x ptr> %i.adx, ptr %i.adq, i64 3
  %i.adz = insertelement <8 x ptr> %i.ady, ptr %i.adr, i64 4
  %i.aea = insertelement <8 x ptr> %i.adz, ptr %i.ads, i64 5
  %i.aeb = insertelement <8 x ptr> %i.aea, ptr %i.adt, i64 6
  %i.aec = insertelement <8 x ptr> %i.aeb, ptr %i.adu, i64 7
  %i.aed = icmp ugt <8 x ptr> %i.aec, %i.adm
  %i.aee = getelementptr i8, ptr %.pn262, i64 %i.acn
  %scevgep555 = getelementptr i8, ptr %i.aee, i64 -18 ; 2 uses
  %i.aef = sub i64 0, %mul.result546
  %i.aeg = getelementptr i8, ptr %scevgep555, i64 %i.aef
  %i.aeh = icmp ugt ptr %i.aeg, %scevgep555
  %i.aei = bitcast <8 x i1> %i.aed to i8
  %i.aej = icmp ne i8 %i.aei, 0
  %op.rdx733 = or i1 %mul.overflow547, %i.aej
  %op.rdx734 = or i1 %op.rdx733, %i.aeh
  br i1 %op.rdx734, label %.lr.ph390.preheader766, label %vector.ph558

vector.ph558:                                     ; preds = %vector.scevcheck542
  %n.vec559 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.aek = mul i64 %n.vec559, -18
  %i.ael = getelementptr i8, ptr %.0198, i64 %i.aek ; 2 uses
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next567, %vector.body560 ] ; 3 uses
  %i.aem = mul i64 %index561, -18                 ; 4 uses
  %next.gep562 = getelementptr i8, ptr %.0198, i64 %i.aem
  %i.aen = getelementptr i8, ptr %.0198, i64 %i.aem
  %i.aeo = getelementptr i8, ptr %.0198, i64 %i.aem
  %i.aep = getelementptr i8, ptr %.0198, i64 %i.aem ; 2 uses
  %i.aeq = getelementptr [4 x i8], ptr %i.ii, i64 %index561
  %wide.load566 = load <4 x i32>, ptr %i.aeq, align 4, !tbaa !26 ; 8 uses
  %wide.load566.frozen = freeze <4 x i32> %wide.load566 ; 2 uses
  %i.aer = udiv <4 x i32> %wide.load566.frozen, splat (i32 10) ; 2 uses
  %i.aes = mul <4 x i32> %i.aer, splat (i32 10)
  %.decomposed798 = sub <4 x i32> %wide.load566.frozen, %i.aes
  %i.aet = trunc nuw nsw <4 x i32> %.decomposed798 to <4 x i16>
  %i.aeu = or disjoint <4 x i16> %i.aet, splat (i16 48) ; 4 uses
  %i.aev = shufflevector <4 x i16> %i.aeu, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aew = getelementptr i8, ptr %i.aep, i64 -56
  %i.aex = urem <4 x i32> %i.aer, splat (i32 10)
  %i.aey = trunc nuw nsw <4 x i32> %i.aex to <4 x i16>
  %i.aez = or disjoint <4 x i16> %i.aey, splat (i16 48) ; 4 uses
  %i.afa = shufflevector <4 x i16> %i.aez, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afb = getelementptr i8, ptr %i.aeo, i64 -40
  %i.afc = udiv <4 x i32> %wide.load566, splat (i32 100)
  %i.afd = urem <4 x i32> %i.afc, splat (i32 10)
  %i.afe = trunc nuw nsw <4 x i32> %i.afd to <4 x i16>
  %i.aff = or disjoint <4 x i16> %i.afe, splat (i16 48) ; 4 uses
  %i.afg = shufflevector <4 x i16> %i.aff, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afh = shufflevector <4 x i16> %i.aff, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afi = getelementptr i8, ptr %i.aen, i64 -24
  %i.afj = udiv <4 x i32> %wide.load566, splat (i32 1000)
  %i.afk = urem <4 x i32> %i.afj, splat (i32 10)
  %i.afl = trunc nuw nsw <4 x i32> %i.afk to <4 x i16>
  %i.afm = or disjoint <4 x i16> %i.afl, splat (i16 48) ; 4 uses
  %i.afn = shufflevector <4 x i16> %i.afm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afo = shufflevector <4 x i16> %i.afm, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afp = shufflevector <4 x i16> %i.afm, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afq = getelementptr i8, ptr %next.gep562, i64 -8
  %i.afr = shufflevector <4 x i16> %i.afm, <4 x i16> %i.aff, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.afs = shufflevector <4 x i16> %i.afr, <4 x i16> %i.aez, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aft = shufflevector <4 x i16> %i.afs, <4 x i16> %i.aeu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.aft, ptr %i.afq, align 2, !tbaa !148
  %i.afu = udiv <4 x i32> %wide.load566, splat (i32 10000)
  %i.afv = urem <4 x i32> %i.afu, splat (i32 10)
  %i.afw = trunc nuw nsw <4 x i32> %i.afv to <4 x i16>
  %i.afx = or disjoint <4 x i16> %i.afw, splat (i16 48) ; 4 uses
  %i.afy = shufflevector <4 x i16> %i.afx, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afz = shufflevector <4 x i16> %i.afx, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aga = shufflevector <4 x i16> %i.afx, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agb = shufflevector <4 x i16> %i.afx, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agc = udiv <4 x i32> %wide.load566, splat (i32 100000)
  %i.agd = trunc nuw <4 x i32> %i.agc to <4 x i16>
  %i.age = urem <4 x i16> %i.agd, splat (i16 10)
  %i.agf = or disjoint <4 x i16> %i.age, splat (i16 48) ; 4 uses
  %i.agg = shufflevector <4 x i16> %i.agf, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agh = shufflevector <4 x i16> %i.agf, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agi = shufflevector <4 x i16> %i.agf, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agj = shufflevector <4 x i16> %i.agf, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agk = udiv <4 x i32> %wide.load566, splat (i32 1000000)
  %i.agl = trunc nuw nsw <4 x i32> %i.agk to <4 x i16>
  %i.agm = urem <4 x i16> %i.agl, splat (i16 10)
  %i.agn = or disjoint <4 x i16> %i.agm, splat (i16 48) ; 4 uses
  %i.ago = shufflevector <4 x i16> %i.agn, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agp = shufflevector <4 x i16> %i.agn, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agq = shufflevector <4 x i16> %i.agn, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agr = shufflevector <4 x i16> %i.agn, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ags = udiv <4 x i32> %wide.load566, splat (i32 10000000)
  %i.agt = trunc nuw nsw <4 x i32> %i.ags to <4 x i16>
  %i.agu = urem <4 x i16> %i.agt, splat (i16 10)
  %i.agv = or disjoint <4 x i16> %i.agu, splat (i16 48) ; 4 uses
  %i.agw = shufflevector <4 x i16> %i.agv, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agx = shufflevector <4 x i16> %i.agv, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agy = shufflevector <4 x i16> %i.agv, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agz = udiv <4 x i32> %wide.load566, splat (i32 100000000)
  %i.aha = trunc nuw nsw <4 x i32> %i.agz to <4 x i8>
  %i.ahb = urem <4 x i8> %i.aha, splat (i8 10)
  %i.ahc = or disjoint <4 x i8> %i.ahb, splat (i8 48)
  %i.ahd = zext nneg <4 x i8> %i.ahc to <4 x i16> ; 4 uses
  %i.ahe = shufflevector <4 x i16> %i.ahd, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahf = shufflevector <4 x i16> %i.ahd, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahg = getelementptr i8, ptr %i.aep, i64 -72
  %i.ahh = shufflevector <4 x i16> %i.aff, <4 x i16> %i.aez, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahi = shufflevector <8 x i16> %i.ahh, <8 x i16> %i.aev, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahj = shufflevector <8 x i16> %i.ahi, <8 x i16> %i.ahf, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahk = shufflevector <8 x i16> %i.ahj, <8 x i16> %i.agy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.ahl = shufflevector <8 x i16> %i.ahk, <8 x i16> %i.agr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.ahm = shufflevector <8 x i16> %i.ahl, <8 x i16> %i.agj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.ahn = shufflevector <8 x i16> %i.ahm, <8 x i16> %i.agb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.ahn, ptr %i.afi, align 2, !tbaa !148
  %i.aho = shufflevector <4 x i16> %i.aez, <4 x i16> %i.aeu, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahp = shufflevector <8 x i16> %i.aho, <8 x i16> %i.ahe, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahq = shufflevector <8 x i16> %i.ahp, <8 x i16> %i.agx, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahr = shufflevector <8 x i16> %i.ahq, <8 x i16> %i.agq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.ahs = shufflevector <8 x i16> %i.ahr, <8 x i16> %i.agi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.aht = shufflevector <8 x i16> %i.ahs, <8 x i16> %i.aga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.ahu = shufflevector <8 x i16> %i.aht, <8 x i16> %i.afp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.ahu, ptr %i.afb, align 2, !tbaa !148
  %i.ahv = shufflevector <4 x i16> %i.aeu, <4 x i16> %i.ahd, <8 x i32> <i32 3, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahw = shufflevector <8 x i16> %i.ahv, <8 x i16> %i.agw, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahx = shufflevector <8 x i16> %i.ahw, <8 x i16> %i.agp, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahy = shufflevector <8 x i16> %i.ahx, <8 x i16> %i.agh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.ahz = shufflevector <8 x i16> %i.ahy, <8 x i16> %i.afz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.aia = shufflevector <8 x i16> %i.ahz, <8 x i16> %i.afo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.aib = shufflevector <8 x i16> %i.aia, <8 x i16> %i.afh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.aib, ptr %i.aew, align 2, !tbaa !148
  %i.aic = shufflevector <4 x i16> %i.ahd, <4 x i16> %i.agv, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aid = shufflevector <8 x i16> %i.aic, <8 x i16> %i.ago, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aie = shufflevector <8 x i16> %i.aid, <8 x i16> %i.agg, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aif = shufflevector <8 x i16> %i.aie, <8 x i16> %i.afy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.aig = shufflevector <8 x i16> %i.aif, <8 x i16> %i.afn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.aih = shufflevector <8 x i16> %i.aig, <8 x i16> %i.afg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.aii = shufflevector <8 x i16> %i.aih, <8 x i16> %i.afa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.aii, ptr %i.ahg, align 2, !tbaa !148
  %index.next567 = add nuw i64 %index561, 4       ; 2 uses
  %i.aij = icmp eq i64 %index.next567, %n.vec559
  br i1 %i.aij, label %middle.block568, label %vector.body560, !llvm.loop !220

middle.block568:                                  ; preds = %vector.body560
  %cmp.n569 = icmp eq i64 %.2238, %n.vec559
  br i1 %cmp.n569, label %._crit_edge391, label %.lr.ph390.preheader766

.lr.ph390.preheader766:                           ; preds = %vector.scevcheck542, %.lr.ph390.preheader, %middle.block568
  %.1199389.ph = phi ptr [ %.0198, %vector.scevcheck542 ], [ %.0198, %.lr.ph390.preheader ], [ %i.ael, %middle.block568 ]
  %.3233388.ph = phi i64 [ 0, %vector.scevcheck542 ], [ 0, %.lr.ph390.preheader ], [ %n.vec559, %middle.block568 ]
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.preheader766, %.lr.ph390
  %.1199389 = phi ptr [ %i.aiv, %.lr.ph390 ], [ %.1199389.ph, %.lr.ph390.preheader766 ] ; 2 uses
  %.3233388 = phi i64 [ %i.ajn, %.lr.ph390 ], [ %.3233388.ph, %.lr.ph390.preheader766 ] ; 2 uses
  %i.aik = getelementptr [4 x i8], ptr %i.ii, i64 %.3233388
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !26 ; 6 uses
  %i.aim = urem i32 %i.ail, 10
  %i.ain = trunc nuw nsw i32 %i.aim to i16
  %i.aio = or disjoint i16 %i.ain, 48
  %i.aip = getelementptr i8, ptr %.1199389, i64 -2
  store i16 %i.aio, ptr %i.aip, align 2, !tbaa !148
  %i.aiq = udiv i32 %i.ail, 10000000
  %.lhs.trunc489 = trunc nuw nsw i32 %i.aiq to i16
  %i.air = urem i16 %.lhs.trunc489, 10
  %i.ais = udiv i32 %i.ail, 100000000
  %.lhs.trunc491 = trunc nuw nsw i32 %i.ais to i8
  %i.ait = urem i8 %.lhs.trunc491, 10
  %i.aiu = or disjoint i8 %i.ait, 48
  %i.aiv = getelementptr i8, ptr %.1199389, i64 -18 ; 3 uses
  %i.aiw = insertelement <4 x i32> poison, i32 %i.ail, i64 0
  %i.aix = shufflevector <4 x i32> %i.aiw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aiy = udiv <4 x i32> %i.aix, <i32 10000, i32 1000, i32 100, i32 10>
  %i.aiz = urem <4 x i32> %i.aiy, splat (i32 10)
  %i.aja = trunc nuw nsw <4 x i32> %i.aiz to <4 x i16>
  %i.ajb = udiv i32 %i.ail, 100000
  %.lhs.trunc485 = trunc nuw i32 %i.ajb to i16
  %7 = udiv i32 %i.ail, 1000000
  %.lhs.trunc487 = trunc nuw nsw i32 %7 to i16
  %i.ajc = insertelement <2 x i16> poison, i16 %.lhs.trunc487, i64 0
  %i.ajd = insertelement <2 x i16> %i.ajc, i16 %.lhs.trunc485, i64 1
  %i.aje = urem <2 x i16> %i.ajd, splat (i16 10)
  %i.ajf = zext nneg i8 %i.aiu to i16
  %i.ajg = insertelement <8 x i16> poison, i16 %i.ajf, i64 0
  %i.ajh = insertelement <8 x i16> %i.ajg, i16 %i.air, i64 1
  %i.aji = shufflevector <4 x i16> %i.aja, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajj = shufflevector <8 x i16> %i.ajh, <8 x i16> %i.aji, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ajk = shufflevector <2 x i16> %i.aje, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajl = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.ajk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.ajm = or disjoint <8 x i16> %i.ajl, <i16 0, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48>
  store <8 x i16> %i.ajm, ptr %i.aiv, align 2, !tbaa !148
  %i.ajn = add nuw nsw i64 %.3233388, 1           ; 2 uses
  %exitcond431.not = icmp eq i64 %i.ajn, %.2238
  br i1 %exitcond431.not, label %._crit_edge391, label %.lr.ph390, !llvm.loop !221

._crit_edge391:                                   ; preds = %.lr.ph390, %middle.block568, %_PyUnicode_DATA.exit320
  %.3233.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit320 ], [ %.2238, %middle.block568 ], [ %.2238, %.lr.ph390 ]
  %.1199.lcssa = phi ptr [ %.0198, %_PyUnicode_DATA.exit320 ], [ %i.ael, %middle.block568 ], [ %i.aiv, %.lr.ph390 ]
  %i.ajo = getelementptr [4 x i8], ptr %i.ii, i64 %.3233.lcssa
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !26
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %._crit_edge391
  %.5224 = phi i32 [ %i.ajp, %._crit_edge391 ], [ %i.aju, %bb.cc ] ; 3 uses
  %.3201 = phi ptr [ %.1199.lcssa, %._crit_edge391 ], [ %i.ajt, %bb.cc ] ; 2 uses
  %i.ajq = urem i32 %.5224, 10
  %i.ajr = trunc nuw nsw i32 %i.ajq to i16
  %i.ajs = or disjoint i16 %i.ajr, 48
  %i.ajt = getelementptr i8, ptr %.3201, i64 -2   ; 2 uses
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !148
  %i.aju = udiv i32 %.5224, 10
  %.not263 = icmp ult i32 %.5224, 10
  br i1 %.not263, label %bb.cd, label %bb.cc, !llvm.loop !222

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.h, label %bb.ce, label %bb.cp

bb.ce:                                            ; preds = %bb.cd
  %i.ajv = getelementptr i8, ptr %.3201, i64 -4
  store i16 45, ptr %i.ajv, align 2, !tbaa !148
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bk
  br i1 %.not258, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ajw = load ptr, ptr %2, align 8, !tbaa !152  ; 3 uses
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 32
  %.val.i321 = load i32, ptr %i.ajx, align 8      ; 2 uses
  %i.ajy = and i32 %.val.i321, 32
  %.not.i322 = icmp eq i32 %i.ajy, 0
  br i1 %.not.i322, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ajz = and i32 %.val.i321, 64
  %.not.i.i323 = icmp eq i32 %i.ajz, 0
  %.0.v.i.i324 = select i1 %.not.i.i323, i64 56, i64 40
  %.0.i.i325 = getelementptr i8, ptr %i.ajw, i64 %.0.v.i.i324
  br label %_PyUnicode_DATA.exit328

bb.ci:                                            ; preds = %bb.cg
  %i.aka = getelementptr i8, ptr %i.ajw, i64 56
  %.val4.i327 = load ptr, ptr %i.aka, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit328

_PyUnicode_DATA.exit328:                          ; preds = %bb.ch, %bb.ci
  %.0.i326 = phi ptr [ %.0.i.i325, %bb.ch ], [ %.val4.i327, %bb.ci ]
  %i.akb = getelementptr i8, ptr %2, i64 32
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !146
  %i.akd = getelementptr [4 x i8], ptr %.0.i326, i64 %i.akc
  br label %_PyUnicode_DATA.exit336

bb.cj:                                            ; preds = %bb.cf
  %i.ake = getelementptr i8, ptr %.0239342355, i64 32
  %.val.i329 = load i32, ptr %i.ake, align 8      ; 2 uses
  %i.akf = and i32 %.val.i329, 32
  %.not.i330 = icmp eq i32 %i.akf, 0
  br i1 %.not.i330, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.akg = and i32 %.val.i329, 64
  %.not.i.i331 = icmp eq i32 %i.akg, 0
  %.0.v.i.i332 = select i1 %.not.i.i331, i64 56, i64 40
  %.0.i.i333 = getelementptr i8, ptr %.0239342355, i64 %.0.v.i.i332
  br label %_PyUnicode_DATA.exit336

bb.cl:                                            ; preds = %bb.cj
  %i.akh = getelementptr i8, ptr %.0239342355, i64 56
  %.val4.i335 = load ptr, ptr %i.akh, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit336

_PyUnicode_DATA.exit336:                          ; preds = %bb.cl, %bb.ck, %_PyUnicode_DATA.exit328
  %.pn = phi ptr [ %i.akd, %_PyUnicode_DATA.exit328 ], [ %.0.i.i333, %bb.ck ], [ %.val4.i335, %bb.cl ] ; 11 uses
  %.0 = getelementptr [4 x i8], ptr %.pn, i64 %.0235.lcssa ; 10 uses
  %i.aki = icmp sgt i64 %.2238, 0
  br i1 %i.aki, label %.lr.ph408.preheader, label %._crit_edge409

.lr.ph408.preheader:                              ; preds = %_PyUnicode_DATA.exit336
  %min.iters.check629 = icmp ult i64 %.2238, 8
  br i1 %min.iters.check629, label %.lr.ph408.preheader762, label %vector.scevcheck608

vector.scevcheck608:                              ; preds = %.lr.ph408.preheader
  %umax609 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %i.akj = add i64 %umax609, -2
  %i.akk = shl i64 %.0235.lcssa, 2                ; 9 uses
  %i.akl = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %mul611 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.akj, i64 36) ; 2 uses
  %mul.result612 = extractvalue { i64, i1 } %mul611, 0 ; 9 uses
  %mul.overflow613 = extractvalue { i64, i1 } %mul611, 1
  %i.akm = sub i64 0, %mul.result612
  %i.akn = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.ako = sub i64 0, %mul.result612
  %i.akp = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.akq = sub i64 0, %mul.result612
  %i.akr = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.aks = sub i64 0, %mul.result612
  %i.akt = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.aku = sub i64 0, %mul.result612
  %i.akv = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.akw = sub i64 0, %mul.result612
  %i.akx = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.aky = sub i64 0, %mul.result612
  %i.akz = getelementptr i8, ptr %.pn, i64 %i.akk ; 2 uses
  %i.ala = sub i64 0, %mul.result612
  %scevgep620 = getelementptr i8, ptr %i.akz, i64 -32
  %i.alb = insertelement <8 x ptr> poison, ptr %i.akn, i64 0
  %i.alc = insertelement <8 x ptr> %i.alb, ptr %i.akl, i64 1
  %i.ald = insertelement <8 x ptr> %i.alc, ptr %i.akp, i64 2
  %i.ale = insertelement <8 x ptr> %i.ald, ptr %i.akr, i64 3
  %i.alf = insertelement <8 x ptr> %i.ale, ptr %i.akt, i64 4
  %i.alg = insertelement <8 x ptr> %i.alf, ptr %i.akv, i64 5
  %i.alh = insertelement <8 x ptr> %i.alg, ptr %i.akx, i64 6
  %i.ali = insertelement <8 x ptr> %i.alh, ptr %i.akz, i64 7
  %i.alj = getelementptr i8, <8 x ptr> %i.ali, <8 x i64> <i64 -8, i64 -4, i64 -12, i64 -16, i64 -20, i64 -24, i64 -28, i64 -32>
  %scevgep619 = getelementptr i8, ptr %i.akx, i64 -28
  %scevgep618 = getelementptr i8, ptr %i.akv, i64 -24
  %scevgep617 = getelementptr i8, ptr %i.akt, i64 -20
  %scevgep616 = getelementptr i8, ptr %i.akr, i64 -16
  %scevgep615 = getelementptr i8, ptr %i.akp, i64 -12
  %scevgep610 = getelementptr i8, ptr %i.akl, i64 -4
  %scevgep614 = getelementptr i8, ptr %i.akn, i64 -8
  %i.alk = getelementptr i8, ptr %scevgep610, i64 %i.akm
  %i.all = getelementptr i8, ptr %scevgep614, i64 %i.ako
  %i.alm = getelementptr i8, ptr %scevgep615, i64 %i.akq
  %i.aln = getelementptr i8, ptr %scevgep616, i64 %i.aks
  %i.alo = getelementptr i8, ptr %scevgep617, i64 %i.aku
  %i.alp = getelementptr i8, ptr %scevgep618, i64 %i.akw
  %i.alq = getelementptr i8, ptr %scevgep619, i64 %i.aky
  %i.alr = getelementptr i8, ptr %scevgep620, i64 %i.ala
  %i.als = insertelement <8 x ptr> poison, ptr %i.all, i64 0
  %i.alt = insertelement <8 x ptr> %i.als, ptr %i.alk, i64 1
  %i.alu = insertelement <8 x ptr> %i.alt, ptr %i.alm, i64 2
  %i.alv = insertelement <8 x ptr> %i.alu, ptr %i.aln, i64 3
  %i.alw = insertelement <8 x ptr> %i.alv, ptr %i.alo, i64 4
  %i.alx = insertelement <8 x ptr> %i.alw, ptr %i.alp, i64 5
  %i.aly = insertelement <8 x ptr> %i.alx, ptr %i.alq, i64 6
  %i.alz = insertelement <8 x ptr> %i.aly, ptr %i.alr, i64 7
  %i.ama = icmp ugt <8 x ptr> %i.alz, %i.alj
  %i.amb = getelementptr i8, ptr %.pn, i64 %i.akk
  %scevgep621 = getelementptr i8, ptr %i.amb, i64 -36 ; 2 uses
  %i.amc = sub i64 0, %mul.result612
  %i.amd = getelementptr i8, ptr %scevgep621, i64 %i.amc
  %i.ame = icmp ugt ptr %i.amd, %scevgep621
  %i.amf = bitcast <8 x i1> %i.ama to i8
  %i.amg = icmp ne i8 %i.amf, 0
  %op.rdx = or i1 %mul.overflow613, %i.amg
  %op.rdx730 = or i1 %op.rdx, %i.ame
  br i1 %op.rdx730, label %.lr.ph408.preheader762, label %vector.memcheck622

vector.memcheck622:                               ; preds = %vector.scevcheck608
  %i.amh = shl i64 %.0235.lcssa, 2
  %umax623 = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg728 = mul i64 %umax623, -36
  %i.ami = getelementptr i8, ptr %.pn, i64 %.neg728
  %i.amj = getelementptr i8, ptr %i.ami, i64 %i.amh
  %scevgep624 = getelementptr i8, ptr %i.amj, i64 36
  %bound0625 = icmp ult ptr %i.ii, %.0
  %bound1626 = icmp ult ptr %scevgep624, %i.jm
  %found.conflict627 = and i1 %bound0625, %bound1626
  br i1 %found.conflict627, label %.lr.ph408.preheader762, label %vector.ph630

vector.ph630:                                     ; preds = %vector.memcheck622
  %n.vec631 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.amk = mul i64 %n.vec631, -36
  %i.aml = getelementptr i8, ptr %.0, i64 %i.amk  ; 2 uses
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph630
  %index633 = phi i64 [ 0, %vector.ph630 ], [ %index.next639, %vector.body632 ] ; 3 uses
  %i.amm = mul i64 %index633, -36                 ; 4 uses
  %next.gep634 = getelementptr i8, ptr %.0, i64 %i.amm ; 4 uses
  %i.amn = getelementptr i8, ptr %.0, i64 %i.amm  ; 5 uses
  %i.amo = getelementptr i8, ptr %.0, i64 %i.amm  ; 4 uses
  %i.amp = getelementptr i8, ptr %.0, i64 %i.amm  ; 5 uses
  %i.amq = getelementptr [4 x i8], ptr %i.ii, i64 %index633
  %wide.load638 = load <4 x i32>, ptr %i.amq, align 4, !tbaa !26, !alias.scope !239, !noalias !240 ; 8 uses
  %wide.load638.frozen = freeze <4 x i32> %wide.load638 ; 2 uses
  %i.amr = udiv <4 x i32> %wide.load638.frozen, splat (i32 10) ; 2 uses
  %i.ams = mul <4 x i32> %i.amr, splat (i32 10)
  %.decomposed799 = sub <4 x i32> %wide.load638.frozen, %i.ams
  %i.amt = or disjoint <4 x i32> %.decomposed799, splat (i32 48) ; 4 uses
  %i.amu = getelementptr i8, ptr %i.amn, i64 -40
  %i.amv = getelementptr i8, ptr %i.amp, i64 -112
  %i.amw = urem <4 x i32> %i.amr, splat (i32 10)
  %i.amx = or disjoint <4 x i32> %i.amw, splat (i32 48) ; 4 uses
  %i.amy = getelementptr i8, ptr %next.gep634, i64 -8
  %i.amz = getelementptr i8, ptr %i.amo, i64 -80
  %i.ana = shufflevector <4 x i32> %i.amx, <4 x i32> %i.amt, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.ana, ptr %i.amy, align 4, !tbaa !26, !alias.scope !240
  %i.anb = shufflevector <4 x i32> %i.amx, <4 x i32> %i.amt, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.anb, ptr %i.amz, align 4, !tbaa !26, !alias.scope !240
  %i.anc = udiv <4 x i32> %wide.load638, splat (i32 100)
  %i.and = urem <4 x i32> %i.anc, splat (i32 10)
  %i.ane = or disjoint <4 x i32> %i.and, splat (i32 48) ; 4 uses
  %i.anf = getelementptr i8, ptr %i.amn, i64 -48
  %i.ang = getelementptr i8, ptr %i.amp, i64 -120
  %i.anh = shufflevector <4 x i32> %i.ane, <4 x i32> %i.amx, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.anh, ptr %i.anf, align 4, !tbaa !26, !alias.scope !240
  %i.ani = shufflevector <4 x i32> %i.ane, <4 x i32> %i.amx, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.ani, ptr %i.ang, align 4, !tbaa !26, !alias.scope !240
  %i.anj = udiv <4 x i32> %wide.load638, splat (i32 1000)
  %i.ank = urem <4 x i32> %i.anj, splat (i32 10)
  %i.anl = or disjoint <4 x i32> %i.ank, splat (i32 48) ; 4 uses
  %i.anm = getelementptr i8, ptr %next.gep634, i64 -16
  %i.ann = getelementptr i8, ptr %i.amo, i64 -88
  %i.ano = shufflevector <4 x i32> %i.anl, <4 x i32> %i.ane, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.ano, ptr %i.anm, align 4, !tbaa !26, !alias.scope !240
  %i.anp = shufflevector <4 x i32> %i.anl, <4 x i32> %i.ane, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.anp, ptr %i.ann, align 4, !tbaa !26, !alias.scope !240
  %i.anq = udiv <4 x i32> %wide.load638, splat (i32 10000)
  %i.anr = urem <4 x i32> %i.anq, splat (i32 10)
  %i.ans = or disjoint <4 x i32> %i.anr, splat (i32 48) ; 4 uses
  %i.ant = getelementptr i8, ptr %i.amn, i64 -56
  %i.anu = getelementptr i8, ptr %i.amp, i64 -128
  %i.anv = shufflevector <4 x i32> %i.ans, <4 x i32> %i.anl, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.anv, ptr %i.ant, align 4, !tbaa !26, !alias.scope !240
  %i.anw = shufflevector <4 x i32> %i.ans, <4 x i32> %i.anl, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.anw, ptr %i.anu, align 4, !tbaa !26, !alias.scope !240
  %i.anx = udiv <4 x i32> %wide.load638, splat (i32 100000)
  %i.any = trunc nuw <4 x i32> %i.anx to <4 x i16>
  %i.anz = urem <4 x i16> %i.any, splat (i16 10)
  %i.aoa = or disjoint <4 x i16> %i.anz, splat (i16 48)
  %i.aob = zext nneg <4 x i16> %i.aoa to <4 x i32> ; 4 uses
  %i.aoc = getelementptr i8, ptr %next.gep634, i64 -24
  %i.aod = getelementptr i8, ptr %i.amo, i64 -96
  %i.aoe = shufflevector <4 x i32> %i.aob, <4 x i32> %i.ans, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aoe, ptr %i.aoc, align 4, !tbaa !26, !alias.scope !240
  %i.aof = shufflevector <4 x i32> %i.aob, <4 x i32> %i.ans, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.aof, ptr %i.aod, align 4, !tbaa !26, !alias.scope !240
  %i.aog = udiv <4 x i32> %wide.load638, splat (i32 1000000)
  %i.aoh = trunc nuw nsw <4 x i32> %i.aog to <4 x i16>
  %i.aoi = urem <4 x i16> %i.aoh, splat (i16 10)
  %i.aoj = or disjoint <4 x i16> %i.aoi, splat (i16 48)
  %i.aok = zext nneg <4 x i16> %i.aoj to <4 x i32> ; 4 uses
  %i.aol = getelementptr i8, ptr %i.amn, i64 -64
  %i.aom = getelementptr i8, ptr %i.amp, i64 -136
  %i.aon = shufflevector <4 x i32> %i.aok, <4 x i32> %i.aob, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.aon, ptr %i.aol, align 4, !tbaa !26, !alias.scope !240
  %i.aoo = shufflevector <4 x i32> %i.aok, <4 x i32> %i.aob, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.aoo, ptr %i.aom, align 4, !tbaa !26, !alias.scope !240
  %i.aop = udiv <4 x i32> %wide.load638, splat (i32 10000000)
  %i.aoq = trunc nuw nsw <4 x i32> %i.aop to <4 x i16>
  %i.aor = urem <4 x i16> %i.aoq, splat (i16 10)
  %i.aos = or disjoint <4 x i16> %i.aor, splat (i16 48)
  %i.aot = zext nneg <4 x i16> %i.aos to <4 x i32> ; 4 uses
  %i.aou = getelementptr i8, ptr %next.gep634, i64 -32
  %i.aov = getelementptr i8, ptr %i.amo, i64 -104
  %i.aow = shufflevector <4 x i32> %i.aot, <4 x i32> %i.aok, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aow, ptr %i.aou, align 4, !tbaa !26, !alias.scope !240
  %i.aox = shufflevector <4 x i32> %i.aot, <4 x i32> %i.aok, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.aox, ptr %i.aov, align 4, !tbaa !26, !alias.scope !240
  %i.aoy = udiv <4 x i32> %wide.load638, splat (i32 100000000)
  %i.aoz = trunc nuw nsw <4 x i32> %i.aoy to <4 x i8>
  %i.apa = urem <4 x i8> %i.aoz, splat (i8 10)
  %i.apb = or disjoint <4 x i8> %i.apa, splat (i8 48)
  %i.apc = zext nneg <4 x i8> %i.apb to <4 x i32> ; 4 uses
  %i.apd = getelementptr i8, ptr %i.amn, i64 -72
  %i.ape = getelementptr i8, ptr %i.amp, i64 -144
  %i.apf = shufflevector <4 x i32> %i.amt, <4 x i32> %i.apc, <2 x i32> <i32 1, i32 4>
  store <2 x i32> %i.apf, ptr %i.amu, align 4, !tbaa !26, !alias.scope !240
  %i.apg = shufflevector <4 x i32> %i.apc, <4 x i32> %i.aot, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.apg, ptr %i.apd, align 4, !tbaa !26, !alias.scope !240
  %i.aph = shufflevector <4 x i32> %i.amt, <4 x i32> %i.apc, <2 x i32> <i32 3, i32 6>
  store <2 x i32> %i.aph, ptr %i.amv, align 4, !tbaa !26, !alias.scope !240
  %i.api = shufflevector <4 x i32> %i.apc, <4 x i32> %i.aot, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.api, ptr %i.ape, align 4, !tbaa !26, !alias.scope !240
  %index.next639 = add nuw i64 %index633, 4       ; 2 uses
  %i.apj = icmp eq i64 %index.next639, %n.vec631
  br i1 %i.apj, label %middle.block640, label %vector.body632, !llvm.loop !226

middle.block640:                                  ; preds = %vector.body632
  %cmp.n641 = icmp eq i64 %.2238, %n.vec631
  br i1 %cmp.n641, label %._crit_edge409, label %.lr.ph408.preheader762

.lr.ph408.preheader762:                           ; preds = %vector.memcheck622, %vector.scevcheck608, %.lr.ph408.preheader, %middle.block640
  %.1407.ph = phi ptr [ %.0, %vector.memcheck622 ], [ %.0, %vector.scevcheck608 ], [ %.0, %.lr.ph408.preheader ], [ %i.aml, %middle.block640 ]
  %.4234406.ph = phi i64 [ 0, %vector.memcheck622 ], [ 0, %vector.scevcheck608 ], [ 0, %.lr.ph408.preheader ], [ %n.vec631, %middle.block640 ]
  br label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.preheader762, %.lr.ph408
  %.1407 = phi ptr [ %i.aqm, %.lr.ph408 ], [ %.1407.ph, %.lr.ph408.preheader762 ] ; 5 uses
  %.4234406 = phi i64 [ %i.aqn, %.lr.ph408 ], [ %.4234406.ph, %.lr.ph408.preheader762 ] ; 2 uses
  %i.apk = getelementptr [4 x i8], ptr %i.ii, i64 %.4234406
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !26 ; 6 uses
  %i.apm = urem i32 %i.apl, 10
  %i.apn = or disjoint i32 %i.apm, 48
  %i.apo = getelementptr i8, ptr %.1407, i64 -4
  store i32 %i.apn, ptr %i.apo, align 4, !tbaa !26
  %i.app = getelementptr i8, ptr %.1407, i64 -20
  %i.apq = insertelement <4 x i32> poison, i32 %i.apl, i64 0
  %i.apr = shufflevector <4 x i32> %i.apq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aps = udiv <4 x i32> %i.apr, <i32 10000, i32 1000, i32 100, i32 10>
  %i.apt = urem <4 x i32> %i.aps, splat (i32 10)
  %i.apu = or disjoint <4 x i32> %i.apt, splat (i32 48)
  store <4 x i32> %i.apu, ptr %i.app, align 4, !tbaa !26
  %i.apv = udiv i32 %i.apl, 100000
  %.lhs.trunc469 = trunc nuw i32 %i.apv to i16
  %i.apw = urem i16 %.lhs.trunc469, 10
  %i.apx = or disjoint i16 %i.apw, 48
  %i.apy = zext nneg i16 %i.apx to i32
  %i.apz = getelementptr i8, ptr %.1407, i64 -24
  store i32 %i.apy, ptr %i.apz, align 4, !tbaa !26
  %i.aqa = getelementptr i8, ptr %.1407, i64 -32
  %i.aqb = udiv i32 %i.apl, 1000000
  %.lhs.trunc471 = trunc nuw nsw i32 %i.aqb to i16
  %8 = udiv i32 %i.apl, 10000000
  %.lhs.trunc473 = trunc nuw nsw i32 %8 to i16
  %i.aqc = insertelement <2 x i16> poison, i16 %.lhs.trunc473, i64 0
  %i.aqd = insertelement <2 x i16> %i.aqc, i16 %.lhs.trunc471, i64 1
  %i.aqe = urem <2 x i16> %i.aqd, splat (i16 10)
  %i.aqf = trunc nuw nsw <2 x i16> %i.aqe to <2 x i8>
  %i.aqg = or disjoint <2 x i8> %i.aqf, splat (i8 48)
  %i.aqh = zext nneg <2 x i8> %i.aqg to <2 x i32>
  store <2 x i32> %i.aqh, ptr %i.aqa, align 4, !tbaa !26
  %i.aqi = udiv i32 %i.apl, 100000000
  %.lhs.trunc475 = trunc nuw nsw i32 %i.aqi to i8
  %i.aqj = urem i8 %.lhs.trunc475, 10
  %i.aqk = or disjoint i8 %i.aqj, 48
  %i.aql = zext nneg i8 %i.aqk to i32
  %i.aqm = getelementptr i8, ptr %.1407, i64 -36  ; 3 uses
  store i32 %i.aql, ptr %i.aqm, align 4, !tbaa !26
  %i.aqn = add nuw nsw i64 %.4234406, 1           ; 2 uses
  %exitcond435.not = icmp eq i64 %i.aqn, %.2238
  br i1 %exitcond435.not, label %._crit_edge409, label %.lr.ph408, !llvm.loop !227

._crit_edge409:                                   ; preds = %.lr.ph408, %middle.block640, %_PyUnicode_DATA.exit336
  %.4234.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit336 ], [ %.2238, %middle.block640 ], [ %.2238, %.lr.ph408 ]
  %.1.lcssa = phi ptr [ %.0, %_PyUnicode_DATA.exit336 ], [ %i.aml, %middle.block640 ], [ %i.aqm, %.lr.ph408 ]
  %i.aqo = getelementptr [4 x i8], ptr %i.ii, i64 %.4234.lcssa
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %._crit_edge409
  %.7 = phi i32 [ %i.aqp, %._crit_edge409 ], [ %i.aqt, %bb.cm ] ; 3 uses
  %.3 = phi ptr [ %.1.lcssa, %._crit_edge409 ], [ %i.aqs, %bb.cm ] ; 2 uses
  %i.aqq = urem i32 %.7, 10
  %i.aqr = or disjoint i32 %i.aqq, 48
  %i.aqs = getelementptr i8, ptr %.3, i64 -4      ; 2 uses
  store i32 %i.aqr, ptr %i.aqs, align 4, !tbaa !26
  %i.aqt = udiv i32 %.7, 10
  %.not261 = icmp ult i32 %.7, 10
  br i1 %.not261, label %bb.cn, label %bb.cm, !llvm.loop !228

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.h, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aqu = getelementptr i8, ptr %.3, i64 -8
  store i32 45, ptr %i.aqu, align 4, !tbaa !26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.bt, %bb.bu, %bb.cd, %bb.ce, %bb.cn, %bb.co, %bb.bg, %bb.bh
  %.not260343 = phi i1 [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cn ], [ true, %bb.co ], [ false, %bb.bg ], [ false, %bb.bh ]
  %.0239341 = phi ptr [ %.0239342355, %bb.bt ], [ %.0239342355, %bb.bu ], [ %.0239342355, %bb.cd ], [ %.0239342355, %bb.ce ], [ %.0239342355, %bb.cn ], [ %.0239342355, %bb.co ], [ null, %bb.bg ], [ null, %bb.bh ]
  %i.aqv = load i32, ptr %i.if, align 8, !tbaa !40 ; 2 uses
  %.not.i.i337 = icmp sgt i32 %i.aqv, -1
  br i1 %.not.i.i337, label %bb.cq, label %_Py_DECREF_INT.exit

bb.cq:                                            ; preds = %bb.cp
  %i.aqw = add nsw i32 %i.aqv, -1                 ; 2 uses
  store i32 %i.aqw, ptr %i.if, align 8, !tbaa !40
  %.not9.i.i = icmp eq i32 %i.aqw, 0
  br i1 %.not9.i.i, label %bb.cr, label %_Py_DECREF_INT.exit

bb.cr:                                            ; preds = %bb.cq
  %i.aqx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.aqx, null
  br i1 %.not10.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aqy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !55
  %i.aqz = tail call i32 %i.aqx(ptr noundef nonnull %i.if, i32 noundef 1, ptr noundef %i.aqy) #16, !inline_history !3 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ara = getelementptr i8, ptr %i.if, i64 16
  %.val6.i.i.i = load i64, ptr %i.ara, align 8, !tbaa !43 ; 2 uses
  %i.arb = and i64 %.val6.i.i.i, 4
  %.not.i.i.i338 = icmp eq i64 %i.arb, 0
  br i1 %.not.i.i.i338, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

bb.cv:                                            ; preds = %bb.ct
  %i.arc = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.arc, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ard = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !31 ; 2 uses
  %i.arf = getelementptr i8, ptr %i.are, i64 11208 ; 2 uses
  %i.arg = load i64, ptr %i.arf, align 8, !tbaa !36 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.arg, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.cx

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.cw
  %i.arh = getelementptr i8, ptr %i.are, i64 11200 ; 2 uses
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !34
  store ptr %i.ari, ptr %i.if, align 8, !tbaa !35
  store ptr %i.if, ptr %i.arh, align 8, !tbaa !34
  %i.arj = add nuw nsw i64 %i.arg, 1
  store i64 %i.arj, ptr %i.arf, align 8, !tbaa !36
  br label %_Py_DECREF_INT.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @PyObject_Free(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

bb.cy:                                            ; preds = %bb.cv
  tail call void @PyObject_Free(ptr noundef nonnull %i.if) #16
  br label %_Py_DECREF_INT.exit

_Py_DECREF_INT.exit:                              ; preds = %bb.cp, %bb.cq, %bb.cu, %_PyFreeList_Push.exit.i.i.i.i, %bb.cx, %bb.cy
  br i1 %.not258, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_Py_DECREF_INT.exit
  %i.ark = getelementptr i8, ptr %2, i64 32       ; 2 uses
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !146
  %i.arm = add i64 %i.arl, %.0235.lcssa
  store i64 %i.arm, ptr %i.ark, align 8, !tbaa !146
  br label %pylong_int_to_decimal_string.exit

bb.da:                                            ; preds = %_Py_DECREF_INT.exit
  br i1 %.not260343, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.arn = load ptr, ptr %4, align 8, !tbaa !147
  %i.aro = getelementptr i8, ptr %i.arn, i64 %.0235.lcssa
  store ptr %i.aro, ptr %4, align 8, !tbaa !147
  br label %pylong_int_to_decimal_string.exit

bb.dc:                                            ; preds = %bb.da
  store ptr %.0239341, ptr %1, align 8, !tbaa !29
  br label %pylong_int_to_decimal_string.exit

pylong_int_to_decimal_string.exit:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.ah, %bb.ag, %bb.af, %Py_XDECREF.exit.sink.split.i, %bb.ad, %Py_DECREF.exit57.i, %bb.z, %bb.y, %Py_DECREF.exit59.i, %bb.h, %bb.cz, %bb.dc, %bb.db, %Py_DECREF.exit281, %.thread, %.critedge, %bb.c
  %.5 = phi i32 [ -1, %bb.c ], [ 0, %bb.cz ], [ -1, %.critedge ], [ %.0.ph.i, %Py_XDECREF.exit.sink.split.i ], [ -1, %bb.ah ], [ -1, %.thread ], [ -1, %bb.av ], [ -1, %bb.ba ], [ -1, %Py_DECREF.exit281 ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ad ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit59.i ], [ -1, %bb.y ], [ -1, %bb.z ], [ 0, %Py_DECREF.exit57.i ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_format_binary(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 11, 10) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val276, i64 168
  %.val277 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val277, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2342) #16
  br label %bb.bs

switch.lookup:                                    ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.f = lshr i64 %.val, 3                        ; 10 uses
  %i.g = and i64 %.val, 3
  %i.h = icmp eq i64 %i.g, 2                      ; 5 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr i8, ptr @switch.table.long_format_binary, i64 %i.i
  %switch.gep = getelementptr i8, ptr %i.j, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1 ; 6 uses
  %switch.ext = zext i8 %switch.load to i32       ; 9 uses
  %i.k = icmp eq i64 %i.f, 0                      ; 5 uses
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.l = icmp ult i64 %.val, 2459565876494606888
  br i1 %i.l, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.m = add nsw i64 %i.f, -1                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 30
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = zext i1 %i.h to i64
  %i.v = add nsw i32 %switch.ext, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.n, %i.w
  %i.y = add nuw nsw i64 %i.x, %i.t
  %i.z = zext i8 %switch.load to i64
  %i.aa = udiv i64 %i.y, %i.z
  %i.ab = add nuw nsw i64 %i.aa, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.42) #16
  br label %bb.bs

bb.f:                                             ; preds = %.thread, %switch.lookup
  %.1237 = phi i64 [ %i.ab, %.thread ], [ 1, %switch.lookup ] ; 2 uses
  %.not267 = icmp eq i32 %2, 0                    ; 5 uses
end_hunk_1
