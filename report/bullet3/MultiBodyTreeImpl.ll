Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/MultiBodyTreeImpl?download=true
inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl24calculateInverseDynamicsERKNS_4vecxES4_S4_PS2_:bb.a
  %i.dh = load float, ptr %i.ad, align 4, !tbaa !68 ; 3 uses
  %i.di = extractelement <2 x float> %i.bn, i64 1
  %i.dj = fmul float %i.di, %i.dh
  %i.dk = extractelement <2 x float> %i.bz, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.dm = load <2 x float>, ptr %i.ah, align 4, !tbaa !68 ; 8 uses
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
  store <2 x float> %.sroa.3.12.vec.insert.i134, ptr %.sroa.4254.0..sroa_idx, align 4, !tbaa !77
  %i.ee = insertelement <2 x float> %i.bp, float %i.aw, i64 0
  %i.ef = fneg <2 x float> %i.ee                  ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dm, %i.ef
  %i.eg = fneg float %i.dg                        ; 2 uses
  %i.eh = fmul float %i.ag, %i.eg
  %i.ei = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.bq, <2 x float> %i.ej)
  %foldExtExtBinop328 = fmul <2 x float> %i.dm, %i.ef
  %i.el = extractelement <2 x float> %foldExtExtBinop328, i64 0
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.bv, float %i.el)
  %i.en = fmul float %i.av, %i.dh
  %i.eo = fmul float %i.bx, %i.dh
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.eo, i64 1
  %i.er = fadd <2 x float> %i.ek, %i.eq
  %i.es = fadd float %i.em, %i.dj
  %i.et = fmul float %i.az, %i.eg
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.aw, float %i.et) ; 2 uses
  %i.ev = fmul <2 x float> %i.bz, %i.ef
  %i.ew = insertelement <2 x float> %i.cb, float %i.az, i64 0
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.bm, <2 x float> %i.ev) ; 3 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ez = insertelement <2 x float> %i.ey, float %i.eu, i64 0
  %i.fa = fneg <2 x float> %i.ez
  %i.fb = fmul <2 x float> %i.ct, %i.fa
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ex, <2 x float> %i.fb)
  %i.fd = extractelement <2 x float> %i.ex, i64 1
  %i.fe = fneg float %i.fd
  %i.ff = fmul float %i.cy, %i.fe
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.az, float %i.eu, float %i.ff)
  %i.fh = fadd <2 x float> %i.fc, %i.er
  %i.fi = fadd float %i.fg, %i.es
  %i.fj = load <2 x float>, ptr %i.dl, align 4, !tbaa !68
  %i.fk = fsub <2 x float> %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !68
  %i.fn = fsub float %i.fi, %i.fm
  %.sroa.3.12.vec.insert.i164 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  store <2 x float> %i.fk, ptr %i.fo, align 4
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i164, ptr %.sroa.4240.0..sroa_idx, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = load i32, ptr %i.s, align 4, !tbaa !44  ; 3 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next, %i.fq
  br i1 %i.fr, label %bb.f, label %.preheader261, !llvm.loop !130

.preheader260:                                    ; preds = %._crit_edge, %.preheader262, %.preheader261
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !48 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph277, label %.preheader259

.lr.ph277:                                        ; preds = %.preheader260
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !47
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !60
  %wide.trip.count294 = zext nneg i32 %i.ft to i64
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph275, %._crit_edge
  %indvars.iv288 = phi i64 [ %i.ab, %.lr.ph275 ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.gb = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.gc = getelementptr inbounds [32 x i8], ptr %i.gb, i64 %indvars.iv.next289 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !48 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph267, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %i.gg = load <2 x float>, ptr %5, align 8, !tbaa !68
  %.pre312 = load float, ptr %i.z, align 8, !tbaa !68
  br label %._crit_edge

.lr.ph267:                                        ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !47
  %i.gj = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.gk = load <2 x float>, ptr %5, align 8
  %.promoted270 = load float, ptr %i.z, align 8, !tbaa !68
  %i.gl = load <2 x float>, ptr %6, align 8
  %.promoted272 = load float, ptr %i.aa, align 8, !tbaa !68
  %wide.trip.count = zext nneg i32 %i.ge to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %i.gm = phi float [ %.pre312, %.._crit_edge_crit_edge ], [ %i.jb, %bb.h ]
  %i.gn = phi <2 x float> [ %i.gg, %.._crit_edge_crit_edge ], [ %i.ir, %bb.h ]
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.gp = getelementptr inbounds [816 x i8], ptr %i.go, i64 %indvars.iv.next289 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 68
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !68
  %i.gs = fsub <2 x float> %i.gr, %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 76
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !68
  %i.gv = fsub float %i.gu, %i.gm
  %.sroa.3.12.vec.insert.i169 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gv, i64 0
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 100
  store <2 x float> %i.gs, ptr %i.gw, align 4
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 108
  store <2 x float> %.sroa.3.12.vec.insert.i169, ptr %.sroa.4198.0..sroa_idx, align 4, !tbaa !77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 84
  %i.gy = load <2 x float>, ptr %i.gx, align 4, !tbaa !68
  %i.gz = load <2 x float>, ptr %6, align 8, !tbaa !68
  %i.ha = fsub <2 x float> %i.gy, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 92
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !68
  %i.hd = load float, ptr %i.aa, align 8, !tbaa !68
  %i.he = fsub float %i.hc, %i.hd
  %.sroa.3.12.vec.insert.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 116
  store <2 x float> %i.ha, ptr %i.hf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i174, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hg = icmp samesign ugt i64 %indvars.iv288, 1
  br i1 %i.hg, label %bb.g, label %.preheader260, !llvm.loop !131

bb.h:                                             ; preds = %.lr.ph267, %bb.h
  %indvars.iv285 = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next286, %bb.h ] ; 2 uses
  %i.hh = phi float [ %.promoted272, %.lr.ph267 ], [ %i.kp, %bb.h ]
  %i.hi = phi float [ %.promoted270, %.lr.ph267 ], [ %i.jb, %bb.h ]
  %i.hj = phi <2 x float> [ %i.gk, %.lr.ph267 ], [ %i.ir, %bb.h ]
  %i.hk = phi <2 x float> [ %i.gl, %.lr.ph267 ], [ %i.ko, %bb.h ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv285
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !69
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [816 x i8], ptr %i.gj, i64 %i.hn ; 14 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 292 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 308 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 324 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 300 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 316 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 332 ; 2 uses
  %i.hv = load float, ptr %i.hs, align 4, !tbaa !68, !noalias !141
  %i.hw = load float, ptr %i.ht, align 4, !tbaa !68, !noalias !141
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !68, !noalias !141
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 100
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 108
  %i.ib = load <2 x float>, ptr %i.hp, align 4, !tbaa !68, !noalias !141
  %i.ic = load <2 x float>, ptr %i.hq, align 4, !tbaa !68, !noalias !141
  %i.id = load <2 x float>, ptr %i.hr, align 4, !tbaa !68, !noalias !141
  %i.ie = load float, ptr %i.hy, align 4, !tbaa !68 ; 2 uses
  %i.if = load float, ptr %i.hz, align 4, !tbaa !68 ; 2 uses
  %i.ig = load float, ptr %i.ia, align 4, !tbaa !68 ; 2 uses
  %i.ih = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ic, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.io, <2 x float> %i.im) ; 4 uses
  %i.iq = fmul float %i.hw, %i.if
  %i.ir = fsub <2 x float> %i.hj, %i.ip           ; 3 uses
  store <2 x float> %i.ir, ptr %5, align 8, !tbaa !68
  %i.is = getelementptr inbounds nuw i8, ptr %i.ho, i64 116
  %i.it = getelementptr inbounds nuw i8, ptr %i.ho, i64 120
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ho, i64 124
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ho, i64 340
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ho, i64 344
  %i.ix = extractelement <2 x float> %i.ip, i64 0
  %i.iy = fneg float %i.ix
  %i.iz = call float @llvm.fmuladd.f32(float %i.hv, float %i.ie, float %i.iq)
  %i.ja = call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.ig, float %i.iz) ; 3 uses
  %i.jb = fsub float %i.hi, %i.ja                 ; 3 uses
  store float %i.jb, ptr %i.z, align 8, !tbaa !68
  %i.jc = load <2 x float>, ptr %i.hp, align 4, !tbaa !68, !noalias !142
  %i.jd = load <2 x float>, ptr %i.hq, align 4, !tbaa !68, !noalias !142
  %i.je = load <2 x float>, ptr %i.hr, align 4, !tbaa !68, !noalias !142
  %i.jf = load float, ptr %i.hs, align 4, !tbaa !68, !noalias !142
  %i.jg = load float, ptr %i.ht, align 4, !tbaa !68, !noalias !142
  %i.jh = load float, ptr %i.hu, align 4, !tbaa !68, !noalias !142
  %i.ji = load float, ptr %i.is, align 4, !tbaa !68 ; 2 uses
  %i.jj = load float, ptr %i.it, align 4, !tbaa !68 ; 2 uses
  %i.jk = load float, ptr %i.iu, align 4, !tbaa !68 ; 2 uses
  %i.jl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x float> %i.jd, %i.jm
  %i.jo = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jp, <2 x float> %i.jn)
  %i.jr = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.js, <2 x float> %i.jq)
  %i.ju = fmul float %i.jg, %i.jj
  %i.jv = call float @llvm.fmuladd.f32(float %i.jf, float %i.ji, float %i.ju)
  %i.jw = call noundef float @llvm.fmuladd.f32(float %i.jh, float %i.jk, float %i.jv)
  %i.jx = load <2 x float>, ptr %i.iw, align 4, !tbaa !68 ; 3 uses
  %7 = extractelement <2 x float> %i.ip, i64 1    ; 2 uses
  %i.jy = fneg float %7
  %i.jz = extractelement <2 x float> %i.jx, i64 1
  %i.ka = fmul float %i.jz, %i.jy
  %i.kb = load float, ptr %i.iv, align 4, !tbaa !68 ; 2 uses
  %i.kc = fneg float %i.ja
  %i.kd = fmul float %i.kb, %i.kc
  %i.ke = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kf = insertelement <2 x float> %i.ke, float %i.ja, i64 0
  %i.kg = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.kd, i64 1
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.kf, <2 x float> %i.kh)
  %i.kj = extractelement <2 x float> %i.jx, i64 0
  %i.kk = fmul float %i.kj, %i.iy
  %i.kl = call float @llvm.fmuladd.f32(float %i.kb, float %7, float %i.kk)
  %i.km = fadd <2 x float> %i.jt, %i.ki
  %i.kn = fadd float %i.jw, %i.kl
  %i.ko = fsub <2 x float> %i.hk, %i.km           ; 2 uses
  store <2 x float> %i.ko, ptr %6, align 8, !tbaa !68
  %i.kp = fsub float %i.hh, %i.kn                 ; 2 uses
  store float %i.kp, ptr %i.aa, align 8, !tbaa !68
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !136

.preheader259:                                    ; preds = %bb.i, %.preheader260
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !48 ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.lr.ph279, label %.preheader258

.lr.ph279:                                        ; preds = %.preheader259
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !47
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !60
  %wide.trip.count299 = zext nneg i32 %i.kr to i64
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph277, %bb.i
  %indvars.iv291 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next292, %bb.i ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv291
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !69
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [816 x i8], ptr %i.fy, i64 %i.lb ; 7 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 488
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 116
  %i.lf = load float, ptr %i.ld, align 4, !tbaa !68
  %i.lg = load float, ptr %i.le, align 4, !tbaa !68
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 492
  %i.li = load float, ptr %i.lh, align 4, !tbaa !68
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !68
  %i.ll = fmul float %i.li, %i.lk
  %i.lm = call float @llvm.fmuladd.f32(float %i.lf, float %i.lg, float %i.ll)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 496
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !68
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lc, i64 124
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !68
  %i.lr = call noundef float @llvm.fmuladd.f32(float %i.lo, float %i.lq, float %i.lm)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 536
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !87
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.lu
  store float %i.lr, ptr %i.lv, align 4, !tbaa !68
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %.preheader259, label %bb.i, !llvm.loop !137

.preheader258:                                    ; preds = %bb.j, %.preheader259
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !48 ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph281, label %.preheader

.lr.ph281:                                        ; preds = %.preheader258
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !47
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !43
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !60
  %wide.trip.count304 = zext nneg i32 %i.lx to i64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph279, %bb.j
  %indvars.iv296 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next297, %bb.j ] ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv296
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !69
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [816 x i8], ptr %i.kw, i64 %i.mh ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 504
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 100
  %i.ml = load float, ptr %i.mj, align 4, !tbaa !68
  %i.mm = load float, ptr %i.mk, align 4, !tbaa !68
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 508
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !68
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 104
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !68
  %i.mr = fmul float %i.mo, %i.mq
  %i.ms = call float @llvm.fmuladd.f32(float %i.ml, float %i.mm, float %i.mr)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 512
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !68
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mi, i64 108
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !68
  %i.mx = call noundef float @llvm.fmuladd.f32(float %i.mu, float %i.mw, float %i.ms)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 536
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !87
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.na
  store float %i.mx, ptr %i.nb, align 4, !tbaa !68
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.preheader258, label %bb.j, !llvm.loop !138

.preheader:                                       ; preds = %bb.k, %.preheader258
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !48 ; 4 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !47 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !43 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !60 ; 3 uses
  %wide.trip.count309 = zext nneg i32 %i.nd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count309, 1
  %i.nl = icmp eq i32 %i.nd, 1
  br i1 %i.nl, label %.epil.preheader, label %.lr.ph283.new

.lr.ph283.new:                                    ; preds = %.lr.ph283
  %unroll_iter = and i64 %wide.trip.count309, 2147483646
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph281, %bb.k
  %indvars.iv301 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next302, %bb.k ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv301
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !69
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [816 x i8], ptr %i.mc, i64 %i.no ; 7 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 116
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !68
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 536
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !87
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr [4 x i8], ptr %i.me, i64 %i.nu ; 6 uses
  store float %i.nr, ptr %i.nv, align 4, !tbaa !68
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 120
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !68
  %i.ny = getelementptr i8, ptr %i.nv, i64 4
  store float %i.nx, ptr %i.ny, align 4, !tbaa !68
  %i.nz = getelementptr inbounds nuw i8, ptr %i.np, i64 124
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !68
  %i.ob = getelementptr i8, ptr %i.nv, i64 8
  store float %i.oa, ptr %i.ob, align 4, !tbaa !68
  %i.oc = getelementptr inbounds nuw i8, ptr %i.np, i64 100
  %i.od = load float, ptr %i.oc, align 4, !tbaa !68
  %i.oe = getelementptr i8, ptr %i.nv, i64 12
  store float %i.od, ptr %i.oe, align 4, !tbaa !68
  %i.of = getelementptr inbounds nuw i8, ptr %i.np, i64 104
  %i.og = load float, ptr %i.of, align 8, !tbaa !68
  %i.oh = getelementptr i8, ptr %i.nv, i64 16
  store float %i.og, ptr %i.oh, align 4, !tbaa !68
  %i.oi = getelementptr inbounds nuw i8, ptr %i.np, i64 108
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !68
  %i.ok = getelementptr i8, ptr %i.nv, i64 20
  store float %i.oj, ptr %i.ok, align 4, !tbaa !68
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.preheader, label %bb.k, !llvm.loop !139

bb.l:                                             ; preds = %bb.l, %.lr.ph283.new
  %indvars.iv306 = phi i64 [ 0, %.lr.ph283.new ], [ %indvars.iv.next307.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph283.new ], [ %niter.next.1, %bb.l ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv306
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !69
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [816 x i8], ptr %i.ni, i64 %i.on ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 116
  %i.oq = load float, ptr %i.op, align 4, !tbaa !68
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 536
  %i.os = load i32, ptr %i.or, align 8, !tbaa !87
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr [4 x i8], ptr %i.nk, i64 %i.ot ; 3 uses
  store float %i.oq, ptr %i.ou, align 4, !tbaa !68
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 120
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !68
  %i.ox = getelementptr i8, ptr %i.ou, i64 4
  store float %i.ow, ptr %i.ox, align 4, !tbaa !68
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 124
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !68
  %i.pa = getelementptr i8, ptr %i.ou, i64 8
  store float %i.oz, ptr %i.pa, align 4, !tbaa !68
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv306
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE:bb.a
  %i.aki = load ptr, ptr %i.vj, align 8, !tbaa !51 ; 2 uses
  %i.akj = getelementptr inbounds nuw [32 x i8], ptr %i.aki, i64 %indvars.iv.next711
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 4
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !48
  %i.akm = sext i32 %i.akl to i64
  %i.akn = icmp slt i64 %indvars.iv.next708, %i.akm
  br i1 %i.akn, label %bb.k, label %.loopexit632, !llvm.loop !209

._crit_edge687:                                   ; preds = %._crit_edge682, %.loopexit634, %._crit_edge659
  br i1 %4, label %.preheader630, label %.loopexit

.preheader630:                                    ; preds = %._crit_edge687
  %i.ako = load i32, ptr %i.c, align 4, !tbaa !41 ; 2 uses
  %i.akp = icmp sgt i32 %i.ako, 0
  br i1 %i.akp, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader630
  %i.akq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.akr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count724 = zext nneg i32 %i.ako to i64
  br label %.preheader

bb.n:                                             ; preds = %.lr.ph686, %._crit_edge682
  %indvars.iv713 = phi i64 [ %i.wo, %.lr.ph686 ], [ %indvars.iv.next714, %._crit_edge682 ] ; 2 uses
  %indvars.iv.next714 = add nsw i64 %indvars.iv713, -1 ; 4 uses
  %i.aks = load ptr, ptr %i.wd, align 8, !tbaa !43
  %i.akt = getelementptr inbounds nuw [816 x i8], ptr %i.aks, i64 %indvars.iv.next714 ; 15 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 536
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !87 ; 8 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 420 ; 5 uses
  %.val207 = load i32, ptr %i.akw, align 4, !tbaa !83
  switch i32 %.val207, label %bb.q [
    i32 0, label %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit
    i32 1, label %.lr.ph681
    i32 2, label %.lr.ph681
    i32 3, label %bb.o
    i32 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %.lr.ph681

bb.p:                                             ; preds = %bb.n
  br label %.lr.ph681

bb.q:                                             ; preds = %bb.n
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 766)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
  call void @abort() #18
  unreachable

_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  br label %._crit_edge682

.lr.ph681:                                        ; preds = %bb.n, %bb.n, %bb.p, %bb.o
  %.0.i.ph = phi i32 [ 6, %bb.o ], [ 3, %bb.p ], [ 1, %bb.n ], [ 1, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akt, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.akx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akt, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.aky, i64 16, i1 false)
  %i.akz = add nsw i32 %.0.i.ph, %i.akv
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akt, i64 560
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akt, i64 564
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akt, i64 568
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akt, i64 576
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akt, i64 580
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akt, i64 584
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akt, i64 592
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akt, i64 596
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akt, i64 600
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akt, i64 544
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akt, i64 540
  %i.all = trunc nuw nsw i64 %indvars.iv.next714 to i32
  br label %bb.r

.loopexit631:                                     ; preds = %._crit_edge668, %._crit_edge663
  %.not204.not = icmp sgt i32 %.0191680, %i.akv
  br i1 %.not204.not, label %bb.r, label %._crit_edge682, !llvm.loop !210

._crit_edge682:                                   ; preds = %.loopexit631, %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.alm = icmp sgt i64 %indvars.iv713, 1
  br i1 %i.alm, label %bb.n, label %._crit_edge687, !llvm.loop !211

bb.r:                                             ; preds = %.lr.ph681, %.loopexit631
  %.0191.in679 = phi i32 [ %i.akz, %.lr.ph681 ], [ %.0191680, %.loopexit631 ] ; 2 uses
  %.0191680 = add nsw i32 %.0191.in679, -1        ; 8 uses
  %i.aln = load i32, ptr %i.akw, align 4, !tbaa !89 ; 2 uses
  %i.alo = icmp eq i32 %i.aln, 3
  br i1 %i.alo, label %bb.s, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

bb.s:                                             ; preds = %bb.r
  %i.alp = sub nsw i32 %.0191680, %i.akv
  switch i32 %i.alp, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.v:                                             ; preds = %bb.s
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !68
  store float 1.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.w:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %18, align 8, !tbaa !68
  store float 0.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.x:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !68
  store float 0.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.y:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !68
  store float 1.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.pr = load i32, ptr %i.akw, align 4, !tbaa !89
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split, %bb.r
  %i.alq = phi i32 [ %.pr, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split ], [ %i.aln, %bb.r ]
  %i.alr = icmp eq i32 %i.alq, 4
  br i1 %i.alr, label %bb.z, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

bb.z:                                             ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.als = sub nsw i32 %.0191680, %i.akv          ; 4 uses
  %i.alt = icmp ult i32 %i.als, 3
  br i1 %i.alt, label %switch.lookup, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

switch.lookup:                                    ; preds = %bb.z
  %i.alu = zext nneg i32 %i.als to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.alu
  %switch.load = load float, ptr %switch.gep, align 4
  %i.alv = zext nneg i32 %i.als to i64
  %switch.gep748 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.alv
  %switch.load749 = load float, ptr %switch.gep748, align 4
  %i.alw = zext nneg i32 %i.als to i64
  %switch.gep750 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.alw
  %switch.load751 = load float, ptr %switch.gep750, align 4
  store float %switch.load, ptr %17, align 16, !tbaa !68
  store float %switch.load749, ptr %i.wg, align 4, !tbaa !68
  store float %switch.load751, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %bb.z, %bb.s, %switch.lookup, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.alx = load float, ptr %i.ala, align 8, !tbaa !68
  %i.aly = load float, ptr %i.alb, align 4, !tbaa !68
  %i.alz = load float, ptr %i.alc, align 8, !tbaa !68
  %i.ama = load float, ptr %i.ald, align 8, !tbaa !68
  %i.amb = load float, ptr %i.ale, align 4, !tbaa !68
  %i.amc = load float, ptr %i.alf, align 8, !tbaa !68
  %i.amd = load float, ptr %i.alg, align 8, !tbaa !68
  %i.ame = load float, ptr %i.alh, align 4, !tbaa !68
  %i.amf = load float, ptr %i.ali, align 8, !tbaa !68
  %i.amg = load float, ptr %i.alk, align 4, !tbaa !68 ; 3 uses
  %i.amh = load <2 x float>, ptr %17, align 16, !tbaa !68 ; 4 uses
  %i.ami = extractelement <2 x float> %i.amh, i64 0 ; 3 uses
  %i.amj = load <2 x float>, ptr %18, align 8, !tbaa !68 ; 4 uses
  %i.amk = load <3 x float>, ptr %i.alj, align 8, !tbaa !68 ; 3 uses
  %i.aml = extractelement <2 x float> %i.amj, i64 0
  %i.amm = fmul float %i.aml, %i.amg
  %i.amn = shufflevector <2 x float> %i.amj, <2 x float> %i.amh, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.amo = fneg <2 x float> %i.amn
  %i.amp = shufflevector <3 x float> %i.amk, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.amq = fmul <2 x float> %i.amp, %i.amo
  %i.amr = shufflevector <3 x float> %i.amk, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ams = shufflevector <3 x float> %i.amk, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.amt = shufflevector <2 x float> %i.amj, <2 x float> %i.amh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.amu = fneg <2 x float> %i.amt
  %i.amv = fmul <2 x float> %i.amr, %i.amu
  %i.amw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ams, <2 x float> %i.amn, <2 x float> %i.amv) ; 2 uses
  %i.amx = load <2 x float>, ptr %i.wg, align 4, !tbaa !68 ; 4 uses
  %i.amy = load float, ptr %i.wh, align 8, !tbaa !68 ; 3 uses
  %i.amz = extractelement <2 x float> %i.amx, i64 0 ; 3 uses
  %i.ana = fmul float %i.aly, %i.amz
  %i.anb = call float @llvm.fmuladd.f32(float %i.alx, float %i.ami, float %i.ana)
  %i.anc = call noundef float @llvm.fmuladd.f32(float %i.alz, float %i.amy, float %i.anb)
  %i.and = fmul float %i.amz, %i.amb
  %i.ane = call float @llvm.fmuladd.f32(float %i.ama, float %i.ami, float %i.and)
  %i.anf = call noundef float @llvm.fmuladd.f32(float %i.amc, float %i.amy, float %i.ane)
  %i.ang = fmul float %i.amz, %i.ame
  %i.anh = call float @llvm.fmuladd.f32(float %i.amd, float %i.ami, float %i.ang)
  %i.ani = call noundef float @llvm.fmuladd.f32(float %i.amf, float %i.amy, float %i.anh)
  %21 = load <2 x float>, ptr %i.we, align 4, !tbaa !68 ; 4 uses
  %22 = load float, ptr %i.wf, align 8, !tbaa !68
  %i.anj = shufflevector <2 x float> %i.amx, <2 x float> %21, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ank = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amr, <2 x float> %i.anj, <2 x float> %i.amq) ; 2 uses
  %i.anl = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.anm = insertelement <2 x float> %i.anl, float %i.amm, i64 1 ; 2 uses
  %i.ann = fadd <2 x float> %i.anm, %i.ank        ; 2 uses
  %i.ano = fsub <2 x float> %i.anm, %i.ank        ; 2 uses
  %i.anp = shufflevector <2 x float> %i.ann, <2 x float> %i.ano, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.anq = extractelement <2 x float> %21, i64 0
  %i.anr = fmul float %i.anq, %i.amg
  %i.ans = fneg <2 x float> %i.anj
  %i.ant = fmul <2 x float> %i.ams, %i.ans
  %i.anu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amp, <2 x float> %i.amt, <2 x float> %i.ant) ; 2 uses
  %i.anv = insertelement <2 x float> poison, float %i.anf, i64 0
  %i.anw = insertelement <2 x float> %i.anv, float %i.anr, i64 1 ; 2 uses
  %i.anx = fadd <2 x float> %i.anw, %i.anu        ; 2 uses
  %i.any = fsub <2 x float> %i.anw, %i.anu        ; 2 uses
  %i.anz = shufflevector <2 x float> %i.anx, <2 x float> %i.any, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.aoa = shufflevector <2 x float> %i.ann, <2 x float> %i.anx, <2 x i32> <i32 0, i32 2>
  %23 = fmul float %22, %i.amg
  %i.aob = insertelement <2 x float> poison, float %i.ani, i64 0
  %i.aoc = insertelement <2 x float> %i.aob, float %23, i64 1 ; 2 uses
  %i.aod = fadd <2 x float> %i.aoc, %i.amw
  %i.aoe = fsub <2 x float> %i.aoc, %i.amw        ; 2 uses
  %i.aof = shufflevector <2 x float> %i.aod, <2 x float> %i.aoe, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.aog = insertelement <2 x float> %i.aof, float 0.000000e+00, i64 1
  %i.aoh = shufflevector <2 x float> %i.ano, <2 x float> %i.any, <2 x i32> <i32 1, i32 3>
  %i.aoi = shufflevector <2 x float> %i.aoe, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.aoj = shufflevector <2 x float> %i.amx, <2 x float> %21, <2 x i32> <i32 0, i32 2>
  %i.aok = fmul <2 x float> %i.aoj, %i.anz
  %i.aol = shufflevector <2 x float> %i.amh, <2 x float> %i.amj, <2 x i32> <i32 0, i32 2>
  %i.aom = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aol, <2 x float> %i.anp, <2 x float> %i.aok)
  %i.aon = shufflevector <2 x float> %i.amx, <2 x float> %21, <2 x i32> <i32 1, i32 3>
  %i.aoo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aon, <2 x float> %i.aof, <2 x float> %i.aom)
  %i.aop = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aoo)
  %i.aoq = load i32, ptr %i.wi, align 8, !tbaa !58
  %i.aor = add nsw i32 %i.aoq, 1                  ; 2 uses
  store i32 %i.aor, ptr %i.wi, align 8, !tbaa !58
  %i.aos = load i32, ptr %i.f, align 4, !tbaa !56 ; 2 uses
  %i.aot = add i32 %i.aos, 1
  %i.aou = mul i32 %i.aot, %.0191680
  %i.aov = load ptr, ptr %i.wj, align 8, !tbaa !60 ; 2 uses
  %i.aow = sext i32 %i.aou to i64
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.aov, i64 %i.aow
  store float %i.aop, ptr %i.aox, align 4, !tbaa !68
  %i.aoy = add nsw i32 %.0191.in679, -2           ; 2 uses
  %.not205660 = icmp slt i32 %i.aoy, %i.akv
  br i1 %.not205660, label %._crit_edge663, label %.lr.ph662

._crit_edge663:                                   ; preds = %bb.aj, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.aoz = load ptr, ptr %i.wk, align 8, !tbaa !47 ; 2 uses
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %indvars.iv.next714
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !69 ; 2 uses
  %i.apc = icmp sgt i32 %i.apb, -1
  br i1 %i.apc, label %.lr.ph676, label %.loopexit631

.lr.ph662:                                        ; preds = %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit, %bb.aj
  %i.apd = phi ptr [ %i.arh, %bb.aj ], [ %i.aov, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %i.ape = phi i32 [ %i.ari, %bb.aj ], [ %i.aos, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %i.apf = phi i32 [ %i.arj, %bb.aj ], [ %i.aor, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %.0190661 = phi i32 [ %i.ark, %bb.aj ], [ %i.aoy, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 6 uses
  %i.apg = load i32, ptr %i.akw, align 4, !tbaa !89 ; 2 uses
  %i.aph = icmp eq i32 %i.apg, 4
  br i1 %i.aph, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph662
  %i.api = sub nsw i32 %.0190661, %i.akv          ; 4 uses
  %i.apj = icmp ult i32 %i.api, 3
  br i1 %i.apj, label %switch.lookup752, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282

switch.lookup752:                                 ; preds = %bb.aa
  %i.apk = zext nneg i32 %i.api to i64
  %switch.gep753 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.apk
  %switch.load754 = load float, ptr %switch.gep753, align 4
  %i.apl = zext nneg i32 %i.api to i64
  %switch.gep755 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.apl
  %switch.load756 = load float, ptr %switch.gep755, align 4
  %i.apm = zext nneg i32 %i.api to i64
  %switch.gep757 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.apm
  %switch.load758 = load float, ptr %switch.gep757, align 4
  store float %switch.load754, ptr %17, align 16, !tbaa !68
  store float %switch.load756, ptr %i.wg, align 4, !tbaa !68
  store float %switch.load758, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  %.pre726 = load i32, ptr %i.wi, align 8, !tbaa !58
  %.pre727 = load i32, ptr %i.f, align 4, !tbaa !56
  %.pre728 = load ptr, ptr %i.wj, align 8, !tbaa !60
  %.pr628.pre = load i32, ptr %i.akw, align 4, !tbaa !89
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282: ; preds = %bb.aa, %switch.lookup752
  %.pr628 = phi i32 [ 4, %bb.aa ], [ %.pr628.pre, %switch.lookup752 ]
  %i.apn = phi ptr [ %i.apd, %bb.aa ], [ %.pre728, %switch.lookup752 ] ; 2 uses
  %i.apo = phi i32 [ %i.ape, %bb.aa ], [ %.pre727, %switch.lookup752 ] ; 2 uses
  %i.app = phi i32 [ %i.apf, %bb.aa ], [ %.pre726, %switch.lookup752 ]
  %i.apq = load <4 x float>, ptr %17, align 16
  %i.apr = shufflevector <4 x float> %i.apq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aps = load float, ptr %i.wf, align 8, !tbaa !68
  %i.apt = load <2 x float>, ptr %17, align 16, !tbaa !68 ; 2 uses
  %i.apu = load <2 x float>, ptr %18, align 8, !tbaa !68 ; 2 uses
  %i.apv = shufflevector <2 x float> %i.apt, <2 x float> %i.apu, <2 x i32> <i32 1, i32 3>
  %i.apw = fmul <2 x float> %i.anz, %i.apv
  %i.apx = shufflevector <2 x float> %i.apt, <2 x float> %i.apu, <2 x i32> <i32 0, i32 2>
  %i.apy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apx, <2 x float> %i.anp, <2 x float> %i.apw)
  %i.apz = insertelement <2 x float> %i.apr, float %i.aps, i64 1
  %i.aqa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apz, <2 x float> %i.aof, <2 x float> %i.apy)
  %i.aqb = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aqa)
  %i.aqc = add nsw i32 %i.app, 1                  ; 2 uses
  store i32 %i.aqc, ptr %i.wi, align 8, !tbaa !58
  %i.aqd = mul nsw i32 %i.apo, %.0191680
  %i.aqe = add nsw i32 %i.aqd, %.0190661
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.aqf
  store float %i.aqb, ptr %i.aqg, align 4, !tbaa !68
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282, %.lr.ph662
  %i.aqh = phi ptr [ %i.apn, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apd, %.lr.ph662 ]
  %i.aqi = phi i32 [ %i.apo, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.ape, %.lr.ph662 ]
  %i.aqj = phi i32 [ %i.aqc, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apf, %.lr.ph662 ]
  %i.aqk = phi i32 [ %.pr628, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apg, %.lr.ph662 ]
  %i.aql = icmp eq i32 %i.aqk, 3
  br i1 %i.aql, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.aqm = sub nsw i32 %.0190661, %i.akv
  switch i32 %i.aqm, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ae:                                            ; preds = %bb.ac
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.af:                                            ; preds = %bb.ac
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !68
  store float 1.000000e+00, ptr %i.wh, align 8, !tbaa !68
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ag:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %18, align 8, !tbaa !68
  store float 0.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ah:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !68
  store float 0.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ai:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !68
  store float 1.000000e+00, ptr %i.wf, align 8, !tbaa !68
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %i.aqn = load <4 x float>, ptr %17, align 16
  %i.aqo = shufflevector <4 x float> %i.aqn, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aqp = load float, ptr %i.wf, align 8, !tbaa !68
  %i.aqq = load <2 x float>, ptr %17, align 16, !tbaa !68 ; 2 uses
  %i.aqr = load <2 x float>, ptr %18, align 8, !tbaa !68 ; 2 uses
  %i.aqs = shufflevector <2 x float> %i.aqq, <2 x float> %i.aqr, <2 x i32> <i32 1, i32 3>
  %i.aqt = fmul <2 x float> %i.anz, %i.aqs
  %i.aqu = shufflevector <2 x float> %i.aqq, <2 x float> %i.aqr, <2 x i32> <i32 0, i32 2>
  %i.aqv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqu, <2 x float> %i.anp, <2 x float> %i.aqt)
  %i.aqw = insertelement <2 x float> %i.aqo, float %i.aqp, i64 1
  %i.aqx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqw, <2 x float> %i.aof, <2 x float> %i.aqv)
  %i.aqy = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aqx)
  %i.aqz = load i32, ptr %i.wi, align 8, !tbaa !58
  %i.ara = add nsw i32 %i.aqz, 1                  ; 2 uses
  store i32 %i.ara, ptr %i.wi, align 8, !tbaa !58
  %i.arb = load i32, ptr %i.f, align 4, !tbaa !56 ; 2 uses
  %i.arc = mul nsw i32 %i.arb, %.0191680
  %i.ard = add nsw i32 %i.arc, %.0190661
  %i.are = load ptr, ptr %i.wj, align 8, !tbaa !60 ; 2 uses
  %i.arf = sext i32 %i.ard to i64
  %i.arg = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.arf
  store float %i.aqy, ptr %i.arg, align 4, !tbaa !68
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283
  %i.arh = phi ptr [ %i.aqh, %bb.ab ], [ %i.are, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.ari = phi i32 [ %i.aqi, %bb.ab ], [ %i.arb, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.arj = phi i32 [ %i.aqj, %bb.ab ], [ %i.ara, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.ark = add nsw i32 %.0190661, -1
  %.not205.not = icmp sgt i32 %.0190661, %i.akv
  br i1 %.not205.not, label %.lr.ph662, label %._crit_edge663, !llvm.loop !212

.lr.ph676:                                        ; preds = %._crit_edge663, %._crit_edge668
  %i.arl = phi ptr [ %i.auj, %._crit_edge668 ], [ %i.aoz, %._crit_edge663 ]
  %.0187674 = phi i32 [ %i.aul, %._crit_edge668 ], [ %i.apb, %._crit_edge663 ] ; 2 uses
  %.0188673 = phi i32 [ %.0187674, %._crit_edge668 ], [ %i.all, %._crit_edge663 ]
  %.sroa.18394.0672 = phi <2 x float> [ %.sroa.18394.8.vec.insert, %._crit_edge668 ], [ %i.aog, %._crit_edge663 ] ; 2 uses
  %.sroa.0371.0671 = phi <2 x float> [ %i.atv, %._crit_edge668 ], [ %i.aoa, %._crit_edge663 ] ; 4 uses
  %.sroa.16354.0670 = phi <2 x float> [ %i.ati, %._crit_edge668 ], [ %i.aoi, %._crit_edge663 ]
  %.sroa.0333.0669 = phi <2 x float> [ %i.ath, %._crit_edge668 ], [ %i.aoh, %._crit_edge663 ] ; 2 uses
  %i.arm = load ptr, ptr %i.wd, align 8, !tbaa !43 ; 2 uses
  %i.arn = sext i32 %.0188673 to i64
  %i.aro = getelementptr inbounds [816 x i8], ptr %i.arm, i64 %i.arn ; 11 uses
  %i.arp = zext nneg i32 %.0187674 to i64         ; 2 uses
  %i.arq = getelementptr inbounds nuw [816 x i8], ptr %i.arm, i64 %i.arp ; 6 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aro, i64 292
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 308
  %i.art = getelementptr inbounds nuw i8, ptr %i.aro, i64 324
end_hunk_1
