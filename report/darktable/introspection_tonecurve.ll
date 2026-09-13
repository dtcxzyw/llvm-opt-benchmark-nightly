Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonecurve?download=true
inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@process:bb.a
  %i.oe = fcmp reassoc nsz arcp contract afn olt float %i.od, %i.nv
  %i.of = select reassoc nsz arcp contract afn i1 %i.oe, float %i.od, float %i.nv
  %i.og = fptosi float %i.of to i32               ; 2 uses
  %i.oh = sitofp reassoc nsz arcp contract afn i32 %i.og to float
  %i.oi = fsub reassoc nnan nsz arcp contract afn float %i.od, %i.oh
  %i.oj = sext i32 %i.og to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.nw, i64 %i.oj ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !13 ; 2 uses
  %i.om = getelementptr i8, ptr %i.ok, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !13
  %i.oo = fsub reassoc nsz arcp contract afn float %i.on, %i.ol
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, %i.oi
  %i.oq = fadd reassoc nsz arcp contract afn float %i.op, %i.ol
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.or = load float, ptr %i.aq, align 4, !tbaa !13
  %i.os = load float, ptr %i.am, align 64, !tbaa !13
  %i.ot = fmul reassoc nsz arcp contract afn float %i.os, %i.ly
  %i.ou = load float, ptr %i.ar, align 8, !tbaa !13
  %i.ov = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ot, float %i.ou)
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, %i.or
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.ox = phi reassoc nsz arcp contract afn float [ %i.ow, %bb.bd ], [ %i.oq, %bb.bc ], [ %i.ly, %bb.ba ]
  %i.oy = load ptr, ptr %i.as, align 16, !tbaa !163 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !13
  %i.pa = fcmp reassoc nsz arcp contract afn ult float %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pb = fcmp reassoc nsz arcp contract afn olt float %i.lx, 1.000000e+00
  br i1 %i.pb, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pc = load float, ptr %i.au, align 16, !tbaa !13
  %i.pd = load float, ptr %i.at, align 4, !tbaa !13
  %i.pe = fmul reassoc nsz arcp contract afn float %i.pd, %i.lx
  %i.pf = load float, ptr %i.av, align 4, !tbaa !13
  %i.pg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pe, float %i.pf)
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, %i.pc
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.pi = fmul reassoc nsz arcp contract afn float %i.lx, %i.nt ; 3 uses
  %i.pj = fcmp reassoc nsz arcp contract afn ogt float %i.pi, 0.000000e+00
  %i.pk = fcmp reassoc nsz arcp contract afn olt float %i.pi, %i.nt
  %..i.1.i.i.i = select reassoc nsz arcp contract afn i1 %i.pk, float %i.pi, float %i.nt
  %i.pl = select reassoc nsz arcp contract afn i1 %i.pj, float %..i.1.i.i.i, float 0.000000e+00 ; 3 uses
  %i.pm = fcmp reassoc nsz arcp contract afn olt float %i.pl, %i.nv
  %i.pn = select reassoc nsz arcp contract afn i1 %i.pm, float %i.pl, float %i.nv
  %i.po = fptosi float %i.pn to i32               ; 2 uses
  %i.pp = sitofp reassoc nsz arcp contract afn i32 %i.po to float
  %i.pq = fsub reassoc nnan nsz arcp contract afn float %i.pl, %i.pp
  %i.pr = sext i32 %i.po to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.pr ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !13 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.ps, i64 4
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !13
  %i.pw = fsub reassoc nsz arcp contract afn float %i.pv, %i.pt
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %i.pq
  %i.py = fadd reassoc nsz arcp contract afn float %i.px, %i.pt
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.pz = phi reassoc nsz arcp contract afn float [ %i.ph, %bb.bg ], [ %i.py, %bb.bh ], [ %i.lx, %bb.be ]
  %i.qa = load ptr, ptr %i.aw, align 8, !tbaa !163 ; 2 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !13
  %i.qc = fcmp reassoc nsz arcp contract afn ult float %i.qb, 0.000000e+00
  br i1 %i.qc, label %dt_ioppr_apply_trc.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qd = fcmp reassoc nsz arcp contract afn olt float %i.lz, 1.000000e+00
  br i1 %i.qd, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qe = load float, ptr %i.ay, align 4, !tbaa !13
  %i.qf = load float, ptr %i.ax, align 8, !tbaa !13
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, %i.lz
  %i.qh = load float, ptr %i.az, align 32, !tbaa !13
  %i.qi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qg, float %i.qh)
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.qe
  br label %dt_ioppr_apply_trc.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.qk = fmul reassoc nsz arcp contract afn float %i.lz, %i.nt ; 3 uses
  %i.ql = fcmp reassoc nsz arcp contract afn ogt float %i.qk, 0.000000e+00
  %i.qm = fcmp reassoc nsz arcp contract afn olt float %i.qk, %i.nt
  %..i.2.i.i.i = select reassoc nsz arcp contract afn i1 %i.qm, float %i.qk, float %i.nt
  %i.qn = select reassoc nsz arcp contract afn i1 %i.ql, float %..i.2.i.i.i, float 0.000000e+00 ; 3 uses
  %i.qo = fcmp reassoc nsz arcp contract afn olt float %i.qn, %i.nv
  %i.qp = select reassoc nsz arcp contract afn i1 %i.qo, float %i.qn, float %i.nv
  %i.qq = fptosi float %i.qp to i32               ; 2 uses
  %i.qr = sitofp reassoc nsz arcp contract afn i32 %i.qq to float
  %i.qs = fsub reassoc nnan nsz arcp contract afn float %i.qn, %i.qr
  %i.qt = sext i32 %i.qq to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qt ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !13 ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qu, i64 4
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !13
  %i.qy = fsub reassoc nsz arcp contract afn float %i.qx, %i.qv
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, %i.qs
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qz, %i.qv
  br label %dt_ioppr_apply_trc.exit.i.i

dt_ioppr_apply_trc.exit.i.i:                      ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.rb = phi reassoc nsz arcp contract afn float [ %i.qj, %bb.bk ], [ %i.ra, %bb.bl ], [ %i.lz, %bb.bi ]
  %i.rc = load float, ptr %i.ba, align 16, !tbaa !13
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.ox
  %i.re = load float, ptr %i.bb, align 4, !tbaa !13
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.pz
  %i.rg = fadd reassoc nsz arcp contract afn float %i.rf, %i.rd
  %i.rh = load float, ptr %i.bc, align 8, !tbaa !13
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, %i.rb
  %i.rj = fadd reassoc nsz arcp contract afn float %i.rg, %i.ri
  br label %dt_rgb_norm.exit

bb.bm:                                            ; preds = %bb.az
  %i.rk = load float, ptr %i.ba, align 4, !tbaa !13
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.ly
  %i.rm = load float, ptr %i.bb, align 4, !tbaa !13
  %i.rn = fmul reassoc nsz arcp contract afn float %i.rm, %i.lx
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %i.rl
  %i.rp = load float, ptr %i.bc, align 4, !tbaa !13
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.lz
  %i.rr = fadd reassoc nsz arcp contract afn float %i.ro, %i.rq
  br label %dt_rgb_norm.exit

bb.bn:                                            ; preds = %bb.ay
  %i.rs = fmul reassoc nsz arcp contract afn float %i.ly, f0x3E63D838
  %i.rt = fmul reassoc nsz arcp contract afn float %i.lx, f0x3F37855B
  %i.ru = fadd reassoc nsz arcp contract afn float %i.rt, %i.rs
  %i.rv = fmul reassoc nsz arcp contract afn float %i.lz, 6.061690e-02
  %i.rw = fadd reassoc nsz arcp contract afn float %i.ru, %i.rv
  br label %dt_rgb_norm.exit

bb.bo:                                            ; preds = %bb.ar
  %i.rx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ly, float %i.lx)
  %i.ry = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rx, float %i.lz)
  br label %dt_rgb_norm.exit

bb.bp:                                            ; preds = %bb.ar
  %i.rz = fadd reassoc nsz arcp contract afn float %i.lx, %i.ly
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.lz
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.bq:                                            ; preds = %bb.ar
  %i.sc = fadd reassoc nsz arcp contract afn float %i.lx, %i.ly
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sc, %i.lz
  br label %dt_rgb_norm.exit

bb.br:                                            ; preds = %bb.ar
  %foldExtExtBinop252 = fmul reassoc nsz arcp contract afn <2 x float> %i.lw, %i.lw
  %i.se = extractelement <2 x float> %foldExtExtBinop252, i64 0
  %i.sf = fmul reassoc nsz arcp contract afn float %i.lx, %i.lx
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.se
  %foldExtExtBinop254 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.sh = extractelement <4 x float> %foldExtExtBinop254, i64 0
  %i.si = fadd reassoc nsz arcp contract afn float %i.sg, %i.sh
  %i.sj = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.si)
  br label %dt_rgb_norm.exit

bb.bs:                                            ; preds = %bb.ar
  %i.sk = fmul reassoc nsz arcp contract afn <2 x float> %i.lw, %i.lw ; 3 uses
  %foldExtExtBinop256 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %i.sl = extractelement <4 x float> %foldExtExtBinop256, i64 0
  %i.sm = extractelement <2 x float> %i.sk, i64 0
  %foldExtExtBinop258 = fmul reassoc nsz arcp contract afn <2 x float> %i.sk, %i.lw
  %i.sn = extractelement <2 x float> %foldExtExtBinop258, i64 0
  %i.so = extractelement <2 x float> %i.sk, i64 1 ; 2 uses
  %i.sp = fmul reassoc nsz arcp contract afn float %i.so, %i.lx
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sp, %i.sn
  %foldExtExtBinop260 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop256, %foldExtExtBinop
  %i.sr = extractelement <4 x float> %foldExtExtBinop260, i64 0
  %i.ss = fadd reassoc nsz arcp contract afn float %i.sq, %i.sr
  %i.st = fadd reassoc nsz arcp contract afn float %i.so, %i.sm
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.sl
  %i.sv = fdiv reassoc nsz arcp contract afn float %i.ss, %i.su
  br label %dt_rgb_norm.exit

bb.bt:                                            ; preds = %bb.ar
  %i.sw = fadd reassoc nsz arcp contract afn float %i.lx, %i.ly
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, %i.lz
  %i.sy = fmul reassoc nsz arcp contract afn float %i.sx, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %dt_ioppr_apply_trc.exit.i.i, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %.0.i = phi nsz float [ %i.sy, %bb.bt ], [ %i.ry, %bb.bo ], [ %i.sb, %bb.bp ], [ %i.sd, %bb.bq ], [ %i.sj, %bb.br ], [ %i.sv, %bb.bs ], [ %i.rw, %bb.bn ], [ %i.rj, %dt_ioppr_apply_trc.exit.i.i ], [ %i.rr, %bb.bm ] ; 5 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt float %.0.i, 0.000000e+00
  br i1 %i.sz, label %bb.bu, label %.loopexit.loopexit

bb.bu:                                            ; preds = %dt_rgb_norm.exit
  %i.ta = fcmp reassoc nsz arcp contract afn olt float %.0.i, %i.k
  br i1 %i.ta, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.tb = fmul reassoc nnan nsz arcp contract afn float %.0.i, 6.553600e+04
  %i.tc = fptosi float %i.tb to i32
  %6 = tail call i32 @llvm.smax.i32(i32 %i.tc, i32 0)
  %i.td = tail call i32 @llvm.umin.i32(i32 %6, i32 65535)
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.te
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !13
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.th = load float, ptr %i.aj, align 4, !tbaa !13
  %i.ti = load float, ptr %i.i, align 8, !tbaa !13
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, %.0.i
  %i.tk = load float, ptr %i.ak, align 8, !tbaa !13
  %i.tl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tj, float %i.tk)
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, %i.th
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.tn = phi reassoc nsz arcp contract afn float [ %i.tg, %bb.bv ], [ %i.tm, %bb.bw ]
  %i.to = fdiv reassoc nsz arcp contract afn float %i.tn, %.0.i
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bx, %dt_rgb_norm.exit
  %.0163 = phi nsz float [ %i.to, %bb.bx ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 3 uses
  %i.tp = fmul reassoc nsz arcp contract afn float %i.ly, %.0163
  %i.tq = fmul reassoc nsz arcp contract afn float %i.lx, %.0163
  %i.tr = fmul reassoc nsz arcp contract afn float %i.lz, %.0163
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %bb.ax, %.loopexit.loopexit
  %.sroa.0.0 = phi nsz float [ %i.tp, %.loopexit.loopexit ], [ %i.mo, %bb.ax ], [ %i.mo, %bb.aw ] ; 3 uses
  %.sroa.9.0 = phi nsz float [ %i.tq, %.loopexit.loopexit ], [ %i.nc, %bb.ax ], [ %i.nc, %bb.aw ] ; 3 uses
  %.sroa.15.0 = phi nsz float [ %i.tr, %.loopexit.loopexit ], [ %i.np, %bb.ax ], [ %i.nj, %bb.aw ] ; 4 uses
  %i.ts = fmul reassoc nsz arcp contract afn float %.sroa.0.0, f0x3F4C346C
  %i.tt = fmul reassoc nsz arcp contract afn float %.sroa.9.0, f0x3E0A6FB1
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.ts
  %i.tv = fmul reassoc nsz arcp contract afn float %.sroa.15.0, 3.135340e-02
  %i.tw = fadd reassoc nsz arcp contract afn float %i.tu, %i.tv ; 2 uses
  %i.tx = fmul reassoc nsz arcp contract afn float %.sroa.0.0, f0x3E937A01
  %i.ty = fmul reassoc nsz arcp contract afn float %.sroa.9.0, f0x3F363D62
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, %i.tx
  %i.ua = fmul reassoc nsz arcp contract afn float %.sroa.15.0, f0x38B3B9D6
  %i.ub = fadd reassoc nsz arcp contract afn float %i.tz, %i.ua ; 3 uses
  %i.uc = fadd reassoc nsz arcp contract afn float %.sroa.9.0, %.sroa.0.0 ; 2 uses
  %i.ud = fmul reassoc nsz arcp contract afn float %i.uc, 0.000000e+00
  %i.ue = fmul reassoc nsz arcp contract afn float %.sroa.15.0, f0x3F5340F6
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ud, %i.ue ; 2 uses
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uc, %.sroa.15.0
  %i.uh = fmul reassoc nsz arcp contract afn float %i.tw, f0x3F84C0A6 ; 2 uses
  %i.ui = fcmp reassoc nsz arcp contract afn ogt float %i.uh, f0x3C111AA7
  br i1 %i.ui, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.loopexit
  %i.uj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uh) #24
  br label %bb.ca

bb.bz:                                            ; preds = %.loopexit
  %i.uk = fmul reassoc nsz arcp contract afn float %i.tw, f0x410137F7
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uk, f0x3E0D3DCB
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.um = phi reassoc nsz arcp contract afn float [ %i.uj, %bb.by ], [ %i.ul, %bb.bz ]
  %i.un = fcmp reassoc nsz arcp contract afn ogt float %i.ub, f0x3C111AA7
  br i1 %i.un, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uo = fmul reassoc nsz arcp contract afn float %i.ub, f0x40F92F69
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, f0x3E0D3DCB
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.uq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ub) #24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ur = phi reassoc nsz arcp contract afn float [ %i.uq, %bb.cc ], [ %i.up, %bb.cb ] ; 2 uses
  %i.us = fmul reassoc nsz arcp contract afn float %i.uf, f0x3F9B2B9B ; 2 uses
  %i.ut = fcmp reassoc nsz arcp contract afn ogt float %i.us, f0x3C111AA7
  br i1 %i.ut, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uu = fmul reassoc nsz arcp contract afn float %i.uf, f0x41170A26
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, f0x3E0D3DCB
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.uw = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.us) #24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ux = phi reassoc nsz arcp contract afn float [ %i.uw, %bb.cf ], [ %i.uv, %bb.ce ]
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ug, 0.000000e+00 ; 3 uses
  %i.uz = fcmp reassoc nsz arcp contract afn ogt float %i.uy, f0x3C111AA7
  br i1 %i.uz, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.va = fadd reassoc nsz arcp contract afn float %i.uy, f0x3E0D3DCB
  br label %dt_prophotorgb_to_Lab.exit

bb.ci:                                            ; preds = %bb.cg
  %i.vb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uy) #24
  br label %dt_prophotorgb_to_Lab.exit

dt_prophotorgb_to_Lab.exit:                       ; preds = %bb.ch, %bb.ci
  %i.vc = phi reassoc nsz arcp contract afn float [ %i.vb, %bb.ci ], [ %i.va, %bb.ch ]
  %i.vd = fmul reassoc nsz arcp contract afn float %i.ur, 1.160000e+02
  %i.ve = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vf = insertelement <4 x float> %i.ve, float %i.um, i64 1
  %i.vg = insertelement <4 x float> %i.vf, float %i.ux, i64 2
  %i.vh = insertelement <4 x float> %i.vg, float %i.vc, i64 3
  %i.vi = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.ur, i64 1
  %i.vj = shufflevector <4 x float> %i.vi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.vk = fsub reassoc nsz arcp contract afn <4 x float> %i.vh, %i.vj
  %i.vl = fmul reassoc nsz arcp contract afn <4 x float> %i.vk, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.vl, ptr %i.ci, align 4, !tbaa !13
  br label %bb.cj

bb.cj:                                            ; preds = %bb.f, %bb.h, %bb.s, %bb.v, %bb.u, %dt_prophotorgb_to_Lab.exit, %dt_XYZ_to_Lab.exit
  %i.vm = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vm
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !13
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vm
  store float %i.vo, ptr %i.vp, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.vq = icmp ugt i64 %i.ag, %indvars.iv.next
  br i1 %i.vq, label %bb.c, label %.loopexit199

.loopexit199:                                     ; preds = %bb.cj, %bb.b, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
.preheader137.preheader:
  %1 = alloca %struct.dt_iop_tonecurve_params_t, align 8 ; 45 uses
  %2 = alloca %struct.dt_develop_blend_params_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.a, i8 0, i64 472, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  store i32 6, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 484
  store i32 7, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i32 7, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i32 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 508
  store i32 0, ptr %i.g, align 4, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i32 3, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 1, ptr %i.i, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 324
  store <8 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F333333>, ptr %i.j, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 196
  store <8 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F333333>, ptr %i.k, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 356
  store <4 x float> <float f0x3F333333, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !51
  store <4 x float> <float f0x3F333333, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 372
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 3.862000e-03, float 7.782000e-03, float 7.661300e-02, float 1.561820e-01, float 1.693550e-01, float 2.903520e-01>, ptr %1, align 8, !tbaa !13
  store <4 x float> <float 7.741940e-01, float f0x3F461B2A, float 1.000000e+00, float 1.000000e+00>, ptr %i.q, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.w = tail call i32 (...) %i.v() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.t, i32 noundef %i.w, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store i32 7, ptr %i.b, align 8, !tbaa !14
  store float 0.000000e+00, ptr %1, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store <4 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 1.700000e-01>, ptr %i.s, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store <8 x float> <float 1.700000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F547AE1, float f0x3F547AE1, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.y, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.af = call i32 (...) %i.ae() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.t, i32 noundef %i.af, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store <2 x float> splat (float 1.000000e+00), ptr %i.ac, align 8, !tbaa !13
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 6.000000e-02, float 1.700000e-01, float 1.400000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %1, align 8, !tbaa !13
  store <4 x float> <float f0x3F547AE1, float f0x3F5C28F5, float 9.200000e-01, float f0x3F70A3D7>, ptr %i.q, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.ah = call i32 (...) %i.ag() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.t, i32 noundef %i.ah, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  %index.next493 = add nuw i64 %index484, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next493, %n.vec482
  br i1 %i.hj, label %middle.block494, label %vector.body483, !llvm.loop !181

middle.block494:                                  ; preds = %vector.body483
  %cmp.n495 = icmp eq i64 %n.vec482, %wide.trip.count.2
  br i1 %cmp.n495, label %..loopexit320_crit_edge.2, label %scalar.ph479.preheader

scalar.ph479.preheader:                           ; preds = %.lr.ph.2, %middle.block494
  %indvars.iv.2.ph = phi i64 [ 0, %.lr.ph.2 ], [ %n.vec482, %middle.block494 ] ; 2 uses
  br label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.preheader, %scalar.ph479
  %indvars.iv329.2 = phi i64 [ %indvars.iv.next330.2, %scalar.ph479 ], [ %indvars.iv.2.ph, %scalar.ph479.preheader ] ; 2 uses
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph479 ], [ %indvars.iv.2.ph, %scalar.ph479.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv329.2
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.2
  %i.hm = load <2 x float>, ptr %i.hk, align 4, !tbaa !13
  store <2 x float> %i.hm, ptr %i.hl, align 8, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %indvars.iv.next330.2 = add nuw nsw i64 %indvars.iv329.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next330.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %..loopexit320_crit_edge.2, label %scalar.ph479, !llvm.loop !182

..loopexit320_crit_edge.2:                        ; preds = %scalar.ph479, %middle.block494
  %indvars.iv.next.2.lcssa = phi i64 [ %n.vec482, %middle.block494 ], [ %indvars.iv.next.2, %scalar.ph479 ]
  %i.hn = trunc nuw i64 %indvars.iv.next.2.lcssa to i8
  store i8 %i.hn, ptr %i.gu, align 4, !tbaa !71
  br label %.loopexit319.2

.preheader318.2:                                  ; preds = %bb.f
  %i.ho = icmp sgt i32 %i.gh, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60 ; 4 uses
  br i1 %i.ho, label %.lr.ph323.2, label %.loopexit319.2

.lr.ph323.2:                                      ; preds = %.preheader318.2
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 3 uses
  %wide.trip.count335.2 = zext nneg i32 %i.gh to i64 ; 3 uses
  %min.iters.check498 = icmp ult i32 %i.gh, 8
  br i1 %min.iters.check498, label %scalar.ph497.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph323.2
  %n.vec500 = and i64 %wide.trip.count335.2, 2147483640 ; 3 uses
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph499
  %index502 = phi i64 [ 0, %vector.ph499 ], [ %index.next511, %vector.body501 ] ; 4 uses
  %i.ht = or disjoint i64 %index502, 4            ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %index502
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ht
  %wide.vec503 = load <8 x float>, ptr %i.hu, align 4, !tbaa !13
  %wide.vec506 = load <8 x float>, ptr %i.hv, align 4, !tbaa !13
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index502
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht
  store <8 x float> %wide.vec503, ptr %i.hw, align 4, !tbaa !13
  store <8 x float> %wide.vec506, ptr %i.hx, align 4, !tbaa !13
  %index.next511 = add nuw i64 %index502, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next511, %n.vec500
  br i1 %i.hy, label %middle.block512, label %vector.body501, !llvm.loop !183

middle.block512:                                  ; preds = %vector.body501
  %cmp.n513 = icmp eq i64 %n.vec500, %wide.trip.count335.2
  br i1 %cmp.n513, label %.loopexit319.2, label %scalar.ph497.preheader

scalar.ph497.preheader:                           ; preds = %.lr.ph323.2, %middle.block512
  %indvars.iv332.2.ph = phi i64 [ 0, %.lr.ph323.2 ], [ %n.vec500, %middle.block512 ]
  br label %scalar.ph497

scalar.ph497:                                     ; preds = %scalar.ph497.preheader, %scalar.ph497
  %indvars.iv332.2 = phi i64 [ %indvars.iv.next333.2, %scalar.ph497 ], [ %indvars.iv332.2.ph, %scalar.ph497.preheader ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv332.2
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv332.2
  %i.ib = load <2 x float>, ptr %i.hz, align 4, !tbaa !13
  store <2 x float> %i.ib, ptr %i.ia, align 8, !tbaa !13
  %indvars.iv.next333.2 = add nuw nsw i64 %indvars.iv332.2, 1 ; 2 uses
  %exitcond336.2.not = icmp eq i64 %indvars.iv.next333.2, %wide.trip.count335.2
  br i1 %exitcond336.2.not, label %.loopexit319.2, label %scalar.ph497, !llvm.loop !184

.loopexit319.2:                                   ; preds = %scalar.ph497, %middle.block512, %.preheader318.2, %..loopexit320_crit_edge.2, %bb.g
  %i.ic = phi ptr [ %i.hq, %.preheader318.2 ], [ %i.gp, %bb.g ], [ %i.gp, %..loopexit320_crit_edge.2 ], [ %i.hq, %middle.block512 ], [ %i.hq, %scalar.ph497 ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 524336 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 184 ; 2 uses
  store i32 65536, ptr %i.ie, align 8, !tbaa !68
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 188
  store i32 65536, ptr %i.if, align 4, !tbaa !69
  %i.ig = tail call i32 @CurveDataSample(ptr noundef %i.ic, ptr noundef nonnull %i.ie) #22 ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 192
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !67 ; 2 uses
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %.loopexit319.2
  %index518 = phi i64 [ 0, %.loopexit319.2 ], [ %index.next523.1, %vector.body517 ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %index518 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %wide.load519 = load <8 x i16>, ptr %i.ij, align 2, !tbaa !72
  %wide.load520 = load <8 x i16>, ptr %i.ik, align 2, !tbaa !72
  %wide.load521 = load <8 x i16>, ptr %i.il, align 2, !tbaa !72
  %wide.load522 = load <8 x i16>, ptr %i.im, align 2, !tbaa !72
  %i.in = uitofp <8 x i16> %wide.load519 to <8 x float>
  %i.io = uitofp <8 x i16> %wide.load520 to <8 x float>
  %i.ip = uitofp <8 x i16> %wide.load521 to <8 x float>
  %i.iq = uitofp <8 x i16> %wide.load522 to <8 x float>
  %i.ir = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.in, splat (float f0x37800000)
  %i.is = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.io, splat (float f0x37800000)
  %i.it = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ip, splat (float f0x37800000)
  %i.iu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.iq, splat (float f0x37800000)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index518 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store <8 x float> %i.ir, ptr %i.iv, align 4, !tbaa !13
  store <8 x float> %i.is, ptr %i.iw, align 4, !tbaa !13
  store <8 x float> %i.it, ptr %i.ix, align 4, !tbaa !13
  store <8 x float> %i.iu, ptr %i.iy, align 4, !tbaa !13
  %index.next523 = or disjoint i64 %index518, 32  ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %index.next523 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %wide.load519.1 = load <8 x i16>, ptr %i.iz, align 2, !tbaa !72
  %wide.load520.1 = load <8 x i16>, ptr %i.ja, align 2, !tbaa !72
  %wide.load521.1 = load <8 x i16>, ptr %i.jb, align 2, !tbaa !72
  %wide.load522.1 = load <8 x i16>, ptr %i.jc, align 2, !tbaa !72
  %i.jd = uitofp <8 x i16> %wide.load519.1 to <8 x float>
  %i.je = uitofp <8 x i16> %wide.load520.1 to <8 x float>
  %i.jf = uitofp <8 x i16> %wide.load521.1 to <8 x float>
  %i.jg = uitofp <8 x i16> %wide.load522.1 to <8 x float>
  %i.jh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jd, splat (float f0x37800000)
  %i.ji = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.je, splat (float f0x37800000)
  %i.jj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jf, splat (float f0x37800000)
  %i.jk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jg, splat (float f0x37800000)
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index.next523 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  store <8 x float> %i.jh, ptr %i.jl, align 4, !tbaa !13
  store <8 x float> %i.ji, ptr %i.jm, align 4, !tbaa !13
  store <8 x float> %i.jj, ptr %i.jn, align 4, !tbaa !13
  store <8 x float> %i.jk, ptr %i.jo, align 4, !tbaa !13
  %index.next523.1 = add nuw nsw i64 %index518, 64 ; 2 uses
  %i.jp = icmp eq i64 %index.next523.1, 65536
  br i1 %i.jp, label %dt_draw_curve_calc_values.exit.2, label %vector.body517, !llvm.loop !185

dt_draw_curve_calc_values.exit.2:                 ; preds = %vector.body517
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 262192 ; 10 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 524336 ; 10 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %dt_draw_curve_calc_values.exit.2
  %index528 = phi i64 [ 0, %dt_draw_curve_calc_values.exit.2 ], [ %index.next532.1, %vector.body527 ] ; 5 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index528 ; 2 uses
  %wide.load529 = load <8 x float>, ptr %i.js, align 4, !tbaa !13
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load529, splat (float 1.000000e+02)
  store <8 x float> %i.jt, ptr %i.js, align 4, !tbaa !13
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index528 ; 2 uses
  %wide.load530 = load <8 x float>, ptr %i.ju, align 4, !tbaa !13
  %i.jv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load530, splat (float 2.560000e+02)
  %i.jw = fadd reassoc nsz arcp contract afn <8 x float> %i.jv, splat (float -1.280000e+02)
  store <8 x float> %i.jw, ptr %i.ju, align 4, !tbaa !13
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index528 ; 2 uses
  %wide.load531 = load <8 x float>, ptr %i.jx, align 4, !tbaa !13
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load531, splat (float 2.560000e+02)
  %i.jz = fadd reassoc nsz arcp contract afn <8 x float> %i.jy, splat (float -1.280000e+02)
  store <8 x float> %i.jz, ptr %i.jx, align 4, !tbaa !13
  %index.next532 = or disjoint i64 %index528, 8   ; 3 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index.next532 ; 2 uses
  %wide.load529.1 = load <8 x float>, ptr %i.ka, align 4, !tbaa !13
  %i.kb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load529.1, splat (float 1.000000e+02)
  store <8 x float> %i.kb, ptr %i.ka, align 4, !tbaa !13
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index.next532 ; 2 uses
  %wide.load530.1 = load <8 x float>, ptr %i.kc, align 4, !tbaa !13
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load530.1, splat (float 2.560000e+02)
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, splat (float -1.280000e+02)
  store <8 x float> %i.ke, ptr %i.kc, align 4, !tbaa !13
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index.next532 ; 2 uses
  %wide.load531.1 = load <8 x float>, ptr %i.kf, align 4, !tbaa !13
  %i.kg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load531.1, splat (float 2.560000e+02)
  %i.kh = fadd reassoc nsz arcp contract afn <8 x float> %i.kg, splat (float -1.280000e+02)
  store <8 x float> %i.kh, ptr %i.kf, align 4, !tbaa !13
  %index.next532.1 = add nuw nsw i64 %index528, 16 ; 2 uses
  %i.ki = icmp eq i64 %index.next532.1, 65536
  br i1 %i.ki, label %middle.block533, label %vector.body527, !llvm.loop !186

middle.block533:                                  ; preds = %vector.body527
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 1, ptr %i.kj, align 8, !tbaa !201
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !49 ; 2 uses
  switch i32 %i.kl, label %.loopexit [
    i32 2, label %.preheader
    i32 3, label %.preheader315
  ]

.preheader:                                       ; preds = %middle.block533, %dt_XYZ_to_Lab.exit
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %dt_XYZ_to_Lab.exit ], [ 0, %middle.block533 ] ; 3 uses
  %i.km = trunc nuw nsw i64 %indvars.iv349 to i32
  %i.kn = uitofp nneg i32 %i.km to float          ; 2 uses
  %i.ko = fmul reassoc nnan nsz arcp contract afn float %i.kn, f0x37800000 ; 2 uses
  %i.kp = fcmp reassoc nsz arcp contract afn ogt float %i.ko, f0x3C111AA7
  br i1 %i.kp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.kq = fmul reassoc nnan nsz arcp contract afn float %i.kn, f0x38F92F69
  %i.kr = fadd reassoc nnan nsz arcp contract afn float %i.kq, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.i:                                             ; preds = %.preheader
  %i.ks = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ko) #24
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.h, %bb.i
  %i.kt = phi reassoc nsz arcp contract afn float [ %i.ks, %bb.i ], [ %i.kr, %bb.h ]
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, f0x47947AE1
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, f0xC623D70A
  %i.kw = fptosi float %i.kv to i32
  %i.kx = tail call i32 @llvm.smax.i32(i32 %i.kw, i32 0)
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.kx, i32 65535)
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !13
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, 8.620690e-03
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lc, f0x3E0D3DCB ; 5 uses
  %i.le = fcmp reassoc nsz arcp contract afn ogt float %i.ld, f0x3E53DCB1
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ld, %i.ld
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.ld
  %i.lh = fmul reassoc nsz arcp contract afn float %i.ld, f0x3E038026
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, f0xBC911AA6
  %i.lj = select reassoc nsz arcp contract afn i1 %i.le, float %i.lg, float %i.li
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv349
  store float %i.lj, ptr %i.lk, align 4, !tbaa !13
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond352.not = icmp eq i64 %indvars.iv.next350, 65536
  br i1 %exitcond352.not, label %.loopexit, label %.preheader

.preheader315:                                    ; preds = %middle.block533, %dt_prophotorgb_to_Lab.exit
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %dt_prophotorgb_to_Lab.exit ], [ 0, %middle.block533 ] ; 3 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv345 to i32
  %i.lm = uitofp nneg i32 %i.ll to float          ; 6 uses
  %i.ln = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x37800000 ; 2 uses
  %i.lo = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x378000AD ; 2 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ogt float %i.lo, f0x3C111AA7
  br i1 %i.lp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader315
  %i.lq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lo) #24
  br label %bb.l

bb.k:                                             ; preds = %.preheader315
  %i.lr = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x38F930BA
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, f0x3E0D3DCB
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lt = phi reassoc nsz arcp contract afn float [ %i.lq, %bb.j ], [ %i.ls, %bb.k ]
  %i.lu = fcmp reassoc nsz arcp contract afn ogt float %i.ln, f0x3C111AA7
  br i1 %i.lu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lv = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x38F92F69
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lv, f0x3E0D3DCB
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.lx = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ln) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ly = phi reassoc nsz arcp contract afn float [ %i.lx, %bb.n ], [ %i.lw, %bb.m ] ; 3 uses
  %i.lz = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x37800C51 ; 2 uses
  %i.ma = fcmp reassoc nsz arcp contract afn ogt float %i.lz, f0x3C111AA7
  br i1 %i.ma, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mb = fmul reassoc nnan nsz arcp contract afn float %i.lm, f0x38F94762
  %i.mc = fadd reassoc nsz arcp contract afn float %i.mb, f0x3E0D3DCB
  br label %dt_prophotorgb_to_Lab.exit

bb.q:                                             ; preds = %bb.o
  %i.md = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.lz) #24
  br label %dt_prophotorgb_to_Lab.exit

dt_prophotorgb_to_Lab.exit:                       ; preds = %bb.q, %bb.p
  %i.me = phi reassoc nsz arcp contract afn float [ %i.md, %bb.q ], [ %i.mc, %bb.p ]
  %i.mf = fsub reassoc nsz arcp contract afn float %i.lt, %i.ly
  %i.mg = fmul reassoc nsz arcp contract afn float %i.ly, f0x47947AE1
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, f0xC623D70A
  %i.mi = fptosi float %i.mh to i32
  %i.mj = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 0)
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 65535)
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ml
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !13
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, 8.620690e-03
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, f0x3E0D3DCB ; 7 uses
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %i.mf ; 5 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt float %i.mq, f0x3E53DCB1
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mq, %i.mq
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mq
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mq, f0x3E038026
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mu, f0xBC911AA6
  %i.mw = select reassoc nsz arcp contract afn i1 %i.mr, float %i.mt, float %i.mv
  %i.mx = fcmp reassoc nsz arcp contract afn ogt float %i.mp, f0x3E53DCB1
  %i.my = fmul reassoc nsz arcp contract afn float %i.mp, %i.mp
  %i.mz = fmul reassoc nsz arcp contract afn float %i.my, %i.mp
  %i.na = fmul reassoc nsz arcp contract afn float %i.mp, f0x3E038026
  %i.nb = fadd reassoc nsz arcp contract afn float %i.na, f0xBC911AA6
  %i.nc = select reassoc nsz arcp contract afn i1 %i.mx, float %i.mz, float %i.nb
  %i.nd = fsub reassoc nsz arcp contract afn float %i.me, %i.ly
  %i.ne = fadd reassoc nsz arcp contract afn float %i.mp, %i.nd ; 5 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ogt float %i.ne, f0x3E53DCB1
  %i.ng = fmul reassoc nsz arcp contract afn float %i.ne, %i.ne
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, %i.ne
  %i.ni = fmul reassoc nsz arcp contract afn float %i.ne, f0x3E038026
  %i.nj = fadd reassoc nsz arcp contract afn float %i.ni, f0xBC911AA6
  %i.nk = select reassoc nsz arcp contract afn i1 %i.nf, float %i.nh, float %i.nj
  %i.nl = fmul reassoc nsz arcp contract afn float %i.mw, f0x3F066D1A
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nc, f0x3FC10BA0
  %i.nn = fsub reassoc nsz arcp contract afn float %i.nm, %i.nl
  %i.no = fmul reassoc nsz arcp contract afn float %i.nk, f0x3C8AC481
  %i.np = fadd reassoc nsz arcp contract afn float %i.nn, %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv345
  store float %i.np, ptr %i.nq, align 4, !tbaa !13
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next346, 65536
  br i1 %exitcond348.not, label %.loopexit, label %.preheader315

.loopexit:                                        ; preds = %dt_prophotorgb_to_Lab.exit, %dt_XYZ_to_Lab.exit, %middle.block533
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 786540
  store i32 %i.kl, ptr %i.nr, align 4, !tbaa !46
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 786544
  %i.nu = load <2 x i32>, ptr %i.ns, align 4, !tbaa !14
  store <2 x i32> %i.nu, ptr %i.nt, align 8, !tbaa !14
  %i.nv = load i32, ptr %i.l, align 4, !tbaa !14
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr [8 x i8], ptr %1, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -8
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !56 ; 11 uses
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nz, f0x3F333333
  %i.ob = fmul reassoc nsz arcp contract afn float %i.nz, 8.000000e-01
  %i.oc = fmul reassoc nsz arcp contract afn float %i.nz, f0x3F666666
  %i.od = fmul reassoc nsz arcp contract afn float %i.nz, 4.587520e+04
  %i.oe = fptosi float %i.od to i32
  %i.of = tail call i32 @llvm.smax.i32(i32 %i.oe, i32 0)
  %i.og = tail call i32 @llvm.umin.i32(i32 %i.of, i32 65535)
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.oh
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !13
  %i.ok = fmul reassoc nsz arcp contract afn float %i.nz, 5.242880e+04
  %i.ol = fptosi float %i.ok to i32
  %i.om = tail call i32 @llvm.smax.i32(i32 %i.ol, i32 0)
  %i.on = tail call i32 @llvm.umin.i32(i32 %i.om, i32 65535)
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.oo
  %i.oq = load float, ptr %i.op, align 4, !tbaa !13
  %i.or = fmul reassoc nsz arcp contract afn float %i.nz, f0x47666666
  %i.os = fptosi float %i.or to i32
  %i.ot = tail call i32 @llvm.smax.i32(i32 %i.os, i32 0)
  %i.ou = tail call i32 @llvm.umin.i32(i32 %i.ot, i32 65535)
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ov
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !13
  %i.oy = fmul reassoc nsz arcp contract afn float %i.nz, 6.553600e+04
  %i.oz = fptosi float %i.oy to i32
  %i.pa = tail call i32 @llvm.smax.i32(i32 %i.oz, i32 0)
  %i.pb = tail call i32 @llvm.umin.i32(i32 %i.pa, i32 65535)
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !13 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.b, i64 786480
  %i.pg = fdiv reassoc nsz arcp contract afn float %i.oj, %i.pe ; 2 uses
  %i.ph = fdiv reassoc nsz arcp contract afn float %i.oa, %i.nz ; 2 uses
  %i.pi = fcmp reassoc nsz arcp contract afn ogt float %i.pg, 0.000000e+00
  %i.pj = fcmp reassoc nsz arcp contract afn ogt float %i.ph, 0.000000e+00
  %or.cond.i = and i1 %i.pj, %i.pi
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.pk = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pg)
  %i.pl = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ph)
  %i.pm = fdiv reassoc nsz arcp contract afn float %i.pk, %i.pl
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.135.i = phi nsz float [ %i.pm, %bb.r ], [ 0.000000e+00, %.loopexit ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.r ], [ 0, %.loopexit ] ; 2 uses
  %i.pn = fdiv reassoc nsz arcp contract afn float %i.oq, %i.pe ; 2 uses
  %i.po = fdiv reassoc nsz arcp contract afn float %i.ob, %i.nz ; 2 uses
  %i.pp = fcmp reassoc nsz arcp contract afn ogt float %i.pn, 0.000000e+00
  %i.pq = fcmp reassoc nsz arcp contract afn ogt float %i.po, 0.000000e+00
  %or.cond.1.i = and i1 %i.pq, %i.pp
  br i1 %or.cond.1.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.pr = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pn)
  %i.ps = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.po)
  %i.pt = fdiv reassoc nsz arcp contract afn float %i.pr, %i.ps
  %i.pu = fadd reassoc nsz arcp contract afn float %.135.i, %i.pt
  %i.pv = add nuw nsw i32 %.1.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.135.1.i = phi nsz float [ %i.pu, %bb.t ], [ %.135.i, %bb.s ] ; 2 uses
  %.1.1.i = phi i32 [ %i.pv, %bb.t ], [ %.1.i, %bb.s ] ; 2 uses
  %i.pw = fdiv reassoc nsz arcp contract afn float %i.ox, %i.pe ; 2 uses
  %i.px = fdiv reassoc nsz arcp contract afn float %i.oc, %i.nz ; 2 uses
  %i.py = fcmp reassoc nsz arcp contract afn ogt float %i.pw, 0.000000e+00
  %i.pz = fcmp reassoc nsz arcp contract afn ogt float %i.px, 0.000000e+00
  %or.cond.2.i = and i1 %i.pz, %i.py
  br i1 %or.cond.2.i, label %bb.v, label %dt_iop_estimate_exp.exit

bb.v:                                             ; preds = %bb.u
  %i.qa = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pw)
  %i.qb = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.px)
  %i.qc = fdiv reassoc nsz arcp contract afn float %i.qa, %i.qb
  %i.qd = fadd reassoc nsz arcp contract afn float %.135.1.i, %i.qc
  %i.qe = add nuw nsw i32 %.1.1.i, 1
  br label %dt_iop_estimate_exp.exit

dt_iop_estimate_exp.exit:                         ; preds = %bb.u, %bb.v
  %.135.2.i = phi nsz float [ %i.qd, %bb.v ], [ %.135.1.i, %bb.u ]
  %.1.2.i = phi i32 [ %i.qe, %bb.v ], [ %.1.1.i, %bb.u ] ; 2 uses
  %.not.i = icmp eq i32 %.1.2.i, 0
  %i.qf = uitofp nneg i32 %.1.2.i to float
  %i.qg = fdiv reassoc nsz arcp contract afn float %.135.2.i, %i.qf
  %.2.i = select nsz i1 %.not.i, float 1.000000e+00, float %i.qg
  %i.qh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.nz
  store float %i.qh, ptr %i.pf, align 8, !tbaa !13
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 786484
  store float %i.pe, ptr %i.qi, align 4, !tbaa !13
  %i.qj = getelementptr inbounds nuw i8, ptr %i.b, i64 786488
  store float %.2.i, ptr %i.qj, align 8, !tbaa !13
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !14
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr [8 x i8], ptr %i.qk, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 -8
end_hunk_1
begin_hunk_2_@dt_iop_tonecurve_draw:bb.a
  %.reass.1.i429 = fmul reassoc nnan nsz arcp contract afn float %invariant.op.i427, 2.000000e+00
  %i.ow = fadd reassoc nnan nsz arcp contract afn float %.reass.1.i429, 1.000000e+00
  %i.ox = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ow)
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %i.oi
  %.reass35.1.i = fdiv reassoc nsz arcp contract afn float %i.oy, %i.om
  %i.oz = fpext reassoc nsz arcp contract afn float %.reass35.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.oz, double noundef %i.oo) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.oz, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.pa = fadd reassoc nsz arcp contract afn float %.reass32.1.i, %i.on
  %i.pb = fpext reassoc nsz arcp contract afn float %i.pa to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.pb) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.op, double noundef %i.pb) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %.reass32.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ok, 7.500000e-01
  %.reass.2.i430 = fmul reassoc nnan nsz arcp contract afn float %invariant.op.i427, 3.000000e+00
  %i.pc = fadd reassoc nnan nsz arcp contract afn float %.reass.2.i430, 1.000000e+00
  %i.pd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pc)
  %i.pe = fmul reassoc nsz arcp contract afn float %i.pd, %i.oi
  %.reass35.2.i = fdiv reassoc nsz arcp contract afn float %i.pe, %i.om
  %i.pf = fpext reassoc nsz arcp contract afn float %.reass35.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.pf, double noundef %i.oo) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.pf, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.pg = fadd reassoc nsz arcp contract afn float %.reass32.2.i, %i.on
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.ph = fadd reassoc nsz arcp contract afn float %i.nc, 1.000000e+00 ; 2 uses
  %i.pi = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 4 uses
  %i.pj = sub nsw i32 0, %i.lk
  %i.pk = sitofp reassoc nsz arcp contract afn i32 %i.pj to float ; 3 uses
  %i.pl = fmul reassoc nnan nsz arcp contract afn float %i.ph, 2.500000e-01 ; 2 uses
  %invariant.op.i431 = fadd reassoc nsz arcp contract afn float %i.pl, -2.500000e-01 ; 2 uses
  %i.pm = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ph) ; 3 uses
  %factor.op.fmul.i432 = fmul reassoc nnan nsz arcp contract afn float %i.pi, 2.500000e-01
  %i.pn = sitofp reassoc nsz arcp contract afn i32 %i.lk to float ; 4 uses
  %i.po = fpext reassoc nsz arcp contract afn float %i.pn to double ; 3 uses
  %i.pp = fpext reassoc nsz arcp contract afn float %i.pi to double ; 3 uses
  %i.pq = fadd reassoc nnan nsz arcp contract afn float %i.pl, 7.500000e-01
  %i.pr = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.pq)
  %i.ps = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i432 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.ps, double noundef %i.po) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.ps, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pr, %i.pk
  %.reass35.i433 = fdiv reassoc nsz arcp contract afn float %i.pt, %i.pm
  %i.pu = fadd reassoc nsz arcp contract afn float %.reass35.i433, %i.pn
  %i.pv = fpext reassoc nsz arcp contract afn float %i.pu to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.pv) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.pp, double noundef %i.pv) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %.reass32.1.i434 = fmul reassoc nnan nsz arcp contract afn float %i.pi, 5.000000e-01
  %.reass.1.i435 = fmul reassoc nnan nsz arcp contract afn float %invariant.op.i431, 2.000000e+00
  %i.pw = fadd reassoc nnan nsz arcp contract afn float %.reass.1.i435, 1.000000e+00
  %i.px = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pw)
  %i.py = fpext reassoc nsz arcp contract afn float %.reass32.1.i434 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.py, double noundef %i.po) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.py, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.pz = fmul reassoc nsz arcp contract afn float %i.px, %i.pk
  %.reass35.1.i436 = fdiv reassoc nsz arcp contract afn float %i.pz, %i.pm
  %i.qa = fadd reassoc nsz arcp contract afn float %.reass35.1.i436, %i.pn
  %i.qb = fpext reassoc nsz arcp contract afn float %i.qa to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.qb) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.pp, double noundef %i.qb) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %.reass32.2.i437 = fmul reassoc nnan nsz arcp contract afn float %i.pi, 7.500000e-01
  %.reass.2.i438 = fmul reassoc nnan nsz arcp contract afn float %invariant.op.i431, 3.000000e+00
  %i.qc = fadd reassoc nnan nsz arcp contract afn float %.reass.2.i438, 1.000000e+00
  %i.qd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qc)
  %i.qe = fpext reassoc nsz arcp contract afn float %.reass32.2.i437 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.qe, double noundef %i.po) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.qe, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qd, %i.pk
  %.reass35.2.i439 = fdiv reassoc nsz arcp contract afn float %i.qf, %i.pm
  %i.qg = fadd reassoc nsz arcp contract afn float %.reass35.2.i439, %i.pn
  br label %.sink.split

bb.o:                                             ; preds = %bb.j
  %i.qh = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 4 uses
  %i.qi = sitofp reassoc nsz arcp contract afn i32 %i.lk to float ; 4 uses
  %invariant.op.i440 = fmul reassoc nnan nsz arcp contract afn float %i.qh, 2.500000e-01
  %factor.op.fmul.i441 = fmul reassoc nnan nsz arcp contract afn float %i.qi, 2.500000e-01
  %i.qj = fpext reassoc nsz arcp contract afn float %i.qi to double ; 3 uses
  %i.qk = fpext reassoc nsz arcp contract afn float %i.qh to double ; 3 uses
  %i.ql = fpext reassoc nsz arcp contract afn float %invariant.op.i440 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.ql, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.ql, double noundef %i.qj) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.qm = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i441 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.qm) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.qk, double noundef %i.qm) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.qi, 5.000000e-01
  %.reass.1.i442 = fmul reassoc nnan nsz arcp contract afn float %i.qh, 5.000000e-01
  %i.qn = fpext reassoc nsz arcp contract afn float %.reass.1.i442 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.qn, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.qn, double noundef %i.qj) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.qo = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.qo) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.qk, double noundef %i.qo) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.qi, 7.500000e-01
  %.reass.2.i443 = fmul reassoc nnan nsz arcp contract afn float %i.qh, 7.500000e-01
  %i.qp = fpext reassoc nsz arcp contract afn float %.reass.2.i443 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.qp, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.qp, double noundef %i.qj) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.m, %bb.n, %bb.l
  %.sink701 = phi float [ %i.og, %bb.l ], [ %i.qg, %bb.n ], [ %i.pg, %bb.m ], [ %.reass31.2.i, %bb.o ]
  %.sink = phi double [ %i.nq, %bb.l ], [ %i.pp, %bb.n ], [ %i.op, %bb.m ], [ %i.qk, %bb.o ]
  %i.qq = fpext reassoc nsz arcp contract afn float %.sink701 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.qq) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %.sink, double noundef %i.qq) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.ls) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.lr, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  call void @cairo_translate(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.ls) #22
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.qs = load i32, ptr %i.qr, align 16, !tbaa !227
  %.not422 = icmp eq i32 %i.qs, 0
  br i1 %.not422, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.qt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !228
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !238
  %i.qw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.qx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.ra = load ptr, ptr %i.qz, align 16, !tbaa !239 ; 6 uses
  %.not423 = icmp eq i32 %i.qv, 0                 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.p
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !14 ; 2 uses
  br i1 %.not423, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.re = uitofp reassoc nsz arcp contract afn i32 %i.rd to float
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.rf = uitofp reassoc nsz arcp contract afn i32 %i.rd to double
  %i.rg = fadd reassoc nsz arcp contract afn double %i.rf, 1.000000e+00
  %i.rh = fptrunc reassoc nsz arcp contract afn double %i.rg to float
  %i.ri = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rh)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.rj = phi reassoc nsz arcp contract afn float [ %i.re, %bb.r ], [ %i.ri, %bb.s ] ; 2 uses
  %i.rk = icmp ne ptr %i.ra, null
  %i.rl = fcmp reassoc nsz arcp contract afn ogt float %i.rj, 0.000000e+00
  %or.cond3 = select i1 %i.rk, i1 %i.rl, i1 false
  br i1 %or.cond3, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @cairo_save(ptr noundef %i.lg) #22
  %i.rm = fmul reassoc nnan nsz arcp contract afn double %i.lr, f0x3F70101010101010
  %i.rn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1432
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !139
  %i.rq = fmul reassoc nsz arcp contract afn double %i.rp, 5.000000e+00
  %i.rr = fsub reassoc nsz arcp contract afn double %i.rq, %i.ls
  %i.rs = fpext reassoc nsz arcp contract afn float %i.rj to double
  %i.rt = fdiv reassoc nsz arcp contract afn double %i.rr, %i.rs
  call void @cairo_scale(ptr noundef %i.lg, double noundef %i.rm, double noundef %i.rt) #22
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.ls) #22
  %i.ru = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 808
  %.sroa.0536.0.copyload = load double, ptr %i.rv, align 8
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 816
  %.sroa.4537.0.copyload = load double, ptr %.sroa.4537.0..sroa_idx, align 8
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 824
  %.sroa.5538.0.copyload = load double, ptr %.sroa.5538.0..sroa_idx, align 8
  %.sroa.6539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ru, i64 832
  %.sroa.6539.0.copyload = load double, ptr %.sroa.6539.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0536.0.copyload, double noundef %.sroa.4537.0.copyload, double noundef %.sroa.5538.0.copyload, double noundef %.sroa.6539.0.copyload) #22
  br i1 %i.lt, label %bb.v, label %.split

.split:                                           ; preds = %bb.u
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  %invariant.gep.i8.i = getelementptr [4 x i8], ptr %i.ra, i64 %i.p ; 2 uses
  br i1 %.not423, label %.preheader627, label %.preheader628

.preheader628:                                    ; preds = %.split, %.preheader628
  %indvars.iv.i.i445 = phi i64 [ %indvars.iv.next.i.i446, %.preheader628 ], [ 0, %.split ] ; 3 uses
  %i.rw = trunc nuw nsw i64 %indvars.iv.i.i445 to i32
  %i.rx = uitofp nneg i32 %i.rw to double
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i445, 4
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i8.i, i64 %.idx.i.i
  %i.ry = load i32, ptr %gep.i.i, align 4, !tbaa !14
  %i.rz = uitofp reassoc nsz arcp contract afn i32 %i.ry to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.rx, double noundef %i.rz) #22
  %indvars.iv.next.i.i446 = add nuw nsw i64 %indvars.iv.i.i445, 1 ; 2 uses
  %exitcond.not.i.i447 = icmp eq i64 %indvars.iv.next.i.i446, 256
  br i1 %exitcond.not.i.i447, label %dt_draw_histogram_8.exit, label %.preheader628

.preheader627:                                    ; preds = %.split, %.preheader627
  %indvars.iv.i9.i = phi i64 [ %indvars.iv.next.i12.i, %.preheader627 ], [ 0, %.split ] ; 3 uses
  %i.sa = trunc nuw nsw i64 %indvars.iv.i9.i to i32
  %i.sb = uitofp nneg i32 %i.sa to double
  %.idx.i10.i = shl nuw nsw i64 %indvars.iv.i9.i, 4
  %gep.i11.i = getelementptr i8, ptr %invariant.gep.i8.i, i64 %.idx.i10.i
  %i.sc = load i32, ptr %gep.i11.i, align 4, !tbaa !14
  %i.sd = uitofp reassoc nsz arcp contract afn i32 %i.sc to double
  %i.se = fadd reassoc nsz arcp contract afn double %i.sd, 1.000000e+00
  %i.sf = fptrunc reassoc nsz arcp contract afn double %i.se to float
  %i.sg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sf)
  %i.sh = fpext reassoc nsz arcp contract afn float %i.sg to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.sb, double noundef %i.sh) #22
  %indvars.iv.next.i12.i = add nuw nsw i64 %indvars.iv.i9.i, 1 ; 2 uses
  %exitcond.not.i13.i = icmp eq i64 %indvars.iv.next.i12.i, 256
  br i1 %exitcond.not.i13.i, label %dt_draw_histogram_8.exit, label %.preheader627

bb.v:                                             ; preds = %bb.u
  %i.si = load float, ptr %i.nb, align 4, !tbaa !83 ; 2 uses
  %i.sj = fcmp reassoc nsz arcp contract afn ogt float %i.si, 0.000000e+00
  br i1 %i.sj, label %bb.w, label %.split409

.split409:                                        ; preds = %bb.v
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  br i1 %.not423, label %.preheader624, label %.preheader625

.preheader625:                                    ; preds = %.split409, %.preheader625
  %indvars.iv.i.i450 = phi i64 [ %indvars.iv.next.i.i453, %.preheader625 ], [ 0, %.split409 ] ; 3 uses
  %i.sk = trunc nuw nsw i64 %indvars.iv.i.i450 to i32
  %i.sl = uitofp nneg i32 %i.sk to double
  %.idx.i.i451 = shl nuw nsw i64 %indvars.iv.i.i450, 4
  %gep.i.i452 = getelementptr i8, ptr %i.ra, i64 %.idx.i.i451
  %i.sm = load i32, ptr %gep.i.i452, align 4, !tbaa !14
  %i.sn = uitofp reassoc nsz arcp contract afn i32 %i.sm to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.sl, double noundef %i.sn) #22
  %indvars.iv.next.i.i453 = add nuw nsw i64 %indvars.iv.i.i450, 1 ; 2 uses
  %exitcond.not.i.i454 = icmp eq i64 %indvars.iv.next.i.i453, 256
  br i1 %exitcond.not.i.i454, label %dt_draw_histogram_8.exit, label %.preheader625

.preheader624:                                    ; preds = %.split409, %.preheader624
  %indvars.iv.i9.i455 = phi i64 [ %indvars.iv.next.i12.i458, %.preheader624 ], [ 0, %.split409 ] ; 3 uses
  %i.so = trunc nuw nsw i64 %indvars.iv.i9.i455 to i32
  %i.sp = uitofp nneg i32 %i.so to double
  %.idx.i10.i456 = shl nuw nsw i64 %indvars.iv.i9.i455, 4
  %gep.i11.i457 = getelementptr i8, ptr %i.ra, i64 %.idx.i10.i456
  %i.sq = load i32, ptr %gep.i11.i457, align 4, !tbaa !14
  %i.sr = uitofp reassoc nsz arcp contract afn i32 %i.sq to double
  %i.ss = fadd reassoc nsz arcp contract afn double %i.sr, 1.000000e+00
  %i.st = fptrunc reassoc nsz arcp contract afn double %i.ss to float
  %i.su = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.st)
  %i.sv = fpext reassoc nsz arcp contract afn float %i.su to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.sp, double noundef %i.sv) #22
  %indvars.iv.next.i12.i458 = add nuw nsw i64 %indvars.iv.i9.i455, 1 ; 2 uses
  %exitcond.not.i13.i459 = icmp eq i64 %indvars.iv.next.i12.i458, 256
  br i1 %exitcond.not.i13.i459, label %dt_draw_histogram_8.exit, label %.preheader624

bb.w:                                             ; preds = %bb.v
  %i.sw = fadd reassoc nsz arcp contract afn float %i.si, 1.000000e+00 ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  %i.sx = fmul reassoc nnan nsz arcp contract afn float %i.sw, f0x3B808081
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, f0xBB808081 ; 2 uses
  %i.sz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sw)
  %i.ta = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.sz ; 2 uses
  br i1 %.not423, label %.preheader, label %.preheader622

.preheader622:                                    ; preds = %bb.w, %.preheader622
  %indvars.iv.i.i462 = phi i64 [ %indvars.iv.next.i.i464, %.preheader622 ], [ 0, %bb.w ] ; 3 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv.i.i462 to i32
  %i.tc = uitofp nneg i32 %i.tb to float
  %i.td = fmul reassoc nsz arcp contract afn float %i.sy, %i.tc
  %i.te = fadd reassoc nsz arcp contract afn float %i.td, 1.000000e+00
  %i.tf = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.te)
  %i.tg = fmul reassoc nsz arcp contract afn float %i.ta, %i.tf
  %.idx.i.i463 = shl nuw nsw i64 %indvars.iv.i.i462, 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.idx.i.i463
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !14
  %i.tj = uitofp reassoc nsz arcp contract afn i32 %i.ti to float
  %i.tk = fpext reassoc nsz arcp contract afn float %i.tg to double
  %i.tl = fpext reassoc nsz arcp contract afn float %i.tj to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.tk, double noundef %i.tl) #22
  %indvars.iv.next.i.i464 = add nuw nsw i64 %indvars.iv.i.i462, 1 ; 2 uses
  %exitcond.not.i.i465 = icmp eq i64 %indvars.iv.next.i.i464, 256
  br i1 %exitcond.not.i.i465, label %dt_draw_histogram_8.exit, label %.preheader622

.preheader:                                       ; preds = %bb.w, %.preheader
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i12.i466, %.preheader ], [ 0, %bb.w ] ; 3 uses
  %i.tm = trunc nuw nsw i64 %indvars.iv.i10.i to i32
  %i.tn = uitofp nneg i32 %i.tm to float
  %i.to = fmul reassoc nsz arcp contract afn float %i.sy, %i.tn
  %i.tp = fadd reassoc nsz arcp contract afn float %i.to, 1.000000e+00
  %i.tq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tp)
  %i.tr = fmul reassoc nsz arcp contract afn float %i.ta, %i.tq
  %.idx.i11.i = shl nuw nsw i64 %indvars.iv.i10.i, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.idx.i11.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !14
  %i.tu = uitofp reassoc nsz arcp contract afn i32 %i.tt to double
  %i.tv = fadd reassoc nsz arcp contract afn double %i.tu, 1.000000e+00
  %i.tw = fptrunc reassoc nsz arcp contract afn double %i.tv to float
  %i.tx = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tw)
  %i.ty = fpext reassoc nsz arcp contract afn float %i.tr to double
  %i.tz = fpext reassoc nsz arcp contract afn float %i.tx to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.ty, double noundef %i.tz) #22
  %indvars.iv.next.i12.i466 = add nuw nsw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %exitcond.not.i13.i467 = icmp eq i64 %indvars.iv.next.i12.i466, 256
  br i1 %exitcond.not.i13.i467, label %dt_draw_histogram_8.exit, label %.preheader

dt_draw_histogram_8.exit:                         ; preds = %.preheader628, %.preheader627, %.preheader625, %.preheader624, %.preheader622, %.preheader
  call void @cairo_line_to(ptr noundef %i.lg, double noundef 2.550000e+02, double noundef 0.000000e+00) #22
  call void @cairo_close_path(ptr noundef %i.lg) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_restore(ptr noundef %i.lg) #22
  br label %bb.x

bb.x:                                             ; preds = %dt_draw_histogram_8.exit, %bb.t
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.ls) #22
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !240
  %i.uc = icmp eq i32 %i.ub, 1
  br i1 %i.uc, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.ud = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !94
  %i.uf = call i32 @gtk_toggle_button_get_active(ptr noundef %i.ue) #22
  %.not424 = icmp eq i32 %i.uf, 0
  br i1 %.not424, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1432
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !139
  %i.uj = fmul reassoc nsz arcp contract afn double %i.ui, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.uj) #22
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !228
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 40
  %.0408635 = load ptr, ptr %i.ul, align 8, !tbaa !241 ; 2 uses
  %.not425636 = icmp eq ptr %.0408635, null
  br i1 %.not425636, label %._crit_edge, label %.lr.ph638

.lr.ph638:                                        ; preds = %bb.z
  %i.um = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.up = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 4 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 6272
  %i.ut = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 2 uses
  %i.uu = sub nsw i32 0, %i.lk
  %i.uv = sitofp reassoc nsz arcp contract afn i32 %i.uu to double ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %to_log.exit482, %bb.z
  %i.uw = load float, ptr %i.qx, align 4, !tbaa !13
  %i.ux = fcmp reassoc nsz arcp contract afn ult float %i.uw, 0.000000e+00
  br i1 %i.ux, label %bb.ag, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph638, %to_log.exit482
  %.0408637 = phi ptr [ %.0408635, %.lr.ph638 ], [ %.0408, %to_log.exit482 ] ; 2 uses
  %i.uy = load ptr, ptr %.0408637, align 8, !tbaa !243 ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 160
  %i.va = load <2 x float>, ptr %i.uz, align 4, !tbaa !13
  %i.vb = fmul reassoc nsz arcp contract afn <2 x float> %i.va, <float f0x3C23D70A, float 3.906250e-03>
  %i.vc = fadd reassoc nsz arcp contract afn <2 x float> %i.vb, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.vd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vc, splat (float 1.000000e+00)
  %i.ve = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vc, zeroinitializer
  %i.vf = select <2 x i1> %i.ve, <2 x float> zeroinitializer, <2 x float> %i.vc
  %i.vg = select <2 x i1> %i.vd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vf
  store <2 x float> %i.vg, ptr %i.d, align 16, !tbaa !13
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 168
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !13
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, 3.906250e-03
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, 5.000000e-01 ; 3 uses
  %i.vl = fcmp reassoc nsz arcp contract afn ogt float %i.vk, 1.000000e+00
  %i.vm = fcmp reassoc nsz arcp contract afn olt float %i.vk, 0.000000e+00
  %spec.select15.i = select reassoc nsz arcp contract afn i1 %i.vm, float 0.000000e+00, float %i.vk
  %i.vn = select reassoc nsz arcp contract afn i1 %i.vl, float 1.000000e+00, float %spec.select15.i
  store float %i.vn, ptr %i.um, align 8, !tbaa !13
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uy, i64 176
  %i.vp = load <2 x float>, ptr %i.vo, align 4, !tbaa !13
  %i.vq = fmul reassoc nsz arcp contract afn <2 x float> %i.vp, <float f0x3C23D70A, float 3.906250e-03>
  %i.vr = fadd reassoc nsz arcp contract afn <2 x float> %i.vq, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.vs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vr, splat (float 1.000000e+00)
  %i.vt = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vr, zeroinitializer
  %i.vu = select <2 x i1> %i.vt, <2 x float> zeroinitializer, <2 x float> %i.vr
  %i.vv = select <2 x i1> %i.vs, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vu
  store <2 x float> %i.vv, ptr %i.e, align 16, !tbaa !13
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uy, i64 184
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !13
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uy, i64 192
  %i.vz = load <2 x float>, ptr %i.vy, align 4, !tbaa !13
  %i.wa = fmul reassoc nsz arcp contract afn <2 x float> %i.vz, <float f0x3C23D70A, float 3.906250e-03>
  %i.wb = fadd reassoc nsz arcp contract afn <2 x float> %i.wa, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wb, splat (float 1.000000e+00)
  %i.wd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wb, zeroinitializer
  %i.we = select <2 x i1> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wb
  %i.wf = select <2 x i1> %i.wc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.we
  store <2 x float> %i.wf, ptr %i.f, align 16, !tbaa !13
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uy, i64 200
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !13
  %i.wi = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wj = insertelement <2 x float> %i.wi, float %i.wh, i64 1
  %i.wk = fmul reassoc nsz arcp contract afn <2 x float> %i.wj, splat (float 3.906250e-03)
  %i.wl = fadd reassoc nsz arcp contract afn <2 x float> %i.wk, splat (float 5.000000e-01) ; 3 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wl, splat (float 1.000000e+00)
  %i.wn = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wl, zeroinitializer
  %i.wo = select <2 x i1> %i.wn, <2 x float> zeroinitializer, <2 x float> %i.wl
  %i.wp = select <2 x i1> %i.wm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.wo ; 2 uses
  %i.wq = extractelement <2 x float> %i.wp, i64 0
  store float %i.wq, ptr %i.un, align 8, !tbaa !13
  %i.wr = extractelement <2 x float> %i.wp, i64 1
  store float %i.wr, ptr %i.uo, align 8, !tbaa !13
  %i.ws = load float, ptr %i.up, align 4, !tbaa !13 ; 3 uses
  %i.wt = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.wu = fcmp reassoc nsz arcp contract afn ogt float %i.wt, 0.000000e+00
  %or.cond.i474 = and i1 %i.lt, %i.wu
  br i1 %or.cond.i474, label %bb.ab, label %to_log.exit479

bb.ab:                                            ; preds = %bb.aa
  %i.wv = load i32, ptr %i.us, align 8, !tbaa !84
  %i.ww = icmp eq i32 %i.wv, -1
  br i1 %i.ww, label %.thread574, label %bb.ac

.thread574:                                       ; preds = %bb.ab
  %i.wx = load float, ptr %i.uq, align 4, !tbaa !13
  %i.wy = load float, ptr %i.ur, align 4, !tbaa !13
  br label %to_log.exit482

to_log.exit479:                                   ; preds = %bb.aa
  %i.wz = load float, ptr %i.uq, align 4, !tbaa !13
  %i.xa = load float, ptr %i.ur, align 4, !tbaa !13
  br label %to_log.exit482

bb.ac:                                            ; preds = %bb.ab
  %i.xb = fmul reassoc nsz arcp contract afn float %i.wt, %i.ws
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, 1.000000e+00
  %i.xd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xc)
  %i.xe = fadd reassoc nsz arcp contract afn float %i.wt, 1.000000e+00
  %i.xf = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xe) ; 3 uses
  %i.xg = fdiv reassoc nsz arcp contract afn float %i.xd, %i.xf ; 2 uses
  store float %i.xg, ptr %i.up, align 4, !tbaa !13
  %i.xh = load float, ptr %i.uq, align 4, !tbaa !13
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, %i.wt
  %i.xj = fadd reassoc nsz arcp contract afn float %i.xi, 1.000000e+00
  %i.xk = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xj)
  %i.xl = fdiv reassoc nsz arcp contract afn float %i.xk, %i.xf ; 2 uses
  store float %i.xl, ptr %i.uq, align 4, !tbaa !13
  %i.xm = load float, ptr %i.ur, align 4, !tbaa !13
  %i.xn = fmul reassoc nsz arcp contract afn float %i.xm, %i.wt
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xn, 1.000000e+00
  %i.xp = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xo)
  %i.xq = fdiv reassoc nsz arcp contract afn float %i.xp, %i.xf
  br label %to_log.exit482

to_log.exit482:                                   ; preds = %.thread574, %to_log.exit479, %bb.ac
  %.0.i478572 = phi float [ %i.wx, %.thread574 ], [ %i.wz, %to_log.exit479 ], [ %i.xl, %bb.ac ]
  %.0.i475565570 = phi float [ %i.ws, %.thread574 ], [ %i.ws, %to_log.exit479 ], [ %i.xg, %bb.ac ] ; 2 uses
  %.0.i481 = phi nsz float [ %i.wy, %.thread574 ], [ %i.xa, %to_log.exit479 ], [ %i.xq, %bb.ac ] ; 2 uses
  store float %.0.i481, ptr %i.ur, align 4, !tbaa !13
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 5.000000e-01, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 3.500000e-01) #22
  %i.xr = fmul reassoc nsz arcp contract afn float %.0.i475565570, %i.ut
  %i.xs = fpext reassoc nsz arcp contract afn float %i.xr to double
  %i.xt = fsub reassoc nsz arcp contract afn float %.0.i478572, %.0.i475565570
  %i.xu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xt, float 0.000000e+00)
  %i.xv = fpext nnan float %i.xu to double
  %i.xw = fmul reassoc nsz arcp contract afn double %i.xv, %i.lr
  call void @cairo_rectangle(ptr noundef %i.lg, double noundef %i.xs, double noundef 0.000000e+00, double noundef %i.xw, double noundef %i.uv) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 5.000000e-01, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 5.000000e-01) #22
  %i.xx = fmul reassoc nsz arcp contract afn float %.0.i481, %i.ut
  %i.xy = fpext reassoc nsz arcp contract afn float %i.xx to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.xy, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.xy, double noundef %i.uv) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.xz = getelementptr inbounds nuw i8, ptr %.0408637, i64 8
  %.0408 = load ptr, ptr %i.xz, align 8, !tbaa !241 ; 2 uses
  %.not425 = icmp eq ptr %.0408, null
  br i1 %.not425, label %._crit_edge, label %bb.aa

bb.ad:                                            ; preds = %._crit_edge
  call void @cairo_save(ptr noundef %i.lg) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ya = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 336
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !250
  %i.yd = call ptr @pango_font_description_copy_static(ptr noundef %i.yc) #22 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.yd, i32 noundef 700) #22
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yd, double noundef 1.024000e+03) #22
end_hunk_2
begin_hunk_3_@dt_iop_tonecurve_draw:bb.a
  %i.za = select <2 x i1> %i.yx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yz
  store <2 x float> %i.za, ptr %i.e, align 16, !tbaa !13
  %i.zb = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.zc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zd = load <2 x float>, ptr %i.qx, align 4, !tbaa !13
  %i.ze = fmul reassoc nsz arcp contract afn <2 x float> %i.zd, <float f0x3C23D70A, float 3.906250e-03>
  %i.zf = fadd reassoc nsz arcp contract afn <2 x float> %i.ze, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.zg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zf, splat (float 1.000000e+00)
  %i.zh = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.zf, zeroinitializer
  %i.zi = select <2 x i1> %i.zh, <2 x float> zeroinitializer, <2 x float> %i.zf
  %i.zj = select <2 x i1> %i.zg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.zi
  store <2 x float> %i.zj, ptr %i.f, align 16, !tbaa !13
  %i.zk = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.zb, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.zm = fmul reassoc nsz arcp contract afn <2 x float> %i.zl, splat (float 3.906250e-03)
  %i.zn = fadd reassoc nsz arcp contract afn <2 x float> %i.zm, splat (float 5.000000e-01) ; 3 uses
  %i.zo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zn, splat (float 1.000000e+00)
  %i.zp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.zn, zeroinitializer
  %i.zq = select <2 x i1> %i.zp, <2 x float> zeroinitializer, <2 x float> %i.zn
  %i.zr = select <2 x i1> %i.zo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.zq ; 2 uses
  %i.zs = extractelement <2 x float> %i.zr, i64 0
  store float %i.zs, ptr %i.zc, align 8, !tbaa !13
  %i.zt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.zu = extractelement <2 x float> %i.zr, i64 1
  store float %i.zu, ptr %i.zt, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.91, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.ye, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ye, ptr noundef nonnull %4, ptr noundef null) #22
  %i.zv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !252
  %i.zx = sitofp reassoc nsz arcp contract afn i32 %i.zw to double
  %i.zy = fmul reassoc nnan nsz arcp contract afn double %i.lr, 1.024000e+03
  %i.zz = fdiv reassoc nsz arcp contract afn double %i.zy, %i.zx
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yd, double noundef %i.zz) #22
  call void @pango_layout_set_font_description(ptr noundef %i.ye, ptr noundef %i.yd) #22
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.p
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !13 ; 3 uses
  %i.aac = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.aad = fcmp reassoc nsz arcp contract afn ogt float %i.aac, 0.000000e+00
  %or.cond.i492 = and i1 %i.lt, %i.aad
  br i1 %or.cond.i492, label %bb.ae, label %to_log.exit497

bb.ae:                                            ; preds = %bb.ad
  %i.aae = getelementptr inbounds nuw i8, ptr %i.h, i64 6272
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !84
  %i.aag = icmp eq i32 %i.aaf, -1
  br i1 %i.aag, label %.thread589, label %bb.af

.thread589:                                       ; preds = %bb.ae
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !13
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !13
  br label %to_log.exit500

to_log.exit497:                                   ; preds = %bb.ad
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !13
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !13
  br label %to_log.exit500

bb.af:                                            ; preds = %bb.ae
  %i.aap = fmul reassoc nsz arcp contract afn float %i.aac, %i.aab
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aap, 1.000000e+00
  %i.aar = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aaq)
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aac, 1.000000e+00
  %i.aat = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aas) ; 3 uses
  %i.aau = fdiv reassoc nsz arcp contract afn float %i.aar, %i.aat
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !13
  %i.aax = fmul reassoc nsz arcp contract afn float %i.aaw, %i.aac
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aax, 1.000000e+00
  %i.aaz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aay)
  %i.aba = fdiv reassoc nsz arcp contract afn float %i.aaz, %i.aat
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !13
  %i.abd = fmul reassoc nsz arcp contract afn float %i.abc, %i.aac
  %i.abe = fadd reassoc nsz arcp contract afn float %i.abd, 1.000000e+00
  %i.abf = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.abe)
  %i.abg = fdiv reassoc nsz arcp contract afn float %i.abf, %i.aat
  br label %to_log.exit500

to_log.exit500:                                   ; preds = %.thread589, %to_log.exit497, %bb.af
  %i.abh = phi ptr [ %i.aaj, %.thread589 ], [ %i.aan, %to_log.exit497 ], [ %i.abb, %bb.af ]
  %.0.i496587 = phi float [ %i.aai, %.thread589 ], [ %i.aam, %to_log.exit497 ], [ %i.aba, %bb.af ]
  %.0.i493579585 = phi float [ %i.aab, %.thread589 ], [ %i.aab, %to_log.exit497 ], [ %i.aau, %bb.af ] ; 2 uses
  %.0.i499 = phi nsz float [ %i.aak, %.thread589 ], [ %i.aao, %to_log.exit497 ], [ %i.abg, %bb.af ] ; 2 uses
  store float %.0.i499, ptr %i.abh, align 4, !tbaa !13
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 3.500000e-01) #22
  %i.abi = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 3 uses
  %i.abj = fmul reassoc nsz arcp contract afn float %.0.i493579585, %i.abi
  %i.abk = fpext reassoc nsz arcp contract afn float %i.abj to double
  %i.abl = fsub reassoc nsz arcp contract afn float %.0.i496587, %.0.i493579585
  %i.abm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abl, float 0.000000e+00)
  %i.abn = fpext nnan float %i.abm to double
  %i.abo = fmul reassoc nsz arcp contract afn double %i.abn, %i.lr
  %i.abp = sub nsw i32 0, %i.lk
  %i.abq = sitofp reassoc nsz arcp contract afn i32 %i.abp to double ; 2 uses
  call void @cairo_rectangle(ptr noundef %i.lg, double noundef %i.abk, double noundef 0.000000e+00, double noundef %i.abo, double noundef %i.abq) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 9.000000e-01, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 5.000000e-01) #22
  %i.abr = fmul reassoc nsz arcp contract afn float %.0.i499, %i.abi
  %i.abs = fpext reassoc nsz arcp contract afn float %i.abr to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.abs, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.abs, double noundef %i.abq) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.p
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !13
  %i.abv = fpext reassoc nsz arcp contract afn float %i.abu to double
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.p
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !13
  %i.aby = fpext reassoc nsz arcp contract afn float %i.abx to double
  %i.abz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.92, double noundef %i.abv, double noundef %i.aby) #22 ; 0 uses
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 680
  %.sroa.0540.0.copyload = load double, ptr %i.acb, align 8
  %.sroa.4541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aca, i64 688
  %.sroa.4541.0.copyload = load double, ptr %.sroa.4541.0..sroa_idx, align 8
  %.sroa.5542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aca, i64 696
  %.sroa.5542.0.copyload = load double, ptr %.sroa.5542.0..sroa_idx, align 8
  %.sroa.6543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aca, i64 704
  %.sroa.6543.0.copyload = load double, ptr %.sroa.6543.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0540.0.copyload, double noundef %.sroa.4541.0.copyload, double noundef %.sroa.5542.0.copyload, double noundef %.sroa.6543.0.copyload) #22
  %i.acc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 1432
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !139
  %i.acf = fmul reassoc nnan nsz arcp contract afn double %i.ls, 4.000000e-02
  %i.acg = fmul reassoc nsz arcp contract afn double %i.acf, %i.ace
  call void @cairo_set_font_size(ptr noundef %i.lg, double noundef %i.acg) #22
  call void @pango_layout_set_text(ptr noundef %i.ye, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ye, ptr noundef nonnull %4, ptr noundef null) #22
  %i.ach = fmul reassoc nnan nsz arcp contract afn float %i.abi, 2.000000e-02
  %i.aci = fpext reassoc nsz arcp contract afn float %i.ach to double
  %i.acj = fmul reassoc nnan nsz arcp contract afn double %i.ls, f0xBFEE147AE147AE14
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !253
  %i.acm = sitofp reassoc nsz arcp contract afn i32 %i.acl to double
  %i.acn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !254
  %i.acp = sitofp reassoc nsz arcp contract afn i32 %i.aco to double
  %i.acq = fadd reassoc nsz arcp contract afn double %i.acm, %i.acp
  %i.acr = fsub reassoc nsz arcp contract afn double %i.acj, %i.acq
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.aci, double noundef %i.acr) #22
  call void @pango_cairo_show_layout(ptr noundef %i.lg, ptr noundef %i.ye) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  call void @pango_font_description_free(ptr noundef %i.yd) #22
  call void @g_object_unref(ptr noundef %i.ye) #22
  call void @cairo_restore(ptr noundef %i.lg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %to_log.exit500, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.p
  %i.acs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 1432
  %i.acu = load double, ptr %i.act, align 8, !tbaa !139
  %i.acv = fmul reassoc nsz arcp contract afn double %i.acu, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.acv) #22
  %i.acw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 680
  %.sroa.0544.0.copyload = load double, ptr %i.acx, align 8
  %.sroa.4545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 688
  %.sroa.4545.0.copyload = load double, ptr %.sroa.4545.0..sroa_idx, align 8
  %.sroa.5546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 696
  %.sroa.5546.0.copyload = load double, ptr %.sroa.5546.0..sroa_idx, align 8
  %.sroa.6547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acw, i64 704
  %.sroa.6547.0.copyload = load double, ptr %.sroa.6547.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0544.0.copyload, double noundef %.sroa.4545.0.copyload, double noundef %.sroa.5546.0.copyload, double noundef %.sroa.6547.0.copyload) #22
  %i.acy = getelementptr inbounds nuw i8, ptr %i.h, i64 6272 ; 3 uses
  %i.acz = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 4 uses
  %i.ada = sub nsw i32 0, %i.lk
  %i.adb = sitofp reassoc nsz arcp contract afn i32 %i.ada to float
  %i.adc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ie
  br label %bb.aj

bb.ai:                                            ; preds = %to_log.exit506
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.add = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 1432
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !139
  %i.adg = fmul reassoc nsz arcp contract afn double %i.adf, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.adg) #22
  %i.adh = icmp sgt i32 %i.r, 0
  br i1 %i.adh, label %.lr.ph642, label %._crit_edge643

.lr.ph642:                                        ; preds = %bb.ai
  %i.adi = sitofp reassoc nsz arcp contract afn i32 %i.lk to float
  %i.adj = fneg reassoc nsz arcp contract afn float %i.adi
  %wide.trip.count662 = zext nneg i32 %i.r to i64
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah, %to_log.exit506
  %indvars.iv655 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next656, %to_log.exit506 ] ; 3 uses
  %i.adk = trunc nuw nsw i64 %indvars.iv655 to i32
  %i.adl = uitofp nneg i32 %i.adk to float
  %i.adm = fmul reassoc nnan nsz arcp contract afn float %i.adl, f0x3B808081 ; 5 uses
  %i.adn = fcmp reassoc nsz arcp contract afn ogt float %i.adm, %i.ie
  br i1 %i.adn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adm, %i.adc
  %i.adp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ado, float %.2.i)
  %i.adq = fmul reassoc nsz arcp contract afn float %i.adp, %i.jj
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv655
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0406 = phi nsz float [ %i.adq, %bb.ak ], [ %i.ads, %bb.al ] ; 3 uses
  %i.adt = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.adu = load i32, ptr %i.acy, align 8, !tbaa !84 ; 2 uses
  %i.adv = fcmp reassoc nsz arcp contract afn ogt float %i.adt, 0.000000e+00
  %or.cond.i501 = and i1 %i.lt, %i.adv
  br i1 %or.cond.i501, label %bb.an, label %to_log.exit506

bb.an:                                            ; preds = %bb.am
  %i.adw = icmp eq i32 %i.adu, -1
  br i1 %i.adw, label %..thread596_crit_edge, label %bb.ao

..thread596_crit_edge:                            ; preds = %bb.an
  %.pre671 = fadd reassoc nnan nsz arcp contract afn float %i.adt, 1.000000e+00
  %.pre673 = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %.pre671)
  br label %.thread596

bb.ao:                                            ; preds = %bb.an
  %i.adx = fmul reassoc nsz arcp contract afn float %i.adt, %i.adm
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adx, 1.000000e+00
  %i.adz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ady)
  %i.aea = fadd reassoc nsz arcp contract afn float %i.adt, 1.000000e+00
  %i.aeb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aea) ; 2 uses
  %i.aec = fdiv reassoc nsz arcp contract afn float %i.adz, %i.aeb ; 2 uses
  %i.aed = icmp eq i32 %i.adu, 1
  br i1 %i.aed, label %to_log.exit506, label %.thread596

.thread596:                                       ; preds = %..thread596_crit_edge, %bb.ao
  %.pre-phi674 = phi float [ %.pre673, %..thread596_crit_edge ], [ %i.aeb, %bb.ao ]
  %.0.i502.ph598 = phi float [ %i.adm, %..thread596_crit_edge ], [ %i.aec, %bb.ao ]
  %i.aee = fmul reassoc nsz arcp contract afn float %i.adt, %.0406
  %i.aef = fadd reassoc nsz arcp contract afn float %i.aee, 1.000000e+00
  %i.aeg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aef)
  %i.aeh = fdiv reassoc nsz arcp contract afn float %i.aeg, %.pre-phi674
  br label %to_log.exit506

to_log.exit506:                                   ; preds = %bb.am, %bb.ao, %.thread596
  %.0.i502594 = phi float [ %.0.i502.ph598, %.thread596 ], [ %i.aec, %bb.ao ], [ %i.adm, %bb.am ]
  %.0.i505 = phi nsz float [ %i.aeh, %.thread596 ], [ %.0406, %bb.ao ], [ %.0406, %bb.am ]
  %i.aei = fmul reassoc nsz arcp contract afn float %.0.i502594, %i.acz
  %i.aej = fpext reassoc nsz arcp contract afn float %i.aei to double
  %i.aek = fmul reassoc nsz arcp contract afn float %.0.i505, %i.adb
  %i.ael = fpext reassoc nsz arcp contract afn float %i.aek to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.aej, double noundef %i.ael) #22
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next656, 256
  br i1 %exitcond658.not, label %bb.ai, label %bb.aj

._crit_edge643:                                   ; preds = %to_log.exit512, %bb.ai
  %i.aem = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 3 uses
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !93
  %i.aeo = icmp sgt i32 %i.aen, -1
  br i1 %i.aeo, label %bb.at, label %bb.ax

bb.ap:                                            ; preds = %.lr.ph642, %to_log.exit512
  %indvars.iv659 = phi i64 [ 0, %.lr.ph642 ], [ %indvars.iv.next660, %to_log.exit512 ] ; 2 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv659 ; 4 uses
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !56 ; 3 uses
  %i.aer = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.aes = load i32, ptr %i.acy, align 8, !tbaa !84 ; 2 uses
  %i.aet = fcmp reassoc nsz arcp contract afn ogt float %i.aer, 0.000000e+00
  %or.cond.i507 = and i1 %i.lt, %i.aet
  br i1 %or.cond.i507, label %bb.aq, label %to_log.exit509

bb.aq:                                            ; preds = %bb.ap
  %i.aeu = icmp eq i32 %i.aes, -1
  br i1 %i.aeu, label %.thread602, label %bb.ar

.thread602:                                       ; preds = %bb.aq
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aep, i64 4
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !51
  %.pre664 = fadd reassoc nnan nsz arcp contract afn float %i.aer, 1.000000e+00
  %.pre665 = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %.pre664)
  br label %bb.as

to_log.exit509:                                   ; preds = %bb.ap
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aep, i64 4
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !51
  br label %to_log.exit512

bb.ar:                                            ; preds = %bb.aq
  %i.aez = fmul reassoc nsz arcp contract afn float %i.aer, %i.aeq
  %i.afa = fadd reassoc nsz arcp contract afn float %i.aez, 1.000000e+00
  %i.afb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.afa)
  %i.afc = fadd reassoc nsz arcp contract afn float %i.aer, 1.000000e+00
  %i.afd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.afc) ; 2 uses
  %i.afe = fdiv reassoc nsz arcp contract afn float %i.afb, %i.afd ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aep, i64 4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !51 ; 2 uses
  %i.afh = icmp eq i32 %i.aes, 1
  br i1 %i.afh, label %to_log.exit512, label %bb.as

bb.as:                                            ; preds = %.thread602, %bb.ar
  %.pre-phi666 = phi float [ %.pre665, %.thread602 ], [ %i.afd, %bb.ar ]
  %i.afi = phi float [ %i.aew, %.thread602 ], [ %i.afg, %bb.ar ]
  %.0.i508.ph604 = phi float [ %i.aeq, %.thread602 ], [ %i.afe, %bb.ar ]
  %i.afj = fmul reassoc nsz arcp contract afn float %i.afi, %i.aer
  %i.afk = fadd reassoc nsz arcp contract afn float %i.afj, 1.000000e+00
  %i.afl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.afk)
  %i.afm = fdiv reassoc nsz arcp contract afn float %i.afl, %.pre-phi666
  br label %to_log.exit512

to_log.exit512:                                   ; preds = %to_log.exit509, %bb.ar, %bb.as
  %.0.i508600 = phi float [ %i.aeq, %to_log.exit509 ], [ %i.afe, %bb.ar ], [ %.0.i508.ph604, %bb.as ]
  %.0.i511 = phi nsz float [ %i.aey, %to_log.exit509 ], [ %i.afg, %bb.ar ], [ %i.afm, %bb.as ]
  %i.afn = fmul reassoc nsz arcp contract afn float %.0.i508600, %i.acz
  %i.afo = fpext reassoc nsz arcp contract afn float %i.afn to double
  %i.afp = fmul reassoc nsz arcp contract afn float %.0.i511, %i.adj
  %i.afq = fpext reassoc nsz arcp contract afn float %i.afp to double
  %i.afr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 1432
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !139
  %i.afu = fmul reassoc nsz arcp contract afn double %i.aft, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.lg, double noundef %i.afo, double noundef %i.afq, double noundef %i.afu, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  %i.afv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 680
  %.sroa.0548.0.copyload = load double, ptr %i.afw, align 8
  %.sroa.4549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 688
  %.sroa.4549.0.copyload = load double, ptr %.sroa.4549.0..sroa_idx, align 8
  %.sroa.5550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 696
  %.sroa.5550.0.copyload = load double, ptr %.sroa.5550.0..sroa_idx, align 8
  %.sroa.6551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afv, i64 704
  %.sroa.6551.0.copyload = load double, ptr %.sroa.6551.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0548.0.copyload, double noundef %.sroa.4549.0.copyload, double noundef %.sroa.5550.0.copyload, double noundef %.sroa.6551.0.copyload) #22
  call void @cairo_stroke_preserve(ptr noundef %i.lg) #22
  %i.afx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 584
  %.sroa.0552.0.copyload = load double, ptr %i.afy, align 8
  %.sroa.4553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 592
  %.sroa.4553.0.copyload = load double, ptr %.sroa.4553.0..sroa_idx, align 8
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 600
  %.sroa.5554.0.copyload = load double, ptr %.sroa.5554.0..sroa_idx, align 8
  %.sroa.6555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 608
  %.sroa.6555.0.copyload = load double, ptr %.sroa.6555.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0552.0.copyload, double noundef %.sroa.4553.0.copyload, double noundef %.sroa.5554.0.copyload, double noundef %.sroa.6555.0.copyload) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge643, label %bb.ap

bb.at:                                            ; preds = %._crit_edge643
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.afz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 336
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !250
  %i.agc = call ptr @pango_font_description_copy_static(ptr noundef %i.agb) #22 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.agc, i32 noundef 700) #22
  call void @pango_font_description_set_absolute_size(ptr noundef %i.agc, double noundef 1.024000e+03) #22
  %i.agd = call ptr @pango_cairo_create_layout(ptr noundef %i.lg) #22 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.agd, ptr noundef %i.agc) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.91, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.agd, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.agd, ptr noundef nonnull %5, ptr noundef null) #22
  %i.age = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !252
  %i.agg = sitofp reassoc nsz arcp contract afn i32 %i.agf to double
  %i.agh = fmul reassoc nnan nsz arcp contract afn double %i.lr, 1.024000e+03
  %i.agi = fdiv reassoc nsz arcp contract afn double %i.agh, %i.agg
  call void @pango_font_description_set_absolute_size(ptr noundef %i.agc, double noundef %i.agi) #22
  call void @pango_layout_set_font_description(ptr noundef %i.agd, ptr noundef %i.agc) #22
  %i.agj = select reassoc nsz arcp contract afn i1 %i.lt, float 0.000000e+00, float -1.280000e+02 ; 2 uses
  %i.agk = load i32, ptr %i.aem, align 8, !tbaa !93
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.agl ; 2 uses
  %i.agn = load float, ptr %i.agm, align 4, !tbaa !56
  %i.ago = select reassoc nsz arcp contract afn i1 %i.lt, float 1.000000e+02, float 2.560000e+02 ; 2 uses
  %i.agp = fmul reassoc nsz arcp contract afn float %i.agn, %i.ago ; 2 uses
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agp, %i.agj
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !51
  %i.agt = fmul reassoc nsz arcp contract afn float %i.ags, %i.ago ; 2 uses
  %i.agu = fadd reassoc nsz arcp contract afn float %i.agt, %i.agj
  %i.agv = fsub reassoc nsz arcp contract afn float %i.agt, %i.agp
  %i.agw = fpext reassoc nsz arcp contract afn float %i.agq to double
  %i.agx = fpext reassoc nsz arcp contract afn float %i.agu to double
  %i.agy = fpext reassoc nsz arcp contract afn float %i.agv to double
  %i.agz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.93, double noundef %i.agw, double noundef %i.agx, double noundef %i.agy) #22 ; 0 uses
  %i.aha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 680
  %.sroa.0556.0.copyload = load double, ptr %i.ahb, align 8
  %.sroa.4557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 688
  %.sroa.4557.0.copyload = load double, ptr %.sroa.4557.0..sroa_idx, align 8
  %.sroa.5558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 696
  %.sroa.5558.0.copyload = load double, ptr %.sroa.5558.0..sroa_idx, align 8
  %.sroa.6559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 704
end_hunk_3
begin_hunk_4_@_add_node:bb.a
.thread.._crit_edge38_crit_edge:                  ; preds = %bb.b, %.preheader, %.thread
  %.248 = phi i32 [ %.2, %.thread ], [ %.pre, %.preheader ], [ %.pre, %bb.b ] ; 2 uses
  %.pre44 = sext i32 %.248 to i64
  br label %._crit_edge38

.lr.ph37.preheader:                               ; preds = %.thread
  %i.i = sext i32 %.pre to i64                    ; 4 uses
  %i.j = sext i32 %.2 to i64                      ; 4 uses
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph37.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph37.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.l = sub nsw i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = sub i64 %i.i, %index
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -64
  %interleaved.vec = load <16 x float>, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -56
  store <16 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge38, label %.lr.ph37.preheader55

.lr.ph37.preheader55:                             ; preds = %.lr.ph37.preheader, %middle.block
  %indvars.iv41.ph = phi i64 [ %i.i, %.lr.ph37.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph37

._crit_edge38:                                    ; preds = %.lr.ph37, %middle.block, %.thread.._crit_edge38_crit_edge
  %.247 = phi i32 [ %.248, %.thread.._crit_edge38_crit_edge ], [ %.2, %middle.block ], [ %.2, %.lr.ph37 ]
  %.pre-phi = phi i64 [ %.pre44, %.thread.._crit_edge38_crit_edge ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph37 ]
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  store float %2, ptr %i.r, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %3, ptr %i.s, align 4, !tbaa !51
  %i.t = add nsw i32 %.pre, 1
  store i32 %i.t, ptr %1, align 4, !tbaa !14
  ret i32 %.247

.lr.ph37:                                         ; preds = %.lr.ph37.preheader55, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph37 ], [ %indvars.iv41.ph, %.lr.ph37.preheader55 ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !13
  store <2 x float> %i.w, ptr %i.u, align 4, !tbaa !13
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1 ; 2 uses
  %i.x = icmp sgt i64 %indvars.iv.next42, %i.j
  br i1 %i.x, label %.lr.ph37, label %._crit_edge38, !llvm.loop !303
}

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc float @dt_draw_curve_calc_value(ptr nofree noundef readonly captures(none) %0, float noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 7 uses
  %i.b = alloca [20 x float], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !71    ; 5 uses
  %i.e = zext i8 %i.d to i32
  %.not35 = icmp eq i8 %i.d, 0
  br i1 %.not35, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count = zext i8 %i.d to i64          ; 6 uses
  %min.iters.check = icmp ult i8 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i8 %i.d, 16
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 240          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %wide.vec = load <16 x float>, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec38 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec39 = load <16 x float>, ptr %i.j, align 4, !tbaa !13 ; 2 uses
  %strided.vec40 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec41 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <8 x float> %strided.vec, ptr %i.k, align 16, !tbaa !13
  store <8 x float> %strided.vec40, ptr %i.l, align 16, !tbaa !13
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <8 x float> %strided.vec38, ptr %i.m, align 16, !tbaa !13
  store <8 x float> %strided.vec41, ptr %i.n, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index43
  %wide.vec44 = load <8 x float>, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %strided.vec45 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index43
  store <4 x float> %strided.vec45, ptr %i.q, align 16, !tbaa !13
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index43
  store <4 x float> %strided.vec46, ptr %i.r, align 16, !tbaa !13
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !305

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec42, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !70
  %i.u = call ptr @interpolate_set(i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.t) #22 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !309
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !306

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %i.c, align 4, !tbaa !71
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8, !tbaa !70
  %i.ae = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.ac, ptr noundef nonnull %i.a, float noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i32 noundef %i.ad) #22
  call void @free(ptr noundef nonnull %i.u) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !310 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %.026, %i.ag
  %.026. = select reassoc nsz arcp contract afn i1 %i.ah, float %.026, float %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !311 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %.026., %i.aj
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ak, float %.026., float %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret float %spec.select
}

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !8, i64 8}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16}
!25 = !{!"short", !7, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 2}
!27 = !{!"", !8, i64 0, !7, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !26, i64 48, !27, i64 64, !7, i64 96, !8, i64 112}
!29 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!30 = !{!"p1 float", !15, i64 0}
!31 = !{!"dt_dev_distorted_mask_cache_t", !30, i64 0, !24, i64 8, !22, i64 32, !22, i64 40}
!32 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !8, i64 32, !8, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !7, i64 88, !12, i64 104, !8, i64 108, !8, i64 112, !22, i64 120, !8, i64 128, !8, i64 132, !24, i64 136, !24, i64 156, !24, i64 176, !24, i64 196, !8, i64 216, !8, i64 220, !28, i64 224, !28, i64 352, !7, i64 480, !8, i64 516, !29, i64 520, !31, i64 528, !31, i64 576}
!33 = !{!32, !15, i64 16}
!34 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!35 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!36 = !{!"dt_pthread_mutex_t", !7, i64 0}
!37 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!38 = !{!"", !29, i64 0, !29, i64 8}
!39 = !{!"", !17, i64 0, !8, i64 8}
!40 = !{!"", !38, i64 0, !39, i64 16}
!41 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!42 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!43 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!44 = !{!"dt_iop_module_t", !8, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !34, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !21, i64 608, !23, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !35, i64 664, !8, i64 672, !8, i64 676, !15, i64 680, !15, i64 688, !8, i64 696, !15, i64 704, !36, i64 712, !15, i64 752, !15, i64 760, !37, i64 768, !37, i64 776, !15, i64 784, !40, i64 792, !41, i64 824, !41, i64 832, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !41, i64 872, !8, i64 880, !41, i64 888, !41, i64 896, !41, i64 904, !42, i64 912, !42, i64 920, !41, i64 928, !41, i64 936, !8, i64 944, !43, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !41, i64 1096, !15, i64 1104, !8, i64 1112}
!45 = !{!"dt_iop_tonecurve_data_t", !7, i64 0, !7, i64 24, !7, i64 36, !7, i64 48, !7, i64 786480, !7, i64 786492, !8, i64 786540, !8, i64 786544, !8, i64 786548}
!46 = !{!45, !8, i64 786540}
!47 = !{!45, !8, i64 786544}
!48 = !{!"dt_iop_tonecurve_params_t", !7, i64 0, !7, i64 480, !7, i64 492, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516}
!49 = !{!48, !8, i64 504}
!50 = !{!"dt_iop_tonecurve_node_t", !12, i64 0, !12, i64 4}
!51 = !{!50, !12, i64 4}
!52 = !{!"p1 omnipotent char", !15, i64 0}
!53 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!54 = !{!"dt_action_t", !8, i64 0, !52, i64 8, !52, i64 16, !15, i64 24, !53, i64 32, !53, i64 40}
!55 = !{!"dt_iop_module_so_t", !54, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !34, i64 488, !7, i64 496, !15, i64 520, !8, i64 528, !15, i64 536, !8, i64 544, !8, i64 548}
!56 = !{!50, !12, i64 0}
!57 = !{!"p1 _ZTS6_GList", !15, i64 0}
!58 = !{!"double", !7, i64 0}
!59 = !{!"p1 _ZTS15dt_draw_curve_t", !15, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 20, !7, i64 24}
!64 = !{!"p1 short", !15, i64 0}
!65 = !{!"", !8, i64 0, !8, i64 4, !64, i64 8}
!66 = !{!"dt_draw_curve_t", !63, i64 0, !65, i64 184}
!67 = !{!66, !64, i64 192}
!68 = !{!66, !8, i64 184}
!69 = !{!66, !8, i64 188}
!70 = !{!66, !8, i64 0}
!71 = !{!66, !7, i64 20}
!72 = !{!25, !25, i64 0}
!73 = !{!44, !15, i64 688}
!74 = !{!44, !15, i64 704}
!75 = !{!44, !15, i64 680}
!76 = !{!"p1 _ZTS15_GtkDrawingArea", !15, i64 0}
!77 = !{!"p1 _ZTS13_GtkSizeGroup", !15, i64 0}
!78 = !{!"p1 _ZTS12_GtkNotebook", !15, i64 0}
!79 = !{!"dt_iop_tonecurve_gui_data_t", !7, i64 0, !7, i64 24, !7, i64 36, !76, i64 48, !77, i64 56, !41, i64 64, !78, i64 72, !41, i64 80, !41, i64 88, !8, i64 96, !58, i64 104, !58, i64 112, !8, i64 120, !7, i64 124, !7, i64 1148, !7, i64 2172, !7, i64 3196, !7, i64 4220, !7, i64 5244, !12, i64 6268, !8, i64 6272, !41, i64 6280, !41, i64 6288}
!80 = !{!79, !41, i64 88}
!81 = !{!79, !41, i64 6288}
!82 = !{!79, !41, i64 6280}
!83 = !{!79, !12, i64 6268}
!84 = !{!79, !8, i64 6272}
!85 = !{!79, !8, i64 96}
!86 = !{!79, !76, i64 48}
!87 = !{!79, !78, i64 72}
!88 = !{!79, !41, i64 64}
!89 = !{!55, !15, i64 520}
!90 = !{!44, !15, i64 752}
!91 = !{!44, !41, i64 824}
!92 = !{!58, !58, i64 0}
!93 = !{!79, !8, i64 120}
!94 = !{!79, !41, i64 80}
!95 = !{!"dt_codepath_t", !8, i64 0}
!96 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!97 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!98 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!100 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!101 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!102 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!103 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!104 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!105 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!106 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!107 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!108 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!109 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!110 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!111 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!112 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!113 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!114 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!115 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!116 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!117 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!118 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!119 = !{!"_Bool", !7, i64 0}
!120 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!121 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!122 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!123 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!124 = !{!"", !118, i64 0, !36, i64 8, !7, i64 48, !119, i64 96, !119, i64 97, !120, i64 104, !121, i64 112, !122, i64 120, !123, i64 128, !123, i64 136, !123, i64 144}
!125 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!126 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!127 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !8, i64 32}
!128 = !{!"dt_backthumb_t", !58, i64 0, !58, i64 8, !8, i64 16, !8, i64 20}
!129 = !{!"dt_gimp_t", !8, i64 0, !52, i64 8, !52, i64 16, !8, i64 24, !8, i64 28}
!130 = !{!"dt_splash_t", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !8, i64 32}
!131 = !{!"darktable_t", !95, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !96, i64 48, !97, i64 56, !35, i64 64, !98, i64 72, !99, i64 80, !100, i64 88, !101, i64 96, !102, i64 104, !103, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !107, i64 144, !108, i64 152, !109, i64 160, !110, i64 168, !111, i64 176, !112, i64 184, !113, i64 192, !114, i64 200, !115, i64 208, !116, i64 216, !117, i64 224, !7, i64 232, !36, i64 2792, !36, i64 2832, !36, i64 2872, !36, i64 2912, !36, i64 2952, !36, i64 2992, !52, i64 3032, !52, i64 3040, !52, i64 3048, !52, i64 3056, !52, i64 3064, !52, i64 3072, !52, i64 3080, !52, i64 3088, !52, i64 3096, !52, i64 3104, !52, i64 3112, !52, i64 3120, !52, i64 3128, !124, i64 3136, !57, i64 3288, !58, i64 3296, !57, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !125, i64 3520, !126, i64 3528, !127, i64 3536, !128, i64 3576, !129, i64 3600, !130, i64 3632, !8, i64 3672}
!132 = !{!131, !102, i64 104}
!133 = !{!"p1 _ZTS7dt_ui_t", !15, i64 0}
!134 = !{!"dt_gui_widgets_t", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!135 = !{!"dt_gui_scrollbars_t", !41, i64 0, !41, i64 8, !8, i64 16}
!136 = !{!"p1 _ZTS14_cairo_surface", !15, i64 0}
!137 = !{!"dt_gui_gtk_t", !133, i64 0, !134, i64 8, !135, i64 56, !136, i64 80, !8, i64 88, !52, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !58, i64 1384, !58, i64 1392, !58, i64 1400, !58, i64 1408, !41, i64 1416, !58, i64 1424, !58, i64 1432, !58, i64 1440, !58, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!138 = !{!79, !77, i64 56}
!139 = !{!137, !58, i64 1432}
!140 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!141 = !{!140, !8, i64 8}
!142 = !{!"p1 _ZTS10_GdkWindow", !15, i64 0}
end_hunk_4
