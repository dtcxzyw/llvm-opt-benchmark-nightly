Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/concat_x86_avx512?download=true
inline.NumInlined: 137
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn17Concat_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.310112388.us, i64 %i.if ; 2 uses
  %indvars.iv.next2716 = add nuw nsw i64 %indvars.iv2715, 1 ; 2 uses
  %exitcond2719.not = icmp eq i64 %indvars.iv.next2716, %wide.trip.count2718
  br i1 %exitcond2719.not, label %.loopexit2346, label %.lr.ph2386.us, !llvm.loop !74

.loopexit2346:                                    ; preds = %._crit_edge2387.us, %.loopexit2348
  %.41012 = phi ptr [ %.21010, %.loopexit2348 ], [ %i.ne, %._crit_edge2387.us ] ; 4 uses
  %or.cond13 = select i1 %i.lq, i1 %i.il, i1 false
  br i1 %or.cond13, label %.preheader2343, label %.loopexit2344

.preheader2343:                                   ; preds = %.loopexit2346
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !51 ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph2418, label %.loopexit2342

.lr.ph2418:                                       ; preds = %.preheader2343
  %i.ni = load ptr, ptr %i.ln, align 8, !tbaa !46
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !36
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !19
  %factor.op.mul2420 = mul i64 %i.nn, %i.nl
  br i1 %i.id, label %.lr.ph2414.us.preheader, label %.lr.ph2418.split.preheader

.lr.ph2418.split.preheader:                       ; preds = %.lr.ph2418
  %i.no = add nsw i32 %i.ng, -1
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 2
  %i.nr = add nuw nsw i64 %i.nq, 4
  %i.ns = mul i64 %i.nr, %i.if
  %scevgep2720 = getelementptr i8, ptr %.41012, i64 %i.ns
  br label %.loopexit2342

.lr.ph2414.us.preheader:                          ; preds = %.lr.ph2418
  %wide.trip.count2725 = zext nneg i32 %i.ng to i64
  br label %.lr.ph2414.us

.lr.ph2414.us:                                    ; preds = %.lr.ph2414.us.preheader, %._crit_edge2415.us
  %indvars.iv2722 = phi i64 [ 0, %.lr.ph2414.us.preheader ], [ %indvars.iv.next2723, %._crit_edge2415.us ] ; 2 uses
  %.510132416.us = phi ptr [ %.41012, %.lr.ph2414.us.preheader ], [ %i.qg, %._crit_edge2415.us ] ; 17 uses
  %.reass.us2421 = mul i64 %factor.op.mul2420, %indvars.iv2722
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.reass.us2421
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.im
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.io
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.iq
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.ii
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.is
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.iu
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.iw
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.ic
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.iy
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.ja
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.jc
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.ik
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.je
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.jg
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.ji
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph2414.us, %bb.ab
  %.09762412.us = phi i32 [ 0, %.lr.ph2414.us ], [ %i.qf, %bb.ab ]
  %.09772411.us = phi ptr [ %i.oi, %.lr.ph2414.us ], [ %i.qd, %bb.ab ] ; 2 uses
  %.09782410.us = phi ptr [ %i.oh, %.lr.ph2414.us ], [ %i.qa, %bb.ab ] ; 2 uses
  %.09792409.us = phi ptr [ %i.og, %.lr.ph2414.us ], [ %i.px, %bb.ab ] ; 2 uses
  %.09802408.us = phi ptr [ %i.of, %.lr.ph2414.us ], [ %i.pu, %bb.ab ] ; 2 uses
  %.09812407.us = phi ptr [ %i.oe, %.lr.ph2414.us ], [ %i.pr, %bb.ab ] ; 2 uses
  %.09822406.us = phi ptr [ %i.od, %.lr.ph2414.us ], [ %i.po, %bb.ab ] ; 2 uses
  %.09832405.us = phi ptr [ %i.oc, %.lr.ph2414.us ], [ %i.pl, %bb.ab ] ; 2 uses
  %.09842404.us = phi ptr [ %i.ob, %.lr.ph2414.us ], [ %i.pi, %bb.ab ] ; 2 uses
  %.09852403.us = phi ptr [ %i.oa, %.lr.ph2414.us ], [ %i.pf, %bb.ab ] ; 2 uses
  %.09862402.us = phi ptr [ %i.nz, %.lr.ph2414.us ], [ %i.pc, %bb.ab ] ; 2 uses
  %.09872401.us = phi ptr [ %i.ny, %.lr.ph2414.us ], [ %i.oz, %bb.ab ] ; 2 uses
  %.09882400.us = phi ptr [ %i.nx, %.lr.ph2414.us ], [ %i.ow, %bb.ab ] ; 2 uses
  %.09892399.us = phi ptr [ %i.nw, %.lr.ph2414.us ], [ %i.ot, %bb.ab ] ; 2 uses
  %.09902398.us = phi ptr [ %i.nv, %.lr.ph2414.us ], [ %i.oq, %bb.ab ] ; 2 uses
  %.09912397.us = phi ptr [ %i.nu, %.lr.ph2414.us ], [ %i.on, %bb.ab ] ; 2 uses
  %.09922396.us = phi ptr [ %.510132416.us, %.lr.ph2414.us ], [ %i.ok, %bb.ab ] ; 2 uses
  %.09932395.us = phi ptr [ %i.nt, %.lr.ph2414.us ], [ %i.qe, %bb.ab ] ; 17 uses
  %i.oj = load float, ptr %.09932395.us, align 4, !tbaa !185
  %i.ok = getelementptr inbounds nuw i8, ptr %.09922396.us, i64 4
  store float %i.oj, ptr %.09922396.us, align 4, !tbaa !185
  %i.ol = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !185
  %i.on = getelementptr inbounds nuw i8, ptr %.09912397.us, i64 4
  store float %i.om, ptr %.09912397.us, align 4, !tbaa !185
  %i.oo = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 8
  %i.op = load float, ptr %i.oo, align 4, !tbaa !185
  %i.oq = getelementptr inbounds nuw i8, ptr %.09902398.us, i64 4
  store float %i.op, ptr %.09902398.us, align 4, !tbaa !185
  %i.or = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 12
  %i.os = load float, ptr %i.or, align 4, !tbaa !185
  %i.ot = getelementptr inbounds nuw i8, ptr %.09892399.us, i64 4
  store float %i.os, ptr %.09892399.us, align 4, !tbaa !185
  %i.ou = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 16
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !185
  %i.ow = getelementptr inbounds nuw i8, ptr %.09882400.us, i64 4
  store float %i.ov, ptr %.09882400.us, align 4, !tbaa !185
  %i.ox = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 20
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !185
  %i.oz = getelementptr inbounds nuw i8, ptr %.09872401.us, i64 4
  store float %i.oy, ptr %.09872401.us, align 4, !tbaa !185
  %i.pa = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 24
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !185
  %i.pc = getelementptr inbounds nuw i8, ptr %.09862402.us, i64 4
  store float %i.pb, ptr %.09862402.us, align 4, !tbaa !185
  %i.pd = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 28
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !185
  %i.pf = getelementptr inbounds nuw i8, ptr %.09852403.us, i64 4
  store float %i.pe, ptr %.09852403.us, align 4, !tbaa !185
  %i.pg = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 32
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !185
  %i.pi = getelementptr inbounds nuw i8, ptr %.09842404.us, i64 4
  store float %i.ph, ptr %.09842404.us, align 4, !tbaa !185
  %i.pj = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 36
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !185
  %i.pl = getelementptr inbounds nuw i8, ptr %.09832405.us, i64 4
  store float %i.pk, ptr %.09832405.us, align 4, !tbaa !185
  %i.pm = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 40
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !185
  %i.po = getelementptr inbounds nuw i8, ptr %.09822406.us, i64 4
  store float %i.pn, ptr %.09822406.us, align 4, !tbaa !185
  %i.pp = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 44
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !185
  %i.pr = getelementptr inbounds nuw i8, ptr %.09812407.us, i64 4
  store float %i.pq, ptr %.09812407.us, align 4, !tbaa !185
  %i.ps = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 48
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !185
  %i.pu = getelementptr inbounds nuw i8, ptr %.09802408.us, i64 4
  store float %i.pt, ptr %.09802408.us, align 4, !tbaa !185
  %i.pv = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 52
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !185
  %i.px = getelementptr inbounds nuw i8, ptr %.09792409.us, i64 4
  store float %i.pw, ptr %.09792409.us, align 4, !tbaa !185
  %i.py = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 56
  %i.pz = load float, ptr %i.py, align 4, !tbaa !185
  %i.qa = getelementptr inbounds nuw i8, ptr %.09782410.us, i64 4
  store float %i.pz, ptr %.09782410.us, align 4, !tbaa !185
  %i.qb = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 60
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !185
  %i.qd = getelementptr inbounds nuw i8, ptr %.09772411.us, i64 4
  store float %i.qc, ptr %.09772411.us, align 4, !tbaa !185
  %i.qe = getelementptr inbounds nuw i8, ptr %.09932395.us, i64 64
  %i.qf = add nuw nsw i32 %.09762412.us, 1        ; 2 uses
  %exitcond2721.not = icmp eq i32 %i.qf, %i.dr
  br i1 %exitcond2721.not, label %._crit_edge2415.us, label %bb.ab, !llvm.loop !75

._crit_edge2415.us:                               ; preds = %bb.ab
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.510132416.us, i64 %i.if ; 2 uses
  %indvars.iv.next2723 = add nuw nsw i64 %indvars.iv2722, 1 ; 2 uses
  %exitcond2726.not = icmp eq i64 %indvars.iv.next2723, %wide.trip.count2725
  br i1 %exitcond2726.not, label %.loopexit2344, label %.lr.ph2414.us, !llvm.loop !76

.loopexit2344:                                    ; preds = %._crit_edge2415.us, %.loopexit2346
  %.61014 = phi ptr [ %.41012, %.loopexit2346 ], [ %i.qg, %._crit_edge2415.us ] ; 21 uses
  %i.qh = icmp eq i32 %i.lp, 8                    ; 3 uses
  %or.cond15 = select i1 %i.qh, i1 %i.ig, i1 false
  br i1 %or.cond15, label %.preheader2341, label %.loopexit2342

.preheader2341:                                   ; preds = %.loopexit2344
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !51 ; 2 uses
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %.lr.ph2432, label %.loopexit2338

.lr.ph2432:                                       ; preds = %.preheader2341
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !36
  %i.qn = sext i32 %i.qm to i64                   ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !19 ; 3 uses
  %factor.op.mul2434 = mul i64 %i.qp, %i.qn
  %wide.trip.count2731 = zext nneg i32 %i.qj to i64 ; 2 uses
  %i.qq = getelementptr i8, ptr %.61014, i64 %i.kg
  %scevgep3301 = getelementptr i8, ptr %i.qq, i64 4
  %i.qr = add nsw i64 %wide.trip.count2731, -1    ; 2 uses
  %i.qs = mul i64 %i.kh, %i.qr                    ; 8 uses
  %scevgep3302 = getelementptr i8, ptr %scevgep3301, i64 %i.qs ; 2 uses
  %i.qt = getelementptr i8, ptr %.61014, <2 x i64> <i64 0, i64 4>
  %i.qu = shufflevector <2 x ptr> %i.qt, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.qv = getelementptr i8, ptr %.61014, <2 x i64> <i64 4, i64 8> ; 3 uses
  %i.qw = shufflevector <2 x ptr> %i.qv, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.qx = getelementptr i8, ptr %.61014, i64 %i.kg
  %scevgep3304 = getelementptr i8, ptr %i.qx, i64 8
  %scevgep3305 = getelementptr i8, ptr %scevgep3304, i64 %i.qs ; 2 uses
  %i.qy = getelementptr i8, ptr %.61014, <2 x i64> <i64 4, i64 8>
  %scevgep3306 = getelementptr i8, ptr %.61014, i64 8
  %i.qz = getelementptr i8, ptr %.61014, i64 %i.kg
  %scevgep3307 = getelementptr i8, ptr %i.qz, i64 12
  %scevgep3308 = getelementptr i8, ptr %scevgep3307, i64 %i.qs ; 3 uses
  %scevgep3309 = getelementptr i8, ptr %.61014, i64 12 ; 3 uses
  %i.ra = getelementptr i8, ptr %.61014, i64 %i.kg
  %scevgep3310 = getelementptr i8, ptr %i.ra, i64 16
  %scevgep3311 = getelementptr i8, ptr %scevgep3310, i64 %i.qs ; 3 uses
  %scevgep3312 = getelementptr i8, ptr %.61014, i64 %i.ki ; 4 uses
  %i.rb = getelementptr i8, ptr %.61014, i64 %i.kj
  %scevgep3313 = getelementptr i8, ptr %i.rb, i64 4
  %scevgep3314 = getelementptr i8, ptr %scevgep3313, i64 %i.qs ; 4 uses
  %i.rc = getelementptr i8, ptr %.61014, i64 %i.ki
  %scevgep3315 = getelementptr i8, ptr %i.rc, i64 4 ; 3 uses
  %i.rd = getelementptr i8, ptr %.61014, i64 %i.kj
  %scevgep3316 = getelementptr i8, ptr %i.rd, i64 8
  %scevgep3317 = getelementptr i8, ptr %scevgep3316, i64 %i.qs ; 3 uses
  %i.re = getelementptr i8, ptr %.61014, i64 %i.ki ; 2 uses
  %i.rf = getelementptr i8, ptr %.61014, i64 %i.kj
  %scevgep3319 = getelementptr i8, ptr %i.rf, i64 12
  %scevgep3320 = getelementptr i8, ptr %scevgep3319, i64 %i.qs ; 5 uses
  %i.rg = getelementptr i8, ptr %.61014, i64 %i.ki ; 2 uses
  %i.rh = load ptr, ptr %i.ln, align 8, !tbaa !46 ; 7 uses
  %scevgep3318 = getelementptr i8, ptr %i.re, i64 8
  %i.ri = insertelement <2 x ptr> poison, ptr %i.re, i64 0
  %i.rj = insertelement <2 x ptr> %i.ri, ptr %i.rg, i64 1
  %i.rk = getelementptr i8, <2 x ptr> %i.rj, <2 x i64> <i64 8, i64 12> ; 4 uses
  %scevgep3321 = getelementptr i8, ptr %i.rg, i64 12 ; 2 uses
  %i.rl = getelementptr i8, ptr %.61014, i64 %i.kg
  %i.rm = getelementptr i8, ptr %i.rl, i64 %i.ki
  %scevgep3322 = getelementptr i8, ptr %i.rm, i64 16
  %scevgep3323 = getelementptr i8, ptr %scevgep3322, i64 %i.qs ; 3 uses
  %i.rn = getelementptr i8, ptr %i.rh, i64 %i.kk
  %scevgep3324 = getelementptr i8, ptr %i.rn, i64 32
  %i.ro = mul i64 %i.qp, %i.qr
  %i.rp = mul i64 %i.ro, %i.qn
  %scevgep3325 = getelementptr i8, ptr %scevgep3324, i64 %i.rp ; 4 uses
  %i.rq = mul i64 %i.qp, %i.qn
  %i.rr = insertelement <8 x ptr> poison, ptr %scevgep3309, i64 0
  %i.rs = insertelement <8 x ptr> %i.rr, ptr %scevgep3312, i64 1
  %i.rt = shufflevector <8 x ptr> %i.rs, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ru = insertelement <8 x ptr> poison, ptr %scevgep3314, i64 0
  %i.rv = insertelement <8 x ptr> %i.ru, ptr %scevgep3317, i64 1 ; 2 uses
  %i.rw = insertelement <8 x ptr> %i.rv, ptr %scevgep3320, i64 2
  %i.rx = insertelement <8 x ptr> %i.rw, ptr %scevgep3323, i64 3
  %i.ry = insertelement <8 x ptr> %i.rx, ptr %scevgep3325, i64 4 ; 3 uses
  %i.rz = shufflevector <8 x ptr> %i.ry, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.sa = shufflevector <8 x ptr> %i.ry, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.sb = shufflevector <8 x ptr> %i.ry, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %6 = insertelement <8 x ptr> poison, ptr %scevgep3312, i64 0
  %i.sc = insertelement <8 x ptr> %6, ptr %scevgep3315, i64 1 ; 2 uses
  %i.sd = insertelement <8 x ptr> poison, ptr %scevgep3311, i64 0
  %i.se = insertelement <8 x ptr> %i.sd, ptr %scevgep3314, i64 1
  %i.sf = shufflevector <8 x ptr> %i.se, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.sg = shufflevector <8 x ptr> %i.rv, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sh = insertelement <8 x ptr> poison, ptr %scevgep3323, i64 0
  %i.si = insertelement <8 x ptr> %i.sh, ptr %scevgep3325, i64 1
  %i.sj = insertelement <8 x ptr> %i.si, ptr %scevgep3308, i64 2 ; 2 uses
  %i.sk = insertelement <8 x ptr> %i.sj, ptr %scevgep3311, i64 3
  %i.sl = insertelement <8 x ptr> %i.sk, ptr %scevgep3314, i64 4
  %i.sm = insertelement <8 x ptr> %i.sl, ptr %scevgep3317, i64 5 ; 2 uses
  %i.sn = insertelement <8 x ptr> %i.sm, ptr %scevgep3320, i64 6 ; 2 uses
  %i.so = shufflevector <8 x ptr> %i.sn, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.sp = shufflevector <8 x ptr> %i.sm, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.sq = shufflevector <2 x ptr> %i.qv, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.sr = shufflevector <8 x ptr> %i.sn, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.ss = insertelement <8 x ptr> poison, ptr %scevgep3302, i64 0
  %i.st = insertelement <8 x ptr> %i.ss, ptr %scevgep3305, i64 1
  %i.su = shufflevector <8 x ptr> %i.st, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.sv = insertelement <4 x ptr> poison, ptr %scevgep3305, i64 0
  %i.sw = insertelement <4 x ptr> %i.sv, ptr %scevgep3308, i64 1 ; 2 uses
  %i.sx = shufflevector <4 x ptr> %i.sw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sy = shufflevector <8 x ptr> %i.sj, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.sz = shufflevector <2 x ptr> %i.rk, <2 x ptr> %i.qv, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %7 = insertelement <8 x ptr> %i.sz, ptr %i.rh, i64 1
  %i.ta = insertelement <8 x ptr> %7, ptr %scevgep3309, i64 3
  %i.tb = insertelement <8 x ptr> %i.ta, ptr %scevgep3312, i64 4
  %i.tc = insertelement <8 x ptr> %i.tb, ptr %scevgep3315, i64 5 ; 2 uses
  %i.td = shufflevector <2 x ptr> %i.rk, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x ptr> %i.sc, <8 x ptr> %i.td, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.te = insertelement <4 x ptr> poison, ptr %.61014, i64 0 ; 2 uses
  %i.tf = shufflevector <4 x ptr> %i.te, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tg = insertelement <4 x ptr> %i.sw, ptr %scevgep3311, i64 2
  %i.th = insertelement <4 x ptr> %i.tg, ptr %scevgep3314, i64 3
  %i.ti = shufflevector <4 x ptr> %i.te, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.tj = insertelement <2 x ptr> poison, ptr %scevgep3317, i64 0
  %i.tk = insertelement <2 x ptr> %i.tj, ptr %scevgep3320, i64 1
  %i.tl = insertelement <4 x ptr> poison, ptr %scevgep3302, i64 0 ; 2 uses
  %i.tm = shufflevector <4 x ptr> %i.tl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %9 = insertelement <2 x ptr> poison, ptr %scevgep3315, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %scevgep3318, i64 1
  %11 = shufflevector <4 x ptr> %i.tl, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.tn = shufflevector <2 x ptr> %i.qy, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.to = icmp ult <4 x ptr> %i.tf, %i.th
  %i.tp = insertelement <4 x ptr> %i.tn, ptr %scevgep3309, i64 2
  %i.tq = insertelement <4 x ptr> %i.tp, ptr %scevgep3312, i64 3
  %i.tr = icmp ult <4 x ptr> %i.tq, %i.tm
  %i.ts = icmp ult <2 x ptr> %i.ti, %i.tk
  %i.tt = icmp ult <2 x ptr> %10, %11
  %i.tu = icmp ult <8 x ptr> %i.qu, %i.so
  %i.tv = icmp ult <8 x ptr> %i.tc, %i.su
  %i.tw = icmp ult <4 x ptr> %i.qw, %i.sp
  %i.tx = shufflevector <8 x ptr> %i.tc, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ty = icmp ult <4 x ptr> %i.tx, %i.sx
  %i.tz = icmp ult <2 x ptr> %i.sq, %i.sr
  %i.ua = icmp ult <2 x ptr> %i.rk, %i.sy
  %bound03407 = icmp ult ptr %scevgep3306, %scevgep3325
  %bound13408 = icmp ult ptr %i.rh, %scevgep3308
  %i.ub = insertelement <16 x i1> %i.kl, i1 %bound03407, i64 14
  %i.uc = shufflevector <8 x i1> %i.tu, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ud = shufflevector <16 x i1> %i.uc, <16 x i1> %i.ub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ue = shufflevector <4 x i1> %i.tw, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uf = shufflevector <16 x i1> %i.ud, <16 x i1> %i.ue, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ug = shufflevector <2 x i1> %i.tz, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uh = shufflevector <16 x i1> %i.uf, <16 x i1> %i.ug, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.ui = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound13408, i64 14
  %i.uj = shufflevector <8 x i1> %i.tv, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uk = shufflevector <16 x i1> %i.uj, <16 x i1> %i.ui, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ul = shufflevector <4 x i1> %i.ty, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.um = shufflevector <16 x i1> %i.uk, <16 x i1> %i.ul, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.un = shufflevector <2 x i1> %i.ua, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uo = shufflevector <16 x i1> %i.um, <16 x i1> %i.un, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.up = and <16 x i1> %i.uh, %i.uo
  %i.uq = icmp ult <8 x ptr> %i.rt, %i.rz
  %i.ur = insertelement <8 x ptr> %8, ptr %i.rh, i64 4 ; 2 uses
  %i.us = shufflevector <8 x ptr> %i.ur, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.ut = icmp ult <8 x ptr> %i.us, %i.sf
  %i.uu = shufflevector <8 x ptr> %i.sc, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.uv = icmp ult <4 x ptr> %i.uu, %i.sa
  %i.uw = shufflevector <8 x ptr> %i.ur, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ux = icmp ult <4 x ptr> %i.uw, %i.sg
  %i.uy = shufflevector <2 x ptr> %i.rk, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.uz = icmp ult <2 x ptr> %i.uy, %i.sb
  %bound13460 = icmp ult ptr %scevgep3321, %scevgep3320
  %bound13464 = icmp ult ptr %i.rh, %scevgep3320
  %bound03467 = icmp ult ptr %scevgep3321, %scevgep3325
  %bound13468 = icmp ult ptr %i.rh, %scevgep3323
  %stride.check3357 = icmp slt i64 %i.rq, 0
  %i.va = insertelement <16 x i1> poison, i1 %bound03467, i64 14
  %i.vb = insertelement <16 x i1> %i.va, i1 %stride.check3357, i64 15
  %i.vc = shufflevector <8 x i1> %i.uq, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vd = shufflevector <16 x i1> %i.vc, <16 x i1> %i.vb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ve = shufflevector <4 x i1> %i.uv, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vf = shufflevector <16 x i1> %i.vd, <16 x i1> %i.ve, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.vg = shufflevector <2 x i1> %i.uz, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vh = shufflevector <16 x i1> %i.vf, <16 x i1> %i.vg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.vi = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound13460, i64 12
  %i.vj = insertelement <16 x i1> %i.vi, i1 %bound13464, i64 13
  %i.vk = insertelement <16 x i1> %i.vj, i1 %bound13468, i64 14
  %i.vl = shufflevector <8 x i1> %i.ut, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vm = shufflevector <16 x i1> %i.vl, <16 x i1> %i.vk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.vn = shufflevector <4 x i1> %i.ux, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vo = shufflevector <16 x i1> %i.vm, <16 x i1> %i.vn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.vp = and <16 x i1> %i.vh, %i.vo
  %i.vq = bitcast <16 x i1> %i.vp to i16
  %i.vr = bitcast <16 x i1> %i.up to i16
  %i.vs = insertelement <2 x i16> poison, i16 %i.vr, i64 0
  %i.vt = insertelement <2 x i16> %i.vs, i16 %i.vq, i64 1
  %i.vu = icmp ne <2 x i16> %i.vt, zeroinitializer
  %i.vv = shufflevector <2 x i1> %i.vu, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.vw = shufflevector <4 x i1> %i.to, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vx = shufflevector <8 x i1> %i.vw, <8 x i1> %i.vv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.vy = shufflevector <2 x i1> %i.ts, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vz = shufflevector <8 x i1> %i.vx, <8 x i1> %i.vy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.wa = shufflevector <4 x i1> %i.tr, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wb = shufflevector <8 x i1> %i.wa, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.wc = shufflevector <2 x i1> %i.tt, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wd = shufflevector <8 x i1> %i.wb, <8 x i1> %i.wc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.we = and <8 x i1> %i.vz, %i.wd
  %i.wf = bitcast <8 x i1> %i.we to i8
  %.not4594 = icmp eq i8 %i.wf, 0
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph2432, %._crit_edge2429
  %indvars.iv2728 = phi i64 [ 0, %.lr.ph2432 ], [ %indvars.iv.next2729, %._crit_edge2429 ] ; 2 uses
  %.710152430 = phi ptr [ %.61014, %.lr.ph2432 ], [ %i.wo, %._crit_edge2429 ] ; 6 uses
  br i1 %i.id, label %.lr.ph2428.preheader, label %._crit_edge2429

.lr.ph2428.preheader:                             ; preds = %bb.ac
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.710152430, i64 %i.ii ; 4 uses
  %.reass = mul i64 %factor.op.mul2434, %indvars.iv2728
  %i.wh = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.reass ; 4 uses
  br i1 %min.iters.check3472, label %.lr.ph2428.preheader4646, label %vector.memcheck3300

vector.memcheck3300:                              ; preds = %.lr.ph2428.preheader
  br i1 %.not4594, label %vector.ph3473, label %.lr.ph2428.preheader4646

vector.ph3473:                                    ; preds = %vector.memcheck3300
  %i.wi = getelementptr i8, ptr %i.wg, i64 %i.kn
  %i.wj = getelementptr i8, ptr %.710152430, i64 %i.kn
  %i.wk = getelementptr i8, ptr %i.wh, i64 %i.ko
  br label %vector.body3475

vector.body3475:                                  ; preds = %vector.body3475, %vector.ph3473
  %index3476 = phi i64 [ 0, %vector.ph3473 ], [ %index.next3490, %vector.body3475 ] ; 3 uses
  %i.wl = shl i64 %index3476, 4                   ; 2 uses
  %next.gep3477 = getelementptr i8, ptr %i.wg, i64 %i.wl
  %next.gep3478 = getelementptr i8, ptr %.710152430, i64 %i.wl
  %i.wm = shl i64 %index3476, 5
  %next.gep3479 = getelementptr i8, ptr %i.wh, i64 %i.wm
  %wide.vec3480 = load <32 x float>, ptr %next.gep3479, align 4, !tbaa !185, !alias.scope !186 ; 2 uses
  %interleaved.vec = shufflevector <32 x float> %wide.vec3480, <32 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  store <16 x float> %interleaved.vec, ptr %next.gep3478, align 4, !tbaa !185
  %interleaved.vec3489 = shufflevector <32 x float> %wide.vec3480, <32 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %interleaved.vec3489, ptr %next.gep3477, align 4, !tbaa !185
  %index.next3490 = add nuw i64 %index3476, 4     ; 2 uses
  %i.wn = icmp eq i64 %index.next3490, %n.vec3474
  br i1 %i.wn, label %middle.block3491, label %vector.body3475, !llvm.loop !79

middle.block3491:                                 ; preds = %vector.body3475
  br i1 %cmp.n3492, label %._crit_edge2429, label %.lr.ph2428.preheader4646

.lr.ph2428.preheader4646:                         ; preds = %vector.memcheck3300, %.lr.ph2428.preheader, %middle.block3491
  %.09712426.ph = phi i32 [ 0, %vector.memcheck3300 ], [ 0, %.lr.ph2428.preheader ], [ %i.km, %middle.block3491 ]
  %.09722425.ph = phi ptr [ %i.wg, %vector.memcheck3300 ], [ %i.wg, %.lr.ph2428.preheader ], [ %i.wi, %middle.block3491 ]
  %.09732424.ph = phi ptr [ %.710152430, %vector.memcheck3300 ], [ %.710152430, %.lr.ph2428.preheader ], [ %i.wj, %middle.block3491 ]
  %.09742423.ph = phi ptr [ %i.wh, %vector.memcheck3300 ], [ %i.wh, %.lr.ph2428.preheader ], [ %i.wk, %middle.block3491 ]
  br label %.lr.ph2428

._crit_edge2429:                                  ; preds = %.lr.ph2428, %middle.block3491, %bb.ac
  %i.wo = getelementptr inbounds [4 x i8], ptr %.710152430, i64 %i.ic ; 2 uses
  %indvars.iv.next2729 = add nuw nsw i64 %indvars.iv2728, 1 ; 2 uses
  %exitcond2732.not = icmp eq i64 %indvars.iv.next2729, %wide.trip.count2731
  br i1 %exitcond2732.not, label %.loopexit2342, label %bb.ac, !llvm.loop !80

.lr.ph2428:                                       ; preds = %.lr.ph2428.preheader4646, %.lr.ph2428
  %.09712426 = phi i32 [ %i.xn, %.lr.ph2428 ], [ %.09712426.ph, %.lr.ph2428.preheader4646 ]
  %.09722425 = phi ptr [ %i.xl, %.lr.ph2428 ], [ %.09722425.ph, %.lr.ph2428.preheader4646 ] ; 5 uses
  %.09732424 = phi ptr [ %i.xk, %.lr.ph2428 ], [ %.09732424.ph, %.lr.ph2428.preheader4646 ] ; 5 uses
  %.09742423 = phi ptr [ %i.xm, %.lr.ph2428 ], [ %.09742423.ph, %.lr.ph2428.preheader4646 ] ; 9 uses
  %i.wp = load float, ptr %.09742423, align 4, !tbaa !185
  store float %i.wp, ptr %.09732424, align 4, !tbaa !185
  %i.wq = getelementptr inbounds nuw i8, ptr %.09742423, i64 4
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !185
  %i.ws = getelementptr inbounds nuw i8, ptr %.09732424, i64 4
  store float %i.wr, ptr %i.ws, align 4, !tbaa !185
  %i.wt = getelementptr inbounds nuw i8, ptr %.09742423, i64 8
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !185
  %i.wv = getelementptr inbounds nuw i8, ptr %.09732424, i64 8
  store float %i.wu, ptr %i.wv, align 4, !tbaa !185
  %i.ww = getelementptr inbounds nuw i8, ptr %.09742423, i64 12
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !185
  %i.wy = getelementptr inbounds nuw i8, ptr %.09732424, i64 12
  store float %i.wx, ptr %i.wy, align 4, !tbaa !185
  %i.wz = getelementptr inbounds nuw i8, ptr %.09742423, i64 16
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !185
  store float %i.xa, ptr %.09722425, align 4, !tbaa !185
  %i.xb = getelementptr inbounds nuw i8, ptr %.09742423, i64 20
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !185
  %i.xd = getelementptr inbounds nuw i8, ptr %.09722425, i64 4
  store float %i.xc, ptr %i.xd, align 4, !tbaa !185
  %i.xe = getelementptr inbounds nuw i8, ptr %.09742423, i64 24
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !185
  %i.xg = getelementptr inbounds nuw i8, ptr %.09722425, i64 8
  store float %i.xf, ptr %i.xg, align 4, !tbaa !185
  %i.xh = getelementptr inbounds nuw i8, ptr %.09742423, i64 28
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !185
  %i.xj = getelementptr inbounds nuw i8, ptr %.09722425, i64 12
  store float %i.xi, ptr %i.xj, align 4, !tbaa !185
  %i.xk = getelementptr inbounds nuw i8, ptr %.09732424, i64 16
  %i.xl = getelementptr inbounds nuw i8, ptr %.09722425, i64 16
  %i.xm = getelementptr inbounds nuw i8, ptr %.09742423, i64 32
  %i.xn = add nuw nsw i32 %.09712426, 1           ; 2 uses
  %exitcond2727.not = icmp eq i32 %i.xn, %i.dr
  br i1 %exitcond2727.not, label %._crit_edge2429, label %.lr.ph2428, !llvm.loop !81

.loopexit2342:                                    ; preds = %._crit_edge2429, %.preheader2347, %.lr.ph2377.split.preheader, %.preheader2345, %.lr.ph2390.split.preheader, %.preheader2343, %.lr.ph2418.split.preheader, %.loopexit2344
  %i.xo = phi i1 [ %i.qh, %.loopexit2344 ], [ false, %.preheader2347 ], [ false, %.lr.ph2418.split.preheader ], [ false, %.preheader2343 ], [ false, %.lr.ph2390.split.preheader ], [ false, %.preheader2345 ], [ false, %.lr.ph2377.split.preheader ], [ %i.qh, %._crit_edge2429 ]
  %.81016 = phi ptr [ %.61014, %.loopexit2344 ], [ %.010082469, %.preheader2347 ], [ %scevgep2720, %.lr.ph2418.split.preheader ], [ %.41012, %.preheader2343 ], [ %scevgep2713, %.lr.ph2390.split.preheader ], [ %.21010, %.preheader2345 ], [ %scevgep, %.lr.ph2377.split.preheader ], [ %i.wo, %._crit_edge2429 ] ; 20 uses
  %or.cond17 = select i1 %i.xo, i1 %i.il, i1 false
  br i1 %or.cond17, label %.preheader2339, label %.loopexit2340

.preheader2339:                                   ; preds = %.loopexit2342
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !51 ; 2 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %.lr.ph2450, label %.loopexit2340

.lr.ph2450:                                       ; preds = %.preheader2339
  %i.xs = load ptr, ptr %i.ln, align 8, !tbaa !46 ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !36
  %i.xv = sext i32 %i.xu to i64                   ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !19 ; 3 uses
  %factor.op.mul2452 = mul i64 %i.xx, %i.xv
  %wide.trip.count2737 = zext nneg i32 %i.xq to i64 ; 2 uses
  %i.xy = getelementptr i8, ptr %.81016, i64 %i.ju
  %scevgep3094 = getelementptr i8, ptr %i.xy, i64 4
  %i.xz = add nsw i64 %wide.trip.count2737, -1    ; 2 uses
  %i.ya = mul i64 %i.jv, %i.xz                    ; 8 uses
  %scevgep3095 = getelementptr i8, ptr %scevgep3094, i64 %i.ya ; 2 uses
  %scevgep3096 = getelementptr i8, ptr %.81016, i64 %i.jw ; 2 uses
  %i.yb = getelementptr i8, ptr %.81016, i64 %i.jw
  %i.yc = getelementptr i8, ptr %i.yb, i64 %i.ju
  %scevgep3097 = getelementptr i8, ptr %i.yc, i64 4
  %scevgep3098 = getelementptr i8, ptr %scevgep3097, i64 %i.ya ; 2 uses
  %scevgep3099 = getelementptr i8, ptr %.81016, i64 %i.jx ; 3 uses
  %i.yd = getelementptr i8, ptr %.81016, i64 %i.jx
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.ju
  %scevgep3100 = getelementptr i8, ptr %i.ye, i64 4
  %scevgep3101 = getelementptr i8, ptr %scevgep3100, i64 %i.ya ; 3 uses
  %scevgep3102 = getelementptr i8, ptr %.81016, i64 %i.jy ; 3 uses
  %i.yf = getelementptr i8, ptr %.81016, i64 %i.jy
  %i.yg = getelementptr i8, ptr %i.yf, i64 %i.ju
  %scevgep3103 = getelementptr i8, ptr %i.yg, i64 4
  %scevgep3104 = getelementptr i8, ptr %scevgep3103, i64 %i.ya ; 3 uses
  %scevgep3105 = getelementptr i8, ptr %.81016, i64 %i.jz ; 4 uses
  %i.yh = getelementptr i8, ptr %.81016, i64 %i.jz
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.ju
  %scevgep3106 = getelementptr i8, ptr %i.yi, i64 4
  %scevgep3107 = getelementptr i8, ptr %scevgep3106, i64 %i.ya ; 4 uses
  %scevgep3108 = getelementptr i8, ptr %.81016, i64 %i.ka ; 3 uses
  %i.yj = getelementptr i8, ptr %.81016, i64 %i.ka
  %i.yk = getelementptr i8, ptr %i.yj, i64 %i.ju
  %scevgep3109 = getelementptr i8, ptr %i.yk, i64 4
  %scevgep3110 = getelementptr i8, ptr %scevgep3109, i64 %i.ya ; 3 uses
  %scevgep3111 = getelementptr i8, ptr %.81016, i64 %i.kb ; 3 uses
  %i.yl = getelementptr i8, ptr %.81016, i64 %i.kb
  %i.ym = getelementptr i8, ptr %i.yl, i64 %i.ju
  %scevgep3112 = getelementptr i8, ptr %i.ym, i64 4
  %scevgep3113 = getelementptr i8, ptr %scevgep3112, i64 %i.ya ; 5 uses
  %scevgep3114 = getelementptr i8, ptr %.81016, i64 %i.kc ; 4 uses
  %i.yn = getelementptr i8, ptr %.81016, i64 %i.kc
  %i.yo = getelementptr i8, ptr %i.yn, i64 %i.ju
  %scevgep3115 = getelementptr i8, ptr %i.yo, i64 4
  %scevgep3116 = getelementptr i8, ptr %scevgep3115, i64 %i.ya ; 3 uses
  %i.yp = getelementptr i8, ptr %i.xs, i64 %i.kd
end_hunk_0
begin_hunk_1_@_ZNK4ncnn17Concat_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.39992381.us, i64 %i.hz ; 2 uses
  %indvars.iv.next2709 = add nuw nsw i64 %indvars.iv2708, 1 ; 2 uses
  %exitcond2712.not = icmp eq i64 %indvars.iv.next2709, %wide.trip.count2711
  br i1 %exitcond2712.not, label %.loopexit2339, label %.lr.ph2379.us, !llvm.loop !261

.loopexit2339:                                    ; preds = %._crit_edge2380.us, %.loopexit2341
  %.41000 = phi ptr [ %.2998, %.loopexit2341 ], [ %i.my, %._crit_edge2380.us ] ; 4 uses
  %or.cond13 = select i1 %i.lk, i1 %i.if, i1 false
  br i1 %or.cond13, label %.preheader2336, label %.loopexit2337

.preheader2336:                                   ; preds = %.loopexit2339
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !51 ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph2411, label %.loopexit2335

.lr.ph2411:                                       ; preds = %.preheader2336
  %i.nc = load ptr, ptr %i.lh, align 8, !tbaa !46
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !36
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !19
  %factor.op.mul2413 = mul i64 %i.nh, %i.nf
  br i1 %i.hx, label %.lr.ph2407.us.preheader, label %.lr.ph2411.split.preheader

.lr.ph2411.split.preheader:                       ; preds = %.lr.ph2411
  %i.ni = add nsw i32 %i.na, -1
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, 1
  %i.nl = add nuw nsw i64 %i.nk, 2
  %i.nm = mul nsw i64 %i.nl, %i.hz
  %scevgep2713 = getelementptr i8, ptr %.41000, i64 %i.nm
  br label %.loopexit2335

.lr.ph2407.us.preheader:                          ; preds = %.lr.ph2411
  %wide.trip.count2718 = zext nneg i32 %i.na to i64
  br label %.lr.ph2407.us

.lr.ph2407.us:                                    ; preds = %.lr.ph2407.us.preheader, %._crit_edge2408.us
  %indvars.iv2715 = phi i64 [ 0, %.lr.ph2407.us.preheader ], [ %indvars.iv.next2716, %._crit_edge2408.us ] ; 2 uses
  %.510012409.us = phi ptr [ %.41000, %.lr.ph2407.us.preheader ], [ %i.qa, %._crit_edge2408.us ] ; 17 uses
  %.reass.us2414 = mul i64 %factor.op.mul2413, %indvars.iv2715
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 %.reass.us2414
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ig
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ii
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ik
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ic
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.im
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.io
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.iq
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.hw
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.is
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.iu
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.iw
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ie
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.iy
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.ja
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.jc
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph2407.us, %bb.aa
  %.09642405.us = phi i32 [ 0, %.lr.ph2407.us ], [ %i.pz, %bb.aa ]
  %.09652404.us = phi ptr [ %i.oc, %.lr.ph2407.us ], [ %i.px, %bb.aa ] ; 2 uses
  %.09662403.us = phi ptr [ %i.ob, %.lr.ph2407.us ], [ %i.pu, %bb.aa ] ; 2 uses
  %.09672402.us = phi ptr [ %i.oa, %.lr.ph2407.us ], [ %i.pr, %bb.aa ] ; 2 uses
  %.09682401.us = phi ptr [ %i.nz, %.lr.ph2407.us ], [ %i.po, %bb.aa ] ; 2 uses
  %.09692400.us = phi ptr [ %i.ny, %.lr.ph2407.us ], [ %i.pl, %bb.aa ] ; 2 uses
  %.09702399.us = phi ptr [ %i.nx, %.lr.ph2407.us ], [ %i.pi, %bb.aa ] ; 2 uses
  %.09712398.us = phi ptr [ %i.nw, %.lr.ph2407.us ], [ %i.pf, %bb.aa ] ; 2 uses
  %.09722397.us = phi ptr [ %i.nv, %.lr.ph2407.us ], [ %i.pc, %bb.aa ] ; 2 uses
  %.09732396.us = phi ptr [ %i.nu, %.lr.ph2407.us ], [ %i.oz, %bb.aa ] ; 2 uses
  %.09742395.us = phi ptr [ %i.nt, %.lr.ph2407.us ], [ %i.ow, %bb.aa ] ; 2 uses
  %.09752394.us = phi ptr [ %i.ns, %.lr.ph2407.us ], [ %i.ot, %bb.aa ] ; 2 uses
  %.09762393.us = phi ptr [ %i.nr, %.lr.ph2407.us ], [ %i.oq, %bb.aa ] ; 2 uses
  %.09772392.us = phi ptr [ %i.nq, %.lr.ph2407.us ], [ %i.on, %bb.aa ] ; 2 uses
  %.09782391.us = phi ptr [ %i.np, %.lr.ph2407.us ], [ %i.ok, %bb.aa ] ; 2 uses
  %.09792390.us = phi ptr [ %i.no, %.lr.ph2407.us ], [ %i.oh, %bb.aa ] ; 2 uses
  %.09802389.us = phi ptr [ %.510012409.us, %.lr.ph2407.us ], [ %i.oe, %bb.aa ] ; 2 uses
  %.09812388.us = phi ptr [ %i.nn, %.lr.ph2407.us ], [ %i.py, %bb.aa ] ; 17 uses
  %i.od = load i16, ptr %.09812388.us, align 2, !tbaa !372
  %i.oe = getelementptr inbounds nuw i8, ptr %.09802389.us, i64 2
  store i16 %i.od, ptr %.09802389.us, align 2, !tbaa !372
  %i.of = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 2
  %i.og = load i16, ptr %i.of, align 2, !tbaa !372
  %i.oh = getelementptr inbounds nuw i8, ptr %.09792390.us, i64 2
  store i16 %i.og, ptr %.09792390.us, align 2, !tbaa !372
  %i.oi = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 4
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !372
  %i.ok = getelementptr inbounds nuw i8, ptr %.09782391.us, i64 2
  store i16 %i.oj, ptr %.09782391.us, align 2, !tbaa !372
  %i.ol = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 6
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !372
  %i.on = getelementptr inbounds nuw i8, ptr %.09772392.us, i64 2
  store i16 %i.om, ptr %.09772392.us, align 2, !tbaa !372
  %i.oo = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 8
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !372
  %i.oq = getelementptr inbounds nuw i8, ptr %.09762393.us, i64 2
  store i16 %i.op, ptr %.09762393.us, align 2, !tbaa !372
  %i.or = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 10
  %i.os = load i16, ptr %i.or, align 2, !tbaa !372
  %i.ot = getelementptr inbounds nuw i8, ptr %.09752394.us, i64 2
  store i16 %i.os, ptr %.09752394.us, align 2, !tbaa !372
  %i.ou = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 12
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !372
  %i.ow = getelementptr inbounds nuw i8, ptr %.09742395.us, i64 2
  store i16 %i.ov, ptr %.09742395.us, align 2, !tbaa !372
  %i.ox = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 14
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !372
  %i.oz = getelementptr inbounds nuw i8, ptr %.09732396.us, i64 2
  store i16 %i.oy, ptr %.09732396.us, align 2, !tbaa !372
  %i.pa = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 16
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !372
  %i.pc = getelementptr inbounds nuw i8, ptr %.09722397.us, i64 2
  store i16 %i.pb, ptr %.09722397.us, align 2, !tbaa !372
  %i.pd = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 18
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !372
  %i.pf = getelementptr inbounds nuw i8, ptr %.09712398.us, i64 2
  store i16 %i.pe, ptr %.09712398.us, align 2, !tbaa !372
  %i.pg = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 20
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !372
  %i.pi = getelementptr inbounds nuw i8, ptr %.09702399.us, i64 2
  store i16 %i.ph, ptr %.09702399.us, align 2, !tbaa !372
  %i.pj = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 22
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !372
  %i.pl = getelementptr inbounds nuw i8, ptr %.09692400.us, i64 2
  store i16 %i.pk, ptr %.09692400.us, align 2, !tbaa !372
  %i.pm = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 24
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !372
  %i.po = getelementptr inbounds nuw i8, ptr %.09682401.us, i64 2
  store i16 %i.pn, ptr %.09682401.us, align 2, !tbaa !372
  %i.pp = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 26
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !372
  %i.pr = getelementptr inbounds nuw i8, ptr %.09672402.us, i64 2
  store i16 %i.pq, ptr %.09672402.us, align 2, !tbaa !372
  %i.ps = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 28
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !372
  %i.pu = getelementptr inbounds nuw i8, ptr %.09662403.us, i64 2
  store i16 %i.pt, ptr %.09662403.us, align 2, !tbaa !372
  %i.pv = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 30
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !372
  %i.px = getelementptr inbounds nuw i8, ptr %.09652404.us, i64 2
  store i16 %i.pw, ptr %.09652404.us, align 2, !tbaa !372
  %i.py = getelementptr inbounds nuw i8, ptr %.09812388.us, i64 32
  %i.pz = add nuw nsw i32 %.09642405.us, 1        ; 2 uses
  %exitcond2714.not = icmp eq i32 %i.pz, %i.dl
  br i1 %exitcond2714.not, label %._crit_edge2408.us, label %bb.aa, !llvm.loop !262

._crit_edge2408.us:                               ; preds = %bb.aa
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %.510012409.us, i64 %i.hz ; 2 uses
  %indvars.iv.next2716 = add nuw nsw i64 %indvars.iv2715, 1 ; 2 uses
  %exitcond2719.not = icmp eq i64 %indvars.iv.next2716, %wide.trip.count2718
  br i1 %exitcond2719.not, label %.loopexit2337, label %.lr.ph2407.us, !llvm.loop !263

.loopexit2337:                                    ; preds = %._crit_edge2408.us, %.loopexit2339
  %.61002 = phi ptr [ %.41000, %.loopexit2339 ], [ %i.qa, %._crit_edge2408.us ] ; 21 uses
  %i.qb = icmp eq i32 %i.lj, 8                    ; 3 uses
  %or.cond15 = select i1 %i.qb, i1 %i.ia, i1 false
  br i1 %or.cond15, label %.preheader2334, label %.loopexit2335

.preheader2334:                                   ; preds = %.loopexit2337
  %i.qc = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !51 ; 2 uses
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph2425, label %.loopexit2331

.lr.ph2425:                                       ; preds = %.preheader2334
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !36
  %i.qh = sext i32 %i.qg to i64                   ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !19 ; 3 uses
  %factor.op.mul2427 = mul i64 %i.qj, %i.qh
  %wide.trip.count2724 = zext nneg i32 %i.qd to i64 ; 2 uses
  %i.qk = getelementptr i8, ptr %.61002, i64 %i.ka
  %scevgep3293 = getelementptr i8, ptr %i.qk, i64 2
  %i.ql = add nsw i64 %wide.trip.count2724, -1    ; 2 uses
  %i.qm = mul i64 %i.kb, %i.ql                    ; 8 uses
  %scevgep3294 = getelementptr i8, ptr %scevgep3293, i64 %i.qm ; 2 uses
  %i.qn = getelementptr i8, ptr %.61002, <2 x i64> <i64 0, i64 2>
  %i.qo = shufflevector <2 x ptr> %i.qn, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.qp = getelementptr i8, ptr %.61002, <2 x i64> <i64 2, i64 4> ; 3 uses
  %i.qq = shufflevector <2 x ptr> %i.qp, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.qr = getelementptr i8, ptr %.61002, i64 %i.ka
  %scevgep3296 = getelementptr i8, ptr %i.qr, i64 4
  %scevgep3297 = getelementptr i8, ptr %scevgep3296, i64 %i.qm ; 2 uses
  %i.qs = getelementptr i8, ptr %.61002, <2 x i64> <i64 2, i64 4>
  %scevgep3298 = getelementptr i8, ptr %.61002, i64 4
  %i.qt = getelementptr i8, ptr %.61002, i64 %i.ka
  %scevgep3299 = getelementptr i8, ptr %i.qt, i64 6
  %scevgep3300 = getelementptr i8, ptr %scevgep3299, i64 %i.qm ; 3 uses
  %scevgep3301 = getelementptr i8, ptr %.61002, i64 6 ; 3 uses
  %i.qu = getelementptr i8, ptr %.61002, i64 %i.ka
  %scevgep3302 = getelementptr i8, ptr %i.qu, i64 8
  %scevgep3303 = getelementptr i8, ptr %scevgep3302, i64 %i.qm ; 3 uses
  %scevgep3304 = getelementptr i8, ptr %.61002, i64 %i.kc ; 4 uses
  %i.qv = getelementptr i8, ptr %.61002, i64 %i.kd
  %scevgep3305 = getelementptr i8, ptr %i.qv, i64 2
  %scevgep3306 = getelementptr i8, ptr %scevgep3305, i64 %i.qm ; 4 uses
  %i.qw = getelementptr i8, ptr %.61002, i64 %i.kc
  %scevgep3307 = getelementptr i8, ptr %i.qw, i64 2 ; 3 uses
  %i.qx = getelementptr i8, ptr %.61002, i64 %i.kd
  %scevgep3308 = getelementptr i8, ptr %i.qx, i64 4
  %scevgep3309 = getelementptr i8, ptr %scevgep3308, i64 %i.qm ; 3 uses
  %i.qy = getelementptr i8, ptr %.61002, i64 %i.kc ; 2 uses
  %i.qz = getelementptr i8, ptr %.61002, i64 %i.kd
  %scevgep3311 = getelementptr i8, ptr %i.qz, i64 6
  %scevgep3312 = getelementptr i8, ptr %scevgep3311, i64 %i.qm ; 5 uses
  %i.ra = getelementptr i8, ptr %.61002, i64 %i.kc ; 2 uses
  %i.rb = load ptr, ptr %i.lh, align 8, !tbaa !46 ; 7 uses
  %scevgep3310 = getelementptr i8, ptr %i.qy, i64 4
  %i.rc = insertelement <2 x ptr> poison, ptr %i.qy, i64 0
  %i.rd = insertelement <2 x ptr> %i.rc, ptr %i.ra, i64 1
  %i.re = getelementptr i8, <2 x ptr> %i.rd, <2 x i64> <i64 4, i64 6> ; 4 uses
  %scevgep3313 = getelementptr i8, ptr %i.ra, i64 6 ; 2 uses
  %i.rf = getelementptr i8, ptr %.61002, i64 %i.ka
  %i.rg = getelementptr i8, ptr %i.rf, i64 %i.kc
  %scevgep3314 = getelementptr i8, ptr %i.rg, i64 8
  %scevgep3315 = getelementptr i8, ptr %scevgep3314, i64 %i.qm ; 3 uses
  %i.rh = getelementptr i8, ptr %i.rb, i64 %i.ke
  %scevgep3316 = getelementptr i8, ptr %i.rh, i64 16
  %i.ri = mul i64 %i.qj, %i.ql
  %i.rj = mul i64 %i.ri, %i.qh
  %scevgep3317 = getelementptr i8, ptr %scevgep3316, i64 %i.rj ; 4 uses
  %i.rk = mul i64 %i.qj, %i.qh
  %i.rl = insertelement <8 x ptr> poison, ptr %scevgep3301, i64 0
  %i.rm = insertelement <8 x ptr> %i.rl, ptr %scevgep3304, i64 1
  %i.rn = shufflevector <8 x ptr> %i.rm, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.ro = insertelement <8 x ptr> poison, ptr %scevgep3306, i64 0
  %i.rp = insertelement <8 x ptr> %i.ro, ptr %scevgep3309, i64 1 ; 2 uses
  %i.rq = insertelement <8 x ptr> %i.rp, ptr %scevgep3312, i64 2
  %i.rr = insertelement <8 x ptr> %i.rq, ptr %scevgep3315, i64 3
  %i.rs = insertelement <8 x ptr> %i.rr, ptr %scevgep3317, i64 4 ; 3 uses
  %i.rt = shufflevector <8 x ptr> %i.rs, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.ru = shufflevector <8 x ptr> %i.rs, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.rv = shufflevector <8 x ptr> %i.rs, <8 x ptr> poison, <2 x i32> <i32 3, i32 4>
  %6 = insertelement <8 x ptr> poison, ptr %scevgep3304, i64 0
  %i.rw = insertelement <8 x ptr> %6, ptr %scevgep3307, i64 1 ; 2 uses
  %i.rx = insertelement <8 x ptr> poison, ptr %scevgep3303, i64 0
  %i.ry = insertelement <8 x ptr> %i.rx, ptr %scevgep3306, i64 1
  %i.rz = shufflevector <8 x ptr> %i.ry, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1>
  %i.sa = shufflevector <8 x ptr> %i.rp, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sb = insertelement <8 x ptr> poison, ptr %scevgep3315, i64 0
  %i.sc = insertelement <8 x ptr> %i.sb, ptr %scevgep3317, i64 1
  %i.sd = insertelement <8 x ptr> %i.sc, ptr %scevgep3300, i64 2 ; 2 uses
  %i.se = insertelement <8 x ptr> %i.sd, ptr %scevgep3303, i64 3
  %i.sf = insertelement <8 x ptr> %i.se, ptr %scevgep3306, i64 4
  %i.sg = insertelement <8 x ptr> %i.sf, ptr %scevgep3309, i64 5 ; 2 uses
  %i.sh = insertelement <8 x ptr> %i.sg, ptr %scevgep3312, i64 6 ; 2 uses
  %i.si = shufflevector <8 x ptr> %i.sh, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0>
  %i.sj = shufflevector <8 x ptr> %i.sg, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.sk = shufflevector <2 x ptr> %i.qp, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.sl = shufflevector <8 x ptr> %i.sh, <8 x ptr> poison, <2 x i32> <i32 6, i32 0>
  %i.sm = insertelement <8 x ptr> poison, ptr %scevgep3294, i64 0
  %i.sn = insertelement <8 x ptr> %i.sm, ptr %scevgep3297, i64 1
  %i.so = shufflevector <8 x ptr> %i.sn, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.sp = insertelement <4 x ptr> poison, ptr %scevgep3297, i64 0
  %i.sq = insertelement <4 x ptr> %i.sp, ptr %scevgep3300, i64 1 ; 2 uses
  %i.sr = shufflevector <4 x ptr> %i.sq, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ss = shufflevector <8 x ptr> %i.sd, <8 x ptr> poison, <2 x i32> <i32 2, i32 2>
  %i.st = shufflevector <2 x ptr> %i.re, <2 x ptr> %i.qp, <8 x i32> <i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %7 = insertelement <8 x ptr> %i.st, ptr %i.rb, i64 1
  %i.su = insertelement <8 x ptr> %7, ptr %scevgep3301, i64 3
  %i.sv = insertelement <8 x ptr> %i.su, ptr %scevgep3304, i64 4
  %i.sw = insertelement <8 x ptr> %i.sv, ptr %scevgep3307, i64 5 ; 2 uses
  %i.sx = shufflevector <2 x ptr> %i.re, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x ptr> %i.rw, <8 x ptr> %i.sx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sy = insertelement <4 x ptr> poison, ptr %.61002, i64 0 ; 2 uses
  %i.sz = shufflevector <4 x ptr> %i.sy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ta = insertelement <4 x ptr> %i.sq, ptr %scevgep3303, i64 2
  %i.tb = insertelement <4 x ptr> %i.ta, ptr %scevgep3306, i64 3
  %i.tc = shufflevector <4 x ptr> %i.sy, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.td = insertelement <2 x ptr> poison, ptr %scevgep3309, i64 0
  %i.te = insertelement <2 x ptr> %i.td, ptr %scevgep3312, i64 1
  %i.tf = insertelement <4 x ptr> poison, ptr %scevgep3294, i64 0 ; 2 uses
  %i.tg = shufflevector <4 x ptr> %i.tf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %9 = insertelement <2 x ptr> poison, ptr %scevgep3307, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %scevgep3310, i64 1
  %11 = shufflevector <4 x ptr> %i.tf, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.th = shufflevector <2 x ptr> %i.qs, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ti = icmp ult <4 x ptr> %i.sz, %i.tb
  %i.tj = insertelement <4 x ptr> %i.th, ptr %scevgep3301, i64 2
  %i.tk = insertelement <4 x ptr> %i.tj, ptr %scevgep3304, i64 3
  %i.tl = icmp ult <4 x ptr> %i.tk, %i.tg
  %i.tm = icmp ult <2 x ptr> %i.tc, %i.te
  %i.tn = icmp ult <2 x ptr> %10, %11
  %i.to = icmp ult <8 x ptr> %i.qo, %i.si
  %i.tp = icmp ult <8 x ptr> %i.sw, %i.so
  %i.tq = icmp ult <4 x ptr> %i.qq, %i.sj
  %i.tr = shufflevector <8 x ptr> %i.sw, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.ts = icmp ult <4 x ptr> %i.tr, %i.sr
  %i.tt = icmp ult <2 x ptr> %i.sk, %i.sl
  %i.tu = icmp ult <2 x ptr> %i.re, %i.ss
  %bound03399 = icmp ult ptr %scevgep3298, %scevgep3317
  %bound13400 = icmp ult ptr %i.rb, %scevgep3300
  %i.tv = insertelement <16 x i1> %i.kf, i1 %bound03399, i64 14
  %i.tw = shufflevector <8 x i1> %i.to, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tx = shufflevector <16 x i1> %i.tw, <16 x i1> %i.tv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.ty = shufflevector <4 x i1> %i.tq, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tz = shufflevector <16 x i1> %i.tx, <16 x i1> %i.ty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.ua = shufflevector <2 x i1> %i.tt, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ub = shufflevector <16 x i1> %i.tz, <16 x i1> %i.ua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.uc = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound13400, i64 14
  %i.ud = shufflevector <8 x i1> %i.tp, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ue = shufflevector <16 x i1> %i.ud, <16 x i1> %i.uc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.uf = shufflevector <4 x i1> %i.ts, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ug = shufflevector <16 x i1> %i.ue, <16 x i1> %i.uf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.uh = shufflevector <2 x i1> %i.tu, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ui = shufflevector <16 x i1> %i.ug, <16 x i1> %i.uh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.uj = and <16 x i1> %i.ub, %i.ui
  %i.uk = icmp ult <8 x ptr> %i.rn, %i.rt
  %i.ul = insertelement <8 x ptr> %8, ptr %i.rb, i64 4 ; 2 uses
  %i.um = shufflevector <8 x ptr> %i.ul, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3>
  %i.un = icmp ult <8 x ptr> %i.um, %i.rz
  %i.uo = shufflevector <8 x ptr> %i.rw, <8 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.up = icmp ult <4 x ptr> %i.uo, %i.ru
  %i.uq = shufflevector <8 x ptr> %i.ul, <8 x ptr> poison, <4 x i32> <i32 4, i32 2, i32 3, i32 4>
  %i.ur = icmp ult <4 x ptr> %i.uq, %i.sa
  %i.us = shufflevector <2 x ptr> %i.re, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ut = icmp ult <2 x ptr> %i.us, %i.rv
  %bound13452 = icmp ult ptr %scevgep3313, %scevgep3312
  %bound13456 = icmp ult ptr %i.rb, %scevgep3312
  %bound03459 = icmp ult ptr %scevgep3313, %scevgep3317
  %bound13460 = icmp ult ptr %i.rb, %scevgep3315
  %stride.check3349 = icmp slt i64 %i.rk, 0
  %i.uu = insertelement <16 x i1> poison, i1 %bound03459, i64 14
  %i.uv = insertelement <16 x i1> %i.uu, i1 %stride.check3349, i64 15
  %i.uw = shufflevector <8 x i1> %i.uk, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ux = shufflevector <16 x i1> %i.uw, <16 x i1> %i.uv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.uy = shufflevector <4 x i1> %i.up, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uz = shufflevector <16 x i1> %i.ux, <16 x i1> %i.uy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.va = shufflevector <2 x i1> %i.ut, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vb = shufflevector <16 x i1> %i.uz, <16 x i1> %i.va, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.vc = insertelement <16 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound13452, i64 12
  %i.vd = insertelement <16 x i1> %i.vc, i1 %bound13456, i64 13
  %i.ve = insertelement <16 x i1> %i.vd, i1 %bound13460, i64 14
  %i.vf = shufflevector <8 x i1> %i.un, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vg = shufflevector <16 x i1> %i.vf, <16 x i1> %i.ve, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.vh = shufflevector <4 x i1> %i.ur, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vi = shufflevector <16 x i1> %i.vg, <16 x i1> %i.vh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.vj = and <16 x i1> %i.vb, %i.vi
  %i.vk = bitcast <16 x i1> %i.vj to i16
  %i.vl = bitcast <16 x i1> %i.uj to i16
  %i.vm = insertelement <2 x i16> poison, i16 %i.vl, i64 0
  %i.vn = insertelement <2 x i16> %i.vm, i16 %i.vk, i64 1
  %i.vo = icmp ne <2 x i16> %i.vn, zeroinitializer
  %i.vp = shufflevector <2 x i1> %i.vo, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %i.vq = shufflevector <4 x i1> %i.ti, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vr = shufflevector <8 x i1> %i.vq, <8 x i1> %i.vp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.vs = shufflevector <2 x i1> %i.tm, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vt = shufflevector <8 x i1> %i.vr, <8 x i1> %i.vs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.vu = shufflevector <4 x i1> %i.tl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vv = shufflevector <8 x i1> %i.vu, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.vw = shufflevector <2 x i1> %i.tn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vx = shufflevector <8 x i1> %i.vv, <8 x i1> %i.vw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.vy = and <8 x i1> %i.vt, %i.vx
  %i.vz = bitcast <8 x i1> %i.vy to i8
  %.not4586 = icmp eq i8 %i.vz, 0
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph2425, %._crit_edge2422
  %indvars.iv2721 = phi i64 [ 0, %.lr.ph2425 ], [ %indvars.iv.next2722, %._crit_edge2422 ] ; 2 uses
  %.710032423 = phi ptr [ %.61002, %.lr.ph2425 ], [ %i.wi, %._crit_edge2422 ] ; 6 uses
  br i1 %i.hx, label %.lr.ph2421.preheader, label %._crit_edge2422

.lr.ph2421.preheader:                             ; preds = %bb.ab
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %.710032423, i64 %i.ic ; 4 uses
  %.reass = mul i64 %factor.op.mul2427, %indvars.iv2721
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.reass ; 4 uses
  br i1 %min.iters.check3464, label %.lr.ph2421.preheader4638, label %vector.memcheck3292

vector.memcheck3292:                              ; preds = %.lr.ph2421.preheader
  br i1 %.not4586, label %vector.ph3465, label %.lr.ph2421.preheader4638

vector.ph3465:                                    ; preds = %vector.memcheck3292
  %i.wc = getelementptr i8, ptr %i.wa, i64 %i.kh
  %i.wd = getelementptr i8, ptr %.710032423, i64 %i.kh
  %i.we = getelementptr i8, ptr %i.wb, i64 %i.ki
  br label %vector.body3467

vector.body3467:                                  ; preds = %vector.body3467, %vector.ph3465
  %index3468 = phi i64 [ 0, %vector.ph3465 ], [ %index.next3482, %vector.body3467 ] ; 3 uses
  %i.wf = shl i64 %index3468, 3                   ; 2 uses
  %next.gep3469 = getelementptr i8, ptr %i.wa, i64 %i.wf
  %next.gep3470 = getelementptr i8, ptr %.710032423, i64 %i.wf
  %i.wg = shl i64 %index3468, 4
  %next.gep3471 = getelementptr i8, ptr %i.wb, i64 %i.wg
  %wide.vec3472 = load <64 x i16>, ptr %next.gep3471, align 2, !tbaa !372, !alias.scope !373 ; 2 uses
  %interleaved.vec = shufflevector <64 x i16> %wide.vec3472, <64 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59>
  store <32 x i16> %interleaved.vec, ptr %next.gep3470, align 2, !tbaa !372
  %interleaved.vec3481 = shufflevector <64 x i16> %wide.vec3472, <64 x i16> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63>
  store <32 x i16> %interleaved.vec3481, ptr %next.gep3469, align 2, !tbaa !372
  %index.next3482 = add nuw i64 %index3468, 8     ; 2 uses
  %i.wh = icmp eq i64 %index.next3482, %n.vec3466
  br i1 %i.wh, label %middle.block3483, label %vector.body3467, !llvm.loop !266

middle.block3483:                                 ; preds = %vector.body3467
  br i1 %cmp.n3484, label %._crit_edge2422, label %.lr.ph2421.preheader4638

.lr.ph2421.preheader4638:                         ; preds = %vector.memcheck3292, %.lr.ph2421.preheader, %middle.block3483
  %.09592419.ph = phi i32 [ 0, %vector.memcheck3292 ], [ 0, %.lr.ph2421.preheader ], [ %i.kg, %middle.block3483 ]
  %.09602418.ph = phi ptr [ %i.wa, %vector.memcheck3292 ], [ %i.wa, %.lr.ph2421.preheader ], [ %i.wc, %middle.block3483 ]
  %.09612417.ph = phi ptr [ %.710032423, %vector.memcheck3292 ], [ %.710032423, %.lr.ph2421.preheader ], [ %i.wd, %middle.block3483 ]
  %.09622416.ph = phi ptr [ %i.wb, %vector.memcheck3292 ], [ %i.wb, %.lr.ph2421.preheader ], [ %i.we, %middle.block3483 ]
  br label %.lr.ph2421

._crit_edge2422:                                  ; preds = %.lr.ph2421, %middle.block3483, %bb.ab
  %i.wi = getelementptr inbounds [2 x i8], ptr %.710032423, i64 %i.hw ; 2 uses
  %indvars.iv.next2722 = add nuw nsw i64 %indvars.iv2721, 1 ; 2 uses
  %exitcond2725.not = icmp eq i64 %indvars.iv.next2722, %wide.trip.count2724
  br i1 %exitcond2725.not, label %.loopexit2335, label %bb.ab, !llvm.loop !267

.lr.ph2421:                                       ; preds = %.lr.ph2421.preheader4638, %.lr.ph2421
  %.09592419 = phi i32 [ %i.xh, %.lr.ph2421 ], [ %.09592419.ph, %.lr.ph2421.preheader4638 ]
  %.09602418 = phi ptr [ %i.xf, %.lr.ph2421 ], [ %.09602418.ph, %.lr.ph2421.preheader4638 ] ; 5 uses
  %.09612417 = phi ptr [ %i.xe, %.lr.ph2421 ], [ %.09612417.ph, %.lr.ph2421.preheader4638 ] ; 5 uses
  %.09622416 = phi ptr [ %i.xg, %.lr.ph2421 ], [ %.09622416.ph, %.lr.ph2421.preheader4638 ] ; 9 uses
  %i.wj = load i16, ptr %.09622416, align 2, !tbaa !372
  store i16 %i.wj, ptr %.09612417, align 2, !tbaa !372
  %i.wk = getelementptr inbounds nuw i8, ptr %.09622416, i64 2
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !372
  %i.wm = getelementptr inbounds nuw i8, ptr %.09612417, i64 2
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !372
  %i.wn = getelementptr inbounds nuw i8, ptr %.09622416, i64 4
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !372
  %i.wp = getelementptr inbounds nuw i8, ptr %.09612417, i64 4
  store i16 %i.wo, ptr %i.wp, align 2, !tbaa !372
  %i.wq = getelementptr inbounds nuw i8, ptr %.09622416, i64 6
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !372
  %i.ws = getelementptr inbounds nuw i8, ptr %.09612417, i64 6
  store i16 %i.wr, ptr %i.ws, align 2, !tbaa !372
  %i.wt = getelementptr inbounds nuw i8, ptr %.09622416, i64 8
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !372
  store i16 %i.wu, ptr %.09602418, align 2, !tbaa !372
  %i.wv = getelementptr inbounds nuw i8, ptr %.09622416, i64 10
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !372
  %i.wx = getelementptr inbounds nuw i8, ptr %.09602418, i64 2
  store i16 %i.ww, ptr %i.wx, align 2, !tbaa !372
  %i.wy = getelementptr inbounds nuw i8, ptr %.09622416, i64 12
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !372
  %i.xa = getelementptr inbounds nuw i8, ptr %.09602418, i64 4
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !372
  %i.xb = getelementptr inbounds nuw i8, ptr %.09622416, i64 14
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !372
  %i.xd = getelementptr inbounds nuw i8, ptr %.09602418, i64 6
  store i16 %i.xc, ptr %i.xd, align 2, !tbaa !372
  %i.xe = getelementptr inbounds nuw i8, ptr %.09612417, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %.09602418, i64 8
  %i.xg = getelementptr inbounds nuw i8, ptr %.09622416, i64 16
  %i.xh = add nuw nsw i32 %.09592419, 1           ; 2 uses
  %exitcond2720.not = icmp eq i32 %i.xh, %i.dl
  br i1 %exitcond2720.not, label %._crit_edge2422, label %.lr.ph2421, !llvm.loop !268

.loopexit2335:                                    ; preds = %._crit_edge2422, %.preheader2340, %.lr.ph2370.split.preheader, %.preheader2338, %.lr.ph2383.split.preheader, %.preheader2336, %.lr.ph2411.split.preheader, %.loopexit2337
  %i.xi = phi i1 [ %i.qb, %.loopexit2337 ], [ false, %.preheader2340 ], [ false, %.lr.ph2411.split.preheader ], [ false, %.preheader2336 ], [ false, %.lr.ph2383.split.preheader ], [ false, %.preheader2338 ], [ false, %.lr.ph2370.split.preheader ], [ %i.qb, %._crit_edge2422 ]
  %.81004 = phi ptr [ %.61002, %.loopexit2337 ], [ %.09962462, %.preheader2340 ], [ %scevgep2713, %.lr.ph2411.split.preheader ], [ %.41000, %.preheader2336 ], [ %scevgep2706, %.lr.ph2383.split.preheader ], [ %.2998, %.preheader2338 ], [ %scevgep, %.lr.ph2370.split.preheader ], [ %i.wi, %._crit_edge2422 ] ; 20 uses
  %or.cond17 = select i1 %i.xi, i1 %i.if, i1 false
  br i1 %or.cond17, label %.preheader2332, label %.loopexit2333

.preheader2332:                                   ; preds = %.loopexit2335
  %i.xj = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !51 ; 2 uses
  %i.xl = icmp sgt i32 %i.xk, 0
  br i1 %i.xl, label %.lr.ph2443, label %.loopexit2333

.lr.ph2443:                                       ; preds = %.preheader2332
  %i.xm = load ptr, ptr %i.lh, align 8, !tbaa !46 ; 7 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !36
  %i.xp = sext i32 %i.xo to i64                   ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !19 ; 3 uses
  %factor.op.mul2445 = mul i64 %i.xr, %i.xp
  %wide.trip.count2730 = zext nneg i32 %i.xk to i64 ; 2 uses
  %i.xs = getelementptr i8, ptr %.81004, i64 %i.jo
  %scevgep3086 = getelementptr i8, ptr %i.xs, i64 2
  %i.xt = add nsw i64 %wide.trip.count2730, -1    ; 2 uses
  %i.xu = mul i64 %i.jp, %i.xt                    ; 8 uses
  %scevgep3087 = getelementptr i8, ptr %scevgep3086, i64 %i.xu ; 2 uses
  %scevgep3088 = getelementptr i8, ptr %.81004, i64 %i.jq ; 2 uses
  %i.xv = getelementptr i8, ptr %.81004, i64 %i.jq
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.jo
  %scevgep3089 = getelementptr i8, ptr %i.xw, i64 2
  %scevgep3090 = getelementptr i8, ptr %scevgep3089, i64 %i.xu ; 2 uses
  %scevgep3091 = getelementptr i8, ptr %.81004, i64 %i.jr ; 3 uses
  %i.xx = getelementptr i8, ptr %.81004, i64 %i.jr
  %i.xy = getelementptr i8, ptr %i.xx, i64 %i.jo
  %scevgep3092 = getelementptr i8, ptr %i.xy, i64 2
  %scevgep3093 = getelementptr i8, ptr %scevgep3092, i64 %i.xu ; 3 uses
  %scevgep3094 = getelementptr i8, ptr %.81004, i64 %i.js ; 3 uses
  %i.xz = getelementptr i8, ptr %.81004, i64 %i.js
  %i.ya = getelementptr i8, ptr %i.xz, i64 %i.jo
  %scevgep3095 = getelementptr i8, ptr %i.ya, i64 2
  %scevgep3096 = getelementptr i8, ptr %scevgep3095, i64 %i.xu ; 3 uses
  %scevgep3097 = getelementptr i8, ptr %.81004, i64 %i.jt ; 4 uses
  %i.yb = getelementptr i8, ptr %.81004, i64 %i.jt
  %i.yc = getelementptr i8, ptr %i.yb, i64 %i.jo
  %scevgep3098 = getelementptr i8, ptr %i.yc, i64 2
  %scevgep3099 = getelementptr i8, ptr %scevgep3098, i64 %i.xu ; 4 uses
  %scevgep3100 = getelementptr i8, ptr %.81004, i64 %i.ju ; 3 uses
  %i.yd = getelementptr i8, ptr %.81004, i64 %i.ju
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.jo
  %scevgep3101 = getelementptr i8, ptr %i.ye, i64 2
  %scevgep3102 = getelementptr i8, ptr %scevgep3101, i64 %i.xu ; 3 uses
  %scevgep3103 = getelementptr i8, ptr %.81004, i64 %i.jv ; 3 uses
  %i.yf = getelementptr i8, ptr %.81004, i64 %i.jv
  %i.yg = getelementptr i8, ptr %i.yf, i64 %i.jo
  %scevgep3104 = getelementptr i8, ptr %i.yg, i64 2
  %scevgep3105 = getelementptr i8, ptr %scevgep3104, i64 %i.xu ; 5 uses
  %scevgep3106 = getelementptr i8, ptr %.81004, i64 %i.jw ; 4 uses
  %i.yh = getelementptr i8, ptr %.81004, i64 %i.jw
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.jo
  %scevgep3107 = getelementptr i8, ptr %i.yi, i64 2
  %scevgep3108 = getelementptr i8, ptr %scevgep3107, i64 %i.xu ; 3 uses
  %i.yj = getelementptr i8, ptr %i.xm, i64 %i.jx
end_hunk_1
