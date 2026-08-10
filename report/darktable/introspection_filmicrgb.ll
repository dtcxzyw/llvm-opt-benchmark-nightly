inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a

bb.i:                                             ; preds = %bb.h
  %i.jk = load i32, ptr %i.al, align 4, !tbaa !97
  %i.jl = sext i32 %i.jk to i64
  %i.jm = load i32, ptr %i.ao, align 4, !tbaa !98
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jl, 4
  %i.jp = mul i64 %i.jo, %i.jn
  %i.jq = call ptr @dt_alloc_aligned(i64 noundef %i.jp) #20 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jq, i64 64) ]
  %.not206 = icmp eq ptr %i.jq, null
  br i1 %.not206, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.js = load float, ptr %i.jr, align 64, !tbaa !162
  %i.jt = fdiv reassoc nsz arcp contract afn float %i.js, %i.az
  %i.ju = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.jv = load float, ptr %i.ju, align 16, !tbaa !163
  %i.jw = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  %i.jx = load i32, ptr %i.jw, align 16, !tbaa !164
  %i.jy = load i32, ptr %i.al, align 4, !tbaa !97 ; 2 uses
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = load i32, ptr %i.ao, align 4, !tbaa !98 ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %.not.i212 = icmp eq i32 %i.ka, 0
  br i1 %.not.i212, label %.loopexit386, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.j
  %.not82.i = icmp eq i32 %i.jy, 0
  %i.kc = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float +inf)
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, 0.000000e+00
  br i1 %.not82.i, label %.loopexit386, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ke = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kg = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = insertelement <4 x float> poison, float %i.kd, i64 3 ; 2 uses
  %i.kj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.kf
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.04180.i = phi i64 [ %i.km, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.kk = add i64 %.04180.i, 3
  %i.kl = mul i64 %.04180.i, %i.jz
  br label %bb.k

._crit_edge.i:                                    ; preds = %dt_noise_generator_simd.exit.i
  %i.km = add nuw i64 %.04180.i, 1                ; 2 uses
  %exitcond83.not.i = icmp eq i64 %i.km, %i.kb
  br i1 %exitcond83.not.i, label %.loopexit386, label %.preheader.i

bb.k:                                             ; preds = %dt_noise_generator_simd.exit.i, %.preheader.i
  %.04278.i = phi i64 [ 0, %.preheader.i ], [ %i.ks, %dt_noise_generator_simd.exit.i ] ; 2 uses
  %i.kn = add i64 %.04278.i, %i.kl                ; 2 uses
  %i.ko = shl i64 %i.kn, 2                        ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.kn
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !16
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ko ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kr, i64 16) ]
  %i.ks = add nuw i64 %.04278.i, 1                ; 5 uses
  %i.kt = lshr i64 %i.ks, 33
  %i.ku = xor i64 %i.kt, %i.ks
  %i.kv = mul i64 %i.ku, 7109453100751455733      ; 2 uses
  %i.kw = lshr i64 %i.kv, 28
  %i.kx = xor i64 %i.kw, %i.kv
  %i.ky = mul i64 %i.kx, -3808689974395783757
  %i.kz = lshr i64 %i.ky, 32
  %i.la = trunc nuw i64 %i.kz to i32              ; 2 uses
  %i.lb = mul i64 %i.ks, %i.kk                    ; 2 uses
  %i.lc = lshr i64 %i.lb, 33
  %i.ld = xor i64 %i.lc, %i.lb
  %i.le = mul i64 %i.ld, 7109453100751455733      ; 2 uses
  %i.lf = lshr i64 %i.le, 28
  %i.lg = xor i64 %i.lf, %i.le
  %i.lh = mul i64 %i.lg, -3808689974395783757
  %i.li = lshr i64 %i.lh, 32
  %i.lj = trunc nuw i64 %i.li to i32              ; 3 uses
  %i.lk = shl i32 %i.lj, 9
  %i.ll = xor i32 %i.la, 635086878                ; 2 uses
  %i.lm = xor i32 %i.lj, -1171427716              ; 3 uses
  %i.ln = xor i32 %i.ll, %i.lj                    ; 3 uses
  %i.lo = xor i32 %i.lm, %i.la                    ; 2 uses
  %i.lp = xor i32 %i.lk, %i.ll
  %i.lq = call noundef i32 @llvm.fshl.i32(i32 %i.lm, i32 %i.lm, i32 11)
  %i.lr = shl i32 %i.ln, 9
  %i.ls = xor i32 %i.lp, %i.lo                    ; 2 uses
  %i.lt = xor i32 %i.lq, %i.ln                    ; 3 uses
  %i.lu = xor i32 %i.ls, %i.ln                    ; 3 uses
  %i.lv = xor i32 %i.lt, %i.lo                    ; 2 uses
  %i.lw = xor i32 %i.ls, %i.lr
  %i.lx = call noundef i32 @llvm.fshl.i32(i32 %i.lt, i32 %i.lt, i32 11)
  %i.ly = shl i32 %i.lu, 9
  %i.lz = xor i32 %i.lw, %i.lv                    ; 2 uses
  %i.ma = xor i32 %i.lu, %i.lx                    ; 3 uses
  %i.mb = xor i32 %i.lz, %i.lu                    ; 3 uses
  %i.mc = xor i32 %i.ma, %i.lv                    ; 2 uses
  %i.md = xor i32 %i.lz, %i.ly
  %i.me = call noundef i32 @llvm.fshl.i32(i32 %i.ma, i32 %i.ma, i32 11)
  %i.mf = shl i32 %i.mb, 9
  %i.mg = xor i32 %i.md, %i.mc                    ; 2 uses
  %i.mh = xor i32 %i.mb, %i.me                    ; 3 uses
  %i.mi = xor i32 %i.mg, %i.mb                    ; 4 uses
  %i.mj = xor i32 %i.mh, %i.mc                    ; 5 uses
  %i.mk = xor i32 %i.mg, %i.mf
  %i.ml = xor i32 %i.mk, %i.mj                    ; 3 uses
  %i.mm = xor i32 %i.ml, %i.mi                    ; 7 uses
  %i.mn = load <4 x float>, ptr %i.kr, align 16, !tbaa !16 ; 7 uses
  %i.mo = fmul reassoc nsz arcp contract afn <4 x float> %i.kh, %i.mn
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.mo, %i.kj ; 7 uses
  %i.mq = call noundef i32 @llvm.fshl.i32(i32 %i.mh, i32 %i.mh, i32 11) ; 4 uses
  %i.mr = xor i32 %i.mi, %i.mq                    ; 3 uses
  %i.ms = xor i32 %i.mr, %i.mj                    ; 8 uses
  %i.mt = call noundef i32 @llvm.fshl.i32(i32 %i.mr, i32 %i.mr, i32 11) ; 6 uses
  switch i32 %i.jx, label %bb.l [
    i32 2, label %poisson_noise_simd.exit.i.i
    i32 1, label %gaussian_noise_simd.exit.i.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.mu = add i32 %i.mq, %i.mj
  %i.mv = add i32 %i.mt, %i.ms
  %i.mw = xor i32 %i.mm, %i.mt                    ; 3 uses
  %i.mx = xor i32 %i.mw, %i.ms
  %i.my = call noundef i32 @llvm.fshl.i32(i32 %i.mw, i32 %i.mw, i32 11)
  %i.mz = add i32 %i.my, %i.mx
  %i.na = lshr i32 %i.mz, 8
  %i.nb = uitofp reassoc nsz arcp contract afn nneg i32 %i.na to float
  %i.nc = fmul reassoc nnan nsz arcp contract afn float %i.nb, f0x34000000
  %i.nd = fadd reassoc nnan nsz arcp contract afn float %i.nc, -1.000000e+00
  %i.ne = extractelement <4 x float> %i.mp, i64 2
  %i.nf = fmul reassoc nsz arcp contract afn float %i.nd, %i.ne
  %i.ng = insertelement <2 x i32> poison, i32 %i.mu, i64 0
  %i.nh = insertelement <2 x i32> %i.ng, i32 %i.mv, i64 1
  %i.ni = lshr <2 x i32> %i.nh, splat (i32 8)
  %i.nj = uitofp nneg <2 x i32> %i.ni to <2 x float>
  %i.nk = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.nj, splat (float f0x34000000)
  %i.nl = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.nk, splat (float -1.000000e+00)
  %i.nm = shufflevector <4 x float> %i.mp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nn = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.nm
  %i.no = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.np = fadd reassoc nsz arcp contract afn <2 x float> %i.nn, %i.no
  %i.nq = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.nr = shufflevector <4 x float> %i.mp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ns = insertelement <2 x float> %i.nr, float %i.nf, i64 0 ; 2 uses
  %i.nt = fadd reassoc nsz arcp contract afn <2 x float> %i.nq, %i.ns
  %i.nu = fsub reassoc nsz arcp contract afn <2 x float> %i.nq, %i.ns
  %i.nv = shufflevector <2 x float> %i.nt, <2 x float> %i.nu, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.nw = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> %i.nv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_noise_generator_simd.exit.i

gaussian_noise_simd.exit.i.i:                     ; preds = %bb.k
  %i.ny = shl i32 %i.mi, 9
  %i.nz = shl i32 %i.mm, 9
  %i.oa = xor i32 %i.ny, %i.ml
  %i.ob = xor i32 %i.oa, %i.ms                    ; 2 uses
  %i.oc = xor i32 %i.mm, %i.mt                    ; 3 uses
  %i.od = xor i32 %i.ob, %i.mm                    ; 3 uses
  %i.oe = xor i32 %i.oc, %i.ms                    ; 3 uses
  %i.of = xor i32 %i.ob, %i.nz
  %i.og = call noundef i32 @llvm.fshl.i32(i32 %i.oc, i32 %i.oc, i32 11) ; 2 uses
  %i.oh = shl i32 %i.od, 9
  %i.oi = xor i32 %i.of, %i.oe                    ; 2 uses
  %i.oj = xor i32 %i.od, %i.og                    ; 3 uses
  %i.ok = xor i32 %i.oi, %i.od                    ; 2 uses
  %i.ol = xor i32 %i.oj, %i.oe                    ; 3 uses
  %i.om = xor i32 %i.oi, %i.oh
  %i.on = call noundef i32 @llvm.fshl.i32(i32 %i.oj, i32 %i.oj, i32 11) ; 2 uses
  %i.oo = add i32 %i.on, %i.ol
  %i.op = xor i32 %i.om, %i.ol
  %i.oq = xor i32 %i.ok, %i.on                    ; 3 uses
  %i.or = xor i32 %i.op, %i.ok
  %i.os = xor i32 %i.oq, %i.ol                    ; 2 uses
  %i.ot = call noundef i32 @llvm.fshl.i32(i32 %i.oq, i32 %i.oq, i32 11) ; 2 uses
  %i.ou = lshr i32 %i.oo, 8
  %i.ov = uitofp reassoc nsz arcp contract afn nneg i32 %i.ou to float
  %i.ow = add i32 %i.ot, %i.os
  %i.ox = xor i32 %i.or, %i.ot                    ; 3 uses
  %i.oy = xor i32 %i.ox, %i.os
  %i.oz = call noundef i32 @llvm.fshl.i32(i32 %i.ox, i32 %i.ox, i32 11)
  %i.pa = lshr i32 %i.ow, 8
  %i.pb = uitofp reassoc nsz arcp contract afn nneg i32 %i.pa to float
  %i.pc = add i32 %i.oz, %i.oy
  %i.pd = lshr i32 %i.pc, 8
  %i.pe = uitofp reassoc nsz arcp contract afn nneg i32 %i.pd to float
  %i.pf = fmul reassoc nnan nsz arcp contract afn float %i.ov, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.pf)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.pg = fmul reassoc nnan nsz arcp contract afn float %i.pb, f0x34C90FDB
  %sincos70.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.pg)
  %sin71.i.i.i = extractvalue { float, float } %sincos70.i.i.i, 0
  %i.ph = fmul reassoc nnan nsz arcp contract afn float %i.pe, f0x34C90FDB
  %sincos73.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ph)
  %cos75.i.i.i = extractvalue { float, float } %sincos73.i.i.i, 1
  %i.pi = add i32 %i.og, %i.oe
  %i.pj = lshr i32 %i.pi, 8
  %i.pk = uitofp reassoc nsz arcp contract afn nneg i32 %i.pj to float
  %7 = fmul reassoc nnan nsz arcp contract afn float %i.pk, f0x33800000
  %8 = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %7, float f0x00800000)
  %i.pl = call fast float @llvm.log.f32(float %8)
  %i.pm = fmul reassoc nnan nsz arcp contract afn float %i.pl, -2.000000e+00
  %i.pn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.pm)
  %i.po = add i32 %i.mt, %i.ms
  %i.pp = add i32 %i.mq, %i.mj
  %i.pq = insertelement <2 x i32> poison, i32 %i.pp, i64 0
  %i.pr = insertelement <2 x i32> %i.pq, i32 %i.po, i64 1
  %i.ps = lshr <2 x i32> %i.pr, splat (i32 8)
  %i.pt = uitofp nneg <2 x i32> %i.ps to <2 x float>
  %9 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.pt, splat (float f0x33800000)
  %10 = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %9, <2 x float> splat (float f0x00800000))
  %i.pu = call fast <2 x float> @llvm.log.v2f32(<2 x float> %10)
  %i.pv = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.pu, splat (float -2.000000e+00)
  %i.pw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.pn, i64 2
  %i.px = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.pv)
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pz = shufflevector <4 x float> %i.py, <4 x float> %i.pw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qa = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, %i.pz
  %i.qb = insertelement <4 x float> %i.ki, float %cos.i.i.i, i64 0
  %i.qc = insertelement <4 x float> %i.qb, float %sin71.i.i.i, i64 1
  %i.qd = insertelement <4 x float> %i.qc, float %cos75.i.i.i, i64 2
  %i.qe = fmul reassoc nsz arcp contract afn <4 x float> %i.qa, %i.qd
  %i.qf = fadd reassoc nsz arcp contract afn <4 x float> %i.qe, %i.mn
  br label %dt_noise_generator_simd.exit.i

poisson_noise_simd.exit.i.i:                      ; preds = %bb.k
  %i.qg = shl i32 %i.mi, 9
  %i.qh = add i32 %i.mt, %i.ms
  %i.qi = shl i32 %i.mm, 9
  %i.qj = xor i32 %i.qg, %i.ml
  %i.qk = xor i32 %i.qj, %i.ms                    ; 2 uses
  %i.ql = xor i32 %i.mm, %i.mt                    ; 3 uses
  %i.qm = xor i32 %i.qk, %i.mm                    ; 3 uses
  %i.qn = xor i32 %i.ql, %i.ms                    ; 3 uses
  %i.qo = xor i32 %i.qk, %i.qi
  %i.qp = call noundef i32 @llvm.fshl.i32(i32 %i.ql, i32 %i.ql, i32 11) ; 2 uses
  %i.qq = lshr i32 %i.qh, 8
  %i.qr = uitofp reassoc nsz arcp contract afn nneg i32 %i.qq to float
  %i.qs = shl i32 %i.qm, 9
  %i.qt = xor i32 %i.qo, %i.qn                    ; 2 uses
  %i.qu = xor i32 %i.qm, %i.qp                    ; 3 uses
  %i.qv = xor i32 %i.qt, %i.qm                    ; 2 uses
  %i.qw = xor i32 %i.qu, %i.qn                    ; 3 uses
  %i.qx = xor i32 %i.qt, %i.qs
  %i.qy = call noundef i32 @llvm.fshl.i32(i32 %i.qu, i32 %i.qu, i32 11) ; 2 uses
  %i.qz = add i32 %i.qy, %i.qw
  %i.ra = xor i32 %i.qx, %i.qw
  %i.rb = xor i32 %i.qv, %i.qy                    ; 3 uses
  %i.rc = xor i32 %i.ra, %i.qv
  %i.rd = xor i32 %i.rb, %i.qw                    ; 2 uses
  %i.re = call noundef i32 @llvm.fshl.i32(i32 %i.rb, i32 %i.rb, i32 11) ; 2 uses
  %i.rf = lshr i32 %i.qz, 8
  %i.rg = uitofp reassoc nsz arcp contract afn nneg i32 %i.rf to float
  %i.rh = xor i32 %i.rc, %i.re                    ; 3 uses
  %i.ri = xor i32 %i.rh, %i.rd
  %i.rj = call noundef i32 @llvm.fshl.i32(i32 %i.rh, i32 %i.rh, i32 11)
  %i.rk = add i32 %i.rj, %i.ri
  %i.rl = lshr i32 %i.rk, 8
  %i.rm = uitofp reassoc nsz arcp contract afn nneg i32 %i.rl to float
  %i.rn = fmul reassoc nnan nsz arcp contract afn float %i.qr, f0x34C90FDB
  %sincos.i16.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.rn)
  %cos.i17.i.i = extractvalue { float, float } %sincos.i16.i.i, 1
  %i.ro = fmul reassoc nnan nsz arcp contract afn float %i.rg, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ro)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.rp = fmul reassoc nnan nsz arcp contract afn float %i.rm, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.rp)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.rq = add i32 %i.re, %i.rd
  %i.rr = lshr i32 %i.rq, 8
  %i.rs = uitofp reassoc nsz arcp contract afn nneg i32 %i.rr to float
  %11 = fmul reassoc nnan nsz arcp contract afn float %i.rs, f0x33800000
  %12 = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %11, float f0x00800000)
  %i.rt = call fast float @llvm.log.f32(float %12)
  %i.ru = fmul reassoc nnan nsz arcp contract afn float %i.rt, -2.000000e+00
  %i.rv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ru)
  %i.rw = fadd reassoc nsz arcp contract afn <4 x float> %i.mn, splat (float 3.750000e-01)
  %i.rx = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, %i.mp
  %i.ry = add i32 %i.qp, %i.qn
  %i.rz = add i32 %i.mq, %i.mj
  %i.sa = insertelement <2 x i32> poison, i32 %i.rz, i64 0
  %i.sb = insertelement <2 x i32> %i.sa, i32 %i.ry, i64 1
  %i.sc = lshr <2 x i32> %i.sb, splat (i32 8)
  %i.sd = uitofp nneg <2 x i32> %i.sc to <2 x float>
  %13 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.sd, splat (float f0x33800000)
  %14 = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %13, <2 x float> splat (float f0x00800000))
  %i.se = call fast <2 x float> @llvm.log.v2f32(<2 x float> %14)
  %i.sf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.se, splat (float -2.000000e+00)
  %i.sg = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.rv, i64 2
  %i.sh = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.sf)
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> %i.sg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sk = fmul reassoc nsz arcp contract afn <4 x float> %i.mp, %i.sj
  %i.sl = insertelement <4 x float> %i.ki, float %cos.i17.i.i, i64 0
  %i.sm = insertelement <4 x float> %i.sl, float %sin61.i.i.i, i64 1
  %i.sn = insertelement <4 x float> %i.sm, float %cos65.i.i.i, i64 2
  %i.so = fmul reassoc nsz arcp contract afn <4 x float> %i.sk, %i.sn
  %i.sp = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rw, <4 x float> zeroinitializer)
  %i.sq = call reassoc nnan nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.sp)
  %i.sr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.sq, splat (float 2.000000e+00)
  %i.ss = fadd reassoc nsz arcp contract afn <4 x float> %i.sr, %i.so ; 2 uses
  %i.st = fmul reassoc nsz arcp contract afn <4 x float> %i.ss, %i.ss
  %i.su = fsub reassoc nsz arcp contract afn <4 x float> %i.st, %i.rx
  %i.sv = fmul reassoc nsz arcp contract afn <4 x float> %i.su, splat (float 2.500000e-01)
  %i.sw = fadd reassoc nsz arcp contract afn <4 x float> %i.sv, splat (float -3.750000e-01)
  br label %dt_noise_generator_simd.exit.i

dt_noise_generator_simd.exit.i:                   ; preds = %poisson_noise_simd.exit.i.i, %gaussian_noise_simd.exit.i.i, %bb.l
  %i.sx = phi <4 x float> [ %i.nx, %bb.l ], [ %i.sw, %poisson_noise_simd.exit.i.i ], [ %i.qf, %gaussian_noise_simd.exit.i.i ]
  %i.sy = fsub reassoc nsz arcp contract afn <4 x float> %i.sx, %i.mn
  %i.sz = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ta = shufflevector <4 x float> %i.sz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tb = fmul reassoc nsz arcp contract afn <4 x float> %i.sy, %i.ta
  %i.tc = fadd reassoc nsz arcp contract afn <4 x float> %i.tb, %i.mn ; 2 uses
  %i.td = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.tc, zeroinitializer
  %i.te = select <4 x i1> %i.td, <4 x float> %i.tc, <4 x float> zeroinitializer
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.ko
  store <4 x float> %i.te, ptr %i.tf, align 16, !tbaa !154, !alias.scope !165, !nontemporal !158
  %exitcond.not.i215 = icmp eq i64 %i.ks, %i.jz
  br i1 %exitcond.not.i215, label %._crit_edge.i, label %bb.k

.loopexit386:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.j
  call void @llvm.x86.sse.sfence()
  %.val209 = load float, ptr %i.aw, align 4, !tbaa !47
  %i.tg = call fastcc i32 @reconstruct_highlights(ptr noundef %i.jq, ptr noundef %i.at, ptr noundef %i.jh, i32 noundef 0, ptr noundef %i.af, ptr noundef %1, float %.val209, ptr noundef %5)
  call void @free(ptr noundef nonnull %i.jq) #20
  %.fr = freeze i32 %i.tg
  %i.th = icmp ne i32 %.fr, 0                     ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 3 uses
  %i.tj = load i32, ptr %i.ti, align 16, !tbaa !89
  %i.tk = icmp sgt i32 %i.tj, 0
  %or.cond9 = and i1 %i.tk, %i.th
  br i1 %or.cond9, label %bb.m, label %.thread382

bb.m:                                             ; preds = %.loopexit386
  %i.tl = load i32, ptr %i.al, align 4, !tbaa !97
  %i.tm = sext i32 %i.tl to i64
  %i.tn = load i32, ptr %i.ao, align 4, !tbaa !98
  %i.to = sext i32 %i.tn to i64
  %i.tp = shl nsw i64 %i.tm, 2
  %i.tq = mul i64 %i.tp, %i.to
  %i.tr = call ptr @dt_alloc_aligned(i64 noundef %i.tq) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.tr, i64 64) ]
  %i.ts = load i32, ptr %i.al, align 4, !tbaa !97
  %i.tt = sext i32 %i.ts to i64
  %i.tu = load i32, ptr %i.ao, align 4, !tbaa !98
  %i.tv = sext i32 %i.tu to i64
  %i.tw = shl nsw i64 %i.tt, 4
  %i.tx = mul i64 %i.tw, %i.tv
  %i.ty = call ptr @dt_alloc_aligned(i64 noundef %i.tx) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ty, i64 64) ]
  %i.tz = icmp ne ptr %i.tr, null
  %i.ua = icmp ne ptr %i.ty, null
  %or.cond11 = select i1 %i.tz, i1 %i.ua, i1 false
  br i1 %or.cond11, label %.preheader, label %.critedge506

.preheader:                                       ; preds = %bb.m
  %i.ub = load i32, ptr %i.ti, align 16, !tbaa !89
  %i.uc = icmp sgt i32 %i.ub, 0
  br i1 %i.uc, label %.lr.ph.preheader, label %.critedge506

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre397 = load i32, ptr %i.al, align 4, !tbaa !97
  %.pre398 = load i32, ptr %i.ao, align 4, !tbaa !98
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %restore_ratios.exit
  %i.ud = phi i32 [ %i.wu, %restore_ratios.exit ], [ %.pre398, %.lr.ph.preheader ]
  %i.ue = phi i32 [ %i.ws, %restore_ratios.exit ], [ %.pre397, %.lr.ph.preheader ]
  %.0189394 = phi i32 [ %i.xz, %restore_ratios.exit ], [ 0, %.lr.ph.preheader ]
  %.0191393 = phi i1 [ %i.wr, %restore_ratios.exit ], [ true, %.lr.ph.preheader ]
  %i.uf = sext i32 %i.ue to i64
  %i.ug = sext i32 %i.ud to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.uh = shl nsw i64 %i.uf, 2
  %i.ui = mul i64 %i.uh, %i.ug                    ; 2 uses
  %.not.i216 = icmp eq i64 %i.ui, 0
  br i1 %.not.i216, label %compute_ratios.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %.lr.ph
  %i.uj = add i64 %i.ui, -4                       ; 3 uses
  %i.uk = lshr exact i64 %i.uj, 2
  %i.ul = add nuw nsw i64 %i.uk, 1                ; 2 uses
  %i.um = icmp eq i64 %i.uj, 0
  br i1 %i.um, label %.lr.ph.i217.epil.preheader, label %.lr.ph.i217.preheader.new

.lr.ph.i217.preheader.new:                        ; preds = %.lr.ph.i217.preheader
  %unroll_iter530 = and i64 %i.ul, 9223372036854775806
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217, %.lr.ph.i217.preheader.new
  %.0232.i = phi i64 [ 0, %.lr.ph.i217.preheader.new ], [ %i.vw, %.lr.ph.i217 ] ; 5 uses
  %niter531 = phi i64 [ 0, %.lr.ph.i217.preheader.new ], [ %niter531.next.1, %.lr.ph.i217 ]
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.0232.i ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.0232.i
  %i.uq = load <4 x float>, ptr %i.un, align 32, !tbaa !16, !alias.scope !168, !noalias !175 ; 5 uses
  %i.ur = load float, ptr %i.uo, align 4, !tbaa !16, !alias.scope !168, !noalias !175 ; 2 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.uq, %i.uq
  %i.us = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ut = fmul reassoc nsz arcp contract afn float %i.ur, %i.ur
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.us
  %foldExtExtBinop508 = fmul reassoc nsz arcp contract afn <4 x float> %i.uq, %i.uq
  %i.uv = extractelement <4 x float> %foldExtExtBinop508, i64 2
  %i.uw = fadd reassoc nsz arcp contract afn float %i.uu, %i.uv
  %i.ux = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.uw) ; 2 uses
  %i.uy = fcmp reassoc nsz arcp contract afn ogt float %i.ux, f0x37800000
  %i.uz = select reassoc nsz arcp contract afn i1 %i.uy, float %i.ux, float f0x37800000 ; 2 uses
  store float %i.uz, ptr %i.up, align 8, !tbaa !16, !alias.scope !171, !noalias !176
  %i.va = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = fdiv reassoc nsz arcp contract afn <4 x float> %i.uq, %i.vb
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %.0232.i
  store <4 x float> %i.vc, ptr %i.vd, align 32, !tbaa !154, !alias.scope !177, !noalias !180, !nontemporal !158
  %i.ve = or disjoint i64 %.0232.i, 4             ; 3 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ve ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ve
  %i.vi = load <4 x float>, ptr %i.vf, align 16, !tbaa !16, !alias.scope !168, !noalias !175 ; 5 uses
  %i.vj = load float, ptr %i.vg, align 4, !tbaa !16, !alias.scope !168, !noalias !175 ; 2 uses
  %foldExtExtBinop.1 = fmul reassoc nsz arcp contract afn <4 x float> %i.vi, %i.vi
  %i.vk = extractelement <4 x float> %foldExtExtBinop.1, i64 0
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vj, %i.vj
  %i.vm = fadd reassoc nsz arcp contract afn float %i.vl, %i.vk
  %foldExtExtBinop508.1 = fmul reassoc nsz arcp contract afn <4 x float> %i.vi, %i.vi
  %i.vn = extractelement <4 x float> %foldExtExtBinop508.1, i64 2
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vm, %i.vn
  %i.vp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vo) ; 2 uses
  %i.vq = fcmp reassoc nsz arcp contract afn ogt float %i.vp, f0x37800000
  %i.vr = select reassoc nsz arcp contract afn i1 %i.vq, float %i.vp, float f0x37800000 ; 2 uses
  store float %i.vr, ptr %i.vh, align 4, !tbaa !16, !alias.scope !171, !noalias !176
  %i.vs = insertelement <4 x float> poison, float %i.vr, i64 0
  %i.vt = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vu = fdiv reassoc nsz arcp contract afn <4 x float> %i.vi, %i.vt
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.ve
  store <4 x float> %i.vu, ptr %i.vv, align 16, !tbaa !154, !alias.scope !177, !noalias !180, !nontemporal !158
  %i.vw = add nuw i64 %.0232.i, 8                 ; 2 uses
  %niter531.next.1 = add i64 %niter531, 2         ; 2 uses
  %niter531.ncmp.1.not = icmp eq i64 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1.not, label %compute_ratios.exit.loopexit.unr-lcssa, label %.lr.ph.i217

compute_ratios.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i217
  %i.vx = and i64 %i.uj, 4
  %lcmp.mod528.not.not = icmp eq i64 %i.vx, 0
  br i1 %lcmp.mod528.not.not, label %.lr.ph.i217.epil.preheader, label %compute_ratios.exit

.lr.ph.i217.epil.preheader:                       ; preds = %compute_ratios.exit.loopexit.unr-lcssa, %.lr.ph.i217.preheader
  %.0232.i.epil.init = phi i64 [ 0, %.lr.ph.i217.preheader ], [ %i.vw, %compute_ratios.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod529 = trunc i64 %i.ul to i1
  call void @llvm.assume(i1 %lcmp.mod529)
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.0232.i.epil.init ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.0232.i.epil.init
  %i.wb = load <4 x float>, ptr %i.vy, align 16, !tbaa !16, !alias.scope !168, !noalias !175 ; 5 uses
  %i.wc = load float, ptr %i.vz, align 4, !tbaa !16, !alias.scope !168, !noalias !175 ; 2 uses
  %foldExtExtBinop.epil = fmul reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wb
  %i.wd = extractelement <4 x float> %foldExtExtBinop.epil, i64 0
  %i.we = fmul reassoc nsz arcp contract afn float %i.wc, %i.wc
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, %i.wd
  %foldExtExtBinop508.epil = fmul reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wb
  %i.wg = extractelement <4 x float> %foldExtExtBinop508.epil, i64 2
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wf, %i.wg
  %i.wi = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wh) ; 2 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %i.wi, f0x37800000
  %i.wk = select reassoc nsz arcp contract afn i1 %i.wj, float %i.wi, float f0x37800000 ; 2 uses
  store float %i.wk, ptr %i.wa, align 4, !tbaa !16, !alias.scope !171, !noalias !176
  %i.wl = insertelement <4 x float> poison, float %i.wk, i64 0
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wn = fdiv reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wm
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %.0232.i.epil.init
  store <4 x float> %i.wn, ptr %i.wo, align 16, !tbaa !154, !alias.scope !177, !noalias !180, !nontemporal !158
  br label %compute_ratios.exit

compute_ratios.exit:                              ; preds = %.lr.ph.i217.epil.preheader, %compute_ratios.exit.loopexit.unr-lcssa, %.lr.ph
  call void @llvm.x86.sse.sfence(), !noalias !181
  br i1 %.0191393, label %bb.n, label %bb.o

bb.n:                                             ; preds = %compute_ratios.exit
  %.val208 = load float, ptr %i.aw, align 4, !tbaa !47
  %i.wp = call fastcc i32 @reconstruct_highlights(ptr noundef %i.ty, ptr noundef %i.at, ptr noundef %i.jh, i32 noundef 1, ptr noundef nonnull %i.af, ptr noundef %1, float %.val208, ptr noundef nonnull %5)
  %.fr505 = freeze i32 %i.wp
  %i.wq = icmp ne i32 %.fr505, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %compute_ratios.exit
end_hunk_0
