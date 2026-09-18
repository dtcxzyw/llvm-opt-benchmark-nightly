Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sonycc?download=true
inline.NumInlined: 483
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw19sony_ycbcr_load_rawEv:bb.a
  %i.me = or disjoint i64 %index, 6               ; 2 uses
  %i.mf = or disjoint i64 %index, 7               ; 2 uses
  %i.mg = add nuw nsw i64 %index, %i.ly
  %i.mh = add nuw nsw i64 %i.lz, %i.ly
  %i.mi = add nuw nsw i64 %i.ma, %i.ly
  %i.mj = add nuw nsw i64 %i.mb, %i.ly
  %i.mk = add nuw nsw i64 %i.mc, %i.ly
  %i.ml = add nuw nsw i64 %i.md, %i.ly
  %i.mm = add nuw nsw i64 %i.me, %i.ly
  %i.mn = add nuw nsw i64 %i.mf, %i.ly
  %i.mo = mul nuw nsw i64 %i.mg, 6
  %i.mp = mul nuw nsw i64 %i.mh, 6
  %i.mq = mul nuw nsw i64 %i.mi, 6
  %i.mr = mul nuw nsw i64 %i.mj, 6
  %i.ms = mul nuw nsw i64 %i.mk, 6
  %i.mt = mul nuw nsw i64 %i.ml, 6
  %i.mu = mul nuw nsw i64 %i.mm, 6
  %i.mv = mul nuw nsw i64 %i.mn, 6
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mo ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mp ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mq ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mr ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ms ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mt ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mu ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mv ; 3 uses
  %i.ne = load i16, ptr %i.mw, align 2, !tbaa !53, !alias.scope !174
  %i.nf = load i16, ptr %i.mx, align 2, !tbaa !53, !alias.scope !174
  %i.ng = load i16, ptr %i.my, align 2, !tbaa !53, !alias.scope !174
  %i.nh = load i16, ptr %i.mz, align 2, !tbaa !53, !alias.scope !174
  %i.ni = load i16, ptr %i.na, align 2, !tbaa !53, !alias.scope !174
  %i.nj = load i16, ptr %i.nb, align 2, !tbaa !53, !alias.scope !174
  %i.nk = load i16, ptr %i.nc, align 2, !tbaa !53, !alias.scope !174
  %i.nl = load i16, ptr %i.nd, align 2, !tbaa !53, !alias.scope !174
  %i.nm = insertelement <8 x i16> poison, i16 %i.ne, i64 0
  %i.nn = insertelement <8 x i16> %i.nm, i16 %i.nf, i64 1
  %i.no = insertelement <8 x i16> %i.nn, i16 %i.ng, i64 2
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 3
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 4
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 5
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 6
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 7
  %i.nu = uitofp <8 x i16> %i.nt to <8 x float>   ; 3 uses
  %i.nv = getelementptr i8, ptr %i.mw, i64 2
  %i.nw = getelementptr i8, ptr %i.mx, i64 2
  %i.nx = getelementptr i8, ptr %i.my, i64 2
  %i.ny = getelementptr i8, ptr %i.mz, i64 2
  %i.nz = getelementptr i8, ptr %i.na, i64 2
  %i.oa = getelementptr i8, ptr %i.nb, i64 2
  %i.ob = getelementptr i8, ptr %i.nc, i64 2
  %i.oc = getelementptr i8, ptr %i.nd, i64 2
  %i.od = load i16, ptr %i.nv, align 2, !tbaa !53, !alias.scope !174
  %i.oe = load i16, ptr %i.nw, align 2, !tbaa !53, !alias.scope !174
  %i.of = load i16, ptr %i.nx, align 2, !tbaa !53, !alias.scope !174
  %i.og = load i16, ptr %i.ny, align 2, !tbaa !53, !alias.scope !174
  %i.oh = load i16, ptr %i.nz, align 2, !tbaa !53, !alias.scope !174
  %i.oi = load i16, ptr %i.oa, align 2, !tbaa !53, !alias.scope !174
  %i.oj = load i16, ptr %i.ob, align 2, !tbaa !53, !alias.scope !174
  %i.ok = load i16, ptr %i.oc, align 2, !tbaa !53, !alias.scope !174
  %i.ol = insertelement <8 x i16> poison, i16 %i.od, i64 0
  %i.om = insertelement <8 x i16> %i.ol, i16 %i.oe, i64 1
  %i.on = insertelement <8 x i16> %i.om, i16 %i.of, i64 2
  %i.oo = insertelement <8 x i16> %i.on, i16 %i.og, i64 3
  %i.op = insertelement <8 x i16> %i.oo, i16 %i.oh, i64 4
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 5
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 6
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 7
  %i.ot = zext <8 x i16> %i.os to <8 x i32>
  %i.ou = add nsw <8 x i32> %i.ot, splat (i32 -16383)
  %i.ov = sitofp <8 x i32> %i.ou to <8 x float>   ; 2 uses
  %i.ow = getelementptr i8, ptr %i.mw, i64 4
  %i.ox = getelementptr i8, ptr %i.mx, i64 4
  %i.oy = getelementptr i8, ptr %i.my, i64 4
  %i.oz = getelementptr i8, ptr %i.mz, i64 4
  %i.pa = getelementptr i8, ptr %i.na, i64 4
  %i.pb = getelementptr i8, ptr %i.nb, i64 4
  %i.pc = getelementptr i8, ptr %i.nc, i64 4
  %i.pd = getelementptr i8, ptr %i.nd, i64 4
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !53, !alias.scope !174
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !53, !alias.scope !174
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !53, !alias.scope !174
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !53, !alias.scope !174
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !53, !alias.scope !174
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !53, !alias.scope !174
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !53, !alias.scope !174
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !53, !alias.scope !174
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = zext <8 x i16> %i.pt to <8 x i32>
  %i.pv = add nsw <8 x i32> %i.pu, splat (i32 -16383)
  %i.pw = sitofp <8 x i32> %i.pv to <8 x float>   ; 2 uses
  %i.px = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pw, <8 x float> splat (float 1.402000e+00), <8 x float> %i.nu) ; 3 uses
  %i.py = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ov, <8 x float> splat (float -3.441400e-01), <8 x float> %i.nu)
  %i.pz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pw, <8 x float> splat (float f0xBF36D1E1), <8 x float> %i.py) ; 3 uses
  %i.qa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ov, <8 x float> splat (float 1.772000e+00), <8 x float> %i.nu) ; 3 uses
  %i.qb = fcmp olt <8 x float> %i.px, zeroinitializer
  %i.qc = fcmp ogt <8 x float> %i.px, splat (float 6.553500e+04)
  %i.qd = select <8 x i1> %i.qc, <8 x float> splat (float 6.553500e+04), <8 x float> %i.px
  %i.qe = fptoui <8 x float> %i.qd to <8 x i32>
  %i.qf = trunc <8 x i32> %i.qe to <8 x i16>
  %predphi = select <8 x i1> %i.qb, <8 x i16> zeroinitializer, <8 x i16> %i.qf ; 8 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %index ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.lz ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.ma ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.mb ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.mc ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.md ; 3 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.me ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %i.mf ; 3 uses
  %i.qo = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.qo, ptr %i.qi, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qp = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.qp, ptr %i.qj, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qq = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.qq, ptr %i.qk, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qr = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.qr, ptr %i.ql, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qs = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.qs, ptr %i.qm, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qt = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.qt, ptr %i.qn, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.qu = fcmp olt <8 x float> %i.pz, zeroinitializer
  %i.qv = fcmp ogt <8 x float> %i.pz, splat (float 6.553500e+04)
  %i.qw = select <8 x i1> %i.qv, <8 x float> splat (float 6.553500e+04), <8 x float> %i.pz
  %i.qx = fptoui <8 x float> %i.qw to <8 x i32>
  %i.qy = trunc <8 x i32> %i.qx to <8 x i16>
  %predphi278 = select <8 x i1> %i.qu, <8 x i16> zeroinitializer, <8 x i16> %i.qy ; 8 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qm, i64 2
  %i.re = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  %i.rf = shufflevector <8 x i16> %predphi, <8 x i16> %predphi278, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.rf, ptr %i.qg, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rg = shufflevector <8 x i16> %predphi, <8 x i16> %predphi278, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.rg, ptr %i.qh, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rh = extractelement <8 x i16> %predphi278, i64 2
  store i16 %i.rh, ptr %i.qz, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.ri = extractelement <8 x i16> %predphi278, i64 3
  store i16 %i.ri, ptr %i.ra, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rj = extractelement <8 x i16> %predphi278, i64 4
  store i16 %i.rj, ptr %i.rb, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rk = extractelement <8 x i16> %predphi278, i64 5
  store i16 %i.rk, ptr %i.rc, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rl = extractelement <8 x i16> %predphi278, i64 6
  store i16 %i.rl, ptr %i.rd, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rm = extractelement <8 x i16> %predphi278, i64 7
  store i16 %i.rm, ptr %i.re, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.rn = fcmp olt <8 x float> %i.qa, zeroinitializer
  %i.ro = fcmp ogt <8 x float> %i.qa, splat (float 6.553500e+04)
  %i.rp = select <8 x i1> %i.ro, <8 x float> splat (float 6.553500e+04), <8 x float> %i.qa
  %i.rq = fptoui <8 x float> %i.rp to <8 x i32>
  %i.rr = trunc <8 x i32> %i.rq to <8 x i16>
  %predphi279 = select <8 x i1> %i.rn, <8 x i16> zeroinitializer, <8 x i16> %i.rr ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.sa = extractelement <8 x i16> %predphi279, i64 0
  store i16 %i.sa, ptr %i.rs, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sb = extractelement <8 x i16> %predphi279, i64 1
  store i16 %i.sb, ptr %i.rt, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sc = extractelement <8 x i16> %predphi279, i64 2
  store i16 %i.sc, ptr %i.ru, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sd = extractelement <8 x i16> %predphi279, i64 3
  store i16 %i.sd, ptr %i.rv, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.se = extractelement <8 x i16> %predphi279, i64 4
  store i16 %i.se, ptr %i.rw, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sf = extractelement <8 x i16> %predphi279, i64 5
  store i16 %i.sf, ptr %i.rx, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sg = extractelement <8 x i16> %predphi279, i64 6
  store i16 %i.sg, ptr %i.ry, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %i.sh = extractelement <8 x i16> %predphi279, i64 7
  store i16 %i.sh, ptr %i.rz, align 2, !tbaa !53, !alias.scope !175, !noalias !174
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.si = icmp eq i64 %index.next, %n.vec
  br i1 %i.si, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..critedge2_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i135, %middle.block
  %indvars.iv.i137.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i135 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZL9_lim16bitf.exit52.us.i
  %indvars.iv.i137 = phi i64 [ %indvars.iv.next.i139, %_ZL9_lim16bitf.exit52.us.i ], [ %indvars.iv.i137.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sj = add nuw nsw i64 %indvars.iv.i137, %i.ly
  %.idx.i138 = mul nuw nsw i64 %i.sj, 6
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx.i138 ; 3 uses
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !53
  %i.sm = uitofp i16 %i.sl to float               ; 3 uses
  %i.sn = getelementptr i8, ptr %i.sk, i64 2
  %3 = load i16, ptr %i.sn, align 2, !tbaa !53
  %4 = zext i16 %3 to i32
  %5 = add nsw i32 %4, -16383
  %6 = sitofp i32 %5 to float                     ; 2 uses
  %7 = getelementptr i8, ptr %i.sk, i64 4
  %8 = load i16, ptr %7, align 2, !tbaa !53
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -16383
  %11 = sitofp i32 %10 to float                   ; 2 uses
  %i.so = call float @llvm.fmuladd.f32(float %11, float 1.402000e+00, float %i.sm) ; 3 uses
  %12 = call float @llvm.fmuladd.f32(float %6, float -3.441400e-01, float %i.sm)
  %13 = call float @llvm.fmuladd.f32(float %11, float f0xBF36D1E1, float %12) ; 3 uses
  %14 = call float @llvm.fmuladd.f32(float %6, float 1.772000e+00, float %i.sm) ; 3 uses
  %i.sp = fcmp olt float %i.so, 0.000000e+00
  br i1 %i.sp, label %_ZL9_lim16bitf.exit.us.i, label %bb.aw

bb.aw:                                            ; preds = %scalar.ph
  %i.sq = fcmp ogt float %i.so, 6.553500e+04
  %spec.store.select.i.us.i = select i1 %i.sq, float 6.553500e+04, float %i.so
  %i.sr = fptoui float %spec.store.select.i.us.i to i32
  %i.ss = trunc i32 %i.sr to i16
  br label %_ZL9_lim16bitf.exit.us.i

_ZL9_lim16bitf.exit.us.i:                         ; preds = %bb.aw, %scalar.ph
  %.0.i.us.i = phi i16 [ %i.ss, %bb.aw ], [ 0, %scalar.ph ]
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %gep.i136, i64 %indvars.iv.i137 ; 3 uses
  store i16 %.0.i.us.i, ptr %i.st, align 2, !tbaa !53
  %i.su = fcmp olt float %13, 0.000000e+00
  br i1 %i.su, label %_ZL9_lim16bitf.exit49.us.i, label %bb.ax

bb.ax:                                            ; preds = %_ZL9_lim16bitf.exit.us.i
  %i.sv = fcmp ogt float %13, 6.553500e+04
  %spec.store.select.i47.us.i = select i1 %i.sv, float 6.553500e+04, float %13
  %i.sw = fptoui float %spec.store.select.i47.us.i to i32
  %i.sx = trunc i32 %i.sw to i16
  br label %_ZL9_lim16bitf.exit49.us.i

_ZL9_lim16bitf.exit49.us.i:                       ; preds = %bb.ax, %_ZL9_lim16bitf.exit.us.i
  %.0.i48.us.i = phi i16 [ %i.sx, %bb.ax ], [ 0, %_ZL9_lim16bitf.exit.us.i ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 2
  store i16 %.0.i48.us.i, ptr %i.sy, align 2, !tbaa !53
  %i.sz = fcmp olt float %14, 0.000000e+00
  br i1 %i.sz, label %_ZL9_lim16bitf.exit52.us.i, label %bb.ay

bb.ay:                                            ; preds = %_ZL9_lim16bitf.exit49.us.i
  %i.ta = fcmp ogt float %14, 6.553500e+04
  %spec.store.select.i50.us.i = select i1 %i.ta, float 6.553500e+04, float %14
  %i.tb = fptoui float %spec.store.select.i50.us.i to i32
  %i.tc = trunc i32 %i.tb to i16
  br label %_ZL9_lim16bitf.exit52.us.i

_ZL9_lim16bitf.exit52.us.i:                       ; preds = %bb.ay, %_ZL9_lim16bitf.exit49.us.i
  %.0.i51.us.i = phi i16 [ %i.tc, %bb.ay ], [ 0, %_ZL9_lim16bitf.exit49.us.i ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  store i16 %.0.i51.us.i, ptr %i.td, align 2, !tbaa !53
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next.i139, %smax213
  br i1 %exitcond214.not, label %..critedge2_crit_edge.us.i, label %scalar.ph, !llvm.loop !98

..critedge2_crit_edge.us.i:                       ; preds = %_ZL9_lim16bitf.exit52.us.i, %middle.block
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit, label %.lr.ph56.split.us.i, !llvm.loop !99

_ZL8copy_yccPA4_tiiiiPtiiii.exit:                 ; preds = %.critedge7.us.i, %.lr.ph106.split.us.i, %..critedge3_crit_edge.us.i, %.lr.ph111.split.us.i, %..critedge3_crit_edge.us.i125, %.lr.ph111.split.us.i115, %..critedge2_crit_edge.us.i, %.lr.ph56.split.us.i, %.lr.ph56.i, %bb.av, %.lr.ph111.i106, %bb.at, %.lr.ph111.i, %.preheader.i, %.preheader101.i
  %i.te = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i140 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i140, label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZL8copy_yccPA4_tiiiiPtiiii.exit
  %i.tf = load ptr, ptr %i.ec, align 8, !tbaa !61 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.te, %i.tf
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az, %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.tg, %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i ], [ %i.tf, %bb.az ] ; 7 uses
  %i.tg = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -2184 ; 2 uses
  %i.th = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !50 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  store ptr %i.ti, ptr %i.tj, align 8, !tbaa !62
  %i.tk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !63
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.ti to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.to) #16
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i.i.i
  %i.tp = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !64 ; 4 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.tr = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -48
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !65
  %i.ts = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -40
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !66
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.tq to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tw) #16
  br label %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i: ; preds = %bb.bb, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.te, %i.tg
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !31
  br label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.az
  %i.tx = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.te, %bb.az ] ; 2 uses
  store ptr %i.te, ptr %i.ec, align 8, !tbaa !61
  %i.ty = load ptr, ptr %i.ed, align 8, !tbaa !67
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tx to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #16
  br label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i, %_ZL8copy_yccPA4_tiiiiPtiiii.exit
  %i.uc = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i, label %_ZN24LibRaw_LjpegDecompressorD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit.i
  store ptr %i.uc, ptr %i.ee, align 8, !tbaa !68
  %i.ud = load ptr, ptr %i.ef, align 8, !tbaa !69
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = ptrtoint ptr %i.uc to i64
  %i.ug = sub i64 %i.ue, %i.uf
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.ug) #16
  br label %_ZN24LibRaw_LjpegDecompressorD2Ev.exit

_ZN24LibRaw_LjpegDecompressorD2Ev.exit:           ; preds = %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.uh = icmp samesign ult i64 %indvars.iv.next216, %i.eg
  br i1 %i.uh, label %bb.x, label %.preheader, !llvm.loop !100

bb.bd:                                            ; preds = %.loopexit184, %.loopexit.split-lp185, %bb.ae
  %.pn80 = phi { ptr, i32 } [ %i.fj, %bb.ae ], [ %lpad.loopexit186, %.loopexit184 ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp185 ]
  call void @_ZN24LibRaw_LjpegDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %2) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ad
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.bd ], [ %i.fi, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.be, %bb.ab
  %.pn83.pn = phi { ptr, i32 } [ %i.ff, %bb.ab ], [ %.pn80.pn, %bb.be ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ui = load ptr, ptr %1, align 8, !tbaa !28    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ui, ptr %i.dy, align 8, !tbaa !27
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !70
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.ui to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.un) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dt) #16
  br label %.body101

bb.bh:                                            ; preds = %.preheader
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.en, ptr %i.uo, align 8, !tbaa !27
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !70
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.en to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.ut) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit145

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit145: ; preds = %.preheader, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dt) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.at) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.aj) #16
  ret void

.body101:                                         ; preds = %.loopexit190, %.loopexit.split-lp191, %bb.o, %bb.u, %bb.r, %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %.pn91 = phi { ptr, i32 } [ %.pn83.pn, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit ], [ %i.bs, %bb.o ], [ %i.cb, %bb.r ], [ %i.do, %bb.u ], [ %i.dv, %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ], [ %lpad.loopexit192, %.loopexit190 ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp191 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.at) #16
  br label %common.resume

common.resume:                                    ; preds = %bb.k, %bb.m, %.body101, %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i
  %.pn94 = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %i.bf, %bb.k ], [ %i.be, %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ], [ %.pn91, %.body101 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.aj) #16
  resume { ptr, i32 } %.pn94

bb.bi:                                            ; preds = %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERNSt3__16vectorItNS0_9allocatorItEEEEii.exit.thread, %bb.aa, %bb.q
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN24LibRaw_LjpegDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %_ZNSt3__116allocator_traitsINS_9allocatorI9HuffTableEEE7destroyB8ne180100IS2_vvEEvRS3_PT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 7 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -2184 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorItNS_9allocatorItEEE8__appendEm:bb.a
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 1
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  unreachable

_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775806
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 4 uses
  %i.q = icmp eq i64 %.0.i, 0
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit
  %i.r = icmp slt i64 %.0.i, 0
  br i1 %i.r, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #14
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i: ; preds = %bb.e
  %i.s = shl nuw i64 %.0.i, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !27
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i, %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit
  %i.u = phi ptr [ %.pre11, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %i.v = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit ] ; 8 uses
  %storemerge.i = phi ptr [ %i.t, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorItEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %storemerge.i16 = ptrtoaddr ptr %storemerge.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 9 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i8 = shl i64 %1, 1                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i8
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.x, i8 0, i64 %.idx.i8, i1 false), !tbaa !53
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.aa = ptrtoaddr ptr %i.u to i64
  %i.ab = add i64 %i.w, -2
  %i.ac = sub i64 %i.ab, %i.aa                    ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = add i64 %i.w, %i.k
  %i.ag = add i64 %storemerge.i16, %i.f
  %i.ah = sub i64 %i.ag, %i.af
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check17 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ae, 8
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.aj = mul i64 %n.vec, -2                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.v, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = mul i64 %index, -2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.am ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.v, i64 %i.am ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %next.gep18, i64 -16
  %i.ao = getelementptr inbounds i8, ptr %next.gep18, i64 -32
  %wide.load = load <8 x i16>, ptr %i.an, align 2, !tbaa !53, !noalias !192
  %wide.load19 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !53, !noalias !192
  %i.ap = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aq = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <8 x i16> %wide.load, ptr %i.ap, align 2, !tbaa !53, !noalias !192
  store <8 x i16> %wide.load19, ptr %i.aq, align 2, !tbaa !53, !noalias !192
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.ae, -8                    ; 3 uses
  %i.as = mul i64 %n.vec21, -2                    ; 2 uses
  %i.at = getelementptr i8, ptr %i.x, i64 %i.as   ; 2 uses
  %i.au = getelementptr i8, ptr %i.v, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.av = mul i64 %index22, -2                    ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.x, i64 %i.av
  %next.gep24 = getelementptr i8, ptr %i.v, i64 %i.av
  %i.aw = getelementptr inbounds i8, ptr %next.gep24, i64 -16
  %wide.load25 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !53, !noalias !192
  %i.ax = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  store <8 x i16> %wide.load25, ptr %i.ax, align 2, !tbaa !53, !noalias !192
  %index.next26 = add nuw i64 %index22, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.ae, %n.vec21
  br i1 %cmp.n27, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.x, %iter.check ], [ %i.x, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.v, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.az = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -2 ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !53, !noalias !192
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -2 ; 3 uses
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !53, !noalias !192
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !191

_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.at, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !70
  store ptr %i.z, ptr %i.c, align 8, !tbaa !70
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !70
  store ptr %i.y, ptr %i.a, align 8, !tbaa !70
  %.not.i9 = icmp eq ptr %i.u, null
  br i1 %.not.i9, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.u to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bg) #16
  br label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEED2Ev.exit

_ZNSt3__114__split_bufferItRNS_9allocatorItEEED2Ev.exit: ; preds = %bb.h, %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #14
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTS12ByteStreamBE", !9, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!"p1 _ZTS24LibRaw_JpegComponentInfo", !8, i64 0}
!12 = !{!"_ZTSNSt3__122__compressed_pair_elemIP24LibRaw_JpegComponentInfoLi0ELb0EEE", !11, i64 0}
!13 = !{!"_ZTSNSt3__117__compressed_pairIP24LibRaw_JpegComponentInfoNS_9allocatorIS1_EEEE", !12, i64 0}
!14 = !{!"_ZTSNSt3__16vectorI24LibRaw_JpegComponentInfoNS_9allocatorIS1_EEEE", !11, i64 0, !11, i64 8, !13, i64 16}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"_ZTS14LibRaw_SOFInfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !14, i64 16, !15, i64 40}
!17 = !{!"p1 _ZTS9HuffTable", !8, i64 0}
!18 = !{!"_ZTSNSt3__122__compressed_pair_elemIP9HuffTableLi0ELb0EEE", !17, i64 0}
!19 = !{!"_ZTSNSt3__117__compressed_pairIP9HuffTableNS_9allocatorIS1_EEEE", !18, i64 0}
!20 = !{!"_ZTSNSt3__16vectorI9HuffTableNS_9allocatorIS1_EEEE", !17, i64 0, !17, i64 8, !19, i64 16}
!21 = !{!"_ZTSN24LibRaw_LjpegDecompressor5State6StatesE", !4, i64 0}
!22 = !{!"_ZTS24LibRaw_LjpegDecompressor", !10, i64 0, !16, i64 16, !5, i64 64, !5, i64 68, !5, i64 72, !20, i64 80, !21, i64 104}
!23 = !{!"p1 short", !8, i64 0}
!24 = !{!"_ZTSNSt3__122__compressed_pair_elemIPtLi0ELb0EEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__117__compressed_pairIPtNS_9allocatorItEEEE", !24, i64 0}
!26 = !{!"_ZTSNSt3__16vectorItNS_9allocatorItEEEE", !23, i64 0, !23, i64 8, !25, i64 16}
!27 = !{!26, !23, i64 8}
!28 = !{!26, !23, i64 0}
!29 = !{!14, !11, i64 0}
!30 = !{!"_ZTS24LibRaw_JpegComponentInfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!31 = !{!20, !17, i64 0}
!32 = !{!"p1 int", !8, i64 0}
!33 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !32, i64 0, !32, i64 8, !34, i64 16}
!36 = !{!"p1 long", !8, i64 0}
!37 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !37, i64 0}
!39 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !36, i64 0, !36, i64 8, !38, i64 16}
!40 = !{!"_ZTS9HuffTable", !4, i64 0, !4, i64 68, !4, i64 1092, !15, i64 2116, !15, i64 2117, !5, i64 2120, !35, i64 2128, !39, i64 2152, !15, i64 2176}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!"vtable pointer", !3, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTS7BitPump"}
!46 = !{!"long", !4, i64 0}
!47 = !{!"_ZTS11BitPumpJpeg", !45, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !46, i64 24, !5, i64 32, !15, i64 36}
!48 = !{!47, !9, i64 8}
!49 = !{!47, !5, i64 16}
!50 = !{!39, !36, i64 0}
!51 = !{!40, !15, i64 2116}
!52 = !{!"short", !4, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!30, !5, i64 12}
!56 = !{!30, !5, i64 16}
!57 = !{!5, !5, i64 0}
!58 = !{!4, !4, i64 0}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!20, !17, i64 8}
!62 = !{!39, !36, i64 8}
!63 = !{!36, !36, i64 0}
!64 = !{!35, !32, i64 0}
!65 = !{!35, !32, i64 8}
!66 = !{!32, !32, i64 0}
!67 = !{!17, !17, i64 0}
!68 = !{!14, !11, i64 8}
!69 = !{!11, !11, i64 0}
!70 = !{!23, !23, i64 0}
!71 = !{!47, !5, i64 32}
!72 = !{!47, !46, i64 24}
!73 = distinct !{null}
!74 = distinct !{!74, !54}
!75 = distinct !{!75, !54}
!76 = !{!22, !5, i64 16}
!77 = !{!30, !5, i64 8}
!78 = !{!40, !15, i64 2176}
!79 = !{!10, !9, i64 0}
!80 = !{!10, !5, i64 12}
!81 = !{!10, !5, i64 8}
!82 = !{!22, !5, i64 28}
!83 = !{!22, !5, i64 68}
!84 = !{!40, !15, i64 2117}
!85 = !{!46, !46, i64 0}
!86 = distinct !{!86, !54}
!87 = distinct !{!87, !54}
!88 = distinct !{!88, !169}
!89 = distinct !{!89, !54}
!90 = distinct !{!90, !54}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !54}
!93 = distinct !{!93, !54}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !54, !59, !60}
!98 = distinct !{!98, !54, !59}
!99 = distinct !{!99, !54}
!100 = distinct !{!100, !54}
!101 = !{!"double", !4, i64 0}
!102 = !{!"_ZTS20libraw_image_sizes_t", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !52, i64 8, !52, i64 10, !52, i64 12, !52, i64 14, !5, i64 16, !101, i64 24, !5, i64 32, !4, i64 36, !52, i64 164, !4, i64 166}
!103 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !9, i64 432}
!104 = !{!"float", !4, i64 0}
!105 = !{!"_ZTS18libraw_nikonlens_t", !104, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!106 = !{!"_ZTS16libraw_dnglens_t", !104, i64 0, !104, i64 4, !104, i64 8, !104, i64 12}
!107 = !{!"long long", !4, i64 0}
!108 = !{!"_ZTS24libraw_makernotes_lens_t", !107, i64 0, !4, i64 8, !52, i64 136, !52, i64 138, !107, i64 144, !52, i64 152, !52, i64 154, !4, i64 156, !52, i64 220, !4, i64 222, !4, i64 238, !104, i64 256, !104, i64 260, !104, i64 264, !104, i64 268, !104, i64 272, !104, i64 276, !104, i64 280, !104, i64 284, !104, i64 288, !104, i64 292, !104, i64 296, !104, i64 300, !104, i64 304, !104, i64 308, !104, i64 312, !107, i64 320, !4, i64 328, !107, i64 456, !4, i64 464, !107, i64 592, !4, i64 600, !52, i64 728, !104, i64 732}
!109 = !{!"_ZTS17libraw_lensinfo_t", !104, i64 0, !104, i64 4, !104, i64 8, !104, i64 12, !104, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !52, i64 532, !105, i64 536, !106, i64 544, !108, i64 560}
!110 = !{!"_ZTS13libraw_area_t", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6}
!111 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !52, i64 52, !52, i64 54, !4, i64 56, !52, i64 58, !52, i64 60, !52, i64 62, !52, i64 64, !52, i64 66, !52, i64 68, !52, i64 70, !52, i64 72, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !5, i64 84, !104, i64 88, !52, i64 92, !52, i64 94, !52, i64 96, !52, i64 98, !5, i64 100, !52, i64 104, !5, i64 108, !5, i64 112, !52, i64 116, !5, i64 120, !110, i64 124, !110, i64 132, !110, i64 140, !110, i64 148, !110, i64 156, !4, i64 164}
!112 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6}
!113 = !{!"_ZTS25libraw_nikon_makernotes_t", !101, i64 0, !52, i64 8, !52, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !52, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !52, i64 170, !112, i64 172, !52, i64 180, !52, i64 182, !52, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !9, i64 256, !52, i64 264, !52, i64 266, !4, i64 268, !52, i64 270, !101, i64 272, !101, i64 280, !101, i64 288}
!114 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !101, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!115 = !{!"_ZTS18libraw_fuji_info_t", !104, i64 0, !52, i64 4, !52, i64 6, !52, i64 8, !52, i64 10, !52, i64 12, !52, i64 14, !52, i64 16, !52, i64 18, !4, i64 20, !4, i64 53, !104, i64 88, !52, i64 92, !52, i64 94, !4, i64 96, !52, i64 100, !5, i64 104, !5, i64 108, !52, i64 112, !4, i64 114, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !52, i64 128, !5, i64 132, !52, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !52, i64 168, !5, i64 172, !52, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!116 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !52, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !52, i64 82, !4, i64 84, !52, i64 88, !52, i64 90, !4, i64 92, !4, i64 352, !52, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !52, i64 416, !52, i64 418, !52, i64 420, !52, i64 422, !101, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !52, i64 456, !52, i64 458}
!117 = !{!"_ZTS18libraw_sony_info_t", !52, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !52, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !52, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !52, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !52, i64 54, !5, i64 56, !52, i64 60, !4, i64 62, !52, i64 66, !52, i64 68, !52, i64 70, !52, i64 72, !52, i64 74, !52, i64 76, !52, i64 78, !5, i64 80, !104, i64 84, !52, i64 88, !5, i64 92, !5, i64 96, !52, i64 100, !4, i64 102, !5, i64 124, !52, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !52, i64 138, !52, i64 140, !52, i64 142, !52, i64 144, !52, i64 146, !52, i64 148, !52, i64 150, !52, i64 152, !52, i64 154, !5, i64 156, !52, i64 160, !4, i64 162, !104, i64 180}
!118 = !{!"_ZTS25libraw_kodak_makernotes_t", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !52, i64 8, !52, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !104, i64 236, !104, i64 240}
!119 = !{!"_ZTS29libraw_panasonic_makernotes_t", !52, i64 0, !52, i64 2, !4, i64 4, !5, i64 36, !104, i64 40, !4, i64 44, !52, i64 56, !52, i64 58, !5, i64 60, !5, i64 64}
!120 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !52, i64 12, !5, i64 16, !5, i64 20, !52, i64 24, !4, i64 26, !52, i64 30, !4, i64 32, !4, i64 33, !52, i64 34}
!121 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!122 = !{!"_ZTS25libraw_ricoh_makernotes_t", !52, i64 0, !4, i64 4, !4, i64 12, !52, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !52, i64 40, !52, i64 42, !52, i64 44, !52, i64 46, !52, i64 48, !52, i64 50, !101, i64 56, !101, i64 64}
!123 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !101, i64 88, !5, i64 96, !4, i64 100}
!124 = !{!"_ZTS24libraw_metadata_common_t", !104, i64 0, !104, i64 4, !104, i64 8, !104, i64 12, !104, i64 16, !104, i64 20, !104, i64 24, !104, i64 28, !104, i64 32, !104, i64 36, !104, i64 40, !104, i64 44, !104, i64 48, !104, i64 52, !104, i64 56, !104, i64 60, !52, i64 64, !4, i64 66, !104, i64 196, !4, i64 200, !5, i64 296}
!125 = !{!"_ZTS19libraw_makernotes_t", !111, i64 0, !113, i64 168, !114, i64 464, !115, i64 848, !116, i64 1200, !117, i64 1664, !118, i64 1848, !119, i64 2092, !120, i64 2160, !121, i64 2196, !122, i64 2648, !123, i64 2720, !124, i64 2856}
!126 = !{!"_ZTS21libraw_shootinginfo_t", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !52, i64 8, !52, i64 10, !52, i64 12, !4, i64 14, !4, i64 78}
!127 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !104, i64 128, !104, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !104, i64 248, !104, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !104, i64 288, !104, i64 292, !5, i64 296, !5, i64 300}
!128 = !{!"any p2 pointer", !8, i64 0}
!129 = !{!"p2 omnipotent char", !128, i64 0}
!130 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !104, i64 28, !4, i64 32, !129, i64 40}
!131 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !104, i64 32}
!132 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !104, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !104, i64 32920, !104, i64 32924, !4, i64 32928}
!133 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !104, i64 147516, !104, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !131, i64 147876, !104, i64 147912, !104, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !132, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!134 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !104, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!135 = !{!"_ZTS17libraw_imgother_t", !104, i64 0, !104, i64 4, !104, i64 8, !104, i64 12, !46, i64 16, !5, i64 24, !4, i64 28, !134, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!136 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!137 = !{!"_ZTS18libraw_thumbnail_t", !136, i64 0, !52, i64 4, !52, i64 6, !5, i64 8, !5, i64 12, !9, i64 16}
!138 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!139 = !{!"p1 float", !8, i64 0}
!140 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !52, i64 12, !52, i64 14}
!141 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !139, i64 32, !139, i64 40, !139, i64 48, !23, i64 56, !23, i64 64, !103, i64 72, !102, i64 512, !140, i64 696, !133, i64 712}
!142 = !{!"_ZTS13libraw_data_t", !23, i64 0, !102, i64 8, !103, i64 192, !109, i64 632, !125, i64 1928, !126, i64 5088, !127, i64 5232, !130, i64 5536, !5, i64 5584, !5, i64 5588, !133, i64 5592, !135, i64 192680, !137, i64 193480, !138, i64 193504, !141, i64 193768, !8, i64 381568}
!143 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!144 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!145 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!146 = !{!"_ZTS15internal_data_t", !144, i64 0, !145, i64 8, !5, i64 16, !9, i64 24, !107, i64 32, !107, i64 40, !4, i64 48}
!147 = !{!"_ZTS13output_data_t", !32, i64 0, !32, i64 8}
!148 = !{!"_ZTS15identify_data_t", !5, i64 0, !107, i64 8, !107, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!149 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!150 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !52, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !52, i64 148, !52, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!151 = !{!"_ZTS15unpacker_data_t", !52, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !107, i64 24, !107, i64 32, !107, i64 40, !107, i64 48, !107, i64 56, !107, i64 64, !107, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !149, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !107, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !150, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !52, i64 2496, !52, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !52, i64 2608}
!152 = !{!"_ZTS22libraw_internal_data_t", !146, i64 0, !140, i64 64, !147, i64 80, !148, i64 96, !151, i64 136}
!153 = !{!"p1 _ZTS6decode", !8, i64 0}
!154 = !{!"_ZTS13libraw_memmgr", !128, i64 0, !5, i64 8}
!155 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!156 = !{!"_ZTS6LibRaw", !142, i64 8, !143, i64 381584, !152, i64 381592, !4, i64 384344, !153, i64 433496, !153, i64 433504, !4, i64 433512, !154, i64 768232, !155, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !46, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!157 = !{!156, !23, i64 8}
!158 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!159 = !{!158, !158, i64 0}
!160 = !{!156, !5, i64 381852}
!161 = !{!156, !52, i64 18}
!162 = !{!156, !5, i64 381856}
!163 = !{!156, !52, i64 16}
!164 = !{!156, !144, i64 381592}
!165 = !{!107, !107, i64 0}
!166 = !{!156, !107, i64 381760}
!167 = !{!156, !107, i64 381800}
!168 = !{!156, !5, i64 5564}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{!156, !5, i64 5560}
!171 = !{!156, !5, i64 153096}
!172 = !{!156, !5, i64 153088}
!173 = !{!22, !5, i64 24}
!174 = !{!95}
!175 = !{!96}
!176 = !{!47, !15, i64 36}
!177 = !{!47, !5, i64 20}
end_hunk_1
