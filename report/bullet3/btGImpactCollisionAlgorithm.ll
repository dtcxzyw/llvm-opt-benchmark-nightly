Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactCollisionAlgorithm?download=true
inline.NumInlined: 622
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEPK24btCollisionObjectWrapperS2_PK22btGImpactMeshShapePartS5_PKii:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %.loopexit
  %.in = phi i32 [ %6, %.lr.ph101 ], [ %i.dl, %.loopexit ]
  %.017100 = phi ptr [ %5, %.lr.ph101 ], [ %i.dp, %.loopexit ] ; 3 uses
  %i.dl = add nsw i32 %.in, -1                    ; 2 uses
  %i.dm = load i32, ptr %.017100, align 4, !tbaa !46 ; 2 uses
  store i32 %i.dm, ptr %i.ac, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %.017100, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !46
  store i32 %i.do, ptr %i.ad, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.017100, i64 8
  %i.dq = load ptr, ptr %3, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 168
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef ptr %i.ds(ptr noundef nonnull align 8 dereferenceable(184) %3), !inline_history !156 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(72) %7), !inline_history !156
  %i.dx = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.dy = load ptr, ptr %4, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 168
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef ptr %i.ea(ptr noundef nonnull align 8 dereferenceable(184) %4), !inline_history !156 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i32 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(72) %8), !inline_history !156
  %i.ef = load <4 x float>, ptr %i.af, align 8
  %i.eg = load <2 x float>, ptr %7, align 8, !tbaa !57 ; 2 uses
  %i.eh = load <2 x float>, ptr %i.ag, align 8, !tbaa !57 ; 3 uses
  %i.ei = load float, ptr %i.ah, align 4, !tbaa !57
  %i.ej = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ek = fmul <4 x float> %i.dh, %i.ej
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.em = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.di, <4 x float> %i.ek)
  %i.en = load float, ptr %i.ai, align 8, !tbaa !57 ; 2 uses
  %i.eo = insertelement <4 x float> %i.ef, float %i.en, i64 1
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.bq, <4 x float> %i.em) ; 3 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.es = fadd <2 x float> %i.df, %i.er
  %i.et = extractelement <4 x float> %i.eq, i64 2
  %i.eu = fadd float %i.cs, %i.et
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  store <2 x float> %i.es, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.af, align 8, !tbaa !73
  %i.ev = load float, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.aj, align 8, !tbaa !57 ; 3 uses
  %i.ex = load float, ptr %i.ak, align 4, !tbaa !57
  %i.ey = insertelement <2 x float> %i.ew, float %i.ei, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fa = fmul <4 x float> %i.bw, %i.ez
  %i.fb = shufflevector <2 x float> %i.eh, <2 x float> %i.ew, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.bs, <4 x float> %i.fa)
  %i.fd = insertelement <4 x float> poison, float %i.en, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.ev, i64 1
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.ca, <4 x float> %i.fc) ; 4 uses
  %i.fh = load float, ptr %i.an, align 8, !tbaa !57
  %i.fi = load <2 x float>, ptr %8, align 8, !tbaa !57 ; 2 uses
  %i.fj = insertelement <2 x float> %i.fi, float %i.ex, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fl = fmul <4 x float> %i.ck, %i.fk
  %i.fm = shufflevector <2 x float> %i.ew, <2 x float> %i.fi, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.ch, <4 x float> %i.fl)
  %i.fo = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.fp = insertelement <4 x float> %i.fo, float %i.fh, i64 1
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.dc, <4 x float> %i.fn) ; 4 uses
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ft = fadd <2 x float> %i.dg, %i.fs           ; 3 uses
  %i.fu = extractelement <4 x float> %i.fr, i64 3
  %i.fv = fadd float %i.cw, %i.fu
  %.sroa.3.12.vec.insert.i4.i.i22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fv, i64 0
  store <2 x float> %i.ft, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i22, ptr %i.an, align 8, !tbaa !73
  %i.fw = load <4 x float>, ptr %i.ap, align 8
  %i.fx = load <2 x float>, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.fy = load <2 x float>, ptr %i.aq, align 8, !tbaa !57 ; 3 uses
  %i.fz = shufflevector <2 x float> %i.fx, <2 x float> %i.fy, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ga = fmul <4 x float> %i.dj, %i.fz
  %i.gb = shufflevector <2 x float> %i.fx, <2 x float> %i.fy, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.co, <4 x float> %i.ga)
  %i.gd = load float, ptr %7, align 8, !tbaa !57  ; 2 uses
  %i.ge = shufflevector <4 x float> %i.fg, <4 x float> %i.eq, <2 x i32> <i32 2, i32 7>
  %i.gf = fadd <2 x float> %i.cr, %i.ge           ; 2 uses
  %i.gg = shufflevector <4 x float> %i.fg, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.gh = fadd <2 x float> %i.i, %i.gg            ; 3 uses
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> %i.gf, <2 x i32> <i32 3, i32 0>
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.gi, ptr %i.ag, align 8
  store <2 x float> %i.gj, ptr %i.ai, align 8, !tbaa !73
  %i.gk = shufflevector <4 x float> %i.fr, <4 x float> %i.fg, <2 x i32> <i32 0, i32 5>
  %i.gl = fadd <2 x float> %i.cr, %i.gk           ; 3 uses
  %i.gm = shufflevector <4 x float> %i.fg, <4 x float> %i.fr, <2 x i32> <i32 3, i32 4>
  %i.gn = fadd <2 x float> %i.i, %i.gm            ; 2 uses
  %i.go = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.go, ptr %i.aj, align 8
  %i.gp = insertelement <2 x float> %i.gl, float 0.000000e+00, i64 1
  store <2 x float> %i.gp, ptr %i.al, align 8, !tbaa !73
  %i.gq = load <2 x float>, ptr %i.ae, align 4, !tbaa !57 ; 5 uses
  %i.gr = fsub <2 x float> %i.gh, %i.gq           ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.gd, i64 1 ; 2 uses
  %i.gu = fsub <2 x float> %i.gf, %i.gt           ; 2 uses
  %i.gv = fsub <2 x float> %i.gl, %i.gt           ; 2 uses
  %i.gw = fsub <2 x float> %i.gn, %i.gq           ; 2 uses
  %i.gx = fneg <2 x float> %i.gw
  %i.gy = fmul <2 x float> %i.gu, %i.gx
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gv, <2 x float> %i.gy) ; 3 uses
  %i.ha = extractelement <2 x float> %i.gq, i64 1
  %i.hb = load <1 x float>, ptr %i.ar, align 4
  %i.hc = load float, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.hd = insertelement <4 x float> %i.fw, float %i.hc, i64 1
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.dk, <4 x float> %i.gc) ; 3 uses
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hh = fadd <2 x float> %i.t, %i.hg            ; 3 uses
  %i.hi = shufflevector <4 x float> %i.hf, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hj = fadd <2 x float> %i.cu, %i.hi           ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> %i.hj, <2 x i32> <i32 3, i32 0>
  %i.hl = shufflevector <2 x float> %i.hh, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.hk, ptr %i.ao, align 8
  store <2 x float> %i.hl, ptr %i.ap, align 8, !tbaa !73
  %i.hm = shufflevector <1 x float> %i.hb, <1 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x float> %i.de, %i.hm
  %i.ho = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.cv, <2 x float> %i.hn)
  %i.hq = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.dd, <2 x float> %i.hp) ; 2 uses
  %i.ht = shufflevector <4 x float> %i.hf, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> %i.hs, <2 x i32> <i32 3, i32 1>
  %i.hv = fadd <2 x float> %i.cu, %i.hu           ; 3 uses
  %i.hw = fadd <2 x float> %i.t, %i.hs            ; 2 uses
  %i.hx = shufflevector <2 x float> %i.hv, <2 x float> %i.hw, <2 x i32> <i32 1, i32 2>
  %i.hy = insertelement <2 x float> %i.hv, float 0.000000e+00, i64 1
  store <2 x float> %i.hx, ptr %i.aq, align 8
  store <2 x float> %i.hy, ptr %i.as, align 8, !tbaa !73
  %i.hz = load <2 x float>, ptr %i.am, align 4, !tbaa !57 ; 5 uses
  %i.ia = fsub <2 x float> %i.hh, %i.hz           ; 2 uses
  %i.ib = shufflevector <2 x float> %i.hz, <2 x float> %i.ft, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ic = fsub <2 x float> %i.hj, %i.ib           ; 2 uses
  %i.id = fsub <2 x float> %i.hv, %i.ib           ; 2 uses
  %i.ie = fsub <2 x float> %i.hw, %i.hz           ; 2 uses
  %i.if = fneg <2 x float> %i.ie
  %i.ig = fmul <2 x float> %i.ic, %i.if
  %i.ih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.id, <2 x float> %i.ig) ; 3 uses
  %i.ii = shufflevector <2 x float> %i.gv, <2 x float> %i.id, <2 x i32> <i32 1, i32 3>
  %i.ij = fneg <2 x float> %i.ii
  %i.ik = shufflevector <2 x float> %i.gr, <2 x float> %i.ia, <2 x i32> <i32 0, i32 2>
  %i.il = fmul <2 x float> %i.ik, %i.ij
  %i.im = shufflevector <2 x float> %i.gu, <2 x float> %i.ic, <2 x i32> <i32 1, i32 3>
  %i.in = shufflevector <2 x float> %i.gw, <2 x float> %i.ie, <2 x i32> <i32 0, i32 2>
  %i.io = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.in, <2 x float> %i.il) ; 4 uses
  %i.ip = shufflevector <2 x float> %i.gz, <2 x float> %i.ih, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.iq = fmul <2 x float> %i.ip, %i.ip
  %i.ir = shufflevector <2 x float> %i.gz, <2 x float> %i.ih, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.is = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.ir, <2 x float> %i.iq)
  %i.it = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.io, <2 x float> %i.is)
  %i.iu = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.it)
  %i.iv = fdiv <2 x float> splat (float 1.000000e+00), %i.iu ; 4 uses
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x float> %i.gz, %i.iw           ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.io, %i.iv
  %i.iy = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fmul <2 x float> %i.gq, %shift
  %i.iz = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.ja = extractelement <2 x float> %i.ix, i64 0
  %i.jb = call float @llvm.fmuladd.f32(float %i.gd, float %i.ja, float %i.iz)
  %i.jc = call noundef float @llvm.fmuladd.f32(float %i.ha, float %i.iy, float %i.jb)
  store <2 x float> %i.ix, ptr %i.at, align 8, !tbaa !57
  store float %i.iy, ptr %i.au, align 8, !tbaa !57
  store float %i.jc, ptr %i.av, align 4, !tbaa !57
  %i.jd = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = fmul <2 x float> %i.ih, %i.jd           ; 3 uses
  %foldExtExtBinop114 = fmul <2 x float> %i.io, %i.iv
  %i.jf = extractelement <2 x float> %foldExtExtBinop114, i64 1 ; 2 uses
  %shift116 = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop117 = fmul <2 x float> %i.hz, %shift116
  %i.jg = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.jh = extractelement <2 x float> %i.je, i64 0
  %i.ji = extractelement <2 x float> %i.ft, i64 0
  %i.jj = call float @llvm.fmuladd.f32(float %i.ji, float %i.jh, float %i.jg)
  %i.jk = extractelement <2 x float> %i.hz, i64 1
  %i.jl = call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.jf, float %i.jj)
  store <2 x float> %i.je, ptr %i.aw, align 8, !tbaa !57
  store float %i.jf, ptr %i.ax, align 8, !tbaa !57
  store float %i.jl, ptr %i.ay, align 4, !tbaa !57
  %i.jm = call noundef zeroext i1 @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8)
  br i1 %i.jm, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.jn = call noundef zeroext i1 @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(280) %9)
  %i.jo = load i32, ptr %i.az, align 4            ; 2 uses
  %.not1997 = icmp ne i32 %i.jo, 0
  %or.cond.not = select i1 %i.jn, i1 %.not1997, i1 false
  br i1 %or.cond.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %10 = sext i32 %i.jo to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit
  %indvars.iv = phi i64 [ %10, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.jp = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.jq = load float, ptr %9, align 4, !tbaa !163
  %i.jr = fneg float %i.jq
  %i.js = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.jt = load i32, ptr %i.bd, align 4, !tbaa !27
  %i.ju = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(52) %i.js, i32 noundef %i.jt, i32 noundef %i.ju), !inline_history !85
  %i.jy = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.jz = load i32, ptr %i.be, align 4, !tbaa !29
  %i.ka = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.kb = load ptr, ptr %i.jy, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(52) %i.jy, i32 noundef %i.jz, i32 noundef %i.ka), !inline_history !85
  %i.ke = load ptr, ptr %i.bf, align 8, !tbaa !23 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.d, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit

bb.d:                                             ; preds = %.lr.ph
  %i.kg = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.kh = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.ki = load ptr, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = call noundef ptr %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kg, ptr noundef %i.kh), !inline_history !1 ; 2 uses
  store ptr %i.km, ptr %i.bf, align 8, !tbaa !23
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit

_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit: ; preds = %.lr.ph, %bb.d
  %i.kn = phi ptr [ %i.km, %bb.d ], [ %i.ke, %.lr.ph ]
  %i.ko = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kn, ptr %i.kp, align 8, !tbaa !40
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(52) %i.ko, ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.jp, float noundef %i.jr), !inline_history !85
  %.not19 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !157

.loopexit:                                        ; preds = %_ZN27btGImpactCollisionAlgorithm15addContactPointEPK24btCollisionObjectWrapperS2_RK9btVector3S5_f.exit, %bb.c, %bb.b
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !158

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.kt = load ptr, ptr %3, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 232
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(280) %3)
  %i.kw = load ptr, ptr %4, align 8, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 232
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(280) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

declare noundef zeroext i1 @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(72)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEPK24btCollisionObjectWrapperS2_PK23btGImpactShapeInterfaceS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btTransform, align 8         ; 16 uses
  %6 = alloca %class.btTransform, align 8         ; 16 uses
  %7 = alloca %class.btPairSet, align 8           ; 10 uses
  %8 = alloca %class.GIM_ShapeRetriever, align 8  ; 17 uses
  %9 = alloca %class.GIM_ShapeRetriever, align 8  ; 17 uses
  %10 = alloca %class.btTransform, align 16       ; 10 uses
  %11 = alloca %class.btTransform, align 16       ; 10 uses
  %12 = alloca %class.btTransform, align 8        ; 16 uses
  %13 = alloca %class.btTransform, align 8        ; 16 uses
  %14 = alloca %struct.btCollisionObjectWrapper, align 8 ; 10 uses
  %15 = alloca %struct.btCollisionObjectWrapper, align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %3)
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.g = load i32, ptr %i.f, align 4, !tbaa !90   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !27
  %.not77121 = icmp eq i32 %i.g, 0
  br i1 %.not77121, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.c
  %i.k = phi i32 [ %i.i, %.lr.ph123 ], [ %i.p, %bb.c ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !91
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  tail call void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEPK24btCollisionObjectWrapperS2_PK23btGImpactShapeInterfaceS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.o, ptr noundef %4)
  %.pr = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.p = add nsw i32 %.pr, -1                     ; 2 uses
  store i32 %i.p, ptr %i.h, align 4, !tbaa !27
  %.not77 = icmp eq i32 %.pr, 0
  br i1 %.not77, label %.loopexit, label %bb.c, !llvm.loop !164

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %4, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(184) %4)
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.w = load i32, ptr %i.v, align 4, !tbaa !90   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.y = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !29
  %.not76118 = icmp eq i32 %i.w, 0
  br i1 %.not76118, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 208
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.f
  %i.aa = phi i32 [ %i.y, %.lr.ph120 ], [ %i.af, %bb.f ]
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !91
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93
  tail call void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEPK24btCollisionObjectWrapperS2_PK23btGImpactShapeInterfaceS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.ae)
  %.pr114 = load i32, ptr %i.x, align 4, !tbaa !29 ; 2 uses
  %i.af = add nsw i32 %.pr114, -1                 ; 2 uses
  store i32 %i.af, ptr %i.x, align 4, !tbaa !29
  %.not76 = icmp eq i32 %.pr114, 0
  br i1 %.not76, label %.loopexit, label %bb.f, !llvm.loop !165

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83, !nonnull !69, !align !84 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.ah, i64 16, i1 false), !tbaa.struct !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !94
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83, !nonnull !69, !align !84 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.ap, i64 16, i1 false), !tbaa.struct !94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !94
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !94
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  store i8 1, ptr %i.aw, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 5 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.az, align 8, !tbaa !62
  %i.ba = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 256, i32 noundef 16)
          to label %.noexc.i unwind label %bb.i   ; 12 uses

.noexc.i:                                         ; preds = %bb.g
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !61 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 13 uses
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bb, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.be = shl nuw nsw i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.bf = add nsw i64 %i.be, -4                   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.ba, i64 4
  %i.bj = getelementptr i8, ptr %i.ba, i64 %i.be
  %i.bk = getelementptr i8, ptr %i.bd, i64 4
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.be
  %bound0 = icmp ult ptr %i.ba, %i.bh
  %bound1 = icmp ult ptr %i.bd, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %bound0140 = icmp ult ptr %i.bi, %i.bl
  %bound1141 = icmp ult ptr %i.bk, %i.bj
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bm = or disjoint i64 %index, 2               ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bm
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bm
  %wide.vec = load <4 x i32>, ptr %i.bp, align 4, !tbaa !46
  %wide.vec144 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !46
  store <4 x i32> %wide.vec, ptr %i.bn, align 4, !tbaa !46
  store <4 x i32> %wide.vec144, ptr %i.bo, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
end_hunk_0
