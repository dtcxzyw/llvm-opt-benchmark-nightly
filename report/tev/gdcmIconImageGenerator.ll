Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmIconImageGenerator?download=true
inline.NumInlined: 1566
inline.NumDeleted: 662
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4gdcm12quantization5Block6shrinkEv:.preheader20
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ab, i64 11 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ad, i64 14 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.af, i64 17 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.aj, i64 23 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.al, i64 26 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.an, i64 29 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ar, i64 35 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.at, i64 38 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.av, i64 41 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ax, i64 44 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.az, i64 47 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.bb, i64 50 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bd, i64 53 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.bh, i64 59 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.bj, i64 62 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.bl, i64 65 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bn, i64 68 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.bp, i64 71 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.br, i64 74 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.bt, i64 77 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.bv, i64 80 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.bx, i64 83 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bz, i64 86 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.cb, i64 89 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.cd, i64 92 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.cf, i64 95 ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ch, i64 98     ; 2 uses
  %i.oz = load i8, ptr %i.nt, align 1, !tbaa !36, !alias.scope !118
  %i.pa = load i8, ptr %i.nu, align 1, !tbaa !36, !alias.scope !118
  %i.pb = load i8, ptr %i.nv, align 1, !tbaa !36, !alias.scope !118
  %i.pc = load i8, ptr %i.nw, align 1, !tbaa !36, !alias.scope !118
  %i.pd = load i8, ptr %i.nx, align 1, !tbaa !36, !alias.scope !118
  %i.pe = load i8, ptr %i.ny, align 1, !tbaa !36, !alias.scope !118
  %i.pf = load i8, ptr %i.nz, align 1, !tbaa !36, !alias.scope !118
  %i.pg = load i8, ptr %i.oa, align 1, !tbaa !36, !alias.scope !118
  %i.ph = load i8, ptr %i.ob, align 1, !tbaa !36, !alias.scope !118
  %i.pi = load i8, ptr %i.oc, align 1, !tbaa !36, !alias.scope !118
  %i.pj = load i8, ptr %i.od, align 1, !tbaa !36, !alias.scope !118
  %i.pk = load i8, ptr %i.oe, align 1, !tbaa !36, !alias.scope !118
  %i.pl = load i8, ptr %i.of, align 1, !tbaa !36, !alias.scope !118
  %i.pm = load i8, ptr %i.og, align 1, !tbaa !36, !alias.scope !118
  %i.pn = load i8, ptr %i.oh, align 1, !tbaa !36, !alias.scope !118
  %i.po = load i8, ptr %i.oi, align 1, !tbaa !36, !alias.scope !118
  %i.pp = insertelement <16 x i8> poison, i8 %i.oz, i64 0
  %i.pq = insertelement <16 x i8> %i.pp, i8 %i.pa, i64 1
  %i.pr = insertelement <16 x i8> %i.pq, i8 %i.pb, i64 2
  %i.ps = insertelement <16 x i8> %i.pr, i8 %i.pc, i64 3
  %i.pt = insertelement <16 x i8> %i.ps, i8 %i.pd, i64 4
  %i.pu = insertelement <16 x i8> %i.pt, i8 %i.pe, i64 5
  %i.pv = insertelement <16 x i8> %i.pu, i8 %i.pf, i64 6
  %i.pw = insertelement <16 x i8> %i.pv, i8 %i.pg, i64 7
  %i.px = insertelement <16 x i8> %i.pw, i8 %i.ph, i64 8
  %i.py = insertelement <16 x i8> %i.px, i8 %i.pi, i64 9
  %i.pz = insertelement <16 x i8> %i.py, i8 %i.pj, i64 10
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 11
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 12
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 13
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 14
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 15
  %i.qf = load i8, ptr %i.oj, align 1, !tbaa !36, !alias.scope !118
  %i.qg = load i8, ptr %i.ok, align 1, !tbaa !36, !alias.scope !118
  %i.qh = load i8, ptr %i.ol, align 1, !tbaa !36, !alias.scope !118
  %i.qi = load i8, ptr %i.om, align 1, !tbaa !36, !alias.scope !118
  %i.qj = load i8, ptr %i.on, align 1, !tbaa !36, !alias.scope !118
  %i.qk = load i8, ptr %i.oo, align 1, !tbaa !36, !alias.scope !118
  %i.ql = load i8, ptr %i.op, align 1, !tbaa !36, !alias.scope !118
  %i.qm = load i8, ptr %i.oq, align 1, !tbaa !36, !alias.scope !118
  %i.qn = load i8, ptr %i.or, align 1, !tbaa !36, !alias.scope !118
  %i.qo = load i8, ptr %i.os, align 1, !tbaa !36, !alias.scope !118
  %i.qp = load i8, ptr %i.ot, align 1, !tbaa !36, !alias.scope !118
  %i.qq = load i8, ptr %i.ou, align 1, !tbaa !36, !alias.scope !118
  %i.qr = load i8, ptr %i.ov, align 1, !tbaa !36, !alias.scope !118
  %i.qs = load i8, ptr %i.ow, align 1, !tbaa !36, !alias.scope !118
  %i.qt = load i8, ptr %i.ox, align 1, !tbaa !36, !alias.scope !118
  %i.qu = load i8, ptr %i.oy, align 1, !tbaa !36, !alias.scope !118
  %i.qv = insertelement <16 x i8> poison, i8 %i.qf, i64 0
  %i.qw = insertelement <16 x i8> %i.qv, i8 %i.qg, i64 1
  %i.qx = insertelement <16 x i8> %i.qw, i8 %i.qh, i64 2
  %i.qy = insertelement <16 x i8> %i.qx, i8 %i.qi, i64 3
  %i.qz = insertelement <16 x i8> %i.qy, i8 %i.qj, i64 4
  %i.ra = insertelement <16 x i8> %i.qz, i8 %i.qk, i64 5
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 6
  %i.rc = insertelement <16 x i8> %i.rb, i8 %i.qm, i64 7
  %i.rd = insertelement <16 x i8> %i.rc, i8 %i.qn, i64 8
  %i.re = insertelement <16 x i8> %i.rd, i8 %i.qo, i64 9
  %i.rf = insertelement <16 x i8> %i.re, i8 %i.qp, i64 10
  %i.rg = insertelement <16 x i8> %i.rf, i8 %i.qq, i64 11
  %i.rh = insertelement <16 x i8> %i.rg, i8 %i.qr, i64 12
  %i.ri = insertelement <16 x i8> %i.rh, i8 %i.qs, i64 13
  %i.rj = insertelement <16 x i8> %i.ri, i8 %i.qt, i64 14
  %i.rk = insertelement <16 x i8> %i.rj, i8 %i.qu, i64 15
  %i.rl = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.qe, <16 x i8> %vec.phi35) ; 2 uses
  %i.rm = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.rk, <16 x i8> %vec.phi36) ; 2 uses
  %i.rn = load i8, ptr %i.nt, align 1, !tbaa !36, !alias.scope !118
  %i.ro = load i8, ptr %i.nu, align 1, !tbaa !36, !alias.scope !118
  %i.rp = load i8, ptr %i.nv, align 1, !tbaa !36, !alias.scope !118
  %i.rq = load i8, ptr %i.nw, align 1, !tbaa !36, !alias.scope !118
  %i.rr = load i8, ptr %i.nx, align 1, !tbaa !36, !alias.scope !118
  %i.rs = load i8, ptr %i.ny, align 1, !tbaa !36, !alias.scope !118
  %i.rt = load i8, ptr %i.nz, align 1, !tbaa !36, !alias.scope !118
  %i.ru = load i8, ptr %i.oa, align 1, !tbaa !36, !alias.scope !118
  %i.rv = load i8, ptr %i.ob, align 1, !tbaa !36, !alias.scope !118
  %i.rw = load i8, ptr %i.oc, align 1, !tbaa !36, !alias.scope !118
  %i.rx = load i8, ptr %i.od, align 1, !tbaa !36, !alias.scope !118
  %i.ry = load i8, ptr %i.oe, align 1, !tbaa !36, !alias.scope !118
  %i.rz = load i8, ptr %i.of, align 1, !tbaa !36, !alias.scope !118
  %i.sa = load i8, ptr %i.og, align 1, !tbaa !36, !alias.scope !118
  %i.sb = load i8, ptr %i.oh, align 1, !tbaa !36, !alias.scope !118
  %i.sc = load i8, ptr %i.oi, align 1, !tbaa !36, !alias.scope !118
  %i.sd = insertelement <16 x i8> poison, i8 %i.rn, i64 0
  %i.se = insertelement <16 x i8> %i.sd, i8 %i.ro, i64 1
  %i.sf = insertelement <16 x i8> %i.se, i8 %i.rp, i64 2
  %i.sg = insertelement <16 x i8> %i.sf, i8 %i.rq, i64 3
  %i.sh = insertelement <16 x i8> %i.sg, i8 %i.rr, i64 4
  %i.si = insertelement <16 x i8> %i.sh, i8 %i.rs, i64 5
  %i.sj = insertelement <16 x i8> %i.si, i8 %i.rt, i64 6
  %i.sk = insertelement <16 x i8> %i.sj, i8 %i.ru, i64 7
  %i.sl = insertelement <16 x i8> %i.sk, i8 %i.rv, i64 8
  %i.sm = insertelement <16 x i8> %i.sl, i8 %i.rw, i64 9
  %i.sn = insertelement <16 x i8> %i.sm, i8 %i.rx, i64 10
  %i.so = insertelement <16 x i8> %i.sn, i8 %i.ry, i64 11
  %i.sp = insertelement <16 x i8> %i.so, i8 %i.rz, i64 12
  %i.sq = insertelement <16 x i8> %i.sp, i8 %i.sa, i64 13
  %i.sr = insertelement <16 x i8> %i.sq, i8 %i.sb, i64 14
  %i.ss = insertelement <16 x i8> %i.sr, i8 %i.sc, i64 15
  %i.st = load i8, ptr %i.oj, align 1, !tbaa !36, !alias.scope !118
  %i.su = load i8, ptr %i.ok, align 1, !tbaa !36, !alias.scope !118
  %i.sv = load i8, ptr %i.ol, align 1, !tbaa !36, !alias.scope !118
  %i.sw = load i8, ptr %i.om, align 1, !tbaa !36, !alias.scope !118
  %i.sx = load i8, ptr %i.on, align 1, !tbaa !36, !alias.scope !118
  %i.sy = load i8, ptr %i.oo, align 1, !tbaa !36, !alias.scope !118
  %i.sz = load i8, ptr %i.op, align 1, !tbaa !36, !alias.scope !118
  %i.ta = load i8, ptr %i.oq, align 1, !tbaa !36, !alias.scope !118
  %i.tb = load i8, ptr %i.or, align 1, !tbaa !36, !alias.scope !118
  %i.tc = load i8, ptr %i.os, align 1, !tbaa !36, !alias.scope !118
  %i.td = load i8, ptr %i.ot, align 1, !tbaa !36, !alias.scope !118
  %i.te = load i8, ptr %i.ou, align 1, !tbaa !36, !alias.scope !118
  %i.tf = load i8, ptr %i.ov, align 1, !tbaa !36, !alias.scope !118
  %i.tg = load i8, ptr %i.ow, align 1, !tbaa !36, !alias.scope !118
  %i.th = load i8, ptr %i.ox, align 1, !tbaa !36, !alias.scope !118
  %i.ti = load i8, ptr %i.oy, align 1, !tbaa !36, !alias.scope !118
  %i.tj = insertelement <16 x i8> poison, i8 %i.st, i64 0
  %i.tk = insertelement <16 x i8> %i.tj, i8 %i.su, i64 1
  %i.tl = insertelement <16 x i8> %i.tk, i8 %i.sv, i64 2
  %i.tm = insertelement <16 x i8> %i.tl, i8 %i.sw, i64 3
  %i.tn = insertelement <16 x i8> %i.tm, i8 %i.sx, i64 4
  %i.to = insertelement <16 x i8> %i.tn, i8 %i.sy, i64 5
  %i.tp = insertelement <16 x i8> %i.to, i8 %i.sz, i64 6
  %i.tq = insertelement <16 x i8> %i.tp, i8 %i.ta, i64 7
  %i.tr = insertelement <16 x i8> %i.tq, i8 %i.tb, i64 8
  %i.ts = insertelement <16 x i8> %i.tr, i8 %i.tc, i64 9
  %i.tt = insertelement <16 x i8> %i.ts, i8 %i.td, i64 10
  %i.tu = insertelement <16 x i8> %i.tt, i8 %i.te, i64 11
  %i.tv = insertelement <16 x i8> %i.tu, i8 %i.tf, i64 12
  %i.tw = insertelement <16 x i8> %i.tv, i8 %i.tg, i64 13
  %i.tx = insertelement <16 x i8> %i.tw, i8 %i.th, i64 14
  %i.ty = insertelement <16 x i8> %i.tx, i8 %i.ti, i64 15
  %i.tz = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %i.ss) ; 2 uses
  %i.ua = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi34, <16 x i8> %i.ty) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ub = icmp eq i64 %index.next, %n.vec
  br i1 %i.ub, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.tz, <16 x i8> %i.ua)
  %i.uc = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax45 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.rl, <16 x i8> %i.rm)
  %i.ud = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax45) ; 3 uses
  %rdx.minmax46 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.nr, <16 x i8> %i.ns)
  %i.ue = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax46) ; 3 uses
  %rdx.minmax47 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ld, <16 x i8> %i.le)
  %i.uf = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax47) ; 3 uses
  %rdx.minmax48 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.hj, <16 x i8> %i.hk)
  %i.ug = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax48) ; 3 uses
  %rdx.minmax49 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ev, <16 x i8> %i.ew)
  %i.uh = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax49) ; 3 uses
  store i8 %i.uh, ptr %0, align 8, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.ug, ptr %i.b, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.uf, ptr %i.h, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.ue, ptr %i.g, align 4, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.ud, ptr %i.l, align 2, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.uc, ptr %i.k, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.uc, %vec.epilog.iter.check ], [ %i.j, %vector.main.loop.iter.check ]
  %bc.merge.rdx50 = phi i8 [ %i.ud, %vec.epilog.iter.check ], [ %i.j, %vector.main.loop.iter.check ]
  %bc.merge.rdx51 = phi i8 [ %i.ue, %vec.epilog.iter.check ], [ %i.f, %vector.main.loop.iter.check ]
  %bc.merge.rdx52 = phi i8 [ %i.uf, %vec.epilog.iter.check ], [ %i.f, %vector.main.loop.iter.check ]
  %bc.merge.rdx53 = phi i8 [ %i.ug, %vec.epilog.iter.check ], [ %i.d, %vector.main.loop.iter.check ]
  %bc.merge.rdx54 = phi i8 [ %i.uh, %vec.epilog.iter.check ], [ %i.d, %vector.main.loop.iter.check ]
  %broadcast.splatinsert72 = insertelement <8 x i8> poison, i8 %bc.merge.rdx54, i64 0
  %broadcast.splat73 = shufflevector <8 x i8> %broadcast.splatinsert72, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x i8> poison, i8 %bc.merge.rdx53, i64 0
  %broadcast.splat57 = shufflevector <8 x i8> %broadcast.splatinsert56, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <8 x i8> poison, i8 %bc.merge.rdx52, i64 0
  %broadcast.splat59 = shufflevector <8 x i8> %broadcast.splatinsert58, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert60.a = insertelement <8 x i8> poison, i8 %bc.merge.rdx51, i64 0
  %broadcast.splat61.a = shufflevector <8 x i8> %broadcast.splatinsert60.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x i8> poison, i8 %bc.merge.rdx50, i64 0
  %broadcast.splat63 = shufflevector <8 x i8> %broadcast.splatinsert62, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat65 = shufflevector <8 x i8> %broadcast.splatinsert64, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec55 = and i64 %i.q, -8                     ; 3 uses
  %1 = or disjoint i64 %n.vec55, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 9 uses
  %vec.phi69 = phi <8 x i8> [ %broadcast.splat65, %vec.epilog.ph ], [ %i.zl, %vec.epilog.vector.body ]
  %vec.phi70 = phi <8 x i8> [ %broadcast.splat63, %vec.epilog.ph ], [ %i.yu, %vec.epilog.vector.body ]
  %vec.phi71.a = phi <8 x i8> [ %broadcast.splat61.a, %vec.epilog.ph ], [ %i.xv, %vec.epilog.vector.body ]
  %vec.phi72 = phi <8 x i8> [ %broadcast.splat59, %vec.epilog.ph ], [ %i.xe, %vec.epilog.vector.body ]
  %vec.phi73 = phi <8 x i8> [ %broadcast.splat57, %vec.epilog.ph ], [ %i.wf, %vec.epilog.vector.body ]
  %vec.phi74 = phi <8 x i8> [ %broadcast.splat73, %vec.epilog.ph ], [ %i.vo, %vec.epilog.vector.body ]
  %i.ui = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 3 ; 2 uses
  %i.uk = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 6 ; 2 uses
  %i.um = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 9 ; 2 uses
  %i.uo = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12 ; 2 uses
  %i.uq = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 15 ; 2 uses
  %i.us = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 18 ; 2 uses
  %i.uu = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 21 ; 2 uses
  %i.uw = getelementptr [3 x i8], ptr %i.c, i64 %index68 ; 3 uses
  %i.ux = getelementptr i8, ptr %i.uw, i64 24     ; 2 uses
  %i.uy = load i8, ptr %i.uj, align 1, !tbaa !36, !alias.scope !118
  %i.uz = load i8, ptr %i.ul, align 1, !tbaa !36, !alias.scope !118
  %i.va = load i8, ptr %i.un, align 1, !tbaa !36, !alias.scope !118
  %i.vb = load i8, ptr %i.up, align 1, !tbaa !36, !alias.scope !118
  %i.vc = load i8, ptr %i.ur, align 1, !tbaa !36, !alias.scope !118
  %i.vd = load i8, ptr %i.ut, align 1, !tbaa !36, !alias.scope !118
  %i.ve = load i8, ptr %i.uv, align 1, !tbaa !36, !alias.scope !118
  %i.vf = load i8, ptr %i.ux, align 1, !tbaa !36, !alias.scope !118
  %i.vg = insertelement <8 x i8> poison, i8 %i.uy, i64 0
  %i.vh = insertelement <8 x i8> %i.vg, i8 %i.uz, i64 1
  %i.vi = insertelement <8 x i8> %i.vh, i8 %i.va, i64 2
  %i.vj = insertelement <8 x i8> %i.vi, i8 %i.vb, i64 3
  %i.vk = insertelement <8 x i8> %i.vj, i8 %i.vc, i64 4
  %i.vl = insertelement <8 x i8> %i.vk, i8 %i.vd, i64 5
  %i.vm = insertelement <8 x i8> %i.vl, i8 %i.ve, i64 6
  %i.vn = insertelement <8 x i8> %i.vm, i8 %i.vf, i64 7
  %i.vo = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.vn, <8 x i8> %vec.phi74) ; 2 uses
  %i.vp = load i8, ptr %i.uj, align 1, !tbaa !36, !alias.scope !118
  %i.vq = load i8, ptr %i.ul, align 1, !tbaa !36, !alias.scope !118
  %i.vr = load i8, ptr %i.un, align 1, !tbaa !36, !alias.scope !118
  %i.vs = load i8, ptr %i.up, align 1, !tbaa !36, !alias.scope !118
  %i.vt = load i8, ptr %i.ur, align 1, !tbaa !36, !alias.scope !118
  %i.vu = load i8, ptr %i.ut, align 1, !tbaa !36, !alias.scope !118
  %i.vv = load i8, ptr %i.uv, align 1, !tbaa !36, !alias.scope !118
  %i.vw = load i8, ptr %i.ux, align 1, !tbaa !36, !alias.scope !118
  %i.vx = insertelement <8 x i8> poison, i8 %i.vp, i64 0
  %i.vy = insertelement <8 x i8> %i.vx, i8 %i.vq, i64 1
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 2
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 3
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 4
  %i.wc = insertelement <8 x i8> %i.wb, i8 %i.vu, i64 5
  %i.wd = insertelement <8 x i8> %i.wc, i8 %i.vv, i64 6
  %i.we = insertelement <8 x i8> %i.wd, i8 %i.vw, i64 7
  %i.wf = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi73, <8 x i8> %i.we) ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ui, i64 4 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uk, i64 7 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.um, i64 10 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uo, i64 13 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.us, i64 19 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.uu, i64 22 ; 2 uses
  %i.wn = getelementptr i8, ptr %i.uw, i64 25     ; 2 uses
  %i.wo = load i8, ptr %i.wg, align 1, !tbaa !36, !alias.scope !118
  %i.wp = load i8, ptr %i.wh, align 1, !tbaa !36, !alias.scope !118
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !36, !alias.scope !118
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !36, !alias.scope !118
  %i.ws = load i8, ptr %i.wk, align 1, !tbaa !36, !alias.scope !118
  %i.wt = load i8, ptr %i.wl, align 1, !tbaa !36, !alias.scope !118
  %i.wu = load i8, ptr %i.wm, align 1, !tbaa !36, !alias.scope !118
  %i.wv = load i8, ptr %i.wn, align 1, !tbaa !36, !alias.scope !118
  %i.ww = insertelement <8 x i8> poison, i8 %i.wo, i64 0
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 1
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 2
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 3
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 4
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 5
  %i.xc = insertelement <8 x i8> %i.xb, i8 %i.wu, i64 6
  %i.xd = insertelement <8 x i8> %i.xc, i8 %i.wv, i64 7
  %i.xe = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.xd, <8 x i8> %vec.phi72) ; 2 uses
  %i.xf = load i8, ptr %i.wg, align 1, !tbaa !36, !alias.scope !118
  %i.xg = load i8, ptr %i.wh, align 1, !tbaa !36, !alias.scope !118
  %i.xh = load i8, ptr %i.wi, align 1, !tbaa !36, !alias.scope !118
  %i.xi = load i8, ptr %i.wj, align 1, !tbaa !36, !alias.scope !118
  %i.xj = load i8, ptr %i.wk, align 1, !tbaa !36, !alias.scope !118
  %i.xk = load i8, ptr %i.wl, align 1, !tbaa !36, !alias.scope !118
  %i.xl = load i8, ptr %i.wm, align 1, !tbaa !36, !alias.scope !118
  %i.xm = load i8, ptr %i.wn, align 1, !tbaa !36, !alias.scope !118
  %i.xn = insertelement <8 x i8> poison, i8 %i.xf, i64 0
  %i.xo = insertelement <8 x i8> %i.xn, i8 %i.xg, i64 1
  %i.xp = insertelement <8 x i8> %i.xo, i8 %i.xh, i64 2
  %i.xq = insertelement <8 x i8> %i.xp, i8 %i.xi, i64 3
  %i.xr = insertelement <8 x i8> %i.xq, i8 %i.xj, i64 4
  %i.xs = insertelement <8 x i8> %i.xr, i8 %i.xk, i64 5
  %i.xt = insertelement <8 x i8> %i.xs, i8 %i.xl, i64 6
  %i.xu = insertelement <8 x i8> %i.xt, i8 %i.xm, i64 7
  %i.xv = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi71.a, <8 x i8> %i.xu) ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ui, i64 5 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.um, i64 11 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.uo, i64 14 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.uq, i64 17 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.us, i64 20 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.uu, i64 23 ; 2 uses
  %i.yd = getelementptr i8, ptr %i.uw, i64 26     ; 2 uses
  %i.ye = load i8, ptr %i.xw, align 1, !tbaa !36, !alias.scope !118
  %i.yf = load i8, ptr %i.xx, align 1, !tbaa !36, !alias.scope !118
  %i.yg = load i8, ptr %i.xy, align 1, !tbaa !36, !alias.scope !118
  %i.yh = load i8, ptr %i.xz, align 1, !tbaa !36, !alias.scope !118
  %i.yi = load i8, ptr %i.ya, align 1, !tbaa !36, !alias.scope !118
  %i.yj = load i8, ptr %i.yb, align 1, !tbaa !36, !alias.scope !118
  %i.yk = load i8, ptr %i.yc, align 1, !tbaa !36, !alias.scope !118
  %i.yl = load i8, ptr %i.yd, align 1, !tbaa !36, !alias.scope !118
  %i.ym = insertelement <8 x i8> poison, i8 %i.ye, i64 0
  %i.yn = insertelement <8 x i8> %i.ym, i8 %i.yf, i64 1
  %i.yo = insertelement <8 x i8> %i.yn, i8 %i.yg, i64 2
  %i.yp = insertelement <8 x i8> %i.yo, i8 %i.yh, i64 3
  %i.yq = insertelement <8 x i8> %i.yp, i8 %i.yi, i64 4
  %i.yr = insertelement <8 x i8> %i.yq, i8 %i.yj, i64 5
  %i.ys = insertelement <8 x i8> %i.yr, i8 %i.yk, i64 6
  %i.yt = insertelement <8 x i8> %i.ys, i8 %i.yl, i64 7
  %i.yu = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.yt, <8 x i8> %vec.phi70) ; 2 uses
  %i.yv = load i8, ptr %i.xw, align 1, !tbaa !36, !alias.scope !118
  %i.yw = load i8, ptr %i.xx, align 1, !tbaa !36, !alias.scope !118
  %i.yx = load i8, ptr %i.xy, align 1, !tbaa !36, !alias.scope !118
  %i.yy = load i8, ptr %i.xz, align 1, !tbaa !36, !alias.scope !118
  %i.yz = load i8, ptr %i.ya, align 1, !tbaa !36, !alias.scope !118
  %i.za = load i8, ptr %i.yb, align 1, !tbaa !36, !alias.scope !118
  %i.zb = load i8, ptr %i.yc, align 1, !tbaa !36, !alias.scope !118
  %i.zc = load i8, ptr %i.yd, align 1, !tbaa !36, !alias.scope !118
  %i.zd = insertelement <8 x i8> poison, i8 %i.yv, i64 0
  %i.ze = insertelement <8 x i8> %i.zd, i8 %i.yw, i64 1
  %i.zf = insertelement <8 x i8> %i.ze, i8 %i.yx, i64 2
  %i.zg = insertelement <8 x i8> %i.zf, i8 %i.yy, i64 3
  %i.zh = insertelement <8 x i8> %i.zg, i8 %i.yz, i64 4
  %i.zi = insertelement <8 x i8> %i.zh, i8 %i.za, i64 5
  %i.zj = insertelement <8 x i8> %i.zi, i8 %i.zb, i64 6
  %i.zk = insertelement <8 x i8> %i.zj, i8 %i.zc, i64 7
  %i.zl = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi69, <8 x i8> %i.zk) ; 2 uses
  %index.next75 = add nuw i64 %index68, 8         ; 2 uses
  %i.zm = icmp eq i64 %index.next75, %n.vec55
  br i1 %i.zm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.zn = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.zl) ; 2 uses
  %i.zo = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.yu) ; 2 uses
  %i.zp = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.xv) ; 2 uses
  %i.zq = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.xe) ; 2 uses
  %i.zr = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.wf) ; 2 uses
  %i.zs = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.vo) ; 2 uses
  store i8 %i.zs, ptr %0, align 8, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.zr, ptr %i.b, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.zq, ptr %i.h, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.zp, ptr %i.g, align 4, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.zo, ptr %i.l, align 2, !tbaa !36, !alias.scope !119, !noalias !118
  store i8 %i.zn, ptr %i.k, align 1, !tbaa !36, !alias.scope !119, !noalias !118
  %cmp.n76 = icmp eq i64 %i.q, %n.vec55
  br i1 %cmp.n76, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.uc, %vec.epilog.iter.check ], [ %i.zn, %vec.epilog.middle.block ]
  %.ph84.a = phi i8 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ud, %vec.epilog.iter.check ], [ %i.zo, %vec.epilog.middle.block ]
  %.ph85.a = phi i8 [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.ue, %vec.epilog.iter.check ], [ %i.zp, %vec.epilog.middle.block ]
  %.ph86.a = phi i8 [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.uf, %vec.epilog.iter.check ], [ %i.zq, %vec.epilog.middle.block ]
  %.ph87.a = phi i8 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ug, %vec.epilog.iter.check ], [ %i.zr, %vec.epilog.middle.block ]
  %.ph88 = phi i8 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.uh, %vec.epilog.iter.check ], [ %i.zs, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %1, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.zt = phi i8 [ %i.aan, %.preheader ], [ %.ph, %.preheader.preheader ]
  %i.zu = phi i8 [ %i.aal, %.preheader ], [ %.ph84.a, %.preheader.preheader ]
  %i.zv = phi i8 [ %i.aai, %.preheader ], [ %.ph85.a, %.preheader.preheader ]
  %i.zw = phi i8 [ %i.aag, %.preheader ], [ %.ph86.a, %.preheader.preheader ]
  %i.zx = phi i8 [ %i.aad, %.preheader ], [ %.ph87.a, %.preheader.preheader ]
  %i.zy = phi i8 [ %i.aab, %.preheader ], [ %.ph88, %.preheader.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !36
  %i.aab = tail call i8 @llvm.umin.i8(i8 %i.aaa, i8 %i.zy) ; 2 uses
  store i8 %i.aab, ptr %0, align 8, !tbaa !36
  %i.aac = load i8, ptr %i.zz, align 1, !tbaa !36
  %i.aad = tail call i8 @llvm.umax.i8(i8 %i.zx, i8 %i.aac) ; 2 uses
  store i8 %i.aad, ptr %i.b, align 1, !tbaa !36
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 1 ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !36
  %i.aag = tail call i8 @llvm.umin.i8(i8 %i.aaf, i8 %i.zw) ; 2 uses
  store i8 %i.aag, ptr %i.h, align 1, !tbaa !36
  %i.aah = load i8, ptr %i.aae, align 1, !tbaa !36
  %i.aai = tail call i8 @llvm.umax.i8(i8 %i.zv, i8 %i.aah) ; 2 uses
  store i8 %i.aai, ptr %i.g, align 4, !tbaa !36
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zz, i64 2 ; 2 uses
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !36
  %i.aal = tail call i8 @llvm.umin.i8(i8 %i.aak, i8 %i.zu) ; 2 uses
  store i8 %i.aal, ptr %i.l, align 2, !tbaa !36
  %i.aam = load i8, ptr %i.aaj, align 1, !tbaa !36
  %i.aan = tail call i8 @llvm.umax.i8(i8 %i.zt, i8 %i.aam) ; 2 uses
  store i8 %i.aan, ptr %i.k, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aao = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.aao, label %.preheader, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %.preheader, %middle.block, %vec.epilog.middle.block, %.preheader20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::list") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.gdcm::quantization::CoordinatePointComparator.39", align 1 ; 3 uses
  %6 = alloca %"class.gdcm::quantization::CoordinatePointComparator.38", align 1 ; 3 uses
  %7 = alloca %"class.gdcm::quantization::CoordinatePointComparator", align 1 ; 3 uses
  %8 = alloca %"class.std::__1::priority_queue", align 8 ; 19 uses
  %9 = alloca %"class.gdcm::quantization::Block", align 8 ; 13 uses
  %10 = alloca %"class.gdcm::quantization::Block", align 8 ; 18 uses
  %11 = alloca %"class.gdcm::quantization::Block", align 8 ; 18 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #26
  br label %bb.az

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64                  ; 10 uses
  %i.e = mul nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #25 ; 48 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit

_ZNK4gdcm11DataElement12GetByteValueEv.exit:      ; preds = %bb.e
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #26 ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %bb.h

_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread: ; preds = %bb.e, %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #26
  br label %bb.az

bb.h:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = icmp eq ptr %i.n, %i.p
  %.not111171 = icmp eq ptr %i.n, null
  %.not111 = or i1 %.not111171, %i.q
  br i1 %.not111, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #26
  br label %bb.az

bb.l:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull align 8 dereferenceable(44) %i.j)
  %i.x = zext i32 %i.w to i64
  %i.y = icmp eq i64 %i.e, %i.x
  br i1 %i.y, label %.lr.ph.preheader, label %bb.m

.lr.ph.preheader:                                 ; preds = %bb.l
  %xtraiter = and i64 %i.d, 1
  %i.z = icmp eq i32 %2, 1
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 2147483646
  br label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #26
  br label %bb.az

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = mul nuw nsw i64 %indvars.iv, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.af = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv.next, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.next ; 3 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !120

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod633 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod633)
  %i.aw = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !36
  %i.az = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.f, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %2, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 2 uses
  %i.bj = load <2 x i8>, ptr %i.f, align 1, !tbaa !36 ; 5 uses
  %12 = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bk = extractelement <2 x i8> %i.bj, i64 1    ; 4 uses
  %i.bl = extractelement <2 x i8> %i.bj, i64 0    ; 4 uses
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !36
  store i8 %i.bl, ptr %9, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i8 %i.bk, ptr %i.bm, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36  ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  store i8 %i.bp, ptr %i.br, align 2, !tbaa !36
  %.not172 = icmp eq i32 %2, 1
  br i1 %.not172, label %_ZN4gdcm12quantization5Block6shrinkEv.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2) ; 2 uses
  %i.bs = add nsw i64 %umax, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check326 = icmp ult i32 %2, 33
  br i1 %min.iters.check326, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %i.bs, 24
  %n.vec = and i64 %i.bs, -32                     ; 4 uses
  %i.bu = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bp, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splat328 = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat330 = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.on, %vector.body ]
  %vec.phi331 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.oo, %vector.body ]
  %vec.phi332 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.ol, %vector.body ]
  %vec.phi333 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi334 = phi <16 x i8> [ %broadcast.splat328, %vector.ph ], [ %i.kr, %vector.body ]
  %vec.phi335 = phi <16 x i8> [ %broadcast.splat328, %vector.ph ], [ %i.ks, %vector.body ]
  %vec.phi336 = phi <16 x i8> [ %broadcast.splat328, %vector.ph ], [ %i.kp, %vector.body ]
  %vec.phi337 = phi <16 x i8> [ %broadcast.splat328, %vector.ph ], [ %i.kq, %vector.body ]
  %vec.phi338 = phi <16 x i8> [ %broadcast.splat330, %vector.ph ], [ %i.gv, %vector.body ]
  %vec.phi339 = phi <16 x i8> [ %broadcast.splat330, %vector.ph ], [ %i.gw, %vector.body ]
  %vec.phi340 = phi <16 x i8> [ %broadcast.splat330, %vector.ph ], [ %i.gt, %vector.body ]
  %vec.phi341 = phi <16 x i8> [ %broadcast.splat330, %vector.ph ], [ %i.gu, %vector.body ]
  %i.bv = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.bx = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %i.bz = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.cb = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 18
  %i.ch = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 21
  %i.cj = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 27
  %i.cn = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 30
  %i.cp = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 33
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.ct = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 39
  %i.cv = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 42
  %i.cx = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 45
  %i.cz = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 51
  %i.dd = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 54
  %i.df = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 57
  %i.dh = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  %i.dj = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 63
  %i.dl = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 66
  %i.dn = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 69
  %i.dp = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dr = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 75
  %i.dt = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 78
  %i.dv = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 81
  %i.dx = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 84
  %i.dz = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 87
  %i.eb = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 90
  %i.ed = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 93
  %i.ef = getelementptr [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 96
  %i.eh = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.ei = load i8, ptr %i.by, align 1, !tbaa !36
  %i.ej = load i8, ptr %i.ca, align 1, !tbaa !36
  %i.ek = load i8, ptr %i.cc, align 1, !tbaa !36
  %i.el = load i8, ptr %i.ce, align 1, !tbaa !36
  %i.em = load i8, ptr %i.cg, align 1, !tbaa !36
  %i.en = load i8, ptr %i.ci, align 1, !tbaa !36
  %i.eo = load i8, ptr %i.ck, align 1, !tbaa !36
  %i.ep = load i8, ptr %i.cm, align 1, !tbaa !36
  %i.eq = load i8, ptr %i.co, align 1, !tbaa !36
  %i.er = load i8, ptr %i.cq, align 1, !tbaa !36
  %i.es = load i8, ptr %i.cs, align 1, !tbaa !36
  %i.et = load i8, ptr %i.cu, align 1, !tbaa !36
  %i.eu = load i8, ptr %i.cw, align 1, !tbaa !36
  %i.ev = load i8, ptr %i.cy, align 1, !tbaa !36
  %i.ew = load i8, ptr %i.da, align 1, !tbaa !36
  %i.ex = insertelement <16 x i8> poison, i8 %i.eh, i64 0
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 1
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 2
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 3
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 4
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 5
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 6
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 7
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 8
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 9
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 10
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 11
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 12
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 13
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 14
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 15 ; 2 uses
  %i.fn = load i8, ptr %i.dc, align 1, !tbaa !36
  %i.fo = load i8, ptr %i.de, align 1, !tbaa !36
  %i.fp = load i8, ptr %i.dg, align 1, !tbaa !36
  %i.fq = load i8, ptr %i.di, align 1, !tbaa !36
  %i.fr = load i8, ptr %i.dk, align 1, !tbaa !36
  %i.fs = load i8, ptr %i.dm, align 1, !tbaa !36
  %i.ft = load i8, ptr %i.do, align 1, !tbaa !36
  %i.fu = load i8, ptr %i.dq, align 1, !tbaa !36
  %i.fv = load i8, ptr %i.ds, align 1, !tbaa !36
  %i.fw = load i8, ptr %i.du, align 1, !tbaa !36
  %i.fx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.fy = load i8, ptr %i.dy, align 1, !tbaa !36
  %i.fz = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ga = load i8, ptr %i.ec, align 1, !tbaa !36
  %i.gb = load i8, ptr %i.ee, align 1, !tbaa !36
  %i.gc = load i8, ptr %i.eg, align 1, !tbaa !36
  %i.gd = insertelement <16 x i8> poison, i8 %i.fn, i64 0
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 1
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 2
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 3
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 4
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 5
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 6
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 7
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 8
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 9
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 10
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 11
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 12
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 13
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 14
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 15 ; 2 uses
  %i.gt = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.fm, <16 x i8> %vec.phi340) ; 2 uses
  %i.gu = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.gs, <16 x i8> %vec.phi341) ; 2 uses
  %i.gv = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi338, <16 x i8> %i.fm) ; 2 uses
  %i.gw = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi339, <16 x i8> %i.gs) ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bx, i64 7
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cb, i64 13
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cf, i64 19
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ch, i64 22
  %i.he = getelementptr inbounds nuw i8, ptr %i.cj, i64 25
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cn, i64 31
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cp, i64 34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cr, i64 37
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cv, i64 43
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cx, i64 46
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cz, i64 49
  %i.hn = getelementptr inbounds nuw i8, ptr %i.db, i64 52
end_hunk_0
begin_hunk_1_@_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dn, i64 70
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dp, i64 73
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dt, i64 79
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dv, i64 82
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dx, i64 85
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eb, i64 91
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ed, i64 94
  %i.ic = getelementptr i8, ptr %i.ef, i64 97
  %i.id = load i8, ptr %i.gx, align 1, !tbaa !36
  %i.ie = load i8, ptr %i.gy, align 1, !tbaa !36
  %i.if = load i8, ptr %i.gz, align 1, !tbaa !36
  %i.ig = load i8, ptr %i.ha, align 1, !tbaa !36
  %i.ih = load i8, ptr %i.hb, align 1, !tbaa !36
  %i.ii = load i8, ptr %i.hc, align 1, !tbaa !36
  %i.ij = load i8, ptr %i.hd, align 1, !tbaa !36
  %i.ik = load i8, ptr %i.he, align 1, !tbaa !36
  %i.il = load i8, ptr %i.hf, align 1, !tbaa !36
  %i.im = load i8, ptr %i.hg, align 1, !tbaa !36
  %i.in = load i8, ptr %i.hh, align 1, !tbaa !36
  %i.io = load i8, ptr %i.hi, align 1, !tbaa !36
  %i.ip = load i8, ptr %i.hj, align 1, !tbaa !36
  %i.iq = load i8, ptr %i.hk, align 1, !tbaa !36
  %i.ir = load i8, ptr %i.hl, align 1, !tbaa !36
  %i.is = load i8, ptr %i.hm, align 1, !tbaa !36
  %i.it = insertelement <16 x i8> poison, i8 %i.id, i64 0
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 1
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 2
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 3
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 4
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 5
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 6
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 7
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 8
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 9
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 10
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 11
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 12
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 13
  %i.jh = insertelement <16 x i8> %i.jg, i8 %i.ir, i64 14
  %i.ji = insertelement <16 x i8> %i.jh, i8 %i.is, i64 15 ; 2 uses
  %i.jj = load i8, ptr %i.hn, align 1, !tbaa !36
  %i.jk = load i8, ptr %i.ho, align 1, !tbaa !36
  %i.jl = load i8, ptr %i.hp, align 1, !tbaa !36
  %i.jm = load i8, ptr %i.hq, align 1, !tbaa !36
  %i.jn = load i8, ptr %i.hr, align 1, !tbaa !36
  %i.jo = load i8, ptr %i.hs, align 1, !tbaa !36
  %i.jp = load i8, ptr %i.ht, align 1, !tbaa !36
  %i.jq = load i8, ptr %i.hu, align 1, !tbaa !36
  %i.jr = load i8, ptr %i.hv, align 1, !tbaa !36
  %i.js = load i8, ptr %i.hw, align 1, !tbaa !36
  %i.jt = load i8, ptr %i.hx, align 1, !tbaa !36
  %i.ju = load i8, ptr %i.hy, align 1, !tbaa !36
  %i.jv = load i8, ptr %i.hz, align 1, !tbaa !36
  %i.jw = load i8, ptr %i.ia, align 1, !tbaa !36
  %i.jx = load i8, ptr %i.ib, align 1, !tbaa !36
  %i.jy = load i8, ptr %i.ic, align 1, !tbaa !36
  %i.jz = insertelement <16 x i8> poison, i8 %i.jj, i64 0
  %i.ka = insertelement <16 x i8> %i.jz, i8 %i.jk, i64 1
  %i.kb = insertelement <16 x i8> %i.ka, i8 %i.jl, i64 2
  %i.kc = insertelement <16 x i8> %i.kb, i8 %i.jm, i64 3
  %i.kd = insertelement <16 x i8> %i.kc, i8 %i.jn, i64 4
  %i.ke = insertelement <16 x i8> %i.kd, i8 %i.jo, i64 5
  %i.kf = insertelement <16 x i8> %i.ke, i8 %i.jp, i64 6
  %i.kg = insertelement <16 x i8> %i.kf, i8 %i.jq, i64 7
  %i.kh = insertelement <16 x i8> %i.kg, i8 %i.jr, i64 8
  %i.ki = insertelement <16 x i8> %i.kh, i8 %i.js, i64 9
  %i.kj = insertelement <16 x i8> %i.ki, i8 %i.jt, i64 10
  %i.kk = insertelement <16 x i8> %i.kj, i8 %i.ju, i64 11
  %i.kl = insertelement <16 x i8> %i.kk, i8 %i.jv, i64 12
  %i.km = insertelement <16 x i8> %i.kl, i8 %i.jw, i64 13
  %i.kn = insertelement <16 x i8> %i.km, i8 %i.jx, i64 14
  %i.ko = insertelement <16 x i8> %i.kn, i8 %i.jy, i64 15 ; 2 uses
  %i.kp = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ji, <16 x i8> %vec.phi336) ; 2 uses
  %i.kq = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ko, <16 x i8> %vec.phi337) ; 2 uses
  %i.kr = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi334, <16 x i8> %i.ji) ; 2 uses
  %i.ks = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi335, <16 x i8> %i.ko) ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  %i.kw = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cd, i64 17
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ch, i64 23
  %i.la = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %i.lb = getelementptr inbounds nuw i8, ptr %i.cl, i64 29
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cp, i64 35
  %i.le = getelementptr inbounds nuw i8, ptr %i.cr, i64 38
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ct, i64 41
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %i.lh = getelementptr inbounds nuw i8, ptr %i.cx, i64 47
  %i.li = getelementptr inbounds nuw i8, ptr %i.cz, i64 50
  %i.lj = getelementptr inbounds nuw i8, ptr %i.db, i64 53
  %i.lk = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.ll = getelementptr inbounds nuw i8, ptr %i.df, i64 59
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dh, i64 62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.dj, i64 65
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  %i.lp = getelementptr inbounds nuw i8, ptr %i.dn, i64 71
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dp, i64 74
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dr, i64 77
  %i.ls = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dv, i64 83
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dx, i64 86
  %i.lv = getelementptr inbounds nuw i8, ptr %i.dz, i64 89
  %i.lw = getelementptr inbounds nuw i8, ptr %i.eb, i64 92
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ed, i64 95
  %i.ly = getelementptr i8, ptr %i.ef, i64 98
  %i.lz = load i8, ptr %i.kt, align 1, !tbaa !36
  %i.ma = load i8, ptr %i.ku, align 1, !tbaa !36
  %i.mb = load i8, ptr %i.kv, align 1, !tbaa !36
  %i.mc = load i8, ptr %i.kw, align 1, !tbaa !36
  %i.md = load i8, ptr %i.kx, align 1, !tbaa !36
  %i.me = load i8, ptr %i.ky, align 1, !tbaa !36
  %i.mf = load i8, ptr %i.kz, align 1, !tbaa !36
  %i.mg = load i8, ptr %i.la, align 1, !tbaa !36
  %i.mh = load i8, ptr %i.lb, align 1, !tbaa !36
  %i.mi = load i8, ptr %i.lc, align 1, !tbaa !36
  %i.mj = load i8, ptr %i.ld, align 1, !tbaa !36
  %i.mk = load i8, ptr %i.le, align 1, !tbaa !36
  %i.ml = load i8, ptr %i.lf, align 1, !tbaa !36
  %i.mm = load i8, ptr %i.lg, align 1, !tbaa !36
  %i.mn = load i8, ptr %i.lh, align 1, !tbaa !36
  %i.mo = load i8, ptr %i.li, align 1, !tbaa !36
  %i.mp = insertelement <16 x i8> poison, i8 %i.lz, i64 0
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 1
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 2
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 3
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 4
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 5
  %i.mv = insertelement <16 x i8> %i.mu, i8 %i.mf, i64 6
  %i.mw = insertelement <16 x i8> %i.mv, i8 %i.mg, i64 7
  %i.mx = insertelement <16 x i8> %i.mw, i8 %i.mh, i64 8
  %i.my = insertelement <16 x i8> %i.mx, i8 %i.mi, i64 9
  %i.mz = insertelement <16 x i8> %i.my, i8 %i.mj, i64 10
  %i.na = insertelement <16 x i8> %i.mz, i8 %i.mk, i64 11
  %i.nb = insertelement <16 x i8> %i.na, i8 %i.ml, i64 12
  %i.nc = insertelement <16 x i8> %i.nb, i8 %i.mm, i64 13
  %i.nd = insertelement <16 x i8> %i.nc, i8 %i.mn, i64 14
  %i.ne = insertelement <16 x i8> %i.nd, i8 %i.mo, i64 15 ; 2 uses
  %i.nf = load i8, ptr %i.lj, align 1, !tbaa !36
  %i.ng = load i8, ptr %i.lk, align 1, !tbaa !36
  %i.nh = load i8, ptr %i.ll, align 1, !tbaa !36
  %i.ni = load i8, ptr %i.lm, align 1, !tbaa !36
  %i.nj = load i8, ptr %i.ln, align 1, !tbaa !36
  %i.nk = load i8, ptr %i.lo, align 1, !tbaa !36
  %i.nl = load i8, ptr %i.lp, align 1, !tbaa !36
  %i.nm = load i8, ptr %i.lq, align 1, !tbaa !36
  %i.nn = load i8, ptr %i.lr, align 1, !tbaa !36
  %i.no = load i8, ptr %i.ls, align 1, !tbaa !36
  %i.np = load i8, ptr %i.lt, align 1, !tbaa !36
  %i.nq = load i8, ptr %i.lu, align 1, !tbaa !36
  %i.nr = load i8, ptr %i.lv, align 1, !tbaa !36
  %i.ns = load i8, ptr %i.lw, align 1, !tbaa !36
  %i.nt = load i8, ptr %i.lx, align 1, !tbaa !36
  %i.nu = load i8, ptr %i.ly, align 1, !tbaa !36
  %i.nv = insertelement <16 x i8> poison, i8 %i.nf, i64 0
  %i.nw = insertelement <16 x i8> %i.nv, i8 %i.ng, i64 1
  %i.nx = insertelement <16 x i8> %i.nw, i8 %i.nh, i64 2
  %i.ny = insertelement <16 x i8> %i.nx, i8 %i.ni, i64 3
  %i.nz = insertelement <16 x i8> %i.ny, i8 %i.nj, i64 4
  %i.oa = insertelement <16 x i8> %i.nz, i8 %i.nk, i64 5
  %i.ob = insertelement <16 x i8> %i.oa, i8 %i.nl, i64 6
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 7
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 8
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 9
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 10
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 11
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 12
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 13
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 14
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 15 ; 2 uses
  %i.ol = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ne, <16 x i8> %vec.phi332) ; 2 uses
  %i.om = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ok, <16 x i8> %vec.phi333) ; 2 uses
  %i.on = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %i.ne) ; 2 uses
  %i.oo = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi331, <16 x i8> %i.ok) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.on, <16 x i8> %i.oo)
  %i.oq = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax342 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ol, <16 x i8> %i.om)
  %i.or = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax342) ; 3 uses
  %rdx.minmax343 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.kr, <16 x i8> %i.ks)
  %i.os = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax343) ; 3 uses
  %rdx.minmax344 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.kp, <16 x i8> %i.kq)
  %i.ot = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax344) ; 3 uses
  %rdx.minmax345 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.gv, <16 x i8> %i.gw)
  %i.ou = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax345) ; 3 uses
  %rdx.minmax346 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.gt, <16 x i8> %i.gu)
  %i.ov = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax346) ; 3 uses
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  %i.ow = insertelement <4 x i8> poison, i8 %i.ov, i64 0
  %i.ox = insertelement <4 x i8> %i.ow, i8 %i.ou, i64 1
  %i.oy = insertelement <4 x i8> %i.ox, i8 %i.ot, i64 2
  %i.oz = insertelement <4 x i8> %i.oy, i8 %i.os, i64 3
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.oq, %vec.epilog.iter.check ], [ %i.bp, %vector.main.loop.iter.check ]
  %bc.merge.rdx347 = phi i8 [ %i.or, %vec.epilog.iter.check ], [ %i.bp, %vector.main.loop.iter.check ]
  %i.pa = phi <4 x i8> [ %i.oz, %vec.epilog.iter.check ], [ %12, %vector.main.loop.iter.check ] ; 4 uses
  %broadcast.splat370 = shufflevector <4 x i8> %i.pa, <4 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splat367 = shufflevector <4 x i8> %i.pa, <4 x i8> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat364 = shufflevector <4 x i8> %i.pa, <4 x i8> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat361 = shufflevector <4 x i8> %i.pa, <4 x i8> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splatinsert355 = insertelement <8 x i8> poison, i8 %bc.merge.rdx347, i64 0
  %broadcast.splat356 = shufflevector <8 x i8> %broadcast.splatinsert355, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat355 = shufflevector <8 x i8> %broadcast.splatinsert354, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec352 = and i64 %i.bs, -8                   ; 3 uses
  %13 = or disjoint i64 %n.vec352, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index365 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next372, %vec.epilog.vector.body ] ; 9 uses
  %vec.phi366 = phi <8 x i8> [ %broadcast.splat355, %vec.epilog.ph ], [ %i.si, %vec.epilog.vector.body ]
  %vec.phi367 = phi <8 x i8> [ %broadcast.splat356, %vec.epilog.ph ], [ %i.sh, %vec.epilog.vector.body ]
  %vec.phi368.a = phi <8 x i8> [ %broadcast.splat361, %vec.epilog.ph ], [ %i.ri, %vec.epilog.vector.body ]
  %vec.phi369 = phi <8 x i8> [ %broadcast.splat364, %vec.epilog.ph ], [ %i.rh, %vec.epilog.vector.body ]
  %vec.phi370 = phi <8 x i8> [ %broadcast.splat367, %vec.epilog.ph ], [ %i.qi, %vec.epilog.vector.body ]
  %vec.phi371 = phi <8 x i8> [ %broadcast.splat370, %vec.epilog.ph ], [ %i.qh, %vec.epilog.vector.body ]
  %i.pb = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 3
  %i.pd = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 6
  %i.pf = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 9
  %i.ph = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  %i.pj = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 15
  %i.pl = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 18
  %i.pn = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 21
  %i.pp = getelementptr [3 x i8], ptr %i.f, i64 %index365 ; 3 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 24
  %i.pr = load i8, ptr %i.pc, align 1, !tbaa !36
  %i.ps = load i8, ptr %i.pe, align 1, !tbaa !36
  %i.pt = load i8, ptr %i.pg, align 1, !tbaa !36
  %i.pu = load i8, ptr %i.pi, align 1, !tbaa !36
  %i.pv = load i8, ptr %i.pk, align 1, !tbaa !36
  %i.pw = load i8, ptr %i.pm, align 1, !tbaa !36
  %i.px = load i8, ptr %i.po, align 1, !tbaa !36
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !36
  %i.pz = insertelement <8 x i8> poison, i8 %i.pr, i64 0
  %i.qa = insertelement <8 x i8> %i.pz, i8 %i.ps, i64 1
  %i.qb = insertelement <8 x i8> %i.qa, i8 %i.pt, i64 2
  %i.qc = insertelement <8 x i8> %i.qb, i8 %i.pu, i64 3
  %i.qd = insertelement <8 x i8> %i.qc, i8 %i.pv, i64 4
  %i.qe = insertelement <8 x i8> %i.qd, i8 %i.pw, i64 5
  %i.qf = insertelement <8 x i8> %i.qe, i8 %i.px, i64 6
  %i.qg = insertelement <8 x i8> %i.qf, i8 %i.py, i64 7 ; 2 uses
  %i.qh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.qg, <8 x i8> %vec.phi371) ; 2 uses
  %i.qi = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi370, <8 x i8> %i.qg) ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pd, i64 7
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pf, i64 10
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ph, i64 13
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pl, i64 19
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 22
  %i.qq = getelementptr i8, ptr %i.pp, i64 25
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !36
  %i.qs = load i8, ptr %i.qk, align 1, !tbaa !36
  %i.qt = load i8, ptr %i.ql, align 1, !tbaa !36
  %i.qu = load i8, ptr %i.qm, align 1, !tbaa !36
  %i.qv = load i8, ptr %i.qn, align 1, !tbaa !36
  %i.qw = load i8, ptr %i.qo, align 1, !tbaa !36
  %i.qx = load i8, ptr %i.qp, align 1, !tbaa !36
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !36
  %i.qz = insertelement <8 x i8> poison, i8 %i.qr, i64 0
  %i.ra = insertelement <8 x i8> %i.qz, i8 %i.qs, i64 1
  %i.rb = insertelement <8 x i8> %i.ra, i8 %i.qt, i64 2
  %i.rc = insertelement <8 x i8> %i.rb, i8 %i.qu, i64 3
  %i.rd = insertelement <8 x i8> %i.rc, i8 %i.qv, i64 4
  %i.re = insertelement <8 x i8> %i.rd, i8 %i.qw, i64 5
  %i.rf = insertelement <8 x i8> %i.re, i8 %i.qx, i64 6
  %i.rg = insertelement <8 x i8> %i.rf, i8 %i.qy, i64 7 ; 2 uses
  %i.rh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.rg, <8 x i8> %vec.phi369) ; 2 uses
  %i.ri = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi368.a, <8 x i8> %i.rg) ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pb, i64 5
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pf, i64 11
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ph, i64 14
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pj, i64 17
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pl, i64 20
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pn, i64 23
  %i.rq = getelementptr i8, ptr %i.pp, i64 26
  %i.rr = load i8, ptr %i.rj, align 1, !tbaa !36
  %i.rs = load i8, ptr %i.rk, align 1, !tbaa !36
  %i.rt = load i8, ptr %i.rl, align 1, !tbaa !36
  %i.ru = load i8, ptr %i.rm, align 1, !tbaa !36
  %i.rv = load i8, ptr %i.rn, align 1, !tbaa !36
  %i.rw = load i8, ptr %i.ro, align 1, !tbaa !36
  %i.rx = load i8, ptr %i.rp, align 1, !tbaa !36
  %i.ry = load i8, ptr %i.rq, align 1, !tbaa !36
  %i.rz = insertelement <8 x i8> poison, i8 %i.rr, i64 0
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rs, i64 1
  %i.sb = insertelement <8 x i8> %i.sa, i8 %i.rt, i64 2
  %i.sc = insertelement <8 x i8> %i.sb, i8 %i.ru, i64 3
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 4
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 5
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 6
  %i.sg = insertelement <8 x i8> %i.sf, i8 %i.ry, i64 7 ; 2 uses
  %i.sh = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.sg, <8 x i8> %vec.phi367) ; 2 uses
  %i.si = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi366, <8 x i8> %i.sg) ; 2 uses
  %index.next372 = add nuw i64 %index365, 8       ; 2 uses
  %i.sj = icmp eq i64 %index.next372, %n.vec352
  br i1 %i.sj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.sk = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.si) ; 2 uses
  %i.sl = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.sh) ; 2 uses
  %i.sm = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.ri) ; 2 uses
  %i.sn = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.rh) ; 2 uses
  %i.so = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.qi) ; 2 uses
  %i.sp = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.qh) ; 2 uses
  %cmp.n373 = icmp eq i64 %i.bs, %n.vec352
  br i1 %cmp.n373, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph603.a = phi i8 [ %i.bp, %iter.check ], [ %i.oq, %vec.epilog.iter.check ], [ %i.sk, %vec.epilog.middle.block ]
  %.ph604.a = phi i8 [ %i.bp, %iter.check ], [ %i.or, %vec.epilog.iter.check ], [ %i.sl, %vec.epilog.middle.block ]
  %.ph605.a = phi i8 [ %i.bk, %iter.check ], [ %i.os, %vec.epilog.iter.check ], [ %i.sm, %vec.epilog.middle.block ]
  %.ph606.a = phi i8 [ %i.bk, %iter.check ], [ %i.ot, %vec.epilog.iter.check ], [ %i.sn, %vec.epilog.middle.block ]
  %.ph607.a = phi i8 [ %i.bl, %iter.check ], [ %i.ou, %vec.epilog.iter.check ], [ %i.so, %vec.epilog.middle.block ]
  %.ph608 = phi i8 [ %i.bl, %iter.check ], [ %i.ov, %vec.epilog.iter.check ], [ %i.sp, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.sq = phi i8 [ %i.th, %.preheader.i ], [ %.ph603.a, %.preheader.i.preheader ]
  %i.sr = phi i8 [ %i.tg, %.preheader.i ], [ %.ph604.a, %.preheader.i.preheader ]
  %i.ss = phi i8 [ %i.td, %.preheader.i ], [ %.ph605.a, %.preheader.i.preheader ]
  %i.st = phi i8 [ %i.tc, %.preheader.i ], [ %.ph606.a, %.preheader.i.preheader ]
  %i.su = phi i8 [ %i.sz, %.preheader.i ], [ %.ph607.a, %.preheader.i.preheader ]
  %i.sv = phi i8 [ %i.sy, %.preheader.i ], [ %.ph608, %.preheader.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !36  ; 2 uses
  %i.sy = tail call i8 @llvm.umin.i8(i8 %i.sx, i8 %i.sv) ; 2 uses
  %i.sz = tail call i8 @llvm.umax.i8(i8 %i.su, i8 %i.sx) ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !36  ; 2 uses
  %i.tc = tail call i8 @llvm.umin.i8(i8 %i.tb, i8 %i.st) ; 2 uses
  %i.td = tail call i8 @llvm.umax.i8(i8 %i.ss, i8 %i.tb) ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 2
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !36  ; 2 uses
  %i.tg = tail call i8 @llvm.umin.i8(i8 %i.tf, i8 %i.sr) ; 2 uses
  %i.th = tail call i8 @llvm.umax.i8(i8 %i.sq, i8 %i.tf) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next.i, %umax
  br i1 %exitcond238.not, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %.preheader.i, !llvm.loop !123

_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa325 = phi i8 [ %i.sp, %vec.epilog.middle.block ], [ %i.ov, %middle.block ], [ %i.sy, %.preheader.i ]
  %.lcssa324 = phi i8 [ %i.so, %vec.epilog.middle.block ], [ %i.ou, %middle.block ], [ %i.sz, %.preheader.i ]
  %.lcssa323 = phi i8 [ %i.sn, %vec.epilog.middle.block ], [ %i.ot, %middle.block ], [ %i.tc, %.preheader.i ]
  %.lcssa322 = phi i8 [ %i.sm, %vec.epilog.middle.block ], [ %i.os, %middle.block ], [ %i.td, %.preheader.i ]
  %.lcssa321 = phi i8 [ %i.sl, %vec.epilog.middle.block ], [ %i.or, %middle.block ], [ %i.tg, %.preheader.i ]
  %.lcssa320 = phi i8 [ %i.sk, %vec.epilog.middle.block ], [ %i.oq, %middle.block ], [ %i.th, %.preheader.i ]
  store i8 %.lcssa325, ptr %9, align 8, !tbaa !36
  store i8 %.lcssa324, ptr %i.bi, align 1, !tbaa !36
  store i8 %.lcssa323, ptr %i.bn, align 1, !tbaa !36
  store i8 %.lcssa322, ptr %i.bm, align 4, !tbaa !36
  store i8 %.lcssa321, ptr %i.br, align 2, !tbaa !36
  store i8 %.lcssa320, ptr %i.bq, align 1, !tbaa !36
  br label %_ZN4gdcm12quantization5Block6shrinkEv.exit

_ZN4gdcm12quantization5Block6shrinkEv.exit:       ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, %._crit_edge
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(20) %9)
          to label %.preheader180 unwind label %.loopexit.split-lp182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader180:                                    ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit
  %i.ti = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.tj = zext i32 %3 to i64                      ; 2 uses
  %i.tk = load ptr, ptr %i.ti, align 8, !tbaa !54 ; 2 uses
  %i.tl = load ptr, ptr %8, align 8, !tbaa !55    ; 3 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = sdiv exact i64 %i.to, 24
  %i.tq = icmp ult i64 %i.tp, %i.tj
  br i1 %i.tq, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %.preheader180
  %i.tr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %10, i64 3 ; 5 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %11, i64 3 ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %11, i64 6
  %scevgep462.a = getelementptr inbounds nuw i8, ptr %10, i64 6
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph204, %bb.ah
  %i.uf = phi ptr [ %i.tl, %.lr.ph204 ], [ %i.bxl, %bb.ah ] ; 8 uses
  %.sroa.0162.0.copyload = load i8, ptr %i.uf, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %.sroa.5163.0.copyload = load i8, ptr %.sroa.5163.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 3
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %.sroa.8164.0.copyload = load i8, ptr %.sroa.8164.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 5
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !36
  %.sroa.10165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.10165.0.copyload = load ptr, ptr %.sroa.10165.0..sroa_idx, align 8, !tbaa !56 ; 54 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
end_hunk_1
begin_hunk_2_@_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE:bb.a
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.vv, i64 11 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.vx, i64 14 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.vz, i64 17 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.wb, i64 20 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.wd, i64 23 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.wf, i64 26 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.wh, i64 29 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.wj, i64 32 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.wl, i64 35 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.wn, i64 38 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.wp, i64 41 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.wr, i64 44 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.wt, i64 47 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.wv, i64 50 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.wx, i64 53 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.wz, i64 56 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.xb, i64 59 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.xd, i64 62 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.xf, i64 65 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.xh, i64 68 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.xj, i64 71 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.xl, i64 74 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.xn, i64 77 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.xp, i64 80 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.xr, i64 83 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.xt, i64 86 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.xv, i64 89 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.xx, i64 92 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.xz, i64 95 ; 2 uses
  %i.aks = getelementptr i8, ptr %i.yb, i64 98    ; 2 uses
  %i.akt = load i8, ptr %i.ajn, align 1, !tbaa !36, !alias.scope !141
  %i.aku = load i8, ptr %i.ajo, align 1, !tbaa !36, !alias.scope !141
  %i.akv = load i8, ptr %i.ajp, align 1, !tbaa !36, !alias.scope !141
  %i.akw = load i8, ptr %i.ajq, align 1, !tbaa !36, !alias.scope !141
  %i.akx = load i8, ptr %i.ajr, align 1, !tbaa !36, !alias.scope !141
  %i.aky = load i8, ptr %i.ajs, align 1, !tbaa !36, !alias.scope !141
  %i.akz = load i8, ptr %i.ajt, align 1, !tbaa !36, !alias.scope !141
  %i.ala = load i8, ptr %i.aju, align 1, !tbaa !36, !alias.scope !141
  %i.alb = load i8, ptr %i.ajv, align 1, !tbaa !36, !alias.scope !141
  %i.alc = load i8, ptr %i.ajw, align 1, !tbaa !36, !alias.scope !141
  %i.ald = load i8, ptr %i.ajx, align 1, !tbaa !36, !alias.scope !141
  %i.ale = load i8, ptr %i.ajy, align 1, !tbaa !36, !alias.scope !141
  %i.alf = load i8, ptr %i.ajz, align 1, !tbaa !36, !alias.scope !141
  %i.alg = load i8, ptr %i.aka, align 1, !tbaa !36, !alias.scope !141
  %i.alh = load i8, ptr %i.akb, align 1, !tbaa !36, !alias.scope !141
  %i.ali = load i8, ptr %i.akc, align 1, !tbaa !36, !alias.scope !141
  %i.alj = insertelement <16 x i8> poison, i8 %i.akt, i64 0
  %i.alk = insertelement <16 x i8> %i.alj, i8 %i.aku, i64 1
  %i.all = insertelement <16 x i8> %i.alk, i8 %i.akv, i64 2
  %i.alm = insertelement <16 x i8> %i.all, i8 %i.akw, i64 3
  %i.aln = insertelement <16 x i8> %i.alm, i8 %i.akx, i64 4
  %i.alo = insertelement <16 x i8> %i.aln, i8 %i.aky, i64 5
  %i.alp = insertelement <16 x i8> %i.alo, i8 %i.akz, i64 6
  %i.alq = insertelement <16 x i8> %i.alp, i8 %i.ala, i64 7
  %i.alr = insertelement <16 x i8> %i.alq, i8 %i.alb, i64 8
  %i.als = insertelement <16 x i8> %i.alr, i8 %i.alc, i64 9
  %i.alt = insertelement <16 x i8> %i.als, i8 %i.ald, i64 10
  %i.alu = insertelement <16 x i8> %i.alt, i8 %i.ale, i64 11
  %i.alv = insertelement <16 x i8> %i.alu, i8 %i.alf, i64 12
  %i.alw = insertelement <16 x i8> %i.alv, i8 %i.alg, i64 13
  %i.alx = insertelement <16 x i8> %i.alw, i8 %i.alh, i64 14
  %i.aly = insertelement <16 x i8> %i.alx, i8 %i.ali, i64 15
  %i.alz = load i8, ptr %i.akd, align 1, !tbaa !36, !alias.scope !141
  %i.ama = load i8, ptr %i.ake, align 1, !tbaa !36, !alias.scope !141
  %i.amb = load i8, ptr %i.akf, align 1, !tbaa !36, !alias.scope !141
  %i.amc = load i8, ptr %i.akg, align 1, !tbaa !36, !alias.scope !141
  %i.amd = load i8, ptr %i.akh, align 1, !tbaa !36, !alias.scope !141
  %i.ame = load i8, ptr %i.aki, align 1, !tbaa !36, !alias.scope !141
  %i.amf = load i8, ptr %i.akj, align 1, !tbaa !36, !alias.scope !141
  %i.amg = load i8, ptr %i.akk, align 1, !tbaa !36, !alias.scope !141
  %i.amh = load i8, ptr %i.akl, align 1, !tbaa !36, !alias.scope !141
  %i.ami = load i8, ptr %i.akm, align 1, !tbaa !36, !alias.scope !141
  %i.amj = load i8, ptr %i.akn, align 1, !tbaa !36, !alias.scope !141
  %i.amk = load i8, ptr %i.ako, align 1, !tbaa !36, !alias.scope !141
  %i.aml = load i8, ptr %i.akp, align 1, !tbaa !36, !alias.scope !141
  %i.amm = load i8, ptr %i.akq, align 1, !tbaa !36, !alias.scope !141
  %i.amn = load i8, ptr %i.akr, align 1, !tbaa !36, !alias.scope !141
  %i.amo = load i8, ptr %i.aks, align 1, !tbaa !36, !alias.scope !141
  %i.amp = insertelement <16 x i8> poison, i8 %i.alz, i64 0
  %i.amq = insertelement <16 x i8> %i.amp, i8 %i.ama, i64 1
  %i.amr = insertelement <16 x i8> %i.amq, i8 %i.amb, i64 2
  %i.ams = insertelement <16 x i8> %i.amr, i8 %i.amc, i64 3
  %i.amt = insertelement <16 x i8> %i.ams, i8 %i.amd, i64 4
  %i.amu = insertelement <16 x i8> %i.amt, i8 %i.ame, i64 5
  %i.amv = insertelement <16 x i8> %i.amu, i8 %i.amf, i64 6
  %i.amw = insertelement <16 x i8> %i.amv, i8 %i.amg, i64 7
  %i.amx = insertelement <16 x i8> %i.amw, i8 %i.amh, i64 8
  %i.amy = insertelement <16 x i8> %i.amx, i8 %i.ami, i64 9
  %i.amz = insertelement <16 x i8> %i.amy, i8 %i.amj, i64 10
  %i.ana = insertelement <16 x i8> %i.amz, i8 %i.amk, i64 11
  %i.anb = insertelement <16 x i8> %i.ana, i8 %i.aml, i64 12
  %i.anc = insertelement <16 x i8> %i.anb, i8 %i.amm, i64 13
  %i.and = insertelement <16 x i8> %i.anc, i8 %i.amn, i64 14
  %i.ane = insertelement <16 x i8> %i.and, i8 %i.amo, i64 15
  %i.anf = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.aly, <16 x i8> %vec.phi483.a) ; 2 uses
  %i.ang = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ane, <16 x i8> %vec.phi484.a) ; 2 uses
  %i.anh = load i8, ptr %i.ajn, align 1, !tbaa !36, !alias.scope !141
  %i.ani = load i8, ptr %i.ajo, align 1, !tbaa !36, !alias.scope !141
  %i.anj = load i8, ptr %i.ajp, align 1, !tbaa !36, !alias.scope !141
  %i.ank = load i8, ptr %i.ajq, align 1, !tbaa !36, !alias.scope !141
  %i.anl = load i8, ptr %i.ajr, align 1, !tbaa !36, !alias.scope !141
  %i.anm = load i8, ptr %i.ajs, align 1, !tbaa !36, !alias.scope !141
  %i.ann = load i8, ptr %i.ajt, align 1, !tbaa !36, !alias.scope !141
  %i.ano = load i8, ptr %i.aju, align 1, !tbaa !36, !alias.scope !141
  %i.anp = load i8, ptr %i.ajv, align 1, !tbaa !36, !alias.scope !141
  %i.anq = load i8, ptr %i.ajw, align 1, !tbaa !36, !alias.scope !141
  %i.anr = load i8, ptr %i.ajx, align 1, !tbaa !36, !alias.scope !141
  %i.ans = load i8, ptr %i.ajy, align 1, !tbaa !36, !alias.scope !141
  %i.ant = load i8, ptr %i.ajz, align 1, !tbaa !36, !alias.scope !141
  %i.anu = load i8, ptr %i.aka, align 1, !tbaa !36, !alias.scope !141
  %i.anv = load i8, ptr %i.akb, align 1, !tbaa !36, !alias.scope !141
  %i.anw = load i8, ptr %i.akc, align 1, !tbaa !36, !alias.scope !141
  %i.anx = insertelement <16 x i8> poison, i8 %i.anh, i64 0
  %i.any = insertelement <16 x i8> %i.anx, i8 %i.ani, i64 1
  %i.anz = insertelement <16 x i8> %i.any, i8 %i.anj, i64 2
  %i.aoa = insertelement <16 x i8> %i.anz, i8 %i.ank, i64 3
  %i.aob = insertelement <16 x i8> %i.aoa, i8 %i.anl, i64 4
  %i.aoc = insertelement <16 x i8> %i.aob, i8 %i.anm, i64 5
  %i.aod = insertelement <16 x i8> %i.aoc, i8 %i.ann, i64 6
  %i.aoe = insertelement <16 x i8> %i.aod, i8 %i.ano, i64 7
  %i.aof = insertelement <16 x i8> %i.aoe, i8 %i.anp, i64 8
  %i.aog = insertelement <16 x i8> %i.aof, i8 %i.anq, i64 9
  %i.aoh = insertelement <16 x i8> %i.aog, i8 %i.anr, i64 10
  %i.aoi = insertelement <16 x i8> %i.aoh, i8 %i.ans, i64 11
  %i.aoj = insertelement <16 x i8> %i.aoi, i8 %i.ant, i64 12
  %i.aok = insertelement <16 x i8> %i.aoj, i8 %i.anu, i64 13
  %i.aol = insertelement <16 x i8> %i.aok, i8 %i.anv, i64 14
  %i.aom = insertelement <16 x i8> %i.aol, i8 %i.anw, i64 15
  %i.aon = load i8, ptr %i.akd, align 1, !tbaa !36, !alias.scope !141
  %i.aoo = load i8, ptr %i.ake, align 1, !tbaa !36, !alias.scope !141
  %i.aop = load i8, ptr %i.akf, align 1, !tbaa !36, !alias.scope !141
  %i.aoq = load i8, ptr %i.akg, align 1, !tbaa !36, !alias.scope !141
  %i.aor = load i8, ptr %i.akh, align 1, !tbaa !36, !alias.scope !141
  %i.aos = load i8, ptr %i.aki, align 1, !tbaa !36, !alias.scope !141
  %i.aot = load i8, ptr %i.akj, align 1, !tbaa !36, !alias.scope !141
  %i.aou = load i8, ptr %i.akk, align 1, !tbaa !36, !alias.scope !141
  %i.aov = load i8, ptr %i.akl, align 1, !tbaa !36, !alias.scope !141
  %i.aow = load i8, ptr %i.akm, align 1, !tbaa !36, !alias.scope !141
  %i.aox = load i8, ptr %i.akn, align 1, !tbaa !36, !alias.scope !141
  %i.aoy = load i8, ptr %i.ako, align 1, !tbaa !36, !alias.scope !141
  %i.aoz = load i8, ptr %i.akp, align 1, !tbaa !36, !alias.scope !141
  %i.apa = load i8, ptr %i.akq, align 1, !tbaa !36, !alias.scope !141
  %i.apb = load i8, ptr %i.akr, align 1, !tbaa !36, !alias.scope !141
  %i.apc = load i8, ptr %i.aks, align 1, !tbaa !36, !alias.scope !141
  %i.apd = insertelement <16 x i8> poison, i8 %i.aon, i64 0
  %i.ape = insertelement <16 x i8> %i.apd, i8 %i.aoo, i64 1
  %i.apf = insertelement <16 x i8> %i.ape, i8 %i.aop, i64 2
  %i.apg = insertelement <16 x i8> %i.apf, i8 %i.aoq, i64 3
  %i.aph = insertelement <16 x i8> %i.apg, i8 %i.aor, i64 4
  %i.api = insertelement <16 x i8> %i.aph, i8 %i.aos, i64 5
  %i.apj = insertelement <16 x i8> %i.api, i8 %i.aot, i64 6
  %i.apk = insertelement <16 x i8> %i.apj, i8 %i.aou, i64 7
  %i.apl = insertelement <16 x i8> %i.apk, i8 %i.aov, i64 8
  %i.apm = insertelement <16 x i8> %i.apl, i8 %i.aow, i64 9
  %i.apn = insertelement <16 x i8> %i.apm, i8 %i.aox, i64 10
  %i.apo = insertelement <16 x i8> %i.apn, i8 %i.aoy, i64 11
  %i.app = insertelement <16 x i8> %i.apo, i8 %i.aoz, i64 12
  %i.apq = insertelement <16 x i8> %i.app, i8 %i.apa, i64 13
  %i.apr = insertelement <16 x i8> %i.apq, i8 %i.apb, i64 14
  %i.aps = insertelement <16 x i8> %i.apr, i8 %i.apc, i64 15
  %i.apt = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi481.a, <16 x i8> %i.aom) ; 2 uses
  %i.apu = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi482.a, <16 x i8> %i.aps) ; 2 uses
  %index.next493 = add nuw i64 %index480, 32      ; 2 uses
  %i.apv = icmp eq i64 %index.next493, %n.vec472
  br i1 %i.apv, label %middle.block494, label %vector.body479, !llvm.loop !126

middle.block494:                                  ; preds = %vector.body479
  %rdx.minmax495.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.apt, <16 x i8> %i.apu)
  %i.apw = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax495.a) ; 3 uses
  %rdx.minmax496.a = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.anf, <16 x i8> %i.ang)
  %i.apx = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax496.a) ; 3 uses
  %rdx.minmax497.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ajl, <16 x i8> %i.ajm)
  %i.apy = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax497.a) ; 3 uses
  %rdx.minmax498.a = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.agx, <16 x i8> %i.agy)
  %i.apz = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax498.a) ; 3 uses
  %rdx.minmax499.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.add, <16 x i8> %i.ade)
  %i.aqa = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax499.a) ; 3 uses
  %rdx.minmax500 = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.aap, <16 x i8> %i.aaq)
  %i.aqb = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax500) ; 3 uses
  store i8 %i.aqb, ptr %10, align 8, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.aqa, ptr %i.tt, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.apz, ptr %i.ty, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.apy, ptr %i.tx, align 4, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.apx, ptr %i.ua, align 2, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.apw, ptr %i.tz, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  %cmp.n501 = icmp eq i64 %i.vn, %n.vec472
  br i1 %cmp.n501, label %_ZN4gdcm12quantization5Block6shrinkEv.exit144, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block494
  %min.epilog.iters.check512 = icmp eq i64 %i.vp, 0
  br i1 %min.epilog.iters.check512, label %.preheader.i141.preheader, label %vec.epilog.ph513, !prof !40

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check469, %vec.epilog.iter.check511
  %vec.epilog.resume.val502 = phi i64 [ %n.vec472, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx503 = phi i8 [ %i.apw, %vec.epilog.iter.check511 ], [ %i.vk, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx504 = phi i8 [ %i.apx, %vec.epilog.iter.check511 ], [ %i.vk, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx505 = phi i8 [ %i.apy, %vec.epilog.iter.check511 ], [ %i.vi, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx506 = phi i8 [ %i.apz, %vec.epilog.iter.check511 ], [ %i.vi, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx507 = phi i8 [ %i.aqa, %vec.epilog.iter.check511 ], [ %i.vg, %vector.main.loop.iter.check469 ]
  %bc.merge.rdx508 = phi i8 [ %i.aqb, %vec.epilog.iter.check511 ], [ %i.vg, %vector.main.loop.iter.check469 ]
  %broadcast.splatinsert531 = insertelement <8 x i8> poison, i8 %bc.merge.rdx508, i64 0
  %broadcast.splat532 = shufflevector <8 x i8> %broadcast.splatinsert531, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert515 = insertelement <8 x i8> poison, i8 %bc.merge.rdx507, i64 0
  %broadcast.splat516 = shufflevector <8 x i8> %broadcast.splatinsert515, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert517 = insertelement <8 x i8> poison, i8 %bc.merge.rdx506, i64 0
  %broadcast.splat518 = shufflevector <8 x i8> %broadcast.splatinsert517, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert519.a = insertelement <8 x i8> poison, i8 %bc.merge.rdx505, i64 0
  %broadcast.splat520.a = shufflevector <8 x i8> %broadcast.splatinsert519.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert521 = insertelement <8 x i8> poison, i8 %bc.merge.rdx504, i64 0
  %broadcast.splat522 = shufflevector <8 x i8> %broadcast.splatinsert521, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert523 = insertelement <8 x i8> poison, i8 %bc.merge.rdx503, i64 0
  %broadcast.splat524 = shufflevector <8 x i8> %broadcast.splatinsert523, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec513 = and i64 %i.vn, -8                   ; 3 uses
  %14 = or disjoint i64 %n.vec513, 1
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph513
  %index528 = phi i64 [ %vec.epilog.resume.val502, %vec.epilog.ph513 ], [ %index.next535, %vec.epilog.vector.body527 ] ; 9 uses
  %vec.phi529 = phi <8 x i8> [ %broadcast.splat524, %vec.epilog.ph513 ], [ %i.avf, %vec.epilog.vector.body527 ]
  %vec.phi530.a = phi <8 x i8> [ %broadcast.splat522, %vec.epilog.ph513 ], [ %i.auo, %vec.epilog.vector.body527 ]
  %vec.phi531 = phi <8 x i8> [ %broadcast.splat520.a, %vec.epilog.ph513 ], [ %i.atp, %vec.epilog.vector.body527 ]
  %vec.phi532 = phi <8 x i8> [ %broadcast.splat518, %vec.epilog.ph513 ], [ %i.asy, %vec.epilog.vector.body527 ]
  %vec.phi533.a = phi <8 x i8> [ %broadcast.splat516, %vec.epilog.ph513 ], [ %i.arz, %vec.epilog.vector.body527 ]
  %vec.phi534 = phi <8 x i8> [ %broadcast.splat532, %vec.epilog.ph513 ], [ %i.ari, %vec.epilog.vector.body527 ]
  %i.aqc = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 3 ; 2 uses
  %i.aqe = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 6 ; 2 uses
  %i.aqg = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 9 ; 2 uses
  %i.aqi = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 12 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 15 ; 2 uses
  %i.aqm = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 18 ; 2 uses
  %i.aqo = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 21 ; 2 uses
  %i.aqq = getelementptr [3 x i8], ptr %.sroa.10165.0.copyload, i64 %index528 ; 3 uses
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 24   ; 2 uses
  %i.aqs = load i8, ptr %i.aqd, align 1, !tbaa !36, !alias.scope !141
  %i.aqt = load i8, ptr %i.aqf, align 1, !tbaa !36, !alias.scope !141
  %i.aqu = load i8, ptr %i.aqh, align 1, !tbaa !36, !alias.scope !141
  %i.aqv = load i8, ptr %i.aqj, align 1, !tbaa !36, !alias.scope !141
  %i.aqw = load i8, ptr %i.aql, align 1, !tbaa !36, !alias.scope !141
  %i.aqx = load i8, ptr %i.aqn, align 1, !tbaa !36, !alias.scope !141
  %i.aqy = load i8, ptr %i.aqp, align 1, !tbaa !36, !alias.scope !141
  %i.aqz = load i8, ptr %i.aqr, align 1, !tbaa !36, !alias.scope !141
  %i.ara = insertelement <8 x i8> poison, i8 %i.aqs, i64 0
  %i.arb = insertelement <8 x i8> %i.ara, i8 %i.aqt, i64 1
  %i.arc = insertelement <8 x i8> %i.arb, i8 %i.aqu, i64 2
  %i.ard = insertelement <8 x i8> %i.arc, i8 %i.aqv, i64 3
  %i.are = insertelement <8 x i8> %i.ard, i8 %i.aqw, i64 4
  %i.arf = insertelement <8 x i8> %i.are, i8 %i.aqx, i64 5
  %i.arg = insertelement <8 x i8> %i.arf, i8 %i.aqy, i64 6
  %i.arh = insertelement <8 x i8> %i.arg, i8 %i.aqz, i64 7
  %i.ari = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.arh, <8 x i8> %vec.phi534) ; 2 uses
  %i.arj = load i8, ptr %i.aqd, align 1, !tbaa !36, !alias.scope !141
  %i.ark = load i8, ptr %i.aqf, align 1, !tbaa !36, !alias.scope !141
  %i.arl = load i8, ptr %i.aqh, align 1, !tbaa !36, !alias.scope !141
  %i.arm = load i8, ptr %i.aqj, align 1, !tbaa !36, !alias.scope !141
  %i.arn = load i8, ptr %i.aql, align 1, !tbaa !36, !alias.scope !141
  %i.aro = load i8, ptr %i.aqn, align 1, !tbaa !36, !alias.scope !141
  %i.arp = load i8, ptr %i.aqp, align 1, !tbaa !36, !alias.scope !141
  %i.arq = load i8, ptr %i.aqr, align 1, !tbaa !36, !alias.scope !141
  %i.arr = insertelement <8 x i8> poison, i8 %i.arj, i64 0
  %i.ars = insertelement <8 x i8> %i.arr, i8 %i.ark, i64 1
  %i.art = insertelement <8 x i8> %i.ars, i8 %i.arl, i64 2
  %i.aru = insertelement <8 x i8> %i.art, i8 %i.arm, i64 3
  %i.arv = insertelement <8 x i8> %i.aru, i8 %i.arn, i64 4
  %i.arw = insertelement <8 x i8> %i.arv, i8 %i.aro, i64 5
  %i.arx = insertelement <8 x i8> %i.arw, i8 %i.arp, i64 6
  %i.ary = insertelement <8 x i8> %i.arx, i8 %i.arq, i64 7
  %i.arz = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi533.a, <8 x i8> %i.ary) ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqc, i64 4 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqe, i64 7 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqg, i64 10 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aqi, i64 13 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aqm, i64 19 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aqo, i64 22 ; 2 uses
  %i.ash = getelementptr i8, ptr %i.aqq, i64 25   ; 2 uses
  %i.asi = load i8, ptr %i.asa, align 1, !tbaa !36, !alias.scope !141
  %i.asj = load i8, ptr %i.asb, align 1, !tbaa !36, !alias.scope !141
  %i.ask = load i8, ptr %i.asc, align 1, !tbaa !36, !alias.scope !141
  %i.asl = load i8, ptr %i.asd, align 1, !tbaa !36, !alias.scope !141
  %i.asm = load i8, ptr %i.ase, align 1, !tbaa !36, !alias.scope !141
  %i.asn = load i8, ptr %i.asf, align 1, !tbaa !36, !alias.scope !141
  %i.aso = load i8, ptr %i.asg, align 1, !tbaa !36, !alias.scope !141
  %i.asp = load i8, ptr %i.ash, align 1, !tbaa !36, !alias.scope !141
  %i.asq = insertelement <8 x i8> poison, i8 %i.asi, i64 0
  %i.asr = insertelement <8 x i8> %i.asq, i8 %i.asj, i64 1
  %i.ass = insertelement <8 x i8> %i.asr, i8 %i.ask, i64 2
  %i.ast = insertelement <8 x i8> %i.ass, i8 %i.asl, i64 3
  %i.asu = insertelement <8 x i8> %i.ast, i8 %i.asm, i64 4
  %i.asv = insertelement <8 x i8> %i.asu, i8 %i.asn, i64 5
  %i.asw = insertelement <8 x i8> %i.asv, i8 %i.aso, i64 6
  %i.asx = insertelement <8 x i8> %i.asw, i8 %i.asp, i64 7
  %i.asy = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.asx, <8 x i8> %vec.phi532) ; 2 uses
  %i.asz = load i8, ptr %i.asa, align 1, !tbaa !36, !alias.scope !141
  %i.ata = load i8, ptr %i.asb, align 1, !tbaa !36, !alias.scope !141
  %i.atb = load i8, ptr %i.asc, align 1, !tbaa !36, !alias.scope !141
  %i.atc = load i8, ptr %i.asd, align 1, !tbaa !36, !alias.scope !141
  %i.atd = load i8, ptr %i.ase, align 1, !tbaa !36, !alias.scope !141
  %i.ate = load i8, ptr %i.asf, align 1, !tbaa !36, !alias.scope !141
  %i.atf = load i8, ptr %i.asg, align 1, !tbaa !36, !alias.scope !141
  %i.atg = load i8, ptr %i.ash, align 1, !tbaa !36, !alias.scope !141
  %i.ath = insertelement <8 x i8> poison, i8 %i.asz, i64 0
  %i.ati = insertelement <8 x i8> %i.ath, i8 %i.ata, i64 1
  %i.atj = insertelement <8 x i8> %i.ati, i8 %i.atb, i64 2
  %i.atk = insertelement <8 x i8> %i.atj, i8 %i.atc, i64 3
  %i.atl = insertelement <8 x i8> %i.atk, i8 %i.atd, i64 4
  %i.atm = insertelement <8 x i8> %i.atl, i8 %i.ate, i64 5
  %i.atn = insertelement <8 x i8> %i.atm, i8 %i.atf, i64 6
  %i.ato = insertelement <8 x i8> %i.atn, i8 %i.atg, i64 7
  %i.atp = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi531, <8 x i8> %i.ato) ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aqc, i64 5 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.aqg, i64 11 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.aqi, i64 14 ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.aqk, i64 17 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.aqm, i64 20 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aqo, i64 23 ; 2 uses
  %i.atx = getelementptr i8, ptr %i.aqq, i64 26   ; 2 uses
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !36, !alias.scope !141
  %i.atz = load i8, ptr %i.atr, align 1, !tbaa !36, !alias.scope !141
  %i.aua = load i8, ptr %i.ats, align 1, !tbaa !36, !alias.scope !141
  %i.aub = load i8, ptr %i.att, align 1, !tbaa !36, !alias.scope !141
  %i.auc = load i8, ptr %i.atu, align 1, !tbaa !36, !alias.scope !141
  %i.aud = load i8, ptr %i.atv, align 1, !tbaa !36, !alias.scope !141
  %i.aue = load i8, ptr %i.atw, align 1, !tbaa !36, !alias.scope !141
  %i.auf = load i8, ptr %i.atx, align 1, !tbaa !36, !alias.scope !141
  %i.aug = insertelement <8 x i8> poison, i8 %i.aty, i64 0
  %i.auh = insertelement <8 x i8> %i.aug, i8 %i.atz, i64 1
  %i.aui = insertelement <8 x i8> %i.auh, i8 %i.aua, i64 2
  %i.auj = insertelement <8 x i8> %i.aui, i8 %i.aub, i64 3
  %i.auk = insertelement <8 x i8> %i.auj, i8 %i.auc, i64 4
  %i.aul = insertelement <8 x i8> %i.auk, i8 %i.aud, i64 5
  %i.aum = insertelement <8 x i8> %i.aul, i8 %i.aue, i64 6
  %i.aun = insertelement <8 x i8> %i.aum, i8 %i.auf, i64 7
  %i.auo = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.aun, <8 x i8> %vec.phi530.a) ; 2 uses
  %i.aup = load i8, ptr %i.atq, align 1, !tbaa !36, !alias.scope !141
  %i.auq = load i8, ptr %i.atr, align 1, !tbaa !36, !alias.scope !141
  %i.aur = load i8, ptr %i.ats, align 1, !tbaa !36, !alias.scope !141
  %i.aus = load i8, ptr %i.att, align 1, !tbaa !36, !alias.scope !141
  %i.aut = load i8, ptr %i.atu, align 1, !tbaa !36, !alias.scope !141
  %i.auu = load i8, ptr %i.atv, align 1, !tbaa !36, !alias.scope !141
  %i.auv = load i8, ptr %i.atw, align 1, !tbaa !36, !alias.scope !141
  %i.auw = load i8, ptr %i.atx, align 1, !tbaa !36, !alias.scope !141
  %i.aux = insertelement <8 x i8> poison, i8 %i.aup, i64 0
  %i.auy = insertelement <8 x i8> %i.aux, i8 %i.auq, i64 1
  %i.auz = insertelement <8 x i8> %i.auy, i8 %i.aur, i64 2
  %i.ava = insertelement <8 x i8> %i.auz, i8 %i.aus, i64 3
  %i.avb = insertelement <8 x i8> %i.ava, i8 %i.aut, i64 4
  %i.avc = insertelement <8 x i8> %i.avb, i8 %i.auu, i64 5
  %i.avd = insertelement <8 x i8> %i.avc, i8 %i.auv, i64 6
  %i.ave = insertelement <8 x i8> %i.avd, i8 %i.auw, i64 7
  %i.avf = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi529, <8 x i8> %i.ave) ; 2 uses
  %index.next535 = add nuw i64 %index528, 8       ; 2 uses
  %i.avg = icmp eq i64 %index.next535, %n.vec513
  br i1 %i.avg, label %vec.epilog.middle.block536, label %vec.epilog.vector.body527, !llvm.loop !128

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body527
  %i.avh = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.avf) ; 2 uses
  %i.avi = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.auo) ; 2 uses
  %i.avj = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.atp) ; 2 uses
  %i.avk = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.asy) ; 2 uses
  %i.avl = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.arz) ; 2 uses
  %i.avm = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.ari) ; 2 uses
  store i8 %i.avm, ptr %10, align 8, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.avl, ptr %i.tt, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.avk, ptr %i.ty, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.avj, ptr %i.tx, align 4, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.avi, ptr %i.ua, align 2, !tbaa !36, !alias.scope !142, !noalias !141
  store i8 %i.avh, ptr %i.tz, align 1, !tbaa !36, !alias.scope !142, !noalias !141
  %cmp.n537 = icmp eq i64 %i.vn, %n.vec513
  br i1 %cmp.n537, label %_ZN4gdcm12quantization5Block6shrinkEv.exit144, label %.preheader.i141.preheader

.preheader.i141.preheader:                        ; preds = %iter.check509, %vector.memcheck461, %vec.epilog.iter.check511, %vec.epilog.middle.block536
  %.ph554.a = phi i8 [ %i.vk, %iter.check509 ], [ %i.vk, %vector.memcheck461 ], [ %i.apw, %vec.epilog.iter.check511 ], [ %i.avh, %vec.epilog.middle.block536 ]
  %.ph555.a = phi i8 [ %i.vk, %iter.check509 ], [ %i.vk, %vector.memcheck461 ], [ %i.apx, %vec.epilog.iter.check511 ], [ %i.avi, %vec.epilog.middle.block536 ]
  %.ph556.a = phi i8 [ %i.vi, %iter.check509 ], [ %i.vi, %vector.memcheck461 ], [ %i.apy, %vec.epilog.iter.check511 ], [ %i.avj, %vec.epilog.middle.block536 ]
  %.ph557.a = phi i8 [ %i.vi, %iter.check509 ], [ %i.vi, %vector.memcheck461 ], [ %i.apz, %vec.epilog.iter.check511 ], [ %i.avk, %vec.epilog.middle.block536 ]
  %.ph558.a = phi i8 [ %i.vg, %iter.check509 ], [ %i.vg, %vector.memcheck461 ], [ %i.aqa, %vec.epilog.iter.check511 ], [ %i.avl, %vec.epilog.middle.block536 ]
  %.ph559 = phi i8 [ %i.vg, %iter.check509 ], [ %i.vg, %vector.memcheck461 ], [ %i.aqb, %vec.epilog.iter.check511 ], [ %i.avm, %vec.epilog.middle.block536 ]
  %indvars.iv.i142.ph = phi i64 [ 1, %iter.check509 ], [ 1, %vector.memcheck461 ], [ %i.vq, %vec.epilog.iter.check511 ], [ %14, %vec.epilog.middle.block536 ]
  br label %.preheader.i141

.preheader.i141:                                  ; preds = %.preheader.i141.preheader, %.preheader.i141
  %i.avn = phi i8 [ %i.awh, %.preheader.i141 ], [ %.ph554.a, %.preheader.i141.preheader ]
  %i.avo = phi i8 [ %i.awf, %.preheader.i141 ], [ %.ph555.a, %.preheader.i141.preheader ]
  %i.avp = phi i8 [ %i.awc, %.preheader.i141 ], [ %.ph556.a, %.preheader.i141.preheader ]
  %i.avq = phi i8 [ %i.awa, %.preheader.i141 ], [ %.ph557.a, %.preheader.i141.preheader ]
  %i.avr = phi i8 [ %i.avx, %.preheader.i141 ], [ %.ph558.a, %.preheader.i141.preheader ]
  %i.avs = phi i8 [ %i.avv, %.preheader.i141 ], [ %.ph559, %.preheader.i141.preheader ]
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i143, %.preheader.i141 ], [ %indvars.iv.i142.ph, %.preheader.i141.preheader ] ; 2 uses
  %i.avt = getelementptr inbounds nuw [3 x i8], ptr %.sroa.10165.0.copyload, i64 %indvars.iv.i142 ; 4 uses
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !36
  %i.avv = call i8 @llvm.umin.i8(i8 %i.avu, i8 %i.avs) ; 2 uses
  store i8 %i.avv, ptr %10, align 8, !tbaa !36
  %i.avw = load i8, ptr %i.avt, align 1, !tbaa !36
  %i.avx = call i8 @llvm.umax.i8(i8 %i.avr, i8 %i.avw) ; 2 uses
  store i8 %i.avx, ptr %i.tt, align 1, !tbaa !36
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avt, i64 1 ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !36
  %i.awa = call i8 @llvm.umin.i8(i8 %i.avz, i8 %i.avq) ; 2 uses
  store i8 %i.awa, ptr %i.ty, align 1, !tbaa !36
  %i.awb = load i8, ptr %i.avy, align 1, !tbaa !36
  %i.awc = call i8 @llvm.umax.i8(i8 %i.avp, i8 %i.awb) ; 2 uses
  store i8 %i.awc, ptr %i.tx, align 4, !tbaa !36
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avt, i64 2 ; 2 uses
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !36
  %i.awf = call i8 @llvm.umin.i8(i8 %i.awe, i8 %i.avo) ; 2 uses
  store i8 %i.awf, ptr %i.ua, align 2, !tbaa !36
  %i.awg = load i8, ptr %i.awd, align 1, !tbaa !36
  %i.awh = call i8 @llvm.umax.i8(i8 %i.avn, i8 %i.awg) ; 2 uses
  store i8 %i.awh, ptr %i.tz, align 1, !tbaa !36
  %indvars.iv.next.i143 = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next.i143, %umax239
  br i1 %exitcond240.not, label %_ZN4gdcm12quantization5Block6shrinkEv.exit144, label %.preheader.i141, !llvm.loop !129

_ZN4gdcm12quantization5Block6shrinkEv.exit144:    ; preds = %.preheader.i141, %middle.block494, %vec.epilog.middle.block536, %bb.af
  %i.awi = load i8, ptr %i.uj, align 1, !tbaa !36 ; 9 uses
  store i8 %i.awi, ptr %i.tw, align 1, !tbaa !36
  store i8 %i.awi, ptr %11, align 8, !tbaa !36
  %i.awj = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !36 ; 9 uses
  store i8 %i.awk, ptr %i.ub, align 4, !tbaa !36
  store i8 %i.awk, ptr %i.uc, align 1, !tbaa !36
  %i.awl = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !36 ; 9 uses
  store i8 %i.awm, ptr %i.ud, align 1, !tbaa !36
  store i8 %i.awm, ptr %i.ue, align 2, !tbaa !36
  %i.awn = icmp sgt i32 %i.vf, 1
  br i1 %i.awn, label %iter.check425, label %_ZN4gdcm12quantization5Block6shrinkEv.exit149

iter.check425:                                    ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit144
  %i.awo = add nsw i64 %i.ve, -1                  ; 7 uses
  %min.iters.check384 = icmp ult i64 %i.awo, 8
  br i1 %min.iters.check384, label %.preheader.i146.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check425
  %scevgep381.a = getelementptr i8, ptr %.sroa.10165.0.copyload, i64 3
  %scevgep382.a = getelementptr i8, ptr %scevgep381.a, i64 %.idx173
  %i.awp = add nuw nsw i64 %i.ve, %i.ui
  %i.awq = mul nuw nsw i64 %i.awp, 3
  %scevgep383 = getelementptr i8, ptr %.sroa.10165.0.copyload, i64 %i.awq
  %bound0 = icmp ult ptr %11, %scevgep383
  %bound1 = icmp ult ptr %scevgep382.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i146.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck
  %min.iters.check386 = icmp ult i64 %i.awo, 32
  br i1 %min.iters.check386, label %vec.epilog.ph429, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.awr = and i64 %i.awo, 24
  %n.vec388 = and i64 %i.awo, -32                 ; 4 uses
  %i.aws = or disjoint i64 %n.vec388, 1
  %broadcast.splatinsert389 = insertelement <16 x i8> poison, i8 %i.awm, i64 0
  %broadcast.splat390 = shufflevector <16 x i8> %broadcast.splatinsert389, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert391 = insertelement <16 x i8> poison, i8 %i.awk, i64 0
  %broadcast.splat392 = shufflevector <16 x i8> %broadcast.splatinsert391, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert393 = insertelement <16 x i8> poison, i8 %i.awi, i64 0
  %broadcast.splat394 = shufflevector <16 x i8> %broadcast.splatinsert393, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body395

vector.body395:                                   ; preds = %vector.ph387, %vector.body395
  %index396 = phi i64 [ 0, %vector.ph387 ], [ %index.next409, %vector.body395 ] ; 33 uses
  %vec.phi397.a = phi <16 x i8> [ %broadcast.splat390, %vector.ph387 ], [ %i.bqv, %vector.body395 ]
  %vec.phi398.a = phi <16 x i8> [ %broadcast.splat390, %vector.ph387 ], [ %i.bqw, %vector.body395 ]
  %vec.phi399.a = phi <16 x i8> [ %broadcast.splat390, %vector.ph387 ], [ %i.boh, %vector.body395 ]
  %vec.phi400.a = phi <16 x i8> [ %broadcast.splat390, %vector.ph387 ], [ %i.boi, %vector.body395 ]
  %vec.phi401.a = phi <16 x i8> [ %broadcast.splat392, %vector.ph387 ], [ %i.bkn, %vector.body395 ]
  %vec.phi402.a = phi <16 x i8> [ %broadcast.splat392, %vector.ph387 ], [ %i.bko, %vector.body395 ]
  %vec.phi403.a = phi <16 x i8> [ %broadcast.splat392, %vector.ph387 ], [ %i.bhz, %vector.body395 ]
  %vec.phi404.a = phi <16 x i8> [ %broadcast.splat392, %vector.ph387 ], [ %i.bia, %vector.body395 ]
  %vec.phi405.a = phi <16 x i8> [ %broadcast.splat394, %vector.ph387 ], [ %i.bef, %vector.body395 ]
  %vec.phi406.a = phi <16 x i8> [ %broadcast.splat394, %vector.ph387 ], [ %i.beg, %vector.body395 ]
  %vec.phi407.a = phi <16 x i8> [ %broadcast.splat394, %vector.ph387 ], [ %i.bbr, %vector.body395 ]
  %vec.phi408 = phi <16 x i8> [ %broadcast.splat394, %vector.ph387 ], [ %i.bbs, %vector.body395 ]
  %i.awt = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 3 ; 2 uses
  %i.awv = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 6 ; 2 uses
  %i.awx = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 9 ; 2 uses
  %i.awz = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 12 ; 2 uses
  %i.axb = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 15 ; 2 uses
  %i.axd = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 18 ; 2 uses
  %i.axf = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 21 ; 2 uses
  %i.axh = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 24 ; 2 uses
  %i.axj = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 27 ; 2 uses
  %i.axl = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 30 ; 2 uses
  %i.axn = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 33 ; 2 uses
  %i.axp = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 36 ; 2 uses
  %i.axr = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 39 ; 2 uses
  %i.axt = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 42 ; 2 uses
  %i.axv = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 45 ; 2 uses
  %i.axx = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 48 ; 2 uses
  %i.axz = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 51 ; 2 uses
  %i.ayb = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 54 ; 2 uses
  %i.ayd = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 57 ; 2 uses
  %i.ayf = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 60 ; 2 uses
  %i.ayh = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 63 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 66 ; 2 uses
  %i.ayl = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 69 ; 2 uses
  %i.ayn = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 72 ; 2 uses
  %i.ayp = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 75 ; 2 uses
  %i.ayr = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 78 ; 2 uses
  %i.ayt = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 81 ; 2 uses
  %i.ayv = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 84 ; 2 uses
  %i.ayx = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 87 ; 2 uses
  %i.ayz = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 90 ; 2 uses
  %i.azb = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 93 ; 2 uses
  %i.azd = getelementptr [3 x i8], ptr %i.uj, i64 %index396 ; 3 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 96   ; 2 uses
  %i.azf = load i8, ptr %i.awu, align 1, !tbaa !36, !alias.scope !143
  %i.azg = load i8, ptr %i.aww, align 1, !tbaa !36, !alias.scope !143
  %i.azh = load i8, ptr %i.awy, align 1, !tbaa !36, !alias.scope !143
  %i.azi = load i8, ptr %i.axa, align 1, !tbaa !36, !alias.scope !143
  %i.azj = load i8, ptr %i.axc, align 1, !tbaa !36, !alias.scope !143
  %i.azk = load i8, ptr %i.axe, align 1, !tbaa !36, !alias.scope !143
  %i.azl = load i8, ptr %i.axg, align 1, !tbaa !36, !alias.scope !143
  %i.azm = load i8, ptr %i.axi, align 1, !tbaa !36, !alias.scope !143
  %i.azn = load i8, ptr %i.axk, align 1, !tbaa !36, !alias.scope !143
  %i.azo = load i8, ptr %i.axm, align 1, !tbaa !36, !alias.scope !143
  %i.azp = load i8, ptr %i.axo, align 1, !tbaa !36, !alias.scope !143
  %i.azq = load i8, ptr %i.axq, align 1, !tbaa !36, !alias.scope !143
  %i.azr = load i8, ptr %i.axs, align 1, !tbaa !36, !alias.scope !143
  %i.azs = load i8, ptr %i.axu, align 1, !tbaa !36, !alias.scope !143
  %i.azt = load i8, ptr %i.axw, align 1, !tbaa !36, !alias.scope !143
  %i.azu = load i8, ptr %i.axy, align 1, !tbaa !36, !alias.scope !143
  %i.azv = insertelement <16 x i8> poison, i8 %i.azf, i64 0
  %i.azw = insertelement <16 x i8> %i.azv, i8 %i.azg, i64 1
  %i.azx = insertelement <16 x i8> %i.azw, i8 %i.azh, i64 2
  %i.azy = insertelement <16 x i8> %i.azx, i8 %i.azi, i64 3
  %i.azz = insertelement <16 x i8> %i.azy, i8 %i.azj, i64 4
  %i.baa = insertelement <16 x i8> %i.azz, i8 %i.azk, i64 5
  %i.bab = insertelement <16 x i8> %i.baa, i8 %i.azl, i64 6
  %i.bac = insertelement <16 x i8> %i.bab, i8 %i.azm, i64 7
  %i.bad = insertelement <16 x i8> %i.bac, i8 %i.azn, i64 8
  %i.bae = insertelement <16 x i8> %i.bad, i8 %i.azo, i64 9
  %i.baf = insertelement <16 x i8> %i.bae, i8 %i.azp, i64 10
  %i.bag = insertelement <16 x i8> %i.baf, i8 %i.azq, i64 11
  %i.bah = insertelement <16 x i8> %i.bag, i8 %i.azr, i64 12
  %i.bai = insertelement <16 x i8> %i.bah, i8 %i.azs, i64 13
end_hunk_2
begin_hunk_3_@_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE:bb.a
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.awx, i64 11 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.awz, i64 14 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.axb, i64 17 ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.axd, i64 20 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.axf, i64 23 ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.axh, i64 26 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.axj, i64 29 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.axl, i64 32 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.axn, i64 35 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.axp, i64 38 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.axr, i64 41 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.axt, i64 44 ; 2 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.axv, i64 47 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.axx, i64 50 ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.axz, i64 53 ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.ayb, i64 56 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %i.ayd, i64 59 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ayf, i64 62 ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 65 ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 68 ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.ayl, i64 71 ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.ayn, i64 74 ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.ayp, i64 77 ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.ayr, i64 80 ; 2 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.ayt, i64 83 ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %i.ayv, i64 86 ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %i.ayx, i64 89 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.ayz, i64 92 ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.azb, i64 95 ; 2 uses
  %i.blu = getelementptr i8, ptr %i.azd, i64 98   ; 2 uses
  %i.blv = load i8, ptr %i.bkp, align 1, !tbaa !36, !alias.scope !143
  %i.blw = load i8, ptr %i.bkq, align 1, !tbaa !36, !alias.scope !143
  %i.blx = load i8, ptr %i.bkr, align 1, !tbaa !36, !alias.scope !143
  %i.bly = load i8, ptr %i.bks, align 1, !tbaa !36, !alias.scope !143
  %i.blz = load i8, ptr %i.bkt, align 1, !tbaa !36, !alias.scope !143
  %i.bma = load i8, ptr %i.bku, align 1, !tbaa !36, !alias.scope !143
  %i.bmb = load i8, ptr %i.bkv, align 1, !tbaa !36, !alias.scope !143
  %i.bmc = load i8, ptr %i.bkw, align 1, !tbaa !36, !alias.scope !143
  %i.bmd = load i8, ptr %i.bkx, align 1, !tbaa !36, !alias.scope !143
  %i.bme = load i8, ptr %i.bky, align 1, !tbaa !36, !alias.scope !143
  %i.bmf = load i8, ptr %i.bkz, align 1, !tbaa !36, !alias.scope !143
  %i.bmg = load i8, ptr %i.bla, align 1, !tbaa !36, !alias.scope !143
  %i.bmh = load i8, ptr %i.blb, align 1, !tbaa !36, !alias.scope !143
  %i.bmi = load i8, ptr %i.blc, align 1, !tbaa !36, !alias.scope !143
  %i.bmj = load i8, ptr %i.bld, align 1, !tbaa !36, !alias.scope !143
  %i.bmk = load i8, ptr %i.ble, align 1, !tbaa !36, !alias.scope !143
  %i.bml = insertelement <16 x i8> poison, i8 %i.blv, i64 0
  %i.bmm = insertelement <16 x i8> %i.bml, i8 %i.blw, i64 1
  %i.bmn = insertelement <16 x i8> %i.bmm, i8 %i.blx, i64 2
  %i.bmo = insertelement <16 x i8> %i.bmn, i8 %i.bly, i64 3
  %i.bmp = insertelement <16 x i8> %i.bmo, i8 %i.blz, i64 4
  %i.bmq = insertelement <16 x i8> %i.bmp, i8 %i.bma, i64 5
  %i.bmr = insertelement <16 x i8> %i.bmq, i8 %i.bmb, i64 6
  %i.bms = insertelement <16 x i8> %i.bmr, i8 %i.bmc, i64 7
  %i.bmt = insertelement <16 x i8> %i.bms, i8 %i.bmd, i64 8
  %i.bmu = insertelement <16 x i8> %i.bmt, i8 %i.bme, i64 9
  %i.bmv = insertelement <16 x i8> %i.bmu, i8 %i.bmf, i64 10
  %i.bmw = insertelement <16 x i8> %i.bmv, i8 %i.bmg, i64 11
  %i.bmx = insertelement <16 x i8> %i.bmw, i8 %i.bmh, i64 12
  %i.bmy = insertelement <16 x i8> %i.bmx, i8 %i.bmi, i64 13
  %i.bmz = insertelement <16 x i8> %i.bmy, i8 %i.bmj, i64 14
  %i.bna = insertelement <16 x i8> %i.bmz, i8 %i.bmk, i64 15
  %i.bnb = load i8, ptr %i.blf, align 1, !tbaa !36, !alias.scope !143
  %i.bnc = load i8, ptr %i.blg, align 1, !tbaa !36, !alias.scope !143
  %i.bnd = load i8, ptr %i.blh, align 1, !tbaa !36, !alias.scope !143
  %i.bne = load i8, ptr %i.bli, align 1, !tbaa !36, !alias.scope !143
  %i.bnf = load i8, ptr %i.blj, align 1, !tbaa !36, !alias.scope !143
  %i.bng = load i8, ptr %i.blk, align 1, !tbaa !36, !alias.scope !143
  %i.bnh = load i8, ptr %i.bll, align 1, !tbaa !36, !alias.scope !143
  %i.bni = load i8, ptr %i.blm, align 1, !tbaa !36, !alias.scope !143
  %i.bnj = load i8, ptr %i.bln, align 1, !tbaa !36, !alias.scope !143
  %i.bnk = load i8, ptr %i.blo, align 1, !tbaa !36, !alias.scope !143
  %i.bnl = load i8, ptr %i.blp, align 1, !tbaa !36, !alias.scope !143
  %i.bnm = load i8, ptr %i.blq, align 1, !tbaa !36, !alias.scope !143
  %i.bnn = load i8, ptr %i.blr, align 1, !tbaa !36, !alias.scope !143
  %i.bno = load i8, ptr %i.bls, align 1, !tbaa !36, !alias.scope !143
  %i.bnp = load i8, ptr %i.blt, align 1, !tbaa !36, !alias.scope !143
  %i.bnq = load i8, ptr %i.blu, align 1, !tbaa !36, !alias.scope !143
  %i.bnr = insertelement <16 x i8> poison, i8 %i.bnb, i64 0
  %i.bns = insertelement <16 x i8> %i.bnr, i8 %i.bnc, i64 1
  %i.bnt = insertelement <16 x i8> %i.bns, i8 %i.bnd, i64 2
  %i.bnu = insertelement <16 x i8> %i.bnt, i8 %i.bne, i64 3
  %i.bnv = insertelement <16 x i8> %i.bnu, i8 %i.bnf, i64 4
  %i.bnw = insertelement <16 x i8> %i.bnv, i8 %i.bng, i64 5
  %i.bnx = insertelement <16 x i8> %i.bnw, i8 %i.bnh, i64 6
  %i.bny = insertelement <16 x i8> %i.bnx, i8 %i.bni, i64 7
  %i.bnz = insertelement <16 x i8> %i.bny, i8 %i.bnj, i64 8
  %i.boa = insertelement <16 x i8> %i.bnz, i8 %i.bnk, i64 9
  %i.bob = insertelement <16 x i8> %i.boa, i8 %i.bnl, i64 10
  %i.boc = insertelement <16 x i8> %i.bob, i8 %i.bnm, i64 11
  %i.bod = insertelement <16 x i8> %i.boc, i8 %i.bnn, i64 12
  %i.boe = insertelement <16 x i8> %i.bod, i8 %i.bno, i64 13
  %i.bof = insertelement <16 x i8> %i.boe, i8 %i.bnp, i64 14
  %i.bog = insertelement <16 x i8> %i.bof, i8 %i.bnq, i64 15
  %i.boh = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bna, <16 x i8> %vec.phi399.a) ; 2 uses
  %i.boi = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bog, <16 x i8> %vec.phi400.a) ; 2 uses
  %i.boj = load i8, ptr %i.bkp, align 1, !tbaa !36, !alias.scope !143
  %i.bok = load i8, ptr %i.bkq, align 1, !tbaa !36, !alias.scope !143
  %i.bol = load i8, ptr %i.bkr, align 1, !tbaa !36, !alias.scope !143
  %i.bom = load i8, ptr %i.bks, align 1, !tbaa !36, !alias.scope !143
  %i.bon = load i8, ptr %i.bkt, align 1, !tbaa !36, !alias.scope !143
  %i.boo = load i8, ptr %i.bku, align 1, !tbaa !36, !alias.scope !143
  %i.bop = load i8, ptr %i.bkv, align 1, !tbaa !36, !alias.scope !143
  %i.boq = load i8, ptr %i.bkw, align 1, !tbaa !36, !alias.scope !143
  %i.bor = load i8, ptr %i.bkx, align 1, !tbaa !36, !alias.scope !143
  %i.bos = load i8, ptr %i.bky, align 1, !tbaa !36, !alias.scope !143
  %i.bot = load i8, ptr %i.bkz, align 1, !tbaa !36, !alias.scope !143
  %i.bou = load i8, ptr %i.bla, align 1, !tbaa !36, !alias.scope !143
  %i.bov = load i8, ptr %i.blb, align 1, !tbaa !36, !alias.scope !143
  %i.bow = load i8, ptr %i.blc, align 1, !tbaa !36, !alias.scope !143
  %i.box = load i8, ptr %i.bld, align 1, !tbaa !36, !alias.scope !143
  %i.boy = load i8, ptr %i.ble, align 1, !tbaa !36, !alias.scope !143
  %i.boz = insertelement <16 x i8> poison, i8 %i.boj, i64 0
  %i.bpa = insertelement <16 x i8> %i.boz, i8 %i.bok, i64 1
  %i.bpb = insertelement <16 x i8> %i.bpa, i8 %i.bol, i64 2
  %i.bpc = insertelement <16 x i8> %i.bpb, i8 %i.bom, i64 3
  %i.bpd = insertelement <16 x i8> %i.bpc, i8 %i.bon, i64 4
  %i.bpe = insertelement <16 x i8> %i.bpd, i8 %i.boo, i64 5
  %i.bpf = insertelement <16 x i8> %i.bpe, i8 %i.bop, i64 6
  %i.bpg = insertelement <16 x i8> %i.bpf, i8 %i.boq, i64 7
  %i.bph = insertelement <16 x i8> %i.bpg, i8 %i.bor, i64 8
  %i.bpi = insertelement <16 x i8> %i.bph, i8 %i.bos, i64 9
  %i.bpj = insertelement <16 x i8> %i.bpi, i8 %i.bot, i64 10
  %i.bpk = insertelement <16 x i8> %i.bpj, i8 %i.bou, i64 11
  %i.bpl = insertelement <16 x i8> %i.bpk, i8 %i.bov, i64 12
  %i.bpm = insertelement <16 x i8> %i.bpl, i8 %i.bow, i64 13
  %i.bpn = insertelement <16 x i8> %i.bpm, i8 %i.box, i64 14
  %i.bpo = insertelement <16 x i8> %i.bpn, i8 %i.boy, i64 15
  %i.bpp = load i8, ptr %i.blf, align 1, !tbaa !36, !alias.scope !143
  %i.bpq = load i8, ptr %i.blg, align 1, !tbaa !36, !alias.scope !143
  %i.bpr = load i8, ptr %i.blh, align 1, !tbaa !36, !alias.scope !143
  %i.bps = load i8, ptr %i.bli, align 1, !tbaa !36, !alias.scope !143
  %i.bpt = load i8, ptr %i.blj, align 1, !tbaa !36, !alias.scope !143
  %i.bpu = load i8, ptr %i.blk, align 1, !tbaa !36, !alias.scope !143
  %i.bpv = load i8, ptr %i.bll, align 1, !tbaa !36, !alias.scope !143
  %i.bpw = load i8, ptr %i.blm, align 1, !tbaa !36, !alias.scope !143
  %i.bpx = load i8, ptr %i.bln, align 1, !tbaa !36, !alias.scope !143
  %i.bpy = load i8, ptr %i.blo, align 1, !tbaa !36, !alias.scope !143
  %i.bpz = load i8, ptr %i.blp, align 1, !tbaa !36, !alias.scope !143
  %i.bqa = load i8, ptr %i.blq, align 1, !tbaa !36, !alias.scope !143
  %i.bqb = load i8, ptr %i.blr, align 1, !tbaa !36, !alias.scope !143
  %i.bqc = load i8, ptr %i.bls, align 1, !tbaa !36, !alias.scope !143
  %i.bqd = load i8, ptr %i.blt, align 1, !tbaa !36, !alias.scope !143
  %i.bqe = load i8, ptr %i.blu, align 1, !tbaa !36, !alias.scope !143
  %i.bqf = insertelement <16 x i8> poison, i8 %i.bpp, i64 0
  %i.bqg = insertelement <16 x i8> %i.bqf, i8 %i.bpq, i64 1
  %i.bqh = insertelement <16 x i8> %i.bqg, i8 %i.bpr, i64 2
  %i.bqi = insertelement <16 x i8> %i.bqh, i8 %i.bps, i64 3
  %i.bqj = insertelement <16 x i8> %i.bqi, i8 %i.bpt, i64 4
  %i.bqk = insertelement <16 x i8> %i.bqj, i8 %i.bpu, i64 5
  %i.bql = insertelement <16 x i8> %i.bqk, i8 %i.bpv, i64 6
  %i.bqm = insertelement <16 x i8> %i.bql, i8 %i.bpw, i64 7
  %i.bqn = insertelement <16 x i8> %i.bqm, i8 %i.bpx, i64 8
  %i.bqo = insertelement <16 x i8> %i.bqn, i8 %i.bpy, i64 9
  %i.bqp = insertelement <16 x i8> %i.bqo, i8 %i.bpz, i64 10
  %i.bqq = insertelement <16 x i8> %i.bqp, i8 %i.bqa, i64 11
  %i.bqr = insertelement <16 x i8> %i.bqq, i8 %i.bqb, i64 12
  %i.bqs = insertelement <16 x i8> %i.bqr, i8 %i.bqc, i64 13
  %i.bqt = insertelement <16 x i8> %i.bqs, i8 %i.bqd, i64 14
  %i.bqu = insertelement <16 x i8> %i.bqt, i8 %i.bqe, i64 15
  %i.bqv = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi397.a, <16 x i8> %i.bpo) ; 2 uses
  %i.bqw = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi398.a, <16 x i8> %i.bqu) ; 2 uses
  %index.next409 = add nuw i64 %index396, 32      ; 2 uses
  %i.bqx = icmp eq i64 %index.next409, %n.vec388
  br i1 %i.bqx, label %middle.block410, label %vector.body395, !llvm.loop !132

middle.block410:                                  ; preds = %vector.body395
  %rdx.minmax411.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bqv, <16 x i8> %i.bqw)
  %i.bqy = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax411.a) ; 3 uses
  %rdx.minmax412.a = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.boh, <16 x i8> %i.boi)
  %i.bqz = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax412.a) ; 3 uses
  %rdx.minmax413.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bkn, <16 x i8> %i.bko)
  %i.bra = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax413.a) ; 3 uses
  %rdx.minmax414.a = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bhz, <16 x i8> %i.bia)
  %i.brb = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax414.a) ; 3 uses
  %rdx.minmax415.a = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bef, <16 x i8> %i.beg)
  %i.brc = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax415.a) ; 3 uses
  %rdx.minmax416 = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bbr, <16 x i8> %i.bbs)
  %i.brd = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax416) ; 3 uses
  store i8 %i.brd, ptr %11, align 8, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.brc, ptr %i.tw, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.brb, ptr %i.uc, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bra, ptr %i.ub, align 4, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bqz, ptr %i.ue, align 2, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bqy, ptr %i.ud, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  %cmp.n417 = icmp eq i64 %i.awo, %n.vec388
  br i1 %cmp.n417, label %_ZN4gdcm12quantization5Block6shrinkEv.exit149, label %vec.epilog.iter.check427

vec.epilog.iter.check427:                         ; preds = %middle.block410
  %min.epilog.iters.check428 = icmp eq i64 %i.awr, 0
  br i1 %min.epilog.iters.check428, label %.preheader.i146.preheader, label %vec.epilog.ph429, !prof !40

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check427
  %vec.epilog.resume.val418 = phi i64 [ %n.vec388, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx419 = phi i8 [ %i.bqy, %vec.epilog.iter.check427 ], [ %i.awm, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx420 = phi i8 [ %i.bqz, %vec.epilog.iter.check427 ], [ %i.awm, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx421 = phi i8 [ %i.bra, %vec.epilog.iter.check427 ], [ %i.awk, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx422 = phi i8 [ %i.brb, %vec.epilog.iter.check427 ], [ %i.awk, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx423 = phi i8 [ %i.brc, %vec.epilog.iter.check427 ], [ %i.awi, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx424 = phi i8 [ %i.brd, %vec.epilog.iter.check427 ], [ %i.awi, %vector.main.loop.iter.check385 ]
  %broadcast.splatinsert447 = insertelement <8 x i8> poison, i8 %bc.merge.rdx424, i64 0
  %broadcast.splat448 = shufflevector <8 x i8> %broadcast.splatinsert447, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <8 x i8> poison, i8 %bc.merge.rdx423, i64 0
  %broadcast.splat432 = shufflevector <8 x i8> %broadcast.splatinsert431, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <8 x i8> poison, i8 %bc.merge.rdx422, i64 0
  %broadcast.splat434 = shufflevector <8 x i8> %broadcast.splatinsert433, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert435.a = insertelement <8 x i8> poison, i8 %bc.merge.rdx421, i64 0
  %broadcast.splat436.a = shufflevector <8 x i8> %broadcast.splatinsert435.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert437 = insertelement <8 x i8> poison, i8 %bc.merge.rdx420, i64 0
  %broadcast.splat438 = shufflevector <8 x i8> %broadcast.splatinsert437, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <8 x i8> poison, i8 %bc.merge.rdx419, i64 0
  %broadcast.splat440 = shufflevector <8 x i8> %broadcast.splatinsert439, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec429 = and i64 %i.awo, -8                  ; 3 uses
  %15 = or disjoint i64 %n.vec429, 1
  br label %vec.epilog.vector.body443

vec.epilog.vector.body443:                        ; preds = %vec.epilog.vector.body443, %vec.epilog.ph429
  %index444 = phi i64 [ %vec.epilog.resume.val418, %vec.epilog.ph429 ], [ %index.next451, %vec.epilog.vector.body443 ] ; 9 uses
  %vec.phi445 = phi <8 x i8> [ %broadcast.splat440, %vec.epilog.ph429 ], [ %i.bwh, %vec.epilog.vector.body443 ]
  %vec.phi446.a = phi <8 x i8> [ %broadcast.splat438, %vec.epilog.ph429 ], [ %i.bvq, %vec.epilog.vector.body443 ]
  %vec.phi447 = phi <8 x i8> [ %broadcast.splat436.a, %vec.epilog.ph429 ], [ %i.bur, %vec.epilog.vector.body443 ]
  %vec.phi448 = phi <8 x i8> [ %broadcast.splat434, %vec.epilog.ph429 ], [ %i.bua, %vec.epilog.vector.body443 ]
  %vec.phi449.a = phi <8 x i8> [ %broadcast.splat432, %vec.epilog.ph429 ], [ %i.btb, %vec.epilog.vector.body443 ]
  %vec.phi450 = phi <8 x i8> [ %broadcast.splat448, %vec.epilog.ph429 ], [ %i.bsk, %vec.epilog.vector.body443 ]
  %i.bre = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 3 ; 2 uses
  %i.brg = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 6 ; 2 uses
  %i.bri = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 9 ; 2 uses
  %i.brk = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 12 ; 2 uses
  %i.brm = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 15 ; 2 uses
  %i.bro = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 18 ; 2 uses
  %i.brq = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 21 ; 2 uses
  %i.brs = getelementptr [3 x i8], ptr %i.uj, i64 %index444 ; 3 uses
  %i.brt = getelementptr i8, ptr %i.brs, i64 24   ; 2 uses
  %i.bru = load i8, ptr %i.brf, align 1, !tbaa !36, !alias.scope !143
  %i.brv = load i8, ptr %i.brh, align 1, !tbaa !36, !alias.scope !143
  %i.brw = load i8, ptr %i.brj, align 1, !tbaa !36, !alias.scope !143
  %i.brx = load i8, ptr %i.brl, align 1, !tbaa !36, !alias.scope !143
  %i.bry = load i8, ptr %i.brn, align 1, !tbaa !36, !alias.scope !143
  %i.brz = load i8, ptr %i.brp, align 1, !tbaa !36, !alias.scope !143
  %i.bsa = load i8, ptr %i.brr, align 1, !tbaa !36, !alias.scope !143
  %i.bsb = load i8, ptr %i.brt, align 1, !tbaa !36, !alias.scope !143
  %i.bsc = insertelement <8 x i8> poison, i8 %i.bru, i64 0
  %i.bsd = insertelement <8 x i8> %i.bsc, i8 %i.brv, i64 1
  %i.bse = insertelement <8 x i8> %i.bsd, i8 %i.brw, i64 2
  %i.bsf = insertelement <8 x i8> %i.bse, i8 %i.brx, i64 3
  %i.bsg = insertelement <8 x i8> %i.bsf, i8 %i.bry, i64 4
  %i.bsh = insertelement <8 x i8> %i.bsg, i8 %i.brz, i64 5
  %i.bsi = insertelement <8 x i8> %i.bsh, i8 %i.bsa, i64 6
  %i.bsj = insertelement <8 x i8> %i.bsi, i8 %i.bsb, i64 7
  %i.bsk = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.bsj, <8 x i8> %vec.phi450) ; 2 uses
  %i.bsl = load i8, ptr %i.brf, align 1, !tbaa !36, !alias.scope !143
  %i.bsm = load i8, ptr %i.brh, align 1, !tbaa !36, !alias.scope !143
  %i.bsn = load i8, ptr %i.brj, align 1, !tbaa !36, !alias.scope !143
  %i.bso = load i8, ptr %i.brl, align 1, !tbaa !36, !alias.scope !143
  %i.bsp = load i8, ptr %i.brn, align 1, !tbaa !36, !alias.scope !143
  %i.bsq = load i8, ptr %i.brp, align 1, !tbaa !36, !alias.scope !143
  %i.bsr = load i8, ptr %i.brr, align 1, !tbaa !36, !alias.scope !143
  %i.bss = load i8, ptr %i.brt, align 1, !tbaa !36, !alias.scope !143
  %i.bst = insertelement <8 x i8> poison, i8 %i.bsl, i64 0
  %i.bsu = insertelement <8 x i8> %i.bst, i8 %i.bsm, i64 1
  %i.bsv = insertelement <8 x i8> %i.bsu, i8 %i.bsn, i64 2
  %i.bsw = insertelement <8 x i8> %i.bsv, i8 %i.bso, i64 3
  %i.bsx = insertelement <8 x i8> %i.bsw, i8 %i.bsp, i64 4
  %i.bsy = insertelement <8 x i8> %i.bsx, i8 %i.bsq, i64 5
  %i.bsz = insertelement <8 x i8> %i.bsy, i8 %i.bsr, i64 6
  %i.bta = insertelement <8 x i8> %i.bsz, i8 %i.bss, i64 7
  %i.btb = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi449.a, <8 x i8> %i.bta) ; 2 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bre, i64 4 ; 2 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %i.brg, i64 7 ; 2 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bri, i64 10 ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.brk, i64 13 ; 2 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.brm, i64 16 ; 2 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bro, i64 19 ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.brq, i64 22 ; 2 uses
  %i.btj = getelementptr i8, ptr %i.brs, i64 25   ; 2 uses
  %i.btk = load i8, ptr %i.btc, align 1, !tbaa !36, !alias.scope !143
  %i.btl = load i8, ptr %i.btd, align 1, !tbaa !36, !alias.scope !143
  %i.btm = load i8, ptr %i.bte, align 1, !tbaa !36, !alias.scope !143
  %i.btn = load i8, ptr %i.btf, align 1, !tbaa !36, !alias.scope !143
  %i.bto = load i8, ptr %i.btg, align 1, !tbaa !36, !alias.scope !143
  %i.btp = load i8, ptr %i.bth, align 1, !tbaa !36, !alias.scope !143
  %i.btq = load i8, ptr %i.bti, align 1, !tbaa !36, !alias.scope !143
  %i.btr = load i8, ptr %i.btj, align 1, !tbaa !36, !alias.scope !143
  %i.bts = insertelement <8 x i8> poison, i8 %i.btk, i64 0
  %i.btt = insertelement <8 x i8> %i.bts, i8 %i.btl, i64 1
  %i.btu = insertelement <8 x i8> %i.btt, i8 %i.btm, i64 2
  %i.btv = insertelement <8 x i8> %i.btu, i8 %i.btn, i64 3
  %i.btw = insertelement <8 x i8> %i.btv, i8 %i.bto, i64 4
  %i.btx = insertelement <8 x i8> %i.btw, i8 %i.btp, i64 5
  %i.bty = insertelement <8 x i8> %i.btx, i8 %i.btq, i64 6
  %i.btz = insertelement <8 x i8> %i.bty, i8 %i.btr, i64 7
  %i.bua = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.btz, <8 x i8> %vec.phi448) ; 2 uses
  %i.bub = load i8, ptr %i.btc, align 1, !tbaa !36, !alias.scope !143
  %i.buc = load i8, ptr %i.btd, align 1, !tbaa !36, !alias.scope !143
  %i.bud = load i8, ptr %i.bte, align 1, !tbaa !36, !alias.scope !143
  %i.bue = load i8, ptr %i.btf, align 1, !tbaa !36, !alias.scope !143
  %i.buf = load i8, ptr %i.btg, align 1, !tbaa !36, !alias.scope !143
  %i.bug = load i8, ptr %i.bth, align 1, !tbaa !36, !alias.scope !143
  %i.buh = load i8, ptr %i.bti, align 1, !tbaa !36, !alias.scope !143
  %i.bui = load i8, ptr %i.btj, align 1, !tbaa !36, !alias.scope !143
  %i.buj = insertelement <8 x i8> poison, i8 %i.bub, i64 0
  %i.buk = insertelement <8 x i8> %i.buj, i8 %i.buc, i64 1
  %i.bul = insertelement <8 x i8> %i.buk, i8 %i.bud, i64 2
  %i.bum = insertelement <8 x i8> %i.bul, i8 %i.bue, i64 3
  %i.bun = insertelement <8 x i8> %i.bum, i8 %i.buf, i64 4
  %i.buo = insertelement <8 x i8> %i.bun, i8 %i.bug, i64 5
  %i.bup = insertelement <8 x i8> %i.buo, i8 %i.buh, i64 6
  %i.buq = insertelement <8 x i8> %i.bup, i8 %i.bui, i64 7
  %i.bur = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi447, <8 x i8> %i.buq) ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bre, i64 5 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.brg, i64 8 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bri, i64 11 ; 2 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.brk, i64 14 ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.brm, i64 17 ; 2 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bro, i64 20 ; 2 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.brq, i64 23 ; 2 uses
  %i.buz = getelementptr i8, ptr %i.brs, i64 26   ; 2 uses
  %i.bva = load i8, ptr %i.bus, align 1, !tbaa !36, !alias.scope !143
  %i.bvb = load i8, ptr %i.but, align 1, !tbaa !36, !alias.scope !143
  %i.bvc = load i8, ptr %i.buu, align 1, !tbaa !36, !alias.scope !143
  %i.bvd = load i8, ptr %i.buv, align 1, !tbaa !36, !alias.scope !143
  %i.bve = load i8, ptr %i.buw, align 1, !tbaa !36, !alias.scope !143
  %i.bvf = load i8, ptr %i.bux, align 1, !tbaa !36, !alias.scope !143
  %i.bvg = load i8, ptr %i.buy, align 1, !tbaa !36, !alias.scope !143
  %i.bvh = load i8, ptr %i.buz, align 1, !tbaa !36, !alias.scope !143
  %i.bvi = insertelement <8 x i8> poison, i8 %i.bva, i64 0
  %i.bvj = insertelement <8 x i8> %i.bvi, i8 %i.bvb, i64 1
  %i.bvk = insertelement <8 x i8> %i.bvj, i8 %i.bvc, i64 2
  %i.bvl = insertelement <8 x i8> %i.bvk, i8 %i.bvd, i64 3
  %i.bvm = insertelement <8 x i8> %i.bvl, i8 %i.bve, i64 4
  %i.bvn = insertelement <8 x i8> %i.bvm, i8 %i.bvf, i64 5
  %i.bvo = insertelement <8 x i8> %i.bvn, i8 %i.bvg, i64 6
  %i.bvp = insertelement <8 x i8> %i.bvo, i8 %i.bvh, i64 7
  %i.bvq = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.bvp, <8 x i8> %vec.phi446.a) ; 2 uses
  %i.bvr = load i8, ptr %i.bus, align 1, !tbaa !36, !alias.scope !143
  %i.bvs = load i8, ptr %i.but, align 1, !tbaa !36, !alias.scope !143
  %i.bvt = load i8, ptr %i.buu, align 1, !tbaa !36, !alias.scope !143
  %i.bvu = load i8, ptr %i.buv, align 1, !tbaa !36, !alias.scope !143
  %i.bvv = load i8, ptr %i.buw, align 1, !tbaa !36, !alias.scope !143
  %i.bvw = load i8, ptr %i.bux, align 1, !tbaa !36, !alias.scope !143
  %i.bvx = load i8, ptr %i.buy, align 1, !tbaa !36, !alias.scope !143
  %i.bvy = load i8, ptr %i.buz, align 1, !tbaa !36, !alias.scope !143
  %i.bvz = insertelement <8 x i8> poison, i8 %i.bvr, i64 0
  %i.bwa = insertelement <8 x i8> %i.bvz, i8 %i.bvs, i64 1
  %i.bwb = insertelement <8 x i8> %i.bwa, i8 %i.bvt, i64 2
  %i.bwc = insertelement <8 x i8> %i.bwb, i8 %i.bvu, i64 3
  %i.bwd = insertelement <8 x i8> %i.bwc, i8 %i.bvv, i64 4
  %i.bwe = insertelement <8 x i8> %i.bwd, i8 %i.bvw, i64 5
  %i.bwf = insertelement <8 x i8> %i.bwe, i8 %i.bvx, i64 6
  %i.bwg = insertelement <8 x i8> %i.bwf, i8 %i.bvy, i64 7
  %i.bwh = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi445, <8 x i8> %i.bwg) ; 2 uses
  %index.next451 = add nuw i64 %index444, 8       ; 2 uses
  %i.bwi = icmp eq i64 %index.next451, %n.vec429
  br i1 %i.bwi, label %vec.epilog.middle.block452, label %vec.epilog.vector.body443, !llvm.loop !134

vec.epilog.middle.block452:                       ; preds = %vec.epilog.vector.body443
  %i.bwj = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.bwh) ; 2 uses
  %i.bwk = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.bvq) ; 2 uses
  %i.bwl = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.bur) ; 2 uses
  %i.bwm = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.bua) ; 2 uses
  %i.bwn = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.btb) ; 2 uses
  %i.bwo = call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.bsk) ; 2 uses
  store i8 %i.bwo, ptr %11, align 8, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bwn, ptr %i.tw, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bwm, ptr %i.uc, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bwl, ptr %i.ub, align 4, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bwk, ptr %i.ue, align 2, !tbaa !36, !alias.scope !144, !noalias !143
  store i8 %i.bwj, ptr %i.ud, align 1, !tbaa !36, !alias.scope !144, !noalias !143
  %cmp.n453 = icmp eq i64 %i.awo, %n.vec429
  br i1 %cmp.n453, label %_ZN4gdcm12quantization5Block6shrinkEv.exit149, label %.preheader.i146.preheader

.preheader.i146.preheader:                        ; preds = %iter.check425, %vector.memcheck, %vec.epilog.iter.check427, %vec.epilog.middle.block452
  %.ph = phi i8 [ %i.awm, %iter.check425 ], [ %i.awm, %vector.memcheck ], [ %i.bqy, %vec.epilog.iter.check427 ], [ %i.bwj, %vec.epilog.middle.block452 ]
  %.ph549.a = phi i8 [ %i.awm, %iter.check425 ], [ %i.awm, %vector.memcheck ], [ %i.bqz, %vec.epilog.iter.check427 ], [ %i.bwk, %vec.epilog.middle.block452 ]
  %.ph550.a = phi i8 [ %i.awk, %iter.check425 ], [ %i.awk, %vector.memcheck ], [ %i.bra, %vec.epilog.iter.check427 ], [ %i.bwl, %vec.epilog.middle.block452 ]
  %.ph551.a = phi i8 [ %i.awk, %iter.check425 ], [ %i.awk, %vector.memcheck ], [ %i.brb, %vec.epilog.iter.check427 ], [ %i.bwm, %vec.epilog.middle.block452 ]
  %.ph552.a = phi i8 [ %i.awi, %iter.check425 ], [ %i.awi, %vector.memcheck ], [ %i.brc, %vec.epilog.iter.check427 ], [ %i.bwn, %vec.epilog.middle.block452 ]
  %.ph553 = phi i8 [ %i.awi, %iter.check425 ], [ %i.awi, %vector.memcheck ], [ %i.brd, %vec.epilog.iter.check427 ], [ %i.bwo, %vec.epilog.middle.block452 ]
  %indvars.iv.i147.ph = phi i64 [ 1, %iter.check425 ], [ 1, %vector.memcheck ], [ %i.aws, %vec.epilog.iter.check427 ], [ %15, %vec.epilog.middle.block452 ]
  br label %.preheader.i146

.preheader.i146:                                  ; preds = %.preheader.i146.preheader, %.preheader.i146
  %i.bwp = phi i8 [ %i.bxj, %.preheader.i146 ], [ %.ph, %.preheader.i146.preheader ]
  %i.bwq = phi i8 [ %i.bxh, %.preheader.i146 ], [ %.ph549.a, %.preheader.i146.preheader ]
  %i.bwr = phi i8 [ %i.bxe, %.preheader.i146 ], [ %.ph550.a, %.preheader.i146.preheader ]
  %i.bws = phi i8 [ %i.bxc, %.preheader.i146 ], [ %.ph551.a, %.preheader.i146.preheader ]
  %i.bwt = phi i8 [ %i.bwz, %.preheader.i146 ], [ %.ph552.a, %.preheader.i146.preheader ]
  %i.bwu = phi i8 [ %i.bwx, %.preheader.i146 ], [ %.ph553, %.preheader.i146.preheader ]
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i148, %.preheader.i146 ], [ %indvars.iv.i147.ph, %.preheader.i146.preheader ] ; 2 uses
  %i.bwv = getelementptr inbounds nuw [3 x i8], ptr %i.uj, i64 %indvars.iv.i147 ; 4 uses
  %i.bww = load i8, ptr %i.bwv, align 1, !tbaa !36
  %i.bwx = call i8 @llvm.umin.i8(i8 %i.bww, i8 %i.bwu) ; 2 uses
  store i8 %i.bwx, ptr %11, align 8, !tbaa !36
  %i.bwy = load i8, ptr %i.bwv, align 1, !tbaa !36
  %i.bwz = call i8 @llvm.umax.i8(i8 %i.bwt, i8 %i.bwy) ; 2 uses
  store i8 %i.bwz, ptr %i.tw, align 1, !tbaa !36
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwv, i64 1 ; 2 uses
  %i.bxb = load i8, ptr %i.bxa, align 1, !tbaa !36
  %i.bxc = call i8 @llvm.umin.i8(i8 %i.bxb, i8 %i.bws) ; 2 uses
  store i8 %i.bxc, ptr %i.uc, align 1, !tbaa !36
  %i.bxd = load i8, ptr %i.bxa, align 1, !tbaa !36
  %i.bxe = call i8 @llvm.umax.i8(i8 %i.bwr, i8 %i.bxd) ; 2 uses
  store i8 %i.bxe, ptr %i.ub, align 4, !tbaa !36
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwv, i64 2 ; 2 uses
  %i.bxg = load i8, ptr %i.bxf, align 1, !tbaa !36
  %i.bxh = call i8 @llvm.umin.i8(i8 %i.bxg, i8 %i.bwq) ; 2 uses
  store i8 %i.bxh, ptr %i.ue, align 2, !tbaa !36
  %i.bxi = load i8, ptr %i.bxf, align 1, !tbaa !36
  %i.bxj = call i8 @llvm.umax.i8(i8 %i.bwp, i8 %i.bxi) ; 2 uses
  store i8 %i.bxj, ptr %i.ud, align 1, !tbaa !36
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next.i148, %i.ve
  br i1 %exitcond242.not, label %_ZN4gdcm12quantization5Block6shrinkEv.exit149, label %.preheader.i146, !llvm.loop !135

_ZN4gdcm12quantization5Block6shrinkEv.exit149:    ; preds = %.preheader.i146, %middle.block410, %vec.epilog.middle.block452, %_ZN4gdcm12quantization5Block6shrinkEv.exit144
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(20) %10)
          to label %bb.ag unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit149
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(20) %11)
          to label %bb.ah unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bxk = load ptr, ptr %i.ti, align 8, !tbaa !54 ; 2 uses
  %i.bxl = load ptr, ptr %8, align 8, !tbaa !55   ; 3 uses
  %i.bxm = ptrtoint ptr %i.bxk to i64
  %i.bxn = ptrtoint ptr %i.bxl to i64
  %i.bxo = sub i64 %i.bxm, %i.bxn
  %i.bxp = sdiv exact i64 %i.bxo, 24
  %i.bxq = icmp ult i64 %i.bxp, %i.tj
  br i1 %i.bxq, label %bb.p, label %._crit_edge205, !llvm.loop !136

bb.ai:                                            ; preds = %bb.z
  %i.bxr = landingpad { ptr, i32 }
          cleanup
  br label %.body133

.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %_ZN4gdcm12quantization5Block6shrinkEv.exit149, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body137

.body137:                                         ; preds = %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %eh.lpad-body138 = phi { ptr, i32 } [ %i.vd, %bb.ae ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body133

.body133:                                         ; preds = %bb.ai, %bb.aa, %.body137
  %.pn119 = phi { ptr, i32 } [ %eh.lpad-body138, %.body137 ], [ %i.bxr, %bb.ai ], [ %i.va, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt3__110__list_impIN4gdcm12quantization5PointENS_9allocatorIS3_EEED2Ev.exit

._crit_edge205:                                   ; preds = %bb.ah, %.preheader180
  %i.bxs = phi ptr [ %i.tk, %.preheader180 ], [ %i.bxk, %bb.ah ] ; 2 uses
  %i.bxt = phi ptr [ %i.tl, %.preheader180 ], [ %i.bxl, %bb.ah ] ; 2 uses
  store ptr %0, ptr %0, align 8, !tbaa !59
  %i.bxu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.bxu, align 8, !tbaa !60
  %i.bxv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.bxv, align 8, !tbaa !145
  %i.bxw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !65
  %i.bxy = load ptr, ptr %4, align 8, !tbaa !66   ; 2 uses
  %i.bxz = ptrtoint ptr %i.bxx to i64
  %i.bya = ptrtoint ptr %i.bxy to i64
  %i.byb = sub i64 %i.bxz, %i.bya                 ; 3 uses
  %i.byc = icmp ult i64 %i.byb, %i.d
  br i1 %i.byc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge205
  %i.byd = sub nuw nsw i64 %i.d, %i.byb
  invoke void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.byd)
          to label %._ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split_crit_edge unwind label %.loopexit.split-lp176.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split_crit_edge: ; preds = %bb.aj
  %.pre = load ptr, ptr %8, align 8, !tbaa !55
  %.pre280 = load ptr, ptr %i.ti, align 8, !tbaa !54
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split

bb.ak:                                            ; preds = %._crit_edge205
  %i.bye = icmp ugt i64 %i.byb, %i.d
  br i1 %i.bye, label %bb.al, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split

bb.al:                                            ; preds = %bb.ak
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxy, i64 %i.d
  store ptr %i.byf, ptr %i.bxw, align 8, !tbaa !65
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split: ; preds = %._ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split_crit_edge, %bb.al, %bb.ak
  %i.byg = phi ptr [ %.pre280, %._ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split_crit_edge ], [ %i.bxs, %bb.al ], [ %i.bxs, %bb.ak ]
  %i.byh = phi ptr [ %.pre, %._ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split_crit_edge ], [ %i.bxt, %bb.al ], [ %i.bxt, %bb.ak ] ; 2 uses
  %i.byi = icmp eq ptr %i.byh, %i.byg
  br i1 %i.byi, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split, %._crit_edge216
  %i.byj = phi ptr [ %i.cbj, %._crit_edge216 ], [ %i.byh, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.split ] ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.byj, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !56 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.byj, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !30 ; 8 uses
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %8)
          to label %bb.am unwind label %.loopexit.split-lp176.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.lr.ph219
  %i.byk = icmp sgt i32 %.sroa.5.0.copyload, 0
  br i1 %i.byk, label %.preheader.preheader, label %._crit_edge208

.preheader.preheader:                             ; preds = %bb.am
  %wide.trip.count250 = zext nneg i32 %.sroa.5.0.copyload to i64 ; 2 uses
  %xtraiter634 = and i64 %wide.trip.count250, 1
  %i.byl = icmp eq i32 %.sroa.5.0.copyload, 1
  br i1 %i.byl, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter640 = and i64 %wide.trip.count250, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.0274.0 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bzc, %.preheader ]
  %.sroa.7.0 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bzg, %.preheader ]
  %.sroa.10.0 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bzk, %.preheader ]
  %indvars.iv247 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next248.1, %.preheader ] ; 3 uses
  %niter641 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter641.next.1, %.preheader ]
  %i.bym = getelementptr inbounds nuw [3 x i8], ptr %.sroa.4.0.copyload, i64 %indvars.iv247 ; 3 uses
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !36
  %i.byo = zext i8 %i.byn to i32
  %i.byp = add nuw nsw i32 %.sroa.0274.0, %i.byo
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bym, i64 1
  %i.byr = load i8, ptr %i.byq, align 1, !tbaa !36
  %i.bys = zext i8 %i.byr to i32
  %i.byt = add nuw nsw i32 %.sroa.7.0, %i.bys
  %i.byu = getelementptr inbounds nuw i8, ptr %i.bym, i64 2
  %i.byv = load i8, ptr %i.byu, align 1, !tbaa !36
  %i.byw = zext i8 %i.byv to i32
  %i.byx = add nuw nsw i32 %.sroa.10.0, %i.byw
  %i.byy = getelementptr inbounds nuw [3 x i8], ptr %.sroa.4.0.copyload, i64 %indvars.iv247 ; 3 uses
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byy, i64 3
  %i.bza = load i8, ptr %i.byz, align 1, !tbaa !36
  %i.bzb = zext i8 %i.bza to i32
  %i.bzc = add nuw nsw i32 %i.byp, %i.bzb         ; 3 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.byy, i64 4
  %i.bze = load i8, ptr %i.bzd, align 1, !tbaa !36
  %i.bzf = zext i8 %i.bze to i32
  %i.bzg = add nuw nsw i32 %i.byt, %i.bzf         ; 3 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.byy, i64 5
  %i.bzi = load i8, ptr %i.bzh, align 1, !tbaa !36
  %i.bzj = zext i8 %i.bzi to i32
  %i.bzk = add nuw nsw i32 %i.byx, %i.bzj         ; 3 uses
  %indvars.iv.next248.1 = add nuw nsw i64 %indvars.iv247, 2 ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %._crit_edge208.loopexit.unr-lcssa, label %.preheader, !llvm.loop !137

._crit_edge208.loopexit.unr-lcssa:                ; preds = %.preheader
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  br i1 %lcmp.mod635.not, label %._crit_edge208, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge208.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.0274.0.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bzc, %._crit_edge208.loopexit.unr-lcssa ]
  %.sroa.7.0.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bzg, %._crit_edge208.loopexit.unr-lcssa ]
  %.sroa.10.0.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bzk, %._crit_edge208.loopexit.unr-lcssa ]
  %indvars.iv247.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next248.1, %._crit_edge208.loopexit.unr-lcssa ]
  %lcmp.mod639 = trunc i32 %.sroa.5.0.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod639)
  %i.bzl = getelementptr inbounds nuw [3 x i8], ptr %.sroa.4.0.copyload, i64 %indvars.iv247.epil.init ; 3 uses
  %i.bzm = load i8, ptr %i.bzl, align 1, !tbaa !36
  %i.bzn = zext i8 %i.bzm to i32
end_hunk_3
