Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.on = fadd fast <4 x float> %i.om, %i.oe      ; 4 uses
  %i.oo = extractelement <4 x float> %i.mv, i64 0
  store float %i.oo, ptr %i.ja, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.op = extractelement <4 x float> %i.og, i64 0
  store float %i.op, ptr %i.jg, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.oq = shufflevector <4 x float> %i.mv, <4 x float> %i.og, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.oq, ptr %i.jb, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.or = shufflevector <4 x float> %i.mv, <4 x float> %i.og, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.or, ptr %i.jc, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.os = shufflevector <4 x float> %i.mv, <4 x float> %i.og, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.os, ptr %i.jd, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ot = extractelement <4 x float> %i.oi, i64 0
  store float %i.ot, ptr %i.jh, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ou = extractelement <4 x float> %i.ol, i64 0
  store float %i.ou, ptr %i.jl, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ov = shufflevector <4 x float> %i.oi, <4 x float> %i.ol, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ov, ptr %i.ji, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ow = shufflevector <4 x float> %i.oi, <4 x float> %i.ol, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ow, ptr %i.jj, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ox = shufflevector <4 x float> %i.oi, <4 x float> %i.ol, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ox, ptr %i.jk, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.oy = extractelement <4 x float> %i.on, i64 0
  store float %i.oy, ptr %i.jm, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.oz = extractelement <4 x float> %i.ni, i64 0
  store float %i.oz, ptr %i.jq, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pa = shufflevector <4 x float> %i.on, <4 x float> %i.ni, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.pa, ptr %i.jn, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pb = shufflevector <4 x float> %i.on, <4 x float> %i.ni, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.pb, ptr %i.jo, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pc = shufflevector <4 x float> %i.on, <4 x float> %i.ni, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.pc, ptr %i.jp, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pd = fmul fast <4 x float> %i.mx, splat (float f0xBF2AAAAB) ; 2 uses
  %i.pe = fmul fast <4 x float> %i.nj, splat (float f0x3EAAAAAB) ; 4 uses
  %i.pf = fadd fast <4 x float> %i.jv, %i.pe
  %i.pg = fsub fast <4 x float> %i.pd, %i.pf      ; 4 uses
  %i.ph = fadd fast <4 x float> %i.jv, %i.pd
  %i.pi = fsub fast <4 x float> %i.ph, %i.pe      ; 4 uses
  %i.pj = fmul fast <4 x float> %i.mx, splat (float f0x3E2AAAAB) ; 2 uses
  %i.pk = fadd fast <4 x float> %i.jw, %i.pj
  %i.pl = fadd fast <4 x float> %i.pk, %i.pe      ; 4 uses
  %i.pm = fsub fast <4 x float> %i.pj, %i.jw
  %i.pn = fadd fast <4 x float> %i.pm, %i.pe      ; 4 uses
  %i.po = extractelement <4 x float> %i.mx, i64 0
  store float %i.po, ptr %i.jr, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pp = extractelement <4 x float> %i.pg, i64 0
  store float %i.pp, ptr %i.jx, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pq = shufflevector <4 x float> %i.mx, <4 x float> %i.pg, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.pq, ptr %i.js, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pr = shufflevector <4 x float> %i.mx, <4 x float> %i.pg, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.pr, ptr %i.jt, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ps = shufflevector <4 x float> %i.mx, <4 x float> %i.pg, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ps, ptr %i.ju, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pt = extractelement <4 x float> %i.pi, i64 0
  store float %i.pt, ptr %i.jy, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pu = extractelement <4 x float> %i.pl, i64 0
  store float %i.pu, ptr %i.kc, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pv = shufflevector <4 x float> %i.pi, <4 x float> %i.pl, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.pv, ptr %i.jz, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pw = shufflevector <4 x float> %i.pi, <4 x float> %i.pl, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.pw, ptr %i.ka, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.px = shufflevector <4 x float> %i.pi, <4 x float> %i.pl, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.px, ptr %i.kb, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.py = extractelement <4 x float> %i.pn, i64 0
  store float %i.py, ptr %i.kd, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.pz = extractelement <4 x float> %i.nj, i64 0
  store float %i.pz, ptr %i.kh, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qa = shufflevector <4 x float> %i.pn, <4 x float> %i.nj, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.qa, ptr %i.ke, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qb = shufflevector <4 x float> %i.pn, <4 x float> %i.nj, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.qb, ptr %i.kf, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qc = shufflevector <4 x float> %i.pn, <4 x float> %i.nj, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.qc, ptr %i.kg, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qd = fmul fast <4 x float> %i.na, splat (float f0xBF2AAAAB) ; 2 uses
  %i.qe = fmul fast <4 x float> %i.nk, splat (float f0x3EAAAAAB) ; 4 uses
  %i.qf = fadd fast <4 x float> %i.km, %i.qe
  %i.qg = fsub fast <4 x float> %i.qd, %i.qf      ; 4 uses
  %i.qh = fadd fast <4 x float> %i.km, %i.qd
  %i.qi = fsub fast <4 x float> %i.qh, %i.qe      ; 4 uses
  %i.qj = fmul fast <4 x float> %i.na, splat (float f0x3E2AAAAB) ; 2 uses
  %i.qk = fadd fast <4 x float> %i.kn, %i.qj
  %i.ql = fadd fast <4 x float> %i.qk, %i.qe      ; 4 uses
  %i.qm = fsub fast <4 x float> %i.qj, %i.kn
  %i.qn = fadd fast <4 x float> %i.qm, %i.qe      ; 4 uses
  %i.qo = extractelement <4 x float> %i.na, i64 0
  store float %i.qo, ptr %i.ki, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qp = extractelement <4 x float> %i.qg, i64 0
  store float %i.qp, ptr %i.ko, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qq = shufflevector <4 x float> %i.na, <4 x float> %i.qg, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.qq, ptr %i.kj, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qr = shufflevector <4 x float> %i.na, <4 x float> %i.qg, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.qr, ptr %i.kk, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qs = shufflevector <4 x float> %i.na, <4 x float> %i.qg, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.qs, ptr %i.kl, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qt = extractelement <4 x float> %i.qi, i64 0
  store float %i.qt, ptr %i.kp, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qu = extractelement <4 x float> %i.ql, i64 0
  store float %i.qu, ptr %i.kt, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qv = shufflevector <4 x float> %i.qi, <4 x float> %i.ql, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.qv, ptr %i.kq, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qw = shufflevector <4 x float> %i.qi, <4 x float> %i.ql, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.qw, ptr %i.kr, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qx = shufflevector <4 x float> %i.qi, <4 x float> %i.ql, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.qx, ptr %i.ks, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qy = extractelement <4 x float> %i.qn, i64 0
  store float %i.qy, ptr %i.ku, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.qz = extractelement <4 x float> %i.nk, i64 0
  store float %i.qz, ptr %i.ky, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ra = shufflevector <4 x float> %i.qn, <4 x float> %i.nk, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ra, ptr %i.kv, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rb = shufflevector <4 x float> %i.qn, <4 x float> %i.nk, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.rb, ptr %i.kw, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rc = shufflevector <4 x float> %i.qn, <4 x float> %i.nk, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.rc, ptr %i.kx, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rd = fmul fast <4 x float> %i.nc, splat (float f0xBF2AAAAB) ; 2 uses
  %i.re = fmul fast <4 x float> %i.nl, splat (float f0x3EAAAAAB) ; 4 uses
  %i.rf = fadd fast <4 x float> %i.ld, %i.re
  %i.rg = fsub fast <4 x float> %i.rd, %i.rf      ; 4 uses
  %i.rh = fadd fast <4 x float> %i.ld, %i.rd
  %i.ri = fsub fast <4 x float> %i.rh, %i.re      ; 4 uses
  %i.rj = fmul fast <4 x float> %i.nc, splat (float f0x3E2AAAAB) ; 2 uses
  %i.rk = fadd fast <4 x float> %i.le, %i.rj
  %i.rl = fadd fast <4 x float> %i.rk, %i.re      ; 4 uses
  %i.rm = fsub fast <4 x float> %i.rj, %i.le
  %i.rn = fadd fast <4 x float> %i.rm, %i.re      ; 4 uses
  %i.ro = extractelement <4 x float> %i.nc, i64 0
  store float %i.ro, ptr %i.kz, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rp = extractelement <4 x float> %i.rg, i64 0
  store float %i.rp, ptr %i.lf, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rq = shufflevector <4 x float> %i.nc, <4 x float> %i.rg, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.rq, ptr %i.la, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rr = shufflevector <4 x float> %i.nc, <4 x float> %i.rg, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.rr, ptr %i.lb, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rs = shufflevector <4 x float> %i.nc, <4 x float> %i.rg, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.rs, ptr %i.lc, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rt = extractelement <4 x float> %i.ri, i64 0
  store float %i.rt, ptr %i.lg, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ru = extractelement <4 x float> %i.rl, i64 0
  store float %i.ru, ptr %i.lk, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rv = shufflevector <4 x float> %i.ri, <4 x float> %i.rl, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.rv, ptr %i.lh, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rw = shufflevector <4 x float> %i.ri, <4 x float> %i.rl, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.rw, ptr %i.li, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rx = shufflevector <4 x float> %i.ri, <4 x float> %i.rl, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.rx, ptr %i.lj, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.ry = extractelement <4 x float> %i.rn, i64 0
  store float %i.ry, ptr %i.ll, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.rz = extractelement <4 x float> %i.nl, i64 0
  store float %i.rz, ptr %i.lp, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sa = shufflevector <4 x float> %i.rn, <4 x float> %i.nl, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.sa, ptr %i.lm, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sb = shufflevector <4 x float> %i.rn, <4 x float> %i.nl, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.sb, ptr %i.ln, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sc = shufflevector <4 x float> %i.rn, <4 x float> %i.nl, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.sc, ptr %i.lo, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sd = fadd fast <4 x float> %i.lv, %i.ng
  %i.se = fsub fast <4 x float> %i.lu, %i.sd      ; 4 uses
  %i.sf = fsub fast <4 x float> %i.lw, %i.ng      ; 4 uses
  %i.sg = fadd fast <4 x float> %i.lz, %i.ng      ; 4 uses
  %i.sh = fadd fast <4 x float> %i.ma, %i.ng      ; 4 uses
  %i.si = extractelement <4 x float> %i.se, i64 0
  store float %i.si, ptr %i.mb, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sj = extractelement <4 x float> %i.sf, i64 0
  store float %i.sj, ptr %i.mf, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sk = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.sk, ptr %i.mc, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sl = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.sl, ptr %i.md, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sm = shufflevector <4 x float> %i.se, <4 x float> %i.sf, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.sm, ptr %i.me, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sn = extractelement <4 x float> %i.sg, i64 0
  store float %i.sn, ptr %i.mg, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.so = extractelement <4 x float> %i.sh, i64 0
  store float %i.so, ptr %i.mk, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sp = shufflevector <4 x float> %i.sg, <4 x float> %i.sh, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.sp, ptr %i.mh, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sq = shufflevector <4 x float> %i.sg, <4 x float> %i.sh, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.sq, ptr %i.mi, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %i.sr = shufflevector <4 x float> %i.sg, <4 x float> %i.sh, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.sr, ptr %i.mj, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  store <2 x float> %i.mp, ptr %i.ml, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  store float %i.hy, ptr %i.mm, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  store float %i.hz, ptr %i.mn, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  store float %i.ia, ptr %i.mo, align 4, !tbaa !53, !alias.scope !494, !noalias !493
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.ss = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ss, label %middle.block185, label %vector.body178, !llvm.loop !480

middle.block185:                                  ; preds = %vector.body178
  br i1 %cmp.n186, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.memcheck160, %.preheader10.i, %middle.block185
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck160 ], [ 0, %.preheader10.i ], [ %n.vec177, %middle.block185 ]
  %.116.i.ph = phi ptr [ %.018.i, %vector.memcheck160 ], [ %.018.i, %.preheader10.i ], [ %i.da, %middle.block185 ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.116.i = phi ptr [ %i.zq, %.preheader.preheader.i ], [ %.116.i.ph, %.preheader.preheader.i.preheader ] ; 33 uses
  %i.st = add nsw i64 %indvars.iv.i, %indvars.iv
  %.idx.i = mul nsw i64 %i.st, 36
  %i.su = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 12
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 20
  %i.sz = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !53 ; 2 uses
  %i.tc = load <2 x float>, ptr %i.sz, align 4, !tbaa !53 ; 3 uses
  %i.td = fmul fast <2 x float> %i.tc, <float f0xBF2AAAAB, float f0x3EF15BEF> ; 2 uses
  %i.te = fmul fast float %i.tb, f0x3EAAAAAB      ; 8 uses
  %i.tf = extractelement <2 x float> %i.td, i64 1 ; 2 uses
  %i.tg = fadd fast float %i.tf, %i.te
  %i.th = extractelement <2 x float> %i.td, i64 0 ; 2 uses
  %i.ti = fsub fast float %i.th, %i.tg            ; 2 uses
  %i.tj = fadd fast float %i.tf, %i.th
  %i.tk = fsub fast float %i.tj, %i.te            ; 2 uses
  %i.tl = extractelement <2 x float> %i.tc, i64 0 ; 2 uses
  %i.tm = fmul fast <2 x float> %i.tc, <float f0x3E2AAAAB, float f0x3E715BEF> ; 3 uses
  %i.tn = call fast float @llvm.vector.reduce.fadd.v2f32(float %i.te, <2 x float> %i.tm) ; 2 uses
  %shift = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub fast <2 x float> %i.tm, %shift
  %i.to = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.tp = fadd fast float %i.to, %i.te            ; 2 uses
  %i.tq = fmul fast float %i.tl, f0x3EAAAAAB      ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.116.i, i64 4
  %i.ts = getelementptr inbounds nuw i8, ptr %.116.i, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %.116.i, i64 12
  %i.tu = getelementptr inbounds nuw i8, ptr %.116.i, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %.116.i, i64 20
  %i.tw = getelementptr inbounds nuw i8, ptr %.116.i, i64 24
  %i.tx = fmul fast float %i.ti, f0x3EAAAAAB      ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.116.i, i64 28
  %i.tz = getelementptr inbounds nuw i8, ptr %.116.i, i64 32
  %i.ua = load <4 x float>, ptr %i.su, align 4, !tbaa !53 ; 5 uses
  %i.ub = load float, ptr %i.sw, align 4, !tbaa !53 ; 3 uses
  %i.uc = load float, ptr %i.sv, align 4, !tbaa !53 ; 3 uses
  %11 = load <2 x float>, ptr %i.su, align 4
  %i.ud = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ue = load <2 x float>, ptr %i.sx, align 4, !tbaa !53 ; 2 uses
  %i.uf = load float, ptr %i.sy, align 4, !tbaa !53 ; 2 uses
  %i.ug = shufflevector <4 x float> %i.ua, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.uh = fmul fast <2 x float> %i.ug, splat (float f0xBF2AAAAB) ; 3 uses
  %i.ui = shufflevector <4 x float> %i.ua, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.uj = shufflevector <2 x float> %i.ue, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uk = shufflevector <4 x float> %i.ua, <4 x float> %i.uj, <2 x i32> <i32 1, i32 4>
  %i.ul = fmul fast <2 x float> %i.uk, splat (float f0x3EF15BEF) ; 2 uses
  %i.um = extractelement <2 x float> %i.uh, i64 0 ; 2 uses
  %i.un = shufflevector <2 x float> %i.ui, <2 x float> %i.ue, <2 x i32> <i32 0, i32 3>
  %i.uo = fmul fast <2 x float> %i.un, splat (float f0x3EAAAAAB) ; 4 uses
  %i.up = extractelement <4 x float> %i.ua, i64 0
  %i.uq = fadd fast <2 x float> %i.ul, %i.uo
  %i.ur = fsub fast <2 x float> %i.uh, %i.uq      ; 3 uses
  %i.us = fmul fast float %i.ub, f0x3EF15BEF      ; 2 uses
  %i.ut = fadd fast float %i.us, %i.tq
  %i.uu = fsub fast float %i.um, %i.ut
  %i.uv = fadd fast float %i.us, %i.um
  %i.uw = fsub fast float %i.uv, %i.tq
  %i.ux = fmul fast float %i.ub, f0x3E715BEF      ; 2 uses
  store float %i.up, ptr %.116.i, align 4, !tbaa !53
  store float %i.uu, ptr %i.tr, align 4, !tbaa !53
  store float %i.uw, ptr %i.ts, align 4, !tbaa !53
  store float %i.tl, ptr %i.tv, align 4, !tbaa !53
  %i.uy = fmul fast <2 x float> %i.ur, <float f0x3E2AAAAB, float f0x3EF15BEF> ; 2 uses
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.va = extractelement <2 x float> %i.uy, i64 1
  %i.vb = fadd fast float %i.va, %i.tx
  %i.vc = fmul fast <2 x float> %i.ur, <float f0xBF2AAAAB, float f0x3E715BEF> ; 3 uses
  %i.vd = extractelement <2 x float> %i.vc, i64 0
  %i.ve = fsub fast float %i.vd, %i.vb
  %i.vf = fadd fast <2 x float> %i.vc, %i.uz      ; 2 uses
  %i.vg = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vi = fsub fast <2 x float> %i.vf, %i.vh
  %i.vj = fadd fast <2 x float> %i.vf, %i.vh
  %i.vk = shufflevector <2 x float> %i.vi, <2 x float> %i.vj, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop190 = fsub fast <2 x float> %i.uz, %i.vc
  %i.vl = extractelement <2 x float> %foldExtExtBinop190, i64 1
  %i.vm = fadd fast float %i.vl, %i.tx
  %i.vn = extractelement <2 x float> %i.ur, i64 0
  store float %i.vn, ptr %i.tw, align 4, !tbaa !53
  store float %i.ve, ptr %i.ty, align 4, !tbaa !53
  store <2 x float> %i.vk, ptr %i.tz, align 4, !tbaa !53
  %i.vo = getelementptr inbounds nuw i8, ptr %.116.i, i64 40
  store float %i.vm, ptr %i.vo, align 4, !tbaa !53
  %i.vp = getelementptr inbounds nuw i8, ptr %.116.i, i64 44
  store float %i.ti, ptr %i.vp, align 4, !tbaa !53
  %i.vq = getelementptr inbounds nuw i8, ptr %.116.i, i64 48
  %i.vr = fmul fast float %i.tk, f0x3EAAAAAB      ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.116.i, i64 52
  %i.vt = getelementptr inbounds nuw i8, ptr %.116.i, i64 56
  %i.vu = fadd fast <2 x float> %i.ul, %i.uh
  %i.vv = fsub fast <2 x float> %i.vu, %i.uo      ; 3 uses
  %i.vw = fmul fast <2 x float> %i.vv, <float f0x3E2AAAAB, float f0x3EF15BEF> ; 2 uses
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vy = extractelement <2 x float> %i.vw, i64 1
  %i.vz = fadd fast float %i.vy, %i.vr
  %i.wa = fmul fast <2 x float> %i.vv, <float f0xBF2AAAAB, float f0x3E715BEF> ; 3 uses
  %i.wb = extractelement <2 x float> %i.wa, i64 0
  %i.wc = fsub fast float %i.wb, %i.vz
  %i.wd = fadd fast <2 x float> %i.wa, %i.vx      ; 2 uses
  %i.we = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wg = fsub fast <2 x float> %i.wd, %i.wf
  %i.wh = fadd fast <2 x float> %i.wd, %i.wf
  %i.wi = shufflevector <2 x float> %i.wg, <2 x float> %i.wh, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop192 = fsub fast <2 x float> %i.vx, %i.wa
  %i.wj = extractelement <2 x float> %foldExtExtBinop192, i64 1
  %i.wk = fadd fast float %i.wj, %i.vr
  %i.wl = extractelement <2 x float> %i.vv, i64 0
  store float %i.wl, ptr %i.vq, align 4, !tbaa !53
  store float %i.wc, ptr %i.vs, align 4, !tbaa !53
  store <2 x float> %i.wi, ptr %i.vt, align 4, !tbaa !53
  %i.wm = getelementptr inbounds nuw i8, ptr %.116.i, i64 64
  store float %i.wk, ptr %i.wm, align 4, !tbaa !53
  %i.wn = getelementptr inbounds nuw i8, ptr %.116.i, i64 68
  store float %i.tk, ptr %i.wn, align 4, !tbaa !53
  %i.wo = getelementptr inbounds nuw i8, ptr %.116.i, i64 72
  %i.wp = fmul fast float %i.tn, f0x3EAAAAAB      ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.116.i, i64 76
  %i.wr = getelementptr inbounds nuw i8, ptr %.116.i, i64 80
  %i.ws = insertelement <2 x float> %i.ud, float %i.ub, i64 1
  %i.wt = fmul fast <2 x float> %i.ws, <float f0x3E715BEF, float f0x3E2AAAAB> ; 3 uses
  %i.wu = shufflevector <4 x float> %i.ua, <4 x float> %i.uj, <2 x i32> <i32 0, i32 4>
  %i.wv = fmul fast <2 x float> %i.wu, <float f0x3E2AAAAB, float f0x3E715BEF> ; 4 uses
  %i.ww = extractelement <2 x float> %i.wv, i64 0 ; 2 uses
  %i.wx = fadd fast <2 x float> %i.wv, %i.wt
  %i.wy = fadd fast <2 x float> %i.wx, %i.uo      ; 3 uses
  %i.wz = fadd fast float %i.ux, %i.ww
  %i.xa = fadd fast float %i.wz, %i.tq
  %i.xb = fsub fast float %i.ww, %i.ux
  %i.xc = fadd fast float %i.xb, %i.tq
  store float %i.xa, ptr %i.tt, align 4, !tbaa !53
  store float %i.xc, ptr %i.tu, align 4, !tbaa !53
  %i.xd = fmul fast <2 x float> %i.wy, <float f0x3E2AAAAB, float f0x3EF15BEF> ; 3 uses
  %i.xe = shufflevector <2 x float> %i.xd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xf = extractelement <2 x float> %i.xd, i64 1
  %i.xg = fadd fast float %i.xf, %i.wp
  %i.xh = fmul fast <2 x float> %i.wy, <float f0xBF2AAAAB, float f0x3E715BEF> ; 3 uses
  %i.xi = extractelement <2 x float> %i.xh, i64 0
  %i.xj = fsub fast float %i.xi, %i.xg
  %i.xk = fadd fast <2 x float> %i.xh, %i.xe      ; 2 uses
  %i.xl = insertelement <2 x float> poison, float %i.wp, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xn = fsub fast <2 x float> %i.xk, %i.xm
  %i.xo = fadd fast <2 x float> %i.xk, %i.xm
  %i.xp = shufflevector <2 x float> %i.xn, <2 x float> %i.xo, <2 x i32> <i32 0, i32 3>
  %i.xq = extractelement <2 x float> %i.wy, i64 0
  store float %i.xq, ptr %i.wo, align 4, !tbaa !53
  store float %i.xj, ptr %i.wq, align 4, !tbaa !53
  store <2 x float> %i.xp, ptr %i.wr, align 4, !tbaa !53
  %i.xr = getelementptr inbounds nuw i8, ptr %.116.i, i64 88
  %i.xs = getelementptr inbounds nuw i8, ptr %.116.i, i64 92
  store float %i.tn, ptr %i.xs, align 4, !tbaa !53
  %i.xt = getelementptr inbounds nuw i8, ptr %.116.i, i64 96
  %i.xu = fmul fast float %i.tp, f0x3EAAAAAB      ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.116.i, i64 100
  %i.xw = getelementptr inbounds nuw i8, ptr %.116.i, i64 104
  %i.xx = shufflevector <2 x float> %i.wv, <2 x float> %i.wt, <2 x i32> <i32 0, i32 3>
  %i.xy = shufflevector <2 x float> %i.wt, <2 x float> %i.wv, <2 x i32> <i32 0, i32 3>
  %i.xz = fsub fast <2 x float> %i.xx, %i.xy
  %i.ya = fadd fast <2 x float> %i.xz, %i.uo      ; 3 uses
  %i.yb = fmul fast <2 x float> %i.ya, <float f0x3E2AAAAB, float f0x3EF15BEF> ; 2 uses
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yd = extractelement <2 x float> %i.yb, i64 1
  %i.ye = fadd fast float %i.yd, %i.xu
  %i.yf = fmul fast <2 x float> %i.ya, <float f0xBF2AAAAB, float f0x3E715BEF> ; 3 uses
  %i.yg = extractelement <2 x float> %i.yf, i64 0
  %i.yh = fsub fast float %i.yg, %i.ye
  %i.yi = fadd fast <2 x float> %i.yf, %i.yc      ; 2 uses
  %i.yj = insertelement <2 x float> poison, float %i.xu, i64 0
  %i.yk = shufflevector <2 x float> %i.yj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yl = fsub fast <2 x float> %i.yi, %i.yk
  %i.ym = fadd fast <2 x float> %i.yi, %i.yk
  %i.yn = shufflevector <2 x float> %i.yl, <2 x float> %i.ym, <2 x i32> <i32 0, i32 3>
  %i.yo = shufflevector <2 x float> %i.xd, <2 x float> %i.yc, <2 x i32> <i32 0, i32 3>
  %i.yp = shufflevector <2 x float> %i.xh, <2 x float> %i.yf, <2 x i32> <i32 1, i32 3>
  %i.yq = fsub fast <2 x float> %i.yo, %i.yp      ; 2 uses
  %i.yr = extractelement <2 x float> %i.yq, i64 0
  %i.ys = fadd fast float %i.yr, %i.wp
  store float %i.ys, ptr %i.xr, align 4, !tbaa !53
  %i.yt = extractelement <2 x float> %i.yq, i64 1
  %i.yu = fadd fast float %i.yt, %i.xu
  %i.yv = extractelement <2 x float> %i.ya, i64 0
  store float %i.yv, ptr %i.xt, align 4, !tbaa !53
  store float %i.yh, ptr %i.xv, align 4, !tbaa !53
  store <2 x float> %i.yn, ptr %i.xw, align 4, !tbaa !53
  %i.yw = getelementptr inbounds nuw i8, ptr %.116.i, i64 112
  store float %i.yu, ptr %i.yw, align 4, !tbaa !53
  %i.yx = getelementptr inbounds nuw i8, ptr %.116.i, i64 116
  store float %i.tp, ptr %i.yx, align 4, !tbaa !53
  %i.yy = getelementptr inbounds nuw i8, ptr %.116.i, i64 120
  %i.yz = fmul fast float %i.uc, f0xBF2AAAAB      ; 2 uses
  %i.za = fmul fast float %i.uf, f0x3EF15BEF      ; 2 uses
  %i.zb = fadd fast float %i.za, %i.te
  %i.zc = fsub fast float %i.yz, %i.zb
  %i.zd = fadd fast float %i.za, %i.yz
  %i.ze = fsub fast float %i.zd, %i.te
  %i.zf = fmul fast float %i.uc, f0x3E2AAAAB      ; 2 uses
  %i.zg = fmul fast float %i.uf, f0x3E715BEF      ; 2 uses
  %i.zh = fadd fast float %i.zg, %i.zf
  %i.zi = fadd fast float %i.zh, %i.te
  %i.zj = fsub fast float %i.zf, %i.zg
  %i.zk = fadd fast float %i.zj, %i.te
  store float %i.uc, ptr %i.yy, align 4, !tbaa !53
  %i.zl = getelementptr inbounds nuw i8, ptr %.116.i, i64 124
  store float %i.zc, ptr %i.zl, align 4, !tbaa !53
  %i.zm = getelementptr inbounds nuw i8, ptr %.116.i, i64 128
  store float %i.ze, ptr %i.zm, align 4, !tbaa !53
  %i.zn = getelementptr inbounds nuw i8, ptr %.116.i, i64 132
  store float %i.zi, ptr %i.zn, align 4, !tbaa !53
  %i.zo = getelementptr inbounds nuw i8, ptr %.116.i, i64 136
  store float %i.zk, ptr %i.zo, align 4, !tbaa !53
  %i.zp = getelementptr inbounds nuw i8, ptr %.116.i, i64 140
  store float %i.tb, ptr %i.zp, align 4, !tbaa !53
  %i.zq = getelementptr inbounds nuw i8, ptr %.116.i, i64 144 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !481

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %middle.block185
  %.lcssa = phi ptr [ %i.da, %middle.block185 ], [ %i.zq, %.preheader.preheader.i ]
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %.preheader10.i, !llvm.loop !482

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %bb.d, %.preheader10.lr.ph.i
  %i.zr = trunc nsw i64 %indvars.iv to i32
  %i.zs = sdiv i32 %i.zr, %i.ai
  %i.zt = sext i32 %i.zs to i64
  %i.zu = mul i64 %i.ax, %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.zu
  %i.zw = mul i32 %.sroa.speculated, 36           ; 2 uses
  %i.zx = icmp sgt i32 %.sroa.speculated, 0       ; 3 uses
  %i.zy = sext i32 %i.zw to i64                   ; 11 uses
  %i.zz = mul i32 %.sroa.speculated, 72
  %i.aaa = sext i32 %i.zz to i64                  ; 3 uses
  %i.aab = mul nsw i32 %.sroa.speculated, 108
  %i.aac = sext i32 %i.aab to i64                 ; 3 uses
end_hunk_0
