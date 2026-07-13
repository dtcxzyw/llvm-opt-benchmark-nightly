inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_decode:bb.a
bb.y:                                             ; preds = %bb.x
  %i.im = sub i32 %i.ik, %.0172299.i              ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.in
  %i.io = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.ip = add nuw i64 %i.io, %i.hi
  %i.iq = lshr i64 %i.ip, %i.in
  %i.ir = trunc i64 %i.iq to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.ir ; 2 uses
  %i.is = add nuw i64 %i.io, %i.hj
  %i.it = lshr i64 %i.is, %i.in
  %i.iu = trunc i64 %i.it to i32
  %.ph275.i = select i1 %.not64.i.not.i, i32 0, i32 %i.iu ; 2 uses
  %i.iv = add nuw i64 %i.io, %i.hk
  %i.iw = lshr i64 %i.iv, %i.in
  %i.ix = trunc i64 %i.iw to i32
  %.ph278.i = select i1 %.not66.i.not.i, i32 0, i32 %i.ix ; 2 uses
  %i.iy = add nuw i64 %i.io, %i.hl
  %i.iz = lshr i64 %i.iy, %i.in
  %i.ja = trunc i64 %i.iz to i32
  %.ph280.i = select i1 %.not68.i.not.i, i32 0, i32 %i.ja ; 2 uses
  %i.jb = add i32 %i.im, -1
  %i.jc = shl nuw i32 1, %i.jb                    ; 8 uses
  %.not62.i197.i = icmp ugt i32 %i.eo, %i.jc
  %i.jd = sub nuw i32 %i.eo, %i.jc
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nuw i64 %i.je, %i.io
  %i.jg = lshr i64 %i.jf, %i.in
  %i.jh = trunc i64 %i.jg to i32
  %.ph282.i = select i1 %.not62.i197.i, i32 %i.jh, i32 0 ; 2 uses
  %.not66.i198.i = icmp ugt i32 %i.es, %i.jc
  %i.ji = sub nuw i32 %i.es, %i.jc
  %i.jj = zext i32 %i.ji to i64
  %i.jk = add nuw i64 %i.jj, %i.io
  %i.jl = lshr i64 %i.jk, %i.in
  %i.jm = trunc i64 %i.jl to i32
  %.ph284.i = select i1 %.not66.i198.i, i32 %i.jm, i32 0 ; 2 uses
  %.not64.i202.i = icmp ugt i32 %i.eq, %i.jc
  %i.jn = sub nuw i32 %i.eq, %i.jc
  %i.jo = zext i32 %i.jn to i64
  %i.jp = add nuw i64 %i.jo, %i.io
  %i.jq = lshr i64 %i.jp, %i.in
  %i.jr = trunc i64 %i.jq to i32
  %.ph286.i = select i1 %.not64.i202.i, i32 %i.jr, i32 0 ; 2 uses
  %.not68.i203.i = icmp ugt i32 %i.eu, %i.jc
  br i1 %.not68.i203.i, label %bb.z, label %opj_dwt_get_band_coordinates.exit206.i

bb.z:                                             ; preds = %bb.y
  %i.js = sub nuw i32 %i.eu, %i.jc
  %i.jt = zext i32 %i.js to i64
  %i.ju = add nuw i64 %i.jt, %i.io
  %i.jv = lshr i64 %i.ju, %i.in
  %i.jw = trunc i64 %i.jv to i32
  br label %opj_dwt_get_band_coordinates.exit206.i

opj_dwt_get_band_coordinates.exit206.i:           ; preds = %bb.z, %bb.y, %bb.x
  %i.jx = phi i32 [ %.ph286.i, %bb.y ], [ %.ph286.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.jy = phi i32 [ %.ph282.i, %bb.y ], [ %.ph282.i, %bb.z ], [ %i.eo, %bb.x ]
  %i.jz = phi i32 [ %.ph278.i, %bb.y ], [ %.ph278.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ka = phi i32 [ %.ph.i, %bb.y ], [ %.ph.i, %bb.z ], [ %i.eo, %bb.x ] ; 7 uses
  %i.kb = phi i32 [ %.ph275.i, %bb.y ], [ %.ph275.i, %bb.z ], [ %i.eq, %bb.x ]
  %i.kc = phi i32 [ %.ph280.i, %bb.y ], [ %.ph280.i, %bb.z ], [ %i.eu, %bb.x ]
  %i.kd = phi i32 [ %.ph284.i, %bb.y ], [ %.ph284.i, %bb.z ], [ %i.es, %bb.x ]
  %i.ke = phi i32 [ 0, %bb.y ], [ %i.jw, %bb.z ], [ %i.eu, %bb.x ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 224
  %i.kg = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 272
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !137 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 228
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !141 ; 2 uses
  %i.kk = load i32, ptr %i.kf, align 8, !tbaa !137 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0173298.i, i64 276
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !141 ; 2 uses
  %i.kn = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ka, i32 %i.kh) ; 4 uses
  %i.ko = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kb, i32 %i.kj)
  %i.kp = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jz, i32 %i.kh)
  %i.kq = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kc, i32 %i.kj)
  %i.kr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jy, i32 %i.kk)
  %i.ks = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kd, i32 %i.kk)
  %i.kt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.jx, i32 %i.km)
  %i.ku = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ke, i32 %i.km)
  %i.kv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kn, i32 2) ; 17 uses
  %i.kw = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kp, i32 range(i32 2, 5) 2)
  %i.kx = tail call noundef i32 @llvm.umin.i32(i32 %i.kw, i32 %.0174297.i) ; 8 uses
  %i.ky = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kr, i32 2) ; 8 uses
  %i.kz = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ks, i32 range(i32 2, 5) 2)
  %i.la = tail call noundef i32 @llvm.umin.i32(i32 %i.kz, i32 %i.ig) ; 8 uses
  %i.lb = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ko, i32 2) ; 13 uses
  %i.lc = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.kq, i32 range(i32 2, 5) 2)
  %i.ld = tail call noundef i32 @llvm.umin.i32(i32 %i.lc, i32 %.0175296.i) ; 9 uses
  %i.le = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.kt, i32 2) ; 9 uses
  %i.lf = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.ku, i32 range(i32 2, 5) 2)
  %i.lg = tail call noundef i32 @llvm.umin.i32(i32 %i.lf, i32 %i.ii) ; 8 uses
  %i.lh = icmp eq i32 %i.ih, 0                    ; 5 uses
  %.382.i = select i1 %i.lh, i32 %i.kv, i32 %i.ky
  %.383.i = select i1 %i.lh, i32 %i.ky, i32 %i.kv
  %.384.i = select i1 %i.lh, i32 %i.kx, i32 %i.la
  %.385.i = select i1 %i.lh, i32 %i.la, i32 %i.kx
  %i.li = shl i32 %.382.i, 1
  %i.lj = shl i32 %.383.i, 1
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = tail call noundef i32 @llvm.umin.i32(i32 %i.li, i32 %i.lk) ; 3 uses
  %i.lm = shl i32 %.384.i, 1
  %i.ln = shl i32 %.385.i, 1
  %i.lo = or disjoint i32 %i.ln, 1
  %i.lp = tail call noundef i32 @llvm.umax.i32(i32 %i.lm, i32 %i.lo) ; 2 uses
  %i.lq = tail call noundef i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ia) ; 5 uses
  %i.lr = icmp eq i32 %i.ij, 0                    ; 2 uses
  br i1 %i.lr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %opj_dwt_get_band_coordinates.exit206.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %opj_dwt_get_band_coordinates.exit206.i
  %.sink381.i = phi i32 [ %i.le, %bb.aa ], [ %i.lb, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink380.i = phi i32 [ %i.lb, %bb.aa ], [ %i.le, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink376.i = phi i32 [ %i.lg, %bb.aa ], [ %i.ld, %opj_dwt_get_band_coordinates.exit206.i ]
  %.sink375.i = phi i32 [ %i.ld, %bb.aa ], [ %i.lg, %opj_dwt_get_band_coordinates.exit206.i ]
  %i.ls = shl i32 %.sink381.i, 1
  %i.lt = shl i32 %.sink380.i, 1
  %i.lu = or disjoint i32 %i.lt, 1
  %i.lv = tail call noundef i32 @llvm.umin.i32(i32 %i.ls, i32 %i.lu) ; 2 uses
  %i.lw = shl i32 %.sink376.i, 1
  %i.lx = shl i32 %.sink375.i, 1
  %i.ly = or disjoint i32 %i.lx, 1
  %i.lz = tail call noundef i32 @llvm.umax.i32(i32 %i.lw, i32 %i.ly)
  %i.ma = tail call noundef i32 @llvm.umin.i32(i32 %i.lz, i32 %i.if)
  %.not306.i = icmp eq i32 %i.if, 0
  %.pre315.i = add i32 %i.le, %.0175296.i         ; 2 uses
  %.pre316.i = add i32 %i.lg, %.0175296.i         ; 2 uses
  br i1 %.not306.i, label %.preheader.i17, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.ab
  %i.mb = icmp ult i32 %i.lp, %i.ia
  %i.mc = add i32 %i.lq, -1
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.md
  %i.mf = zext i32 %i.lq to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mf
  %i.mh = sext i32 %i.ih to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.mh
  %i.mj = shl i32 %i.kv, 1                        ; 3 uses
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = add i32 %i.ky, %.0174297.i
  %i.mn = add i32 %i.la, %.0174297.i
  %i.mo = sub nsw i64 0, %i.mh
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.mo
  %i.mq = shl i32 %i.ky, 1
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mr
  %i.mt = icmp eq i32 %.0174297.i, 0
  %i.mu = icmp eq i32 %i.ig, 1
  %or.cond3.i.i = and i1 %i.mt, %i.mu
  %i.mv = icmp slt i32 %i.kv, %i.kx               ; 2 uses
  %i.mw = shl i32 %i.ig, 1                        ; 2 uses
  %i.mx = add i32 %i.mw, -2
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.my
  %i.na = icmp slt i32 %i.ky, %i.la               ; 2 uses
  %i.nb = shl i32 %.0174297.i, 1                  ; 2 uses
  %i.nc = add i32 %i.nb, -1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nd ; 2 uses
  %i.nf = sext i32 %i.ky to i64                   ; 6 uses
  %i.ng = sext i32 %.0174297.i to i64             ; 2 uses
  %wide.trip.count.i.i = sext i32 %i.la to i64
  %i.nh = icmp sgt i32 %i.ig, 0
  %i.ni = icmp sgt i32 %.0174297.i, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  %i.nj = icmp slt i32 %i.kv, 1
  %.not171.not.i.i = icmp sgt i32 %i.kv, %i.ig
  %i.nk = add i32 %i.mj, -1
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = add i32 %i.mw, -1
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %.pn.i.i = select i1 %.not171.not.i.i, i64 %i.nn, i64 %i.nl
  %.in.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn.i.i
  %i.no = icmp slt i32 %i.kv, 0
  %.not172.i.i = icmp slt i32 %i.kv, %i.ig
  %i.np = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.nn ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mk
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = sext i32 %i.mj to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ns ; 2 uses
  %spec.select.i209.i = tail call i32 @llvm.smin.i32(i32 %i.kx, i32 %i.ig) ; 9 uses
  %.0150216.i.i = add nuw i32 %i.kv, 1            ; 3 uses
  %i.nu = icmp slt i32 %.0150216.i.i, %spec.select.i209.i
  %i.nv = sext i32 %.0150216.i.i to i64           ; 4 uses
  %i.nw = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count240.i.i = sext i32 %i.kx to i64
  %i.nx = add i32 %.0174297.i, -1                 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, %i.ky
  %spec.select191.i.i = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.nx)
  %i.nz = sext i32 %spec.select191.i.i to i64     ; 2 uses
  %i.oa = add i32 %i.nb, -2
  %i.ob = sext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ob
  %i.od = zext i32 %i.ll to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.od
  %..i = select i1 %.not172.i.i, ptr %i.nr, ptr %i.np
  %5 = add nsw i64 %i.nf, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.nz, i64 %5)
  %6 = sub i64 %smax, %i.nf                       ; 3 uses
  %i.of = add i32 %spec.select.i209.i, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.og = add i32 %i.of, %umin
  %umin95 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.oh = add i32 %i.og, %umin95
  %i.oi = sub i32 %i.oh, %i.ka                    ; 2 uses
  %i.oj = shl i32 %i.kv, 1
  %i.ok = shl nsw i64 %i.nv, 3                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hg, i64 %i.ok ; 2 uses
  %i.ol = add i32 %spec.select.i209.i, -2
  %umin97 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.om = add i32 %i.ol, %umin97
  %umin98 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %i.on = add i32 %i.om, %umin98
  %i.oo = sub i32 %i.on, %i.ka
  %i.op = zext i32 %i.oo to i64
  %i.oq = shl nuw nsw i64 %i.op, 3                ; 2 uses
  %i.or = add nsw i64 %i.ok, %i.oq                ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep96, i64 %i.or ; 2 uses
  %i.os = shl i32 %i.kv, 1
  %i.ot = sext i32 %i.os to i64
  %i.ou = shl nsw i64 %i.ot, 2                    ; 2 uses
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ou
  %i.ov = getelementptr i8, ptr %scevgep102, i64 %i.oq
  %scevgep103 = getelementptr i8, ptr %i.ov, i64 %i.ou
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.ok
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.or
  %7 = add i32 %spec.select.i209.i, -2
  %umin111 = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.kh)
  %i.ow = add i32 %7, %umin111
  %umin112 = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 2)
  %8 = add i32 %i.ow, %umin112
  %9 = sub i32 %8, %i.ka                          ; 2 uses
  %i.ox = zext i32 %9 to i64
  %i.oy = add nuw nsw i64 %i.ox, 1                ; 2 uses
  %min.iters.check114 = icmp ult i32 %9, 12
  %mul.overflow = icmp slt i32 %i.oi, 0
  %i.oz = add i32 %i.kv, %i.oi
  %i.pa = shl i32 %i.oz, 1
  %i.pb = icmp slt i32 %i.pa, %i.oj
  %i.pc = or i1 %i.pb, %mul.overflow
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %scevgep101, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %scevgep, %scevgep107
  %bound1109 = icmp ult ptr %scevgep105, %scevgep99
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  %n.mod.vf116 = and i64 %i.oy, 3                 ; 2 uses
  %i.pd = icmp eq i64 %n.mod.vf116, 0
  %i.pe = select i1 %i.pd, i64 4, i64 %n.mod.vf116
  %n.vec117 = sub nsw i64 %i.oy, %i.pe            ; 3 uses
  %i.pf = add nsw i64 %n.vec117, %i.nv
  %i.pg = trunc i64 %n.vec117 to i32
  %i.ph = add i32 %i.kv, %i.pg
  %min.iters.check = icmp ult i64 %6, 5
  %n.mod.vf = and i64 %6, 3                       ; 2 uses
  %i.pi = icmp eq i64 %n.mod.vf, 0
  %i.pj = select i1 %i.pi, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %6, %i.pj                      ; 2 uses
  %i.pk = add i64 %n.vec, %i.nf
  br label %bb.ac

.preheader.i17:                                   ; preds = %bb.bh, %bb.ab
  %i.pl = shl nsw i32 %i.ij, 2                    ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.pm
  %i.po = shl i32 %i.lb, 3                        ; 3 uses
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pp
  %i.pr = sub nsw i32 4, %i.pl
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ps
  %i.pu = shl i32 %i.le, 3                        ; 2 uses
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pv
  %i.px = icmp eq i32 %.0175296.i, 0
  %i.py = icmp eq i32 %i.ii, 1
  %or.cond3.i211.i = and i1 %i.px, %i.py
  %i.pz = icmp slt i32 %i.lb, %i.ld               ; 2 uses
  %i.qa = shl i32 %i.ii, 3                        ; 2 uses
  %i.qb = add i32 %i.qa, -8                       ; 4 uses
  %.not320.us.i.i = icmp sgt i32 %i.ii, 0         ; 2 uses
  %i.qc = zext i32 %i.qb to i64                   ; 3 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qc
  %i.qe = or disjoint i64 %i.qc, 1                ; 2 uses
  %i.qf = trunc nuw i64 %i.qe to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qe
  %i.qh = or disjoint i64 %i.qc, 3                ; 2 uses
  %i.qi = trunc nuw i64 %i.qh to i32
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qh
  %i.qk = select i1 %.not320.us.i.i, i32 0, i32 %i.qb
  %i.ql = zext i32 %i.qk to i64
  %.in321.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ql
  %i.qm = icmp slt i32 %i.le, %i.lg               ; 2 uses
  %i.qn = shl i32 %.0175296.i, 3                  ; 4 uses
  %i.qo = add i32 %i.qn, -4                       ; 6 uses
  %i.qp = zext i32 %i.qo to i64
  %i.qq = or disjoint i32 %i.qo, 1                ; 2 uses
  %i.qr = or disjoint i32 %i.qo, 2                ; 2 uses
  %i.qs = or disjoint i32 %i.qo, 3                ; 2 uses
  %.in315.us370.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.qp ; 3 uses
  %i.qt = add i32 %i.qn, -2
  %.in315.v.us369.2.i.i = zext i32 %i.qt to i64
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %i.qv = add i32 %i.qn, -1
  %.in315.v.us369.3.i.i = zext i32 %i.qv to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.qx = icmp sgt i32 %.0175296.i, 1
  %or.cond.i213.i = or i1 %i.qx, %.not320.us.i.i
  %i.qy = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %i.qz = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.ra = add i32 %i.qa, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.po, 4
  %i.rb = zext i32 %i.ra to i64                   ; 2 uses
  %i.rc = zext i32 %.pn341.i.i to i64
  %i.rd = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rc ; 4 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pp ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 12 ; 2 uses
  %i.ri = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.rj = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.rk = icmp slt i32 %i.rj, %spec.select.i218.i
  %i.rl = sext i32 %i.po to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.rl
  %i.rn = sext i32 %i.ri to i64
  %i.ro = sext i32 %spec.select.i218.i to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rb ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  %i.rs = add i32 %.0175296.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.rs) ; 8 uses
  %i.rt = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.ru = icmp slt i32 %i.rt, %spec.select322.i.i
  %i.rv = sext i32 %i.pu to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.rv
  %i.rx = sext i32 %i.le to i64
  %i.ry = sext i32 %spec.select322.i.i to i64
  %i.rz = add i32 %i.qn, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0175296.i, 0
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sa
  %i.sc = select i1 %.not304.us.i.i, i32 0, i32 %i.rz
  %i.sd = zext i32 %i.sc to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sd ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.se = shl i32 %i.lv, 2
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sf
  %.301.v.i = select i1 %.not312.i.i, i64 %i.rd, i64 %i.rb
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0180295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0180295.i, %i.lb
  %i.sh = icmp ult i32 %.0180295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.sh
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0180295.i, %.pre315.i
  %i.si = icmp ult i32 %.0180295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.si
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0180295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !3
  store i32 0, ptr %i.mg, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.sj = add nuw i32 %.0180295.i, 1              ; 4 uses
  %i.sk = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0180295.i, i32 noundef %i.kx, i32 noundef %i.sj, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.sl = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0180295.i, i32 noundef %i.mn, i32 noundef %i.sj, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.sm = load i32, ptr %.in.ph.i.i, align 4, !tbaa !3
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sn = load i32, ptr %i.hm, align 4, !tbaa !3  ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.so = phi i32 [ %i.sm, %.thread.i.i ], [ %i.sn, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.sp = phi i32 [ %i.sn, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.sq = phi i32 [ %i.sn, %bb.ak ], [ %i.so, %bb.al ]
  %i.sr = add i32 %i.sp, 2
  %i.ss = add i32 %i.sr, %i.sq
  %i.st = ashr i32 %i.ss, 2
  %i.su = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.sv = sub nsw i32 %i.su, %i.st
  store i32 %i.sv, ptr %i.nt, align 4, !tbaa !3
  br i1 %i.nu, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge = select i1 %min.iters.check114, i1 true, i1 %i.pc
  %brmerge161 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge161, label %.lr.ph219.i.i.preheader131, label %vector.body118

.lr.ph219.i.i.preheader131:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body118
  %indvars.iv233.i.i.ph = phi i64 [ %i.nv, %.lr.ph219.i.i.preheader ], [ %i.pf, %vector.body118 ] ; 5 uses
  %.0150.in217.i.i.ph = phi i32 [ %i.kv, %.lr.ph219.i.i.preheader ], [ %i.ph, %vector.body118 ] ; 2 uses
  %i.sw = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.sx = sub i32 %spec.select.i209.i, %i.sw
  %.neg = add i32 %i.sw, 1
  %xtraiter145.a = and i32 %i.sx, 1
  %lcmp.mod146.not.a = icmp eq i32 %xtraiter145.a, 0
  br i1 %lcmp.mod146.not.a, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader131
  %i.sy = shl nsw i32 %.0150.in217.i.i.ph, 1
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr [4 x i8], ptr %i.hg, i64 %i.sz
  %i.tb = getelementptr i8, ptr %i.ta, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !3
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.td = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.te = getelementptr i8, ptr %i.td, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3
  %i.tg = add i32 %i.tc, 2
  %i.th = add i32 %i.tg, %i.tf
end_hunk_0
