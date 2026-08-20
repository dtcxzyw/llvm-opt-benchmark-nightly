inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl24calculateInverseDynamicsERKNS_4vecxES4_S4_PS2_:bb.a
  %i.by = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.bx, float %i.bw)
  %i.bz = load <2 x float>, ptr %i.ba, align 4, !tbaa !65 ; 7 uses
  %i.ca = shufflevector <2 x float> %i.bj, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = shufflevector <2 x float> %i.bd, <2 x float> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = shufflevector <2 x float> %i.bj, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cg = insertelement <2 x float> poison, float %i.az, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cc)
  %i.cj = shufflevector <2 x float> %i.bd, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ch, <2 x float> %i.ce)
  %i.cl = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.aj, i64 1
  %i.cn = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.ci) ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.aq, i64 1
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cn, <2 x float> %i.ck) ; 2 uses
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = insertelement <2 x float> %i.cn, float %i.az, i64 1 ; 2 uses
  %i.cu = fmul <2 x float> %i.ct, %i.cs
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.co, <2 x float> %i.cu)
  %i.cw = extractelement <2 x float> %i.co, i64 1
  %i.cx = fneg float %i.cw
  %i.cy = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = extractelement <2 x float> %i.cr, i64 0
  %i.db = tail call float @llvm.fmuladd.f32(float %i.az, float %i.da, float %i.cz)
  %i.dc = load <2 x float>, ptr %i.bb, align 4, !tbaa !65
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 156
  %i.de = load float, ptr %i.dd, align 4, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  %i.dg = extractelement <2 x float> %i.bm, i64 1
  %i.dh = load float, ptr %i.ad, align 4, !tbaa !65 ; 3 uses
  %i.di = extractelement <2 x float> %i.bn, i64 1
  %i.dj = fmul float %i.di, %i.dh
  %i.dk = extractelement <2 x float> %i.bz, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.dm = load <2 x float>, ptr %i.ah, align 4, !tbaa !65 ; 8 uses
  %i.dn = shufflevector <2 x float> %i.bc, <2 x float> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.dp = fmul <2 x float> %i.dn, %i.do
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bg, <2 x float> %i.dp)
  %i.dr = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.dr, <2 x float> %i.dq)
  %i.dt = extractelement <2 x float> %i.dm, i64 0
  %i.du = fmul float %i.dt, %i.bk
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ag, float %i.du)
  %i.dw = extractelement <2 x float> %i.dm, i64 1
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.dw, float %i.dv)
  %i.dy = fadd <2 x float> %i.ds, %i.bu
  %i.dz = fadd float %i.dx, %i.by
  %i.ea = fadd <2 x float> %i.dy, %i.cv
  %i.eb = fadd float %i.dz, %i.db
  %i.ec = fsub <2 x float> %i.ea, %i.dc
  %i.ed = fsub float %i.eb, %i.de
  %.sroa.3.12.vec.insert.i134 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ed, i64 0
  store <2 x float> %i.ec, ptr %i.df, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i134, ptr %.sroa.4254.0..sroa_idx, align 4, !tbaa !89
  %i.ee = insertelement <2 x float> %i.bp, float %i.aw, i64 0
  %i.ef = fneg <2 x float> %i.ee                  ; 3 uses
  %i.eg = fneg float %i.dg                        ; 2 uses
  %i.eh = fmul float %i.ag, %i.eg
  %foldExtExtBinop = fmul <2 x float> %i.dm, %i.ef
  %i.ei = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.bq, <2 x float> %i.ej)
  %foldExtExtBinop328 = fmul <2 x float> %i.dm, %i.ef
  %i.el = extractelement <2 x float> %foldExtExtBinop328, i64 0
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.bv, float %i.el)
  %i.en = fmul float %i.bx, %i.dh
  %i.eo = fmul float %i.av, %i.dh
  %i.ep = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.en, i64 1
  %i.er = fadd <2 x float> %i.ek, %i.eq
  %i.es = fadd float %i.em, %i.dj
  %i.et = fmul <2 x float> %i.bz, %i.ef
  %i.eu = fmul float %i.az, %i.eg
  %i.ev = insertelement <2 x float> %i.cb, float %i.az, i64 0
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.bm, <2 x float> %i.et) ; 3 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.aw, float %i.eu) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ez = insertelement <2 x float> %i.ey, float %i.ex, i64 0
  %i.fa = fneg <2 x float> %i.ez
  %i.fb = fmul <2 x float> %i.ct, %i.fa
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ew, <2 x float> %i.fb)
  %i.fd = extractelement <2 x float> %i.ew, i64 1
  %i.fe = fneg float %i.fd
  %i.ff = fmul float %i.cy, %i.fe
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ex, float %i.ff)
  %i.fh = fadd <2 x float> %i.fc, %i.er
  %i.fi = fadd float %i.fg, %i.es
  %i.fj = load <2 x float>, ptr %i.dl, align 4, !tbaa !65
  %i.fk = fsub <2 x float> %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !65
  %i.fn = fsub float %i.fi, %i.fm
  %.sroa.3.12.vec.insert.i164 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  store <2 x float> %i.fk, ptr %i.fo, align 4
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i164, ptr %.sroa.4240.0..sroa_idx, align 4, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = load i32, ptr %i.s, align 4, !tbaa !38  ; 3 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next, %i.fq
  br i1 %i.fr, label %bb.f, label %.preheader261, !llvm.loop !129

.preheader260:                                    ; preds = %._crit_edge, %.preheader262, %.preheader261
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !42 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph277, label %.preheader259

.lr.ph277:                                        ; preds = %.preheader260
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !37
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !58
  %wide.trip.count294 = zext nneg i32 %i.ft to i64
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph275, %._crit_edge
  %indvars.iv288 = phi i64 [ %i.ab, %.lr.ph275 ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.gb = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.gc = getelementptr inbounds [32 x i8], ptr %i.gb, i64 %indvars.iv.next289 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !42 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph267, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %i.gg = load <2 x float>, ptr %5, align 8, !tbaa !65
  %.pre312 = load float, ptr %i.z, align 8, !tbaa !65
  br label %._crit_edge

.lr.ph267:                                        ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !41
  %i.gj = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.gk = load <2 x float>, ptr %5, align 8
  %.promoted270 = load float, ptr %i.z, align 8, !tbaa !65
  %i.gl = load <2 x float>, ptr %6, align 8
  %.promoted272 = load float, ptr %i.aa, align 8, !tbaa !65
  %wide.trip.count = zext nneg i32 %i.ge to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %i.gm = phi float [ %.pre312, %.._crit_edge_crit_edge ], [ %i.ja, %bb.h ]
  %i.gn = phi <2 x float> [ %i.gg, %.._crit_edge_crit_edge ], [ %i.ir, %bb.h ]
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.gp = getelementptr inbounds [816 x i8], ptr %i.go, i64 %indvars.iv.next289 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 68
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !65
  %i.gs = fsub <2 x float> %i.gr, %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 76
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !65
  %i.gv = fsub float %i.gu, %i.gm
  %.sroa.3.12.vec.insert.i169 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gv, i64 0
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 100
  store <2 x float> %i.gs, ptr %i.gw, align 4
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 108
  store <2 x float> %.sroa.3.12.vec.insert.i169, ptr %.sroa.4198.0..sroa_idx, align 4, !tbaa !89
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 84
  %i.gy = load <2 x float>, ptr %i.gx, align 4, !tbaa !65
  %i.gz = load <2 x float>, ptr %6, align 8, !tbaa !65
  %i.ha = fsub <2 x float> %i.gy, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 92
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !65
  %i.hd = load float, ptr %i.aa, align 8, !tbaa !65
  %i.he = fsub float %i.hc, %i.hd
  %.sroa.3.12.vec.insert.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 116
  store <2 x float> %i.ha, ptr %i.hf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i174, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hg = icmp samesign ugt i64 %indvars.iv288, 1
  br i1 %i.hg, label %bb.g, label %.preheader260, !llvm.loop !130

bb.h:                                             ; preds = %.lr.ph267, %bb.h
  %indvars.iv285 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next286, %bb.h ] ; 2 uses
  %i.hh = phi float [ %.promoted272, %.lr.ph267 ], [ %i.kc, %bb.h ]
  %i.hi = phi float [ %.promoted270, %.lr.ph267 ], [ %i.ja, %bb.h ]
  %i.hj = phi <2 x float> [ %i.gk, %.lr.ph267 ], [ %i.ir, %bb.h ]
  %i.hk = phi <2 x float> [ %i.gl, %.lr.ph267 ], [ %i.kb, %bb.h ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv285
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !67
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [816 x i8], ptr %i.gj, i64 %i.hn ; 14 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 292 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 308 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 324 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 300 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 316 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 332 ; 2 uses
  %i.hv = load float, ptr %i.hs, align 4, !tbaa !65, !noalias !131
  %i.hw = load float, ptr %i.ht, align 4, !tbaa !65, !noalias !131
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !65, !noalias !131
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 100
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !65 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !65 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 108
  %i.id = load float, ptr %i.ic, align 4, !tbaa !65 ; 2 uses
  %i.ie = fmul float %i.hw, %i.ib
  %i.if = load <2 x float>, ptr %i.hp, align 4, !tbaa !65, !noalias !131
  %i.ig = load <2 x float>, ptr %i.hq, align 4, !tbaa !65, !noalias !131
  %i.ih = load <2 x float>, ptr %i.hr, align 4, !tbaa !65, !noalias !131
  %i.ii = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x float> %i.ig, %i.ij
  %i.il = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.im, <2 x float> %i.ik)
  %i.io = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ip, <2 x float> %i.in) ; 4 uses
  %i.ir = fsub <2 x float> %i.hj, %i.iq           ; 3 uses
  store <2 x float> %i.ir, ptr %5, align 8, !tbaa !65
  %i.is = getelementptr inbounds nuw i8, ptr %i.ho, i64 116
  %i.it = getelementptr inbounds nuw i8, ptr %i.ho, i64 120
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ho, i64 124
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ho, i64 340
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ho, i64 344
  %7 = extractelement <2 x float> %i.iq, i64 0
  %8 = fneg float %7
  %i.ix = extractelement <2 x float> %i.iq, i64 1 ; 2 uses
  %i.iy = call float @llvm.fmuladd.f32(float %i.hv, float %i.hz, float %i.ie)
  %i.iz = call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.id, float %i.iy) ; 3 uses
  %i.ja = fsub float %i.hi, %i.iz                 ; 3 uses
  store float %i.ja, ptr %i.z, align 8, !tbaa !65
  %i.jb = load <2 x float>, ptr %i.hp, align 4, !tbaa !65, !noalias !134
  %i.jc = load <2 x float>, ptr %i.hq, align 4, !tbaa !65, !noalias !134
  %i.jd = load <2 x float>, ptr %i.hr, align 4, !tbaa !65, !noalias !134
  %i.je = load float, ptr %i.hs, align 4, !tbaa !65, !noalias !134
  %i.jf = load float, ptr %i.ht, align 4, !tbaa !65, !noalias !134
  %i.jg = load float, ptr %i.hu, align 4, !tbaa !65, !noalias !134
  %i.jh = load float, ptr %i.is, align 4, !tbaa !65 ; 2 uses
  %i.ji = load float, ptr %i.it, align 4, !tbaa !65 ; 2 uses
  %i.jj = load float, ptr %i.iu, align 4, !tbaa !65 ; 2 uses
  %i.jk = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jc, %i.jl
  %i.jn = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.jo, <2 x float> %i.jm)
  %i.jq = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.jr, <2 x float> %i.jp)
  %i.jt = fmul float %i.jf, %i.ji
  %i.ju = call float @llvm.fmuladd.f32(float %i.je, float %i.jh, float %i.jt)
  %i.jv = call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.jj, float %i.ju)
  %9 = load <2 x float>, ptr %i.iw, align 4, !tbaa !65 ; 3 uses
  %i.jw = load float, ptr %i.iv, align 4, !tbaa !65 ; 2 uses
  %10 = fneg float %i.iz
  %i.jx = fneg float %i.ix
  %11 = fmul float %i.jw, %10
  %12 = extractelement <2 x float> %9, i64 1
  %i.jy = fmul float %12, %i.jx
  %13 = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %14 = insertelement <2 x float> %13, float %i.iz, i64 0
  %15 = insertelement <2 x float> poison, float %i.jy, i64 0
  %16 = insertelement <2 x float> %15, float %11, i64 1
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %14, <2 x float> %16)
  %18 = extractelement <2 x float> %9, i64 0
  %19 = fmul float %18, %8
  %20 = call float @llvm.fmuladd.f32(float %i.jw, float %i.ix, float %19)
  %i.jz = fadd <2 x float> %i.js, %17
  %i.ka = fadd float %i.jv, %20
  %i.kb = fsub <2 x float> %i.hk, %i.jz           ; 2 uses
  store <2 x float> %i.kb, ptr %6, align 8, !tbaa !65
  %i.kc = fsub float %i.hh, %i.ka                 ; 2 uses
  store float %i.kc, ptr %i.aa, align 8, !tbaa !65
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !137

.preheader259:                                    ; preds = %bb.i, %.preheader260
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !42 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph279, label %.preheader258

.lr.ph279:                                        ; preds = %.preheader259
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !37
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !58
  %wide.trip.count299 = zext nneg i32 %i.ke to i64
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph277, %bb.i
  %indvars.iv291 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next292, %bb.i ] ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv291
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !67
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [816 x i8], ptr %i.fy, i64 %i.ko ; 7 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 488
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 116
  %i.ks = load float, ptr %i.kq, align 4, !tbaa !65
  %i.kt = load float, ptr %i.kr, align 4, !tbaa !65
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 492
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !65
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 120
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !65
  %i.ky = fmul float %i.kv, %i.kx
  %i.kz = call float @llvm.fmuladd.f32(float %i.ks, float %i.kt, float %i.ky)
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 496
  %i.lb = load float, ptr %i.la, align 4, !tbaa !65
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 124
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !65
  %i.le = call noundef float @llvm.fmuladd.f32(float %i.lb, float %i.ld, float %i.kz)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kp, i64 536
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !100
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.lh
  store float %i.le, ptr %i.li, align 4, !tbaa !65
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %.preheader259, label %bb.i, !llvm.loop !138

.preheader258:                                    ; preds = %bb.j, %.preheader259
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !42 ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph281, label %.preheader

.lr.ph281:                                        ; preds = %.preheader258
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !58
  %wide.trip.count304 = zext nneg i32 %i.lk to i64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph279, %bb.j
  %indvars.iv296 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next297, %bb.j ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv296
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !67
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [816 x i8], ptr %i.kj, i64 %i.lu ; 7 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 504
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 100
  %i.ly = load float, ptr %i.lw, align 4, !tbaa !65
  %i.lz = load float, ptr %i.lx, align 4, !tbaa !65
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 508
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !65
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 104
  %i.md = load float, ptr %i.mc, align 4, !tbaa !65
  %i.me = fmul float %i.mb, %i.md
  %i.mf = call float @llvm.fmuladd.f32(float %i.ly, float %i.lz, float %i.me)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lv, i64 512
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !65
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lv, i64 108
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !65
  %i.mk = call noundef float @llvm.fmuladd.f32(float %i.mh, float %i.mj, float %i.mf)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lv, i64 536
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !100
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.mn
  store float %i.mk, ptr %i.mo, align 4, !tbaa !65
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.preheader258, label %bb.j, !llvm.loop !139

.preheader:                                       ; preds = %bb.k, %.preheader258
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !42 ; 4 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !41 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !37 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !58 ; 3 uses
  %wide.trip.count309 = zext nneg i32 %i.mq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count309, 1
  %i.my = icmp eq i32 %i.mq, 1
  br i1 %i.my, label %.epil.preheader, label %.lr.ph283.new

.lr.ph283.new:                                    ; preds = %.lr.ph283
  %unroll_iter = and i64 %wide.trip.count309, 2147483646
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph281, %bb.k
  %indvars.iv301 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next302, %bb.k ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv301
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !67
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [816 x i8], ptr %i.lp, i64 %i.nb ; 7 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 116
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !65
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 536
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !100
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr [4 x i8], ptr %i.lr, i64 %i.nh ; 6 uses
  store float %i.ne, ptr %i.ni, align 4, !tbaa !65
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 120
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !65
  %i.nl = getelementptr i8, ptr %i.ni, i64 4
  store float %i.nk, ptr %i.nl, align 4, !tbaa !65
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 124
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !65
  %i.no = getelementptr i8, ptr %i.ni, i64 8
  store float %i.nn, ptr %i.no, align 4, !tbaa !65
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 100
  %i.nq = load float, ptr %i.np, align 4, !tbaa !65
  %i.nr = getelementptr i8, ptr %i.ni, i64 12
  store float %i.nq, ptr %i.nr, align 4, !tbaa !65
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nc, i64 104
  %i.nt = load float, ptr %i.ns, align 8, !tbaa !65
  %i.nu = getelementptr i8, ptr %i.ni, i64 16
  store float %i.nt, ptr %i.nu, align 4, !tbaa !65
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nc, i64 108
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !65
  %i.nx = getelementptr i8, ptr %i.ni, i64 20
  store float %i.nw, ptr %i.nx, align 4, !tbaa !65
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.preheader, label %bb.k, !llvm.loop !140

bb.l:                                             ; preds = %bb.l, %.lr.ph283.new
  %indvars.iv306 = phi i64 [ 0, %.lr.ph283.new ], [ %indvars.iv.next307.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph283.new ], [ %niter.next.1, %bb.l ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv306
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !67
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [816 x i8], ptr %i.mv, i64 %i.oa ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 116
  %i.od = load float, ptr %i.oc, align 4, !tbaa !65
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 536
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !100
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr [4 x i8], ptr %i.mx, i64 %i.og ; 3 uses
  store float %i.od, ptr %i.oh, align 4, !tbaa !65
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 120
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !65
  %i.ok = getelementptr i8, ptr %i.oh, i64 4
  store float %i.oj, ptr %i.ok, align 4, !tbaa !65
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 124
  %i.om = load float, ptr %i.ol, align 4, !tbaa !65
  %i.on = getelementptr i8, ptr %i.oh, i64 8
  store float %i.om, ptr %i.on, align 4, !tbaa !65
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv306
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !67
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [816 x i8], ptr %i.mv, i64 %i.or ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 116
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !65
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 536
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !100
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr [4 x i8], ptr %i.mx, i64 %i.ox ; 3 uses
  store float %i.ou, ptr %i.oy, align 4, !tbaa !65
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 120
  %i.pa = load float, ptr %i.oz, align 8, !tbaa !65
  %i.pb = getelementptr i8, ptr %i.oy, i64 4
  store float %i.pa, ptr %i.pb, align 4, !tbaa !65
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 124
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !65
  %i.pe = getelementptr i8, ptr %i.oy, i64 8
end_hunk_0
begin_hunk_1_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateKinematicsERKNS_4vecxES4_S4_NS1_13KinUpdateTypeE:bb.a
  %i.abk = insertelement <2 x float> poison, float %i.aab, i64 0
  %i.abl = shufflevector <2 x float> %i.abk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aas, <2 x float> %i.abl, <2 x float> %i.abj)
  %i.abn = insertelement <2 x float> poison, float %i.aaf, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aay, <2 x float> %i.abo, <2 x float> %i.abm) ; 5 uses
  %i.abq = fmul float %i.aad, %i.aah
  %i.abr = call float @llvm.fmuladd.f32(float %i.aag, float %i.aab, float %i.abq)
  %i.abs = call noundef float @llvm.fmuladd.f32(float %i.aai, float %i.aaf, float %i.abr) ; 4 uses
  store <2 x float> %i.aba, ptr %i.wi, align 4
  %i.abt = extractelement <2 x float> %i.aar, i64 0 ; 3 uses
  store float %i.abt, ptr %.sroa.5507.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6508.0..sroa_idx, align 8, !tbaa !89
  store <2 x float> %i.abg, ptr %i.wj, align 4
  %i.abu = extractelement <2 x float> %i.aar, i64 1 ; 3 uses
  store float %i.abu, ptr %.sroa.10511.16..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.11512.16..sroa_idx, align 8, !tbaa !89
  %i.abv = extractelement <2 x float> %i.abp, i64 0
  %i.abw = extractelement <2 x float> %i.abp, i64 1
  store <2 x float> %i.abp, ptr %i.wk, align 4
  store float %i.abs, ptr %.sroa.15515.32..sroa_idx, align 4
  %i.abx = shufflevector <2 x float> %i.aba, <2 x float> %i.abg, <2 x i32> <i32 1, i32 3>
  %i.aby = fmul <2 x float> %i.abx, zeroinitializer
  %i.abz = shufflevector <2 x float> %i.aba, <2 x float> %i.abg, <2 x i32> <i32 0, i32 2>
  %i.aca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abz, <2 x float> zeroinitializer, <2 x float> %i.aby)
  %i.acb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aar, <2 x float> zeroinitializer, <2 x float> %i.aca)
  %i.acc = fmul float %i.abw, 0.000000e+00
  %i.acd = call float @llvm.fmuladd.f32(float %i.abv, float 0.000000e+00, float %i.acc)
  %i.ace = call noundef float @llvm.fmuladd.f32(float %i.abs, float 0.000000e+00, float %i.acd)
  %.sroa.3.12.vec.insert.i288 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ace, i64 0
  store i32 0, ptr %.sroa.16516.32..sroa_idx, align 8
  store <2 x float> %i.acb, ptr %i.wl, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i288, ptr %i.wm, align 4, !tbaa !89
  br i1 %cond235, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.acf = load i32, ptr %i.vf, align 8, !tbaa !100 ; 3 uses
  %i.acg = load ptr, ptr %i.jr, align 8, !tbaa !58 ; 3 uses
  %i.ach = sext i32 %i.acf to i64                 ; 2 uses
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.ach
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !65
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ve, i64 356
  store float %i.acj, ptr %i.ack, align 4, !tbaa !65
  %i.acl = add nsw i32 %i.acf, 1
  %i.acm = sext i32 %i.acl to i64                 ; 2 uses
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acm
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !65
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ve, i64 360
  store float %i.aco, ptr %i.acp, align 8, !tbaa !65
  %i.acq = add nsw i32 %i.acf, 2
  %i.acr = sext i32 %i.acq to i64                 ; 2 uses
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acr
  %i.act = load float, ptr %i.acs, align 4, !tbaa !65
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ve, i64 364
  store float %i.act, ptr %i.acu, align 4, !tbaa !65
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ve, i64 372 ; 2 uses
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !65 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ve, i64 376
  %i.acy = load float, ptr %i.acx, align 8, !tbaa !65 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ve, i64 380 ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !65 ; 2 uses
  %i.adb = insertelement <2 x float> poison, float %i.acy, i64 0
  %i.adc = shufflevector <2 x float> %i.adb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.add = fmul <2 x float> %i.abg, %i.adc
  %i.ade = insertelement <2 x float> poison, float %i.acw, i64 0
  %i.adf = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.adf, <2 x float> %i.add)
  %i.adh = insertelement <2 x float> poison, float %i.ada, i64 0
  %i.adi = shufflevector <2 x float> %i.adh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abp, <2 x float> %i.adi, <2 x float> %i.adg)
  %i.adk = fmul float %i.abu, %i.acy
  %i.adl = call float @llvm.fmuladd.f32(float %i.abt, float %i.acw, float %i.adk)
  %i.adm = call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.ada, float %i.adl)
  %.sroa.3.12.vec.insert.i293 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adm, i64 0
  store <2 x float> %i.adj, ptr %i.acv, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i293, ptr %i.acz, align 4, !tbaa !89
  br i1 %i.js, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.adn = load ptr, ptr %i.jt, align 8, !tbaa !58 ; 3 uses
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.ach
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !65
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ve, i64 388
  store float %i.adp, ptr %i.adq, align 4, !tbaa !65
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.acm
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !65
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ve, i64 392
  store float %i.ads, ptr %i.adt, align 8, !tbaa !65
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.acr
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !65
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ve, i64 396
  store float %i.adv, ptr %i.adw, align 4, !tbaa !65
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ve, i64 404 ; 2 uses
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !65 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ve, i64 408
  %i.aea = load float, ptr %i.adz, align 8, !tbaa !65 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ve, i64 412 ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !65 ; 2 uses
  %i.aed = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.abg, %i.aee
  %i.aeg = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.aeh, <2 x float> %i.aef)
  %i.aej = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aek = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ael = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abp, <2 x float> %i.aek, <2 x float> %i.aei)
  %i.aem = fmul float %i.abu, %i.aea
  %i.aen = call float @llvm.fmuladd.f32(float %i.abt, float %i.ady, float %i.aem)
  %i.aeo = call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.aec, float %i.aen)
  %.sroa.3.12.vec.insert.i298 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aeo, i64 0
  store <2 x float> %i.ael, ptr %i.adx, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i298, ptr %i.aeb, align 4, !tbaa !89
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %i.aep = load i32, ptr %i.ir, align 4, !tbaa !42
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = icmp slt i64 %indvars.iv.next668, %i.aeq
  br i1 %i.aer, label %bb.q, label %._crit_edge, !llvm.loop !166

bb.u:                                             ; preds = %._crit_edge
  %i.aes = getelementptr inbounds nuw i8, ptr %i.tg, i64 356
  %i.aet = getelementptr inbounds nuw i8, ptr %i.tg, i64 212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aet, ptr noundef nonnull align 4 dereferenceable(16) %i.aes, i64 16, i1 false)
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.tg, i64 372
  %i.aev = getelementptr inbounds nuw i8, ptr %i.tg, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aev, ptr noundef nonnull align 4 dereferenceable(16) %i.aeu, i64 16, i1 false)
  %i.aew = icmp eq i32 %4, 2
  br i1 %i.aew, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.aex = getelementptr inbounds nuw i8, ptr %i.tg, i64 388
  %i.aey = getelementptr inbounds nuw i8, ptr %i.tg, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aey, ptr noundef nonnull align 4 dereferenceable(16) %i.aex, i64 16, i1 false)
  %i.aez = getelementptr inbounds nuw i8, ptr %i.tg, i64 404
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !65 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.tg, i64 408
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !65 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.tg, i64 412
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !65 ; 2 uses
  %i.aff = insertelement <2 x float> poison, float %i.afc, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = shufflevector <2 x float> %i.ts, <2 x float> %i.tt, <2 x i32> <i32 1, i32 3>
  %i.afi = fmul <2 x float> %i.afg, %i.afh
  %i.afj = insertelement <2 x float> poison, float %i.afa, i64 0
  %i.afk = shufflevector <2 x float> %i.afj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.afk, <2 x float> %i.afi)
  %i.afm = shufflevector <2 x float> %i.tv, <2 x float> %i.tx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.afn = insertelement <2 x float> poison, float %i.afe, i64 0
  %i.afo = shufflevector <2 x float> %i.afn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afm, <2 x float> %i.afo, <2 x float> %i.afl) ; 2 uses
  %i.afq = fmul float %i.afc, %i.up
  %i.afr = call float @llvm.fmuladd.f32(float %i.un, float %i.afa, float %i.afq)
  %i.afs = call noundef float @llvm.fmuladd.f32(float %i.ut, float %i.afe, float %i.afr) ; 2 uses
  %.sroa.3.12.vec.insert.i303 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afs, i64 0
  %i.aft = getelementptr inbounds nuw i8, ptr %i.tg, i64 196 ; 2 uses
  store <2 x float> %i.afp, ptr %i.aft, align 4
  %.sroa.4477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tg, i64 204 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i303, ptr %.sroa.4477.0..sroa_idx, align 4, !tbaa !89
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afv = load float, ptr %i.afu, align 8, !tbaa !65 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !65 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.afz = load float, ptr %i.afy, align 8, !tbaa !65 ; 2 uses
  %i.aga = fmul float %i.up, %i.afx
  %i.agb = call float @llvm.fmuladd.f32(float %i.un, float %i.afv, float %i.aga)
  %i.agc = call noundef float @llvm.fmuladd.f32(float %i.ut, float %i.afz, float %i.agb)
  %i.agd = insertelement <2 x float> poison, float %i.afx, i64 0
  %i.age = shufflevector <2 x float> %i.agd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agf = fmul <2 x float> %i.tz, %i.age
  %i.agg = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agh = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.agh, <2 x float> %i.agf)
  %i.agj = insertelement <2 x float> poison, float %i.afz, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afm, <2 x float> %i.agk, <2 x float> %i.agi)
  %i.agm = fsub <2 x float> %i.afp, %i.agl
  %i.agn = fsub float %i.afs, %i.agc
  %.sroa.3.12.vec.insert.i313 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agn, i64 0
  store <2 x float> %i.agm, ptr %i.aft, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i313, ptr %.sroa.4477.0..sroa_idx, align 4, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.v, %bb.u
  %i.ago = phi i1 [ false, %bb.u ], [ true, %bb.v ], [ false, %._crit_edge ]
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !38
  %i.agr = icmp sgt i32 %i.agq, 1
  br i1 %i.agr, label %.lr.ph659, label %.loopexit

.lr.ph659:                                        ; preds = %.thread
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph659, %bb.aa
  %indvars.iv670 = phi i64 [ 1, %.lr.ph659 ], [ %indvars.iv.next671, %bb.aa ] ; 3 uses
  %i.agt = load ptr, ptr %i.tf, align 8, !tbaa !37 ; 2 uses
  %i.agu = getelementptr inbounds nuw [816 x i8], ptr %i.agt, i64 %indvars.iv670 ; 40 uses
  %i.agv = load ptr, ptr %i.ags, align 8, !tbaa !41
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv670
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !67
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [816 x i8], ptr %i.agt, i64 %i.agy ; 26 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 292 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 164
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agu, i64 340 ; 2 uses
  %i.ahd = load float, ptr %i.ahb, align 4, !tbaa !65
  %i.ahe = load float, ptr %i.ahc, align 4, !tbaa !65 ; 3 uses
  %i.ahf = fadd float %i.ahd, %i.ahe              ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 168
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !65
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agu, i64 344
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !65 ; 3 uses
  %i.ahk = fadd float %i.ahh, %i.ahj              ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agz, i64 172
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !65
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agu, i64 348
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !65 ; 3 uses
  %i.ahp = fadd float %i.ahm, %i.aho              ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agu, i64 296 ; 2 uses
  %i.ahr = load <2 x float>, ptr %i.aha, align 4, !tbaa !65 ; 4 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agu, i64 300
  %i.aht = getelementptr inbounds nuw i8, ptr %i.agu, i64 308
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agu, i64 312
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agu, i64 316
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agu, i64 324
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agu, i64 328
  %i.ahy = load <2 x float>, ptr %i.aht, align 4, !tbaa !65 ; 7 uses
  %i.ahz = load <2 x float>, ptr %i.ahu, align 4, !tbaa !65 ; 8 uses
  %i.aia = load float, ptr %i.ahv, align 4, !tbaa !65 ; 3 uses
  %i.aib = load <2 x float>, ptr %i.ahw, align 4, !tbaa !65 ; 6 uses
  %i.aic = extractelement <2 x float> %i.aib, i64 0 ; 5 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agu, i64 332
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agu, i64 164
  %.sroa.4471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 172
  %i.aif = getelementptr inbounds nuw i8, ptr %i.agz, i64 244
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agz, i64 260
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agz, i64 276
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agz, i64 248
  %i.aij = getelementptr inbounds nuw i8, ptr %i.agz, i64 264
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agz, i64 280
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agz, i64 252
  %i.aim = getelementptr inbounds nuw i8, ptr %i.agz, i64 268
  %i.ain = getelementptr inbounds nuw i8, ptr %i.agz, i64 284
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agu, i64 244
  %i.aip = load <2 x float>, ptr %i.ahq, align 4, !tbaa !65 ; 8 uses
  %i.aiq = load float, ptr %i.ahs, align 4, !tbaa !65
  %i.air = insertelement <2 x float> poison, float %i.ahk, i64 0
  %i.ais = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ait = shufflevector <2 x float> %i.aip, <2 x float> %i.ahz, <2 x i32> <i32 0, i32 2>
  %i.aiu = fmul <2 x float> %i.ais, %i.ait
  %i.aiv = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aiw = insertelement <2 x float> poison, float %i.ahf, i64 0
  %i.aix = shufflevector <2 x float> %i.aiw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiv, <2 x float> %i.aix, <2 x float> %i.aiu)
  %i.aiz = insertelement <2 x float> poison, float %i.aiq, i64 0
  %i.aja = insertelement <2 x float> %i.aiz, float %i.aia, i64 1
  %i.ajb = insertelement <2 x float> poison, float %i.ahp, i64 0
  %i.ajc = shufflevector <2 x float> %i.ajb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aja, <2 x float> %i.ajc, <2 x float> %i.aiy)
  store <2 x float> %i.ajd, ptr %i.aie, align 4
  %i.aje = load <2 x float>, ptr %i.aif, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajf = load <2 x float>, ptr %i.aig, align 4, !tbaa !65, !noalias !167 ; 3 uses
  %i.ajg = load <2 x float>, ptr %i.aih, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajh = shufflevector <2 x float> %i.aip, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aji = shufflevector <2 x float> %i.ajf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajj = insertelement <4 x float> %i.aji, float 1.000000e+00, i64 3
  %i.ajk = shufflevector <2 x float> %i.aje, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajl = insertelement <4 x float> %i.ajk, float 0.000000e+00, i64 3
  %i.ajm = shufflevector <2 x float> %i.ahr, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ajn = shufflevector <2 x float> %i.ajg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajo = insertelement <4 x float> %i.ajn, float 0.000000e+00, i64 3
  %i.ajp = shufflevector <2 x float> %i.aip, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.agu, i64 260
  %i.ajr = load <2 x float>, ptr %i.aij, align 4, !tbaa !65, !noalias !167 ; 3 uses
  %i.ajs = load float, ptr %i.aim, align 4, !tbaa !65, !noalias !167
  %i.ajt = load <2 x float>, ptr %i.aii, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.aju = load float, ptr %i.ail, align 4, !tbaa !65, !noalias !167
  %i.ajv = load <2 x float>, ptr %i.aik, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajw = load float, ptr %i.ain, align 4, !tbaa !65, !noalias !167
  %i.ajx = shufflevector <2 x float> %i.ajr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajy = shufflevector <4 x float> %i.ajj, <4 x float> %i.ajx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajz = fmul <4 x float> %i.ajh, %i.ajy
  %i.aka = shufflevector <2 x float> %i.ajt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.akb = shufflevector <4 x float> %i.ajl, <4 x float> %i.aka, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.akc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akb, <4 x float> %i.ajm, <4 x float> %i.ajz)
  %i.akd = shufflevector <2 x float> %i.ajv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ake = shufflevector <4 x float> %i.ajo, <4 x float> %i.akd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.akf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ake, <4 x float> %i.ajp, <4 x float> %i.akc)
  %i.akg = shufflevector <2 x float> %i.ahz, <2 x float> %i.ajr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akh = insertelement <4 x float> %i.akg, float 0.000000e+00, i64 3
  %i.aki = shufflevector <2 x float> %i.ajf, <2 x float> %i.ahz, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.akj = insertelement <4 x float> %i.aki, float 1.000000e+00, i64 3
  %i.akk = fmul <4 x float> %i.akh, %i.akj
  %i.akl = shufflevector <2 x float> %i.aje, <2 x float> %i.ajt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akm = insertelement <4 x float> %i.akl, float 0.000000e+00, i64 3 ; 2 uses
  %i.akn = shufflevector <2 x float> %i.ahy, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ako = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akm, <4 x float> %i.akn, <4 x float> %i.akk)
  %i.akp = shufflevector <2 x float> %i.ajg, <2 x float> %i.ajv, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akq = insertelement <4 x float> %i.akp, float 0.000000e+00, i64 3 ; 2 uses
  %i.akr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aia, i64 0
  %i.aks = shufflevector <4 x float> %i.akr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.akt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akq, <4 x float> %i.aks, <4 x float> %i.ako)
  store <4 x float> %i.akf, ptr %i.aio, align 4
  store <4 x float> %i.akt, ptr %i.ajq, align 4
  %i.aku = getelementptr inbounds nuw i8, ptr %i.agu, i64 276
  %i.akv = load <2 x float>, ptr %i.ahx, align 4, !tbaa !65 ; 5 uses
  %i.akw = load float, ptr %i.aid, align 4, !tbaa !65 ; 5 uses
  %i.akx = extractelement <2 x float> %i.akv, i64 0 ; 5 uses
  %i.aky = fmul float %i.ahk, %i.akx
  %i.akz = call float @llvm.fmuladd.f32(float %i.aic, float %i.ahf, float %i.aky)
  %i.ala = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.ahp, float %i.akz)
  %.sroa.3.12.vec.insert.i323 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ala, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i323, ptr %.sroa.4471.0..sroa_idx, align 4, !tbaa !89
  %i.alb = shufflevector <2 x float> %i.akv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.alc = shufflevector <2 x float> %i.ajf, <2 x float> %i.ajr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ald = insertelement <4 x float> %i.alc, float 1.000000e+00, i64 3
  %i.ale = insertelement <4 x float> %i.ald, float %i.ajs, i64 2
  %i.alf = fmul <4 x float> %i.alb, %i.ale
  %i.alg = insertelement <4 x float> %i.akm, float %i.aju, i64 2
  %i.alh = shufflevector <2 x float> %i.aib, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ali = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alg, <4 x float> %i.alh, <4 x float> %i.alf)
  %i.alj = insertelement <4 x float> %i.akq, float %i.ajw, i64 2
  %i.alk = shufflevector <2 x float> %i.akv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.all = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alj, <4 x float> %i.alk, <4 x float> %i.ali)
  store <4 x float> %i.all, ptr %i.aku, align 4
  br i1 %.not228, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.alm = getelementptr inbounds nuw i8, ptr %i.agz, i64 212 ; 2 uses
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !65 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.agz, i64 216 ; 2 uses
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !65 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.agz, i64 220 ; 2 uses
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !65 ; 2 uses
  %i.als = extractelement <2 x float> %i.ahz, i64 0
  %i.alt = fmul float %i.akx, %i.alp
  %i.alu = call float @llvm.fmuladd.f32(float %i.aic, float %i.aln, float %i.alt)
  %i.alv = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.alr, float %i.alu)
  %i.alw = getelementptr inbounds nuw i8, ptr %i.agu, i64 356
  %i.alx = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahz, <2 x i32> <i32 1, i32 2>
  %i.aly = insertelement <2 x float> poison, float %i.alp, i64 0
  %i.alz = shufflevector <2 x float> %i.aly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ama = fmul <2 x float> %i.alx, %i.alz
  %i.amb = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2>
  %i.amc = insertelement <2 x float> poison, float %i.aln, i64 0
  %i.amd = shufflevector <2 x float> %i.amc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ame = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amb, <2 x float> %i.amd, <2 x float> %i.ama)
  %i.amf = shufflevector <2 x float> %i.aip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amg = insertelement <2 x float> %i.amf, float %i.aia, i64 1 ; 2 uses
  %i.amh = insertelement <2 x float> poison, float %i.alr, i64 0
  %i.ami = shufflevector <2 x float> %i.amh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amg, <2 x float> %i.ami, <2 x float> %i.ame)
  %i.amk = load <2 x float>, ptr %i.alw, align 4, !tbaa !65
  %i.aml = fadd <2 x float> %i.amk, %i.amj
  %i.amm = getelementptr inbounds nuw i8, ptr %i.agu, i64 364
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !65
  %i.amo = fadd float %i.alv, %i.amn
  %.sroa.3.12.vec.insert.i333 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.amo, i64 0
  %i.amp = getelementptr inbounds nuw i8, ptr %i.agu, i64 212
  store <2 x float> %i.aml, ptr %i.amp, align 4
  %.sroa.4464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 220
  store <2 x float> %.sroa.3.12.vec.insert.i333, ptr %.sroa.4464.0..sroa_idx, align 4, !tbaa !89
  %i.amq = getelementptr inbounds nuw i8, ptr %i.agz, i64 180
  %i.amr = load float, ptr %i.alo, align 4, !tbaa !65 ; 2 uses
  %i.ams = load float, ptr %i.alq, align 4, !tbaa !65 ; 2 uses
  %i.amt = fneg float %i.ahj
  %i.amu = fmul float %i.ams, %i.amt
  %i.amv = call float @llvm.fmuladd.f32(float %i.amr, float %i.aho, float %i.amu)
  %i.amw = load float, ptr %i.alm, align 4, !tbaa !65 ; 2 uses
  %i.amx = fneg float %i.aho
  %i.amy = fmul float %i.amw, %i.amx
  %i.amz = call float @llvm.fmuladd.f32(float %i.ams, float %i.ahe, float %i.amy)
  %i.ana = fneg float %i.ahe
  %i.anb = fmul float %i.amr, %i.ana
  %i.anc = call float @llvm.fmuladd.f32(float %i.amw, float %i.ahj, float %i.anb)
  %i.and = load float, ptr %i.amq, align 4, !tbaa !65
  %i.ane = fadd float %i.and, %i.amv
  %i.anf = getelementptr inbounds nuw i8, ptr %i.agz, i64 184
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !65
  %i.anh = fadd float %i.ang, %i.amz
  %i.ani = getelementptr inbounds nuw i8, ptr %i.agz, i64 188
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !65
  %i.ank = fadd float %i.anc, %i.anj
  %i.anl = getelementptr inbounds nuw i8, ptr %i.agu, i64 372
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !65
  %i.ann = fadd float %i.ane, %i.anm              ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.agu, i64 376
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !65
  %i.anq = fadd float %i.anh, %i.anp              ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.agu, i64 380
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !65
  %i.ant = fadd float %i.ank, %i.ans              ; 2 uses
  %i.anu = fmul float %i.als, %i.anq
  %i.anv = extractelement <2 x float> %i.aip, i64 0
  %i.anw = fmul float %i.anv, %i.anq
  %i.anx = insertelement <2 x float> poison, float %i.ann, i64 0
  %i.any = shufflevector <2 x float> %i.anx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anz = insertelement <2 x float> poison, float %i.anw, i64 0
  %i.aoa = insertelement <2 x float> %i.anz, float %i.anu, i64 1
  %i.aob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiv, <2 x float> %i.any, <2 x float> %i.aoa)
  %i.aoc = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.aod = shufflevector <2 x float> %i.aoc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amg, <2 x float> %i.aod, <2 x float> %i.aob)
  %i.aof = fmul float %i.akx, %i.anq
  %i.aog = call float @llvm.fmuladd.f32(float %i.aic, float %i.ann, float %i.aof)
  %i.aoh = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.ant, float %i.aog)
  %.sroa.3.12.vec.insert.i353 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aoh, i64 0
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.agu, i64 180
  store <2 x float> %i.aoe, ptr %i.aoi, align 4
  %.sroa.4460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 188
  store <2 x float> %.sroa.3.12.vec.insert.i353, ptr %.sroa.4460.0..sroa_idx, align 4, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ago, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.agz, i64 228 ; 2 uses
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !65 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.agz, i64 232 ; 2 uses
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !65 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.agz, i64 236 ; 2 uses
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !65 ; 2 uses
  %i.aop = fmul float %i.aom, %i.akx
  %i.aoq = call float @llvm.fmuladd.f32(float %i.aic, float %i.aok, float %i.aop)
  %i.aor = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.aoo, float %i.aoq)
  %i.aos = getelementptr inbounds nuw i8, ptr %i.agu, i64 356
  %i.aot = getelementptr inbounds nuw i8, ptr %i.agz, i64 212
  %i.aou = getelementptr inbounds nuw i8, ptr %i.agz, i64 216
  %i.aov = getelementptr inbounds nuw i8, ptr %i.agz, i64 220
  %i.aow = getelementptr inbounds nuw i8, ptr %i.agu, i64 360
  %i.aox = load float, ptr %i.aos, align 4, !tbaa !65 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.agu, i64 388
  %i.aoz = load <2 x float>, ptr %i.aha, align 4, !tbaa !65 ; 4 uses
  %i.apa = load float, ptr %i.ahq, align 4, !tbaa !65
  %i.apb = insertelement <2 x float> poison, float %i.aom, i64 0
  %i.apc = shufflevector <2 x float> %i.apb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apd = shufflevector <2 x float> %i.aoz, <2 x float> %i.ahy, <2 x i32> <i32 1, i32 3>
  %i.ape = fmul <2 x float> %i.apc, %i.apd
  %i.apf = shufflevector <2 x float> %i.aoz, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.apg = insertelement <2 x float> poison, float %i.aok, i64 0
  %i.aph = shufflevector <2 x float> %i.apg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.api = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apf, <2 x float> %i.aph, <2 x float> %i.ape)
  %i.apj = shufflevector <2 x float> %i.aip, <2 x float> %i.ahz, <2 x i32> <i32 1, i32 3>
  %i.apk = insertelement <2 x float> poison, float %i.aoo, i64 0
  %i.apl = shufflevector <2 x float> %i.apk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apj, <2 x float> %i.apl, <2 x float> %i.api)
  %i.apn = shufflevector <2 x float> %i.aib, <2 x float> %i.aoz, <2 x i32> <i32 1, i32 3>
  %i.apo = shufflevector <2 x float> %i.ahy, <2 x float> %i.aib, <2 x i32> <i32 1, i32 3>
  %i.app = shufflevector <2 x float> %i.aib, <2 x float> %i.aoz, <2 x i32> <i32 0, i32 2>
  %i.apq = shufflevector <2 x float> %i.ahy, <2 x float> %i.aib, <2 x i32> <i32 0, i32 2>
  %i.apr = shufflevector <2 x float> %i.akv, <2 x float> %i.aip, <2 x i32> <i32 1, i32 3>
  %i.aps = shufflevector <2 x float> %i.ahz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.apt = shufflevector <2 x float> %i.aps, <2 x float> %i.akv, <2 x i32> <i32 0, i32 3>
  %i.apu = load <2 x float>, ptr %i.aow, align 4, !tbaa !65 ; 3 uses
  %i.apv = shufflevector <2 x float> %i.apu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.apw = insertelement <2 x float> %i.apv, float %i.aox, i64 1
  %i.apx = extractelement <2 x float> %i.apu, i64 0
  %i.apy = load <2 x float>, ptr %i.aoy, align 4, !tbaa !65
  %i.apz = getelementptr inbounds nuw i8, ptr %i.agu, i64 396
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !65
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.agu, i64 228
  %.sroa.4452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 236
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.agz, i64 196
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !65
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.agz, i64 200
  %i.aqf = load <2 x float>, ptr %i.aot, align 4, !tbaa !65 ; 7 uses
  %i.aqg = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aqh = fmul <2 x float> %i.apn, %i.aqg
  %i.aqi = fmul <2 x float> %i.apo, %i.aqg
  %i.aqj = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.app, <2 x float> %i.aqj, <2 x float> %i.aqh)
  %i.aql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apq, <2 x float> %i.aqj, <2 x float> %i.aqi)
  %i.aqm = load <3 x float>, ptr %i.ahc, align 4, !tbaa !65 ; 4 uses
  %i.aqn = shufflevector <3 x float> %i.aqm, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.aqo = fneg <3 x float> %i.aqm                ; 3 uses
  %i.aqp = shufflevector <3 x float> %i.aqo, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aqq = extractelement <3 x float> %i.aqo, i64 1
  %i.aqr = extractelement <3 x float> %i.aqm, i64 2
  %i.aqs = extractelement <3 x float> %i.aqo, i64 0
  %i.aqt = extractelement <3 x float> %i.aqm, i64 1
  %i.aqu = extractelement <2 x float> %i.aqf, i64 0
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.agu, i64 372
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.agu, i64 380
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !65 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.agu, i64 376
  %i.aqy = load <2 x float>, ptr %i.aou, align 4, !tbaa !65 ; 5 uses
  %i.aqz = load float, ptr %i.aov, align 4, !tbaa !65 ; 2 uses
  %i.ara = shufflevector <2 x float> %i.aqy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.arb = load <2 x float>, ptr %i.aqe, align 4, !tbaa !65
  %i.arc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apr, <2 x float> %i.ara, <2 x float> %i.aqk) ; 2 uses
  %i.ard = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apt, <2 x float> %i.ara, <2 x float> %i.aql) ; 2 uses
  %i.are = fneg <2 x float> %i.ard
  %i.arf = fmul <2 x float> %i.apw, %i.are
  %i.arg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apu, <2 x float> %i.arc, <2 x float> %i.arf)
  %i.arh = extractelement <2 x float> %i.arc, i64 1
  %i.ari = fneg float %i.arh
  %i.arj = fmul float %i.apx, %i.ari
  %i.ark = extractelement <2 x float> %i.ard, i64 0
  %i.arl = call float @llvm.fmuladd.f32(float %i.aox, float %i.ark, float %i.arj)
  %i.arm = fsub <2 x float> %i.apm, %i.arg
  %i.arn = fsub float %i.aor, %i.arl
  %i.aro = fadd <2 x float> %i.apy, %i.arm
  %i.arp = fadd float %i.arn, %i.aqa
  %.sroa.3.12.vec.insert.i378 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arp, i64 0
  store <2 x float> %i.aro, ptr %i.aqb, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i378, ptr %.sroa.4452.0..sroa_idx, align 4, !tbaa !89
  %i.arq = load float, ptr %i.aon, align 4, !tbaa !65 ; 2 uses
  %i.arr = fmul float %i.arq, %i.aqq
  %i.ars = load <2 x float>, ptr %i.aoj, align 4, !tbaa !65 ; 2 uses
  %i.art = load float, ptr %i.aol, align 4, !tbaa !65
  %i.aru = call float @llvm.fmuladd.f32(float %i.art, float %i.aqr, float %i.arr)
  %i.arv = fadd float %i.aru, %i.aqd
  %i.arw = shufflevector <2 x float> %i.ars, <2 x float> %i.aqf, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.arx = shufflevector <2 x float> %i.aqy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ary = shufflevector <4 x float> %i.arw, <4 x float> %i.arx, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.arz = fmul <4 x float> %i.ary, %i.aqp
  %i.asa = shufflevector <2 x float> %i.ars, <2 x float> %i.aqf, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.asb = insertelement <4 x float> %i.asa, float %i.arq, i64 2
  %i.asc = shufflevector <4 x float> %i.asb, <4 x float> %i.arx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.asd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asc, <4 x float> %i.aqn, <4 x float> %i.arz) ; 4 uses
  %i.ase = shufflevector <4 x float> %i.asd, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.asf = fadd <2 x float> %i.arb, %i.ase
  %i.asg = extractelement <2 x float> %i.aqy, i64 0 ; 3 uses
  %i.ash = fmul float %i.asg, %i.aqs
  %13 = call float @llvm.fmuladd.f32(float %i.aqu, float %i.aqt, float %i.ash) ; 2 uses
  %i.asi = extractelement <4 x float> %i.asd, i64 3
  %i.asj = fneg float %i.asi
  %i.ask = fmul float %i.aqz, %i.asj
  %i.asl = call float @llvm.fmuladd.f32(float %i.asg, float %13, float %i.ask)
  %i.asm = shufflevector <4 x float> %i.asd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.asn = insertelement <2 x float> %i.asm, float %13, i64 0
  %i.aso = fneg <2 x float> %i.asn
  %i.asp = shufflevector <2 x float> %i.aqf, <2 x float> %i.aqy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.asq = fmul <2 x float> %i.asp, %i.aso
  %i.asr = shufflevector <2 x float> %i.aqy, <2 x float> %i.aqf, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ass = shufflevector <4 x float> %i.asd, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ast = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asr, <2 x float> %i.ass, <2 x float> %i.asq)
  %i.asu = fadd float %i.arv, %i.asl
  %i.asv = fadd <2 x float> %i.asf, %i.ast
  %14 = load float, ptr %12, align 4, !tbaa !65
  %15 = load <2 x float>, ptr %i.aqv, align 4, !tbaa !65 ; 2 uses
  %i.asw = fneg float %14
  %i.asx = fmul float %i.aqz, %i.asw
  %i.asy = call float @llvm.fmuladd.f32(float %i.asg, float %i.aqx, float %i.asx)
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asz = insertelement <2 x float> %16, float %i.aqx, i64 0
  %i.ata = fneg <2 x float> %i.asz
  %i.atb = fmul <2 x float> %i.asp, %i.ata
  %i.atc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asr, <2 x float> %15, <2 x float> %i.atb)
  %i.atd = fmul float %i.asy, 2.000000e+00
  %i.ate = fmul <2 x float> %i.atc, splat (float 2.000000e+00)
  %i.atf = fadd float %i.asu, %i.atd
  %i.atg = fadd <2 x float> %i.asv, %i.ate        ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.agu, i64 404
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !65
  %i.atj = fadd float %i.ati, %i.atf              ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.agu, i64 408
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !65
  %i.atm = extractelement <2 x float> %i.atg, i64 0
  %i.atn = fadd float %i.atl, %i.atm              ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.agu, i64 412
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !65
  %i.atq = extractelement <2 x float> %i.atg, i64 1
  %i.atr = fadd float %i.atp, %i.atq              ; 2 uses
  %i.ats = insertelement <2 x float> %i.aps, float %i.apa, i64 0
  %i.att = insertelement <2 x float> poison, float %i.atn, i64 0
  %i.atu = shufflevector <2 x float> %i.att, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atv = fmul <2 x float> %i.ats, %i.atu
  %i.atw = insertelement <2 x float> poison, float %i.atj, i64 0
  %i.atx = shufflevector <2 x float> %i.atw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aty = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apf, <2 x float> %i.atx, <2 x float> %i.atv)
  %i.atz = shufflevector <2 x float> %i.ahz, <2 x float> %i.aip, <2 x i32> <i32 3, i32 1>
  %i.aua = insertelement <2 x float> poison, float %i.atr, i64 0
  %i.aub = shufflevector <2 x float> %i.aua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> %i.aub, <2 x float> %i.aty)
  %i.aud = fmul float %i.akx, %i.atn
  %i.aue = call float @llvm.fmuladd.f32(float %i.aic, float %i.atj, float %i.aud)
  %i.auf = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.atr, float %i.aue)
  %.sroa.3.12.vec.insert.i423 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.auf, i64 0
  %i.aug = getelementptr inbounds nuw i8, ptr %i.agu, i64 196
  store <2 x float> %i.auc, ptr %i.aug, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 204
  store <2 x float> %.sroa.3.12.vec.insert.i423, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !89
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %i.auh = load i32, ptr %i.agp, align 4, !tbaa !38
  %i.aui = sext i32 %i.auh to i64
  %i.auj = icmp slt i64 %indvars.iv.next671, %i.aui
  br i1 %i.auj, label %bb.w, label %.loopexit, !llvm.loop !170

.loopexit:                                        ; preds = %bb.aa, %.thread, %bb.d, %bb.b
  %.0224 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %.thread ], [ 0, %bb.aa ]
  ret i32 %.0224
}

declare void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN24btInverseDynamicsBullet324bodyTParentFromAxisAngleERKNS_4vec3ERKfPNS_5mat33E(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #7

declare void @_ZN24btInverseDynamicsBullet310transformZERKf(ptr dead_on_unwind writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare void @_ZN24btInverseDynamicsBullet310transformYERKf(ptr dead_on_unwind writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare void @_ZN24btInverseDynamicsBullet310transformXERKf(ptr dead_on_unwind writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl28addRelativeJacobianComponentERNS_9RigidBodyE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(816) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.c = load i32, ptr %i.b, align 4, !tbaa !107
  switch i32 %i.c, label %bb.f [
    i32 4, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.f = load float, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 3 uses
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store float %i.f, ptr %i.m, align 4, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.o = load float, ptr %i.n, align 4, !tbaa !65
  %i.p = load i32, ptr %i.i, align 4, !tbaa !53   ; 2 uses
  %i.q = add nsw i32 %i.p, %i.d
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r
  store float %i.o, ptr %i.s, align 4, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.u = load float, ptr %i.t, align 8, !tbaa !65
  %i.v = add nsw i32 %i.h, 3
  store i32 %i.v, ptr %i.g, align 8, !tbaa !56
  %i.w = shl nsw i32 %i.p, 1
  %i.x = add nsw i32 %i.w, %i.d
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.aa = load float, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 508 ; 3 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !65
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ac, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !65
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.am, float %i.ai)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58 ; 3 uses
  %i.at = sext i32 %i.y to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  store float %i.an, ptr %i.au, align 4, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.aw = load float, ptr %i.av, align 4, !tbaa !65
  %i.ax = load float, ptr %i.ab, align 8, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.az = load float, ptr %i.ay, align 4, !tbaa !65
  %i.ba = load float, ptr %i.af, align 4, !tbaa !65
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ax, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.be = load float, ptr %i.bd, align 4, !tbaa !65
  %i.bf = load float, ptr %i.al, align 8, !tbaa !65
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bf, float %i.bc)
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !53 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.y
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bj
  store float %i.bg, ptr %i.bk, align 4, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !65
  %i.bn = load float, ptr %i.ab, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !65
  %i.bq = load float, ptr %i.af, align 4, !tbaa !65
  %i.br = fmul float %i.bp, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !65
  %i.bv = load float, ptr %i.al, align 8, !tbaa !65
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float %i.bs)
  %i.bx = add nsw i32 %i.ap, 3
  store i32 %i.bx, ptr %i.ao, align 8, !tbaa !56
  %i.by = shl nsw i32 %i.bh, 1
  %i.bz = add nsw i32 %i.by, %i.y
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !67  ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58 ; 3 uses
  %i.cg = sext i32 %i.ca to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  store float 1.000000e+00, ptr %i.ch, align 4, !tbaa !65
  %i.ci = add nsw i32 %i.ca, 1
  %i.cj = load i32, ptr %i.cd, align 4, !tbaa !53 ; 2 uses
  %i.ck = add nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cl
  store float 1.000000e+00, ptr %i.cm, align 4, !tbaa !65
  %i.cn = add nsw i32 %i.ca, 2
  %i.co = add nsw i32 %i.cc, 3
  store i32 %i.co, ptr %i.cb, align 8, !tbaa !56
  %i.cp = shl nsw i32 %i.cj, 1
  %i.cq = add nsw i32 %i.cn, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cr
  store float 1.000000e+00, ptr %i.cs, align 4, !tbaa !65
  %i.ct = add nsw i32 %i.ca, 3                    ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !65
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 9 uses
  %i.db = sext i32 %i.ct to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  store float %i.cv, ptr %i.dc, align 4, !tbaa !65
  %i.dd = add nsw i32 %i.ca, 4                    ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.df = load float, ptr %i.de, align 4, !tbaa !65
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dg
  store float %i.df, ptr %i.dh, align 4, !tbaa !65
  %i.di = add nsw i32 %i.ca, 5                    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE:bb.a
  %i.kv = fmul float %i.ki, %i.ku
  %i.kw = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.kx = call float @llvm.fmuladd.f32(float %i.kw, float %i.kg, float %i.kv)
  %i.ky = load <2 x float>, ptr %i.fh, align 4, !tbaa !65, !noalias !186 ; 3 uses
  %i.kz = load float, ptr %i.fi, align 8, !tbaa !65, !noalias !186
  %i.la = shufflevector <2 x float> %i.kt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lb = insertelement <4 x float> %i.la, float 0.000000e+00, i64 3
  %i.lc = shufflevector <2 x float> %i.ky, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ld = shufflevector <4 x float> %i.lb, <4 x float> %i.lc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.le = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.kx, i64 0
  %i.lf = extractelement <4 x float> %i.kq, i64 0
  %i.lg = fmul float %i.lf, %i.ku
  %i.lh = extractelement <4 x float> %i.km, i64 0
  %i.li = call float @llvm.fmuladd.f32(float %i.kw, float %i.lh, float %i.lg)
  %i.lj = extractelement <2 x float> %i.kt, i64 0
  %i.lk = extractelement <4 x float> %i.jy, i64 0
  %i.ll = call noundef float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.li)
  %i.lm = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.ln = insertelement <4 x float> %i.lm, float 0.000000e+00, i64 2
  %i.lo = shufflevector <2 x float> %i.kr, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.lp = insertelement <4 x float> %i.lo, float 0.000000e+00, i64 2
  %i.lq = shufflevector <2 x float> %i.kt, <2 x float> %i.ky, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.lr = insertelement <4 x float> %i.lq, float 0.000000e+00, i64 2
  %.sroa.14609.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 328 ; 2 uses
  %.sroa.15610.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 332
  %i.ls = load <2 x float>, ptr %i.ff, align 4, !tbaa !65, !noalias !186 ; 3 uses
  %i.lt = load <2 x float>, ptr %i.fg, align 4, !tbaa !65, !noalias !186 ; 3 uses
  %i.lu = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lv, %i.lt
  %i.lx = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.ly, <2 x float> %i.lw)
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mb = shufflevector <4 x float> %i.le, <4 x float> %i.ma, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ld, <4 x float> %i.iv, <4 x float> %i.mb)
  %i.md = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.ln, <4 x float> %i.md, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.mf = fmul <4 x float> %i.me, %i.kq
  %i.mg = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.lp, <4 x float> %i.mg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mh, <4 x float> %i.km, <4 x float> %i.mf)
  %i.mj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lr, <4 x float> %i.jy, <4 x float> %i.mi)
  %i.mk = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ml = fmul <2 x float> %i.mk, %i.lt
  %i.mm = shufflevector <4 x float> %i.km, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.mn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.mm, <2 x float> %i.ml)
  %i.mo = insertelement <2 x float> %i.ky, float %i.kz, i64 1
  %i.mp = shufflevector <4 x float> %i.jy, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.mq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.mp, <2 x float> %i.mn)
  store <4 x float> %i.mc, ptr %i.ir, align 4
  store float %i.ll, ptr %i.iw, align 4
  store <4 x float> %i.mj, ptr %.sroa.9605.16..sroa_idx, align 8
  store <2 x float> %i.mq, ptr %.sroa.14609.32..sroa_idx, align 8
  %.sroa.16611.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 336
  store float 0.000000e+00, ptr %.sroa.16611.32..sroa_idx, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.mr = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.ms = load ptr, ptr %i.eo, align 8, !tbaa !58
  %i.mt = sext i32 %i.mr to i64
  %i.mu = getelementptr [4 x i8], ptr %i.ms, i64 %i.mt ; 3 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 12
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !65 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.hs, i64 340 ; 2 uses
  store float %i.mw, ptr %i.mx, align 4, !tbaa !65
  %i.my = getelementptr i8, ptr %i.mu, i64 16
  %i.mz = load float, ptr %i.my, align 4, !tbaa !65 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.hs, i64 344
  store float %i.mz, ptr %i.na, align 8, !tbaa !65
  %i.nb = getelementptr i8, ptr %i.mu, i64 20
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !65 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.hs, i64 348
  %i.ne = load float, ptr %.sroa.5602.0..sroa_idx, align 4, !tbaa !65
  %i.nf = load float, ptr %.sroa.10606.16..sroa_idx, align 4, !tbaa !65
  %i.ng = load <2 x float>, ptr %i.ir, align 4, !tbaa !65 ; 2 uses
  %i.nh = load <2 x float>, ptr %i.iw, align 4, !tbaa !65 ; 2 uses
  %i.ni = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = shufflevector <2 x float> %i.ng, <2 x float> %i.nh, <2 x i32> <i32 1, i32 3>
  %i.nl = fmul <2 x float> %i.nj, %i.nk
  %i.nm = shufflevector <2 x float> %i.ng, <2 x float> %i.nh, <2 x i32> <i32 0, i32 2>
  %i.nn = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> %i.no, <2 x float> %i.nl)
  %i.nq = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nr = insertelement <2 x float> %i.nq, float %i.nf, i64 1
  %i.ns = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> %i.nt, <2 x float> %i.np)
  %i.nv = load float, ptr %i.ix, align 4, !tbaa !65
  %i.nw = load float, ptr %.sroa.14609.32..sroa_idx, align 8, !tbaa !65
  %i.nx = fmul float %i.mz, %i.nw
  %i.ny = call float @llvm.fmuladd.f32(float %i.nv, float %i.mw, float %i.nx)
  %i.nz = load float, ptr %.sroa.15610.32..sroa_idx, align 4, !tbaa !65
  %i.oa = call noundef float @llvm.fmuladd.f32(float %i.nz, float %i.nc, float %i.ny)
  %.sroa.3.12.vec.insert.i215 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oa, i64 0
  store <2 x float> %i.nu, ptr %i.mx, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i215, ptr %i.nd, align 4, !tbaa !89
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %i.ob = load i32, ptr %i.ej, align 4, !tbaa !42
  %i.oc = sext i32 %i.ob to i64
  %i.od = icmp slt i64 %indvars.iv.next702, %i.oc
  br i1 %i.od, label %bb.h, label %.preheader633, !llvm.loop !189

bb.i:                                             ; preds = %.lr.ph651, %bb.i
  %indvars.iv704 = phi i64 [ 0, %.lr.ph651 ], [ %indvars.iv.next705, %bb.i ] ; 2 uses
  %i.oe = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv704
  %i.og = load i32, ptr %i.of, align 4, !tbaa !67
  %i.oh = load ptr, ptr %i.gr, align 8, !tbaa !37
  %i.oi = sext i32 %i.og to i64
  %i.oj = getelementptr inbounds [816 x i8], ptr %i.oh, i64 %i.oi ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 536 ; 3 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !100
  %i.om = load ptr, ptr %i.gs, align 8, !tbaa !58
  %i.on = sext i32 %i.ol to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.on
  call void @_ZN24btInverseDynamicsBullet310transformXERKf(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.oo)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.op = load i32, ptr %i.ok, align 8, !tbaa !100
  %i.oq = load ptr, ptr %i.gs, align 8, !tbaa !58
  %i.or = sext i32 %i.op to i64
  %i.os = getelementptr [4 x i8], ptr %i.oq, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  call void @_ZN24btInverseDynamicsBullet310transformYERKf(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.ot)
  %i.ou = load float, ptr %i.gv, align 8, !tbaa !65, !noalias !190
  %i.ov = load float, ptr %i.gz, align 8, !tbaa !65, !noalias !190 ; 2 uses
  %i.ow = load float, ptr %i.ha, align 8, !tbaa !65, !noalias !190 ; 2 uses
  %i.ox = load float, ptr %i.hb, align 8, !tbaa !65, !noalias !190 ; 2 uses
  %i.oy = load float, ptr %i.hd, align 8, !tbaa !65, !noalias !190
  %i.oz = load float, ptr %i.he, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.pa = load float, ptr %i.hf, align 4, !tbaa !65, !noalias !190 ; 3 uses
  %i.pb = load float, ptr %i.hg, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.pc = fmul float %i.ow, %i.pa
  %i.pd = call float @llvm.fmuladd.f32(float %i.ov, float %i.oz, float %i.pc)
  %i.pe = call noundef float @llvm.fmuladd.f32(float %i.ox, float %i.pb, float %i.pd) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.pf = load i32, ptr %i.ok, align 8, !tbaa !100
  %i.pg = load ptr, ptr %i.gs, align 8, !tbaa !58
  %i.ph = sext i32 %i.pf to i64
  %i.pi = getelementptr [4 x i8], ptr %i.pg, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oj, i64 440
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oj, i64 456
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oj, i64 472
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oj, i64 444
  %i.po = getelementptr inbounds nuw i8, ptr %i.oj, i64 460
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oj, i64 476
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oj, i64 448
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oj, i64 464
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oj, i64 480
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oj, i64 292
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 296
  %i.pu = load <2 x float>, ptr %10, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.pv = load <2 x float>, ptr %11, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.pw = load float, ptr %i.gw, align 4, !tbaa !65, !noalias !190
  %i.px = load <2 x float>, ptr %i.gt, align 8, !tbaa !65, !noalias !190 ; 4 uses
  %i.py = load float, ptr %i.gx, align 4, !tbaa !65, !noalias !190
  %i.pz = load <2 x float>, ptr %i.gu, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.qa = load float, ptr %i.gy, align 4, !tbaa !65, !noalias !190
  %i.qb = load <2 x float>, ptr %i.hc, align 8, !tbaa !65, !noalias !190 ; 3 uses
  %i.qc = shufflevector <2 x float> %i.px, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.qd = shufflevector <2 x float> %i.pu, <2 x float> %i.qb, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 3 uses
  %i.qe = insertelement <4 x float> %i.qd, float 1.000000e+00, i64 2
  %i.qf = fmul <4 x float> %i.qc, %i.qe
  %i.qg = shufflevector <2 x float> %i.pv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.qh = shufflevector <2 x float> %i.pu, <2 x float> %i.qb, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.qi = insertelement <4 x float> %i.qh, float -0.000000e+00, i64 2 ; 3 uses
  %i.qj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qg, <4 x float> %i.qi, <4 x float> %i.qf)
  %i.qk = shufflevector <2 x float> %i.pz, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ql = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.ou, i64 0
  %i.qm = insertelement <4 x float> %i.ql, float %i.oy, i64 3
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 3 uses
  %i.qo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qk, <4 x float> %i.qn, <4 x float> %i.qj) ; 3 uses
  %i.qp = shufflevector <2 x float> %i.pu, <2 x float> %i.px, <4 x i32> <i32 1, i32 1, i32 poison, i32 3>
  %i.qq = insertelement <4 x float> %i.qp, float 1.000000e+00, i64 2
  %i.qr = shufflevector <2 x float> %i.px, <2 x float> %i.qb, <4 x i32> <i32 1, i32 1, i32 poison, i32 3>
  %i.qs = insertelement <4 x float> %i.qr, float 1.000000e+00, i64 2
  %i.qt = fmul <4 x float> %i.qq, %i.qs
  %i.qu = shufflevector <2 x float> %i.pv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.qv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qu, <4 x float> %i.qi, <4 x float> %i.qt)
  %i.qw = shufflevector <2 x float> %i.pz, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.qx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qw, <4 x float> %i.qn, <4 x float> %i.qv) ; 3 uses
  %i.qy = shufflevector <4 x float> %i.qd, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.qz = insertelement <4 x float> %i.qy, float %i.ow, i64 3 ; 2 uses
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> %i.qd, <4 x i32> <i32 3, i32 3, i32 poison, i32 7>
  %i.rb = insertelement <4 x float> %i.ra, float 1.000000e+00, i64 2
  %i.rc = fmul <4 x float> %i.qz, %i.rb
  %i.rd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ov, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.rf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.re, <4 x float> %i.qi, <4 x float> %i.rc)
  %i.rg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ox, i64 0
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ri = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rh, <4 x float> %i.qn, <4 x float> %i.rf) ; 3 uses
  %i.rj = extractelement <2 x float> %i.px, i64 0
  %i.rk = fmul float %i.rj, %i.pa
  %i.rl = extractelement <2 x float> %i.pv, i64 0
  %21 = call float @llvm.fmuladd.f32(float %i.rl, float %i.oz, float %i.rk)
  %i.rm = extractelement <2 x float> %i.pz, i64 0
  %22 = call noundef float @llvm.fmuladd.f32(float %i.rm, float %i.pb, float %21) ; 2 uses
  %i.rn = fmul float %i.py, %i.pa
  %23 = call float @llvm.fmuladd.f32(float %i.pw, float %i.oz, float %i.rn)
  %24 = call noundef float @llvm.fmuladd.f32(float %i.qa, float %i.pb, float %23) ; 2 uses
  call void @_ZN24btInverseDynamicsBullet310transformZERKf(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %12, ptr noundef nonnull align 4 dereferenceable(4) %i.pj)
  %i.ro = load <2 x float>, ptr %12, align 8, !tbaa !65, !noalias !193 ; 3 uses
  %i.rp = load <2 x float>, ptr %i.hh, align 8, !tbaa !65, !noalias !193 ; 3 uses
  %i.rq = load <2 x float>, ptr %i.hi, align 8, !tbaa !65, !noalias !193 ; 3 uses
  %i.rr = load float, ptr %i.hl, align 4, !tbaa !65, !noalias !193
  %i.rs = load float, ptr %i.hm, align 8, !tbaa !65, !noalias !193 ; 2 uses
  %i.rt = shufflevector <2 x float> %i.rp, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ru = fmul <4 x float> %i.rt, %i.qx
  %i.rv = shufflevector <2 x float> %i.ro, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.rw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rv, <4 x float> %i.qo, <4 x float> %i.ru)
  %i.rx = shufflevector <2 x float> %i.rq, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ry = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rx, <4 x float> %i.ri, <4 x float> %i.rw) ; 3 uses
  %i.rz = shufflevector <2 x float> %i.rp, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.sa = fmul <4 x float> %i.rz, %i.qx
  %i.sb = shufflevector <2 x float> %i.ro, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.sc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sb, <4 x float> %i.qo, <4 x float> %i.sa)
  %i.sd = shufflevector <2 x float> %i.rq, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.se = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sd, <4 x float> %i.ri, <4 x float> %i.sc) ; 3 uses
  %i.sf = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.rs, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.sh = extractelement <2 x float> %i.rp, i64 0
  %25 = fmul float %24, %i.sh
  %i.si = extractelement <2 x float> %i.ro, i64 0
  %26 = call float @llvm.fmuladd.f32(float %i.si, float %22, float %25)
  %27 = extractelement <2 x float> %i.rq, i64 0
  %i.sj = call noundef float @llvm.fmuladd.f32(float %27, float %i.pe, float %26) ; 2 uses
  %i.sk = extractelement <4 x float> %i.se, i64 3
  %28 = extractelement <4 x float> %i.ry, i64 3
  %i.sl = load <4 x float>, ptr %i.hj, align 4    ; 2 uses
  %i.sm = load <4 x float>, ptr %i.hk, align 4    ; 2 uses
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.so = fmul <4 x float> %i.sn, %i.qx
  %i.sp = shufflevector <4 x float> %i.sl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 5, i32 1>
  %i.sq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sp, <4 x float> %i.qo, <4 x float> %i.so)
  %i.sr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sg, <4 x float> %i.ri, <4 x float> %i.sq) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ss = load <2 x float>, ptr %i.pl, align 8, !tbaa !65, !noalias !196 ; 2 uses
  %i.st = load float, ptr %i.po, align 4, !tbaa !65, !noalias !196 ; 2 uses
  %i.su = load <2 x float>, ptr %i.pk, align 8, !tbaa !65, !noalias !196 ; 2 uses
  %i.sv = load float, ptr %i.pn, align 4, !tbaa !65, !noalias !196 ; 2 uses
  %i.sw = insertelement <4 x float> poison, float %24, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> %i.se, <4 x i32> <i32 0, i32 0, i32 4, i32 7>
  %i.sy = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 0> ; 2 uses
  %i.sz = insertelement <4 x float> %i.sy, float %i.st, i64 3
  %i.ta = shufflevector <4 x float> %i.sm, <4 x float> %i.sz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tb = fmul <4 x float> %i.sx, %i.ta
  %i.tc = shufflevector <2 x float> %i.su, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 0> ; 2 uses
  %i.td = insertelement <4 x float> %i.tc, float %i.sv, i64 3
  %i.te = shufflevector <4 x float> %i.sl, <4 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tf = insertelement <4 x float> poison, float %22, i64 0
  %i.tg = shufflevector <4 x float> %i.tf, <4 x float> %i.ry, <4 x i32> <i32 0, i32 0, i32 4, i32 7>
  %i.th = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.te, <4 x float> %i.tg, <4 x float> %i.tb) ; 4 uses
  %i.ti = extractelement <4 x float> %i.th, i64 0
  %i.tj = call noundef float @llvm.fmuladd.f32(float %i.rr, float %i.pe, float %i.ti) ; 2 uses
  %i.tk = extractelement <4 x float> %i.th, i64 1
  %i.tl = call noundef float @llvm.fmuladd.f32(float %i.rs, float %i.pe, float %i.tk) ; 2 uses
  %i.tm = load <2 x float>, ptr %i.pm, align 8, !tbaa !65, !noalias !196 ; 3 uses
  %i.tn = load float, ptr %i.pp, align 4, !tbaa !65, !noalias !196 ; 2 uses
  %i.to = extractelement <4 x float> %i.sr, i64 0
  %i.tp = extractelement <2 x float> %i.tm, i64 0
  %i.tq = extractelement <4 x float> %i.th, i64 2
  %i.tr = call noundef float @llvm.fmuladd.f32(float %i.tp, float %i.to, float %i.tq) ; 2 uses
  %i.ts = load float, ptr %i.pq, align 8, !tbaa !65, !noalias !196 ; 3 uses
  %i.tt = load float, ptr %i.pr, align 8, !tbaa !65, !noalias !196 ; 3 uses
  %i.tu = load float, ptr %i.ps, align 8, !tbaa !65, !noalias !196 ; 3 uses
  %i.tv = insertelement <4 x float> %i.sy, float 0.000000e+00, i64 2
  %i.tw = insertelement <4 x float> %i.tv, float %i.tt, i64 1
  %i.tx = fmul <4 x float> %i.tw, %i.se
  %i.ty = insertelement <4 x float> %i.tc, float 0.000000e+00, i64 2
  %i.tz = insertelement <4 x float> %i.ty, float %i.ts, i64 1
  %i.ua = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tz, <4 x float> %i.ry, <4 x float> %i.tx)
  %i.ub = shufflevector <2 x float> %i.tm, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 0>
  %i.uc = insertelement <4 x float> %i.ub, float 0.000000e+00, i64 2
  %i.ud = insertelement <4 x float> %i.uc, float %i.tu, i64 1
  %i.ue = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ud, <4 x float> %i.sr, <4 x float> %i.ua) ; 4 uses
  %i.uf = extractelement <4 x float> %i.sr, i64 3 ; 2 uses
  %i.ug = extractelement <4 x float> %i.th, i64 3
  %i.uh = call noundef float @llvm.fmuladd.f32(float %i.tn, float %i.uf, float %i.ug) ; 2 uses
  %i.ui = fmul float %i.sk, %i.tt
  %i.uj = call float @llvm.fmuladd.f32(float %i.ts, float %28, float %i.ui)
  %i.uk = call noundef float @llvm.fmuladd.f32(float %i.tu, float %i.uf, float %i.uj) ; 2 uses
  %i.ul = fmul float %i.tj, %i.tt
  %i.um = call float @llvm.fmuladd.f32(float %i.ts, float %i.sj, float %i.ul)
  %i.un = call noundef float @llvm.fmuladd.f32(float %i.tu, float %i.tl, float %i.um) ; 2 uses
  store float %i.tr, ptr %i.pt, align 4
  store <4 x float> %i.ue, ptr %.sroa.4539.0..sroa_idx, align 8
  %.sroa.9543.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 312
  store float %i.uh, ptr %.sroa.9543.16..sroa_idx, align 8
  %.sroa.10544.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 316
  store float %i.uk, ptr %.sroa.10544.16..sroa_idx, align 4
  %.sroa.11545.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 320
  store float 0.000000e+00, ptr %.sroa.11545.16..sroa_idx, align 8, !tbaa !89
  %i.uo = getelementptr inbounds nuw i8, ptr %i.oj, i64 324
  %i.up = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = insertelement <2 x float> %i.ss, float %i.st, i64 1
  %i.us = fmul <2 x float> %i.uq, %i.ur
  %i.ut = insertelement <2 x float> %i.su, float %i.sv, i64 1
  %i.uu = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> %i.uv, <2 x float> %i.us)
  %i.ux = insertelement <2 x float> %i.tm, float %i.tn, i64 1
  %i.uy = insertelement <2 x float> poison, float %i.tl, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.va = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ux, <2 x float> %i.uz, <2 x float> %i.uw) ; 3 uses
  store <2 x float> %i.va, ptr %i.uo, align 4
  %.sroa.15548.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 332
  store float %i.un, ptr %.sroa.15548.32..sroa_idx, align 4
  %.sroa.16549.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oj, i64 336
  %i.vb = getelementptr inbounds nuw i8, ptr %i.oj, i64 340
  %i.vc = getelementptr inbounds nuw i8, ptr %i.oj, i64 348
  %i.vd = extractelement <4 x float> %i.ue, i64 0
  %i.ve = fmul float %i.vd, 0.000000e+00
  %i.vf = call float @llvm.fmuladd.f32(float %i.tr, float 0.000000e+00, float %i.ve)
  %i.vg = extractelement <4 x float> %i.ue, i64 1
  %i.vh = call noundef float @llvm.fmuladd.f32(float %i.vg, float 0.000000e+00, float %i.vf)
  %i.vi = fmul float %i.uh, 0.000000e+00
  %i.vj = extractelement <4 x float> %i.ue, i64 3
  %i.vk = call float @llvm.fmuladd.f32(float %i.vj, float 0.000000e+00, float %i.vi)
  %i.vl = call noundef float @llvm.fmuladd.f32(float %i.uk, float 0.000000e+00, float %i.vk)
  %i.vm = extractelement <2 x float> %i.va, i64 1
  %i.vn = fmul float %i.vm, 0.000000e+00
  %i.vo = extractelement <2 x float> %i.va, i64 0
  %i.vp = call float @llvm.fmuladd.f32(float %i.vo, float 0.000000e+00, float %i.vn)
  %i.vq = call noundef float @llvm.fmuladd.f32(float %i.un, float 0.000000e+00, float %i.vp)
  %.sroa.0.0.vec.insert.i218 = insertelement <2 x float> poison, float %i.vh, i64 0
  %.sroa.0.4.vec.insert.i219 = insertelement <2 x float> %.sroa.0.0.vec.insert.i218, float %i.vl, i64 1
  %.sroa.3.12.vec.insert.i220 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vq, i64 0
  store i32 0, ptr %.sroa.16549.32..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i219, ptr %i.vb, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i220, ptr %i.vc, align 4, !tbaa !89
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %i.vr = load i32, ptr %i.gn, align 4, !tbaa !42
  %i.vs = sext i32 %i.vr to i64
  %i.vt = icmp slt i64 %indvars.iv.next705, %i.vs
  br i1 %i.vt, label %bb.i, label %.loopexit634, !llvm.loop !199

.loopexit634:                                     ; preds = %bb.i, %.preheader633, %.loopexit640
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !38 ; 2 uses
  %i.vw = icmp sgt i32 %i.vv, 0
  br i1 %i.vw, label %.lr.ph658, label %._crit_edge687

.lr.ph658:                                        ; preds = %.loopexit634
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.4469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.wa = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.wb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wd = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.we = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.wf = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.wg = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.wh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.wi = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.wj = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.wk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.wm = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.wn = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.wo = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.wp = zext nneg i32 %i.vv to i64
  br label %bb.j

.loopexit632:                                     ; preds = %bb.m, %bb.j
  %i.wq = icmp sgt i64 %indvars.iv710, 1
  br i1 %i.wq, label %bb.j, label %._crit_edge659, !llvm.loop !200

._crit_edge659:                                   ; preds = %.loopexit632
  %.pre = load i32, ptr %i.vu, align 4, !tbaa !38 ; 2 uses
  %i.wr = icmp sgt i32 %.pre, 0
  br i1 %i.wr, label %.lr.ph686, label %._crit_edge687

.lr.ph686:                                        ; preds = %._crit_edge659
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 9 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 9 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.xb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.xd = zext nneg i32 %.pre to i64
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph658, %.loopexit632
  %indvars.iv710 = phi i64 [ %i.wp, %.lr.ph658 ], [ %indvars.iv.next711, %.loopexit632 ] ; 2 uses
  %indvars.iv.next711 = add nsw i64 %indvars.iv710, -1 ; 5 uses
  %i.xe = load ptr, ptr %i.vx, align 8, !tbaa !37
  %i.xf = getelementptr inbounds nuw [816 x i8], ptr %i.xe, i64 %indvars.iv.next711 ; 15 uses
  %i.xg = load float, ptr %i.xf, align 8, !tbaa !105
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 540 ; 3 uses
  store float %i.xg, ptr %i.xh, align 4, !tbaa !201
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 544 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xj, ptr noundef nonnull align 4 dereferenceable(16) %i.xi, i64 16, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 20
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 560 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.xl, ptr noundef nonnull align 4 dereferenceable(48) %i.xk, i64 16, i1 false), !tbaa.struct !88
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xf, i64 36
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xf, i64 576 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xn, ptr noundef nonnull align 4 dereferenceable(16) %i.xm, i64 16, i1 false), !tbaa.struct !88
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xf, i64 52
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xf, i64 592 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xp, ptr noundef nonnull align 4 dereferenceable(16) %i.xo, i64 16, i1 false), !tbaa.struct !88
  %i.xq = load ptr, ptr %i.vy, align 8, !tbaa !45 ; 2 uses
  %i.xr = getelementptr inbounds nuw [32 x i8], ptr %i.xq, i64 %indvars.iv.next711
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !42
  %i.xu = icmp sgt i32 %i.xt, 0
  br i1 %i.xu, label %.lr.ph654, label %.loopexit632

.lr.ph654:                                        ; preds = %bb.j
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xf, i64 552 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xf, i64 568 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xf, i64 584 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xf, i64 600 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 604
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph654, %bb.m
  %indvars.iv707 = phi i64 [ 0, %.lr.ph654 ], [ %indvars.iv.next708, %bb.m ] ; 2 uses
  %i.ya = phi ptr [ %i.xq, %.lr.ph654 ], [ %i.ale, %bb.m ]
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %i.ya, i64 %indvars.iv.next711
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !41
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv707
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !67
  %i.yg = load ptr, ptr %i.vx, align 8, !tbaa !37
  %i.yh = sext i32 %i.yf to i64
  %i.yi = getelementptr inbounds [816 x i8], ptr %i.yg, i64 %i.yh ; 17 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 292 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 308 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 324 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 300 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 316 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yi, i64 332 ; 2 uses
  %i.yp = load <2 x float>, ptr %i.yj, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.yq = load <2 x float>, ptr %i.yk, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.yr = load <2 x float>, ptr %i.yl, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.ys = load float, ptr %i.ym, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.yt = load float, ptr %i.yn, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.yu = load float, ptr %i.yo, align 4, !tbaa !65, !noalias !202 ; 5 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yi, i64 540 ; 5 uses
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !201
  %i.yx = load float, ptr %i.xh, align 4, !tbaa !201
  %i.yy = fadd float %i.yw, %i.yx
  store float %i.yy, ptr %i.xh, align 4, !tbaa !201
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yi, i64 544 ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !65 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yi, i64 548 ; 2 uses
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !65 ; 2 uses
  %i.zd = shufflevector <2 x float> %i.yq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yi, i64 552 ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !65 ; 2 uses
  %i.zg = extractelement <2 x float> %i.yr, i64 0 ; 3 uses
  %i.zh = extractelement <2 x float> %i.yr, i64 1 ; 3 uses
  %i.zi = fmul float %i.yt, %i.zc
  %i.zj = call float @llvm.fmuladd.f32(float %i.ys, float %i.za, float %i.zi)
  %i.zk = call noundef float @llvm.fmuladd.f32(float %i.yu, float %i.zf, float %i.zj)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yi, i64 340 ; 2 uses
  %i.zm = load float, ptr %i.yv, align 4, !tbaa !65 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yi, i64 348 ; 2 uses
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !65
  %i.zp = fmul float %i.zm, %i.zo
  %i.zq = fadd float %i.zk, %i.zp
  %i.zr = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zt = fmul <2 x float> %i.yq, %i.zs
  %i.zu = insertelement <2 x float> poison, float %i.za, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yp, <2 x float> %i.zv, <2 x float> %i.zt)
  %i.zx = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.zy, <2 x float> %i.zw)
  %i.aaa = load <2 x float>, ptr %i.zl, align 4, !tbaa !65 ; 2 uses
  %i.aab = insertelement <2 x float> %i.aaa, float %i.zm, i64 1
  %i.aac = insertelement <2 x float> %i.aaa, float %i.zm, i64 0
  %i.aad = fmul <2 x float> %i.aab, %i.aac
  %i.aae = fadd <2 x float> %i.zz, %i.aad
  %i.aaf = load <2 x float>, ptr %i.xj, align 8, !tbaa !65
  %i.aag = fadd <2 x float> %i.aae, %i.aaf
  store <2 x float> %i.aag, ptr %i.xj, align 8, !tbaa !65
  %i.aah = load float, ptr %i.xv, align 8, !tbaa !65
  %i.aai = fadd float %i.zq, %i.aah
  store float %i.aai, ptr %i.xv, align 8, !tbaa !65
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yi, i64 560 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yi, i64 576 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yi, i64 592
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yi, i64 596
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yi, i64 600
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !65, !noalias !205 ; 3 uses
  %i.aap = load float, ptr %i.ym, align 4, !tbaa !65, !noalias !208 ; 3 uses
end_hunk_2
