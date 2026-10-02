Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/transform8x8?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@intrapred_luma8x8:bb.a
  store i16 -1, ptr %i.kr, align 8, !tbaa !47
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 7504
  store i16 -1, ptr %i.ks, align 8, !tbaa !47
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 7632
  store i16 -1, ptr %i.kt, align 8, !tbaa !47
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 7760
  store i16 -1, ptr %i.ku, align 8, !tbaa !47
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7888
  store i16 -1, ptr %i.kv, align 8, !tbaa !47
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8016
  store i16 -1, ptr %i.kw, align 8, !tbaa !47
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8144
  store i16 -1, ptr %i.kx, align 8, !tbaa !47
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 8272
  store i16 -1, ptr %i.ky, align 8, !tbaa !47
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 8400
  store i16 -1, ptr %i.kz, align 8, !tbaa !47
  call void @LowPassForIntra8x8Pred(ptr noundef nonnull @intrapred_luma8x8.PredPel, i32 noundef %.0527, i32 noundef %.0529, i32 noundef %.1)
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.la = load <24 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !47
  %i.lb = shufflevector <24 x i16> %i.la, <24 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lc = zext <16 x i16> %i.lb to <16 x i32>
  %i.ld = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.lc)
  %op.rdx = add nuw nsw i32 %i.ld, 8
  %i.le = lshr i32 %op.rdx, 4
  br label %.preheader

bb.al:                                            ; preds = %bb.aj
  %.not561 = xor i1 %i.el, true                   ; 2 uses
  %or.cond5 = select i1 %.not561, i1 %i.em, i1 false
  br i1 %or.cond5, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lf = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !47
  %i.lg = zext <8 x i16> %i.lf to <8 x i32>
  %i.lh = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.lg)
  %op.rdx563 = add nuw nsw i32 %i.lh, 4
  %i.li = lshr i32 %op.rdx563, 3
  br label %.preheader

bb.an:                                            ; preds = %bb.al
  %or.cond7 = select i1 %.not561, i1 true, i1 %i.em
  br i1 %or.cond7, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lj = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !47
  %i.lk = zext <8 x i16> %i.lj to <8 x i32>
  %i.ll = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.lk)
  %op.rdx564 = add nuw nsw i32 %i.ll, 4
  %i.lm = lshr i32 %op.rdx564, 3
  br label %.preheader

bb.ap:                                            ; preds = %bb.an
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kq, i64 15512
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !76
  br label %.preheader

.preheader:                                       ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.0530 = phi i32 [ %i.le, %bb.ak ], [ %i.li, %bb.am ], [ %i.lo, %bb.ap ], [ %i.lm, %bb.ao ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kq, i64 7632
  %i.lq = trunc i32 %.0530 to i16
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7648
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7664
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7680
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7696
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7712
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7728
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7744
  %i.lr = insertelement <8 x i16> poison, i16 %i.lq, i64 0
  %i.ls = shufflevector <8 x i16> %i.lr, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.ls, ptr %i.lp, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.1, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.2, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.3, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.4, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.5, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.6, align 8, !tbaa !47
  store <8 x i16> %i.ls, ptr %gep.7, align 8, !tbaa !47
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kq, i64 7488
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kq, i64 7472
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7456
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kq, i64 7440
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kq, i64 7424
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kq, i64 7408
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7392
  %i.ma = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !47 ; 8 uses
  store <8 x i16> %i.ma, ptr %i.lt, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.lu, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.lv, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.lw, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.lx, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.ly, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.lz, align 8, !tbaa !47
  store <8 x i16> %i.ma, ptr %i.kr, align 8, !tbaa !47
  br i1 %i.el, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader
  store i16 -1, ptr %i.kr, align 8, !tbaa !47
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kq, i64 7504 ; 2 uses
  %i.mc = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2
  %i.md = shufflevector <8 x i16> %i.mc, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.md, ptr %i.mb, align 8, !tbaa !47
  %i.me = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !47
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kq, i64 7520
  %i.mg = insertelement <8 x i16> poison, i16 %i.me, i64 0
  %i.mh = shufflevector <8 x i16> %i.mg, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mh, ptr %i.mf, align 8, !tbaa !47
  %i.mi = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !47
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kq, i64 7536
  %i.mk = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.ml = shufflevector <8 x i16> %i.mk, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.ml, ptr %i.mj, align 8, !tbaa !47
  %i.mm = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !47
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kq, i64 7552
  %i.mo = insertelement <8 x i16> poison, i16 %i.mm, i64 0
  %i.mp = shufflevector <8 x i16> %i.mo, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mp, ptr %i.mn, align 8, !tbaa !47
  %i.mq = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !47
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7568
  %i.ms = insertelement <8 x i16> poison, i16 %i.mq, i64 0
  %i.mt = shufflevector <8 x i16> %i.ms, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mt, ptr %i.mr, align 8, !tbaa !47
  %i.mu = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !47
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7584
  %i.mw = insertelement <8 x i16> poison, i16 %i.mu, i64 0
  %i.mx = shufflevector <8 x i16> %i.mw, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mx, ptr %i.mv, align 8, !tbaa !47
  %i.my = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !47
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7600
  %i.na = insertelement <8 x i16> poison, i16 %i.my, i64 0
  %i.nb = shufflevector <8 x i16> %i.na, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.nb, ptr %i.mz, align 8, !tbaa !47
  %i.nc = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !47
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kq, i64 7616
  %i.ne = insertelement <8 x i16> poison, i16 %i.nc, i64 0
  %i.nf = shufflevector <8 x i16> %i.ne, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.nf, ptr %i.nd, align 8, !tbaa !47
  br i1 %i.em, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 -1, ptr %i.mb, align 8, !tbaa !47
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.el, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kq, i64 7760
  %i.nh = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !47
  %i.ni = zext i16 %i.nh to i32                   ; 2 uses
  %i.nj = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 6), align 2, !tbaa !47
  %i.nk = zext i16 %i.nj to i32                   ; 3 uses
  %i.nl = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 4), align 4, !tbaa !47
  %i.nm = zext i16 %i.nl to i32                   ; 4 uses
  %i.nn = shl nuw nsw i32 %i.nm, 1
  %i.no = add nuw nsw i32 %i.nk, 2                ; 2 uses
  %i.np = add nuw nsw i32 %i.no, %i.ni
  %i.nq = add nuw nsw i32 %i.np, %i.nn
  %i.nr = lshr i32 %i.nq, 2
  %i.ns = trunc nuw i32 %i.nr to i16              ; 2 uses
  store i16 %i.ns, ptr %i.ng, align 8, !tbaa !47
  %i.nt = shl nuw nsw i32 %i.nk, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kq, i64 7776
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7762
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kq, i64 7792
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kq, i64 7778
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kq, i64 7764
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7794
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kq, i64 7780
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kq, i64 7766
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kq, i64 7796
  %i.od = getelementptr inbounds nuw i8, ptr %i.kq, i64 7782
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kq, i64 7768
  %i.of = getelementptr inbounds nuw i8, ptr %i.kq, i64 7840
  %i.og = getelementptr inbounds nuw i8, ptr %i.kq, i64 7784
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kq, i64 7770
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kq, i64 7856
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kq, i64 7842
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kq, i64 7828
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kq, i64 7786
  %i.om = getelementptr inbounds nuw i8, ptr %i.kq, i64 7772
  %i.on = getelementptr inbounds nuw i8, ptr %i.kq, i64 7872
  %i.oo = getelementptr inbounds nuw i8, ptr %i.kq, i64 7844
  %i.op = getelementptr inbounds nuw i8, ptr %i.kq, i64 7830
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kq, i64 7788
  %i.or = getelementptr inbounds nuw i8, ptr %i.kq, i64 7774
  %i.os = getelementptr inbounds nuw i8, ptr %i.kq, i64 7874
  %i.ot = getelementptr inbounds nuw i8, ptr %i.kq, i64 7846
  %i.ou = getelementptr inbounds nuw i8, ptr %i.kq, i64 7832
  %i.ov = getelementptr inbounds nuw i8, ptr %i.kq, i64 7790
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kq, i64 7848
  %i.ox = getelementptr inbounds nuw i8, ptr %i.kq, i64 7834
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kq, i64 7836
  %i.oz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7882
  %i.pa = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !47
  %i.pb = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 16), align 16, !tbaa !47
  %i.pc = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 32), align 16, !tbaa !47
  %i.pd = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !47
  %i.pe = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 30), align 2, !tbaa !47
  %i.pf = zext <8 x i16> %i.pa to <8 x i32>       ; 3 uses
  %i.pg = zext <8 x i16> %i.pb to <8 x i32>
  %i.ph = zext i16 %i.pc to i32
  %i.pi = zext <8 x i16> %i.pd to <8 x i32>
  %i.pj = zext i16 %i.pe to i32
  %i.pk = add nuw nsw <8 x i32> %i.pf, splat (i32 2) ; 5 uses
  %i.pl = shl nuw nsw <8 x i32> %i.pg, splat (i32 1) ; 3 uses
  %i.pm = add nuw nsw <8 x i32> %i.pk, %i.pl
  %i.pn = add nuw nsw <8 x i32> %i.pm, %i.pi
  %i.po = lshr <8 x i32> %i.pn, splat (i32 2)     ; 2 uses
  %i.pp = trunc <8 x i32> %i.po to <8 x i16>      ; 10 uses
  %i.pq = extractelement <8 x i16> %i.pp, i64 0   ; 4 uses
  store i16 %i.pq, ptr %i.oj, align 2, !tbaa !47
  store i16 %i.pq, ptr %i.ok, align 4, !tbaa !47
  store i16 %i.pq, ptr %i.ol, align 2, !tbaa !47
  store i16 %i.pq, ptr %i.om, align 4, !tbaa !47
  %i.pr = extractelement <8 x i16> %i.pp, i64 1   ; 5 uses
  store i16 %i.pr, ptr %i.on, align 8, !tbaa !47
  store i16 %i.pr, ptr %i.oo, align 4, !tbaa !47
  store i16 %i.pr, ptr %i.op, align 2, !tbaa !47
  store i16 %i.pr, ptr %i.oq, align 4, !tbaa !47
  store i16 %i.pr, ptr %i.or, align 2, !tbaa !47
  %i.ps = extractelement <8 x i16> %i.pp, i64 2   ; 3 uses
  store i16 %i.ps, ptr %i.ot, align 2, !tbaa !47
  store i16 %i.ps, ptr %i.ou, align 8, !tbaa !47
  store i16 %i.ps, ptr %i.ov, align 2, !tbaa !47
  %i.pt = extractelement <8 x i16> %i.pp, i64 3   ; 3 uses
  store i16 %i.pt, ptr %i.ox, align 2, !tbaa !47
  %i.pu = extractelement <8 x i16> %i.pp, i64 4
  %i.pv = shufflevector <8 x i16> %i.pp, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x i16> %i.pv, ptr %i.os, align 2, !tbaa !47
  %i.pw = shufflevector <8 x i32> %i.po, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.px = trunc <2 x i32> %i.pw to <2 x i16>
  store <2 x i16> %i.px, ptr %i.oy, align 4, !tbaa !47
  %i.py = shufflevector <8 x i16> %i.pp, <8 x i16> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i16> %i.py, ptr %i.ow, align 8, !tbaa !47
  %i.pz = shufflevector <8 x i16> %i.pp, <8 x i16> poison, <2 x i32> <i32 6, i32 7>
  store <2 x i16> %i.pz, ptr %i.oz, align 2, !tbaa !47
  store <8 x i16> %i.pp, ptr %i.oi, align 8, !tbaa !47
  %i.qa = mul nuw nsw i32 %i.ph, 3
  %i.qb = add nuw nsw i32 %i.pj, 2
  %i.qc = add nuw nsw i32 %i.qb, %i.qa
  %i.qd = lshr i32 %i.qc, 2
  %i.qe = trunc nuw i32 %i.qd to i16
  %i.qf = getelementptr inbounds nuw i8, ptr %i.kq, i64 7886
  store i16 %i.qe, ptr %i.qf, align 2, !tbaa !47
  %i.qg = getelementptr inbounds nuw i8, ptr %i.kq, i64 8272
  %i.qh = add nuw nsw i32 %i.nm, 1
  %i.qi = add nuw nsw i32 %i.qh, %i.ni
  %i.qj = lshr i32 %i.qi, 1
  %i.qk = trunc nuw i32 %i.qj to i16
  store i16 %i.qk, ptr %i.qg, align 8, !tbaa !47
  %i.ql = add nuw nsw i32 %i.nk, 1                ; 2 uses
  %i.qm = add nuw nsw i32 %i.ql, %i.nm
  %i.qn = lshr i32 %i.qm, 1
  %i.qo = trunc nuw i32 %i.qn to i16              ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.kq, i64 8304
  store i16 %i.qo, ptr %i.qp, align 8, !tbaa !47
  %i.qq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8274
  store i16 %i.qo, ptr %i.qq, align 2, !tbaa !47
  %i.qr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8336
  %i.qs = getelementptr inbounds nuw i8, ptr %i.kq, i64 8306
  %i.qt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8276
  %i.qu = getelementptr inbounds nuw i8, ptr %i.kq, i64 8368
  %i.qv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8338
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8308
  %i.qx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8278
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kq, i64 8312
  %i.qz = getelementptr inbounds nuw i8, ptr %i.kq, i64 8282
  %i.ra = getelementptr inbounds nuw i8, ptr %i.kq, i64 8346
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kq, i64 8286
  %i.rc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8350
  %9 = load <5 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !47
  %10 = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !47
  %11 = zext <5 x i16> %9 to <5 x i32>            ; 5 uses
  %12 = zext i16 %10 to i32                       ; 4 uses
  %13 = shufflevector <5 x i32> %11, <5 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <8 x i32> %i.pf, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i32> %13, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10>
  %i.rd = add nuw nsw i32 %12, 2
  %i.re = add nuw nsw i32 %i.rd, %i.nm
  %i.rf = add nuw nsw i32 %i.re, %i.nt
  %i.rg = lshr i32 %i.rf, 2
  %i.rh = trunc nuw i32 %i.rg to i16              ; 4 uses
  store i16 %i.rh, ptr %i.nu, align 8, !tbaa !47
  store i16 %i.rh, ptr %i.nv, align 2, !tbaa !47
  %i.ri = shl nuw nsw i32 %12, 1
  %i.rj = add nuw nsw i32 %i.no, %i.ri
  %i.rk = extractelement <5 x i32> %11, i64 1     ; 3 uses
  %i.rl = add nuw nsw i32 %i.rj, %i.rk
  %i.rm = lshr i32 %i.rl, 2
  %i.rn = trunc nuw i32 %i.rm to i16              ; 6 uses
  store i16 %i.rn, ptr %i.nw, align 8, !tbaa !47
  store i16 %i.rn, ptr %i.nx, align 2, !tbaa !47
  store i16 %i.rn, ptr %i.ny, align 4, !tbaa !47
  %i.ro = shl nuw nsw i32 %i.rk, 1                ; 2 uses
  %i.rp = extractelement <5 x i32> %11, i64 2     ; 2 uses
  %i.rq = add nuw nsw i32 %i.rp, 2                ; 3 uses
  %i.rr = add nuw nsw i32 %i.rq, %12
  %i.rs = add nuw nsw i32 %i.rr, %i.ro
  %i.rt = lshr i32 %i.rs, 2
  %i.ru = shl nuw nsw i32 %i.rp, 1
  %i.rv = extractelement <5 x i32> %11, i64 3     ; 2 uses
  %i.rw = add nuw nsw i32 %i.rv, 2                ; 2 uses
  %i.rx = add nuw nsw i32 %i.rw, %i.rk
  %i.ry = add nuw nsw i32 %i.rx, %i.ru
  %i.rz = lshr i32 %i.ry, 2
  %i.sa = shl nuw nsw i32 %i.rv, 1
  %i.sb = add nuw nsw i32 %i.rq, %i.sa
  %16 = extractelement <5 x i32> %11, i64 4       ; 2 uses
  %i.sc = add nuw nsw i32 %i.sb, %16
  %i.sd = lshr i32 %i.sc, 2
  %i.se = trunc i32 %i.rt to i16                  ; 4 uses
  store i16 %i.se, ptr %i.nz, align 2, !tbaa !47
  store i16 %i.se, ptr %i.oa, align 4, !tbaa !47
  store i16 %i.se, ptr %i.ob, align 2, !tbaa !47
  %i.sf = trunc i32 %i.rz to i16                  ; 3 uses
  store i16 %i.sf, ptr %i.od, align 2, !tbaa !47
  store i16 %i.sf, ptr %i.oe, align 8, !tbaa !47
  %i.sg = trunc i32 %i.sd to i16                  ; 4 uses
  store i16 %i.sg, ptr %i.of, align 8, !tbaa !47
  %i.sh = shufflevector <8 x i16> %i.pp, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 4>
  %i.si = insertelement <8 x i16> %i.sh, i16 %i.sf, i64 0
  %i.sj = insertelement <8 x i16> %i.si, i16 %i.sg, i64 1
  %i.sk = insertelement <8 x i16> %i.sj, i16 %i.se, i64 6
  %i.sl = shufflevector <8 x i16> %i.sk, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 0, i32 1>
  store <16 x i16> %i.sl, ptr %i.oc, align 4, !tbaa !47
  store i16 %i.sg, ptr %i.og, align 8, !tbaa !47
  store i16 %i.sg, ptr %i.oh, align 2, !tbaa !47
  %i.sm = shl nuw nsw i32 %16, 1
  %i.sn = add nuw nsw i32 %i.ql, %12
  %i.so = lshr i32 %i.sn, 1
  %i.sp = trunc nuw i32 %i.so to i16              ; 3 uses
  store i16 %i.sp, ptr %i.qr, align 8, !tbaa !47
  store i16 %i.sp, ptr %i.qs, align 2, !tbaa !47
  store i16 %i.sp, ptr %i.qt, align 4, !tbaa !47
  %i.sq = add nuw nsw <8 x i32> %15, splat (i32 1)
  %17 = shufflevector <8 x i32> %13, <8 x i32> %i.pf, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 10, i32 11, i32 12, i32 13>
  %i.sr = add nuw nsw <8 x i32> %i.sq, %17
  %i.ss = lshr <8 x i32> %i.sr, splat (i32 1)     ; 2 uses
  %i.st = trunc <8 x i32> %i.ss to <8 x i16>      ; 7 uses
  %i.su = shufflevector <8 x i16> %i.st, <8 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store <2 x i16> %i.su, ptr %i.qw, align 4, !tbaa !47
  store <2 x i16> %i.su, ptr %i.qx, align 2, !tbaa !47
  %i.sv = shufflevector <8 x i16> %i.st, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i16> %i.sv, ptr %i.qv, align 2, !tbaa !47
  %i.sw = shufflevector <8 x i16> %i.st, <8 x i16> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i16> %i.sw, ptr %i.qz, align 2, !tbaa !47
  %i.sx = extractelement <8 x i16> %i.st, i64 4
  store i16 %i.sx, ptr %i.rb, align 2, !tbaa !47
  %i.sy = shufflevector <8 x i32> %i.ss, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.sz = trunc <2 x i32> %i.sy to <2 x i16>
  store <2 x i16> %i.sz, ptr %i.ra, align 2, !tbaa !47
  %i.ta = shufflevector <8 x i16> %i.st, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x i16> %i.ta, ptr %i.qy, align 8, !tbaa !47
  %i.tb = extractelement <8 x i16> %i.st, i64 6
  store i16 %i.tb, ptr %i.rc, align 2, !tbaa !47
  store <8 x i16> %i.st, ptr %i.qu, align 8, !tbaa !47
  %i.tc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8288
  store i16 %i.ns, ptr %i.tc, align 8, !tbaa !47
  %i.td = getelementptr inbounds nuw i8, ptr %i.kq, i64 8320
  store i16 %i.rh, ptr %i.td, align 8, !tbaa !47
  %i.te = getelementptr inbounds nuw i8, ptr %i.kq, i64 8290
  store i16 %i.rh, ptr %i.te, align 2, !tbaa !47
  %i.tf = getelementptr inbounds nuw i8, ptr %i.kq, i64 8352
  store i16 %i.rn, ptr %i.tf, align 8, !tbaa !47
  %i.tg = getelementptr inbounds nuw i8, ptr %i.kq, i64 8322
  store i16 %i.rn, ptr %i.tg, align 2, !tbaa !47
  %i.th = getelementptr inbounds nuw i8, ptr %i.kq, i64 8292
  store i16 %i.rn, ptr %i.th, align 4, !tbaa !47
  %i.ti = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !47
  %i.tj = zext i16 %i.ti to i32
  %i.tk = add nuw nsw i32 %i.rq, %i.ro
  %i.tl = add nuw nsw i32 %i.tk, %i.tj
  %i.tm = lshr i32 %i.tl, 2
  %i.tn = trunc nuw i32 %i.tm to i16              ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.kq, i64 8384
  store i16 %i.tn, ptr %i.to, align 8, !tbaa !47
  %i.tp = getelementptr inbounds nuw i8, ptr %i.kq, i64 8354
  store i16 %i.tn, ptr %i.tp, align 2, !tbaa !47
  %i.tq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8324
  store i16 %i.tn, ptr %i.tq, align 4, !tbaa !47
  %i.tr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8294
  store i16 %i.tn, ptr %i.tr, align 2, !tbaa !47
  %i.ts = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 10), align 2, !tbaa !47
  %i.tt = zext i16 %i.ts to i32
  %i.tu = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 12), align 4, !tbaa !47
  %i.tv = zext i16 %i.tu to i32                   ; 2 uses
  %i.tw = shl nuw nsw i32 %i.tv, 1
  %i.tx = add nuw nsw i32 %i.rw, %i.tt
  %i.ty = add nuw nsw i32 %i.tx, %i.tw
  %i.tz = lshr i32 %i.ty, 2
  %i.ua = trunc nuw i32 %i.tz to i16              ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.kq, i64 8386
  store i16 %i.ua, ptr %i.ub, align 2, !tbaa !47
  %i.uc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8356
  store i16 %i.ua, ptr %i.uc, align 4, !tbaa !47
  %i.ud = getelementptr inbounds nuw i8, ptr %i.kq, i64 8326
  store i16 %i.ua, ptr %i.ud, align 2, !tbaa !47
  %i.ue = getelementptr inbounds nuw i8, ptr %i.kq, i64 8296
  store i16 %i.ua, ptr %i.ue, align 8, !tbaa !47
  %i.uf = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !47
  %i.ug = zext i16 %i.uf to i32                   ; 2 uses
  %i.uh = shl nuw nsw i32 %i.ug, 1
  %i.ui = extractelement <8 x i32> %i.pk, i64 1
  %i.uj = add nuw nsw i32 %i.ui, %i.tv
  %i.uk = add nuw nsw i32 %i.uj, %i.uh
  %i.ul = lshr i32 %i.uk, 2
  %i.um = trunc nuw i32 %i.ul to i16              ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.kq, i64 8388
  store i16 %i.um, ptr %i.un, align 4, !tbaa !47
  %i.uo = getelementptr inbounds nuw i8, ptr %i.kq, i64 8358
  store i16 %i.um, ptr %i.uo, align 2, !tbaa !47
  %i.up = getelementptr inbounds nuw i8, ptr %i.kq, i64 8328
  store i16 %i.um, ptr %i.up, align 8, !tbaa !47
  %i.uq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8298
  store i16 %i.um, ptr %i.uq, align 2, !tbaa !47
  %i.ur = extractelement <8 x i32> %i.pk, i64 2
  %i.us = add nuw nsw i32 %i.ur, %i.sm
  %i.ut = add nuw nsw i32 %i.us, %i.ug
  %i.uu = lshr i32 %i.ut, 2
  %i.uv = trunc nuw i32 %i.uu to i16              ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8390
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !47
  %i.ux = getelementptr inbounds nuw i8, ptr %i.kq, i64 8360
  store i16 %i.uv, ptr %i.ux, align 8, !tbaa !47
  %i.uy = getelementptr inbounds nuw i8, ptr %i.kq, i64 8330
  store i16 %i.uv, ptr %i.uy, align 2, !tbaa !47
  %i.uz = getelementptr inbounds nuw i8, ptr %i.kq, i64 8300
  store i16 %i.uv, ptr %i.uz, align 4, !tbaa !47
  %i.va = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 16), align 16, !tbaa !47
  %i.vb = zext i16 %i.va to i32
  %shift = shufflevector <8 x i32> %i.pk, <8 x i32> poison, <8 x i32> <i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <8 x i32> %shift, %i.pl
  %i.vc = extractelement <8 x i32> %foldExtExtBinop, i64 1
  %i.vd = add nuw nsw i32 %i.vc, %i.vb
  %i.ve = lshr i32 %i.vd, 2
  %i.vf = trunc nuw i32 %i.ve to i16              ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.kq, i64 8392
  store i16 %i.vf, ptr %i.vg, align 8, !tbaa !47
  %i.vh = getelementptr inbounds nuw i8, ptr %i.kq, i64 8362
  store i16 %i.vf, ptr %i.vh, align 2, !tbaa !47
  %i.vi = getelementptr inbounds nuw i8, ptr %i.kq, i64 8332
  store i16 %i.vf, ptr %i.vi, align 4, !tbaa !47
  %i.vj = getelementptr inbounds nuw i8, ptr %i.kq, i64 8302
  store i16 %i.vf, ptr %i.vj, align 2, !tbaa !47
  %i.vk = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !47
  %i.vl = zext i16 %i.vk to i32
  %shift566 = shufflevector <8 x i32> %i.pl, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop567 = add nuw nsw <8 x i32> %i.pk, %shift566
  %i.vm = extractelement <8 x i32> %foldExtExtBinop567, i64 4
  %i.vn = add nuw nsw i32 %i.vm, %i.vl
  %i.vo = lshr i32 %i.vn, 2
  %i.vp = trunc nuw i32 %i.vo to i16              ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8394
  store i16 %i.vp, ptr %i.vq, align 2, !tbaa !47
  %i.vr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8364
  store i16 %i.vp, ptr %i.vr, align 4, !tbaa !47
  %i.vs = getelementptr inbounds nuw i8, ptr %i.kq, i64 8334
  store i16 %i.vp, ptr %i.vs, align 2, !tbaa !47
  %i.vt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8396
  store i16 %i.pt, ptr %i.vt, align 4, !tbaa !47
  %i.vu = getelementptr inbounds nuw i8, ptr %i.kq, i64 8366
  store i16 %i.pt, ptr %i.vu, align 2, !tbaa !47
  %i.vv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8398
  store i16 %i.pu, ptr %i.vv, align 2, !tbaa !47
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %or.cond11 = and i1 %or.cond, %i.en
  br i1 %or.cond11, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.av
  %i.vw = load ptr, ptr @img, align 8, !tbaa !9   ; 128 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 7888
  %i.vy = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !47
  %i.vz = zext i16 %i.vy to i32
  %i.wa = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !47
  %i.wb = zext i16 %i.wa to i32                   ; 2 uses
  %i.wc = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !47
  %i.wd = zext i16 %i.wc to i32                   ; 2 uses
  %i.we = shl nuw nsw i32 %i.wd, 1
  %i.wf = add nuw nsw i32 %i.wb, 2                ; 2 uses
  %i.wg = add nuw nsw i32 %i.wf, %i.vz
  %i.wh = add nuw nsw i32 %i.wg, %i.we
  %i.wi = lshr i32 %i.wh, 2
  %i.wj = trunc nuw i32 %i.wi to i16
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vw, i64 8000
  store i16 %i.wj, ptr %i.wk, align 2, !tbaa !47
  %i.wl = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !47
  %i.wm = zext i16 %i.wl to i32                   ; 2 uses
  %i.wn = shl nuw nsw i32 %i.wb, 1
  %i.wo = add nuw nsw i32 %i.wm, 2                ; 2 uses
  %i.wp = add nuw nsw i32 %i.wo, %i.wd
  %i.wq = add nuw nsw i32 %i.wp, %i.wn
  %i.wr = lshr i32 %i.wq, 2
  %i.ws = trunc nuw i32 %i.wr to i16              ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vw, i64 8002
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !47
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vw, i64 7984
  store i16 %i.ws, ptr %i.wu, align 2, !tbaa !47
  %i.wv = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !47
  %i.ww = zext i16 %i.wv to i32                   ; 3 uses
  %i.wx = shl nuw nsw i32 %i.wm, 1
  %i.wy = add nuw nsw i32 %i.wf, %i.wx
  %i.wz = add nuw nsw i32 %i.wy, %i.ww
  %i.xa = lshr i32 %i.wz, 2
  %i.xb = trunc nuw i32 %i.xa to i16              ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vw, i64 8004
  store i16 %i.xb, ptr %i.xc, align 2, !tbaa !47
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vw, i64 7986
  store i16 %i.xb, ptr %i.xd, align 2, !tbaa !47
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vw, i64 7968
  store i16 %i.xb, ptr %i.xe, align 2, !tbaa !47
  %i.xf = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !47
  %i.xg = zext i16 %i.xf to i32                   ; 3 uses
  %i.xh = shl nuw nsw i32 %i.ww, 1
  %i.xi = add nuw nsw i32 %i.wo, %i.xh
  %i.xj = add nuw nsw i32 %i.xi, %i.xg
  %i.xk = lshr i32 %i.xj, 2
  %i.xl = trunc nuw i32 %i.xk to i16              ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vw, i64 8006
  store i16 %i.xl, ptr %i.xm, align 2, !tbaa !47
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vw, i64 7988
  store i16 %i.xl, ptr %i.xn, align 2, !tbaa !47
  %i.xo = getelementptr inbounds nuw i8, ptr %i.vw, i64 7970
  store i16 %i.xl, ptr %i.xo, align 2, !tbaa !47
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vw, i64 7952
  store i16 %i.xl, ptr %i.xp, align 2, !tbaa !47
  %i.xq = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !47
  %i.xr = zext i16 %i.xq to i32                   ; 3 uses
  %i.xs = shl nuw nsw i32 %i.xg, 1
  %i.xt = add nuw nsw i32 %i.ww, 2
  %i.xu = add nuw nsw i32 %i.xt, %i.xs
  %i.xv = add nuw nsw i32 %i.xu, %i.xr
  %i.xw = lshr i32 %i.xv, 2
  %i.xx = trunc nuw i32 %i.xw to i16              ; 5 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vw, i64 8008
  store i16 %i.xx, ptr %i.xy, align 2, !tbaa !47
end_hunk_0
begin_hunk_1_@intrapred_luma8x8:bb.a
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.vw, i64 8098
  store i16 %i.ahd, ptr %i.ahf, align 2, !tbaa !47
  store i16 %i.ahd, ptr %i.afm, align 2, !tbaa !47
  %i.ahg = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !47
  %i.ahh = zext i16 %i.ahg to i32                 ; 5 uses
  %i.ahi = shl nuw nsw i32 %i.agx, 1
  %i.ahj = add nuw nsw i32 %i.agm, 2              ; 2 uses
  %i.ahk = add nuw nsw i32 %i.ahj, %i.ahi
  %i.ahl = add nuw nsw i32 %i.ahk, %i.ahh
  %i.ahm = lshr i32 %i.ahl, 2
  %i.ahn = trunc nuw i32 %i.ahm to i16            ; 6 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.vw, i64 8114
  store i16 %i.ahn, ptr %i.aho, align 2, !tbaa !47
  store i16 %i.ahn, ptr %i.adh, align 2, !tbaa !47
  %i.ahp = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !47
  %i.ahq = zext i16 %i.ahp to i32                 ; 5 uses
  %i.ahr = shl nuw nsw i32 %i.ahh, 1
  %i.ahs = add nuw nsw i32 %i.agx, 2
  %i.aht = add nuw nsw i32 %i.ahs, %i.ahr
  %i.ahu = add nuw nsw i32 %i.aht, %i.ahq
  %i.ahv = lshr i32 %i.ahu, 2
  %i.ahw = trunc nuw i32 %i.ahv to i16            ; 6 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8130
  store i16 %i.ahw, ptr %i.ahx, align 2, !tbaa !47
  store i16 %i.ahw, ptr %i.afk, align 2, !tbaa !47
  %i.ahy = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !47
  %i.ahz = zext i16 %i.ahy to i32                 ; 5 uses
  %i.aia = shl nuw nsw i32 %i.ahq, 1
  %i.aib = add nuw nsw i32 %i.ahh, 2
  %i.aic = add nuw nsw i32 %i.aib, %i.aia
  %i.aid = add nuw nsw i32 %i.aic, %i.ahz
  %i.aie = lshr i32 %i.aid, 2
  %i.aif = trunc nuw i32 %i.aie to i16            ; 4 uses
  store i16 %i.aif, ptr %i.adf, align 2, !tbaa !47
  %i.aig = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !47
  %i.aih = zext i16 %i.aig to i32                 ; 4 uses
  %i.aii = shl nuw nsw i32 %i.ahz, 1
  %i.aij = add nuw nsw i32 %i.ahq, 2
  %i.aik = add nuw nsw i32 %i.aij, %i.aii
  %i.ail = add nuw nsw i32 %i.aik, %i.aih
  %i.aim = lshr i32 %i.ail, 2
  %i.ain = trunc nuw i32 %i.aim to i16            ; 3 uses
  store i16 %i.ain, ptr %i.afi, align 2, !tbaa !47
  %i.aio = load ptr, ptr @img, align 8, !tbaa !9  ; 60 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8144
  %i.aiq = load i16, ptr @intrapred_luma8x8.PredPel, align 16, !tbaa !47
  %i.air = zext i16 %i.aiq to i32                 ; 4 uses
  %i.ais = add nuw nsw i32 %i.ago, 1
  %i.ait = add nuw nsw i32 %i.ais, %i.air
  %i.aiu = lshr i32 %i.ait, 1
  %i.aiv = trunc nuw i32 %i.aiu to i16            ; 4 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aio, i64 8192
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aio, i64 8204
  store i16 %i.aiv, ptr %i.aix, align 2, !tbaa !47
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aio, i64 8176
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aio, i64 8184
  store i16 %i.aiv, ptr %i.aiz, align 2, !tbaa !47
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aio, i64 8160
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aio, i64 8164
  store i16 %i.aiv, ptr %i.ajb, align 2, !tbaa !47
  store i16 %i.aiv, ptr %i.aip, align 2, !tbaa !47
  %i.ajc = add nuw nsw i32 %i.agm, 1              ; 2 uses
  %i.ajd = add nuw nsw i32 %i.ajc, %i.ago
  %i.aje = lshr i32 %i.ajd, 1
  %i.ajf = trunc nuw i32 %i.aje to i16            ; 4 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aio, i64 8208
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aio, i64 8220
  store i16 %i.ajf, ptr %i.ajh, align 2, !tbaa !47
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aio, i64 8200
  store i16 %i.ajf, ptr %i.aji, align 2, !tbaa !47
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aio, i64 8180
  store i16 %i.ajf, ptr %i.ajj, align 2, !tbaa !47
  store i16 %i.ajf, ptr %i.aja, align 2, !tbaa !47
  %i.ajk = add nuw nsw i32 %i.ajc, %i.agx
  %i.ajl = lshr i32 %i.ajk, 1
  %i.ajm = trunc nuw i32 %i.ajl to i16            ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aio, i64 8224
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aio, i64 8236
  store i16 %i.ajm, ptr %i.ajo, align 2, !tbaa !47
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aio, i64 8216
  store i16 %i.ajm, ptr %i.ajp, align 2, !tbaa !47
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aio, i64 8196
  store i16 %i.ajm, ptr %i.ajq, align 2, !tbaa !47
  store i16 %i.ajm, ptr %i.aiy, align 2, !tbaa !47
  %i.ajr = add nuw nsw i32 %i.agx, 1
  %i.ajs = add nuw nsw i32 %i.ajr, %i.ahh
  %i.ajt = lshr i32 %i.ajs, 1
  %i.aju = trunc nuw i32 %i.ajt to i16            ; 4 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aio, i64 8240
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aio, i64 8252
  store i16 %i.aju, ptr %i.ajw, align 2, !tbaa !47
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aio, i64 8232
  store i16 %i.aju, ptr %i.ajx, align 2, !tbaa !47
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aio, i64 8212
  store i16 %i.aju, ptr %i.ajy, align 2, !tbaa !47
  store i16 %i.aju, ptr %i.aiw, align 2, !tbaa !47
  %i.ajz = add nuw nsw i32 %i.ahh, 1
  %i.aka = add nuw nsw i32 %i.ajz, %i.ahq
  %i.akb = lshr i32 %i.aka, 1
  %i.akc = trunc nuw i32 %i.akb to i16            ; 4 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aio, i64 8256
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aio, i64 8268
  store i16 %i.akc, ptr %i.ake, align 2, !tbaa !47
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aio, i64 8248
  store i16 %i.akc, ptr %i.akf, align 2, !tbaa !47
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aio, i64 8228
  store i16 %i.akc, ptr %i.akg, align 2, !tbaa !47
  store i16 %i.akc, ptr %i.ajg, align 2, !tbaa !47
  %i.akh = add nuw nsw i32 %i.ahq, 1
  %i.aki = add nuw nsw i32 %i.akh, %i.ahz
  %i.akj = lshr i32 %i.aki, 1
  %i.akk = trunc nuw i32 %i.akj to i16            ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aio, i64 8264
  store i16 %i.akk, ptr %i.akl, align 2, !tbaa !47
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aio, i64 8244
  store i16 %i.akk, ptr %i.akm, align 2, !tbaa !47
  store i16 %i.akk, ptr %i.ajn, align 2, !tbaa !47
  %i.akn = add nuw nsw i32 %i.ahz, 1
  %i.ako = add nuw nsw i32 %i.akn, %i.aih
  %i.akp = lshr i32 %i.ako, 1
  %i.akq = trunc nuw i32 %i.akp to i16            ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aio, i64 8260
  store i16 %i.akq, ptr %i.akr, align 2, !tbaa !47
  store i16 %i.akq, ptr %i.ajv, align 2, !tbaa !47
  %i.aks = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !47
  %i.akt = zext i16 %i.aks to i32                 ; 2 uses
  %i.aku = add nuw nsw i32 %i.aih, 1
  %i.akv = add nuw nsw i32 %i.aku, %i.akt
  %i.akw = lshr i32 %i.akv, 1
  %i.akx = trunc nuw i32 %i.akw to i16
  store i16 %i.akx, ptr %i.akd, align 2, !tbaa !47
  %i.aky = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !47
  %i.akz = zext i16 %i.aky to i32                 ; 3 uses
  %i.ala = shl nuw nsw i32 %i.air, 1
  %i.alb = add nuw nsw i32 %i.agz, %i.ala
  %i.alc = add nuw nsw i32 %i.alb, %i.akz
  %i.ald = lshr i32 %i.alc, 2
  %i.ale = trunc nuw i32 %i.ald to i16            ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aio, i64 8206
  store i16 %i.ale, ptr %i.alf, align 2, !tbaa !47
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aio, i64 8186
  store i16 %i.ale, ptr %i.alg, align 2, !tbaa !47
  %i.alh = getelementptr inbounds nuw i8, ptr %i.aio, i64 8166
  store i16 %i.ale, ptr %i.alh, align 2, !tbaa !47
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aio, i64 8146
  store i16 %i.ale, ptr %i.ali, align 2, !tbaa !47
  %i.alj = add nuw nsw i32 %i.ahj, %i.agp
  %i.alk = add nuw nsw i32 %i.alj, %i.air
  %i.all = lshr i32 %i.alk, 2
  %i.alm = trunc nuw i32 %i.all to i16            ; 4 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.aio, i64 8222
  store i16 %i.alm, ptr %i.aln, align 2, !tbaa !47
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aio, i64 8202
  store i16 %i.alm, ptr %i.alo, align 2, !tbaa !47
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aio, i64 8182
  store i16 %i.alm, ptr %i.alp, align 2, !tbaa !47
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aio, i64 8162
  store i16 %i.alm, ptr %i.alq, align 2, !tbaa !47
  %i.alr = getelementptr inbounds nuw i8, ptr %i.aio, i64 8238
  store i16 %i.ahd, ptr %i.alr, align 2, !tbaa !47
  %i.als = getelementptr inbounds nuw i8, ptr %i.aio, i64 8218
  store i16 %i.ahd, ptr %i.als, align 2, !tbaa !47
  %i.alt = getelementptr inbounds nuw i8, ptr %i.aio, i64 8198
  store i16 %i.ahd, ptr %i.alt, align 2, !tbaa !47
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aio, i64 8178
  store i16 %i.ahd, ptr %i.alu, align 2, !tbaa !47
  %i.alv = getelementptr inbounds nuw i8, ptr %i.aio, i64 8254
  store i16 %i.ahn, ptr %i.alv, align 2, !tbaa !47
  %i.alw = getelementptr inbounds nuw i8, ptr %i.aio, i64 8234
  store i16 %i.ahn, ptr %i.alw, align 2, !tbaa !47
  %i.alx = getelementptr inbounds nuw i8, ptr %i.aio, i64 8214
  store i16 %i.ahn, ptr %i.alx, align 2, !tbaa !47
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aio, i64 8194
  store i16 %i.ahn, ptr %i.aly, align 2, !tbaa !47
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aio, i64 8270
  store i16 %i.ahw, ptr %i.alz, align 2, !tbaa !47
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aio, i64 8250
  store i16 %i.ahw, ptr %i.ama, align 2, !tbaa !47
  %i.amb = getelementptr inbounds nuw i8, ptr %i.aio, i64 8230
  store i16 %i.ahw, ptr %i.amb, align 2, !tbaa !47
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aio, i64 8210
  store i16 %i.ahw, ptr %i.amc, align 2, !tbaa !47
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aio, i64 8266
  store i16 %i.aif, ptr %i.amd, align 2, !tbaa !47
  %i.ame = getelementptr inbounds nuw i8, ptr %i.aio, i64 8246
  store i16 %i.aif, ptr %i.ame, align 2, !tbaa !47
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aio, i64 8226
  store i16 %i.aif, ptr %i.amf, align 2, !tbaa !47
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aio, i64 8262
  store i16 %i.ain, ptr %i.amg, align 2, !tbaa !47
  %i.amh = getelementptr inbounds nuw i8, ptr %i.aio, i64 8242
  store i16 %i.ain, ptr %i.amh, align 2, !tbaa !47
  %i.ami = shl nuw nsw i32 %i.aih, 1
  %i.amj = add nuw nsw i32 %i.ahz, 2
  %i.amk = add nuw nsw i32 %i.amj, %i.ami
  %i.aml = add nuw nsw i32 %i.amk, %i.akt
  %i.amm = lshr i32 %i.aml, 2
  %i.amn = trunc nuw i32 %i.amm to i16
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aio, i64 8258
  store i16 %i.amn, ptr %i.amo, align 2, !tbaa !47
  %18 = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 4), align 4, !tbaa !47
  %i.amp = shl nuw nsw i32 %i.akz, 1
  %i.amq = add nuw nsw i32 %i.air, 2
  %i.amr = add nuw nsw i32 %i.amq, %i.amp
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aio, i64 8188
  %i.amt = getelementptr inbounds nuw i8, ptr %i.aio, i64 8168
  %i.amu = getelementptr inbounds nuw i8, ptr %i.aio, i64 8148
  %i.amv = add nuw nsw i32 %i.akz, 2
  %i.amw = getelementptr inbounds nuw i8, ptr %i.aio, i64 8190
  %i.amx = getelementptr inbounds nuw i8, ptr %i.aio, i64 8170
  %i.amy = getelementptr inbounds nuw i8, ptr %i.aio, i64 8150
  %i.amz = getelementptr inbounds nuw i8, ptr %i.aio, i64 8172
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aio, i64 8152
  %19 = zext i16 %18 to i32                       ; 3 uses
  %i.anb = add nuw nsw i32 %i.amr, %19
  %i.anc = lshr i32 %i.anb, 2
  %i.and = trunc nuw i32 %i.anc to i16            ; 3 uses
  store i16 %i.and, ptr %i.ams, align 2, !tbaa !47
  store i16 %i.and, ptr %i.amt, align 2, !tbaa !47
  store i16 %i.and, ptr %i.amu, align 2, !tbaa !47
  %i.ane = shl nuw nsw i32 %19, 1
  %i.anf = add nuw nsw i32 %i.amv, %i.ane
  %20 = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 6), align 2, !tbaa !47
  %21 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 6), align 2, !tbaa !47
  %22 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !47
  %23 = zext i16 %20 to i32
  %24 = zext <4 x i16> %21 to <4 x i32>           ; 2 uses
  %i.ang = add nuw nsw i32 %i.anf, %23
  %i.anh = lshr i32 %i.ang, 2
  %i.ani = trunc nuw i32 %i.anh to i16            ; 3 uses
  store i16 %i.ani, ptr %i.amw, align 2, !tbaa !47
  store i16 %i.ani, ptr %i.amx, align 2, !tbaa !47
  store i16 %i.ani, ptr %i.amy, align 2, !tbaa !47
  %i.anj = zext <4 x i16> %22 to <4 x i32>
  %i.ank = shl nuw nsw <4 x i32> %24, splat (i32 1)
  %25 = insertelement <4 x i32> poison, i32 %19, i64 0
  %26 = shufflevector <4 x i32> %25, <4 x i32> %24, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.anl = add nuw nsw <4 x i32> %26, splat (i32 2)
  %i.anm = add nuw nsw <4 x i32> %i.anl, %i.ank
  %i.ann = add nuw nsw <4 x i32> %i.anm, %i.anj
  %i.ano = lshr <4 x i32> %i.ann, splat (i32 2)
  %i.anp = trunc <4 x i32> %i.ano to <4 x i16>    ; 2 uses
  %i.anq = shufflevector <4 x i16> %i.anp, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %i.anq, ptr %i.amz, align 2, !tbaa !47
  store <4 x i16> %i.anp, ptr %i.ana, align 2, !tbaa !47
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread, %bb.aw
  %i.anr = load ptr, ptr @img, align 8, !tbaa !9  ; 51 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 8400
  %i.ant = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !47
  %i.anu = zext i16 %i.ant to i32                 ; 2 uses
  %i.anv = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !47
  %i.anw = zext i16 %i.anv to i32                 ; 3 uses
  %i.anx = add nuw nsw i32 %i.anw, 1              ; 2 uses
  %i.any = add nuw nsw i32 %i.anx, %i.anu
  %i.anz = lshr i32 %i.any, 1
  %i.aoa = trunc nuw i32 %i.anz to i16
  store i16 %i.aoa, ptr %i.ans, align 2, !tbaa !47
  %i.aob = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !47
  %i.aoc = zext i16 %i.aob to i32                 ; 4 uses
  %i.aod = add nuw nsw i32 %i.anx, %i.aoc
  %i.aoe = lshr i32 %i.aod, 1
  %i.aof = trunc nuw i32 %i.aoe to i16            ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anr, i64 8404
  store i16 %i.aof, ptr %i.aog, align 2, !tbaa !47
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anr, i64 8416
  store i16 %i.aof, ptr %i.aoh, align 2, !tbaa !47
  %i.aoi = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !47
  %i.aoj = zext i16 %i.aoi to i32                 ; 4 uses
  %i.aok = add nuw nsw i32 %i.aoc, 1
  %i.aol = add nuw nsw i32 %i.aok, %i.aoj
  %i.aom = lshr i32 %i.aol, 1
  %i.aon = trunc nuw i32 %i.aom to i16            ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.anr, i64 8408
  store i16 %i.aon, ptr %i.aoo, align 2, !tbaa !47
  %i.aop = getelementptr inbounds nuw i8, ptr %i.anr, i64 8420
  store i16 %i.aon, ptr %i.aop, align 2, !tbaa !47
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.anr, i64 8432
  store i16 %i.aon, ptr %i.aoq, align 2, !tbaa !47
  %i.aor = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !47
  %i.aos = zext i16 %i.aor to i32                 ; 5 uses
  %i.aot = add nuw nsw i32 %i.aoj, 1
  %i.aou = add nuw nsw i32 %i.aot, %i.aos
  %i.aov = lshr i32 %i.aou, 1
  %i.aow = trunc nuw i32 %i.aov to i16            ; 4 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.anr, i64 8412
  store i16 %i.aow, ptr %i.aox, align 2, !tbaa !47
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anr, i64 8424
  store i16 %i.aow, ptr %i.aoy, align 2, !tbaa !47
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anr, i64 8436
  store i16 %i.aow, ptr %i.aoz, align 2, !tbaa !47
  %i.apa = getelementptr inbounds nuw i8, ptr %i.anr, i64 8448
  store i16 %i.aow, ptr %i.apa, align 2, !tbaa !47
  %i.apb = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !47
  %i.apc = zext i16 %i.apb to i32                 ; 5 uses
  %i.apd = add nuw nsw i32 %i.aos, 1
  %i.ape = add nuw nsw i32 %i.apd, %i.apc
  %i.apf = lshr i32 %i.ape, 1
  %i.apg = trunc nuw i32 %i.apf to i16            ; 4 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.anr, i64 8428
  store i16 %i.apg, ptr %i.aph, align 2, !tbaa !47
  %i.api = getelementptr inbounds nuw i8, ptr %i.anr, i64 8440
  store i16 %i.apg, ptr %i.api, align 2, !tbaa !47
  %i.apj = getelementptr inbounds nuw i8, ptr %i.anr, i64 8452
  store i16 %i.apg, ptr %i.apj, align 2, !tbaa !47
  %i.apk = getelementptr inbounds nuw i8, ptr %i.anr, i64 8464
  store i16 %i.apg, ptr %i.apk, align 2, !tbaa !47
  %i.apl = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !47
  %i.apm = zext i16 %i.apl to i32                 ; 5 uses
  %i.apn = add nuw nsw i32 %i.apc, 1
  %i.apo = add nuw nsw i32 %i.apn, %i.apm
  %i.app = lshr i32 %i.apo, 1
  %i.apq = trunc nuw i32 %i.app to i16            ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.anr, i64 8444
  store i16 %i.apq, ptr %i.apr, align 2, !tbaa !47
  %i.aps = getelementptr inbounds nuw i8, ptr %i.anr, i64 8456
  store i16 %i.apq, ptr %i.aps, align 2, !tbaa !47
  %i.apt = getelementptr inbounds nuw i8, ptr %i.anr, i64 8468
  store i16 %i.apq, ptr %i.apt, align 2, !tbaa !47
  %i.apu = getelementptr inbounds nuw i8, ptr %i.anr, i64 8480
  store i16 %i.apq, ptr %i.apu, align 2, !tbaa !47
  %i.apv = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !47 ; 7 uses
  %i.apw = zext i16 %i.apv to i32                 ; 3 uses
  %i.apx = add nuw nsw i32 %i.apm, 1
  %i.apy = add nuw nsw i32 %i.apx, %i.apw
  %i.apz = lshr i32 %i.apy, 1
  %i.aqa = trunc nuw i32 %i.apz to i16            ; 4 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.anr, i64 8460
  store i16 %i.aqa, ptr %i.aqb, align 2, !tbaa !47
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.anr, i64 8472
  store i16 %i.aqa, ptr %i.aqc, align 2, !tbaa !47
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.anr, i64 8484
  store i16 %i.aqa, ptr %i.aqd, align 2, !tbaa !47
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.anr, i64 8496
  store i16 %i.aqa, ptr %i.aqe, align 2, !tbaa !47
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.anr, i64 8526
  store i16 %i.apv, ptr %i.aqf, align 2, !tbaa !47
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.anr, i64 8524
  store i16 %i.apv, ptr %i.aqg, align 2, !tbaa !47
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.anr, i64 8516
  %i.aqi = insertelement <4 x i16> poison, i16 %i.apv, i64 0
  %i.aqj = shufflevector <4 x i16> %i.aqi, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i16> %i.aqj, ptr %i.aqh, align 2, !tbaa !47
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.anr, i64 8500
  %i.aql = insertelement <8 x i16> poison, i16 %i.apv, i64 0
  %i.aqm = shufflevector <8 x i16> %i.aql, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.aqm, ptr %i.aqk, align 2, !tbaa !47
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.anr, i64 8488
  store <4 x i16> %i.aqj, ptr %i.aqn, align 2, !tbaa !47
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.anr, i64 8478
  store i16 %i.apv, ptr %i.aqo, align 2, !tbaa !47
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.anr, i64 8476
  store i16 %i.apv, ptr %i.aqp, align 2, !tbaa !47
  %i.aqq = mul nuw nsw i32 %i.apw, 3
  %i.aqr = add nuw nsw i32 %i.apm, 2
  %i.aqs = add nuw nsw i32 %i.aqr, %i.aqq
  %i.aqt = lshr i32 %i.aqs, 2
  %i.aqu = trunc nuw i32 %i.aqt to i16            ; 4 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.anr, i64 8462
  store i16 %i.aqu, ptr %i.aqv, align 2, !tbaa !47
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.anr, i64 8474
  store i16 %i.aqu, ptr %i.aqw, align 2, !tbaa !47
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.anr, i64 8486
  store i16 %i.aqu, ptr %i.aqx, align 2, !tbaa !47
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.anr, i64 8498
  store i16 %i.aqu, ptr %i.aqy, align 2, !tbaa !47
  %i.aqz = shl nuw nsw i32 %i.apm, 1
  %i.ara = add nuw nsw i32 %i.apc, 2
  %i.arb = add nuw nsw i32 %i.ara, %i.aqz
  %i.arc = add nuw nsw i32 %i.arb, %i.apw
  %i.ard = lshr i32 %i.arc, 2
  %i.are = trunc nuw i32 %i.ard to i16            ; 4 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.anr, i64 8446
  store i16 %i.are, ptr %i.arf, align 2, !tbaa !47
  %i.arg = getelementptr inbounds nuw i8, ptr %i.anr, i64 8458
  store i16 %i.are, ptr %i.arg, align 2, !tbaa !47
  %i.arh = getelementptr inbounds nuw i8, ptr %i.anr, i64 8470
  store i16 %i.are, ptr %i.arh, align 2, !tbaa !47
  %i.ari = getelementptr inbounds nuw i8, ptr %i.anr, i64 8482
  store i16 %i.are, ptr %i.ari, align 2, !tbaa !47
  %i.arj = shl nuw nsw i32 %i.apc, 1
  %i.ark = add nuw nsw i32 %i.aos, 2
  %i.arl = add nuw nsw i32 %i.ark, %i.arj
  %i.arm = add nuw nsw i32 %i.arl, %i.apm
  %i.arn = lshr i32 %i.arm, 2
  %i.aro = trunc nuw i32 %i.arn to i16            ; 4 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.anr, i64 8430
  store i16 %i.aro, ptr %i.arp, align 2, !tbaa !47
  %i.arq = getelementptr inbounds nuw i8, ptr %i.anr, i64 8442
  store i16 %i.aro, ptr %i.arq, align 2, !tbaa !47
  %i.arr = getelementptr inbounds nuw i8, ptr %i.anr, i64 8454
  store i16 %i.aro, ptr %i.arr, align 2, !tbaa !47
  %i.ars = getelementptr inbounds nuw i8, ptr %i.anr, i64 8466
  store i16 %i.aro, ptr %i.ars, align 2, !tbaa !47
  %i.art = shl nuw nsw i32 %i.aos, 1
  %i.aru = add nuw nsw i32 %i.aoj, 2              ; 2 uses
  %i.arv = add nuw nsw i32 %i.aru, %i.art
  %i.arw = add nuw nsw i32 %i.arv, %i.apc
  %i.arx = lshr i32 %i.arw, 2
  %i.ary = trunc nuw i32 %i.arx to i16            ; 4 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.anr, i64 8414
  store i16 %i.ary, ptr %i.arz, align 2, !tbaa !47
  %i.asa = getelementptr inbounds nuw i8, ptr %i.anr, i64 8426
  store i16 %i.ary, ptr %i.asa, align 2, !tbaa !47
  %i.asb = getelementptr inbounds nuw i8, ptr %i.anr, i64 8438
  store i16 %i.ary, ptr %i.asb, align 2, !tbaa !47
  %i.asc = getelementptr inbounds nuw i8, ptr %i.anr, i64 8450
  store i16 %i.ary, ptr %i.asc, align 2, !tbaa !47
  %i.asd = shl nuw nsw i32 %i.aoj, 1
  %i.ase = add nuw nsw i32 %i.aoc, 2              ; 2 uses
  %i.asf = add nuw nsw i32 %i.ase, %i.asd
  %i.asg = add nuw nsw i32 %i.asf, %i.aos
  %i.ash = lshr i32 %i.asg, 2
  %i.asi = trunc nuw i32 %i.ash to i16            ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.anr, i64 8410
  store i16 %i.asi, ptr %i.asj, align 2, !tbaa !47
  %i.ask = getelementptr inbounds nuw i8, ptr %i.anr, i64 8422
  store i16 %i.asi, ptr %i.ask, align 2, !tbaa !47
  %i.asl = getelementptr inbounds nuw i8, ptr %i.anr, i64 8434
  store i16 %i.asi, ptr %i.asl, align 2, !tbaa !47
  %i.asm = shl nuw nsw i32 %i.aoc, 1
  %i.asn = add nuw nsw i32 %i.aru, %i.anw
  %i.aso = add nuw nsw i32 %i.asn, %i.asm
  %i.asp = lshr i32 %i.aso, 2
  %i.asq = trunc nuw i32 %i.asp to i16            ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.anr, i64 8406
  store i16 %i.asq, ptr %i.asr, align 2, !tbaa !47
  %i.ass = getelementptr inbounds nuw i8, ptr %i.anr, i64 8418
  store i16 %i.asq, ptr %i.ass, align 2, !tbaa !47
  %i.ast = shl nuw nsw i32 %i.anw, 1
  %i.asu = add nuw nsw i32 %i.ase, %i.anu
  %i.asv = add nuw nsw i32 %i.asu, %i.ast
  %i.asw = lshr i32 %i.asv, 2
  %i.asx = trunc nuw i32 %i.asw to i16
end_hunk_1
begin_hunk_2_@dct_luma8x8:bb.a
  %i.amg = add i32 %i.amf, %i.ame
  %i.amh = ashr i32 %i.amg, 6
  %i.ami = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.amh, i32 0)
  %i.amj = tail call noundef i32 @llvm.smin.i32(i32 %i.ami, i32 %i.ajj) ; 2 uses
  store i32 %i.amj, ptr %i.alz, align 4, !tbaa !7
  %i.amk = trunc i32 %i.amj to i16
  %i.aml = add nsw i32 %i.aji, %i.ajb
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.amm
  store i16 %i.amk, ptr %i.amn, align 2, !tbaa !47
  %i.amo = load i32, ptr %i.aim, align 8, !tbaa !107 ; 4 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 20 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !7
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.ajc
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !47
  %i.amt = zext i16 %i.ams to i32
  %i.amu = shl nuw nsw i32 %i.amt, 6
  %i.amv = add i32 %i.amq, 32
  %i.amw = add i32 %i.amv, %i.amu
  %i.amx = ashr i32 %i.amw, 6
  %i.amy = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.amx, i32 0)
  %i.amz = tail call noundef i32 @llvm.smin.i32(i32 %i.amy, i32 %i.amo) ; 2 uses
  store i32 %i.amz, ptr %i.amp, align 4, !tbaa !7
  %i.ana = trunc i32 %i.amz to i16
  %i.anb = load i32, ptr %i.air, align 8, !tbaa !28 ; 4 uses
  %i.anc = add nsw i32 %i.anb, %i.ajd
  %i.and = sext i32 %i.anc to i64
  %i.ane = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.and
  store i16 %i.ana, ptr %i.ane, align 2, !tbaa !47
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24 ; 2 uses
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !7
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.aje
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !47
  %i.anj = zext i16 %i.ani to i32
  %i.ank = shl nuw nsw i32 %i.anj, 6
  %i.anl = add i32 %i.ang, 32
  %i.anm = add i32 %i.anl, %i.ank
  %i.ann = ashr i32 %i.anm, 6
  %i.ano = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ann, i32 0)
  %i.anp = tail call noundef i32 @llvm.smin.i32(i32 %i.ano, i32 %i.amo) ; 2 uses
  store i32 %i.anp, ptr %i.anf, align 4, !tbaa !7
  %i.anq = trunc i32 %i.anp to i16
  %i.anr = add nsw i32 %i.anb, %i.ajf
  %i.ans = sext i32 %i.anr to i64
  %i.ant = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.ans
  store i16 %i.anq, ptr %i.ant, align 2, !tbaa !47
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ajn, i64 28 ; 2 uses
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !7
  %i.anw = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.ajg
  %i.anx = load i16, ptr %i.anw, align 2, !tbaa !47
  %i.any = zext i16 %i.anx to i32
  %i.anz = shl nuw nsw i32 %i.any, 6
  %i.aoa = add i32 %i.anv, 32
  %i.aob = add i32 %i.aoa, %i.anz
  %i.aoc = ashr i32 %i.aob, 6
  %i.aod = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.aoc, i32 0)
  %i.aoe = tail call noundef i32 @llvm.smin.i32(i32 %i.aod, i32 %i.amo) ; 2 uses
  store i32 %i.aoe, ptr %i.anu, align 4, !tbaa !7
  %i.aof = trunc i32 %i.aoe to i16
  %i.aog = add nsw i32 %i.anb, %i.ajh
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.aoh
  store i16 %i.aof, ptr %i.aoi, align 2, !tbaa !47
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next555, 8
  br i1 %exitcond557.not, label %.loopexit, label %bb.ac, !llvm.loop !96

bb.ad:                                            ; preds = %.preheader, %bb.ad
  %i.aoj = phi i32 [ %.pre567, %.preheader ], [ %i.arg, %bb.ad ] ; 6 uses
  %indvars.iv562 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next563, %bb.ad ] ; 3 uses
  %i.aok = or disjoint i64 %indvars.iv562, %i.abv ; 2 uses
  %i.aol = load i32, ptr %i.abn, align 4, !tbaa !29
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [64 x i8], ptr %i.abo, i64 %indvars.iv562 ; 9 uses
  %i.aoo = getelementptr inbounds [32 x i8], ptr %i.abp, i64 %i.aok ; 8 uses
  %i.aop = getelementptr [8 x i8], ptr %i.abs, i64 %i.aok
  %i.aoq = getelementptr [8 x i8], ptr %i.aop, i64 %i.aom
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !46 ; 8 uses
  %i.aos = load i32, ptr %i.aon, align 4, !tbaa !7
  %i.aot = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.abu
  %i.aou = load i16, ptr %i.aot, align 2, !tbaa !47
  %i.aov = zext i16 %i.aou to i32
  %i.aow = add nsw i32 %i.aos, %i.aov             ; 2 uses
  store i32 %i.aow, ptr %i.aon, align 4, !tbaa !7
  %i.aox = trunc i32 %i.aow to i16
  %i.aoy = add nsw i32 %i.aoj, %i.e
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aoz
  store i16 %i.aox, ptr %i.apa, align 2, !tbaa !47
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aon, i64 4 ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !7
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.abw
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !47
  %i.apf = zext i16 %i.ape to i32
  %i.apg = add nsw i32 %i.apc, %i.apf             ; 2 uses
  store i32 %i.apg, ptr %i.apb, align 4, !tbaa !7
  %i.aph = trunc i32 %i.apg to i16
  %i.api = add nsw i32 %i.aoj, %i.abx
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.apj
  store i16 %i.aph, ptr %i.apk, align 2, !tbaa !47
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aon, i64 8 ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !7
  %i.apn = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aby
  %i.apo = load i16, ptr %i.apn, align 2, !tbaa !47
  %i.app = zext i16 %i.apo to i32
  %i.apq = add nsw i32 %i.apm, %i.app             ; 2 uses
  store i32 %i.apq, ptr %i.apl, align 4, !tbaa !7
  %i.apr = trunc i32 %i.apq to i16
  %i.aps = add nsw i32 %i.aoj, %i.abz
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.apt
  store i16 %i.apr, ptr %i.apu, align 2, !tbaa !47
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aon, i64 12 ; 2 uses
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !7
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aca
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !47
  %i.apz = zext i16 %i.apy to i32
  %i.aqa = add nsw i32 %i.apw, %i.apz             ; 2 uses
  store i32 %i.aqa, ptr %i.apv, align 4, !tbaa !7
  %i.aqb = trunc i32 %i.aqa to i16
  %i.aqc = add nsw i32 %i.aoj, %i.acb
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqd
  store i16 %i.aqb, ptr %i.aqe, align 2, !tbaa !47
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aon, i64 16 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !7
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.acc
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !47
  %i.aqj = zext i16 %i.aqi to i32
  %i.aqk = add nsw i32 %i.aqg, %i.aqj             ; 2 uses
  store i32 %i.aqk, ptr %i.aqf, align 4, !tbaa !7
  %i.aql = trunc i32 %i.aqk to i16
  %i.aqm = add nsw i32 %i.aoj, %i.acd
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqn
  store i16 %i.aql, ptr %i.aqo, align 2, !tbaa !47
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aon, i64 20 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !7
  %i.aqr = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.ace
  %i.aqs = load i16, ptr %i.aqr, align 2, !tbaa !47
  %i.aqt = zext i16 %i.aqs to i32
  %i.aqu = add nsw i32 %i.aqq, %i.aqt             ; 2 uses
  store i32 %i.aqu, ptr %i.aqp, align 4, !tbaa !7
  %i.aqv = trunc i32 %i.aqu to i16
  %i.aqw = add nsw i32 %i.aoj, %i.acf
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqx
  store i16 %i.aqv, ptr %i.aqy, align 2, !tbaa !47
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aon, i64 24 ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !7
  %i.arb = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.acg
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !47
  %i.ard = zext i16 %i.arc to i32
  %i.are = add nsw i32 %i.ara, %i.ard             ; 2 uses
  store i32 %i.are, ptr %i.aqz, align 4, !tbaa !7
  %i.arf = trunc i32 %i.are to i16
  %i.arg = load i32, ptr %i.abt, align 8, !tbaa !28 ; 3 uses
  %i.arh = add nsw i32 %i.arg, %i.ach
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.ari
  store i16 %i.arf, ptr %i.arj, align 2, !tbaa !47
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aon, i64 28 ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !7
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aci
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !47
  %i.aro = zext i16 %i.arn to i32
  %i.arp = add nsw i32 %i.arl, %i.aro             ; 2 uses
  store i32 %i.arp, ptr %i.ark, align 4, !tbaa !7
  %i.arq = trunc i32 %i.arp to i16
  %i.arr = add nsw i32 %i.arg, %i.acj
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.ars
  store i16 %i.arq, ptr %i.art, align 2, !tbaa !47
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 8
  br i1 %exitcond565.not, label %.loopexit, label %bb.ad, !llvm.loop !97

.loopexit:                                        ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LowPassForIntra8x8Pred(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 2 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 6 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 3 uses
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %i.a = load <6 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %i.b = load <8 x i16>, ptr %.sroa.9.0..sroa_idx, align 2
  %i.c = load <8 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 22
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 28 ; 3 uses
  %i.d = load <3 x i16>, ptr %.sroa.17.0..sroa_idx, align 2 ; 2 uses
  %i.e = shufflevector <3 x i16> %i.d, <3 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.f = load <4 x i16>, ptr %.sroa.17.0..sroa_idx, align 2
  %i.g = load <4 x i16>, ptr %.sroa.18.0..sroa_idx, align 2 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr i8, ptr %0, i64 30 ; 2 uses
  %i.h = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.23.0.copyload = load i16, ptr %.sroa.23.0..sroa_idx, align 2
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 6 uses
  %.sroa.26.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 38
  %.sroa.28.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.29.0..sroa_idx = getelementptr i8, ptr %0, i64 42
  %i.i = load <8 x i16>, ptr %.sroa.24.0..sroa_idx, align 2 ; 3 uses
  %i.j = icmp ne i32 %2, 0                        ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i16 %.sroa.0.0.copyload to i32
  %i.l = zext i16 %.sroa.9.0.copyload to i32      ; 3 uses
  %i.m = add nuw nsw i32 %i.k, 2
  %i.n = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.m, %i.o
  %i.q = add nuw nsw i32 %i.p, %i.l
  %.pre120 = add nuw nsw i32 %i.l, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = zext i16 %.sroa.9.0.copyload to i32      ; 2 uses
  %i.s = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi121 = phi i32 [ %i.u, %bb.d ], [ %.pre120, %bb.c ]
  %.pre-phi119 = phi i32 [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.pre-phi = phi i32 [ %i.s, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.7.0.in.in = phi i32 [ %i.v, %bb.d ], [ %i.q, %bb.c ]
  %.sroa.7.0.in = lshr i32 %.sroa.7.0.in.in, 2
  %.sroa.7.0 = trunc nuw i32 %.sroa.7.0.in to i16
  %i.w = zext <6 x i16> %i.a to <6 x i32>
  %i.x = zext <8 x i16> %i.c to <8 x i32>         ; 3 uses
  %i.y = insertelement <8 x i32> poison, i32 %.pre-phi, i64 0
  %i.z = insertelement <8 x i32> %i.y, i32 %.pre-phi121, i64 1
  %i.aa = shufflevector <6 x i32> %i.w, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ab = shufflevector <8 x i32> %i.z, <8 x i32> %i.aa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 3 uses
  %i.ac = zext <4 x i16> %i.e to <4 x i32>        ; 3 uses
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.x, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 6, i32 7, i32 14>
  %i.ae = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ad, <8 x i32> <i32 poison, i32 2, i32 3, i32 4, i32 12, i32 13, i32 14, i32 15>
  %i.af = insertelement <8 x i32> %i.ae, i32 %.pre-phi119, i64 0
  %i.ag = shl nuw nsw <8 x i32> %i.af, splat (i32 1)
  %i.ah = add nuw nsw <8 x i32> %i.ab, <i32 2, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = add nuw nsw <8 x i32> %i.ai, %i.x
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 2)
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  %i.am = zext <4 x i16> %i.g to <4 x i32>
  %4 = shufflevector <3 x i16> %i.d, <3 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %5 = shufflevector <4 x i16> %4, <4 x i16> %i.g, <4 x i32> <i32 poison, i32 1, i32 2, i32 6>
  %6 = insertelement <4 x i16> %5, i16 2, i64 0
  %7 = zext <4 x i16> %6 to <4 x i32>             ; 2 uses
  %8 = shufflevector <8 x i32> %i.x, <8 x i32> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <4 x i32> %i.ac, <4 x i32> %7, <4 x i32> <i32 poison, i32 2, i32 3, i32 7>
  %10 = shufflevector <4 x i32> %8, <4 x i32> %9, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.an = add nuw nsw <4 x i32> %10, %7
  %i.ao = shufflevector <4 x i32> %i.ac, <4 x i32> <i32 poison, i32 2, i32 2, i32 2>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ap = add nuw nsw <4 x i32> %i.ao, %i.ac
  %i.aq = add nuw nsw <4 x i32> %i.ap, %i.an
  %i.ar = add nuw nsw <4 x i32> %i.aq, %i.am
  %i.as = lshr <4 x i32> %i.ar, splat (i32 2)
  %i.at = trunc <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr i8, ptr %0, i64 26
  %i.av = load <2 x i16>, ptr %i.au, align 2, !tbaa !47
  %i.aw = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2, !tbaa !47
  %i.ax = zext <2 x i16> %i.av to <2 x i32>
  %i.ay = load <2 x i16>, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !47
  %i.az = load i16, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !47
  %i.ba = zext <2 x i16> %i.aw to <2 x i32>
  %i.bb = zext <2 x i16> %i.ay to <2 x i32>       ; 2 uses
  %i.bc = zext i16 %i.az to i32
  %i.bd = shl nuw nsw <2 x i32> %i.ba, splat (i32 1)
  %i.be = add nuw nsw <2 x i32> %i.ax, splat (i32 2)
  %i.bf = add nuw nsw <2 x i32> %i.be, %i.bd
  %i.bg = add nuw nsw <2 x i32> %i.bf, %i.bb
  %i.bh = lshr <2 x i32> %i.bg, splat (i32 2)
  %i.bi = trunc <2 x i32> %i.bh to <2 x i16>
  %i.bj = extractelement <2 x i32> %i.bb, i64 1
  %i.bk = mul nuw nsw i32 %i.bj, 3
  %i.bl = add nuw nsw i32 %i.bc, 2
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %i.bn = lshr i32 %i.bm, 2
  %i.bo = trunc nuw i32 %i.bn to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.sroa.23.0 = phi i16 [ %i.bo, %bb.e ], [ %.sroa.23.0.copyload, %bb.a ]
  %.sroa.7.1 = phi i16 [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0.copyload, %bb.a ]
  %i.bp = phi <8 x i16> [ %i.al, %bb.e ], [ %i.b, %bb.a ]
  %i.bq = phi <4 x i16> [ %i.at, %bb.e ], [ %i.f, %bb.a ]
  %i.br = phi <2 x i16> [ %i.bi, %bb.e ], [ %i.h, %bb.a ]
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = icmp ne i32 %3, 0                       ; 3 uses
  %or.cond = and i1 %i.j, %i.bs
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = load i16, ptr %0, align 2, !tbaa !47
  %i.bw = zext i16 %i.bv to i32                   ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !47
  %i.bz = zext i16 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bu, 2
  %i.cb = add nuw nsw i32 %i.ca, %i.bx
  %i.cc = add nuw nsw i32 %i.cb, %i.bz
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = trunc nuw i32 %i.cd to i16
  br label %.thread61

bb.i:                                             ; preds = %bb.g
  br i1 %i.j, label %.thread62, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bs, label %bb.k, label %.thread59

bb.k:                                             ; preds = %bb.j
  %i.cf = load i16, ptr %0, align 2, !tbaa !47
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = mul nuw nsw i32 %i.cg, 3
  %i.ci = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = add nuw nsw i32 %i.cj, 2
  %i.cl = add nuw nsw i32 %i.ck, %i.ch
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = trunc nuw i32 %i.cm to i16
  br label %.thread61

bb.l:                                             ; preds = %bb.f
  %.not57 = icmp eq i32 %3, 0
  br i1 %.not57, label %.thread59, label %bb.m

.thread62:                                        ; preds = %bb.i
  %i.co = load i16, ptr %0, align 2, !tbaa !47
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = mul nuw nsw i32 %i.cp, 3
  %i.cr = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !47
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cs, 2
  %i.cu = add nuw nsw i32 %i.ct, %i.cq
  %i.cv = lshr i32 %i.cu, 2
  %i.cw = trunc nuw i32 %i.cv to i16              ; 2 uses
  br i1 %i.bs, label %.thread62..thread61_crit_edge, label %.thread59

.thread62..thread61_crit_edge:                    ; preds = %.thread62
  %.pre = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %.pre127 = zext i16 %.pre to i32
  br label %.thread61

.thread61:                                        ; preds = %.thread62..thread61_crit_edge, %bb.h, %bb.k
  %.pre-phi128 = phi i32 [ %.pre127, %.thread62..thread61_crit_edge ], [ %i.bu, %bb.h ], [ %i.cj, %bb.k ] ; 2 uses
  %.pre-phi126 = phi i32 [ %i.cp, %.thread62..thread61_crit_edge ], [ %i.bw, %bb.h ], [ %i.cg, %bb.k ]
  %.sroa.0.0 = phi i16 [ %i.cw, %.thread62..thread61_crit_edge ], [ %i.ce, %bb.h ], [ %i.cn, %bb.k ]
  %i.cx = shl nuw nsw i32 %.pre-phi128, 1
  %i.cy = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !47
  %i.cz = zext i16 %i.cy to i32                   ; 3 uses
  %i.da = add nuw nsw i32 %.pre-phi126, 2
  %i.db = add nuw nsw i32 %i.da, %i.cx
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %.pre124 = add nuw nsw i32 %i.cz, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dd = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = mul nuw nsw i32 %i.de, 3
  %i.dg = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !47
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = add nuw nsw i32 %i.dh, 2                ; 2 uses
  %i.dj = add nuw nsw i32 %i.di, %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread61
  %.pre-phi125 = phi i32 [ %i.di, %bb.m ], [ %.pre124, %.thread61 ]
  %.pre-phi123 = phi i32 [ %i.dh, %bb.m ], [ %i.cz, %.thread61 ]
  %.pre-phi122 = phi i32 [ %i.de, %bb.m ], [ %.pre-phi128, %.thread61 ]
  %.sroa.24.0.in.in = phi i32 [ %i.dj, %bb.m ], [ %i.dc, %.thread61 ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.0.copyload, %bb.m ], [ %.sroa.0.0, %.thread61 ]
  %.sroa.24.0.in = lshr i32 %.sroa.24.0.in.in, 2
  %.sroa.24.0 = trunc i32 %.sroa.24.0.in to i16
  %i.dk = shl nuw nsw i32 %.pre-phi123, 1
  %i.dl = add nuw nsw i32 %.pre-phi122, 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dk
  %i.dn = load <4 x i16>, ptr %.sroa.27.0..sroa_idx, align 2, !tbaa !47
  %i.do = load <4 x i16>, ptr %.sroa.28.0..sroa_idx, align 2, !tbaa !47
  %i.dp = load <4 x i16>, ptr %.sroa.29.0..sroa_idx, align 2, !tbaa !47
  %i.dq = zext <4 x i16> %i.dn to <4 x i32>       ; 3 uses
  %i.dr = extractelement <4 x i32> %i.dq, i64 0   ; 2 uses
  %i.ds = add nuw nsw i32 %i.dm, %i.dr
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc i32 %i.dt to i16
  %i.dv = shl nuw nsw i32 %i.dr, 1
  %i.dw = add nuw nsw i32 %.pre-phi125, %i.dv
  %11 = zext <4 x i16> %i.do to <4 x i32>         ; 2 uses
  %i.dx = extractelement <4 x i32> %i.dq, i64 1
  %i.dy = add nuw nsw i32 %i.dw, %i.dx
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc i32 %i.dz to i16
  %12 = zext <4 x i16> %i.dp to <4 x i32>         ; 2 uses
  %i.eb = shl nuw nsw <4 x i32> %11, splat (i32 1)
  %i.ec = add nuw nsw <4 x i32> %i.dq, splat (i32 2)
  %i.ed = add nuw nsw <4 x i32> %i.ec, %i.eb
  %i.ee = add nuw nsw <4 x i32> %i.ed, %12
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 2)
  %i.eg = trunc <4 x i32> %i.ef to <4 x i16>
  %i.eh = extractelement <4 x i32> %12, i64 3     ; 2 uses
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %13 = extractelement <4 x i32> %11, i64 3
  %14 = add nuw nsw i32 %13, 2
  %i.ej = add nuw nsw i32 %14, %i.eh
  %i.ek = add nuw nsw i32 %i.ej, %i.ei
  %i.el = lshr i32 %i.ek, 2
  %i.em = trunc i32 %i.el to i16
  %i.en = insertelement <8 x i16> poison, i16 %.sroa.24.0, i64 0
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.du, i64 1
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.ea, i64 2
  %i.eq = shufflevector <4 x i16> %i.eg, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i16> %i.ep, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.es = insertelement <8 x i16> %i.er, i16 %i.em, i64 7
  br label %.thread59

.thread59:                                        ; preds = %bb.j, %.thread62, %bb.n, %bb.l
  %.sroa.0.2 = phi i16 [ %.sroa.0.0.copyload, %bb.l ], [ %.sroa.0.1, %bb.n ], [ %i.cw, %.thread62 ], [ %.sroa.0.0.copyload, %bb.j ]
  %i.et = phi <8 x i16> [ %i.i, %bb.l ], [ %i.es, %bb.n ], [ %i.i, %.thread62 ], [ %i.i, %bb.j ]
  store i16 %.sroa.0.2, ptr %0, align 2
  store i16 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 2
  store <8 x i16> %i.bp, ptr %.sroa.9.0..sroa_idx, align 2
  store <4 x i16> %i.bq, ptr %.sroa.17.0..sroa_idx, align 2
  store <2 x i16> %i.br, ptr %.sroa.21.0..sroa_idx, align 2
  store i16 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 2
  store <8 x i16> %i.et, ptr %.sroa.24.0..sroa_idx, align 2
  ret void
}

declare i32 @writeCoeff4x4_CAVLC(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @writeLumaCoeff8x8_CABAC(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"any p2 pointer", !8, i64 0}
!12 = !{!"p2 omnipotent char", !11, i64 0}
!13 = !{!"any p3 pointer", !11, i64 0}
!14 = !{!"p3 int", !13, i64 0}
!15 = !{!"any p4 pointer", !13, i64 0}
!16 = !{!"p4 int", !15, i64 0}
!17 = !{!"p1 _ZTS10macroblock", !8, i64 0}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!"any p5 pointer", !15, i64 0}
!21 = !{!"any p6 pointer", !20, i64 0}
!22 = !{!"p6 short", !21, i64 0}
!23 = !{!"p1 _ZTS18DecRefPicMarking_s", !8, i64 0}
!24 = !{!"p2 double", !11, i64 0}
!25 = !{!"p3 double", !13, i64 0}
!26 = !{!"short", !5, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !10, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !14, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !16, i64 14160, !14, i64 14168, !14, i64 14176, !14, i64 14184, !16, i64 14192, !16, i64 14200, !8, i64 14208, !8, i64 14216, !17, i64 14224, !18, i64 14232, !18, i64 14240, !6, i64 14248, !6, i64 14252, !6, i64 14256, !6, i64 14260, !5, i64 14264, !6, i64 14328, !6, i64 14332, !6, i64 14336, !6, i64 14340, !6, i64 14344, !19, i64 14352, !6, i64 14360, !6, i64 14364, !6, i64 14368, !6, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !5, i64 14408, !6, i64 14440, !6, i64 14444, !6, i64 14448, !6, i64 14452, !6, i64 14456, !6, i64 14460, !6, i64 14464, !6, i64 14468, !5, i64 14472, !6, i64 15240, !6, i64 15244, !6, i64 15248, !6, i64 15252, !6, i64 15256, !6, i64 15260, !6, i64 15264, !6, i64 15268, !6, i64 15272, !6, i64 15276, !6, i64 15280, !6, i64 15284, !6, i64 15288, !5, i64 15292, !6, i64 15296, !6, i64 15300, !5, i64 15304, !6, i64 15312, !6, i64 15316, !6, i64 15320, !6, i64 15324, !6, i64 15328, !6, i64 15332, !6, i64 15336, !6, i64 15340, !6, i64 15344, !6, i64 15348, !6, i64 15352, !6, i64 15356, !6, i64 15360, !6, i64 15364, !6, i64 15368, !6, i64 15372, !23, i64 15376, !6, i64 15384, !6, i64 15388, !6, i64 15392, !6, i64 15396, !6, i64 15400, !6, i64 15404, !6, i64 15408, !6, i64 15412, !6, i64 15416, !6, i64 15420, !6, i64 15424, !6, i64 15428, !6, i64 15432, !6, i64 15436, !6, i64 15440, !6, i64 15444, !6, i64 15448, !6, i64 15452, !6, i64 15456, !6, i64 15460, !6, i64 15464, !6, i64 15468, !6, i64 15472, !24, i64 15480, !25, i64 15488, !14, i64 15496, !24, i64 15504, !6, i64 15512, !6, i64 15516, !6, i64 15520, !6, i64 15524, !6, i64 15528, !6, i64 15532, !6, i64 15536, !6, i64 15540, !6, i64 15544, !6, i64 15548, !5, i64 15552, !5, i64 15576, !6, i64 15584, !6, i64 15588, !26, i64 15592, !6, i64 15596, !6, i64 15600, !6, i64 15604, !6, i64 15608, !6, i64 15612}
!28 = !{!27, !6, i64 176}
!29 = !{!27, !6, i64 180}
!30 = !{!27, !6, i64 196}
!31 = !{!"p2 short", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!27, !17, i64 14224}
!34 = !{!27, !6, i64 12}
!35 = !{!"p1 omnipotent char", !8, i64 0}
!36 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !6, i64 1560, !6, i64 1564, !6, i64 1568, !6, i64 1572, !6, i64 1576, !6, i64 1580, !5, i64 1584, !6, i64 2084, !6, i64 2088, !6, i64 2092, !6, i64 2096, !6, i64 2100, !6, i64 2104, !6, i64 2108, !6, i64 2112, !6, i64 2116, !6, i64 2120, !6, i64 2124, !6, i64 2128, !6, i64 2132, !6, i64 2136, !6, i64 2140, !6, i64 2144, !6, i64 2148, !6, i64 2152, !6, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !6, i64 2928, !6, i64 2932, !6, i64 2936, !6, i64 2940, !6, i64 2944, !6, i64 2948, !6, i64 2952, !6, i64 2956, !6, i64 2960, !6, i64 2964, !6, i64 2968, !6, i64 2972, !5, i64 2976, !6, i64 4000, !6, i64 4004, !6, i64 4008, !6, i64 4012, !6, i64 4016, !6, i64 4020, !6, i64 4024, !6, i64 4028, !6, i64 4032, !6, i64 4036, !6, i64 4040, !6, i64 4044, !6, i64 4048, !6, i64 4052, !6, i64 4056, !6, i64 4060, !6, i64 4064, !6, i64 4068, !6, i64 4072, !6, i64 4076, !19, i64 4080, !6, i64 4088, !6, i64 4092, !6, i64 4096, !6, i64 4100, !6, i64 4104, !6, i64 4108, !6, i64 4112, !6, i64 4116, !6, i64 4120, !6, i64 4124, !6, i64 4128, !6, i64 4132, !6, i64 4136, !6, i64 4140, !6, i64 4144, !6, i64 4148, !6, i64 4152, !6, i64 4156, !6, i64 4160, !6, i64 4164, !6, i64 4168, !6, i64 4172, !6, i64 4176, !6, i64 4180, !6, i64 4184, !6, i64 4188, !5, i64 4192, !5, i64 4448, !6, i64 4704, !6, i64 4708, !6, i64 4712, !6, i64 4716, !6, i64 4720, !6, i64 4724, !6, i64 4728, !6, i64 4732, !6, i64 4736, !6, i64 4740, !6, i64 4744, !6, i64 4748, !6, i64 4752, !6, i64 4756, !6, i64 4760, !6, i64 4764, !6, i64 4768, !6, i64 4772, !5, i64 4776, !6, i64 5032, !6, i64 5036, !18, i64 5040, !18, i64 5048, !35, i64 5056, !18, i64 5064, !6, i64 5072, !6, i64 5076, !6, i64 5080, !6, i64 5084, !6, i64 5088, !6, i64 5092, !6, i64 5096, !6, i64 5100, !6, i64 5104, !6, i64 5108, !6, i64 5112, !6, i64 5116, !6, i64 5120, !6, i64 5124, !6, i64 5128, !6, i64 5132, !6, i64 5136, !19, i64 5144, !19, i64 5152, !19, i64 5160, !5, i64 5168, !6, i64 5208, !5, i64 5212, !6, i64 5244, !6, i64 5248, !6, i64 5252, !6, i64 5256, !6, i64 5260, !6, i64 5264, !6, i64 5268, !6, i64 5272, !6, i64 5276, !6, i64 5280, !6, i64 5284, !6, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !6, i64 5648, !6, i64 5652, !6, i64 5656, !6, i64 5660, !5, i64 5664, !5, i64 5704, !6, i64 5744, !6, i64 5748, !6, i64 5752, !6, i64 5756, !6, i64 5760, !6, i64 5764, !6, i64 5768, !6, i64 5772, !6, i64 5776, !5, i64 5780, !6, i64 5792}
!37 = !{!36, !6, i64 272}
!38 = !{!"pix_pos", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!39 = !{!38, !6, i64 0}
!40 = !{!27, !18, i64 14240}
!41 = !{!38, !6, i64 4}
!42 = !{!38, !6, i64 20}
!43 = !{!38, !6, i64 16}
!44 = !{!5, !5, i64 0}
!45 = !{!"p1 short", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!26, !26, i64 0}
!48 = !{!16, !16, i64 0}
!49 = !{!14, !14, i64 0}
!50 = !{!"p2 int", !11, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!18, !18, i64 0}
!53 = !{!27, !16, i64 14160}
!54 = !{!"p1 _ZTS16storable_picture", !8, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p4 short", !15, i64 0}
!57 = !{!"p5 short", !20, i64 0}
!58 = !{!"p3 short", !13, i64 0}
!59 = !{!"p3 omnipotent char", !13, i64 0}
!60 = !{!"p3 long long", !13, i64 0}
!61 = !{!"storable_picture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !6, i64 6360, !6, i64 6364, !6, i64 6368, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !6, i64 6392, !6, i64 6396, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !31, i64 6440, !56, i64 6448, !56, i64 6456, !57, i64 6464, !58, i64 6472, !35, i64 6480, !59, i64 6488, !60, i64 6496, !60, i64 6504, !56, i64 6512, !12, i64 6520, !12, i64 6528, !54, i64 6536, !54, i64 6544, !54, i64 6552, !6, i64 6560, !6, i64 6564, !6, i64 6568, !6, i64 6572, !6, i64 6576, !6, i64 6580, !6, i64 6584}
!62 = !{!61, !31, i64 6440}
!63 = !{!27, !6, i64 15260}
!64 = !{!27, !14, i64 14184}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!36, !6, i64 4008}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !65}
!69 = !{!27, !6, i64 192}
!70 = !{!12, !12, i64 0}
!71 = !{!35, !35, i64 0}
!72 = !{!36, !6, i64 4168}
!73 = !{!27, !12, i64 136}
!74 = !{!27, !6, i64 164}
!75 = !{!27, !6, i64 160}
!76 = !{!27, !6, i64 15512}
!77 = distinct !{!77, !65}
!78 = !{!27, !8, i64 14216}
!79 = !{!36, !6, i64 4016}
!80 = !{!27, !18, i64 14232}
!81 = !{!"syntaxelement", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !8, i64 32}
!82 = !{!81, !6, i64 4}
!83 = !{!81, !6, i64 24}
!84 = !{!81, !6, i64 0}
!85 = !{!27, !6, i64 20}
!86 = !{!"p1 _ZTS13datapartition", !8, i64 0}
!87 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !86, i64 24, !8, i64 32, !8, i64 40, !6, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !6, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !8, i64 112, !5, i64 120}
!88 = !{!87, !86, i64 24}
!89 = !{!81, !6, i64 12}
!90 = distinct !{!90, !65, !103, !104}
!91 = distinct !{!91, !65, !103, !104}
!92 = distinct !{!92, !65}
!93 = distinct !{!93, !65}
!94 = distinct !{!94, !65, !103, !104}
!95 = distinct !{!95, !65, !103, !104}
!96 = distinct !{!96, !65}
!97 = distinct !{!97, !65}
!98 = !{!27, !6, i64 44}
!99 = !{!27, !6, i64 15540}
!100 = !{!"long long", !5, i64 0}
!101 = !{!"macroblock", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 20, !5, i64 24, !17, i64 56, !17, i64 64, !6, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !6, i64 364, !100, i64 368, !5, i64 376, !5, i64 392, !100, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !6, i64 428, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !26, i64 480, !19, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528}
!102 = !{!101, !6, i64 428}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = !{!101, !6, i64 472}
!106 = !{!36, !6, i64 4180}
!107 = !{!27, !6, i64 15520}
end_hunk_2
