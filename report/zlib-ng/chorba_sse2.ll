Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chorba_sse2?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@chorba_small_nondestructive_sse2:bb.a
  %i.jb = lshr <2 x i64> %i.iy, splat (i64 47)
  %i.jc = lshr <2 x i64> %i.iy, splat (i64 9)
  %i.jd = xor <2 x i64> %i.jb, %i.jc
  %i.je = shl <2 x i64> %i.iy, splat (i64 19)
  %i.jf = xor <2 x i64> %i.jd, %i.je              ; 2 uses
  %i.jg = lshr <2 x i64> %i.iy, splat (i64 45)
  %i.jh = shl <2 x i64> %i.iy, splat (i64 44)
  %i.ji = or disjoint <2 x i64> %i.jg, %i.jh
  %i.jj = lshr <2 x i64> %i.iy, splat (i64 20)    ; 2 uses
  %i.jk = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.jl = xor <2 x i64> %i.s, %i.p                ; 2 uses
  %i.jm = xor <2 x i64> %i.io, %i.ih
  %i.jn = xor <2 x i64> %i.jm, %.uncasted613
  %i.jo = xor <2 x i64> %i.jn, %i.ik
  %i.jp = xor <2 x i64> %i.jo, %i.ja
  %i.jq = xor <2 x i64> %i.jp, %i.iz
  %i.jr = xor <2 x i64> %i.jq, %i.jk
  %i.js = xor <2 x i64> %i.jr, %i.n
  %i.jt = xor <2 x i64> %i.js, %i.x
  %i.ju = xor <2 x i64> %i.jt, %.uncasted605
  %i.jv = xor <2 x i64> %i.ju, %i.jl              ; 8 uses
  %i.jw = shl <2 x i64> %i.jv, splat (i64 17)
  %i.jx = shl <2 x i64> %i.jv, splat (i64 55)
  %i.jy = lshr <2 x i64> %i.jv, splat (i64 47)
  %i.jz = lshr <2 x i64> %i.jv, splat (i64 9)
  %i.ka = xor <2 x i64> %i.jy, %i.jz
  %i.kb = shl <2 x i64> %i.jv, splat (i64 19)
  %i.kc = xor <2 x i64> %i.ka, %i.kb              ; 2 uses
  %i.kd = lshr <2 x i64> %i.jv, splat (i64 45)
  %i.ke = shl <2 x i64> %i.jv, splat (i64 44)
  %i.kf = or disjoint <2 x i64> %i.kd, %i.ke
  %i.kg = lshr <2 x i64> %i.jv, splat (i64 20)    ; 2 uses
  %i.kh = shufflevector <2 x i64> %i.ii, <2 x i64> %i.jj, <2 x i32> <i32 1, i32 2>
  %.uncasted614 = shufflevector <2 x i64> %i.jf, <2 x i64> %i.kc, <2 x i32> <i32 1, i32 2>
  %.uncasted615 = shufflevector <2 x i64> %i.jj, <2 x i64> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.ki = shufflevector <2 x i64> %i.kc, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.kj = getelementptr i8, ptr %i.g, i64 256
  %i.kk = load <2 x i64>, ptr %i.kj, align 16, !tbaa !16
  %i.kl = getelementptr i8, ptr %i.g, i64 272
  %i.km = load <2 x i64>, ptr %i.kl, align 16, !tbaa !16
  %i.kn = xor <2 x i64> %i.kk, %i.ji
  %i.ko = xor <2 x i64> %i.kn, %i.kh
  %i.kp = xor <2 x i64> %i.ko, %i.jx
  %i.kq = xor <2 x i64> %i.kp, %i.jw
  %i.kr = xor <2 x i64> %i.kq, %.uncasted614
  %i.ks = xor <2 x i64> %i.kr, %i.ip
  %i.kt = xor <2 x i64> %i.ks, %i.dd
  %i.ku = xor <2 x i64> %i.kt, %i.hm
  %i.kv = xor <2 x i64> %i.ku, %.uncasted605      ; 8 uses
  %i.kw = shl <2 x i64> %i.kv, splat (i64 17)
  %i.kx = shl <2 x i64> %i.kv, splat (i64 55)
  %i.ky = lshr <2 x i64> %i.kv, splat (i64 47)
  %i.kz = lshr <2 x i64> %i.kv, splat (i64 9)
  %i.la = xor <2 x i64> %i.ky, %i.kz
  %i.lb = shl <2 x i64> %i.kv, splat (i64 19)
  %i.lc = xor <2 x i64> %i.la, %i.lb              ; 2 uses
  %i.ld = lshr <2 x i64> %i.kv, splat (i64 45)
  %i.le = shl <2 x i64> %i.kv, splat (i64 44)
  %i.lf = or disjoint <2 x i64> %i.ld, %i.le
  %i.lg = lshr <2 x i64> %i.kv, splat (i64 20)    ; 2 uses
  %i.lh = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %i.lc, <2 x i32> <i32 0, i32 2>
  %i.li = xor <2 x i64> %i.km, %i.kf
  %i.lj = xor <2 x i64> %i.li, %.uncasted615
  %i.lk = xor <2 x i64> %i.lj, %i.ki
  %i.ll = xor <2 x i64> %i.lk, %i.kx
  %i.lm = xor <2 x i64> %i.ll, %i.kw
  %i.ln = xor <2 x i64> %i.lm, %i.lh
  %i.lo = xor <2 x i64> %i.ln, %i.q
  %i.lp = xor <2 x i64> %i.lo, %i.r
  %i.lq = xor <2 x i64> %i.lp, %i.dd
  %i.lr = xor <2 x i64> %i.lq, %i.jl              ; 8 uses
  %i.ls = shl <2 x i64> %i.lr, splat (i64 17)
  %i.lt = shl <2 x i64> %i.lr, splat (i64 55)
  %i.lu = lshr <2 x i64> %i.lr, splat (i64 47)
  %i.lv = lshr <2 x i64> %i.lr, splat (i64 9)
  %i.lw = xor <2 x i64> %i.lu, %i.lv
  %i.lx = shl <2 x i64> %i.lr, splat (i64 19)
  %i.ly = xor <2 x i64> %i.lw, %i.lx              ; 2 uses
  %i.lz = lshr <2 x i64> %i.lr, splat (i64 45)
  %i.ma = shl <2 x i64> %i.lr, splat (i64 44)
  %i.mb = or disjoint <2 x i64> %i.lz, %i.ma
  %i.mc = lshr <2 x i64> %i.lr, splat (i64 20)    ; 2 uses
  %i.md = shufflevector <2 x i64> %i.kg, <2 x i64> %i.lg, <2 x i32> <i32 1, i32 2>
  %.uncasted616 = shufflevector <2 x i64> %i.lc, <2 x i64> %i.ly, <2 x i32> <i32 1, i32 2>
  %.uncasted617 = shufflevector <2 x i64> %i.lg, <2 x i64> %i.mc, <2 x i32> <i32 1, i32 2>
  %i.me = shufflevector <2 x i64> %i.ly, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.mf = getelementptr i8, ptr %i.g, i64 288
  %i.mg = load <2 x i64>, ptr %i.mf, align 16, !tbaa !16
  %i.mh = getelementptr i8, ptr %i.g, i64 304
  %i.mi = load <2 x i64>, ptr %i.mh, align 16, !tbaa !16
  %i.mj = xor <2 x i64> %i.mg, %i.lf
  %i.mk = xor <2 x i64> %i.mj, %i.md
  %i.ml = xor <2 x i64> %i.mk, %i.lt
  %i.mm = xor <2 x i64> %i.ml, %i.ls
  %i.mn = xor <2 x i64> %i.mm, %.uncasted616
  %i.mo = xor <2 x i64> %i.mn, %i.q
  %i.mp = xor <2 x i64> %i.mo, %.uncasted605
  %i.mq = xor <2 x i64> %i.mp, %i.r               ; 8 uses
  %i.mr = shl <2 x i64> %i.mq, splat (i64 17)
  %i.ms = shl <2 x i64> %i.mq, splat (i64 55)
  %i.mt = lshr <2 x i64> %i.mq, splat (i64 47)
  %i.mu = lshr <2 x i64> %i.mq, splat (i64 9)
  %i.mv = xor <2 x i64> %i.mt, %i.mu
  %i.mw = shl <2 x i64> %i.mq, splat (i64 19)
  %i.mx = xor <2 x i64> %i.mv, %i.mw              ; 2 uses
  %i.my = lshr <2 x i64> %i.mq, splat (i64 45)
  %i.mz = shl <2 x i64> %i.mq, splat (i64 44)
  %i.na = or disjoint <2 x i64> %i.my, %i.mz
  %i.nb = lshr <2 x i64> %i.mq, splat (i64 20)    ; 2 uses
  %i.nc = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %i.mx, <2 x i32> <i32 0, i32 2>
  %i.nd = xor <2 x i64> %i.mi, %i.mb
  %i.ne = xor <2 x i64> %i.nd, %.uncasted617
  %i.nf = xor <2 x i64> %i.ne, %i.me
  %i.ng = xor <2 x i64> %i.nf, %i.ms
  %i.nh = xor <2 x i64> %i.ng, %i.mr
  %i.ni = xor <2 x i64> %i.nh, %i.nc
  %i.nj = xor <2 x i64> %i.ni, %i.r
  %i.nk = xor <2 x i64> %i.nj, %i.dd              ; 8 uses
  %i.nl = shl <2 x i64> %i.nk, splat (i64 17)
  %i.nm = shl <2 x i64> %i.nk, splat (i64 55)
  %i.nn = lshr <2 x i64> %i.nk, splat (i64 47)
  %i.no = lshr <2 x i64> %i.nk, splat (i64 9)
  %i.np = xor <2 x i64> %i.nn, %i.no
  %i.nq = shl <2 x i64> %i.nk, splat (i64 19)
  %i.nr = xor <2 x i64> %i.np, %i.nq              ; 2 uses
  %i.ns = lshr <2 x i64> %i.nk, splat (i64 45)
  %i.nt = shl <2 x i64> %i.nk, splat (i64 44)
  %i.nu = or disjoint <2 x i64> %i.ns, %i.nt
  %i.nv = lshr <2 x i64> %i.nk, splat (i64 20)    ; 2 uses
  %i.nw = shufflevector <2 x i64> %i.mc, <2 x i64> %i.nb, <2 x i32> <i32 1, i32 2>
  %.uncasted618 = shufflevector <2 x i64> %i.mx, <2 x i64> %i.nr, <2 x i32> <i32 1, i32 2>
  %.uncasted619 = shufflevector <2 x i64> %i.nb, <2 x i64> %i.nv, <2 x i32> <i32 1, i32 2>
  %i.nx = shufflevector <2 x i64> %i.nr, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.ny = xor <2 x i64> %i.nw, %i.na
  %i.nz = xor <2 x i64> %i.ny, %i.nm
  %i.oa = xor <2 x i64> %i.nz, %i.nl
  %i.ob = xor <2 x i64> %i.oa, %.uncasted618      ; 2 uses
  %i.oc = xor <2 x i64> %.uncasted619, %i.nu
  %i.od = xor <2 x i64> %i.oc, %i.nx              ; 2 uses
  %i.oe = shufflevector <2 x i64> %i.nv, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.of = add i64 %.0597622, 320                  ; 2 uses
  %i.og = add i64 %.0597622, 680
  %i.oh = icmp ult i64 %i.og, %2
  br i1 %i.oh, label %.lr.ph, label %.preheader621, !llvm.loop !8

.lr.ph633:                                        ; preds = %.preheader621, %.lr.ph633
  %.1592632 = phi <2 x i64> [ %i.pu, %.lr.ph633 ], [ %.0591.lcssa, %.preheader621 ]
  %.1594631 = phi <2 x i64> [ %i.pw, %.lr.ph633 ], [ %.0593.lcssa, %.preheader621 ]
  %.1596630 = phi <2 x i64> [ %i.px, %.lr.ph633 ], [ %.0595.lcssa, %.preheader621 ]
  %.1598629 = phi i64 [ %i.py, %.lr.ph633 ], [ %.0597.lcssa, %.preheader621 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %.1598629 ; 2 uses
  %i.oj = load <2 x i64>, ptr %i.oi, align 16, !tbaa !16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ol = load <2 x i64>, ptr %i.ok, align 16, !tbaa !16
  %i.om = xor <2 x i64> %i.oj, %.1592632          ; 8 uses
  %i.on = shl <2 x i64> %i.om, splat (i64 17)
  %i.oo = shl <2 x i64> %i.om, splat (i64 55)
  %i.op = lshr <2 x i64> %i.om, splat (i64 47)
  %i.oq = lshr <2 x i64> %i.om, splat (i64 9)
  %i.or = xor <2 x i64> %i.op, %i.oq
  %i.os = shl <2 x i64> %i.om, splat (i64 19)
  %i.ot = xor <2 x i64> %i.or, %i.os              ; 2 uses
  %i.ou = lshr <2 x i64> %i.om, splat (i64 45)
  %i.ov = shl <2 x i64> %i.om, splat (i64 44)
  %i.ow = or disjoint <2 x i64> %i.ou, %i.ov
  %i.ox = lshr <2 x i64> %i.om, splat (i64 20)    ; 2 uses
  %i.oy = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %i.ot, <2 x i32> <i32 0, i32 2>
  %i.oz = xor <2 x i64> %i.ol, %.1594631
  %i.pa = xor <2 x i64> %i.oz, %i.oo
  %i.pb = xor <2 x i64> %i.pa, %i.on
  %i.pc = xor <2 x i64> %i.pb, %i.oy              ; 8 uses
  %i.pd = shl <2 x i64> %i.pc, splat (i64 17)
  %i.pe = shl <2 x i64> %i.pc, splat (i64 55)
  %i.pf = lshr <2 x i64> %i.pc, splat (i64 47)
  %i.pg = lshr <2 x i64> %i.pc, splat (i64 9)
  %i.ph = xor <2 x i64> %i.pf, %i.pg
  %i.pi = shl <2 x i64> %i.pc, splat (i64 19)
  %i.pj = xor <2 x i64> %i.ph, %i.pi              ; 2 uses
  %i.pk = lshr <2 x i64> %i.pc, splat (i64 45)
  %i.pl = shl <2 x i64> %i.pc, splat (i64 44)
  %i.pm = or disjoint <2 x i64> %i.pk, %i.pl
  %i.pn = lshr <2 x i64> %i.pc, splat (i64 20)    ; 2 uses
  %.uncasted = shufflevector <2 x i64> %i.ot, <2 x i64> %i.pj, <2 x i32> <i32 1, i32 2>
  %i.po = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.pp = shufflevector <2 x i64> %i.pj, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %.uncasted601 = shufflevector <2 x i64> %i.ox, <2 x i64> %i.pn, <2 x i32> <i32 1, i32 2>
  %i.pq = xor <2 x i64> %i.po, %.1596630
  %i.pr = xor <2 x i64> %i.pq, %i.ow
  %i.ps = xor <2 x i64> %i.pr, %i.pe
  %i.pt = xor <2 x i64> %i.ps, %i.pd
  %i.pu = xor <2 x i64> %i.pt, %.uncasted         ; 2 uses
  %i.pv = xor <2 x i64> %i.pm, %.uncasted601
  %i.pw = xor <2 x i64> %i.pv, %i.pp              ; 2 uses
  %i.px = shufflevector <2 x i64> %i.pn, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.py = add i64 %.1598629, 32                   ; 2 uses
  %i.pz = add i64 %.1598629, 104
  %i.qa = icmp ult i64 %i.pz, %2
  br i1 %i.qa, label %.lr.ph633, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph633, %.preheader621
  %.1598.lcssa = phi i64 [ %.0597.lcssa, %.preheader621 ], [ %i.py, %.lr.ph633 ] ; 2 uses
  %.1596.lcssa = phi <2 x i64> [ %.0595.lcssa, %.preheader621 ], [ %i.px, %.lr.ph633 ]
  %.1594.lcssa = phi <2 x i64> [ %.0593.lcssa, %.preheader621 ], [ %i.pw, %.lr.ph633 ]
  %.1592.lcssa = phi <2 x i64> [ %.0591.lcssa, %.preheader621 ], [ %i.pu, %.lr.ph633 ]
  %i.qb = extractelement <2 x i64> %.1596.lcssa, i64 0
  %i.qc = sub i64 %2, %.1598.lcssa                ; 8 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 %.1598.lcssa ; 2 uses
  %i.qe = icmp ugt i64 %i.qc, 63
  br i1 %i.qe, label %.lr.ph642, label %.preheader620

.preheader620:                                    ; preds = %.lr.ph642, %._crit_edge
  %.0588.lcssa = phi i64 [ %i.qc, %._crit_edge ], [ %i.ra, %.lr.ph642 ] ; 5 uses
  %.0586.lcssa = phi ptr [ %i.a, %._crit_edge ], [ %i.qx, %.lr.ph642 ] ; 3 uses
  %.0585.lcssa = phi ptr [ %i.qd, %._crit_edge ], [ %i.qy, %.lr.ph642 ] ; 3 uses
  %i.qf = icmp samesign ugt i64 %.0588.lcssa, 15
  br i1 %i.qf, label %.lr.ph649.preheader, label %.preheader

.lr.ph649.preheader:                              ; preds = %.preheader620
  %i.qg = add nsw i64 %.0588.lcssa, -16           ; 2 uses
  %i.qh = lshr i64 %i.qg, 4
  %i.qi = add nuw nsw i64 %i.qh, 1
  %xtraiter = and i64 %i.qi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph649.prol.loopexit, label %.lr.ph649.prol

.lr.ph649.prol:                                   ; preds = %.lr.ph649.preheader, %.lr.ph649.prol
  %.1648.prol = phi ptr [ %i.qk, %.lr.ph649.prol ], [ %.0585.lcssa, %.lr.ph649.preheader ] ; 2 uses
  %.1587647.prol = phi ptr [ %i.qj, %.lr.ph649.prol ], [ %.0586.lcssa, %.lr.ph649.preheader ] ; 2 uses
  %.1589646.prol = phi i64 [ %i.qm, %.lr.ph649.prol ], [ %.0588.lcssa, %.lr.ph649.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph649.prol ], [ 0, %.lr.ph649.preheader ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.1587647.prol, i64 16 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.1648.prol, i64 16 ; 3 uses
  %i.ql = load <2 x i64>, ptr %.1648.prol, align 16, !tbaa !16
  store <2 x i64> %i.ql, ptr %.1587647.prol, align 16, !tbaa !16
  %i.qm = add nsw i64 %.1589646.prol, -16         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph649.prol.loopexit, label %.lr.ph649.prol, !llvm.loop !10

.lr.ph649.prol.loopexit:                          ; preds = %.lr.ph649.prol, %.lr.ph649.preheader
  %.1648.unr = phi ptr [ %.0585.lcssa, %.lr.ph649.preheader ], [ %i.qk, %.lr.ph649.prol ]
  %.1587647.unr = phi ptr [ %.0586.lcssa, %.lr.ph649.preheader ], [ %i.qj, %.lr.ph649.prol ]
  %.1589646.unr = phi i64 [ %.0588.lcssa, %.lr.ph649.preheader ], [ %i.qm, %.lr.ph649.prol ]
  %.lcssa715.unr = phi ptr [ poison, %.lr.ph649.preheader ], [ %i.qj, %.lr.ph649.prol ]
  %.lcssa714.unr = phi ptr [ poison, %.lr.ph649.preheader ], [ %i.qk, %.lr.ph649.prol ]
  %.lcssa713.unr = phi i64 [ poison, %.lr.ph649.preheader ], [ %i.qm, %.lr.ph649.prol ]
  %i.qn = icmp ult i64 %i.qg, 112
  br i1 %i.qn, label %.preheader, label %.lr.ph649

.lr.ph642:                                        ; preds = %._crit_edge, %.lr.ph642
  %.0585640 = phi ptr [ %i.qy, %.lr.ph642 ], [ %i.qd, %._crit_edge ] ; 5 uses
  %.0586639 = phi ptr [ %i.qx, %.lr.ph642 ], [ %i.a, %._crit_edge ] ; 5 uses
  %.0588638 = phi i64 [ %i.ra, %.lr.ph642 ], [ %i.qc, %._crit_edge ]
  %i.qo = getelementptr inbounds nuw i8, ptr %.0586639, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %.0585640, i64 16
  %i.qq = load <2 x i64>, ptr %.0585640, align 16, !tbaa !16
  store <2 x i64> %i.qq, ptr %.0586639, align 16, !tbaa !16
  %i.qr = getelementptr inbounds nuw i8, ptr %.0586639, i64 32
  %i.qs = getelementptr inbounds nuw i8, ptr %.0585640, i64 32
  %i.qt = load <2 x i64>, ptr %i.qp, align 16, !tbaa !16
  store <2 x i64> %i.qt, ptr %i.qo, align 16, !tbaa !16
  %i.qu = getelementptr inbounds nuw i8, ptr %.0586639, i64 48
  %i.qv = getelementptr inbounds nuw i8, ptr %.0585640, i64 48
  %i.qw = load <2 x i64>, ptr %i.qs, align 16, !tbaa !16
  store <2 x i64> %i.qw, ptr %i.qr, align 16, !tbaa !16
  %i.qx = getelementptr inbounds nuw i8, ptr %.0586639, i64 64 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0585640, i64 64 ; 2 uses
  %i.qz = load <2 x i64>, ptr %i.qv, align 16, !tbaa !16
  store <2 x i64> %i.qz, ptr %i.qu, align 16, !tbaa !16
  %i.ra = add i64 %.0588638, -64                  ; 3 uses
  %i.rb = icmp ugt i64 %i.ra, 63
  br i1 %i.rb, label %.lr.ph642, label %.preheader620, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph649.prol.loopexit, %.lr.ph649, %.preheader620
  %.1589.lcssa = phi i64 [ %.0588.lcssa, %.preheader620 ], [ %.lcssa713.unr, %.lr.ph649.prol.loopexit ], [ %i.sf, %.lr.ph649 ] ; 5 uses
  %.1587.lcssa = phi ptr [ %.0586.lcssa, %.preheader620 ], [ %.lcssa715.unr, %.lr.ph649.prol.loopexit ], [ %i.sc, %.lr.ph649 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0585.lcssa, %.preheader620 ], [ %.lcssa714.unr, %.lr.ph649.prol.loopexit ], [ %i.sd, %.lr.ph649 ] ; 2 uses
  %.not653 = icmp eq i64 %.1589.lcssa, 0
  br i1 %.not653, label %._crit_edge658, label %.lr.ph657.preheader

.lr.ph657.preheader:                              ; preds = %.preheader
  %xtraiter727 = and i64 %.1589.lcssa, 7          ; 2 uses
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph657.prol.loopexit, label %.lr.ph657.prol

.lr.ph657.prol:                                   ; preds = %.lr.ph657.preheader, %.lr.ph657.prol
  %.0583656.prol = phi ptr [ %i.rf, %.lr.ph657.prol ], [ %.1587.lcssa, %.lr.ph657.preheader ] ; 2 uses
  %.0584655.prol = phi ptr [ %i.rd, %.lr.ph657.prol ], [ %.1.lcssa, %.lr.ph657.preheader ] ; 2 uses
  %.2654.prol = phi i64 [ %i.rc, %.lr.ph657.prol ], [ %.1589.lcssa, %.lr.ph657.preheader ]
  %prol.iter729 = phi i64 [ %prol.iter729.next, %.lr.ph657.prol ], [ 0, %.lr.ph657.preheader ]
  %i.rc = add i64 %.2654.prol, -1                 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0584655.prol, i64 1 ; 2 uses
  %i.re = load i8, ptr %.0584655.prol, align 1, !tbaa !16
  %i.rf = getelementptr inbounds nuw i8, ptr %.0583656.prol, i64 1 ; 2 uses
  store i8 %i.re, ptr %.0583656.prol, align 1, !tbaa !16
  %prol.iter729.next = add i64 %prol.iter729, 1   ; 2 uses
  %prol.iter729.cmp.not = icmp eq i64 %prol.iter729.next, %xtraiter727
  br i1 %prol.iter729.cmp.not, label %.lr.ph657.prol.loopexit, label %.lr.ph657.prol, !llvm.loop !12

.lr.ph657.prol.loopexit:                          ; preds = %.lr.ph657.prol, %.lr.ph657.preheader
  %.0583656.unr = phi ptr [ %.1587.lcssa, %.lr.ph657.preheader ], [ %i.rf, %.lr.ph657.prol ]
  %.0584655.unr = phi ptr [ %.1.lcssa, %.lr.ph657.preheader ], [ %i.rd, %.lr.ph657.prol ]
  %.2654.unr = phi i64 [ %.1589.lcssa, %.lr.ph657.preheader ], [ %i.rc, %.lr.ph657.prol ]
  %i.rg = icmp ult i64 %.1589.lcssa, 8
  br i1 %i.rg, label %._crit_edge658, label %.lr.ph657

.lr.ph649:                                        ; preds = %.lr.ph649.prol.loopexit, %.lr.ph649
  %.1648 = phi ptr [ %i.sd, %.lr.ph649 ], [ %.1648.unr, %.lr.ph649.prol.loopexit ] ; 9 uses
  %.1587647 = phi ptr [ %i.sc, %.lr.ph649 ], [ %.1587647.unr, %.lr.ph649.prol.loopexit ] ; 9 uses
  %.1589646 = phi i64 [ %i.sf, %.lr.ph649 ], [ %.1589646.unr, %.lr.ph649.prol.loopexit ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.1587647, i64 16
  %i.ri = getelementptr inbounds nuw i8, ptr %.1648, i64 16
  %i.rj = load <2 x i64>, ptr %.1648, align 16, !tbaa !16
  store <2 x i64> %i.rj, ptr %.1587647, align 16, !tbaa !16
  %i.rk = getelementptr inbounds nuw i8, ptr %.1587647, i64 32
  %i.rl = getelementptr inbounds nuw i8, ptr %.1648, i64 32
  %i.rm = load <2 x i64>, ptr %i.ri, align 16, !tbaa !16
  store <2 x i64> %i.rm, ptr %i.rh, align 16, !tbaa !16
  %i.rn = getelementptr inbounds nuw i8, ptr %.1587647, i64 48
  %i.ro = getelementptr inbounds nuw i8, ptr %.1648, i64 48
  %i.rp = load <2 x i64>, ptr %i.rl, align 16, !tbaa !16
  store <2 x i64> %i.rp, ptr %i.rk, align 16, !tbaa !16
  %i.rq = getelementptr inbounds nuw i8, ptr %.1587647, i64 64
  %i.rr = getelementptr inbounds nuw i8, ptr %.1648, i64 64
  %i.rs = load <2 x i64>, ptr %i.ro, align 16, !tbaa !16
  store <2 x i64> %i.rs, ptr %i.rn, align 16, !tbaa !16
  %i.rt = getelementptr inbounds nuw i8, ptr %.1587647, i64 80
  %i.ru = getelementptr inbounds nuw i8, ptr %.1648, i64 80
  %i.rv = load <2 x i64>, ptr %i.rr, align 16, !tbaa !16
  store <2 x i64> %i.rv, ptr %i.rq, align 16, !tbaa !16
  %i.rw = getelementptr inbounds nuw i8, ptr %.1587647, i64 96
  %i.rx = getelementptr inbounds nuw i8, ptr %.1648, i64 96
  %i.ry = load <2 x i64>, ptr %i.ru, align 16, !tbaa !16
  store <2 x i64> %i.ry, ptr %i.rt, align 16, !tbaa !16
  %i.rz = getelementptr inbounds nuw i8, ptr %.1587647, i64 112
  %i.sa = getelementptr inbounds nuw i8, ptr %.1648, i64 112
  %i.sb = load <2 x i64>, ptr %i.rx, align 16, !tbaa !16
  store <2 x i64> %i.sb, ptr %i.rw, align 16, !tbaa !16
  %i.sc = getelementptr inbounds nuw i8, ptr %.1587647, i64 128 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.1648, i64 128 ; 2 uses
  %i.se = load <2 x i64>, ptr %i.sa, align 16, !tbaa !16
  store <2 x i64> %i.se, ptr %i.rz, align 16, !tbaa !16
  %i.sf = add nsw i64 %.1589646, -128             ; 3 uses
  %i.sg = icmp ugt i64 %i.sf, 15
  br i1 %i.sg, label %.lr.ph649, label %.preheader, !llvm.loop !13

.lr.ph657:                                        ; preds = %.lr.ph657.prol.loopexit, %.lr.ph657
  %.0583656 = phi ptr [ %i.tf, %.lr.ph657 ], [ %.0583656.unr, %.lr.ph657.prol.loopexit ] ; 9 uses
  %.0584655 = phi ptr [ %i.td, %.lr.ph657 ], [ %.0584655.unr, %.lr.ph657.prol.loopexit ] ; 9 uses
  %.2654 = phi i64 [ %i.tc, %.lr.ph657 ], [ %.2654.unr, %.lr.ph657.prol.loopexit ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.0584655, i64 1
  %i.si = load i8, ptr %.0584655, align 1, !tbaa !16
  %i.sj = getelementptr inbounds nuw i8, ptr %.0583656, i64 1
  store i8 %i.si, ptr %.0583656, align 1, !tbaa !16
  %i.sk = getelementptr inbounds nuw i8, ptr %.0584655, i64 2
  %i.sl = load i8, ptr %i.sh, align 1, !tbaa !16
  %i.sm = getelementptr inbounds nuw i8, ptr %.0583656, i64 2
  store i8 %i.sl, ptr %i.sj, align 1, !tbaa !16
  %i.sn = getelementptr inbounds nuw i8, ptr %.0584655, i64 3
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !16
  %i.sp = getelementptr inbounds nuw i8, ptr %.0583656, i64 3
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !16
  %i.sq = getelementptr inbounds nuw i8, ptr %.0584655, i64 4
  %i.sr = load i8, ptr %i.sn, align 1, !tbaa !16
  %i.ss = getelementptr inbounds nuw i8, ptr %.0583656, i64 4
  store i8 %i.sr, ptr %i.sp, align 1, !tbaa !16
  %i.st = getelementptr inbounds nuw i8, ptr %.0584655, i64 5
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !16
  %i.sv = getelementptr inbounds nuw i8, ptr %.0583656, i64 5
  store i8 %i.su, ptr %i.ss, align 1, !tbaa !16
  %i.sw = getelementptr inbounds nuw i8, ptr %.0584655, i64 6
  %i.sx = load i8, ptr %i.st, align 1, !tbaa !16
  %i.sy = getelementptr inbounds nuw i8, ptr %.0583656, i64 6
  store i8 %i.sx, ptr %i.sv, align 1, !tbaa !16
  %i.sz = getelementptr inbounds nuw i8, ptr %.0584655, i64 7
  %i.ta = load i8, ptr %i.sw, align 1, !tbaa !16
  %i.tb = getelementptr inbounds nuw i8, ptr %.0583656, i64 7
  store i8 %i.ta, ptr %i.sy, align 1, !tbaa !16
  %i.tc = add i64 %.2654, -8                      ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0584655, i64 8
  %i.te = load i8, ptr %i.sz, align 1, !tbaa !16
  %i.tf = getelementptr inbounds nuw i8, ptr %.0583656, i64 8
  store i8 %i.te, ptr %i.tb, align 1, !tbaa !16
  %.not.7 = icmp eq i64 %i.tc, 0
  br i1 %.not.7, label %._crit_edge658, label %.lr.ph657, !llvm.loop !14

._crit_edge658:                                   ; preds = %.lr.ph657.prol.loopexit, %.lr.ph657, %.preheader
  %i.tg = load <2 x i64>, ptr %i.a, align 16, !tbaa !20
  %i.th = xor <2 x i64> %i.tg, %.1592.lcssa
  store <2 x i64> %i.th, ptr %i.a, align 16, !tbaa !20
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.tj = load <2 x i64>, ptr %i.ti, align 16, !tbaa !20
  %i.tk = xor <2 x i64> %i.tj, %.1594.lcssa
  store <2 x i64> %i.tk, ptr %i.ti, align 16, !tbaa !20
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.tm = load i64, ptr %i.tl, align 16, !tbaa !20
  %i.tn = xor i64 %i.tm, %i.qb
  store i64 %i.tn, ptr %i.tl, align 16, !tbaa !20
  %.not600659 = icmp eq i64 %i.qc, 0
  br i1 %.not600659, label %._crit_edge665, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %._crit_edge658
  %xtraiter730 = and i64 %i.qc, 1
  %i.to = icmp eq i64 %i.qc, 1
  br i1 %i.to, label %.lr.ph664.epil.preheader, label %.lr.ph664.preheader.new

.lr.ph664.preheader.new:                          ; preds = %.lr.ph664.preheader
  %unroll_iter = and i64 %i.qc, -2
  br label %.lr.ph664

.lr.ph664:                                        ; preds = %.lr.ph664, %.lr.ph664.preheader.new
  %.0582661 = phi ptr [ %i.a, %.lr.ph664.preheader.new ], [ %i.tw, %.lr.ph664 ] ; 3 uses
  %.0590660 = phi i32 [ 0, %.lr.ph664.preheader.new ], [ %i.uc, %.lr.ph664 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph664.preheader.new ], [ %niter.next.1, %.lr.ph664 ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.0582661, i64 1
  %i.tq = load i8, ptr %.0582661, align 1, !tbaa !16
  %.0590.tr = trunc i32 %.0590660 to i8
  %.narrow = xor i8 %i.tq, %.0590.tr
  %i.tr = zext i8 %.narrow to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !21
  %i.tu = lshr i32 %.0590660, 8
  %i.tv = xor i32 %i.tt, %i.tu                    ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0582661, i64 2 ; 2 uses
  %i.tx = load i8, ptr %i.tp, align 1, !tbaa !16
  %.0590.tr.1 = trunc i32 %i.tv to i8
  %.narrow.1 = xor i8 %i.tx, %.0590.tr.1
  %i.ty = zext i8 %.narrow.1 to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !21
  %i.ub = lshr i32 %i.tv, 8
  %i.uc = xor i32 %i.ua, %i.ub                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge665.loopexit.unr-lcssa, label %.lr.ph664, !llvm.loop !15

._crit_edge665.loopexit.unr-lcssa:                ; preds = %.lr.ph664
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %._crit_edge665, label %.lr.ph664.epil.preheader

.lr.ph664.epil.preheader:                         ; preds = %._crit_edge665.loopexit.unr-lcssa, %.lr.ph664.preheader
  %.0582661.epil.init = phi ptr [ %i.a, %.lr.ph664.preheader ], [ %i.tw, %._crit_edge665.loopexit.unr-lcssa ]
  %.0590660.epil.init = phi i32 [ 0, %.lr.ph664.preheader ], [ %i.uc, %._crit_edge665.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod733 = trunc i64 %i.qc to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.ud = load i8, ptr %.0582661.epil.init, align 1, !tbaa !16
  %.0590.tr.epil = trunc i32 %.0590660.epil.init to i8
  %.narrow.epil = xor i8 %i.ud, %.0590.tr.epil
  %i.ue = zext i8 %.narrow.epil to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !21
  %i.uh = lshr i32 %.0590660.epil.init, 8
  %i.ui = xor i32 %i.ug, %i.uh
  br label %._crit_edge665

._crit_edge665:                                   ; preds = %.lr.ph664.epil.preheader, %._crit_edge665.loopexit.unr-lcssa, %._crit_edge658
  %.0590.lcssa = phi i32 [ 0, %._crit_edge658 ], [ %i.uc, %._crit_edge665.loopexit.unr-lcssa ], [ %i.ui, %.lr.ph664.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0590.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = xor i32 %0, -1                           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 15                         ; 5 uses
  %i.e = add nuw nsw i64 %i.d, 72
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @crc32_braid_internal(i32 noundef %i.a, ptr noundef %1, i64 noundef %i.d) #6
  %i.h = sub nuw i64 %2, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022 = phi i64 [ %i.h, %bb.c ], [ %2, %bb.b ]  ; 3 uses
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.a, %bb.b ]  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.j = icmp ugt i64 %.022, 524288
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @crc32_chorba_118960_nondestructive(i32 noundef %.0, ptr noundef %i.i, i64 noundef %.022) #6
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = tail call i32 @chorba_small_nondestructive_sse2(i32 noundef %.0, ptr noundef %i.i, i64 noundef %.022)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = tail call i32 @crc32_braid_internal(i32 noundef %i.a, ptr noundef %1, i64 noundef %2) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  %i.n = xor i32 %.1, -1
  ret i32 %i.n
}

declare i32 @crc32_braid_internal(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @crc32_chorba_118960_nondestructive(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !17}
!14 = distinct !{!14, !17}
!15 = distinct !{!15, !17}
!16 = !{!4, !4, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"long", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!5, !5, i64 0}
end_hunk_0
