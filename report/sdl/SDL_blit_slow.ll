Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_slow?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0_@ReadFloatPixel:bb.a
  %i.jj = load i8, ptr %i.ji, align 1
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = and i32 %i.jo, %i.is
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = lshr i32 %i.jp, %i.js
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.jy = load i8, ptr %i.jx, align 2
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = and i32 %i.kd, %i.is
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.kg = load i8, ptr %i.kf, align 2
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = lshr i32 %i.ke, %i.kh
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = zext i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = and i32 %i.ks, %i.is
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = zext nneg i8 %i.kv to i32
  %i.kx = lshr i32 %i.kt, %i.kw
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.lc = load i8, ptr %i.lb, align 4
  %i.ld = lshr i8 %i.lc, 3
  %i.le = zext nneg i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = lshr i8 %i.li, 3
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.lo = load i8, ptr %i.ln, align 2
  %i.lp = lshr i8 %i.lo, 3
  %i.lq = zext nneg i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.lt = load i32, ptr %0, align 4               ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lv = load i8, ptr %i.lu, align 4
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.lw
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = and i32 %i.ma, %i.lt
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.md = load i8, ptr %i.mc, align 4
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = lshr i32 %i.mb, %i.me
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = zext i8 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.mp = load i32, ptr %i.mo, align 4
  %i.mq = and i32 %i.mp, %i.lt
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = zext nneg i8 %i.ms to i32
  %i.mu = lshr i32 %i.mq, %i.mt
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.mz = load i8, ptr %i.my, align 2
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ne = load i32, ptr %i.nd, align 4
  %i.nf = and i32 %i.ne, %i.lt
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.nh = load i8, ptr %i.ng, align 2
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = lshr i32 %i.nf, %i.ni
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.np
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.nt = load i32, ptr %i.ns, align 4
  %i.nu = and i32 %i.nt, %i.lt
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = zext nneg i8 %i.nw to i32
  %i.ny = lshr i32 %i.nu, %i.nx
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.1208.shrunk = phi i8 [ %i.mi, %bb.m ], [ %i.gx, %bb.j ], [ %i.jh, %bb.k ], [ %i.lg, %bb.l ], [ 0, %bb.i ]
  %.1206.shrunk = phi i8 [ %i.mx, %bb.m ], [ %i.hm, %bb.j ], [ %i.jw, %bb.k ], [ %i.lm, %bb.l ], [ 0, %bb.i ]
  %.1204.shrunk = phi i8 [ %i.nm, %bb.m ], [ %i.ib, %bb.j ], [ %i.kl, %bb.k ], [ %i.ls, %bb.l ], [ 0, %bb.i ]
  %.0202.shrunk = phi i8 [ %i.ob, %bb.m ], [ %i.iq, %bb.j ], [ %i.la, %bb.k ], [ -1, %bb.l ], [ 0, %bb.i ]
  %i.oc = insertelement <2 x i8> poison, i8 %.1204.shrunk, i64 0
  %i.od = insertelement <2 x i8> %i.oc, i8 %.1208.shrunk, i64 1
  %i.oe = uitofp <2 x i8> %i.od to <2 x float>
  %i.of = insertelement <2 x i8> poison, i8 %.1206.shrunk, i64 0
  %i.og = insertelement <2 x i8> %i.of, i8 %.0202.shrunk, i64 1
  %i.oh = uitofp <2 x i8> %i.og to <2 x float>
  %i.oi = fdiv <2 x float> %i.oe, splat (float 2.550000e+02)
  %i.oj = fdiv <2 x float> %i.oh, splat (float 2.550000e+02)
  br label %bb.ah

bb.o:                                             ; preds = %bb.a
  %i.ok = load i32, ptr %0, align 4               ; 14 uses
  %i.ol = load i32, ptr %2, align 4
  %i.om = add i32 %i.ol, -370614276               ; 2 uses
  %i.on = tail call i32 @llvm.fshl.i32(i32 %i.om, i32 %i.om, i32 11)
  switch i32 %i.on, label %bb.ah [
    i32 0, label %bb.p
    i32 2, label %bb.q
    i32 1, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.oo = lshr i32 %i.ok, 20
  %i.op = lshr i32 %i.ok, 10
  %i.oq = and i32 %i.op, 1023
  %i.or = uitofp nneg i32 %i.oq to float
  %i.os = fdiv float %i.or, 1.023000e+03
  %i.ot = and i32 %i.oo, 1023
  %i.ou = uitofp nneg i32 %i.ot to float
  %i.ov = and i32 %i.ok, 1023
  %i.ow = uitofp nneg i32 %i.ov to float
  %i.ox = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.ou, i64 1
  %i.oz = fdiv <2 x float> %i.oy, splat (float 1.023000e+03)
  %i.pa = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.os, i64 0
  br label %bb.ah

bb.q:                                             ; preds = %bb.o
  %i.pb = lshr i32 %i.ok, 10
  %i.pc = and i32 %i.pb, 1023
  %i.pd = uitofp nneg i32 %i.pc to float
  %i.pe = fdiv float %i.pd, 1.023000e+03
  %i.pf = lshr i32 %i.ok, 20
  %i.pg = and i32 %i.ok, 1023
  %i.ph = uitofp nneg i32 %i.pg to float
  %i.pi = and i32 %i.pf, 1023
  %i.pj = uitofp nneg i32 %i.pi to float
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = insertelement <2 x float> %i.pk, float %i.ph, i64 1
  %i.pm = fdiv <2 x float> %i.pl, splat (float 1.023000e+03)
  %i.pn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pe, i64 0
  br label %bb.ah

bb.r:                                             ; preds = %bb.o
  %i.po = lshr i32 %i.ok, 20
  %i.pp = lshr i32 %i.ok, 10
  %i.pq = and i32 %i.po, 1023
  %i.pr = uitofp nneg i32 %i.pq to float
  %i.ps = and i32 %i.ok, 1023
  %i.pt = uitofp nneg i32 %i.ps to float
  %i.pu = insertelement <2 x float> poison, float %i.pt, i64 0
  %i.pv = insertelement <2 x float> %i.pu, float %i.pr, i64 1
  %i.pw = fdiv <2 x float> %i.pv, splat (float 1.023000e+03)
  %10 = and i32 %i.pp, 1023
  %11 = uitofp nneg i32 %10 to float
  %12 = lshr i32 %i.ok, 30
  %i.px = uitofp nneg i32 %12 to float
  %i.py = insertelement <2 x float> poison, float %11, i64 0
  %i.pz = insertelement <2 x float> %i.py, float %i.px, i64 1
  %i.qa = fdiv <2 x float> %i.pz, <float 1.023000e+03, float 3.000000e+00>
  br label %bb.ah

bb.s:                                             ; preds = %bb.o
  %i.qb = lshr i32 %i.ok, 10
  %i.qc = lshr i32 %i.ok, 20
  %i.qd = and i32 %i.ok, 1023
  %i.qe = uitofp nneg i32 %i.qd to float
  %i.qf = and i32 %i.qc, 1023
  %i.qg = uitofp nneg i32 %i.qf to float
  %i.qh = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qi = insertelement <2 x float> %i.qh, float %i.qe, i64 1
  %i.qj = fdiv <2 x float> %i.qi, splat (float 1.023000e+03)
  %13 = and i32 %i.qb, 1023
  %14 = uitofp nneg i32 %13 to float
  %15 = lshr i32 %i.ok, 30
  %i.qk = uitofp nneg i32 %15 to float
  %i.ql = insertelement <2 x float> poison, float %14, i64 0
  %i.qm = insertelement <2 x float> %i.ql, float %i.qk, i64 1
  %i.qn = fdiv <2 x float> %i.qm, <float 1.023000e+03, float 3.000000e+00>
  br label %bb.ah

bb.t:                                             ; preds = %bb.a
  %i.qo = load i32, ptr %2, align 4               ; 2 uses
  %i.qp = lshr i32 %i.qo, 24
  %i.qq = and i32 %i.qp, 15
  switch i32 %i.qq, label %bb.aa [
    i32 8, label %bb.u
    i32 10, label %bb.w
    i32 11, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.qr = load i16, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qt = load i16, ptr %i.qs, align 2
  %i.qu = uitofp i16 %i.qt to float
  %i.qv = fdiv float %i.qu, 6.553500e+04          ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qx = load i16, ptr %i.qw, align 2
  %i.qy = insertelement <2 x i16> poison, i16 %i.qr, i64 0
  %i.qz = insertelement <2 x i16> %i.qy, i16 %i.qx, i64 1
  %i.ra = uitofp <2 x i16> %i.qz to <2 x float>
  %i.rb = fdiv <2 x float> %i.ra, splat (float 6.553500e+04) ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.rd = load i8, ptr %i.rc, align 1
  %i.re = icmp eq i8 %i.rd, 8
  br i1 %i.re, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rg = load i16, ptr %i.rf, align 2
  %i.rh = uitofp i16 %i.rg to float
  %i.ri = fdiv float %i.rh, 6.553500e+04
  br label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.rj = load i16, ptr %0, align 2               ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.rl = load i16, ptr %i.rk, align 2            ; 2 uses
  %i.rm = zext i16 %i.rl to i32
  %i.rn = shl nuw nsw i32 %i.rm, 13
  %i.ro = and i32 %i.rn, 268427264
  %i.rp = bitcast i32 %i.ro to float
  %i.rq = fmul nnan float %i.rp, f0x77800000      ; 2 uses
  %i.rr = bitcast float %i.rq to i32              ; 2 uses
  %i.rs = fcmp ult float %i.rq, 6.553600e+04
  %i.rt = or i32 %i.rr, 2139095040
  %spec.select.i209 = select i1 %i.rs, i32 %i.rr, i32 %i.rt
  %.signext.i210 = sext i16 %i.rl to i32
  %i.ru = and i32 %.signext.i210, -2147483648
  %i.rv = or i32 %spec.select.i209, %i.ru
  %i.rw = bitcast i32 %i.rv to float              ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ry = load i16, ptr %i.rx, align 2            ; 2 uses
  %.signext.i = sext i16 %i.rj to i32
  %i.rz = insertelement <2 x i16> poison, i16 %i.rj, i64 0
  %i.sa = insertelement <2 x i16> %i.rz, i16 %i.ry, i64 1
  %i.sb = zext <2 x i16> %i.sa to <2 x i32>
  %i.sc = shl nuw nsw <2 x i32> %i.sb, splat (i32 13)
  %i.sd = and <2 x i32> %i.sc, splat (i32 268427264)
  %i.se = bitcast <2 x i32> %i.sd to <2 x float>
  %i.sf = fmul nnan <2 x float> %i.se, splat (float f0x77800000) ; 2 uses
  %i.sg = bitcast <2 x float> %i.sf to <2 x i32>  ; 2 uses
  %i.sh = fcmp ult <2 x float> %i.sf, splat (float 6.553600e+04)
  %i.si = or <2 x i32> %i.sg, splat (i32 2139095040)
  %i.sj = select <2 x i1> %i.sh, <2 x i32> %i.sg, <2 x i32> %i.si
  %.signext.i212 = sext i16 %i.ry to i32
  %i.sk = insertelement <2 x i32> poison, i32 %.signext.i, i64 0
  %i.sl = insertelement <2 x i32> %i.sk, i32 %.signext.i212, i64 1
  %i.sm = and <2 x i32> %i.sl, splat (i32 -2147483648)
  %i.sn = or <2 x i32> %i.sj, %i.sm
  %i.so = bitcast <2 x i32> %i.sn to <2 x float>  ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.sq = load i8, ptr %i.sp, align 1
  %i.sr = icmp eq i8 %i.sq, 8
  br i1 %i.sr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.st = load i16, ptr %i.ss, align 2            ; 2 uses
  %i.su = zext i16 %i.st to i32
  %i.sv = shl nuw nsw i32 %i.su, 13
  %i.sw = and i32 %i.sv, 268427264
  %i.sx = bitcast i32 %i.sw to float
  %i.sy = fmul nnan float %i.sx, f0x77800000      ; 2 uses
  %i.sz = bitcast float %i.sy to i32              ; 2 uses
  %i.ta = fcmp ult float %i.sy, 6.553600e+04
  %i.tb = or i32 %i.sz, 2139095040
  %spec.select.i213 = select i1 %i.ta, i32 %i.sz, i32 %i.tb
  %.signext.i214 = sext i16 %i.st to i32
  %i.tc = and i32 %.signext.i214, -2147483648
  %i.td = or i32 %spec.select.i213, %i.tc
  %i.te = bitcast i32 %i.td to float
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.tg = load <2 x float>, ptr %0, align 4
  %i.th = load float, ptr %i.tf, align 4          ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tj = load float, ptr %i.ti, align 4
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = icmp eq i8 %i.tl, 16
  %i.tn = insertelement <2 x float> %i.tg, float %i.tj, i64 1 ; 2 uses
  br i1 %i.tm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.tp = load float, ptr %i.to, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.y, %bb.w, %bb.u, %bb.z, %bb.x, %bb.v
  %.sroa.32.0 = phi float [ 1.000000e+00, %bb.y ], [ %i.ri, %bb.v ], [ 1.000000e+00, %bb.w ], [ %i.te, %bb.x ], [ 1.000000e+00, %bb.u ], [ %i.tp, %bb.z ], [ 0.000000e+00, %bb.t ] ; 4 uses
  %.sroa.12.0 = phi float [ %i.th, %bb.y ], [ %i.qv, %bb.v ], [ %i.rw, %bb.w ], [ %i.rw, %bb.x ], [ %i.qv, %bb.u ], [ %i.th, %bb.z ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %i.tq = phi <2 x float> [ %i.tn, %bb.y ], [ %i.rb, %bb.v ], [ %i.so, %bb.w ], [ %i.so, %bb.x ], [ %i.rb, %bb.u ], [ %i.tn, %bb.z ], [ zeroinitializer, %bb.t ] ; 3 uses
  %i.tr = lshr i32 %i.qo, 20
  %i.ts = and i32 %i.tr, 15
  %i.tt = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.tu = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.12.0, i64 0 ; 4 uses
  switch i32 %i.ts, label %bb.ag [
    i32 1, label %bb.ah
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.tv = insertelement <2 x float> %i.tu, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %i.tw = insertelement <2 x float> poison, float %.sroa.32.0, i64 0
  %i.tx = insertelement <2 x float> %i.tw, float %.sroa.12.0, i64 1
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  br label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.ty = insertelement <2 x float> %i.tu, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.tz = insertelement <2 x float> poison, float %.sroa.12.0, i64 0
  %i.ua = insertelement <2 x float> %i.tz, float %.sroa.32.0, i64 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  br label %bb.ah

default.unreachable215:                           ; preds = %bb.a
  unreachable

bb.ah:                                            ; preds = %bb.aa, %bb.o, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.p, %bb.q, %bb.r, %bb.s, %bb.n, %bb.h, %bb.b
  %i.ub = phi <2 x float> [ %i.ua, %bb.af ], [ %i.n, %bb.b ], [ %i.gd, %bb.h ], [ %i.oi, %bb.n ], [ %i.tq, %bb.ae ], [ %i.oz, %bb.p ], [ %i.pm, %bb.q ], [ %i.pw, %bb.r ], [ %i.qj, %bb.s ], [ zeroinitializer, %bb.ag ], [ zeroinitializer, %bb.o ], [ %i.tt, %bb.ab ], [ %i.tx, %bb.ac ], [ %i.tq, %bb.ad ], [ %i.tt, %bb.aa ] ; 6 uses
  %i.uc = phi <2 x float> [ %i.tt, %bb.af ], [ %i.t, %bb.b ], [ %i.ge, %bb.h ], [ %i.oj, %bb.n ], [ %i.ty, %bb.ae ], [ %i.pa, %bb.p ], [ %i.pn, %bb.q ], [ %i.qa, %bb.r ], [ %i.qn, %bb.s ], [ zeroinitializer, %bb.ag ], [ zeroinitializer, %bb.o ], [ %i.tv, %bb.ab ], [ %i.tt, %bb.ac ], [ %i.tu, %bb.ad ], [ %i.tu, %bb.aa ] ; 2 uses
  %i.ud = lshr i32 %4, 5
  %i.ue = and i32 %i.ud, 31
  %i.uf = extractelement <2 x float> %i.uc, i64 0 ; 4 uses
  switch i32 %i.ue, label %bb.al [
    i32 13, label %bb.ai
    i32 16, label %bb.aj
    i32 8, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ug = extractelement <2 x float> %i.ub, i64 1
  %i.uh = tail call float @SDL_sRGBtoLinear(float noundef %i.ug) #4
  %i.ui = tail call float @SDL_sRGBtoLinear(float noundef %i.uf) #4
  %i.uj = extractelement <2 x float> %i.ub, i64 0
  %i.uk = tail call float @SDL_sRGBtoLinear(float noundef %i.uj) #4
  %i.ul = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.um = insertelement <2 x float> %i.ul, float %i.uh, i64 1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.un = extractelement <2 x float> %i.ub, i64 1
  %i.uo = tail call float @SDL_PQtoNits(float noundef %i.un) #4
  %i.up = tail call float @SDL_PQtoNits(float noundef %i.uf) #4
  %i.uq = fdiv float %i.up, %5
  %i.ur = extractelement <2 x float> %i.ub, i64 0
  %i.us = tail call float @SDL_PQtoNits(float noundef %i.ur) #4
  %i.ut = insertelement <2 x float> poison, float %i.us, i64 0
  %i.uu = insertelement <2 x float> %i.ut, float %i.uo, i64 1
  %i.uv = insertelement <2 x float> poison, float %5, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = fdiv <2 x float> %i.uu, %i.uw
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.uy = fdiv float %i.uf, %5
  %i.uz = insertelement <2 x float> poison, float %5, i64 0
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vb = fdiv <2 x float> %i.ub, %i.va
end_hunk_0
