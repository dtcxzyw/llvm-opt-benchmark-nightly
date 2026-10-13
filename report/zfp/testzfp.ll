Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
inline.NumInlined: 3089
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_Z8refine3dPiPKim:bb.a
  %i.nv = add i64 %i.nu, %i.me
  %i.nw = mul i64 %i.nv, %2
  %invariant.gep.2.2 = getelementptr [4 x i8], ptr %1, i64 %i.nw ; 4 uses
  %gep.2105.2 = getelementptr [4 x i8], ptr %invariant.gep.2.2, i64 %i.fy
  %i.nx = load i32, ptr %gep.2105.2, align 4, !tbaa !39
  %i.ny = sext i32 %i.nx to i64
  %i.nz = mul nsw i64 %i.ny, -81
  %i.oa = add nsw i64 %i.nz, %i.ns
  %gep.1.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2.2, i64 %i.gc
  %i.ob = load i32, ptr %gep.1.2.2, align 4, !tbaa !39
  %i.oc = sext i32 %i.ob to i64
  %i.od = mul nsw i64 %i.oc, 729
  %i.oe = add nsw i64 %i.od, %i.oa
  %gep.2.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2.2, i64 %i.gg
  %i.of = load i32, ptr %gep.2.2.2, align 4, !tbaa !39
  %i.og = sext i32 %i.of to i64
  %i.oh = mul nsw i64 %i.og, 729
  %i.oi = add nsw i64 %i.oh, %i.oe
  %gep.3.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2.2, i64 %i.gk
  %i.oj = load i32, ptr %gep.3.2.2, align 4, !tbaa !39
  %i.ok = sext i32 %i.oj to i64
  %i.ol = mul nsw i64 %i.ok, -81
  %i.om = add nsw i64 %i.ol, %i.oi
  br i1 %.not57, label %.split.3.2, label %bb.y

bb.y:                                             ; preds = %.split.2.2
  %i.on = urem i64 %i.ac, %2
  br label %.split.3.2

.split.3.2:                                       ; preds = %bb.y, %.split.2.2
  %i.oo = phi i64 [ %i.on, %bb.y ], [ %i.q, %.split.2.2 ]
  %i.op = add i64 %i.oo, %i.me
  %i.oq = mul i64 %i.op, %2
  %invariant.gep.3.2 = getelementptr [4 x i8], ptr %1, i64 %i.oq ; 4 uses
  %gep.3107.2 = getelementptr [4 x i8], ptr %invariant.gep.3.2, i64 %i.fy
  %i.or = load i32, ptr %gep.3107.2, align 4, !tbaa !39
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i64 %i.os, 9
  %i.ou = add nsw i64 %i.ot, %i.om
  %gep.1.3.2 = getelementptr [4 x i8], ptr %invariant.gep.3.2, i64 %i.gc
  %i.ov = load i32, ptr %gep.1.3.2, align 4, !tbaa !39
  %i.ow = sext i32 %i.ov to i64
  %i.ox = mul nsw i64 %i.ow, -81
  %i.oy = add nsw i64 %i.ox, %i.ou
  %gep.2.3.2 = getelementptr [4 x i8], ptr %invariant.gep.3.2, i64 %i.gg
  %i.oz = load i32, ptr %gep.2.3.2, align 4, !tbaa !39
  %i.pa = sext i32 %i.oz to i64
  %i.pb = mul nsw i64 %i.pa, -81
  %i.pc = add nsw i64 %i.pb, %i.oy
  %gep.3.3.2 = getelementptr [4 x i8], ptr %invariant.gep.3.2, i64 %i.gk
  %i.pd = load i32, ptr %gep.3.3.2, align 4, !tbaa !39
  %i.pe = sext i32 %i.pd to i64
  %i.pf = mul nsw i64 %i.pe, 9
  %i.pg = add nsw i64 %i.pf, %i.pc
  br i1 %.not, label %.split68.3, label %bb.z

bb.z:                                             ; preds = %.split.3.2
  %i.ph = urem i64 %i.i, %2
  br label %.split68.3

.split68.3:                                       ; preds = %bb.z, %.split.3.2
  %i.pi = phi i64 [ %i.ph, %bb.z ], [ %i.d, %.split.3.2 ]
  %i.pj = mul i64 %i.pi, %2                       ; 4 uses
  br i1 %.not57, label %.split.3130, label %bb.aa

bb.aa:                                            ; preds = %.split68.3
  %i.pk = urem i64 %i.r, %2
  br label %.split.3130

.split.3130:                                      ; preds = %bb.aa, %.split68.3
  %i.pl = phi i64 [ %i.pk, %bb.aa ], [ %i.q, %.split68.3 ]
  %i.pm = add i64 %i.pl, %i.pj
  %i.pn = mul i64 %i.pm, %2
  %invariant.gep.3129 = getelementptr [4 x i8], ptr %1, i64 %i.pn ; 4 uses
  %gep.3131 = getelementptr [4 x i8], ptr %invariant.gep.3129, i64 %i.fy
  %i.po = load i32, ptr %gep.3131, align 4, !tbaa !39
  %i.pp = sext i32 %i.po to i64
  %i.pq = sub nsw i64 %i.pg, %i.pp
  %gep.1.3133 = getelementptr [4 x i8], ptr %invariant.gep.3129, i64 %i.gc
  %i.pr = load i32, ptr %gep.1.3133, align 4, !tbaa !39
  %i.ps = sext i32 %i.pr to i64
  %i.pt = mul nsw i64 %i.ps, 9
  %i.pu = add nsw i64 %i.pt, %i.pq
  %gep.2.3135 = getelementptr [4 x i8], ptr %invariant.gep.3129, i64 %i.gg
  %i.pv = load i32, ptr %gep.2.3135, align 4, !tbaa !39
  %i.pw = sext i32 %i.pv to i64
  %i.px = mul nsw i64 %i.pw, 9
  %i.py = add nsw i64 %i.px, %i.pu
  %gep.3.3136 = getelementptr [4 x i8], ptr %invariant.gep.3129, i64 %i.gk
  %i.pz = load i32, ptr %gep.3.3136, align 4, !tbaa !39
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sub nsw i64 %i.py, %i.qa
  br i1 %.not57, label %.split.1.3, label %bb.ab

bb.ab:                                            ; preds = %.split.3130
  %i.qc = urem i64 %i.ad, %2
  br label %.split.1.3

.split.1.3:                                       ; preds = %bb.ab, %.split.3130
  %i.qd = phi i64 [ %i.qc, %bb.ab ], [ %i.q, %.split.3130 ]
  %i.qe = add i64 %i.qd, %i.pj
  %i.qf = mul i64 %i.qe, %2
  %invariant.gep.1.3 = getelementptr [4 x i8], ptr %1, i64 %i.qf ; 4 uses
  %gep.1103.3 = getelementptr [4 x i8], ptr %invariant.gep.1.3, i64 %i.fy
  %i.qg = load i32, ptr %gep.1103.3, align 4, !tbaa !39
  %i.qh = sext i32 %i.qg to i64
  %i.qi = mul nsw i64 %i.qh, 9
  %i.qj = add nsw i64 %i.qi, %i.qb
  %gep.1.1.3 = getelementptr [4 x i8], ptr %invariant.gep.1.3, i64 %i.gc
  %i.qk = load i32, ptr %gep.1.1.3, align 4, !tbaa !39
  %i.ql = sext i32 %i.qk to i64
  %i.qm = mul nsw i64 %i.ql, -81
  %i.qn = add nsw i64 %i.qm, %i.qj
  %gep.2.1.3 = getelementptr [4 x i8], ptr %invariant.gep.1.3, i64 %i.gg
  %i.qo = load i32, ptr %gep.2.1.3, align 4, !tbaa !39
  %i.qp = sext i32 %i.qo to i64
  %i.qq = mul nsw i64 %i.qp, -81
  %i.qr = add nsw i64 %i.qq, %i.qn
  %gep.3.1.3 = getelementptr [4 x i8], ptr %invariant.gep.1.3, i64 %i.gk
  %i.qs = load i32, ptr %gep.3.1.3, align 4, !tbaa !39
  %i.qt = sext i32 %i.qs to i64
  %i.qu = mul nsw i64 %i.qt, 9
  %i.qv = add nsw i64 %i.qu, %i.qr
  br i1 %.not57, label %.split.2.3, label %bb.ac

bb.ac:                                            ; preds = %.split.1.3
  %i.qw = urem i64 %i.ae, %2
  br label %.split.2.3

.split.2.3:                                       ; preds = %bb.ac, %.split.1.3
  %i.qx = phi i64 [ %i.qw, %bb.ac ], [ %i.q, %.split.1.3 ]
  %i.qy = add i64 %i.qx, %i.pj
  %i.qz = mul i64 %i.qy, %2
  %invariant.gep.2.3 = getelementptr [4 x i8], ptr %1, i64 %i.qz ; 4 uses
  %gep.2105.3 = getelementptr [4 x i8], ptr %invariant.gep.2.3, i64 %i.fy
  %i.ra = load i32, ptr %gep.2105.3, align 4, !tbaa !39
  %i.rb = sext i32 %i.ra to i64
  %i.rc = mul nsw i64 %i.rb, 9
  %i.rd = add nsw i64 %i.rc, %i.qv
  %gep.1.2.3 = getelementptr [4 x i8], ptr %invariant.gep.2.3, i64 %i.gc
  %i.re = load i32, ptr %gep.1.2.3, align 4, !tbaa !39
  %i.rf = sext i32 %i.re to i64
  %i.rg = mul nsw i64 %i.rf, -81
  %i.rh = add nsw i64 %i.rg, %i.rd
  %gep.2.2.3 = getelementptr [4 x i8], ptr %invariant.gep.2.3, i64 %i.gg
  %i.ri = load i32, ptr %gep.2.2.3, align 4, !tbaa !39
  %i.rj = sext i32 %i.ri to i64
  %i.rk = mul nsw i64 %i.rj, -81
  %i.rl = add nsw i64 %i.rk, %i.rh
  %gep.3.2.3 = getelementptr [4 x i8], ptr %invariant.gep.2.3, i64 %i.gk
  %i.rm = load i32, ptr %gep.3.2.3, align 4, !tbaa !39
  %i.rn = sext i32 %i.rm to i64
  %i.ro = mul nsw i64 %i.rn, 9
  %i.rp = add nsw i64 %i.ro, %i.rl
  br i1 %.not57, label %.split.3.3, label %bb.ad

bb.ad:                                            ; preds = %.split.2.3
  %i.rq = urem i64 %i.af, %2
  br label %.split.3.3

.split.3.3:                                       ; preds = %bb.ad, %.split.2.3
  %i.rr = phi i64 [ %i.rq, %bb.ad ], [ %i.q, %.split.2.3 ]
  %i.rs = add i64 %i.rr, %i.pj
  %i.rt = mul i64 %i.rs, %2
  %invariant.gep.3.3 = getelementptr [4 x i8], ptr %1, i64 %i.rt ; 4 uses
  %gep.3107.3 = getelementptr [4 x i8], ptr %invariant.gep.3.3, i64 %i.fy
  %i.ru = load i32, ptr %gep.3107.3, align 4, !tbaa !39
  %i.rv = sext i32 %i.ru to i64
  %i.rw = sub nsw i64 %i.rp, %i.rv
  %gep.1.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3.3, i64 %i.gc
  %i.rx = load i32, ptr %gep.1.3.3, align 4, !tbaa !39
  %i.ry = sext i32 %i.rx to i64
  %i.rz = mul nsw i64 %i.ry, 9
  %i.sa = add nsw i64 %i.rz, %i.rw
  %gep.2.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3.3, i64 %i.gg
  %i.sb = load i32, ptr %gep.2.3.3, align 4, !tbaa !39
  %i.sc = sext i32 %i.sb to i64
  %i.sd = mul nsw i64 %i.sc, 9
  %i.se = add nsw i64 %i.sd, %i.sa
  %gep.3.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3.3, i64 %i.gk
  %i.sf = load i32, ptr %gep.3.3.3, align 4, !tbaa !39
  %i.sg = sext i32 %i.sf to i64
  %i.sh = sub nsw i64 %i.se, %i.sg
  br label %.split90.us
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_Z8refine4dPiPKim(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = shl i64 %2, 1                            ; 8 uses
  %.not134 = icmp eq i64 %i.a, 0
  br i1 %.not134, label %._crit_edge, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 4 uses
  br label %.preheader80

.preheader80:                                     ; preds = %.preheader80.lr.ph, %bb.b
  %.073133 = phi i64 [ 0, %.preheader80.lr.ph ], [ %i.u, %bb.b ] ; 4 uses
  %i.c = and i64 %.073133, 1
  %.not = icmp eq i64 %i.c, 0                     ; 7 uses
  %i.d = lshr i64 %.073133, 1                     ; 9 uses
  %i.e = add i64 %i.b, %i.d                       ; 6 uses
  %i.f = mul i64 %.073133, %i.a
  %i.g = add i64 %2, %i.d
  %i.h = add i64 %i.e, 2
  %i.i = add i64 %i.e, 3
  br label %.preheader79

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.preheader79:                                     ; preds = %.preheader80, %bb.c
  %.072132 = phi i64 [ 0, %.preheader80 ], [ %i.ag, %bb.c ] ; 4 uses
  %i.j = and i64 %.072132, 1
  %.not75 = icmp eq i64 %i.j, 0                   ; 6 uses
  %i.k = lshr i64 %.072132, 1                     ; 12 uses
  %i.l = add i64 %i.b, %i.k                       ; 7 uses
  %i.m = add i64 %.072132, %i.f
  %i.n = mul i64 %i.m, %i.a
  %i.o = add i64 %2, %i.k
  %i.p = add i64 %i.l, 2
  %i.q = add i64 %i.l, 3
  %i.r = add i64 %2, %i.k
  %i.s = add i64 %i.l, 2
  %i.t = add i64 %i.l, 3
  br label %.preheader78

bb.b:                                             ; preds = %bb.c
  %i.u = add nuw i64 %.073133, 1                  ; 2 uses
  %exitcond196.not = icmp eq i64 %i.u, %i.a
  br i1 %exitcond196.not, label %._crit_edge, label %.preheader80

.preheader78:                                     ; preds = %.preheader79, %bb.k
  %.071131 = phi i64 [ 0, %.preheader79 ], [ %i.hh, %bb.k ] ; 4 uses
  %i.v = and i64 %.071131, 1
  %.not76 = icmp eq i64 %i.v, 0                   ; 5 uses
  %i.w = lshr i64 %.071131, 1                     ; 15 uses
  %i.x = add i64 %i.b, %i.w                       ; 6 uses
  %i.y = add i64 %.071131, %i.n
  %i.z = mul i64 %i.y, %i.a
  %invariant.gep128 = getelementptr [4 x i8], ptr %0, i64 %i.z
  %i.aa = add i64 %2, %i.w
  %i.ab = add i64 %i.x, 2
  %i.ac = add i64 %i.x, 3
  %i.ad = add i64 %2, %i.w
  %i.ae = add i64 %i.x, 2
  %i.af = add i64 %i.x, 3
  br label %.preheader

bb.c:                                             ; preds = %bb.k
  %i.ag = add nuw i64 %.072132, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond195.not, label %bb.b, label %.preheader79

.preheader:                                       ; preds = %.preheader78, %.split124.us
  %.070130 = phi i64 [ 0, %.preheader78 ], [ %i.hk, %.split124.us ] ; 4 uses
  %i.ah = and i64 %.070130, 1
  %.not77 = icmp eq i64 %i.ah, 0
  %i.ai = lshr i64 %.070130, 1                    ; 3 uses
  %invariant.gep94 = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 24 uses
  br i1 %.not77, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.aj = add i64 %i.b, %i.ai                     ; 3 uses
  %i.ak = urem i64 %i.aj, %2                      ; 4 uses
  %i.al = add i64 %2, %i.ai
  %i.am = urem i64 %i.al, %2                      ; 4 uses
  %i.an = add i64 %i.aj, 2
  %i.ao = urem i64 %i.an, %2                      ; 4 uses
  %i.ap = add i64 %i.aj, 3
  %i.aq = urem i64 %i.ap, %2                      ; 4 uses
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not76, label %.preheader.split.us.split.us, label %.preheader.split.us.split.preheader

.preheader.split.us.split.preheader:              ; preds = %.preheader.split.us
  %i.ar = urem i64 %i.x, %2                       ; 4 uses
  %i.as = urem i64 %i.ad, %2                      ; 4 uses
  %i.at = urem i64 %i.ae, %2                      ; 4 uses
  %i.au = urem i64 %i.af, %2                      ; 4 uses
  br label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us
  br i1 %.not75, label %.preheader.split.us.split.us.split.us, label %.preheader.split.us.split.us.split.preheader

.preheader.split.us.split.us.split.preheader:     ; preds = %.preheader.split.us.split.us
  %3 = urem i64 %i.l, %2
  %4 = urem i64 %i.o, %2
  %5 = urem i64 %i.p, %2
  %6 = urem i64 %i.q, %2
  br label %.preheader.split.us.split.us.split

.preheader.split.us.split.us.split.us:            ; preds = %.preheader.split.us.split.us
  br i1 %.not, label %.split98.us.us.us.us, label %7

7:                                                ; preds = %.preheader.split.us.split.us.split.us
  %8 = urem i64 %i.e, %2
  br label %.split98.us.us.us.us

.split98.us.us.us.us:                             ; preds = %.preheader.split.us.split.us.split.us, %7
  %9 = phi i64 [ %8, %7 ], [ %i.d, %.preheader.split.us.split.us.split.us ]
  %10 = mul i64 %9, %2
  %11 = add i64 %i.k, %10
  %12 = mul i64 %11, %2
  %13 = add i64 %i.w, %12
  %14 = mul i64 %13, %2
  %gep95.us.us.us.us.us.us.us = getelementptr [4 x i8], ptr %invariant.gep94, i64 %14
  %15 = load i32, ptr %gep95.us.us.us.us.us.us.us, align 4, !tbaa !39
  %16 = sext i32 %15 to i64
  br i1 %.not, label %.split98.us.us.us.us.1, label %17

17:                                               ; preds = %.split98.us.us.us.us
  %18 = urem i64 %i.g, %2
  br label %.split98.us.us.us.us.1

.split98.us.us.us.us.1:                           ; preds = %17, %.split98.us.us.us.us
  %19 = phi i64 [ %18, %17 ], [ %i.d, %.split98.us.us.us.us ]
  %20 = mul i64 %19, %2
  %21 = add i64 %i.k, %20
  %i.av = mul i64 %21, %2
  %22 = add i64 %i.w, %i.av
  %i.aw = mul i64 %22, %2
  %gep95.us.us.us.us.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.aw
  %23 = load i32, ptr %gep95.us.us.us.us.us.us.us.1, align 4, !tbaa !39
  %24 = sext i32 %23 to i64                       ; 6 uses
  %reass.add233.1 = mul nsw i64 %24, 162
  %25 = shl nsw i64 %16, 12
  %26 = sub nsw i64 %reass.add233.1, %25
  %op.rdx315.1 = mul nsw i64 %24, -2430
  %27 = add nsw i64 %26, %op.rdx315.1
  %op.rdx310.1 = mul nsw i64 %24, 41634
  %28 = add nsw i64 %27, %op.rdx310.1
  %.neg.1 = mul nsw i64 %24, -54
  %29 = add nsw i64 %.neg.1, %28
  %op.rdx296.1 = mul nsw i64 %24, -2430
  %op.rdx297.1 = add nsw i64 %op.rdx296.1, %29
  %.neg = mul nsw i64 %24, -18
  %30 = add i64 %.neg, %op.rdx297.1
  br i1 %.not, label %.split98.us.us.us.us.2, label %bb.d

bb.d:                                             ; preds = %.split98.us.us.us.us.1
  %i.ax = urem i64 %i.h, %2
  br label %.split98.us.us.us.us.2

.split98.us.us.us.us.2:                           ; preds = %bb.d, %.split98.us.us.us.us.1
  %31 = phi i64 [ %i.ax, %bb.d ], [ %i.d, %.split98.us.us.us.us.1 ]
  %i.ay = mul i64 %31, %2
  %i.az = add i64 %i.k, %i.ay
  %i.ba = mul i64 %i.az, %2
  %i.bb = add i64 %i.w, %i.ba
  %i.bc = mul i64 %i.bb, %2
  %gep95.us.us.us.us.us.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.bc
  %i.bd = load i32, ptr %gep95.us.us.us.us.us.us.us.2, align 4, !tbaa !39
  %32 = sext i32 %i.bd to i64                     ; 6 uses
  %reass.add233.2 = mul nsw i64 %32, 162
  %33 = add i64 %30, %reass.add233.2
  %op.rdx315.2 = mul nsw i64 %32, -2430
  %34 = add i64 %33, %op.rdx315.2
  %op.rdx310.2 = mul nsw i64 %32, 41634
  %35 = add i64 %34, %op.rdx310.2
  %.neg.2 = mul nsw i64 %32, -54
  %36 = add i64 %.neg.2, %35
  %op.rdx296.2 = mul nsw i64 %32, -2430
  %op.rdx297.2 = add i64 %op.rdx296.2, %36
  %.neg331 = mul nsw i64 %32, -18
  %37 = add i64 %.neg331, %op.rdx297.2
  br i1 %.not, label %.split98.us.us.us.us.3, label %38

38:                                               ; preds = %.split98.us.us.us.us.2
  %39 = urem i64 %i.i, %2
  br label %.split98.us.us.us.us.3

.split98.us.us.us.us.3:                           ; preds = %38, %.split98.us.us.us.us.2
  %40 = phi i64 [ %39, %38 ], [ %i.d, %.split98.us.us.us.us.2 ]
  %41 = mul i64 %40, %2
  %42 = add i64 %i.k, %41
  %43 = mul i64 %42, %2
  %44 = add i64 %i.w, %43
  %45 = mul i64 %44, %2
  %gep95.us.us.us.us.us.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %45
  %46 = load i32, ptr %gep95.us.us.us.us.us.us.us.3, align 4, !tbaa !39
  %47 = sext i32 %46 to i64                       ; 6 uses
  %reass.add233.3 = mul nsw i64 %47, -18
  %48 = add i64 %37, %reass.add233.3
  %op.rdx315.3 = mul nsw i64 %47, 270
  %49 = add i64 %48, %op.rdx315.3
  %op.rdx310.3 = mul nsw i64 %47, -4626
  %50 = add i64 %49, %op.rdx310.3
  %.neg.3 = mul nsw i64 %47, 6
  %51 = add i64 %.neg.3, %50
  %op.rdx296.3 = mul nsw i64 %47, 270
  %op.rdx297.3 = add i64 %op.rdx296.3, %51
  %.neg332.neg = shl nsw i64 %47, 1
  %52 = add i64 %.neg332.neg, %op.rdx297.3
  br label %.split124.us

.preheader.split.us.split.us.split:               ; preds = %.preheader.split.us.split.us.split.preheader, %.split98.us.us.us
  %.068115.us.us = phi i64 [ %i.cn, %.split98.us.us.us ], [ 0, %.preheader.split.us.split.us.split.preheader ] ; 3 uses
  %.069114.us.us = phi i64 [ %op.rdx292, %.split98.us.us.us ], [ 0, %.preheader.split.us.split.us.split.preheader ]
  br i1 %.not, label %.split98.us.us.us, label %bb.e

bb.e:                                             ; preds = %.preheader.split.us.split.us.split
  %i.be = add i64 %i.e, %.068115.us.us
  %i.bf = urem i64 %i.be, %2
  br label %.split98.us.us.us

.split98.us.us.us:                                ; preds = %.preheader.split.us.split.us.split, %bb.e
  %i.bg = phi i64 [ %i.bf, %bb.e ], [ %i.d, %.preheader.split.us.split.us.split ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @__const._Z8refine4dPiPKim.weight, i64 %.068115.us.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !40 ; 2 uses
  %i.bj = mul i64 %i.bg, %2                       ; 4 uses
  %factor.op.mul87.us.us.us.us = sub i64 0, %i.bi ; 2 uses
  %i.bk = add i64 %3, %i.bj
  %i.bl = mul i64 %i.bk, %2
  %i.bm = add i64 %i.w, %i.bl
  %i.bn = mul i64 %i.bm, %2
  %gep95.us.us.us.us.us = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.bn
  %i.bo = load i32, ptr %gep95.us.us.us.us.us, align 4, !tbaa !39
  %i.bp = sext i32 %i.bo to i64
  %factor.op.mul.us.us.us.us = mul i64 %factor.op.mul87.us.us.us.us, %i.bp ; 7 uses
  %reass.add213 = mul i64 %factor.op.mul.us.us.us.us, -18
  %reass.add214 = mul i64 %factor.op.mul.us.us.us.us, 162
  %reass.add215 = mul i64 %factor.op.mul.us.us.us.us, -18
  %reass.add216 = mul i64 %factor.op.mul.us.us.us.us, 162
  %reass.add217 = mul i64 %factor.op.mul.us.us.us.us, -18
  %factor.op.mul87.us.us.us.us.1 = mul i64 %i.bi, 9 ; 2 uses
  %i.bq = add i64 %4, %i.bj
  %i.br = mul i64 %i.bq, %2
  %i.bs = add i64 %i.w, %i.br
  %i.bt = mul i64 %i.bs, %2
  %gep95.us.us.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.bt
  %i.bu = load i32, ptr %gep95.us.us.us.us.us.1, align 4, !tbaa !39
  %i.bv = sext i32 %i.bu to i64
  %factor.op.mul.us.us.us.us.1 = mul i64 %factor.op.mul87.us.us.us.us.1, %i.bv ; 7 uses
  %reass.add218 = mul i64 %factor.op.mul.us.us.us.us.1, -18
  %reass.add219 = mul i64 %factor.op.mul.us.us.us.us.1, 162
  %reass.add220 = mul i64 %factor.op.mul.us.us.us.us.1, -18
  %reass.add221 = mul i64 %factor.op.mul.us.us.us.us.1, 162
  %reass.add222 = mul i64 %factor.op.mul.us.us.us.us.1, -18
  %i.bw = add i64 %5, %i.bj
  %i.bx = mul i64 %i.bw, %2
  %i.by = add i64 %i.w, %i.bx
  %i.bz = mul i64 %i.by, %2
  %gep95.us.us.us.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.bz
  %i.ca = load i32, ptr %gep95.us.us.us.us.us.2, align 4, !tbaa !39
  %i.cb = sext i32 %i.ca to i64
  %factor.op.mul.us.us.us.us.2 = mul i64 %factor.op.mul87.us.us.us.us.1, %i.cb ; 7 uses
  %reass.add223 = mul i64 %factor.op.mul.us.us.us.us.2, -18
  %reass.add224 = mul i64 %factor.op.mul.us.us.us.us.2, 162
  %reass.add225 = mul i64 %factor.op.mul.us.us.us.us.2, -18
  %reass.add226 = mul i64 %factor.op.mul.us.us.us.us.2, 162
  %reass.add227 = mul i64 %factor.op.mul.us.us.us.us.2, -18
  %i.cc = add i64 %6, %i.bj
  %i.cd = mul i64 %i.cc, %2
  %i.ce = add i64 %i.w, %i.cd
  %i.cf = mul i64 %i.ce, %2
  %gep95.us.us.us.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.cf
  %i.cg = load i32, ptr %gep95.us.us.us.us.us.3, align 4, !tbaa !39
  %i.ch = sext i32 %i.cg to i64
  %factor.op.mul.us.us.us.us.3 = mul i64 %factor.op.mul87.us.us.us.us, %i.ch ; 7 uses
  %reass.add228 = mul i64 %factor.op.mul.us.us.us.us.3, -18
  %reass.add229 = mul i64 %factor.op.mul.us.us.us.us.3, 162
  %reass.add230 = mul i64 %factor.op.mul.us.us.us.us.3, -18
  %reass.add231 = mul i64 %factor.op.mul.us.us.us.us.3, 162
  %reass.add232 = mul i64 %factor.op.mul.us.us.us.us.3, -18
  %i.ci = add i64 %factor.op.mul.us.us.us.us, %factor.op.mul.us.us.us.us.1
  %op.rdx317 = add i64 %i.ci, %factor.op.mul.us.us.us.us.2
  %op.rdx266318 = add i64 %op.rdx317, %factor.op.mul.us.us.us.us.3
  %op.rdx267 = shl i64 %op.rdx266318, 2
  %i.cj = mul i64 %factor.op.mul.us.us.us.us, -18
  %op.rdx268 = add i64 %op.rdx267, %i.cj
  %i.ck = mul i64 %factor.op.mul.us.us.us.us.1, -18
  %op.rdx269 = add i64 %op.rdx268, %i.ck
  %i.cl = mul i64 %factor.op.mul.us.us.us.us.2, -18
  %op.rdx270 = add i64 %op.rdx269, %i.cl
  %i.cm = mul i64 %factor.op.mul.us.us.us.us.3, -18
  %op.rdx271 = add i64 %op.rdx270, %i.cm
  %op.rdx272 = add i64 %op.rdx271, %reass.add213
  %op.rdx273 = add i64 %op.rdx272, %reass.add214
  %op.rdx274 = add i64 %op.rdx273, %reass.add215
  %op.rdx275 = add i64 %op.rdx274, %reass.add216
  %op.rdx276 = add i64 %op.rdx275, %reass.add217
  %op.rdx277 = add i64 %op.rdx276, %reass.add218
  %op.rdx278 = add i64 %op.rdx277, %reass.add219
  %op.rdx279 = add i64 %op.rdx278, %reass.add220
  %op.rdx280 = add i64 %op.rdx279, %reass.add221
  %op.rdx281 = add i64 %op.rdx280, %reass.add222
  %op.rdx282 = add i64 %op.rdx281, %reass.add223
  %op.rdx283 = add i64 %op.rdx282, %reass.add224
  %op.rdx284 = add i64 %op.rdx283, %reass.add225
  %op.rdx285 = add i64 %op.rdx284, %reass.add226
  %op.rdx286 = add i64 %op.rdx285, %reass.add227
  %op.rdx287 = add i64 %op.rdx286, %reass.add228
  %op.rdx288 = add i64 %op.rdx287, %reass.add229
  %op.rdx289 = add i64 %op.rdx288, %reass.add230
  %op.rdx290 = add i64 %op.rdx289, %reass.add231
  %op.rdx291 = add i64 %op.rdx290, %reass.add232
  %op.rdx292 = add i64 %op.rdx291, %.069114.us.us ; 2 uses
  %i.cn = add nuw nsw i64 %.068115.us.us, 1       ; 2 uses
  %exitcond173.not = icmp eq i64 %i.cn, 4
  br i1 %exitcond173.not, label %.split124.us, label %.preheader.split.us.split.us.split

.preheader.split.us.split:                        ; preds = %.preheader.split.us.split.preheader, %.split90.us.us.us119.3
  %.068115.us = phi i64 [ %i.hg, %.split90.us.us.us119.3 ], [ 0, %.preheader.split.us.split.preheader ] ; 3 uses
  %.069114.us = phi i64 [ %i.hf, %.split90.us.us.us119.3 ], [ 0, %.preheader.split.us.split.preheader ]
  br i1 %.not, label %.split98.us.us, label %bb.f

bb.f:                                             ; preds = %.preheader.split.us.split
  %i.co = add i64 %i.e, %.068115.us
  %i.cp = urem i64 %i.co, %2
  br label %.split98.us.us

.split98.us.us:                                   ; preds = %.preheader.split.us.split, %bb.f
  %i.cq = phi i64 [ %i.cp, %bb.f ], [ %i.d, %.preheader.split.us.split ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @__const._Z8refine4dPiPKim.weight, i64 %.068115.us
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40 ; 10 uses
  %i.ct = mul i64 %i.cq, %2                       ; 4 uses
  br i1 %.not75, label %.split90.us.us.us119, label %bb.g

bb.g:                                             ; preds = %.split98.us.us
  %i.cu = urem i64 %i.l, %2
  br label %.split90.us.us.us119

.split90.us.us.us119:                             ; preds = %.split98.us.us, %bb.g
  %i.cv = phi i64 [ %i.cu, %bb.g ], [ %i.k, %.split98.us.us ]
  %i.cw = add i64 %i.cv, %i.ct
  %i.cx = mul i64 %i.cw, %2                       ; 4 uses
  %i.cy = add i64 %i.ar, %i.cx
  %i.cz = mul i64 %i.cy, %2
  %gep95.us103.us = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.cz
  %i.da = load i32, ptr %gep95.us103.us, align 4, !tbaa !39
  %i.db = sext i32 %i.da to i64
  %factor.op.mul86.us.us.us = mul i64 %i.cs, %i.db ; 2 uses
  %reass.add = mul i64 %factor.op.mul86.us.us.us, 18
  %i.dc = add i64 %.069114.us, %reass.add
  %factor.op.mul.reass.us.us.us.1 = mul i64 %i.cs, -9 ; 2 uses
  %i.dd = add i64 %i.as, %i.cx
  %i.de = mul i64 %i.dd, %2
  %gep95.us103.us.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.de
  %i.df = load i32, ptr %gep95.us103.us.1, align 4, !tbaa !39
  %i.dg = sext i32 %i.df to i64
  %factor.op.mul86.us.us.us.1 = mul i64 %factor.op.mul.reass.us.us.us.1, %i.dg ; 2 uses
  %reass.add207 = mul i64 %factor.op.mul86.us.us.us.1, 18
  %i.dh = add i64 %i.dc, %reass.add207
  %i.di = add i64 %factor.op.mul86.us.us.us, %factor.op.mul86.us.us.us.1
  %i.dj = add i64 %i.at, %i.cx
  %i.dk = mul i64 %i.dj, %2
  %gep95.us103.us.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.dk
  %i.dl = load i32, ptr %gep95.us103.us.2, align 4, !tbaa !39
  %i.dm = sext i32 %i.dl to i64
  %factor.op.mul86.us.us.us.2 = mul i64 %factor.op.mul.reass.us.us.us.1, %i.dm ; 2 uses
  %reass.add209 = mul i64 %factor.op.mul86.us.us.us.2, 18
  %i.dn = add i64 %i.dh, %reass.add209
  %i.do = add i64 %i.di, %factor.op.mul86.us.us.us.2
  %i.dp = add i64 %i.au, %i.cx
  %i.dq = mul i64 %i.dp, %2
  %gep95.us103.us.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.dq
  %i.dr = load i32, ptr %gep95.us103.us.3, align 4, !tbaa !39
  %i.ds = sext i32 %i.dr to i64
  %factor.op.mul86.us.us.us.3 = mul i64 %i.cs, %i.ds ; 2 uses
  %reass.add211 = mul i64 %factor.op.mul86.us.us.us.3, 18
  %i.dt = add i64 %i.dn, %reass.add211
  %i.du = add i64 %i.do, %factor.op.mul86.us.us.us.3
  %i.dv = shl i64 %i.du, 1
  %i.dw = sub i64 %i.dt, %i.dv
  br i1 %.not75, label %.split90.us.us.us119.1, label %bb.h

bb.h:                                             ; preds = %.split90.us.us.us119
  %i.dx = urem i64 %i.r, %2
  br label %.split90.us.us.us119.1

.split90.us.us.us119.1:                           ; preds = %bb.h, %.split90.us.us.us119
  %i.dy = phi i64 [ %i.dx, %bb.h ], [ %i.k, %.split90.us.us.us119 ]
  %factor.op.mul87.us.us120.1.neg = mul i64 %i.cs, -9 ; 2 uses
  %i.dz = add i64 %i.dy, %i.ct
  %i.ea = mul i64 %i.dz, %2                       ; 4 uses
  %i.eb = add i64 %i.ar, %i.ea
  %i.ec = mul i64 %i.eb, %2
  %gep95.us103.us.1325 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.ec
  %i.ed = load i32, ptr %gep95.us103.us.1325, align 4, !tbaa !39
  %i.ee = sext i32 %i.ed to i64
  %factor.op.mul86.us.us.us.1326 = mul i64 %factor.op.mul87.us.us120.1.neg, %i.ee ; 2 uses
  %reass.add.1 = mul i64 %factor.op.mul86.us.us.us.1326, 18
  %i.ef = add i64 %i.dw, %reass.add.1
  %factor.op.mul.reass.us.us.us.1.1 = mul i64 %i.cs, 81 ; 2 uses
  %i.eg = add i64 %i.as, %i.ea
  %i.eh = mul i64 %i.eg, %2
  %gep95.us103.us.1.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.eh
  %i.ei = load i32, ptr %gep95.us103.us.1.1, align 4, !tbaa !39
  %i.ej = sext i32 %i.ei to i64
  %factor.op.mul86.us.us.us.1.1 = mul i64 %factor.op.mul.reass.us.us.us.1.1, %i.ej ; 2 uses
  %reass.add207.1 = mul i64 %factor.op.mul86.us.us.us.1.1, 18
  %i.ek = add i64 %i.ef, %reass.add207.1
  %i.el = add i64 %factor.op.mul86.us.us.us.1326, %factor.op.mul86.us.us.us.1.1
  %i.em = add i64 %i.at, %i.ea
  %i.en = mul i64 %i.em, %2
  %gep95.us103.us.2.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.en
  %i.eo = load i32, ptr %gep95.us103.us.2.1, align 4, !tbaa !39
  %i.ep = sext i32 %i.eo to i64
  %factor.op.mul86.us.us.us.2.1 = mul i64 %factor.op.mul.reass.us.us.us.1.1, %i.ep ; 2 uses
  %reass.add209.1 = mul i64 %factor.op.mul86.us.us.us.2.1, 18
  %i.eq = add i64 %i.ek, %reass.add209.1
  %i.er = add i64 %i.el, %factor.op.mul86.us.us.us.2.1
  %i.es = add i64 %i.au, %i.ea
  %i.et = mul i64 %i.es, %2
  %gep95.us103.us.3.1 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.et
  %i.eu = load i32, ptr %gep95.us103.us.3.1, align 4, !tbaa !39
  %i.ev = sext i32 %i.eu to i64
  %factor.op.mul86.us.us.us.3.1 = mul i64 %factor.op.mul87.us.us120.1.neg, %i.ev ; 2 uses
  %reass.add211.1 = mul i64 %factor.op.mul86.us.us.us.3.1, 18
  %i.ew = add i64 %i.eq, %reass.add211.1
  %i.ex = add i64 %i.er, %factor.op.mul86.us.us.us.3.1
  %i.ey = shl i64 %i.ex, 1
  %i.ez = sub i64 %i.ew, %i.ey
  br i1 %.not75, label %.split90.us.us.us119.2, label %bb.i

bb.i:                                             ; preds = %.split90.us.us.us119.1
  %i.fa = urem i64 %i.s, %2
  br label %.split90.us.us.us119.2

.split90.us.us.us119.2:                           ; preds = %bb.i, %.split90.us.us.us119.1
  %i.fb = phi i64 [ %i.fa, %bb.i ], [ %i.k, %.split90.us.us.us119.1 ]
  %factor.op.mul87.us.us120.2.neg = mul i64 %i.cs, -9 ; 2 uses
  %i.fc = add i64 %i.fb, %i.ct
  %i.fd = mul i64 %i.fc, %2                       ; 4 uses
  %i.fe = add i64 %i.ar, %i.fd
  %i.ff = mul i64 %i.fe, %2
  %gep95.us103.us.2327 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.ff
  %i.fg = load i32, ptr %gep95.us103.us.2327, align 4, !tbaa !39
  %i.fh = sext i32 %i.fg to i64
  %factor.op.mul86.us.us.us.2328 = mul i64 %factor.op.mul87.us.us120.2.neg, %i.fh ; 2 uses
  %reass.add.2 = mul i64 %factor.op.mul86.us.us.us.2328, 18
  %i.fi = add i64 %i.ez, %reass.add.2
  %factor.op.mul.reass.us.us.us.1.2 = mul i64 %i.cs, 81 ; 2 uses
  %i.fj = add i64 %i.as, %i.fd
  %i.fk = mul i64 %i.fj, %2
  %gep95.us103.us.1.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.fk
  %i.fl = load i32, ptr %gep95.us103.us.1.2, align 4, !tbaa !39
  %i.fm = sext i32 %i.fl to i64
  %factor.op.mul86.us.us.us.1.2 = mul i64 %factor.op.mul.reass.us.us.us.1.2, %i.fm ; 2 uses
  %reass.add207.2 = mul i64 %factor.op.mul86.us.us.us.1.2, 18
  %i.fn = add i64 %i.fi, %reass.add207.2
  %i.fo = add i64 %factor.op.mul86.us.us.us.2328, %factor.op.mul86.us.us.us.1.2
  %i.fp = add i64 %i.at, %i.fd
  %i.fq = mul i64 %i.fp, %2
  %gep95.us103.us.2.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.fq
  %i.fr = load i32, ptr %gep95.us103.us.2.2, align 4, !tbaa !39
  %i.fs = sext i32 %i.fr to i64
  %factor.op.mul86.us.us.us.2.2 = mul i64 %factor.op.mul.reass.us.us.us.1.2, %i.fs ; 2 uses
  %reass.add209.2 = mul i64 %factor.op.mul86.us.us.us.2.2, 18
  %i.ft = add i64 %i.fn, %reass.add209.2
  %i.fu = add i64 %i.fo, %factor.op.mul86.us.us.us.2.2
  %i.fv = add i64 %i.au, %i.fd
  %i.fw = mul i64 %i.fv, %2
  %gep95.us103.us.3.2 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.fw
  %i.fx = load i32, ptr %gep95.us103.us.3.2, align 4, !tbaa !39
  %i.fy = sext i32 %i.fx to i64
  %factor.op.mul86.us.us.us.3.2 = mul i64 %factor.op.mul87.us.us120.2.neg, %i.fy ; 2 uses
  %reass.add211.2 = mul i64 %factor.op.mul86.us.us.us.3.2, 18
  %i.fz = add i64 %i.ft, %reass.add211.2
  %i.ga = add i64 %i.fu, %factor.op.mul86.us.us.us.3.2
  %i.gb = shl i64 %i.ga, 1
  %i.gc = sub i64 %i.fz, %i.gb
  br i1 %.not75, label %.split90.us.us.us119.3, label %bb.j

bb.j:                                             ; preds = %.split90.us.us.us119.2
  %i.gd = urem i64 %i.t, %2
  br label %.split90.us.us.us119.3

.split90.us.us.us119.3:                           ; preds = %bb.j, %.split90.us.us.us119.2
  %i.ge = phi i64 [ %i.gd, %bb.j ], [ %i.k, %.split90.us.us.us119.2 ]
  %i.gf = add i64 %i.ge, %i.ct
  %i.gg = mul i64 %i.gf, %2                       ; 4 uses
  %i.gh = add i64 %i.ar, %i.gg
  %i.gi = mul i64 %i.gh, %2
  %gep95.us103.us.3329 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.gi
  %i.gj = load i32, ptr %gep95.us103.us.3329, align 4, !tbaa !39
  %i.gk = sext i32 %i.gj to i64
  %factor.op.mul86.us.us.us.3330 = mul i64 %i.cs, %i.gk ; 2 uses
  %reass.add.3 = mul i64 %factor.op.mul86.us.us.us.3330, 18
  %i.gl = add i64 %i.gc, %reass.add.3
  %factor.op.mul.reass.us.us.us.1.3 = mul i64 %i.cs, -9 ; 2 uses
  %i.gm = add i64 %i.as, %i.gg
  %i.gn = mul i64 %i.gm, %2
  %gep95.us103.us.1.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.gn
  %i.go = load i32, ptr %gep95.us103.us.1.3, align 4, !tbaa !39
  %i.gp = sext i32 %i.go to i64
  %factor.op.mul86.us.us.us.1.3 = mul i64 %factor.op.mul.reass.us.us.us.1.3, %i.gp ; 2 uses
  %reass.add207.3 = mul i64 %factor.op.mul86.us.us.us.1.3, 18
  %i.gq = add i64 %i.gl, %reass.add207.3
  %i.gr = add i64 %factor.op.mul86.us.us.us.3330, %factor.op.mul86.us.us.us.1.3
  %i.gs = add i64 %i.at, %i.gg
  %i.gt = mul i64 %i.gs, %2
  %gep95.us103.us.2.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.gt
  %i.gu = load i32, ptr %gep95.us103.us.2.3, align 4, !tbaa !39
  %i.gv = sext i32 %i.gu to i64
  %factor.op.mul86.us.us.us.2.3 = mul i64 %factor.op.mul.reass.us.us.us.1.3, %i.gv ; 2 uses
  %reass.add209.3 = mul i64 %factor.op.mul86.us.us.us.2.3, 18
  %i.gw = add i64 %i.gq, %reass.add209.3
  %i.gx = add i64 %i.gr, %factor.op.mul86.us.us.us.2.3
  %i.gy = add i64 %i.au, %i.gg
  %i.gz = mul i64 %i.gy, %2
  %gep95.us103.us.3.3 = getelementptr [4 x i8], ptr %invariant.gep94, i64 %i.gz
  %i.ha = load i32, ptr %gep95.us103.us.3.3, align 4, !tbaa !39
  %i.hb = sext i32 %i.ha to i64
  %factor.op.mul86.us.us.us.3.3 = mul i64 %i.cs, %i.hb ; 2 uses
  %reass.add211.3 = mul i64 %factor.op.mul86.us.us.us.3.3, 18
  %i.hc = add i64 %i.gw, %reass.add211.3
  %i.hd = add i64 %i.gx, %factor.op.mul86.us.us.us.3.3
  %i.he = shl i64 %i.hd, 1
  %i.hf = sub i64 %i.hc, %i.he                    ; 2 uses
  %i.hg = add nuw nsw i64 %.068115.us, 1          ; 2 uses
  %exitcond154.not = icmp eq i64 %i.hg, 4
  br i1 %exitcond154.not, label %.split124.us, label %.preheader.split.us.split

bb.k:                                             ; preds = %.split124.us
  %i.hh = add nuw i64 %.071131, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hh, %i.a
  br i1 %exitcond194.not, label %bb.c, label %.preheader78

.split124.us:                                     ; preds = %.split112, %.split90.us.us.us119.3, %.split98.us.us.us, %.split98.us.us.us.us.3
  %.us-phi125 = phi i64 [ %i.hf, %.split90.us.us.us119.3 ], [ %52, %.split98.us.us.us.us.3 ], [ %op.rdx292, %.split98.us.us.us ], [ %i.la, %.split112 ]
  %i.hi = sdiv i64 %.us-phi125, 65536
  %i.hj = trunc i64 %i.hi to i32
  %gep129 = getelementptr [4 x i8], ptr %invariant.gep128, i64 %.070130
  store i32 %i.hj, ptr %gep129, align 4, !tbaa !39
  %i.hk = add nuw i64 %.070130, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.hk, %i.a
  br i1 %exitcond193.not, label %bb.k, label %.preheader

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.split112
  %.068115 = phi i64 [ %i.hr, %.split112 ], [ 0, %.preheader.split.preheader ] ; 3 uses
  %.069114 = phi i64 [ %i.la, %.split112 ], [ 0, %.preheader.split.preheader ]
  br i1 %.not, label %.split98, label %bb.l

bb.l:                                             ; preds = %.preheader.split
  %i.hl = add i64 %i.e, %.068115
  %i.hm = urem i64 %i.hl, %2
  br label %.split98

.split98:                                         ; preds = %.preheader.split, %bb.l
  %i.hn = phi i64 [ %i.hm, %bb.l ], [ %i.d, %.preheader.split ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @__const._Z8refine4dPiPKim.weight, i64 %.068115
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !40
  %i.hq = mul i64 %i.hn, %2
  br label %bb.m

.split112:                                        ; preds = %.split.3
  %i.hr = add nuw nsw i64 %.068115, 1             ; 2 uses
  %exitcond147.not = icmp eq i64 %i.hr, 4
  br i1 %exitcond147.not, label %.split124.us, label %.preheader.split

bb.m:                                             ; preds = %.split98, %.split.3
  %.06797 = phi i64 [ 0, %.split98 ], [ %i.lb, %.split.3 ] ; 3 uses
  %.196 = phi i64 [ %.069114, %.split98 ], [ %i.la, %.split.3 ]
  br i1 %.not75, label %.split90, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hs = add i64 %i.l, %.06797
  %i.ht = urem i64 %i.hs, %2
  br label %.split90

.split90:                                         ; preds = %bb.m, %bb.n
  %i.hu = phi i64 [ %i.ht, %bb.n ], [ %i.k, %bb.m ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr @__const._Z8refine4dPiPKim.weight, i64 %.06797
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !40
  %factor.op.mul87 = mul i64 %i.hw, %i.hp         ; 7 uses
  %i.hx = add i64 %i.hu, %i.hq
  %i.hy = mul i64 %i.hx, %2                       ; 4 uses
  br i1 %.not76, label %.split, label %bb.o

bb.o:                                             ; preds = %.split90
  %i.hz = urem i64 %i.x, %2
  br label %.split

.split:                                           ; preds = %.split90, %bb.o
  %i.ia = phi i64 [ %i.hz, %bb.o ], [ %i.w, %.split90 ]
  %i.ib = add i64 %i.ia, %i.hy
  %i.ic = mul i64 %i.ib, %2
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ic ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ak
  %i.id = load i32, ptr %gep, align 4, !tbaa !39
  %i.ie = sext i32 %i.id to i64
  %i.if = mul nsw i64 %factor.op.mul87, %i.ie
  %i.ig = add nsw i64 %i.if, %.196
  %.reass.reass.1 = mul i64 %factor.op.mul87, -9  ; 4 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.am
  %i.ih = load i32, ptr %gep.1, align 4, !tbaa !39
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %.reass.reass.1, %i.ii
  %i.ik = add nsw i64 %i.ij, %i.ig
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ao
  %i.il = load i32, ptr %gep.2, align 4, !tbaa !39
  %i.im = sext i32 %i.il to i64
  %i.in = mul nsw i64 %.reass.reass.1, %i.im
  %i.io = add nsw i64 %i.in, %i.ik
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aq
  %i.ip = load i32, ptr %gep.3, align 4, !tbaa !39
  %i.iq = sext i32 %i.ip to i64
  %i.ir = mul nsw i64 %factor.op.mul87, %i.iq
  %i.is = add nsw i64 %i.ir, %i.io
  br i1 %.not76, label %.split.1, label %bb.p

bb.p:                                             ; preds = %.split
  %i.it = urem i64 %i.aa, %2
  br label %.split.1

.split.1:                                         ; preds = %bb.p, %.split
  %i.iu = phi i64 [ %i.it, %bb.p ], [ %i.w, %.split ]
  %i.iv = add i64 %i.iu, %i.hy
  %i.iw = mul i64 %i.iv, %2
  %invariant.gep.1 = getelementptr [4 x i8], ptr %1, i64 %i.iw ; 4 uses
  %.reass.reass.1141 = mul i64 %factor.op.mul87, -9 ; 4 uses
  %gep.1142 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ak
  %i.ix = load i32, ptr %gep.1142, align 4, !tbaa !39
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %.reass.reass.1141, %i.iy
  %i.ja = add nsw i64 %i.iz, %i.is
  %.reass.reass.1.1 = mul i64 %factor.op.mul87, 81 ; 4 uses
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.am
  %i.jb = load i32, ptr %gep.1.1, align 4, !tbaa !39
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul nsw i64 %.reass.reass.1.1, %i.jc
  %i.je = add nsw i64 %i.jd, %i.ja
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ao
  %i.jf = load i32, ptr %gep.2.1, align 4, !tbaa !39
  %i.jg = sext i32 %i.jf to i64
  %i.jh = mul nsw i64 %.reass.reass.1.1, %i.jg
  %i.ji = add nsw i64 %i.jh, %i.je
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aq
  %i.jj = load i32, ptr %gep.3.1, align 4, !tbaa !39
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul nsw i64 %.reass.reass.1141, %i.jk
  %i.jm = add nsw i64 %i.jl, %i.ji
  br i1 %.not76, label %.split.2, label %bb.q

bb.q:                                             ; preds = %.split.1
  %i.jn = urem i64 %i.ab, %2
  br label %.split.2

.split.2:                                         ; preds = %bb.q, %.split.1
  %i.jo = phi i64 [ %i.jn, %bb.q ], [ %i.w, %.split.1 ]
  %i.jp = add i64 %i.jo, %i.hy
  %i.jq = mul i64 %i.jp, %2
  %invariant.gep.2 = getelementptr [4 x i8], ptr %1, i64 %i.jq ; 4 uses
  %gep.2144 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ak
  %i.jr = load i32, ptr %gep.2144, align 4, !tbaa !39
  %i.js = sext i32 %i.jr to i64
  %i.jt = mul nsw i64 %.reass.reass.1141, %i.js
  %i.ju = add nsw i64 %i.jt, %i.jm
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.am
  %i.jv = load i32, ptr %gep.1.2, align 4, !tbaa !39
  %i.jw = sext i32 %i.jv to i64
  %i.jx = mul nsw i64 %.reass.reass.1.1, %i.jw
  %i.jy = add nsw i64 %i.jx, %i.ju
  %gep.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ao
  %i.jz = load i32, ptr %gep.2.2, align 4, !tbaa !39
  %i.ka = sext i32 %i.jz to i64
  %i.kb = mul nsw i64 %.reass.reass.1.1, %i.ka
  %i.kc = add nsw i64 %i.kb, %i.jy
  %gep.3.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.aq
  %i.kd = load i32, ptr %gep.3.2, align 4, !tbaa !39
  %i.ke = sext i32 %i.kd to i64
  %i.kf = mul nsw i64 %.reass.reass.1141, %i.ke
  %i.kg = add nsw i64 %i.kf, %i.kc
  br i1 %.not76, label %.split.3, label %bb.r

bb.r:                                             ; preds = %.split.2
  %i.kh = urem i64 %i.ac, %2
  br label %.split.3

.split.3:                                         ; preds = %bb.r, %.split.2
  %i.ki = phi i64 [ %i.kh, %bb.r ], [ %i.w, %.split.2 ]
  %i.kj = add i64 %i.ki, %i.hy
  %i.kk = mul i64 %i.kj, %2
  %invariant.gep.3 = getelementptr [4 x i8], ptr %1, i64 %i.kk ; 4 uses
  %gep.3146 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ak
  %i.kl = load i32, ptr %gep.3146, align 4, !tbaa !39
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul nsw i64 %factor.op.mul87, %i.km
  %i.ko = add nsw i64 %i.kn, %i.kg
  %gep.1.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.am
  %i.kp = load i32, ptr %gep.1.3, align 4, !tbaa !39
  %i.kq = sext i32 %i.kp to i64
  %i.kr = mul nsw i64 %.reass.reass.1, %i.kq
  %i.ks = add nsw i64 %i.kr, %i.ko
  %gep.2.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ao
  %i.kt = load i32, ptr %gep.2.3, align 4, !tbaa !39
  %i.ku = sext i32 %i.kt to i64
  %i.kv = mul nsw i64 %.reass.reass.1, %i.ku
  %i.kw = add nsw i64 %i.kv, %i.ks
  %gep.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.aq
  %i.kx = load i32, ptr %gep.3.3, align 4, !tbaa !39
  %i.ky = sext i32 %i.kx to i64
  %i.kz = mul nsw i64 %factor.op.mul87, %i.ky
  %i.la = add nsw i64 %i.kz, %i.kw                ; 3 uses
  %i.lb = add nuw nsw i64 %.06797, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, 4
  br i1 %exitcond.not, label %.split112, label %bb.m
}

declare i64 @zfp_field_size(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @zfp_field_dimensionality(ptr noundef) local_unnamed_addr #8

declare double @zfp_stream_set_rate(ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i64 @zfp_stream_maximum_size(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @stream_open(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @zfp_stream_set_bit_stream(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #13

declare void @zfp_stream_rewind(ptr noundef) local_unnamed_addr #8

declare i64 @zfp_compress(ptr noundef, ptr noundef) local_unnamed_addr #8
end_hunk_0
begin_hunk_1_@_Z13update_array4IdEvRN3zfp6array4IT_NS0_5codec4zfp4IS2_EENS0_5index8implicitEEE:bb.a
  %i.boh = icmp eq i64 %i.bog, 0
  %i.boi = load ptr, ptr %i.bmz, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 16 ; 2 uses
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !195, !noalias !781
  tail call void @stream_rseek(ptr noundef %i.bok, i64 noundef %i.bnc), !noalias !781
  br i1 %i.boh, label %bb.bo, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236: ; preds = %bb.bn
  %i.bol = sub nuw nsw <2 x i64> splat (i64 4), %i.bns ; 2 uses
  %i.bom = sub nuw nsw <2 x i64> splat (i64 4), %i.boc ; 2 uses
  %i.bon = extractelement <2 x i64> %i.bol, i64 0
  %i.boo = extractelement <2 x i64> %i.bol, i64 1
  %i.bop = extractelement <2 x i64> %i.bom, i64 0
  %i.boq = extractelement <2 x i64> %i.bom, i64 1
  %i.bor = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.boi, ptr noundef %i.bku, i64 noundef %i.bon, i64 noundef %i.boo, i64 noundef %i.bop, i64 noundef %i.boq, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237

bb.bo:                                            ; preds = %bb.bn
  %i.bos = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.boi, ptr noundef %i.bku), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236, %bb.bo
  %i.bot = load ptr, ptr %i.boj, align 8, !tbaa !195, !noalias !781
  %i.bou = tail call i64 @stream_align(ptr noundef %i.bot), !noalias !781 ; 0 uses
  %.pre548 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781 ; 4 uses
  %.phi.trans.insert549 = getelementptr inbounds nuw i8, ptr %.pre548, i64 88
  %.phi.trans.insert551 = getelementptr inbounds nuw i8, ptr %.pre548, i64 96
  %.pre550 = load i64, ptr %.phi.trans.insert549, align 8, !tbaa !304, !noalias !781
  %.pre552 = load i64, ptr %.phi.trans.insert551, align 8, !tbaa !303, !noalias !781
  %.phi.trans.insert553 = getelementptr inbounds nuw i8, ptr %.pre548, i64 104
  %.pre554 = load i64, ptr %.phi.trans.insert553, align 8, !tbaa !302, !noalias !781
  %.pre555 = load ptr, ptr %i.ane, align 8, !tbaa !95, !noalias !781
  %.pre556 = load ptr, ptr %i.anf, align 8, !tbaa !97, !noalias !781
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195

_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237
  %i.bov = phi ptr [ %i.bjm, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre556, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ]
  %i.bow = phi ptr [ %i.bjn, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre555, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ]
  %i.box = phi i64 [ %i.bkd, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre554, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.boy = phi i64 [ %i.bka, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre552, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.boz = phi i64 [ %i.bjz, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre550, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.bpa = phi ptr [ %i.bjo, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre548, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 5 uses
  %i.bpb = and i64 %.sroa.speculated270, 3
  %i.bpc = and i64 %.sroa.speculated264, 3
  %i.bpd = shl nuw nsw i64 %.sroa.speculated, 2
  %i.bpe = and i64 %i.bpd, 12
  %i.bpf = or disjoint i64 %i.bpe, %i.bpc
  %i.bpg = shl nuw nsw i64 %.sroa.speculated267, 2
  %i.bph = and i64 %i.bpg, 12
  %.idx.i.i.i.i193 = shl nuw nsw i64 %i.bpf, 7
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bku, i64 %.idx.i.i.i.i193
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr %i.bpi, i64 %i.bph
  %i.bpk = getelementptr inbounds nuw [8 x i8], ptr %i.bpj, i64 %i.bpb
  %i.bpl = load double, ptr %i.bpk, align 8, !tbaa !49, !noalias !781
  %i.bpm = load i32, ptr %i.anc, align 8, !tbaa !267, !noalias !781
  %i.bpn = and i32 %i.bpm, 1
  %i.bpo = zext nneg i32 %i.bpn to i64            ; 2 uses
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bow, i64 %i.bpo ; 2 uses
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !306, !noalias !781 ; 2 uses
  %i.bpr = lshr i32 %i.bpq, 1                     ; 2 uses
  %i.bps = getelementptr inbounds nuw [2048 x i8], ptr %i.bov, i64 %i.bpo ; 5 uses
  store i32 3, ptr %i.bpp, align 4, !tbaa !39, !noalias !781
  %i.bpt = add nsw i32 %i.bpr, -1                 ; 2 uses
  %i.bpu = zext i32 %i.bpt to i64                 ; 3 uses
  %.not.i.i.i.i188 = icmp eq i32 %i.bpt, 0
  br i1 %.not.i.i.i.i188, label %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195
  %i.bpv = icmp eq i32 %i.bpr, 1
  %i.bpw = trunc i32 %i.bpq to i1
  %i.bpx = or i1 %i.bpv, %i.bpw
  br i1 %i.bpx, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpa, i64 48
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpa, i64 40
  %i.bqa = load i64, ptr %i.bpz, align 8, !tbaa !178, !noalias !781
  %i.bqb = mul i64 %i.bqa, %i.bpu
  %i.bqc = udiv i64 %i.bpu, %i.boz                ; 2 uses
  %i.bqd = udiv i64 %i.bqc, %i.boy                ; 2 uses
  %i.bqe = urem i64 %i.bqd, %i.box
  %i.bqf = udiv i64 %i.bqd, %i.box
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpa, i64 56
  %i.bqh = urem i64 %i.bpu, %i.boz
  %i.bqi = urem i64 %i.bqc, %i.boy
  %i.bqj = insertelement <2 x i64> poison, i64 %i.bqh, i64 0
  %i.bqk = insertelement <2 x i64> %i.bqj, i64 %i.bqi, i64 1
  %i.bql = shl nuw nsw <2 x i64> %i.bqk, splat (i64 2)
  %i.bqm = load <2 x i64>, ptr %i.bqg, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bqn = xor <2 x i64> %i.bqm, %i.bql
  %i.bqo = add <2 x i64> %i.bqn, splat (i64 -4)
  %i.bqp = lshr <2 x i64> %i.bqo, splat (i64 62)
  %i.bqq = sub <2 x i64> zeroinitializer, %i.bqm
  %i.bqr = and <2 x i64> %i.bqp, %i.bqq           ; 3 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bpa, i64 72
  %i.bqt = insertelement <2 x i64> poison, i64 %i.bqe, i64 0
  %i.bqu = insertelement <2 x i64> %i.bqt, i64 %i.bqf, i64 1
  %i.bqv = shl nuw nsw <2 x i64> %i.bqu, splat (i64 2)
  %i.bqw = load <2 x i64>, ptr %i.bqs, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bqx = xor <2 x i64> %i.bqw, %i.bqv
  %i.bqy = add <2 x i64> %i.bqx, splat (i64 -4)
  %i.bqz = lshr <2 x i64> %i.bqy, splat (i64 62)
  %i.bra = sub <2 x i64> zeroinitializer, %i.bqw
  %i.brb = and <2 x i64> %i.bqz, %i.bra           ; 3 uses
  %i.brc = or <2 x i64> %i.bqr, %i.brb
  %i.brd = shufflevector <2 x i64> %i.brc, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bre = or <2 x i64> %i.brd, %i.bqr
  %foldExtExtBinop882 = or <2 x i64> %i.bre, %i.brb
  %i.brf = extractelement <2 x i64> %foldExtExtBinop882, i64 0
  %i.brg = icmp eq i64 %i.brf, 0
  %i.brh = load ptr, ptr %i.bpy, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 16 ; 2 uses
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !195, !noalias !781
  tail call void @stream_wseek(ptr noundef %i.brj, i64 noundef %i.bqb), !noalias !781
  br i1 %i.brg, label %bb.br, label %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234: ; preds = %bb.bq
  %i.brk = sub nuw nsw <2 x i64> splat (i64 4), %i.bqr ; 2 uses
  %i.brl = sub nuw nsw <2 x i64> splat (i64 4), %i.brb ; 2 uses
  %i.brm = extractelement <2 x i64> %i.brk, i64 0
  %i.brn = extractelement <2 x i64> %i.brk, i64 1
  %i.bro = extractelement <2 x i64> %i.brl, i64 0
  %i.brp = extractelement <2 x i64> %i.brl, i64 1
  %i.brq = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.brh, ptr noundef %i.bps, i64 noundef %i.brm, i64 noundef %i.brn, i64 noundef %i.bro, i64 noundef %i.brp, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235

bb.br:                                            ; preds = %bb.bq
  %i.brr = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.brh, ptr noundef %i.bps), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234, %bb.br
  %i.brs = load ptr, ptr %i.bri, align 8, !tbaa !195, !noalias !781
  %i.brt = tail call i64 @stream_flush(ptr noundef %i.brs), !noalias !781 ; 0 uses
  %.pre.i.i.i.i190 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235, %bb.bp
  %i.bru = phi ptr [ %.pre.i.i.i.i190, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235 ], [ %i.bpa, %bb.bp ] ; 2 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 48
  %i.brw = getelementptr inbounds nuw i8, ptr %i.bru, i64 56
  %i.brx = load <4 x i64>, ptr %i.brw, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bry = add <4 x i64> %i.brx, splat (i64 -4)
  %i.brz = lshr <4 x i64> %i.bry, splat (i64 62)
  %i.bsa = sub <4 x i64> zeroinitializer, %i.brx
  %i.bsb = and <4 x i64> %i.brz, %i.bsa           ; 3 uses
  %i.bsc = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bsb)
  %i.bsd = icmp eq i64 %i.bsc, 0
  %i.bse = load ptr, ptr %i.brv, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 16 ; 2 uses
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !195, !noalias !781
  tail call void @stream_rseek(ptr noundef %i.bsg, i64 noundef 0), !noalias !781
  br i1 %i.bsd, label %bb.bt, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232: ; preds = %bb.bs
  %i.bsh = shufflevector <4 x i64> %i.bsb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bsi = sub nuw nsw <2 x i64> splat (i64 4), %i.bsh ; 2 uses
  %i.bsj = shufflevector <4 x i64> %i.bsb, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.bsk = sub nuw nsw <2 x i64> splat (i64 4), %i.bsj ; 2 uses
  %i.bsl = extractelement <2 x i64> %i.bsi, i64 0
  %i.bsm = extractelement <2 x i64> %i.bsi, i64 1
  %i.bsn = extractelement <2 x i64> %i.bsk, i64 0
  %i.bso = extractelement <2 x i64> %i.bsk, i64 1
  %i.bsp = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.bse, ptr noundef %i.bps, i64 noundef %i.bsl, i64 noundef %i.bsm, i64 noundef %i.bsn, i64 noundef %i.bso, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233

bb.bt:                                            ; preds = %bb.bs
  %i.bsq = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.bse, ptr noundef %i.bps), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232, %bb.bt
  %i.bsr = load ptr, ptr %i.bsf, align 8, !tbaa !195, !noalias !781
  %i.bss = tail call i64 @stream_align(ptr noundef %i.bsr), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit

_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit: ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233
  store double %i.bpl, ptr %i.bps, align 8, !tbaa !49, !noalias !781
  %i.bst = add i32 %.0414, 1                      ; 2 uses
  %i.bsu = zext i32 %i.bst to i64                 ; 2 uses
  %i.bsv = load i64, ptr %i.anb, align 8, !tbaa !126 ; 2 uses
  %i.bsw = add i64 %i.bsv, -1
  %i.bsx = icmp ugt i64 %i.bsw, %i.bsu
  br i1 %i.bsx, label %bb.ax, label %._crit_edge416.loopexit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #14

attributes #0 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !15, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!22 = !{!"_ZTSSt6locale", !21, i64 0}
!23 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !19, i64 48, !7, i64 64, !8, i64 192, !20, i64 200, !22, i64 208}
!24 = !{!"p1 _ZTSSo", !11, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!31 = !{!30, !27, i64 240}
!32 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!33 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!34 = !{!"p1 int", !11, i64 0}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!"_ZTSSt5ctypeIcE", !32, i64 0, !33, i64 16, !25, i64 24, !34, i64 32, !34, i64 40, !35, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!37 = !{!36, !7, i64 56}
!38 = !{!7, !7, i64 0}
!39 = !{!8, !8, i64 0}
!40 = !{!15, !15, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!42 = !{!41, !12, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !15, i64 8, !7, i64 16}
!44 = !{!43, !12, i64 0}
!45 = !{!43, !15, i64 8}
!46 = !{!23, !16, i64 24}
!47 = !{!16, !16, i64 0}
!48 = !{!"double", !7, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!51 = !{!"p1 _ZTSN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!52 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !50, i64 8, !51, i64 16}
!53 = !{!52, !50, i64 8}
!54 = !{ptr @_ZN3zfp6array1IfNS_5codec4zfp1IfEENS_5index8implicitEED2Ev}
!55 = !{!52, !51, i64 16}
!56 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!57 = !{!"p1 _ZTSN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!58 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !56, i64 8, !57, i64 16}
!59 = !{!58, !56, i64 8}
!60 = !{ptr @_ZN3zfp6array2IfNS_5codec4zfp2IfEENS_5index8implicitEED2Ev}
!61 = !{!58, !57, i64 16}
!62 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!63 = !{!"p1 _ZTSN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!64 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !62, i64 8, !63, i64 16}
!65 = !{!64, !62, i64 8}
!66 = !{ptr @_ZN3zfp6array3IfNS_5codec4zfp3IfEENS_5index8implicitEED2Ev}
!67 = !{!64, !63, i64 16}
!68 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!69 = !{!"p1 _ZTSN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!70 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !68, i64 8, !69, i64 16}
!71 = !{!70, !68, i64 8}
!72 = !{ptr @_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEED2Ev}
!73 = !{!70, !69, i64 16}
!74 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!75 = !{!"p1 _ZTSN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!76 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !74, i64 8, !75, i64 16}
!77 = !{!76, !74, i64 8}
!78 = !{ptr @_ZN3zfp6array1IdNS_5codec4zfp1IdEENS_5index8implicitEED2Ev}
!79 = !{!76, !75, i64 16}
!80 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!81 = !{!"p1 _ZTSN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!82 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !80, i64 8, !81, i64 16}
!83 = !{!82, !80, i64 8}
!84 = !{ptr @_ZN3zfp6array2IdNS_5codec4zfp2IdEENS_5index8implicitEED2Ev}
!85 = !{!82, !81, i64 16}
!86 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!87 = !{!"p1 _ZTSN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!88 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !86, i64 8, !87, i64 16}
!89 = !{!88, !86, i64 8}
!90 = !{ptr @_ZN3zfp6array3IdNS_5codec4zfp3IdEENS_5index8implicitEED2Ev}
!91 = !{!88, !87, i64 16}
!92 = !{!"p1 _ZTSN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE3TagE", !11, i64 0}
!93 = !{!"p1 _ZTSN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineE", !11, i64 0}
!94 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEE", !8, i64 0, !92, i64 8, !93, i64 16}
!95 = !{!94, !92, i64 8}
!96 = !{ptr @_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEED2Ev}
!97 = !{!94, !93, i64 16}
!98 = !{!"float", !7, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!23, !15, i64 8}
!101 = !{!23, !15, i64 16}
!102 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !22, i64 56}
!103 = !{!102, !12, i64 40}
!104 = !{!102, !12, i64 32}
!105 = !{!"_ZTSSt13_Ios_Openmode", !7, i64 0}
!106 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !102, i64 0, !105, i64 64, !43, i64 72}
!107 = !{!106, !105, i64 64}
!108 = !{!"_ZTS8zfp_type", !7, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!11, !11, i64 0}
!111 = !{i64 0, i64 4, !109, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !40, i64 32, i64 8, !40, i64 40, i64 8, !40, i64 48, i64 8, !40, i64 56, i64 8, !40, i64 64, i64 8, !40, i64 72, i64 8, !110}
!112 = !{!"_ZTSN3zfp5arrayE", !108, i64 8, !8, i64 12, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!113 = !{!112, !108, i64 8}
!114 = !{!112, !8, i64 12}
!115 = !{!"_ZTSN3zfp5codec8zfp_baseILj1EfEE", !11, i64 0}
!116 = !{!115, !11, i64 0}
!117 = !{!"_ZTSN3zfp5index8implicitE", !15, i64 0, !15, i64 8}
!118 = !{!"_ZTSN3zfp5codec4zfp1IfEE", !115, i64 0}
!119 = !{!"_ZTSN3zfp8internal10BlockStoreINS_5codec4zfp1IfEENS_5index8implicitEEE", !11, i64 8, !15, i64 16, !15, i64 24, !117, i64 32, !118, i64 48}
!120 = !{!"_ZTSN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEE", !119, i64 0, !15, i64 56, !15, i64 64}
!121 = !{!120, !15, i64 56}
!122 = !{!120, !15, i64 64}
!123 = !{!117, !15, i64 0}
!124 = !{!52, !8, i64 0}
!125 = !{!"p1 _ZTSN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEE", !11, i64 0}
!126 = !{!112, !15, i64 16}
!127 = !{!"_ZTSN3zfp5codec8zfp_baseILj2EfEE", !11, i64 0}
!128 = !{!127, !11, i64 0}
!129 = !{!"_ZTSN3zfp5codec4zfp2IfEE", !127, i64 0}
!130 = !{!"_ZTSN3zfp8internal10BlockStoreINS_5codec4zfp2IfEENS_5index8implicitEEE", !11, i64 8, !15, i64 16, !15, i64 24, !117, i64 32, !129, i64 48}
!131 = !{!"_ZTSN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEE", !130, i64 0, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!132 = !{!131, !15, i64 64}
!133 = !{!131, !15, i64 56}
!134 = !{!131, !15, i64 80}
!135 = !{!131, !15, i64 72}
!136 = !{!58, !8, i64 0}
!137 = !{!"p1 _ZTSN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEE", !11, i64 0}
!138 = !{!112, !15, i64 24}
!139 = !{!"_ZTSN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEE", !58, i64 0, !137, i64 24}
!140 = !{!139, !137, i64 24}
!141 = !{}
!142 = !{i64 8}
!143 = !{!"_ZTSN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagE", !8, i64 0}
!144 = !{!143, !8, i64 0}
!145 = !{!"_ZTSN3zfp5codec8zfp_baseILj3EfEE", !11, i64 0}
!146 = !{!145, !11, i64 0}
!147 = !{!"_ZTSN3zfp5codec4zfp3IfEE", !145, i64 0}
!148 = !{!"_ZTSN3zfp8internal10BlockStoreINS_5codec4zfp3IfEENS_5index8implicitEEE", !11, i64 8, !15, i64 16, !15, i64 24, !117, i64 32, !147, i64 48}
!149 = !{!"_ZTSN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEE", !148, i64 0, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!150 = !{!149, !15, i64 72}
!151 = !{!149, !15, i64 64}
!152 = !{!149, !15, i64 56}
!153 = !{!149, !15, i64 96}
!154 = !{!149, !15, i64 88}
!155 = !{!149, !15, i64 80}
!156 = !{!64, !8, i64 0}
!157 = !{!"p1 _ZTSN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEE", !11, i64 0}
!158 = !{!112, !15, i64 32}
!159 = !{!"_ZTSN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEE", !64, i64 0, !157, i64 24}
end_hunk_1
