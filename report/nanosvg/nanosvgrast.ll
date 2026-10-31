Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__rasterizeSortedEdges:bb.a
  %i.js = add nuw nsw i32 %i.jr, 257
  %i.jt = lshr i32 %i.js, 16                      ; 5 uses
  %i.ju = xor i32 %i.jt, 255
  %i.jv = mul nuw nsw i32 %i.jm, %i.jt
  %i.jw = add nuw nsw i32 %i.jv, 257
  %i.jx = lshr i32 %i.jw, 16
  %i.jy = mul nuw nsw i32 %i.jn, %i.jt
  %i.jz = add nuw nsw i32 %i.jy, 257
  %i.ka = lshr i32 %i.jz, 16
  %i.kb = mul nuw nsw i32 %i.jo, %i.jt
  %i.kc = add nuw nsw i32 %i.kb, 257
  %i.kd = lshr i32 %i.kc, 16
  %i.ke = load i8, ptr %.0183.i, align 1, !tbaa !17
  %i.kf = zext i8 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.ju, 257              ; 4 uses
  %i.kh = mul nuw nsw i32 %i.kg, %i.kf
  %i.ki = add nuw nsw i32 %i.kh, 257
  %i.kj = lshr i32 %i.ki, 16
  %i.kk = add nuw nsw i32 %i.kj, %i.jx
  %i.kl = getelementptr inbounds nuw i8, ptr %.0183.i, i64 1 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !17
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.kg, %i.kn
  %i.kp = add nuw nsw i32 %i.ko, 257
  %i.kq = lshr i32 %i.kp, 16
  %i.kr = add nuw nsw i32 %i.kq, %i.ka
  %i.ks = getelementptr inbounds nuw i8, ptr %.0183.i, i64 2 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !17
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nuw nsw i32 %i.kg, %i.ku
  %i.kw = add nuw nsw i32 %i.kv, 257
  %i.kx = lshr i32 %i.kw, 16
  %i.ky = add nuw nsw i32 %i.kx, %i.kd
  %i.kz = getelementptr inbounds nuw i8, ptr %.0183.i, i64 3 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !17
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.kg, %i.lb
  %i.ld = add nuw nsw i32 %i.lc, 257
  %i.le = lshr i32 %i.ld, 16
  %i.lf = add nuw nsw i32 %i.le, %i.jt
  %i.lg = trunc i32 %i.kk to i8
  store i8 %i.lg, ptr %.0183.i, align 1, !tbaa !17
  %i.lh = trunc i32 %i.kr to i8
  store i8 %i.lh, ptr %i.kl, align 1, !tbaa !17
  %i.li = trunc i32 %i.ky to i8
  store i8 %i.li, ptr %i.ks, align 1, !tbaa !17
  %i.lj = trunc i32 %i.lf to i8
  store i8 %i.lj, ptr %i.kz, align 1, !tbaa !17
  %i.lk = getelementptr inbounds nuw i8, ptr %.0159182.i, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %.0183.i, i64 4
  %i.lm = add nuw nsw i32 %.0162181.i, 1
  %exitcond188.not.i = icmp eq i32 %.0162181.i, %i.iz
  br i1 %exitcond188.not.i, label %nsvg__scanlineSolid.exit, label %bb.ax, !llvm.loop !242

.lr.ph180.i:                                      ; preds = %bb.aw
  %i.ln = uitofp nneg i32 %.082160 to float
  %i.lo = uitofp nneg i32 %spec.select135 to float
  %i.lp = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.lo, i64 1
  %i.lr = fsub <2 x float> %i.lq, %i.y
  %i.ls = fdiv <2 x float> %i.lr, %i.w            ; 2 uses
  %i.lt = extractelement <2 x float> %i.ls, i64 1
  %i.lu = extractelement <2 x float> %i.ls, i64 0
  br label %bb.ay

bb.ay:                                            ; preds = %nsvg__clampf.exit.i, %.lr.ph180.i
  %.1179.i = phi ptr [ %i.iy, %.lr.ph180.i ], [ %i.op, %nsvg__clampf.exit.i ] ; 6 uses
  %.1160178.i = phi ptr [ %i.jc, %.lr.ph180.i ], [ %i.oo, %nsvg__clampf.exit.i ] ; 2 uses
  %.0165177.i = phi float [ %i.lt, %.lr.ph180.i ], [ %i.oq, %nsvg__clampf.exit.i ] ; 2 uses
  %.0166176.i = phi i32 [ 0, %.lr.ph180.i ], [ %i.or, %nsvg__clampf.exit.i ] ; 2 uses
  %i.lv = load float, ptr %i.r, align 4, !tbaa !31
  %i.lw = load float, ptr %i.s, align 4, !tbaa !31
  %i.lx = fmul float %i.lu, %i.lw
  %i.ly = tail call float @llvm.fmuladd.f32(float %.0165177.i, float %i.lv, float %i.lx)
  %i.lz = load float, ptr %i.t, align 4, !tbaa !31
  %i.ma = fadd float %i.lz, %i.ly
  %i.mb = fmul float %i.ma, 2.550000e+02          ; 4 uses
  %i.mc = fcmp uno float %i.mb, 0.000000e+00
  br i1 %i.mc, label %nsvg__clampf.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.md = fcmp olt float %i.mb, 0.000000e+00
  %i.me = fcmp ogt float %i.mb, 2.550000e+02
  %i.mf = select i1 %i.me, float 2.550000e+02, float %i.mb
  %i.mg = select i1 %i.md, float 0.000000e+00, float %i.mf
  %i.mh = fptosi float %i.mg to i32
  %i.mi = sext i32 %i.mh to i64
  br label %nsvg__clampf.exit.i

nsvg__clampf.exit.i:                              ; preds = %bb.az, %bb.ay
  %.0.i.i113 = phi i64 [ %i.mi, %bb.az ], [ 0, %bb.ay ]
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.0.i.i113
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !133 ; 4 uses
  %i.ml = and i32 %i.mk, 255
  %i.mm = lshr i32 %i.mk, 8
  %i.mn = and i32 %i.mm, 255
  %i.mo = lshr i32 %i.mk, 16
  %i.mp = and i32 %i.mo, 255
  %i.mq = lshr i32 %i.mk, 24
  %i.mr = load i8, ptr %.1160178.i, align 1, !tbaa !17
  %i.ms = zext i8 %i.mr to i32
  %i.mt = mul nuw nsw i32 %i.mq, 257
  %i.mu = mul nuw nsw i32 %i.mt, %i.ms
  %i.mv = add nuw nsw i32 %i.mu, 257
  %i.mw = lshr i32 %i.mv, 16                      ; 3 uses
  %i.mx = xor i32 %i.mw, 255
  %i.my = mul nuw nsw i32 %i.mw, 257              ; 3 uses
  %i.mz = mul nuw nsw i32 %i.my, %i.ml
  %i.na = add nuw nsw i32 %i.mz, 257
  %i.nb = lshr i32 %i.na, 16
  %i.nc = mul nuw nsw i32 %i.my, %i.mn
  %i.nd = add nuw nsw i32 %i.nc, 257
  %i.ne = lshr i32 %i.nd, 16
  %i.nf = mul nuw nsw i32 %i.my, %i.mp
  %i.ng = add nuw nsw i32 %i.nf, 257
  %i.nh = lshr i32 %i.ng, 16
  %i.ni = load i8, ptr %.1179.i, align 1, !tbaa !17
  %i.nj = zext i8 %i.ni to i32
  %i.nk = mul nuw nsw i32 %i.mx, 257              ; 4 uses
  %i.nl = mul nuw nsw i32 %i.nk, %i.nj
  %i.nm = add nuw nsw i32 %i.nl, 257
  %i.nn = lshr i32 %i.nm, 16
  %i.no = add nuw nsw i32 %i.nn, %i.nb
  %i.np = getelementptr inbounds nuw i8, ptr %.1179.i, i64 1 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !17
  %i.nr = zext i8 %i.nq to i32
  %i.ns = mul nuw nsw i32 %i.nk, %i.nr
  %i.nt = add nuw nsw i32 %i.ns, 257
  %i.nu = lshr i32 %i.nt, 16
  %i.nv = add nuw nsw i32 %i.nu, %i.ne
  %i.nw = getelementptr inbounds nuw i8, ptr %.1179.i, i64 2 ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = zext i8 %i.nx to i32
  %i.nz = mul nuw nsw i32 %i.nk, %i.ny
  %i.oa = add nuw nsw i32 %i.nz, 257
  %i.ob = lshr i32 %i.oa, 16
  %i.oc = add nuw nsw i32 %i.ob, %i.nh
  %i.od = getelementptr inbounds nuw i8, ptr %.1179.i, i64 3 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !17
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nuw nsw i32 %i.nk, %i.of
  %i.oh = add nuw nsw i32 %i.og, 257
  %i.oi = lshr i32 %i.oh, 16
  %i.oj = add nuw nsw i32 %i.oi, %i.mw
  %i.ok = trunc i32 %i.no to i8
  store i8 %i.ok, ptr %.1179.i, align 1, !tbaa !17
  %i.ol = trunc i32 %i.nv to i8
  store i8 %i.ol, ptr %i.np, align 1, !tbaa !17
  %i.om = trunc i32 %i.oc to i8
  store i8 %i.om, ptr %i.nw, align 1, !tbaa !17
  %i.on = trunc i32 %i.oj to i8
  store i8 %i.on, ptr %i.od, align 1, !tbaa !17
  %i.oo = getelementptr inbounds nuw i8, ptr %.1160178.i, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %.1179.i, i64 4
  %i.oq = fadd float %i.o, %.0165177.i
  %i.or = add nuw nsw i32 %.0166176.i, 1
  %exitcond187.not.i = icmp eq i32 %.0166176.i, %i.iz
  br i1 %exitcond187.not.i, label %nsvg__scanlineSolid.exit, label %bb.ay, !llvm.loop !243

.lr.ph.i:                                         ; preds = %bb.aw
  %i.os = uitofp nneg i32 %.082160 to float
  %i.ot = uitofp nneg i32 %spec.select135 to float
  %i.ou = insertelement <2 x float> poison, float %i.os, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.ot, i64 1
  %i.ow = fsub <2 x float> %i.ov, %i.y
  %i.ox = fdiv <2 x float> %i.ow, %i.w            ; 2 uses
  %i.oy = extractelement <2 x float> %i.ox, i64 1
  %i.oz = extractelement <2 x float> %i.ox, i64 0 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %nsvg__clampf.exit169.i, %.lr.ph.i
  %.2175.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %i.sb, %nsvg__clampf.exit169.i ] ; 6 uses
  %.2161174.i = phi ptr [ %i.jc, %.lr.ph.i ], [ %i.sa, %nsvg__clampf.exit169.i ] ; 2 uses
  %.0163173.i = phi i32 [ 0, %.lr.ph.i ], [ %i.sd, %nsvg__clampf.exit169.i ] ; 2 uses
  %.0164172.i = phi float [ %i.oy, %.lr.ph.i ], [ %i.sc, %nsvg__clampf.exit169.i ] ; 3 uses
  %i.pa = load float, ptr %i.n, align 4, !tbaa !31
  %i.pb = load float, ptr %i.p, align 4, !tbaa !31
  %i.pc = fmul float %i.oz, %i.pb
  %i.pd = tail call float @llvm.fmuladd.f32(float %.0164172.i, float %i.pa, float %i.pc)
  %i.pe = load float, ptr %i.q, align 4, !tbaa !31
  %i.pf = fadd float %i.pe, %i.pd                 ; 2 uses
  %i.pg = load float, ptr %i.r, align 4, !tbaa !31
  %i.ph = load float, ptr %i.s, align 4, !tbaa !31
  %i.pi = fmul float %i.oz, %i.ph
  %i.pj = tail call float @llvm.fmuladd.f32(float %.0164172.i, float %i.pg, float %i.pi)
  %i.pk = load float, ptr %i.t, align 4, !tbaa !31
  %i.pl = fadd float %i.pk, %i.pj                 ; 2 uses
  %i.pm = fmul float %i.pl, %i.pl
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pf, float %i.pf, float %i.pm)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.pn)
  %i.po = fmul float %sqrt.i, 2.550000e+02        ; 4 uses
  %i.pp = fcmp uno float %i.po, 0.000000e+00
  br i1 %i.pp, label %nsvg__clampf.exit169.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pq = fcmp olt float %i.po, 0.000000e+00
  %i.pr = fcmp ogt float %i.po, 2.550000e+02
  %i.ps = select i1 %i.pr, float 2.550000e+02, float %i.po
  %i.pt = select i1 %i.pq, float 0.000000e+00, float %i.ps
  %i.pu = fptosi float %i.pt to i32
  %6 = sext i32 %i.pu to i64
  br label %nsvg__clampf.exit169.i

nsvg__clampf.exit169.i:                           ; preds = %bb.bb, %bb.ba
  %.0.i168.i = phi i64 [ %6, %bb.bb ], [ 0, %bb.ba ]
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.0.i168.i
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !133 ; 4 uses
  %i.px = and i32 %i.pw, 255
  %i.py = lshr i32 %i.pw, 8
  %i.pz = and i32 %i.py, 255
  %i.qa = lshr i32 %i.pw, 16
  %i.qb = and i32 %i.qa, 255
  %i.qc = lshr i32 %i.pw, 24
  %i.qd = load i8, ptr %.2161174.i, align 1, !tbaa !17
  %i.qe = zext i8 %i.qd to i32
  %i.qf = mul nuw nsw i32 %i.qc, 257
  %i.qg = mul nuw nsw i32 %i.qf, %i.qe
  %i.qh = add nuw nsw i32 %i.qg, 257
  %i.qi = lshr i32 %i.qh, 16                      ; 3 uses
  %i.qj = xor i32 %i.qi, 255
  %i.qk = mul nuw nsw i32 %i.qi, 257              ; 3 uses
  %i.ql = mul nuw nsw i32 %i.qk, %i.px
  %i.qm = add nuw nsw i32 %i.ql, 257
  %i.qn = lshr i32 %i.qm, 16
  %i.qo = mul nuw nsw i32 %i.qk, %i.pz
  %i.qp = add nuw nsw i32 %i.qo, 257
  %i.qq = lshr i32 %i.qp, 16
  %i.qr = mul nuw nsw i32 %i.qk, %i.qb
  %i.qs = add nuw nsw i32 %i.qr, 257
  %i.qt = lshr i32 %i.qs, 16
  %i.qu = load i8, ptr %.2175.i, align 1, !tbaa !17
  %i.qv = zext i8 %i.qu to i32
  %i.qw = mul nuw nsw i32 %i.qj, 257              ; 4 uses
  %i.qx = mul nuw nsw i32 %i.qw, %i.qv
  %i.qy = add nuw nsw i32 %i.qx, 257
  %i.qz = lshr i32 %i.qy, 16
  %i.ra = add nuw nsw i32 %i.qz, %i.qn
  %i.rb = getelementptr inbounds nuw i8, ptr %.2175.i, i64 1 ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !17
  %i.rd = zext i8 %i.rc to i32
  %i.re = mul nuw nsw i32 %i.qw, %i.rd
  %i.rf = add nuw nsw i32 %i.re, 257
  %i.rg = lshr i32 %i.rf, 16
  %i.rh = add nuw nsw i32 %i.rg, %i.qq
  %i.ri = getelementptr inbounds nuw i8, ptr %.2175.i, i64 2 ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.rk = zext i8 %i.rj to i32
  %i.rl = mul nuw nsw i32 %i.qw, %i.rk
  %i.rm = add nuw nsw i32 %i.rl, 257
  %i.rn = lshr i32 %i.rm, 16
  %i.ro = add nuw nsw i32 %i.rn, %i.qt
  %i.rp = getelementptr inbounds nuw i8, ptr %.2175.i, i64 3 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !17
  %i.rr = zext i8 %i.rq to i32
  %i.rs = mul nuw nsw i32 %i.qw, %i.rr
  %i.rt = add nuw nsw i32 %i.rs, 257
  %i.ru = lshr i32 %i.rt, 16
  %i.rv = add nuw nsw i32 %i.ru, %i.qi
  %i.rw = trunc i32 %i.ra to i8
  store i8 %i.rw, ptr %.2175.i, align 1, !tbaa !17
  %i.rx = trunc i32 %i.rh to i8
  store i8 %i.rx, ptr %i.rb, align 1, !tbaa !17
  %i.ry = trunc i32 %i.ro to i8
  store i8 %i.ry, ptr %i.ri, align 1, !tbaa !17
  %i.rz = trunc i32 %i.rv to i8
  store i8 %i.rz, ptr %i.rp, align 1, !tbaa !17
  %i.sa = getelementptr inbounds nuw i8, ptr %.2161174.i, i64 1
  %i.sb = getelementptr inbounds nuw i8, ptr %.2175.i, i64 4
  %i.sc = fadd float %i.o, %.0164172.i
  %i.sd = add nuw nsw i32 %.0163173.i, 1
  %exitcond.not.i = icmp eq i32 %.0163173.i, %i.iz
  br i1 %exitcond.not.i, label %nsvg__scanlineSolid.exit, label %bb.ba, !llvm.loop !244

nsvg__scanlineSolid.exit:                         ; preds = %nsvg__clampf.exit169.i, %nsvg__clampf.exit.i, %bb.ax, %bb.aw, %bb.av
  %i.se = add nuw nsw i32 %.082160, 1             ; 2 uses
  %i.sf = load i32, ptr %i.b, align 4, !tbaa !104
  %i.sg = icmp slt i32 %i.se, %i.sf
  br i1 %i.sg, label %bb.b, label %._crit_edge, !llvm.loop !245

._crit_edge:                                      ; preds = %nsvg__scanlineSolid.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @nsvg__parseGradient(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext range(i8 2, 4) %2) unnamed_addr #16 {
bb.a:
  %calloc = tail call dereferenceable_or_null(224) ptr @calloc(i64 1, i64 224) ; 18 uses
  %i.a = icmp eq ptr %calloc, null
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 173 ; 3 uses
  store i8 1, ptr %i.b, align 1, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %calloc, i64 128
  store i8 %2, ptr %i.c, align 8, !tbaa !141
  %i.d = icmp eq i8 %2, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 156
  store i64 30064771072, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink192 = phi i64 [ 30064771072, %bb.c ], [ 31176785920, %bb.b ]
  %i.f = phi <2 x i64> [ <i64 30064771072, i64 31185174528>, %bb.c ], [ splat (i64 31176785920), %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 132 ; 3 uses
  store i64 %.sink192, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 140 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc, i64 148 ; 2 uses
  store <2 x i64> %i.f, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 176 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 192
  store <2 x float> zeroinitializer, ptr %i.k, align 8, !tbaa !31
  %i.l = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not169 = icmp eq ptr %i.l, null
  br i1 %.not169, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 126
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 172 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 156 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 164
  %i.r = getelementptr inbounds nuw i8, ptr %calloc, i64 63
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %sub_0.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.s = phi ptr [ %i.l, %sub_0.lr.ph ], [ %i.do, %bb.ac ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.u = load i8, ptr %i.s, align 1
  %.not171 = icmp eq i8 %i.u, 105
  br i1 %.not171, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %.not172 = icmp eq i8 %i.w, 100
  br i1 %.not172, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.e, label %.tail.thread

bb.e:                                             ; preds = %.tail
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %calloc, ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 63) #30 ; 0 uses
  store i8 0, ptr %i.r, align 1, !tbaa !17
  br label %bb.ac

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 14 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = tail call fastcc i32 @nsvg__parseAttr(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.ae)
  %.not124 = icmp eq i32 %i.af, 0
  br i1 %.not124, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %.tail.thread
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !21  ; 22 uses
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(14) @.str.27) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(18) @.str.28) #31
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.b, align 1, !tbaa !140
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 1, !tbaa !140
  br label %bb.ac

bb.j:                                             ; preds = %bb.f
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(18) @.str.29) #31
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %sub_0126

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !21
  tail call fastcc void @nsvg__parseTransform(ptr noundef %i.j, ptr noundef %i.ao)
  br label %bb.ac

sub_0126:                                         ; preds = %bb.j
  %i.ap = load i8, ptr %i.ag, align 1
  switch i8 %i.ap, label %.tail164.thread [
    i8 99, label %sub_1127
    i8 114, label %.tail135
    i8 102, label %sub_1141
    i8 120, label %sub_1151
    i8 121, label %sub_1156
  ]

end_hunk_0
