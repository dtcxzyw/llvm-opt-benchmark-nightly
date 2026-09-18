Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exr?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dwa_uncompress:bb.a
  %i.md = load float, ptr %i.lz, align 4, !tbaa !213
  %i.me = load float, ptr %i.ma, align 4, !tbaa !213
  %i.mf = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 1
  %i.mh = insertelement <4 x float> %i.mg, float %i.md, i64 2
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 3 ; 2 uses
  %i.mj = fmul nsz <4 x float> %i.mi, splat (float f0x3EEC835E)
  %i.mk = fmul nsz <4 x float> %i.mi, splat (float f0x3E43EF15)
  %i.ml = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.mm = getelementptr i8, ptr %i.lu, i64 56
  %i.mn = getelementptr i8, ptr %i.lv, i64 88
  %i.mo = getelementptr i8, ptr %i.lw, i64 120
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !213
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !213
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !213
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !213
  %i.mt = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 1
  %i.mv = insertelement <4 x float> %i.mu, float %i.mr, i64 2
  %i.mw = insertelement <4 x float> %i.mv, float %i.ms, i64 3 ; 2 uses
  %i.mx = fmul nsz <4 x float> %i.mw, splat (float f0x3EEC835E)
  %i.my = fmul nsz <4 x float> %i.mw, splat (float f0x3E43EF15)
  %i.mz = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.na = getelementptr i8, ptr %i.lu, i64 36
  %i.nb = getelementptr i8, ptr %i.lv, i64 68
  %i.nc = getelementptr i8, ptr %i.lw, i64 100
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !213
  %i.ne = load float, ptr %i.na, align 4, !tbaa !213
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !213
  %i.ng = load float, ptr %i.nc, align 4, !tbaa !213
  %i.nh = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 1
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 2
  %i.nk = insertelement <4 x float> %i.nj, float %i.ng, i64 3 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.nm = getelementptr i8, ptr %i.lu, i64 44
  %i.nn = getelementptr i8, ptr %i.lv, i64 76
  %i.no = getelementptr i8, ptr %i.lw, i64 108
  %i.np = load float, ptr %i.nl, align 4, !tbaa !213
  %i.nq = load float, ptr %i.nm, align 4, !tbaa !213
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !213
  %i.ns = load float, ptr %i.no, align 4, !tbaa !213
  %i.nt = insertelement <4 x float> poison, float %i.np, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.nq, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 2
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 3 ; 4 uses
  %i.nx = fmul nsz <4 x float> %i.nw, splat (float f0x3ED4DB31)
  %i.ny = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> splat (float f0x3EFB14BE), <4 x float> %i.nx)
  %i.nz = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.oa = getelementptr i8, ptr %i.lu, i64 52
  %i.ob = getelementptr i8, ptr %i.lv, i64 84
  %i.oc = getelementptr i8, ptr %i.lw, i64 116
  %i.od = load float, ptr %i.nz, align 4, !tbaa !213
  %i.oe = load float, ptr %i.oa, align 4, !tbaa !213
  %i.of = load float, ptr %i.ob, align 4, !tbaa !213
  %i.og = load float, ptr %i.oc, align 4, !tbaa !213
  %i.oh = insertelement <4 x float> poison, float %i.od, i64 0
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 1
  %i.oj = insertelement <4 x float> %i.oi, float %i.of, i64 2
  %i.ok = insertelement <4 x float> %i.oj, float %i.og, i64 3 ; 4 uses
  %i.ol = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.ny)
  %i.om = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.on = getelementptr i8, ptr %i.lu, i64 60
  %i.oo = getelementptr i8, ptr %i.lv, i64 92
  %i.op = getelementptr i8, ptr %i.lw, i64 124
  %i.oq = load float, ptr %i.om, align 4, !tbaa !213
  %i.or = load float, ptr %i.on, align 4, !tbaa !213
  %i.os = load float, ptr %i.oo, align 4, !tbaa !213
  %i.ot = load float, ptr %i.op, align 4, !tbaa !213
  %i.ou = insertelement <4 x float> poison, float %i.oq, i64 0
  %i.ov = insertelement <4 x float> %i.ou, float %i.or, i64 1
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 2
  %i.ox = insertelement <4 x float> %i.ow, float %i.ot, i64 3 ; 4 uses
  %i.oy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.ol) ; 2 uses
  %i.oz = fmul nsz <4 x float> %i.nw, splat (float f0xBDC7C5C4)
  %i.pa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.oz)
  %i.pb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.pa)
  %i.pc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> splat (float f0xBE8E39DA), <4 x float> %i.pb) ; 2 uses
  %i.pd = fmul nsz <4 x float> %i.nw, splat (float f0xBEFB14BE)
  %i.pe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.pd)
  %i.pf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.pe)
  %i.pg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.pf) ; 2 uses
  %i.ph = fmul nsz <4 x float> %i.nw, splat (float f0xBE8E39DA)
  %i.pi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.ph)
  %i.pj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.pi)
  %i.pk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.pj) ; 2 uses
  %i.pl = load float, ptr %next.gep, align 4, !tbaa !213
  %i.pm = load float, ptr %next.gep551, align 4, !tbaa !213
  %i.pn = load float, ptr %next.gep552, align 4, !tbaa !213
  %i.po = load float, ptr %next.gep553, align 4, !tbaa !213
  %i.pp = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pq = insertelement <4 x float> %i.pp, float %i.pm, i64 1
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 2
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 3 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.pu = getelementptr i8, ptr %i.lu, i64 48
  %i.pv = getelementptr i8, ptr %i.lv, i64 80
  %i.pw = getelementptr i8, ptr %i.lw, i64 112
  %i.px = load float, ptr %i.pt, align 4, !tbaa !213
  %i.py = load float, ptr %i.pu, align 4, !tbaa !213
  %i.pz = load float, ptr %i.pv, align 4, !tbaa !213
  %i.qa = load float, ptr %i.pw, align 4, !tbaa !213
  %i.qb = insertelement <4 x float> poison, float %i.px, i64 0
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 1
  %i.qd = insertelement <4 x float> %i.qc, float %i.pz, i64 2
  %i.qe = insertelement <4 x float> %i.qd, float %i.qa, i64 3 ; 2 uses
  %i.qf = fadd nsz <4 x float> %i.ps, %i.qe
  %i.qg = fmul nsz <4 x float> %i.qf, splat (float f0x3EB504F3) ; 2 uses
  %i.qh = fsub nsz <4 x float> %i.ps, %i.qe
  %i.qi = fmul nsz <4 x float> %i.qh, splat (float f0x3EB504F3) ; 2 uses
  %i.qj = fadd nsz <4 x float> %i.mj, %i.my       ; 2 uses
  %i.qk = fsub nsz <4 x float> %i.mk, %i.mx       ; 2 uses
  %i.ql = fadd nsz <4 x float> %i.qj, %i.qg       ; 2 uses
  %i.qm = fadd nsz <4 x float> %i.qk, %i.qi       ; 2 uses
  %i.qn = fsub nsz <4 x float> %i.qi, %i.qk       ; 2 uses
  %i.qo = fsub nsz <4 x float> %i.qg, %i.qj       ; 2 uses
  %i.qp = shufflevector <4 x float> %i.oy, <4 x float> %i.pc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qq = shufflevector <4 x float> %i.pg, <4 x float> %i.pk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qr = shufflevector <8 x float> %i.qp, <8 x float> %i.qq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qs = shufflevector <4 x float> %i.ql, <4 x float> %i.qm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qt = shufflevector <4 x float> %i.qn, <4 x float> %i.qo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qu = shufflevector <8 x float> %i.qs, <8 x float> %i.qt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qv = fadd nsz <16 x float> %i.qr, %i.qu
  %i.qw = shufflevector <4 x float> %i.qo, <4 x float> %i.qn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qx = shufflevector <4 x float> %i.qm, <4 x float> %i.ql, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qy = shufflevector <8 x float> %i.qw, <8 x float> %i.qx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qz = shufflevector <4 x float> %i.pk, <4 x float> %i.pg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ra = shufflevector <4 x float> %i.pc, <4 x float> %i.oy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rb = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rc = fsub nsz <16 x float> %i.qy, %i.rb
  %interleaved.vec = shufflevector <16 x float> %i.qv, <16 x float> %i.rc, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !213
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rd = icmp eq i64 %index.next, 8
  br i1 %i.rd, label %dct_inverse.exit, label %vector.body, !llvm.loop !192

dct_inverse.exit:                                 ; preds = %vector.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.ah, label %bb.ai, !llvm.loop !193

bb.an:                                            ; preds = %bb.ah
  br i1 %.not543, label %.loopexit, label %.preheader431.lr.ph

.preheader431.lr.ph:                              ; preds = %bb.an
  %i.re = load i32, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  %.not545 = icmp eq i64 %indvars.iv485, %i.fp
  %i.rf = mul nsw i32 %i.re, %i.fb
  %i.rg = sext i32 %i.rf to i64                   ; 3 uses
  br i1 %.not545, label %.loopexit, label %.preheader431.preheader

.preheader431.preheader:                          ; preds = %.preheader431.lr.ph
  %i.rh = load ptr, ptr %4, align 8, !tbaa !89
  %i.ri = sext i32 %i.re to i64
  %i.rj = mul nsw i64 %i.fx, %i.ri
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.rh, i64 %i.rj ; 3 uses
  %i.rl = select i1 %i.ge, i32 %i.fb, i32 0
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv485
  %i.rp = zext i1 %i.ge to i32
  %i.rq = shl nuw i32 %i.fb, %i.rp
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [2 x i8], ptr %i.rk, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %indvars.iv485
  %i.ru = select i1 %i.ge, i32 3, i32 2
  %i.rv = mul nuw nsw i32 %i.ru, %i.fb
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.rw
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv485
  %i.rz = zext nneg i32 %spec.select to i64
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.preheader, %._crit_edge443
  %indvars.iv482 = phi i64 [ 0, %.preheader431.preheader ], [ %indvars.iv.next483, %._crit_edge443 ] ; 2 uses
  %.0332446 = phi ptr [ %i.ry, %.preheader431.preheader ], [ %i.sd, %._crit_edge443 ] ; 2 uses
  %.0333445 = phi ptr [ %i.rt, %.preheader431.preheader ], [ %i.sc, %._crit_edge443 ] ; 2 uses
  %.0334444 = phi ptr [ %i.ro, %.preheader431.preheader ], [ %i.sb, %._crit_edge443 ] ; 2 uses
  %i.sa = shl nuw nsw i64 %indvars.iv482, 3
  br label %bb.ao

._crit_edge443:                                   ; preds = %to_linear.exit384
  %i.sb = getelementptr inbounds [2 x i8], ptr %.0334444, i64 %i.rg
  %i.sc = getelementptr inbounds [2 x i8], ptr %.0333445, i64 %i.rg
  %i.sd = getelementptr inbounds [2 x i8], ptr %.0332446, i64 %i.rg
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %i.se = icmp samesign ult i64 %indvars.iv.next483, %i.fy
  br i1 %i.se, label %.preheader431, label %.loopexit, !llvm.loop !194

bb.ao:                                            ; preds = %.preheader431, %to_linear.exit384
  %indvars.iv479 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next480, %to_linear.exit384 ] ; 5 uses
  %i.sf = add nuw nsw i64 %indvars.iv479, %i.sa   ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !213 ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.sf
  %i.sj = load float, ptr %i.si, align 4, !tbaa !213 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.sf
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !213 ; 2 uses
  %i.sm = call nsz float @llvm.fmuladd.f32(float %i.sl, float 1.574700e+00, float %i.sh) ; 2 uses
  %i.sn = call nsz float @llvm.fmuladd.f32(float %i.sj, float -1.873000e-01, float %i.sh)
  %6 = insertelement <2 x float> poison, float %i.sl, i64 0
  %7 = insertelement <2 x float> %6, float %i.sj, i64 1
  %8 = insertelement <2 x float> poison, float %i.sn, i64 0
  %9 = insertelement <2 x float> %8, float %i.sh, i64 1
  %10 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.so = call nsz float @llvm.fabs.f32(float %11) ; 3 uses
  %i.sp = fcmp nsz ugt float %i.so, 1.000000e+00
  br i1 %i.sp, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sq = call nsz float @llvm.pow.f32(float %i.so, float 2.200000e+00)
  br label %to_linear.exit

bb.aq:                                            ; preds = %bb.ao
  %i.sr = fadd nsz float %i.so, -1.000000e+00
  %i.ss = call nsz float @llvm.pow.f32(float f0x41106675, float %i.sr)
  br label %to_linear.exit

to_linear.exit:                                   ; preds = %bb.ap, %bb.aq
  %.sink13.i = phi float [ %i.ss, %bb.aq ], [ %i.sq, %bb.ap ] ; 2 uses
  %i.st = fcmp nsz ogt float %11, 0.000000e+00
  %i.su = fneg nsz float %.sink13.i
  %i.sv = select nsz i1 %i.st, float %.sink13.i, float %i.su
  %i.sw = bitcast float %i.sv to i32              ; 2 uses
  %i.sx = lshr i32 %i.sw, 23
  %i.sy = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.sy
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !92
  %i.tb = and i32 %i.sw, 8388607
  %i.tc = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.sy
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !54
  %i.te = zext nneg i8 %i.td to i32
  %i.tf = lshr i32 %i.tb, %i.te
  %i.tg = trunc i32 %i.tf to i16
  %i.th = add i16 %i.ta, %i.tg
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %.0334444, i64 %indvars.iv479
  store i16 %i.th, ptr %i.ti, align 2, !tbaa !92
  %12 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %i.tj = call nsz float @llvm.fabs.f32(float %12) ; 3 uses
  %i.tk = fcmp nsz ugt float %i.tj, 1.000000e+00
  br i1 %i.tk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %to_linear.exit
  %i.tl = call nsz float @llvm.pow.f32(float %i.tj, float 2.200000e+00)
  br label %to_linear.exit382

bb.as:                                            ; preds = %to_linear.exit
  %i.tm = fadd nsz float %i.tj, -1.000000e+00
  %i.tn = call nsz float @llvm.pow.f32(float f0x41106675, float %i.tm)
  br label %to_linear.exit382

to_linear.exit382:                                ; preds = %bb.ar, %bb.as
  %.sink13.i381 = phi float [ %i.tn, %bb.as ], [ %i.tl, %bb.ar ] ; 2 uses
  %i.to = fcmp nsz ogt float %12, 0.000000e+00
  %i.tp = fneg nsz float %.sink13.i381
  %i.tq = select nsz i1 %i.to, float %.sink13.i381, float %i.tp
  %i.tr = bitcast float %i.tq to i32              ; 2 uses
  %i.ts = lshr i32 %i.tr, 23
  %i.tt = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.tt
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !92
  %i.tw = and i32 %i.tr, 8388607
  %i.tx = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.tt
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !54
  %i.tz = zext nneg i8 %i.ty to i32
  %i.ua = lshr i32 %i.tw, %i.tz
  %i.ub = trunc i32 %i.ua to i16
  %i.uc = add i16 %i.tv, %i.ub
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %.0333445, i64 %indvars.iv479
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !92
  %i.ue = call nsz float @llvm.fabs.f32(float %i.sm) ; 3 uses
  %i.uf = fcmp nsz ugt float %i.ue, 1.000000e+00
  br i1 %i.uf, label %bb.au, label %bb.at

bb.at:                                            ; preds = %to_linear.exit382
  %i.ug = call nsz float @llvm.pow.f32(float %i.ue, float 2.200000e+00)
  br label %to_linear.exit384

bb.au:                                            ; preds = %to_linear.exit382
  %i.uh = fadd nsz float %i.ue, -1.000000e+00
  %i.ui = call nsz float @llvm.pow.f32(float f0x41106675, float %i.uh)
  br label %to_linear.exit384

to_linear.exit384:                                ; preds = %bb.at, %bb.au
  %.sink13.i383 = phi float [ %i.ui, %bb.au ], [ %i.ug, %bb.at ] ; 2 uses
  %i.uj = fcmp nsz ogt float %i.sm, 0.000000e+00
  %i.uk = fneg nsz float %.sink13.i383
  %i.ul = select nsz i1 %i.uj, float %.sink13.i383, float %i.uk
  %i.um = bitcast float %i.ul to i32              ; 2 uses
  %i.un = lshr i32 %i.um, 23
  %i.uo = zext nneg i32 %i.un to i64              ; 2 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.uo
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !92
  %i.ur = and i32 %i.um, 8388607
  %i.us = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.uo
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !54
  %i.uu = zext nneg i8 %i.ut to i32
  %i.uv = lshr i32 %i.ur, %i.uu
  %i.uw = trunc i32 %i.uv to i16
  %i.ux = add i16 %i.uq, %i.uw
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %.0332446, i64 %indvars.iv479
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !92
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.uz = icmp samesign ult i64 %indvars.iv.next480, %i.rz
  br i1 %i.uz, label %bb.ao, label %._crit_edge443, !llvm.loop !195

bb.av:                                            ; preds = %bb.ah
  br i1 %.not543, label %.loopexit, label %.preheader432.lr.ph

.preheader432.lr.ph:                              ; preds = %bb.av
  %i.va = load i32, ptr %i.n, align 8, !tbaa !50  ; 2 uses
  %.not544 = icmp eq i64 %indvars.iv485, %i.fp
  %i.vb = mul nsw i32 %i.va, %i.fb
  %i.vc = sext i32 %i.vb to i64                   ; 3 uses
  br i1 %.not544, label %.loopexit, label %.preheader432.preheader

.preheader432.preheader:                          ; preds = %.preheader432.lr.ph
  %i.vd = load ptr, ptr %4, align 8, !tbaa !89
  %i.ve = sext i32 %i.va to i64
  %i.vf = mul nsw i64 %i.fx, %i.ve
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.vf ; 3 uses
  %i.vh = select i1 %i.ge, i32 %i.fb, i32 0
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vi
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv485
  %i.vl = zext i1 %i.ge to i32
  %i.vm = shl nuw i32 %i.fb, %i.vl
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.vn
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %indvars.iv485
  %i.vq = select i1 %i.ge, i32 3, i32 2
  %i.vr = mul nuw nsw i32 %i.vq, %i.fb
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv485
  %i.vv = zext nneg i32 %spec.select to i64
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge
  %indvars.iv476 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next477, %._crit_edge ] ; 2 uses
  %.0327440 = phi ptr [ %i.vu, %.preheader432.preheader ], [ %i.vz, %._crit_edge ] ; 2 uses
  %.0328439 = phi ptr [ %i.vp, %.preheader432.preheader ], [ %i.vy, %._crit_edge ] ; 2 uses
  %.0329438 = phi ptr [ %i.vk, %.preheader432.preheader ], [ %i.vx, %._crit_edge ] ; 2 uses
  %i.vw = shl nuw nsw i64 %indvars.iv476, 3
  br label %bb.aw

._crit_edge:                                      ; preds = %to_linear.exit390
  %i.vx = getelementptr inbounds [4 x i8], ptr %.0329438, i64 %i.vc
  %i.vy = getelementptr inbounds [4 x i8], ptr %.0328439, i64 %i.vc
  %i.vz = getelementptr inbounds [4 x i8], ptr %.0327440, i64 %i.vc
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.wa = icmp samesign ult i64 %indvars.iv.next477, %i.fy
  br i1 %i.wa, label %.preheader432, label %.loopexit, !llvm.loop !196

bb.aw:                                            ; preds = %.preheader432, %to_linear.exit390
  %indvars.iv473 = phi i64 [ 0, %.preheader432 ], [ %indvars.iv.next474, %to_linear.exit390 ] ; 5 uses
  %i.wb = add nuw nsw i64 %indvars.iv473, %i.vw   ; 3 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.wb
  %i.we = load float, ptr %i.wd, align 4, !tbaa !213 ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.wb
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !213 ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.0329438, i64 %indvars.iv473
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.0328439, i64 %indvars.iv473 ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.0327440, i64 %indvars.iv473 ; 3 uses
  %13 = load float, ptr %i.wc, align 4, !tbaa !213 ; 3 uses
  %i.wk = call nsz float @llvm.fmuladd.f32(float %i.wg, float 1.574700e+00, float %13)
  store float %i.wk, ptr %i.wj, align 4, !tbaa !213
  %i.wl = call nsz float @llvm.fmuladd.f32(float %i.we, float -1.873000e-01, float %13)
  %14 = insertelement <2 x float> poison, float %i.wg, i64 0
  %15 = insertelement <2 x float> %14, float %i.we, i64 1
  %16 = insertelement <2 x float> poison, float %i.wl, i64 0
  %17 = insertelement <2 x float> %16, float %13, i64 1
  %18 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %17) ; 2 uses
  %19 = extractelement <2 x float> %18, i64 0
  store float %19, ptr %i.wi, align 4, !tbaa !213
  %20 = extractelement <2 x float> %18, i64 1     ; 2 uses
  %i.wm = call nsz float @llvm.fabs.f32(float %20) ; 3 uses
  %i.wn = fcmp nsz ugt float %i.wm, 1.000000e+00
  br i1 %i.wn, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wo = call nsz float @llvm.pow.f32(float %i.wm, float 2.200000e+00)
  br label %to_linear.exit386

bb.ay:                                            ; preds = %bb.aw
  %i.wp = fadd nsz float %i.wm, -1.000000e+00
  %i.wq = call nsz float @llvm.pow.f32(float f0x41106675, float %i.wp)
  br label %to_linear.exit386

to_linear.exit386:                                ; preds = %bb.ax, %bb.ay
  %.sink13.i385 = phi float [ %i.wq, %bb.ay ], [ %i.wo, %bb.ax ] ; 2 uses
  %i.wr = fcmp nsz ogt float %20, 0.000000e+00
  %i.ws = fneg nsz float %.sink13.i385
  %i.wt = select nsz i1 %i.wr, float %.sink13.i385, float %i.ws
  store float %i.wt, ptr %i.wh, align 4, !tbaa !213
  %i.wu = load float, ptr %i.wi, align 4, !tbaa !213 ; 2 uses
  %i.wv = call nsz float @llvm.fabs.f32(float %i.wu) ; 3 uses
  %i.ww = fcmp nsz ugt float %i.wv, 1.000000e+00
  br i1 %i.ww, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %to_linear.exit386
  %i.wx = call nsz float @llvm.pow.f32(float %i.wv, float 2.200000e+00)
  br label %to_linear.exit388

bb.ba:                                            ; preds = %to_linear.exit386
  %i.wy = fadd nsz float %i.wv, -1.000000e+00
  %i.wz = call nsz float @llvm.pow.f32(float f0x41106675, float %i.wy)
  br label %to_linear.exit388

to_linear.exit388:                                ; preds = %bb.az, %bb.ba
  %.sink13.i387 = phi float [ %i.wz, %bb.ba ], [ %i.wx, %bb.az ] ; 2 uses
  %i.xa = fcmp nsz ogt float %i.wu, 0.000000e+00
  %i.xb = fneg nsz float %.sink13.i387
  %i.xc = select nsz i1 %i.xa, float %.sink13.i387, float %i.xb
  store float %i.xc, ptr %i.wi, align 4, !tbaa !213
  %i.xd = load float, ptr %i.wj, align 4, !tbaa !213 ; 2 uses
  %i.xe = call nsz float @llvm.fabs.f32(float %i.xd) ; 3 uses
  %i.xf = fcmp nsz ugt float %i.xe, 1.000000e+00
  br i1 %i.xf, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %to_linear.exit388
  %i.xg = call nsz float @llvm.pow.f32(float %i.xe, float 2.200000e+00)
  br label %to_linear.exit390

bb.bc:                                            ; preds = %to_linear.exit388
  %i.xh = fadd nsz float %i.xe, -1.000000e+00
  %i.xi = call nsz float @llvm.pow.f32(float f0x41106675, float %i.xh)
  br label %to_linear.exit390

to_linear.exit390:                                ; preds = %bb.bb, %bb.bc
  %.sink13.i389 = phi float [ %i.xi, %bb.bc ], [ %i.xg, %bb.bb ] ; 2 uses
  %i.xj = fcmp nsz ogt float %i.xd, 0.000000e+00
  %i.xk = fneg nsz float %.sink13.i389
  %i.xl = select nsz i1 %i.xj, float %.sink13.i389, float %i.xk
  store float %i.xl, ptr %i.wj, align 4, !tbaa !213
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.xm = icmp samesign ult i64 %indvars.iv.next474, %i.vv
  br i1 %i.xm, label %bb.aw, label %._crit_edge, !llvm.loop !197

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge443, %bb.av, %.preheader432.lr.ph, %bb.an, %.preheader431.lr.ph
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 8 ; 2 uses
  %i.xn = icmp samesign ult i64 %indvars.iv.next486, %i.fp
  br i1 %i.xn, label %bb.ag, label %._crit_edge450, !llvm.loop !198

bb.bd:                                            ; preds = %._crit_edge453.split
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !48
  %i.xq = icmp eq i32 %i.xp, 1
  %i.xr = and i1 %or.cond7, %i.fa                 ; 2 uses
  br i1 %i.xq, label %.preheader, label %.preheader429

.preheader429:                                    ; preds = %bb.bd
  br i1 %i.xr, label %.lr.ph459, label %bytestream2_get_le16.exit.thread

.lr.ph459:                                        ; preds = %.preheader429
  %i.xs = load ptr, ptr %4, align 8, !tbaa !89
  %i.xt = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !212
  %i.xv = lshr i64 %i.af, 1
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 14328
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 14072
  %i.xz = load i32, ptr %i.d, align 8, !tbaa !86  ; 2 uses
  %i.ya = icmp sgt i32 %i.xz, 0
  br i1 %i.ya, label %.lr.ph459.split, label %bytestream2_get_le16.exit.thread

.preheader:                                       ; preds = %bb.bd
  br i1 %i.xr, label %.lr.ph465, label %bytestream2_get_le16.exit.thread

.lr.ph465:                                        ; preds = %.preheader
  %i.yb = load ptr, ptr %4, align 8, !tbaa !89    ; 4 uses
  %i.yc = load i32, ptr %i.d, align 8, !tbaa !86  ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !212 ; 5 uses
  %i.yf = lshr i64 %i.af, 1                       ; 3 uses
  %i.yg = icmp sgt i32 %i.yc, 0
  br i1 %i.yg, label %.lr.ph462.preheader, label %bytestream2_get_le16.exit.thread

.lr.ph462.preheader:                              ; preds = %.lr.ph465
  %i.yh = zext nneg i32 %i.yc to i64              ; 11 uses
  %i.yi = zext nneg i32 %i.fz to i64              ; 2 uses
  %wide.trip.count506 = zext nneg i32 %i.ez to i64 ; 3 uses
  %i.yj = add nuw i64 %wide.trip.count506, 9223372036854775807
  %i.yk = mul i64 %i.yj, %i.yi
  %i.yl = shl i64 %i.yk, 1
  %i.ym = add i64 %i.yl, 2
  %i.yn = mul i64 %i.ym, %i.yh
  %scevgep = getelementptr i8, ptr %i.yb, i64 %i.yn ; 2 uses
  %scevgep566 = getelementptr i8, ptr %i.ye, i64 %i.yf
  %i.yo = mul nuw nsw i64 %wide.trip.count506, %i.yh ; 2 uses
  %i.yp = getelementptr i8, ptr %i.ye, i64 %i.yf
  %scevgep567 = getelementptr i8, ptr %i.yp, i64 %i.yo
  %scevgep568 = getelementptr i8, ptr %i.ye, i64 %i.yo
  %min.iters.check = icmp ult i32 %i.yc, 4
  %bound0 = icmp ult ptr %i.yb, %scevgep567
  %bound1 = icmp ult ptr %scevgep566, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0569 = icmp ult ptr %i.yb, %scevgep568
  %bound1570 = icmp ult ptr %i.ye, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx = or i1 %found.conflict, %found.conflict571
  %min.iters.check572 = icmp ult i32 %i.yc, 16
  %i.yq = and i64 %i.yh, 12
  %n.vec = and i64 %i.yh, 2147483632              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yh
  %min.epilog.iters.check = icmp eq i64 %i.yq, 0
  %n.vec582 = and i64 %i.yh, 2147483644           ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec582, %i.yh
  %xtraiter = and i64 %i.yh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.yr = add nsw i64 %i.yh, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph462.preheader, %._crit_edge463
  %indvars.iv503 = phi i64 [ 0, %.lr.ph462.preheader ], [ %indvars.iv.next504, %._crit_edge463 ] ; 2 uses
  %i.ys = mul nuw nsw i64 %indvars.iv503, %i.yh   ; 2 uses
  %i.yt = mul nuw nsw i64 %i.ys, %i.yi
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.yb, i64 %i.yt ; 5 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.ys ; 6 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yf ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check572, label %vec.epilog.ph, label %vector.body574

vector.body574:                                   ; preds = %vector.main.loop.iter.check, %vector.body574
  %index575 = phi i64 [ %index.next580, %vector.body574 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 %index575 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %wide.load576 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !54, !alias.scope !214
  %wide.load577 = load <8 x i8>, ptr %i.yy, align 1, !tbaa !54, !alias.scope !214
  %i.yz = zext <8 x i8> %wide.load576 to <8 x i16>
  %i.za = zext <8 x i8> %wide.load577 to <8 x i16>
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %index575 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %wide.load578 = load <8 x i8>, ptr %i.zb, align 1, !tbaa !54, !alias.scope !215
  %wide.load579 = load <8 x i8>, ptr %i.zc, align 1, !tbaa !54, !alias.scope !215
  %i.zd = zext <8 x i8> %wide.load578 to <8 x i16>
  %i.ze = zext <8 x i8> %wide.load579 to <8 x i16>
  %i.zf = shl nuw <8 x i16> %i.zd, splat (i16 8)
  %i.zg = shl nuw <8 x i16> %i.ze, splat (i16 8)
  %i.zh = or disjoint <8 x i16> %i.zf, %i.yz
  %i.zi = or disjoint <8 x i16> %i.zg, %i.za
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %i.yu, i64 %index575 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store <8 x i16> %i.zh, ptr %i.zj, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  store <8 x i16> %i.zi, ptr %i.zk, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  %index.next580 = add nuw i64 %index575, 16      ; 2 uses
  %i.zl = icmp eq i64 %index.next580, %n.vec
  br i1 %i.zl, label %middle.block581, label %vector.body574, !llvm.loop !203

middle.block581:                                  ; preds = %vector.body574
  br i1 %cmp.n, label %._crit_edge463, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block581
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index583 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next586, %vec.epilog.vector.body ] ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yv, i64 %index583
  %wide.load584 = load <4 x i8>, ptr %i.zm, align 1, !tbaa !54, !alias.scope !214
  %i.zn = zext <4 x i8> %wide.load584 to <4 x i16>
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yw, i64 %index583
  %wide.load585 = load <4 x i8>, ptr %i.zo, align 1, !tbaa !54, !alias.scope !215
  %i.zp = zext <4 x i8> %wide.load585 to <4 x i16>
  %i.zq = shl nuw <4 x i16> %i.zp, splat (i16 8)
  %i.zr = or disjoint <4 x i16> %i.zq, %i.zn
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.yu, i64 %index583
  store <4 x i16> %i.zr, ptr %i.zs, align 2, !tbaa !92, !alias.scope !216, !noalias !217
  %index.next586 = add nuw i64 %index583, 4       ; 2 uses
  %i.zt = icmp eq i64 %index.next586, %n.vec582
  br i1 %i.zt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n587, label %._crit_edge463, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv498.ph = phi i64 [ 0, %iter.check ], [ %n.vec582, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yv, i64 %indvars.iv498.ph
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !54
  %i.zw = zext i8 %i.zv to i16
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %indvars.iv498.ph
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !54
  %i.zz = zext i8 %i.zy to i16
end_hunk_0
begin_hunk_1_@rle:bb.a
  %.13249 = phi ptr [ %i.be, %.preheader ], [ %.13249.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.13448 = phi ptr [ %i.bg, %.preheader ], [ %.13448.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.13249, i64 1
  %i.aj = load i8, ptr %.13249, align 1, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.13448, i64 1
  store i8 %i.aj, ptr %.13448, align 1, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %.13249, i64 2
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.13448, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %.13249, i64 3
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.13448, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.13249, i64 4
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %.13448, i64 4
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %.13249, i64 5
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.13448, i64 5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.13249, i64 6
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %.13448, i64 6
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %.13249, i64 7
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %.13448, i64 7
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !54
  %i.bd = add nsw i32 %.050, -8                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.13249, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.ba, align 1, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %.13448, i64 8 ; 2 uses
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !54
  %.not42.7 = icmp eq i32 %i.bd, 0
  br i1 %.not42.7, label %.loopexit, label %.preheader, !llvm.loop !237

bb.d:                                             ; preds = %.lr.ph
  %i.bh = add nuw nsw i32 %i.f, 1                 ; 5 uses
  %i.bi = sub nsw i32 %.02754, %i.bh              ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = add nsw i32 %.02953, -2
  %i.bl = icmp eq i32 %.02953, 1
  br i1 %i.bl, label %.loopexit44, label %iter.check94

iter.check94:                                     ; preds = %bb.e
  %.pre = load i8, ptr %i.d, align 1, !tbaa !54   ; 3 uses
  %i.bm = zext nneg i32 %i.bh to i64              ; 5 uses
  %min.iters.check81 = icmp ult i8 %i.e, 3
  br i1 %min.iters.check81, label %.preheader43.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %iter.check94
  %min.iters.check83 = icmp ult i8 %i.e, 31
  br i1 %min.iters.check83, label %vec.epilog.ph98, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check82
  %i.bn = and i64 %i.bm, 28
  %n.vec85 = and i64 %i.bm, 224                   ; 7 uses
  %i.bo = trunc nuw nsw i64 %n.vec85 to i32
  %i.bp = sub nsw i32 %i.bh, %i.bo
  %i.bq = getelementptr i8, ptr %.03351, i64 %n.vec85 ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.br = getelementptr i8, ptr %.03351, i64 16
  store <16 x i8> %broadcast.splat, ptr %.03351, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat, ptr %i.br, align 1, !tbaa !54
  %i.bs = icmp eq i64 %n.vec85, 32
  br i1 %i.bs, label %middle.block90, label %vector.body86.1

vector.body86.1:                                  ; preds = %vector.ph84
  %next.gep88.1 = getelementptr i8, ptr %.03351, i64 32
  %i.bt = getelementptr i8, ptr %.03351, i64 48
  store <16 x i8> %broadcast.splat, ptr %next.gep88.1, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat, ptr %i.bt, align 1, !tbaa !54
  %i.bu = icmp eq i64 %n.vec85, 64
  br i1 %i.bu, label %middle.block90, label %vector.body86.2

vector.body86.2:                                  ; preds = %vector.body86.1
  %next.gep88.2 = getelementptr i8, ptr %.03351, i64 64
  %i.bv = getelementptr i8, ptr %.03351, i64 80
  store <16 x i8> %broadcast.splat, ptr %next.gep88.2, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat, ptr %i.bv, align 1, !tbaa !54
  %i.bw = icmp eq i64 %n.vec85, 96
  br i1 %i.bw, label %middle.block90, label %vector.body86.3

vector.body86.3:                                  ; preds = %vector.body86.2
  %next.gep88.3 = getelementptr i8, ptr %.03351, i64 96
  %i.bx = getelementptr i8, ptr %.03351, i64 112
  store <16 x i8> %broadcast.splat, ptr %next.gep88.3, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat, ptr %i.bx, align 1, !tbaa !54
  br label %middle.block90

middle.block90:                                   ; preds = %vector.body86.3, %vector.body86.2, %vector.body86.1, %vector.ph84
  %cmp.n91 = icmp eq i64 %n.vec85, %i.bm
  br i1 %cmp.n91, label %.loopexit110, label %vec.epilog.iter.check96

vec.epilog.iter.check96:                          ; preds = %middle.block90
  %min.epilog.iters.check97 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check97, label %.preheader43.preheader, label %vec.epilog.ph98, !prof !98

vec.epilog.ph98:                                  ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check96
  %vec.epilog.resume.val92 = phi i64 [ %n.vec85, %vec.epilog.iter.check96 ], [ 0, %vector.main.loop.iter.check82 ]
  %n.vec99 = and i64 %i.bm, 252                   ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec99 to i32
  %i.bz = sub nsw i32 %i.bh, %i.by
  %i.ca = getelementptr i8, ptr %.03351, i64 %n.vec99 ; 2 uses
  %broadcast.splatinsert100 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat101 = shufflevector <4 x i8> %broadcast.splatinsert100, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph98
  %index103 = phi i64 [ %vec.epilog.resume.val92, %vec.epilog.ph98 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.03351, i64 %index103
  store <4 x i8> %broadcast.splat101, ptr %next.gep104, align 1, !tbaa !54
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.cb, label %vec.epilog.middle.block106, label %vec.epilog.vector.body102, !llvm.loop !238

vec.epilog.middle.block106:                       ; preds = %vec.epilog.vector.body102
  %cmp.n107 = icmp eq i64 %n.vec99, %i.bm
  br i1 %cmp.n107, label %.loopexit110, label %.preheader43.preheader

.preheader43.preheader:                           ; preds = %iter.check94, %vec.epilog.iter.check96, %vec.epilog.middle.block106
  %.147.ph = phi i32 [ %i.bh, %iter.check94 ], [ %i.bp, %vec.epilog.iter.check96 ], [ %i.bz, %vec.epilog.middle.block106 ]
  %.23546.ph = phi ptr [ %.03351, %iter.check94 ], [ %i.bq, %vec.epilog.iter.check96 ], [ %i.ca, %vec.epilog.middle.block106 ]
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.preheader, %.preheader43
  %.147 = phi i32 [ %i.cc, %.preheader43 ], [ %.147.ph, %.preheader43.preheader ]
  %.23546 = phi ptr [ %i.cd, %.preheader43 ], [ %.23546.ph, %.preheader43.preheader ] ; 2 uses
  %i.cc = add nsw i32 %.147, -1                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.23546, i64 1 ; 2 uses
  store i8 %.pre, ptr %.23546, align 1, !tbaa !54
  %.not41 = icmp eq i32 %i.cc, 0
  br i1 %.not41, label %.loopexit110, label %.preheader43, !llvm.loop !239

.loopexit110:                                     ; preds = %.preheader43, %vec.epilog.middle.block106, %middle.block90
  %.lcssa = phi ptr [ %i.ca, %vec.epilog.middle.block106 ], [ %i.bq, %middle.block90 ], [ %i.cd, %.preheader43 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.03152, i64 2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %.loopexit110
  %.3 = phi ptr [ %.lcssa, %.loopexit110 ], [ %i.aa, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.lcssa112.unr, %.preheader.prol.loopexit ], [ %i.bg, %.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.ce, %.loopexit110 ], [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %.lcssa113.unr, %.preheader.prol.loopexit ], [ %i.be, %.preheader ]
  %.130 = phi i32 [ %i.bk, %.loopexit110 ], [ %i.j, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.j, %.preheader ], [ %i.j, %.preheader.prol.loopexit ] ; 2 uses
  %.128 = phi i32 [ %i.bi, %.loopexit110 ], [ %i.h, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %i.h, %.preheader ], [ %i.h, %.preheader.prol.loopexit ]
  %i.cf = icmp sgt i32 %.130, 0
  br i1 %i.cf, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.033.lcssa = phi ptr [ %0, %bb.a ], [ %.3, %.loopexit ]
  %.not = icmp eq ptr %i.b, %.033.lcssa
  %. = select i1 %.not, i32 0, i32 -1094995529
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %._crit_edge
  %.036 = phi i32 [ %., %._crit_edge ], [ -1094995529, %bb.c ], [ -1094995529, %bb.b ], [ -1094995529, %bb.e ], [ -1094995529, %bb.d ]
  ret i32 %.036
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !57}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!13 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"AVRational", !7, i64 0, !7, i64 4}
!17 = !{!"float", !6, i64 0}
!18 = !{!"p1 short", !10, i64 0}
!19 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!20 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!21 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !15, i64 72, !7, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !19, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !17, i64 428, !17, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !20, i64 456, !14, i64 464, !14, i64 472, !17, i64 480, !17, i64 484, !7, i64 488, !7, i64 492, !15, i64 496, !15, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !21, i64 536, !10, i64 544, !22, i64 552, !22, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !23, i64 728, !15, i64 736, !7, i64 744, !7, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !24, i64 776, !7, i64 784, !7, i64 788, !14, i64 792, !7, i64 800, !7, i64 804, !14, i64 808, !10, i64 816, !14, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!31 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!32 = !{!"ExrDSPContext", !10, i64 0, !10, i64 8}
!33 = !{!"p1 _ZTS18AVPixFmtDescriptor", !10, i64 0}
!34 = !{!"EXRTileAttribute", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!35 = !{!"GetByteContext", !15, i64 0, !15, i64 8, !15, i64 16}
!36 = !{!"p1 _ZTS10EXRChannel", !10, i64 0}
!37 = !{!"p1 _ZTS13EXRThreadData", !10, i64 0}
!38 = !{!"Float2HalfTables", !6, i64 0, !6, i64 1024}
!39 = !{!"Half2FloatTables", !6, i64 0, !6, i64 12288, !6, i64 12544}
!40 = !{!"EXRContext", !11, i64 0, !30, i64 8, !31, i64 16, !32, i64 24, !7, i64 40, !7, i64 44, !6, i64 48, !33, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !34, i64 112, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !35, i64 152, !15, i64 176, !7, i64 184, !36, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !37, i64 216, !15, i64 224, !7, i64 232, !15, i64 240, !38, i64 248, !39, i64 1784}
!41 = !{!40, !31, i64 16}
!42 = !{!28, !7, i64 656}
!43 = !{!40, !37, i64 216}
!44 = !{!35, !15, i64 0}
!45 = !{!35, !15, i64 16}
!46 = !{!35, !15, i64 8}
!47 = !{!40, !7, i64 204}
!48 = !{!40, !7, i64 44}
!49 = !{!40, !7, i64 40}
!50 = !{!40, !7, i64 200}
!51 = !{!40, !7, i64 112}
!52 = !{!40, !7, i64 116}
!53 = !{!15, !15, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!40, !7, i64 128}
!56 = !{!40, !7, i64 132}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!7, !7, i64 0}
!59 = !{!40, !36, i64 192}
!60 = !{!"EXRChannel", !7, i64 0, !7, i64 4, !7, i64 8}
!61 = !{!60, !7, i64 8}
!62 = !{!40, !7, i64 140}
!63 = !{!40, !7, i64 88}
!64 = !{!40, !7, i64 84}
!65 = !{!40, !7, i64 96}
!66 = !{!40, !7, i64 92}
!67 = !{!40, !7, i64 100}
!68 = !{!40, !7, i64 104}
!69 = !{!40, !7, i64 108}
!70 = !{!40, !33, i64 64}
!71 = !{!28, !7, i64 112}
!72 = !{!"AVComponentDescriptor", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!73 = !{!72, !7, i64 4}
!74 = !{!28, !14, i64 792}
!75 = !{!40, !15, i64 176}
!76 = !{!40, !7, i64 184}
!77 = !{!40, !30, i64 8}
!78 = !{!28, !7, i64 116}
!79 = !{!"llvm.loop.unswitch.partial.disable"}
!80 = !{!"p1 _ZTS9HuffEntry", !10, i64 0}
!81 = !{!"p1 long", !10, i64 0}
!82 = !{!"p1 _ZTS7VLCElem", !10, i64 0}
!83 = !{!"VLC", !7, i64 0, !82, i64 8, !7, i64 16, !7, i64 20}
!84 = !{!"EXRThreadData", !15, i64 0, !7, i64 8, !15, i64 16, !7, i64 24, !15, i64 32, !18, i64 40, !15, i64 48, !7, i64 56, !15, i64 64, !7, i64 72, !15, i64 80, !7, i64 88, !15, i64 96, !7, i64 104, !6, i64 108, !7, i64 876, !7, i64 880, !7, i64 884, !7, i64 888, !80, i64 896, !81, i64 904, !83, i64 912}
!85 = !{!84, !7, i64 876}
!86 = !{!84, !7, i64 880}
!87 = !{!84, !7, i64 884}
!88 = !{!84, !15, i64 16}
!89 = !{!84, !15, i64 0}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!"short", !6, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!14, !14, i64 0}
!94 = !{!40, !10, i64 32}
!95 = !{!40, !10, i64 24}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!"branch_weights", i32 4, i32 28}
!99 = !{!"branch_weights", i32 4, i32 12}
!100 = distinct !{!100, !57}
!101 = distinct !{!101, !57}
!102 = distinct !{!102, !57}
!103 = distinct !{!103, !57}
!104 = distinct !{!104, !57}
!105 = distinct !{!105, !57}
!106 = distinct !{!106, !57}
!107 = distinct !{!107, !57}
!108 = distinct !{!108, !57}
!109 = distinct !{!109, !57}
!110 = distinct !{!110, !57}
!111 = distinct !{!111, !57}
!112 = distinct !{!112, !57}
!113 = distinct !{!113, !57, !79}
!114 = !{!"AVPacket", !22, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !24, i64 48, !7, i64 56, !14, i64 64, !14, i64 72, !10, i64 80, !22, i64 88, !16, i64 96}
!115 = !{!114, !15, i64 24}
!116 = !{!114, !7, i64 32}
!117 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!40, !7, i64 72}
!120 = !{!40, !7, i64 76}
!121 = !{!40, !7, i64 232}
!122 = !{!40, !7, i64 136}
!123 = !{!40, !15, i64 224}
!124 = !{!40, !7, i64 144}
!125 = !{!60, !7, i64 0}
!126 = !{!60, !7, i64 4}
!127 = !{!40, !7, i64 80}
!128 = !{!40, !7, i64 120}
!129 = !{!40, !7, i64 124}
!130 = !{!28, !7, i64 100}
!131 = !{!28, !7, i64 104}
!132 = !{!40, !7, i64 208}
!133 = !{!"p2 omnipotent char", !26, i64 0}
!134 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!135 = !{!"AVFrame", !6, i64 0, !6, i64 64, !133, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !134, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !117, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!136 = !{!135, !117, i64 312}
!137 = !{!28, !7, i64 136}
!138 = !{!28, !7, i64 860}
!139 = !{!28, !7, i64 148}
!140 = !{!28, !7, i64 704}
!141 = !{!40, !15, i64 240}
!142 = !{!28, !10, i64 680}
!143 = !{!135, !7, i64 120}
!144 = distinct !{!144, !57}
!145 = distinct !{!145, !57}
!146 = distinct !{!146, !57}
!147 = distinct !{!147, !90}
!148 = distinct !{!148, !90}
!149 = distinct !{!149, !57}
!150 = distinct !{!150, !90}
!151 = distinct !{!151, !90}
!152 = distinct !{!152, !57}
!153 = distinct !{!153, !57}
!154 = distinct !{!154, !57}
!155 = !{!40, !15, i64 152}
!156 = !{!"AVPixFmtDescriptor", !15, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !14, i64 16, !6, i64 24, !15, i64 104}
!157 = !{!156, !14, i64 16}
!158 = !{!156, !6, i64 8}
!159 = !{!72, !7, i64 0}
!160 = !{!72, !7, i64 8}
!161 = distinct !{!161, !57}
!162 = distinct !{!162, !57}
!163 = distinct !{!163, !57}
!164 = distinct !{!164, !57}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !90}
!170 = distinct !{!170, !57}
!171 = distinct !{!171, !57, !79}
!172 = !{!84, !15, i64 32}
!173 = !{!84, !18, i64 40}
!174 = distinct !{!174, !57}
!175 = distinct !{!175, !57}
!176 = distinct !{!176, !57}
!177 = distinct !{!177, !57}
!178 = distinct !{!178, !57}
end_hunk_1
