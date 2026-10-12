Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_quad_mesh?download=true
inline.NumInlined: 379
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree4sse211QuadMeshISA20createPrimRefArrayMBEPNS_7PrimRefERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  br i1 %i.cy, label %bb.j, label %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.cz = mul i64 %i.bx, %i.bs
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cz
  %i.db = load <4 x float>, ptr %i.da, align 1, !noalias !367 ; 2 uses
  %i.dc = fcmp ugt <4 x float> %i.db, splat (float -1.844000e+18)
  %i.dd = fcmp olt <4 x float> %i.db, splat (float 1.844000e+18)
  %i.de = and <4 x i1> %i.dc, %i.dd
  %i.df = bitcast <4 x i1> %i.de to i4
  %i.dg = and i4 %i.df, 7
  %i.dh = icmp eq i4 %i.dg, 7
  br i1 %i.dh, label %bb.g, label %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit: ; preds = %bb.g, %.preheader
  %i.di = fsub <2 x float> %i.k, %i.ag
  %i.dj = fsub float %.sroa.098.4.vec.extract106, %.sroa.098.0.vec.extract
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fdiv <2 x float> %i.di, %i.dl           ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0 ; 3 uses
  %i.do = fmul float %i.ae, %i.dn                 ; 3 uses
  %i.dp = extractelement <2 x float> %i.dm, i64 1 ; 2 uses
  %i.dq = fmul float %i.ae, %i.dp                 ; 3 uses
  %i.dr = tail call noundef float @llvm.floor.f32(float %i.do) ; 3 uses
  %i.ds = tail call noundef float @llvm.ceil.f32(float %i.dq) ; 3 uses
  %i.dt = fcmp ogt float %i.dr, 0.000000e+00
  %i.du = select i1 %i.dt, float %i.dr, float 0.000000e+00 ; 3 uses
  %i.dv = fcmp olt float %i.ds, %i.ae
  %i.dw = select i1 %i.dv, float %i.ds, float %i.ae ; 3 uses
  %i.dx = fptosi float %i.du to i32
  %i.dy = fptosi float %i.dw to i32
  %i.dz = fptosi float %i.dr to i32
  %i.ea = tail call noundef i32 @llvm.smax.i32(i32 %i.dz, i32 -1) ; 2 uses
  %i.eb = fptosi float %i.ds to i32
  %i.ec = fptosi float %i.ae to i32
  %i.ed = add nsw i32 %i.ec, 1
  %i.ee = tail call noundef i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ed) ; 3 uses
  %i.ef = zext nneg i32 %i.dx to i64
  %i.eg = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %i.ef ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !368 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !368 ; 4 uses
  %i.ek = mul i64 %i.ej, %i.bg
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek
  %i.em = load <4 x float>, ptr %i.el, align 1, !noalias !369 ; 2 uses
  %i.en = mul i64 %i.ej, %i.bm
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.en
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !noalias !370 ; 2 uses
  %i.eq = mul i64 %i.ej, %i.bp
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.es = load <4 x float>, ptr %i.er, align 1, !noalias !371 ; 2 uses
  %i.et = mul i64 %i.ej, %i.bs
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.et
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !noalias !372 ; 2 uses
  %i.ew = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.em, <4 x float> %i.ep)
  %i.ex = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.es, <4 x float> %i.ev)
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ew, <4 x float> %i.ex) ; 3 uses
  %i.ez = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.em, <4 x float> %i.ep)
  %i.fa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.es, <4 x float> %i.ev)
  %i.fb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ez, <4 x float> %i.fa) ; 3 uses
  %i.fc = sext i32 %i.dy to i64
  %i.fd = getelementptr [56 x i8], ptr %i.bh, i64 %i.fc ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !373 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !noalias !373 ; 4 uses
  %i.fh = mul i64 %i.fg, %i.bg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  %i.fj = load <4 x float>, ptr %i.fi, align 1, !noalias !374 ; 2 uses
  %i.fk = mul i64 %i.fg, %i.bm
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !375 ; 2 uses
  %i.fn = mul i64 %i.fg, %i.bp
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fn
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !noalias !376 ; 2 uses
  %i.fq = mul i64 %i.fg, %i.bs
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !377 ; 2 uses
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fj, <4 x float> %i.fm)
  %i.fu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fp, <4 x float> %i.fs)
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ft, <4 x float> %i.fu) ; 3 uses
  %i.fw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fj, <4 x float> %i.fm)
  %i.fx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fp, <4 x float> %i.fs)
  %i.fy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fw, <4 x float> %i.fx) ; 3 uses
  %i.fz = sub nsw i32 %i.ee, %i.ea
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit
  %i.gb = insertelement <2 x float> poison, float %i.do, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.dw, i64 1
  %i.gd = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.dq, i64 1
  %i.gf = fsub <2 x float> %i.gc, %i.ge           ; 2 uses
  %i.gg = fcmp ogt <2 x float> %i.gf, zeroinitializer
  %i.gh = select <2 x i1> %i.gg, <2 x float> %i.gf, <2 x float> zeroinitializer ; 3 uses
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gj = fmul <4 x float> %i.gi, %i.fv
  %i.gk = fsub <2 x float> splat (float 1.000000e+00), %i.gh ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul <4 x float> %i.gl, %i.ey
  %i.gn = fadd <4 x float> %i.gm, %i.gj
  %i.go = fmul <4 x float> %i.gi, %i.fy
  %i.gp = fmul <4 x float> %i.gl, %i.fb
  %i.gq = fadd <4 x float> %i.gp, %i.go
  %i.gr = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gs = fmul <4 x float> %i.gr, %i.ey
  %i.gt = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gu = fmul <4 x float> %i.gt, %i.fv
  %i.gv = fadd <4 x float> %i.gs, %i.gu
  %i.gw = fmul <4 x float> %i.gr, %i.fb
  %i.gx = fmul <4 x float> %i.gt, %i.fy
  %i.gy = fadd <4 x float> %i.gw, %i.gx
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !378 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !378 ; 4 uses
  %i.hd = mul i64 %i.hc, %i.bg
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hd
  %i.hf = load <4 x float>, ptr %i.he, align 1, !noalias !379 ; 2 uses
  %i.hg = mul i64 %i.hc, %i.bm
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hg
  %i.hi = load <4 x float>, ptr %i.hh, align 1, !noalias !380 ; 2 uses
  %i.hj = mul i64 %i.hc, %i.bp
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hj
  %i.hl = load <4 x float>, ptr %i.hk, align 1, !noalias !381 ; 2 uses
  %i.hm = mul i64 %i.hc, %i.bs
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hm
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !noalias !382 ; 2 uses
  %i.hp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hf, <4 x float> %i.hi)
  %i.hq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hl, <4 x float> %i.ho)
  %i.hr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hp, <4 x float> %i.hq)
  %i.hs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hf, <4 x float> %i.hi)
  %i.ht = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hl, <4 x float> %i.ho)
  %i.hu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hs, <4 x float> %i.ht)
  %i.hv = getelementptr i8, ptr %i.fd, i64 -56
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !383 ; 4 uses
  %i.hx = getelementptr i8, ptr %i.fd, i64 -40
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !383 ; 4 uses
  %i.hz = mul i64 %i.hy, %i.bg
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hz
  %i.ib = load <4 x float>, ptr %i.ia, align 1, !noalias !384 ; 2 uses
  %i.ic = mul i64 %i.hy, %i.bm
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ic
  %i.ie = load <4 x float>, ptr %i.id, align 1, !noalias !385 ; 2 uses
  %i.if = mul i64 %i.hy, %i.bp
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.if
  %i.ih = load <4 x float>, ptr %i.ig, align 1, !noalias !386 ; 2 uses
  %i.ii = mul i64 %i.hy, %i.bs
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !387 ; 2 uses
  %i.il = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ib, <4 x float> %i.ie)
  %i.im = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ih, <4 x float> %i.ik)
  %i.in = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.il, <4 x float> %i.im)
  %i.io = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ib, <4 x float> %i.ie)
  %i.ip = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ih, <4 x float> %i.ik)
  %i.iq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.io, <4 x float> %i.ip)
  %i.ir = insertelement <2 x float> poison, float %i.do, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.dw, i64 1
  %i.it = insertelement <2 x float> poison, float %i.du, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.dq, i64 1
  %i.iv = fsub <2 x float> %i.is, %i.iu           ; 2 uses
  %i.iw = fcmp ogt <2 x float> %i.iv, zeroinitializer
  %i.ix = select <2 x i1> %i.iw, <2 x float> %i.iv, <2 x float> zeroinitializer ; 3 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iz = fmul <4 x float> %i.iy, %i.hr
  %i.ja = fsub <2 x float> splat (float 1.000000e+00), %i.ix ; 2 uses
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jc = fmul <4 x float> %i.jb, %i.ey
  %i.jd = fadd <4 x float> %i.jc, %i.iz           ; 2 uses
  %i.je = fmul <4 x float> %i.iy, %i.hu
  %i.jf = fmul <4 x float> %i.jb, %i.fb
  %i.jg = fadd <4 x float> %i.jf, %i.je           ; 2 uses
  %i.jh = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ji = fmul <4 x float> %i.jh, %i.in
  %i.jj = shufflevector <2 x float> %i.ja, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jk = fmul <4 x float> %i.jj, %i.fv
  %i.jl = fadd <4 x float> %i.jk, %i.ji           ; 2 uses
  %i.jm = fmul <4 x float> %i.jh, %i.iq
  %i.jn = fmul <4 x float> %i.jj, %i.fy
  %i.jo = fadd <4 x float> %i.jn, %i.jm           ; 2 uses
  %.0.i11231 = add nsw i32 %i.ea, 1               ; 2 uses
  %i.jp = icmp slt i32 %.0.i11231, %i.ee
  br i1 %i.jp, label %.lr.ph237, label %.loopexit

.lr.ph237:                                        ; preds = %bb.l
  %i.jq = fsub float %i.dp, %i.dn
  %i.jr = zext nneg i32 %.0.i11231 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph237, %bb.m
  %indvars.iv = phi i64 [ %i.jr, %.lr.ph237 ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.sroa.7128.0235 = phi <4 x float> [ %i.jg, %.lr.ph237 ], [ %i.lj, %bb.m ] ; 2 uses
  %.sroa.0125.0234 = phi <4 x float> [ %i.jd, %.lr.ph237 ], [ %i.lh, %bb.m ] ; 2 uses
  %.sroa.7.0233 = phi <4 x float> [ %i.jo, %.lr.ph237 ], [ %i.lk, %bb.m ] ; 2 uses
  %.sroa.0120.0232 = phi <4 x float> [ %i.jl, %.lr.ph237 ], [ %i.li, %bb.m ] ; 2 uses
  %i.js = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.js to float
  %i.jt = fdiv float %7, %i.ae
  %i.ju = fsub float %i.jt, %i.dn
  %i.jv = fdiv float %i.ju, %i.jq                 ; 2 uses
  %i.jw = fsub float 1.000000e+00, %i.jv
  %i.jx = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jz = fmul <4 x float> %.sroa.0120.0232, %i.jy
  %i.ka = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kc = fmul <4 x float> %.sroa.0125.0234, %i.kb
  %i.kd = fadd <4 x float> %i.jz, %i.kc
  %i.ke = fmul <4 x float> %.sroa.7.0233, %i.jy
  %i.kf = fmul <4 x float> %.sroa.7128.0235, %i.kb
  %i.kg = fadd <4 x float> %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !388 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !388 ; 4 uses
  %i.kl = mul i64 %i.kk, %i.bg
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl
  %i.kn = load <4 x float>, ptr %i.km, align 1, !noalias !389 ; 2 uses
  %i.ko = mul i64 %i.kk, %i.bm
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ko
  %i.kq = load <4 x float>, ptr %i.kp, align 1, !noalias !390 ; 2 uses
  %i.kr = mul i64 %i.kk, %i.bp
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kr
  %i.kt = load <4 x float>, ptr %i.ks, align 1, !noalias !391 ; 2 uses
  %i.ku = mul i64 %i.kk, %i.bs
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ku
  %i.kw = load <4 x float>, ptr %i.kv, align 1, !noalias !392 ; 2 uses
  %i.kx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kn, <4 x float> %i.kq)
  %i.ky = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kt, <4 x float> %i.kw)
  %i.kz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kx, <4 x float> %i.ky)
  %i.la = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kn, <4 x float> %i.kq)
  %i.lb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kt, <4 x float> %i.kw)
  %i.lc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.la, <4 x float> %i.lb)
  %i.ld = fsub <4 x float> %i.kz, %i.kd
  %i.le = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ld, <4 x float> zeroinitializer) ; 2 uses
  %i.lf = fsub <4 x float> %i.lc, %i.kg
  %i.lg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lf, <4 x float> zeroinitializer) ; 2 uses
  %i.lh = fadd <4 x float> %.sroa.0125.0234, %i.le ; 2 uses
  %i.li = fadd <4 x float> %.sroa.0120.0232, %i.le ; 2 uses
  %i.lj = fadd <4 x float> %.sroa.7128.0235, %i.lg ; 2 uses
  %i.lk = fadd <4 x float> %.sroa.7.0233, %i.lg   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ee, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !7

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.11.0.ph = phi <4 x float> [ %i.gy, %bb.k ], [ %i.jo, %bb.l ], [ %i.lk, %bb.m ]
  %.sroa.8.0.ph = phi <4 x float> [ %i.gv, %bb.k ], [ %i.jl, %bb.l ], [ %i.li, %bb.m ]
  %.sroa.516.0.ph = phi <4 x float> [ %i.gq, %bb.k ], [ %i.jg, %bb.l ], [ %i.lj, %bb.m ]
  %.sroa.015.0.ph = phi <4 x float> [ %i.gn, %bb.k ], [ %i.jd, %bb.l ], [ %i.lh, %bb.m ]
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.015.0.ph, <4 x float> %.sroa.8.0.ph)
  %i.lm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.516.0.ph, <4 x float> %.sroa.11.0.ph)
  %i.ln = trunc i64 %.0250 to i32
  %.sroa.028.12.vec.insert = insertelement <4 x float> %i.ll, float %i.x, i64 3 ; 3 uses
  %i.lo = bitcast i32 %i.ln to float
  %.sroa.027.12.vec.insert = insertelement <4 x float> %i.lm, float %i.lo, i64 3 ; 3 uses
  %i.lp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.z, <4 x float> %.sroa.028.12.vec.insert)
  %i.lq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aa, <4 x float> %.sroa.027.12.vec.insert)
  %i.lr = fadd <4 x float> %.sroa.028.12.vec.insert, %.sroa.027.12.vec.insert ; 2 uses
  %i.ls = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> %i.lr)
  %i.lt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> %i.lr)
  %i.lu = add i64 %i.ad, 1
  %i.lv = add i64 %.010249, 1
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.010249 ; 2 uses
  store <4 x float> %.sroa.028.12.vec.insert, ptr %i.lw, align 16
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <4 x float> %.sroa.027.12.vec.insert, ptr %i.lx, align 16
  %.pre = load i64, ptr %i.p, align 8
  br label %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit

_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit: ; preds = %.lr.ph, %bb.h, %bb.i, %bb.j, %bb.e, %bb.d, %bb.c, %bb.f, %.loopexit
  %i.ly = phi i64 [ %.pre, %.loopexit ], [ %i.y, %bb.f ], [ %i.y, %bb.c ], [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.h ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.lz = phi i64 [ %i.lu, %.loopexit ], [ %i.ad, %bb.f ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.ma = phi <4 x float> [ %i.lt, %.loopexit ], [ %i.ac, %bb.f ], [ %i.ac, %bb.c ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.mb = phi <4 x float> [ %i.ls, %.loopexit ], [ %i.ab, %bb.f ], [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.mc = phi <4 x float> [ %i.lq, %.loopexit ], [ %i.aa, %bb.f ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.md = phi <4 x float> [ %i.lp, %.loopexit ], [ %i.z, %bb.f ], [ %i.z, %bb.c ], [ %i.z, %bb.d ], [ %i.z, %bb.e ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.lv, %.loopexit ], [ %.010249, %bb.f ], [ %.010249, %bb.c ], [ %.010249, %bb.d ], [ %.010249, %bb.e ], [ %.010249, %bb.j ], [ %.010249, %bb.i ], [ %.010249, %bb.h ], [ %.010249, %.lr.ph ]
  %i.me = add nuw i64 %.0250, 1                   ; 2 uses
  %i.mf = icmp ult i64 %i.me, %i.ly
  br i1 %i.mf, label %bb.c, label %.loopexit228, !llvm.loop !361

.loopexit228:                                     ; preds = %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit, %bb.b
  %.lcssa248 = phi i64 [ 0, %bb.b ], [ %i.lz, %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa246 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.ma, %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa244 = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.mb, %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa242 = phi <4 x float> [ splat (float -inf), %bb.b ], [ %i.mc, %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  %.lcssa = phi <4 x float> [ splat (float +inf), %bb.b ], [ %i.md, %_ZNK6embree8QuadMesh12linearBoundsEmRKNS_4BBoxIfEERNS_5LBBoxINS_6Vec3faEEE.exit ]
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa242, ptr %i.a, align 16
  store <4 x float> %.lcssa244, ptr %i.b, align 16
  store <4 x float> %.lcssa246, ptr %i.c, align 16
  store i64 %.lcssa248, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit228, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse211QuadMeshISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 16 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5, i32 noundef %6) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load i64, ptr %4, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph281, label %bb.b

.lr.ph281:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = bitcast i32 %6 to float
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread
  store i64 %i.ng, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa267 = phi i64 [ %i.nh, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa265 = phi i64 [ %i.ni, %._crit_edge ], [ 0, %bb.a ]
  %.lcssa263 = phi float [ %i.nj, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.lcssa261 = phi float [ %i.nk, %._crit_edge ], [ 1.000000e+00, %bb.a ]
  %.lcssa259 = phi <4 x float> [ %i.nl, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa257 = phi <4 x float> [ %i.nm, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa255 = phi <4 x float> [ %i.nn, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa253 = phi <4 x float> [ %i.no, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %.lcssa251 = phi <4 x float> [ %i.np, %._crit_edge ], [ splat (float -inf), %bb.a ]
  %.lcssa = phi <4 x float> [ %i.nq, %._crit_edge ], [ splat (float +inf), %bb.a ]
  %i.o = phi <2 x float> [ %i.nr, %._crit_edge ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa251, ptr %i.y, align 16
  store <4 x float> %.lcssa253, ptr %i.x, align 16
  store <4 x float> %.lcssa255, ptr %i.w, align 16
  store <4 x float> %.lcssa257, ptr %i.v, align 16
  store <4 x float> %.lcssa259, ptr %i.u, align 16
  store float %.lcssa261, ptr %i.q, align 8
  store float %.lcssa263, ptr %i.p, align 4
  store i64 %.lcssa265, ptr %i.t, align 16
  store i64 %.lcssa267, ptr %i.s, align 8
  store <2 x float> %i.o, ptr %i.r, align 16
  ret void

bb.c:                                             ; preds = %.lr.ph281, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread
  %i.z = phi i64 [ %i.e, %.lr.ph281 ], [ %i.nf, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 8 uses
  %i.aa = phi i64 [ 0, %.lr.ph281 ], [ %i.ng, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %.0280 = phi i64 [ %5, %.lr.ph281 ], [ %.1, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 10 uses
  %.012278 = phi i64 [ %i.c, %.lr.ph281 ], [ %i.ns, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 3 uses
  %i.ab = phi <4 x float> [ splat (float +inf), %.lr.ph281 ], [ %i.nq, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ac = phi <4 x float> [ splat (float -inf), %.lr.ph281 ], [ %i.np, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ad = phi <4 x float> [ splat (float +inf), %.lr.ph281 ], [ %i.no, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ae = phi <4 x float> [ splat (float -inf), %.lr.ph281 ], [ %i.nn, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.af = phi <4 x float> [ splat (float +inf), %.lr.ph281 ], [ %i.nm, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ag = phi <4 x float> [ splat (float -inf), %.lr.ph281 ], [ %i.nl, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ah = phi float [ 1.000000e+00, %.lr.ph281 ], [ %i.nk, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 10 uses
  %i.ai = phi float [ 0.000000e+00, %.lr.ph281 ], [ %i.nj, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 10 uses
  %i.aj = phi i64 [ 0, %.lr.ph281 ], [ %i.ni, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %i.ak = phi i64 [ 0, %.lr.ph281 ], [ %i.nh, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 10 uses
  %i.al = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph281 ], [ %i.nr, %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 9 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.g, align 4, !noalias !562 ; 5 uses
  %i.am = load float, ptr %i.h, align 8, !noalias !562 ; 10 uses
  %.sroa.083.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 4 uses
  %.sroa.083.4.vec.extract91 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 4 uses
  %i.an = fsub float %.sroa.083.4.vec.extract91, %.sroa.083.0.vec.extract
  %i.ao = load <2 x float>, ptr %3, align 4, !noalias !563 ; 2 uses
  %i.ap = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x float> %i.aq, %i.as           ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = fmul float %i.au, f0x3F800002
  %i.aw = fmul float %i.am, %i.av
  %i.ax = tail call noundef float @llvm.floor.f32(float %i.aw) ; 2 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, float 0.000000e+00, float %i.ax
  %i.ba = fptosi float %i.az to i32               ; 2 uses
  %i.bb = extractelement <2 x float> %i.at, i64 1
end_hunk_0
begin_hunk_1_@_ZNK6embree4sse211QuadMeshISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  br i1 %i.dh, label %bb.j, label %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.di = mul i64 %i.cg, %i.cb
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.di
  %i.dk = load <4 x float>, ptr %i.dj, align 1, !noalias !568 ; 2 uses
  %i.dl = fcmp ugt <4 x float> %i.dk, splat (float -1.844000e+18)
  %i.dm = fcmp olt <4 x float> %i.dk, splat (float 1.844000e+18)
  %i.dn = and <4 x i1> %i.dl, %i.dm
  %i.do = bitcast <4 x i1> %i.dn to i4
  %i.dp = and i4 %i.do, 7
  %i.dq = icmp eq i4 %i.dp, 7
  br i1 %i.dq, label %bb.g, label %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit: ; preds = %bb.g, %.preheader
  %i.dr = fsub <2 x float> %i.ao, %i.ap
  %i.ds = fsub float %.sroa.083.4.vec.extract91, %.sroa.083.0.vec.extract
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x float> %i.dr, %i.du           ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0 ; 3 uses
  %i.dx = fmul float %i.am, %i.dw                 ; 3 uses
  %i.dy = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.dz = fmul float %i.am, %i.dy                 ; 3 uses
  %i.ea = tail call noundef float @llvm.floor.f32(float %i.dx) ; 3 uses
  %i.eb = tail call noundef float @llvm.ceil.f32(float %i.dz) ; 3 uses
  %i.ec = fcmp ogt float %i.ea, 0.000000e+00
  %i.ed = select i1 %i.ec, float %i.ea, float 0.000000e+00 ; 3 uses
  %i.ee = fcmp olt float %i.eb, %i.am
  %i.ef = select i1 %i.ee, float %i.eb, float %i.am ; 3 uses
  %i.eg = fptosi float %i.ed to i32
  %i.eh = fptosi float %i.ef to i32
  %i.ei = fptosi float %i.ea to i32
  %i.ej = tail call noundef i32 @llvm.smax.i32(i32 %i.ei, i32 -1) ; 2 uses
  %i.ek = fptosi float %i.eb to i32
  %i.el = fptosi float %i.am to i32
  %i.em = add nsw i32 %i.el, 1
  %i.en = tail call noundef i32 @llvm.smin.i32(i32 %i.ek, i32 %i.em) ; 3 uses
  %i.eo = zext nneg i32 %i.eg to i64
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.eo ; 4 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !569 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noalias !569 ; 4 uses
  %i.et = mul i64 %i.es, %i.bp
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.et
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !noalias !570 ; 2 uses
  %i.ew = mul i64 %i.es, %i.bv
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ew
  %i.ey = load <4 x float>, ptr %i.ex, align 1, !noalias !571 ; 2 uses
  %i.ez = mul i64 %i.es, %i.by
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ez
  %i.fb = load <4 x float>, ptr %i.fa, align 1, !noalias !572 ; 2 uses
  %i.fc = mul i64 %i.es, %i.cb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fc
  %i.fe = load <4 x float>, ptr %i.fd, align 1, !noalias !573 ; 2 uses
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ev, <4 x float> %i.ey)
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fb, <4 x float> %i.fe)
  %i.fh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ff, <4 x float> %i.fg) ; 3 uses
  %i.fi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ev, <4 x float> %i.ey)
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fb, <4 x float> %i.fe)
  %i.fk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fi, <4 x float> %i.fj) ; 3 uses
  %i.fl = sext i32 %i.eh to i64
  %i.fm = getelementptr [56 x i8], ptr %i.bq, i64 %i.fl ; 4 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !574 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !574 ; 4 uses
  %i.fq = mul i64 %i.fp, %i.bp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !575 ; 2 uses
  %i.ft = mul i64 %i.fp, %i.bv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ft
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !noalias !576 ; 2 uses
  %i.fw = mul i64 %i.fp, %i.by
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fw
  %i.fy = load <4 x float>, ptr %i.fx, align 1, !noalias !577 ; 2 uses
  %i.fz = mul i64 %i.fp, %i.cb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fz
  %i.gb = load <4 x float>, ptr %i.ga, align 1, !noalias !578 ; 2 uses
  %i.gc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fs, <4 x float> %i.fv)
  %i.gd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fy, <4 x float> %i.gb)
  %i.ge = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gc, <4 x float> %i.gd) ; 3 uses
  %i.gf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fs, <4 x float> %i.fv)
  %i.gg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fy, <4 x float> %i.gb)
  %i.gh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gf, <4 x float> %i.gg) ; 3 uses
  %i.gi = sub nsw i32 %i.en, %i.ej
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit
  %i.gk = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.ef, i64 1
  %i.gm = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.dz, i64 1
  %i.go = fsub <2 x float> %i.gl, %i.gn           ; 2 uses
  %i.gp = fcmp ogt <2 x float> %i.go, zeroinitializer
  %i.gq = select <2 x i1> %i.gp, <2 x float> %i.go, <2 x float> zeroinitializer ; 3 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul <4 x float> %i.gr, %i.ge
  %i.gt = fsub <2 x float> splat (float 1.000000e+00), %i.gq ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <4 x float> %i.gu, %i.fh
  %i.gw = fadd <4 x float> %i.gv, %i.gs
  %i.gx = fmul <4 x float> %i.gr, %i.gh
  %i.gy = fmul <4 x float> %i.gu, %i.fk
  %i.gz = fadd <4 x float> %i.gy, %i.gx
  %i.ha = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hb = fmul <4 x float> %i.ha, %i.fh
  %i.hc = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.hd = fmul <4 x float> %i.hc, %i.ge
  %i.he = fadd <4 x float> %i.hb, %i.hd
  %i.hf = fmul <4 x float> %i.ha, %i.fk
  %i.hg = fmul <4 x float> %i.hc, %i.gh
  %i.hh = fadd <4 x float> %i.hf, %i.hg
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.l:                                             ; preds = %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !579 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !579 ; 4 uses
  %i.hm = mul i64 %i.hl, %i.bp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !noalias !580 ; 2 uses
  %i.hp = mul i64 %i.hl, %i.bv
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hp
  %i.hr = load <4 x float>, ptr %i.hq, align 1, !noalias !581 ; 2 uses
  %i.hs = mul i64 %i.hl, %i.by
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hs
  %i.hu = load <4 x float>, ptr %i.ht, align 1, !noalias !582 ; 2 uses
  %i.hv = mul i64 %i.hl, %i.cb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hv
  %i.hx = load <4 x float>, ptr %i.hw, align 1, !noalias !583 ; 2 uses
  %i.hy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ho, <4 x float> %i.hr)
  %i.hz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hu, <4 x float> %i.hx)
  %i.ia = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hy, <4 x float> %i.hz)
  %i.ib = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ho, <4 x float> %i.hr)
  %i.ic = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hu, <4 x float> %i.hx)
  %i.id = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ib, <4 x float> %i.ic)
  %i.ie = getelementptr i8, ptr %i.fm, i64 -56
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !584 ; 4 uses
  %i.ig = getelementptr i8, ptr %i.fm, i64 -40
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !584 ; 4 uses
  %i.ii = mul i64 %i.ih, %i.bp
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !585 ; 2 uses
  %i.il = mul i64 %i.ih, %i.bv
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.il
  %i.in = load <4 x float>, ptr %i.im, align 1, !noalias !586 ; 2 uses
  %i.io = mul i64 %i.ih, %i.by
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !587 ; 2 uses
  %i.ir = mul i64 %i.ih, %i.cb
  %i.is = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ir
  %i.it = load <4 x float>, ptr %i.is, align 1, !noalias !588 ; 2 uses
  %i.iu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ik, <4 x float> %i.in)
  %i.iv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iq, <4 x float> %i.it)
  %i.iw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iu, <4 x float> %i.iv)
  %i.ix = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ik, <4 x float> %i.in)
  %i.iy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.iq, <4 x float> %i.it)
  %i.iz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ix, <4 x float> %i.iy)
  %i.ja = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.ef, i64 1
  %i.jc = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.dz, i64 1
  %i.je = fsub <2 x float> %i.jb, %i.jd           ; 2 uses
  %i.jf = fcmp ogt <2 x float> %i.je, zeroinitializer
  %i.jg = select <2 x i1> %i.jf, <2 x float> %i.je, <2 x float> zeroinitializer ; 3 uses
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = fmul <4 x float> %i.jh, %i.ia
  %i.jj = fsub <2 x float> splat (float 1.000000e+00), %i.jg ; 2 uses
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul <4 x float> %i.jk, %i.fh
  %i.jm = fadd <4 x float> %i.jl, %i.ji           ; 2 uses
  %i.jn = fmul <4 x float> %i.jh, %i.id
  %i.jo = fmul <4 x float> %i.jk, %i.fk
  %i.jp = fadd <4 x float> %i.jo, %i.jn           ; 2 uses
  %i.jq = shufflevector <2 x float> %i.jg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jr = fmul <4 x float> %i.jq, %i.iw
  %i.js = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jt = fmul <4 x float> %i.js, %i.ge
  %i.ju = fadd <4 x float> %i.jt, %i.jr           ; 2 uses
  %i.jv = fmul <4 x float> %i.jq, %i.iz
  %i.jw = fmul <4 x float> %i.js, %i.gh
  %i.jx = fadd <4 x float> %i.jw, %i.jv           ; 2 uses
  %.0.i13240 = add nsw i32 %i.ej, 1               ; 2 uses
  %i.jy = icmp slt i32 %.0.i13240, %i.en
  br i1 %i.jy, label %.lr.ph246, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

.lr.ph246:                                        ; preds = %bb.l
  %i.jz = fsub float %i.dy, %i.dw
  %i.ka = zext nneg i32 %.0.i13240 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph246, %bb.m
  %indvars.iv = phi i64 [ %i.ka, %.lr.ph246 ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.sroa.7114.0244 = phi <4 x float> [ %i.jp, %.lr.ph246 ], [ %i.ls, %bb.m ] ; 2 uses
  %.sroa.0111.0243 = phi <4 x float> [ %i.jm, %.lr.ph246 ], [ %i.lq, %bb.m ] ; 2 uses
  %.sroa.7108.0242 = phi <4 x float> [ %i.jx, %.lr.ph246 ], [ %i.lt, %bb.m ] ; 2 uses
  %.sroa.0105.0241 = phi <4 x float> [ %i.ju, %.lr.ph246 ], [ %i.lr, %bb.m ] ; 2 uses
  %i.kb = trunc nsw i64 %indvars.iv to i32
  %7 = uitofp nneg i32 %i.kb to float
  %i.kc = fdiv float %7, %i.am
  %i.kd = fsub float %i.kc, %i.dw
  %i.ke = fdiv float %i.kd, %i.jz                 ; 2 uses
  %i.kf = fsub float 1.000000e+00, %i.ke
  %i.kg = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ki = fmul <4 x float> %.sroa.0105.0241, %i.kh
  %i.kj = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kl = fmul <4 x float> %.sroa.0111.0243, %i.kk
  %i.km = fadd <4 x float> %i.ki, %i.kl
  %i.kn = fmul <4 x float> %.sroa.7108.0242, %i.kh
  %i.ko = fmul <4 x float> %.sroa.7114.0244, %i.kk
  %i.kp = fadd <4 x float> %i.kn, %i.ko
  %i.kq = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %indvars.iv ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !589 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !589 ; 4 uses
  %i.ku = mul i64 %i.kt, %i.bp
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ku
  %i.kw = load <4 x float>, ptr %i.kv, align 1, !noalias !590 ; 2 uses
  %i.kx = mul i64 %i.kt, %i.bv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kx
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !noalias !591 ; 2 uses
  %i.la = mul i64 %i.kt, %i.by
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.la
  %i.lc = load <4 x float>, ptr %i.lb, align 1, !noalias !592 ; 2 uses
  %i.ld = mul i64 %i.kt, %i.cb
  %i.le = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ld
  %i.lf = load <4 x float>, ptr %i.le, align 1, !noalias !593 ; 2 uses
  %i.lg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kw, <4 x float> %i.kz)
  %i.lh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lc, <4 x float> %i.lf)
  %i.li = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lg, <4 x float> %i.lh)
  %i.lj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kw, <4 x float> %i.kz)
  %i.lk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lc, <4 x float> %i.lf)
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lj, <4 x float> %i.lk)
  %i.lm = fsub <4 x float> %i.li, %i.km
  %i.ln = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.lm, <4 x float> zeroinitializer) ; 2 uses
  %i.lo = fsub <4 x float> %i.ll, %i.kp
  %i.lp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.lo, <4 x float> zeroinitializer) ; 2 uses
  %i.lq = fadd <4 x float> %.sroa.0111.0243, %i.ln ; 2 uses
  %i.lr = fadd <4 x float> %.sroa.0105.0241, %i.ln ; 2 uses
  %i.ls = fadd <4 x float> %.sroa.7114.0244, %i.lp ; 2 uses
  %i.lt = fadd <4 x float> %.sroa.7108.0242, %i.lp ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.en, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, label %bb.m, !llvm.loop !7

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.11.0 = phi <4 x float> [ %i.hh, %bb.k ], [ %i.jx, %bb.l ], [ %i.lt, %bb.m ]
  %.sroa.8.0 = phi <4 x float> [ %i.he, %bb.k ], [ %i.ju, %bb.l ], [ %i.lr, %bb.m ]
  %.sroa.5.0 = phi <4 x float> [ %i.gz, %bb.k ], [ %i.jp, %bb.l ], [ %i.ls, %bb.m ]
  %.sroa.0.0 = phi <4 x float> [ %i.gw, %bb.k ], [ %i.jm, %bb.l ], [ %i.lq, %bb.m ]
  %i.lu = load i32, ptr %i.l, align 4
  %i.lv = add i32 %i.lu, -1                       ; 2 uses
  %i.lw = trunc i64 %.012278 to i32
  %.sroa.014.12.vec.insert = insertelement <4 x float> %.sroa.0.0, float %i.m, i64 3 ; 3 uses
  %i.lx = bitcast i32 %i.lw to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5.0, float %i.lx, i64 3 ; 3 uses
  %i.ly = bitcast i32 %i.lv to float              ; 2 uses
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.8.0, float %i.ly, i64 3 ; 3 uses
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.ly, i64 3 ; 3 uses
  %i.lz = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.ma = fmul <4 x float> %.sroa.014.12.vec.insert, splat (float 5.000000e-01)
  %i.mb = fadd <4 x float> %i.ma, %i.lz
  %i.mc = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.md = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.me = fadd <4 x float> %i.md, %i.mc
  %i.mf = fadd <4 x float> %i.mb, %i.me           ; 2 uses
  %i.mg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ab, <4 x float> %.sroa.014.12.vec.insert)
  %i.mh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> %.sroa.7.28.vec.insert)
  %i.mi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ad, <4 x float> %.sroa.12.44.vec.insert)
  %i.mj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ae, <4 x float> %.sroa.18.60.vec.insert)
  %i.mk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.af, <4 x float> %i.mf)
  %i.ml = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ag, <4 x float> %i.mf)
  %i.mm = fcmp olt float %i.ah, %.sroa.083.0.vec.extract
  %i.mn = select i1 %i.mm, float %i.ah, float %.sroa.083.0.vec.extract
  %i.mo = fcmp olt float %i.ai, %.sroa.083.4.vec.extract91
  %i.mp = select i1 %i.mo, float %.sroa.083.4.vec.extract91, float %i.ai
  %i.mq = add i64 %i.aa, 1
  %i.mr = zext i32 %i.lv to i64                   ; 3 uses
  %i.ms = add i64 %i.aj, %i.mr
  %i.mt = icmp ult i64 %i.ak, %i.mr
  %i.mu = insertelement <2 x i1> poison, i1 %i.mt, i64 0
  %i.mv = shufflevector <2 x i1> %i.mu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mw = select <2 x i1> %i.mv, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.al
  %i.mx = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.mr)
  %i.my = add i64 %.0280, 1
  %i.mz = load ptr, ptr %i.n, align 8
  %i.na = getelementptr inbounds nuw [80 x i8], ptr %i.mz, i64 %.0280 ; 5 uses
  store <4 x float> %.sroa.014.12.vec.insert, ptr %i.na, align 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.nb, align 16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.nc, align 16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.nd, align 16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.ne, align 16
  %.pre = load i64, ptr %i.d, align 8
  br label %_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree8QuadMesh5validEmRKNS_5rangeImEE.exit.thread: ; preds = %.lr.ph, %bb.h, %bb.i, %bb.j, %bb.e, %bb.d, %bb.c, %bb.f, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit
  %i.nf = phi i64 [ %.pre, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.z, %bb.f ], [ %i.z, %bb.c ], [ %i.z, %bb.d ], [ %i.z, %bb.e ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.ng = phi i64 [ %i.mq, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aa, %bb.f ], [ %i.aa, %bb.c ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.nh = phi i64 [ %i.mx, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ak, %bb.f ], [ %i.ak, %bb.c ], [ %i.ak, %bb.d ], [ %i.ak, %bb.e ], [ %i.ak, %bb.j ], [ %i.ak, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ni = phi i64 [ %i.ms, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.aj, %bb.f ], [ %i.aj, %bb.c ], [ %i.aj, %bb.d ], [ %i.aj, %bb.e ], [ %i.aj, %bb.j ], [ %i.aj, %bb.i ], [ %i.aj, %bb.h ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.nj = phi float [ %i.mp, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ai, %bb.f ], [ %i.ai, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ], [ %i.ai, %.lr.ph ] ; 2 uses
  %i.nk = phi float [ %i.mn, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ah, %bb.f ], [ %i.ah, %bb.c ], [ %i.ah, %bb.d ], [ %i.ah, %bb.e ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.nl = phi <4 x float> [ %i.ml, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ag, %bb.f ], [ %i.ag, %bb.c ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.nm = phi <4 x float> [ %i.mk, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.af, %bb.f ], [ %i.af, %bb.c ], [ %i.af, %bb.d ], [ %i.af, %bb.e ], [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.af, %bb.h ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.nn = phi <4 x float> [ %i.mj, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ae, %bb.f ], [ %i.ae, %bb.c ], [ %i.ae, %bb.d ], [ %i.ae, %bb.e ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.no = phi <4 x float> [ %i.mi, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ad, %bb.f ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.np = phi <4 x float> [ %i.mh, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ac, %bb.f ], [ %i.ac, %bb.c ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.nq = phi <4 x float> [ %i.mg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.ab, %bb.f ], [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.my, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.0280, %bb.f ], [ %.0280, %bb.c ], [ %.0280, %bb.d ], [ %.0280, %bb.e ], [ %.0280, %bb.j ], [ %.0280, %bb.i ], [ %.0280, %bb.h ], [ %.0280, %.lr.ph ]
  %i.nr = phi <2 x float> [ %i.mw, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %i.al, %bb.f ], [ %i.al, %bb.c ], [ %i.al, %bb.d ], [ %i.al, %bb.e ], [ %i.al, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.ns = add nuw i64 %.012278, 1                 ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nf
  br i1 %i.nt, label %bb.c, label %._crit_edge, !llvm.loop !561
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse211QuadMeshISA13vlinearBoundsEmRKNS_4BBoxIfEE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(264) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load float, ptr %i.b, align 8, !noalias !736 ; 6 uses
  %i.d = load float, ptr %i.a, align 4            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load float, ptr %i.e, align 16
  %i.g = fsub float %i.f, %i.d
  %i.h = load <2 x float>, ptr %3, align 4
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.p = fmul float %i.c, %i.o                    ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.r = fmul float %i.c, %i.q                    ; 3 uses
  %i.s = tail call noundef float @llvm.floor.f32(float %i.p) ; 3 uses
  %i.t = tail call noundef float @llvm.ceil.f32(float %i.r) ; 3 uses
  %i.u = fcmp ogt float %i.s, 0.000000e+00
  %i.v = select i1 %i.u, float %i.s, float 0.000000e+00 ; 3 uses
  %i.w = fcmp olt float %i.t, %i.c
  %i.x = select i1 %i.w, float %i.t, float %i.c   ; 3 uses
  %i.y = fptosi float %i.v to i32
  %i.z = fptosi float %i.x to i32
  %i.aa = fptosi float %i.s to i32
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 -1) ; 2 uses
  %i.ac = fptosi float %i.t to i32
  %i.ad = fptosi float %i.c to i32
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ae) ; 3 uses
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !737
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !737
  %i.al = mul i64 %i.ak, %2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !737
  %i.ao = zext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = load ptr, ptr %i.ap, align 16, !noalias !738 ; 3 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.ag ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !739 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !739 ; 4 uses
  %i.av = mul i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !noalias !740 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !noalias !737
  %i.ba = zext i32 %i.az to i64                   ; 5 uses
  %i.bb = mul i64 %i.au, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  %i.bd = load <4 x float>, ptr %i.bc, align 1, !noalias !741 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !noalias !737
  %i.bg = zext i32 %i.bf to i64                   ; 5 uses
  %i.bh = mul i64 %i.au, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bh
  %i.bj = load <4 x float>, ptr %i.bi, align 1, !noalias !742 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !737
  %i.bm = zext i32 %i.bl to i64                   ; 5 uses
  %i.bn = mul i64 %i.au, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bn
  %i.bp = load <4 x float>, ptr %i.bo, align 1, !noalias !743 ; 2 uses
  %i.bq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ax, <4 x float> %i.bd)
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bj, <4 x float> %i.bp)
  %i.bs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bq, <4 x float> %i.br) ; 3 uses
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ax, <4 x float> %i.bd)
  %i.bu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bj, <4 x float> %i.bp)
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bt, <4 x float> %i.bu) ; 3 uses
  %i.bw = sext i32 %i.z to i64
  %i.bx = getelementptr [56 x i8], ptr %i.aq, i64 %i.bw ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !744 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !744 ; 4 uses
  %i.cb = mul i64 %i.ca, %i.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = load <4 x float>, ptr %i.cc, align 1, !noalias !745 ; 2 uses
  %i.ce = mul i64 %i.ca, %i.ba
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ce
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !noalias !746 ; 2 uses
  %i.ch = mul i64 %i.ca, %i.bg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  %i.cj = load <4 x float>, ptr %i.ci, align 1, !noalias !747 ; 2 uses
  %i.ck = mul i64 %i.ca, %i.bm
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ck
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !noalias !748 ; 2 uses
  %i.cn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cd, <4 x float> %i.cg)
  %i.co = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cj, <4 x float> %i.cm)
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cn, <4 x float> %i.co) ; 3 uses
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cd, <4 x float> %i.cg)
  %i.cr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cj, <4 x float> %i.cm)
  %i.cs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cq, <4 x float> %i.cr) ; 3 uses
  %i.ct = sub nsw i32 %i.af, %i.ab
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cv = insertelement <2 x float> poison, float %i.p, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.x, i64 1
  %i.cx = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.r, i64 1
  %i.cz = fsub <2 x float> %i.cw, %i.cy           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = fcmp ogt <2 x float> %i.cz, zeroinitializer
  %i.dc = select <2 x i1> %i.db, <2 x float> %i.cz, <2 x float> zeroinitializer ; 3 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.cp
  %i.df = fsub <2 x float> splat (float 1.000000e+00), %i.dc ; 2 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dh = fmul <4 x float> %i.dg, %i.bs
  %i.di = fadd <4 x float> %i.dh, %i.de
  %i.dj = fmul <4 x float> %i.dd, %i.cs
  %i.dk = fmul <4 x float> %i.dg, %i.bv
  %i.dl = fadd <4 x float> %i.dk, %i.dj
  store <4 x float> %i.di, ptr %0, align 16
  store <4 x float> %i.dl, ptr %i.da, align 16
  %i.dm = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dn = fmul <4 x float> %i.dm, %i.bs
  %i.do = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dp = fmul <4 x float> %i.do, %i.cp
  %i.dq = fadd <4 x float> %i.dn, %i.dp
  %i.dr = fmul <4 x float> %i.dm, %i.bv
  %i.ds = fmul <4 x float> %i.do, %i.cs
  %i.dt = fadd <4 x float> %i.dr, %i.ds
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.c:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !749 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !749 ; 4 uses
  %i.dy = mul i64 %i.dx, %i.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = load <4 x float>, ptr %i.dz, align 1, !noalias !750 ; 2 uses
  %i.eb = mul i64 %i.dx, %i.ba
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb
  %i.ed = load <4 x float>, ptr %i.ec, align 1, !noalias !751 ; 2 uses
  %i.ee = mul i64 %i.dx, %i.bg
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ee
  %i.eg = load <4 x float>, ptr %i.ef, align 1, !noalias !752 ; 2 uses
  %i.eh = mul i64 %i.dx, %i.bm
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load <4 x float>, ptr %i.ei, align 1, !noalias !753 ; 2 uses
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eg, <4 x float> %i.ej)
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ek, <4 x float> %i.el)
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ea, <4 x float> %i.ed)
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eg, <4 x float> %i.ej)
  %i.ep = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.en, <4 x float> %i.eo)
  %i.eq = getelementptr i8, ptr %i.bx, i64 -56
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !754 ; 4 uses
  %i.es = getelementptr i8, ptr %i.bx, i64 -40
  %i.et = load i64, ptr %i.es, align 8, !noalias !754 ; 4 uses
  %i.eu = mul i64 %i.et, %i.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.ew = load <4 x float>, ptr %i.ev, align 1, !noalias !755 ; 2 uses
  %i.ex = mul i64 %i.et, %i.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ex
  %i.ez = load <4 x float>, ptr %i.ey, align 1, !noalias !756 ; 2 uses
  %i.fa = mul i64 %i.et, %i.bg
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fa
  %i.fc = load <4 x float>, ptr %i.fb, align 1, !noalias !757 ; 2 uses
  %i.fd = mul i64 %i.et, %i.bm
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fd
  %i.ff = load <4 x float>, ptr %i.fe, align 1, !noalias !758 ; 2 uses
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ew, <4 x float> %i.ez)
  %i.fh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fc, <4 x float> %i.ff)
  %i.fi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fg, <4 x float> %i.fh)
  %i.fj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ew, <4 x float> %i.ez)
  %i.fk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fc, <4 x float> %i.ff)
  %i.fl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fj, <4 x float> %i.fk)
  %i.fm = insertelement <2 x float> poison, float %i.p, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.x, i64 1
  %i.fo = insertelement <2 x float> poison, float %i.v, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.r, i64 1
  %i.fq = fsub <2 x float> %i.fn, %i.fp           ; 2 uses
  %i.fr = fcmp ogt <2 x float> %i.fq, zeroinitializer
  %i.fs = select <2 x i1> %i.fr, <2 x float> %i.fq, <2 x float> zeroinitializer ; 3 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = fmul <4 x float> %i.ft, %i.em
  %i.fv = fsub <2 x float> splat (float 1.000000e+00), %i.fs ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = fmul <4 x float> %i.fw, %i.bs
  %i.fy = fadd <4 x float> %i.fx, %i.fu           ; 2 uses
  %i.fz = fmul <4 x float> %i.ft, %i.ep
  %i.ga = fmul <4 x float> %i.fw, %i.bv
  %i.gb = fadd <4 x float> %i.ga, %i.fz           ; 2 uses
  %i.gc = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gd = fmul <4 x float> %i.gc, %i.fi
  %i.ge = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gf = fmul <4 x float> %i.ge, %i.cp
  %i.gg = fadd <4 x float> %i.gf, %i.gd           ; 2 uses
  %i.gh = fmul <4 x float> %i.gc, %i.fl
  %i.gi = fmul <4 x float> %i.ge, %i.cs
  %i.gj = fadd <4 x float> %i.gi, %i.gh           ; 2 uses
  %.0.i115 = add nsw i32 %i.ab, 1                 ; 2 uses
  %i.gk = icmp slt i32 %.0.i115, %i.af
  br i1 %i.gk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.gl = fsub float %i.q, %i.o
  %i.gm = zext nneg i32 %.0.i115 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.729.0.lcssa = phi <4 x float> [ %i.gb, %bb.c ], [ %i.if, %bb.d ]
  %.sroa.026.0.lcssa = phi <4 x float> [ %i.fy, %bb.c ], [ %i.id, %bb.d ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.gj, %bb.c ], [ %i.ig, %bb.d ]
  %.sroa.021.0.lcssa = phi <4 x float> [ %i.gg, %bb.c ], [ %i.ie, %bb.d ]
  store <4 x float> %.sroa.026.0.lcssa, ptr %0, align 16
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.729.0.lcssa, ptr %i.gn, align 16
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.gm, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.021.0119 = phi <4 x float> [ %i.gg, %.lr.ph ], [ %i.ie, %bb.d ] ; 2 uses
  %.sroa.7.0118 = phi <4 x float> [ %i.gj, %.lr.ph ], [ %i.ig, %bb.d ] ; 2 uses
  %.sroa.026.0117 = phi <4 x float> [ %i.fy, %.lr.ph ], [ %i.id, %bb.d ] ; 2 uses
  %.sroa.729.0116 = phi <4 x float> [ %i.gb, %.lr.ph ], [ %i.if, %bb.d ] ; 2 uses
  %i.go = trunc nsw i64 %indvars.iv to i32
  %4 = uitofp nneg i32 %i.go to float
  %i.gp = fdiv float %4, %i.c
  %i.gq = fsub float %i.gp, %i.o
  %i.gr = fdiv float %i.gq, %i.gl                 ; 2 uses
  %i.gs = fsub float 1.000000e+00, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <4 x float> %.sroa.021.0119, %i.gu
  %i.gw = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fmul <4 x float> %.sroa.026.0117, %i.gx
  %i.gz = fadd <4 x float> %i.gv, %i.gy
  %i.ha = fmul <4 x float> %.sroa.7.0118, %i.gu
  %i.hb = fmul <4 x float> %.sroa.729.0116, %i.gx
  %i.hc = fadd <4 x float> %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !759 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !759 ; 4 uses
  %i.hh = mul i64 %i.hg, %i.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hh
  %i.hj = load <4 x float>, ptr %i.hi, align 1, !noalias !760 ; 2 uses
  %i.hk = mul i64 %i.hg, %i.ba
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hk
  %i.hm = load <4 x float>, ptr %i.hl, align 1, !noalias !761 ; 2 uses
  %i.hn = mul i64 %i.hg, %i.bg
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hn
  %i.hp = load <4 x float>, ptr %i.ho, align 1, !noalias !762 ; 2 uses
  %i.hq = mul i64 %i.hg, %i.bm
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hq
  %i.hs = load <4 x float>, ptr %i.hr, align 1, !noalias !763 ; 2 uses
  %i.ht = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hj, <4 x float> %i.hm)
  %i.hu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hp, <4 x float> %i.hs)
  %i.hv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ht, <4 x float> %i.hu)
  %i.hw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hj, <4 x float> %i.hm)
  %i.hx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hp, <4 x float> %i.hs)
  %i.hy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hw, <4 x float> %i.hx)
  %i.hz = fsub <4 x float> %i.hv, %i.gz
  %i.ia = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hz, <4 x float> zeroinitializer) ; 2 uses
  %i.ib = fsub <4 x float> %i.hy, %i.hc
  %i.ic = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ib, <4 x float> zeroinitializer) ; 2 uses
  %i.id = fadd <4 x float> %.sroa.026.0117, %i.ia ; 2 uses
  %i.ie = fadd <4 x float> %.sroa.021.0119, %i.ia ; 2 uses
  %i.if = fadd <4 x float> %.sroa.729.0116, %i.ic ; 2 uses
  %i.ig = fadd <4 x float> %.sroa.7.0118, %i.ic   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !7

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8QuadMesh12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.b, %._crit_edge
  %.sink132 = phi <4 x float> [ %i.dq, %bb.b ], [ %.sroa.021.0.lcssa, %._crit_edge ]
  %.sink = phi <4 x float> [ %i.dt, %bb.b ], [ %.sroa.7.0.lcssa, %._crit_edge ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sink132, ptr %i.ih, align 16
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sink, ptr %i.ii, align 16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

declare <2 x float> @_ZNK6embree8Geometry12getTimeRangeEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{null}
!3 = distinct !{!3, !11}
!4 = distinct !{null}
!5 = distinct !{!5, !11}
!6 = distinct !{!6, !11}
!7 = distinct !{!7, !11}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{null}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{null, null}
!18 = distinct !{null, null}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{null, null}
!23 = distinct !{!23, !11}
!24 = distinct !{null, null}
!25 = distinct !{!25, !11}
!26 = distinct !{null, null}
!27 = distinct !{null}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, i1 false, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!31 = distinct !{!31, !30, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!34 = distinct !{!34, !33, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!35 = !{!31}
!36 = !{!34, !31}
!37 = distinct !{!37, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv"}
!38 = distinct !{!38, !37, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv: argument 0"}
!39 = distinct !{!39, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv"}
!40 = distinct !{!40, !39, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv: argument 0"}
!41 = distinct !{!41, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv"}
!42 = distinct !{!42, !41, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv: argument 0"}
!43 = distinct !{!43, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv"}
!44 = distinct !{!44, !43, !"_ZN6embree11vfloat_implILi4EE5loaduERKNS_11vboolf_implILi4EEEPKv: argument 0"}
!45 = distinct !{!45, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!46 = distinct !{!46, !45, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!47 = distinct !{!47, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!48 = distinct !{!48, !47, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!50 = distinct !{!50, !49, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!51 = distinct !{!51, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!52 = distinct !{!52, !51, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!53 = distinct !{!53, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!54 = distinct !{!54, !53, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!55 = distinct !{!55, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!56 = distinct !{!56, !55, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!57 = distinct !{!57, !11}
!58 = !{!38}
!59 = !{!40}
!60 = !{!42}
!61 = !{!44}
!62 = !{!46}
!63 = !{!48}
!64 = !{!50}
!65 = !{!52}
!66 = !{!54}
!67 = !{!56}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, i1 false, !"_ZNK6embree8Geometry18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS2_Lm32EEEEERKNS_5rangeImEEmj"}
!70 = distinct !{!70, !69, !"_ZNK6embree8Geometry18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS2_Lm32EEEEERKNS_5rangeImEEmj: argument 0"}
!71 = distinct !{null}
!72 = !{!70}
!73 = !{ptr @_ZN6embree12rtcore_errorD2Ev}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, i1 false, !"_ZNK6embree8QuadMesh6vertexEmm"}
!76 = distinct !{!76, !75, !"_ZNK6embree8QuadMesh6vertexEmm: argument 0"}
!77 = distinct !{!77, i1 false, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm"}
!78 = distinct !{!78, !77, !"_ZNK6embree10BufferViewINS_6Vec3faEEixEm: argument 0"}
!79 = distinct !{!79, i1 false, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv"}
!80 = distinct !{!80, !79, !"_ZN6embree11vfloat_implILi4EE5loaduEPKv: argument 0"}
!81 = distinct !{!81, i1 false, !"_ZNK6embree8QuadMesh6vertexEmm"}
end_hunk_1
