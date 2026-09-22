Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/MultiBodyTreeImpl?download=true
inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl24calculateInverseDynamicsERKNS_4vecxES4_S4_PS2_:bb.a
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
  %i.gm = phi float [ %.pre312, %.._crit_edge_crit_edge ], [ %i.jc, %bb.h ]
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
  %i.hh = phi float [ %.promoted272, %.lr.ph267 ], [ %i.ko, %bb.h ]
  %i.hi = phi float [ %.promoted270, %.lr.ph267 ], [ %i.jc, %bb.h ]
  %i.hj = phi <2 x float> [ %i.gk, %.lr.ph267 ], [ %i.ir, %bb.h ]
  %i.hk = phi <2 x float> [ %i.gl, %.lr.ph267 ], [ %i.kn, %bb.h ]
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
  %i.ie = load float, ptr %i.hz, align 4, !tbaa !68 ; 2 uses
  %i.if = load float, ptr %i.hy, align 4, !tbaa !68 ; 2 uses
  %i.ig = load float, ptr %i.ia, align 4, !tbaa !68 ; 2 uses
  %i.ih = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ic, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.if, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.io, <2 x float> %i.im) ; 4 uses
  %i.iq = fmul float %i.hw, %i.ie
  %i.ir = fsub <2 x float> %i.hj, %i.ip           ; 3 uses
  store <2 x float> %i.ir, ptr %5, align 8, !tbaa !68
  %i.is = getelementptr inbounds nuw i8, ptr %i.ho, i64 116
  %i.it = getelementptr inbounds nuw i8, ptr %i.ho, i64 120
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ho, i64 124
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ho, i64 340
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ho, i64 344
  %i.ix = extractelement <2 x float> %i.ip, i64 0
  %i.iy = fneg float %i.ix
  %i.iz = extractelement <2 x float> %i.ip, i64 1 ; 2 uses
  %i.ja = call float @llvm.fmuladd.f32(float %i.hv, float %i.if, float %i.iq)
  %i.jb = call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.ig, float %i.ja) ; 3 uses
  %i.jc = fsub float %i.hi, %i.jb                 ; 3 uses
  store float %i.jc, ptr %i.z, align 8, !tbaa !68
  %i.jd = load <2 x float>, ptr %i.hp, align 4, !tbaa !68, !noalias !142
  %i.je = load <2 x float>, ptr %i.hq, align 4, !tbaa !68, !noalias !142
  %7 = load <2 x float>, ptr %i.hr, align 4, !tbaa !68, !noalias !142
  %i.jf = load float, ptr %i.hs, align 4, !tbaa !68, !noalias !142
  %i.jg = load float, ptr %i.ht, align 4, !tbaa !68, !noalias !142
  %i.jh = load float, ptr %i.hu, align 4, !tbaa !68, !noalias !142
  %i.ji = load float, ptr %i.it, align 4, !tbaa !68 ; 2 uses
  %i.jj = load float, ptr %i.is, align 4, !tbaa !68 ; 2 uses
  %8 = load float, ptr %i.iu, align 4, !tbaa !68  ; 2 uses
  %i.jk = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.je, %i.jl
  %i.jn = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.jo, <2 x float> %i.jm)
  %i.jq = insertelement <2 x float> poison, float %8, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.jr, <2 x float> %i.jp)
  %i.jt = fmul float %i.jg, %i.ji
  %i.ju = call float @llvm.fmuladd.f32(float %i.jf, float %i.jj, float %i.jt)
  %i.jv = call noundef float @llvm.fmuladd.f32(float %i.jh, float %8, float %i.ju)
  %i.jw = load <2 x float>, ptr %i.iw, align 4, !tbaa !68 ; 3 uses
  %i.jx = load float, ptr %i.iv, align 4, !tbaa !68 ; 2 uses
  %i.jy = fneg float %i.jb
  %i.jz = fneg float %i.iz
  %i.ka = fmul float %i.jx, %i.jy
  %i.kb = extractelement <2 x float> %i.jw, i64 1
  %i.kc = fmul float %i.kb, %i.jz
  %i.kd = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ke = insertelement <2 x float> %i.kd, float %i.jb, i64 0
  %i.kf = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.kg = insertelement <2 x float> %i.kf, float %i.ka, i64 1
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.ke, <2 x float> %i.kg)
  %i.ki = extractelement <2 x float> %i.jw, i64 0
  %i.kj = fmul float %i.ki, %i.iy
  %i.kk = call float @llvm.fmuladd.f32(float %i.jx, float %i.iz, float %i.kj)
  %i.kl = fadd <2 x float> %i.js, %i.kh
  %i.km = fadd float %i.jv, %i.kk
  %i.kn = fsub <2 x float> %i.hk, %i.kl           ; 2 uses
  store <2 x float> %i.kn, ptr %6, align 8, !tbaa !68
  %i.ko = fsub float %i.hh, %i.km                 ; 2 uses
  store float %i.ko, ptr %i.aa, align 8, !tbaa !68
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !136

.preheader259:                                    ; preds = %bb.i, %.preheader260
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !48 ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph279, label %.preheader258

.lr.ph279:                                        ; preds = %.preheader259
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !47
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !43
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !60
  %wide.trip.count299 = zext nneg i32 %i.kq to i64
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph277, %bb.i
  %indvars.iv291 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next292, %bb.i ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv291
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !69
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [816 x i8], ptr %i.fy, i64 %i.la ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 488
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 116
  %i.le = load float, ptr %i.lc, align 4, !tbaa !68
  %i.lf = load float, ptr %i.ld, align 4, !tbaa !68
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 492
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !68
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 120
  %i.lj = load float, ptr %i.li, align 4, !tbaa !68
  %i.lk = fmul float %i.lh, %i.lj
  %i.ll = call float @llvm.fmuladd.f32(float %i.le, float %i.lf, float %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 496
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !68
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lb, i64 124
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !68
  %i.lq = call noundef float @llvm.fmuladd.f32(float %i.ln, float %i.lp, float %i.ll)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lb, i64 536
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !87
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.lt
  store float %i.lq, ptr %i.lu, align 4, !tbaa !68
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %.preheader259, label %bb.i, !llvm.loop !137

.preheader258:                                    ; preds = %bb.j, %.preheader259
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !48 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph281, label %.preheader

.lr.ph281:                                        ; preds = %.preheader258
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !43
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !60
  %wide.trip.count304 = zext nneg i32 %i.lw to i64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph279, %bb.j
  %indvars.iv296 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next297, %bb.j ] ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv296
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !69
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [816 x i8], ptr %i.kv, i64 %i.mg ; 7 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 504
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 100
  %i.mk = load float, ptr %i.mi, align 4, !tbaa !68
  %i.ml = load float, ptr %i.mj, align 4, !tbaa !68
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 508
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !68
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 104
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !68
  %i.mq = fmul float %i.mn, %i.mp
  %i.mr = call float @llvm.fmuladd.f32(float %i.mk, float %i.ml, float %i.mq)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 512
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !68
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mh, i64 108
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !68
  %i.mw = call noundef float @llvm.fmuladd.f32(float %i.mt, float %i.mv, float %i.mr)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mh, i64 536
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !87
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.mz
  store float %i.mw, ptr %i.na, align 4, !tbaa !68
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.preheader258, label %bb.j, !llvm.loop !138

.preheader:                                       ; preds = %bb.k, %.preheader258
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !48 ; 4 uses
  %i.nd = icmp sgt i32 %i.nc, 0
  br i1 %i.nd, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !47 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !43 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !60 ; 3 uses
  %wide.trip.count309 = zext nneg i32 %i.nc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count309, 1
  %i.nk = icmp eq i32 %i.nc, 1
  br i1 %i.nk, label %.epil.preheader, label %.lr.ph283.new

.lr.ph283.new:                                    ; preds = %.lr.ph283
  %unroll_iter = and i64 %wide.trip.count309, 2147483646
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph281, %bb.k
  %indvars.iv301 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next302, %bb.k ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv301
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !69
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [816 x i8], ptr %i.mb, i64 %i.nn ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 116
  %i.nq = load float, ptr %i.np, align 4, !tbaa !68
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 536
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !87
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr [4 x i8], ptr %i.md, i64 %i.nt ; 6 uses
  store float %i.nq, ptr %i.nu, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 120
  %i.nw = load float, ptr %i.nv, align 8, !tbaa !68
  %i.nx = getelementptr i8, ptr %i.nu, i64 4
  store float %i.nw, ptr %i.nx, align 4, !tbaa !68
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 124
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !68
  %i.oa = getelementptr i8, ptr %i.nu, i64 8
  store float %i.nz, ptr %i.oa, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 100
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !68
  %i.od = getelementptr i8, ptr %i.nu, i64 12
  store float %i.oc, ptr %i.od, align 4, !tbaa !68
  %i.oe = getelementptr inbounds nuw i8, ptr %i.no, i64 104
  %i.of = load float, ptr %i.oe, align 8, !tbaa !68
  %i.og = getelementptr i8, ptr %i.nu, i64 16
  store float %i.of, ptr %i.og, align 4, !tbaa !68
  %i.oh = getelementptr inbounds nuw i8, ptr %i.no, i64 108
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !68
  %i.oj = getelementptr i8, ptr %i.nu, i64 20
  store float %i.oi, ptr %i.oj, align 4, !tbaa !68
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.preheader, label %bb.k, !llvm.loop !139

bb.l:                                             ; preds = %bb.l, %.lr.ph283.new
  %indvars.iv306 = phi i64 [ 0, %.lr.ph283.new ], [ %indvars.iv.next307.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph283.new ], [ %niter.next.1, %bb.l ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv306
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !69
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [816 x i8], ptr %i.nh, i64 %i.om ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 116
  %i.op = load float, ptr %i.oo, align 4, !tbaa !68
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 536
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !87
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr [4 x i8], ptr %i.nj, i64 %i.os ; 3 uses
  store float %i.op, ptr %i.ot, align 4, !tbaa !68
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 120
  %i.ov = load float, ptr %i.ou, align 8, !tbaa !68
  %i.ow = getelementptr i8, ptr %i.ot, i64 4
  store float %i.ov, ptr %i.ow, align 4, !tbaa !68
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 124
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !68
  %i.oz = getelementptr i8, ptr %i.ot, i64 8
  store float %i.oy, ptr %i.oz, align 4, !tbaa !68
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv306
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
end_hunk_0
begin_hunk_1_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE:bb.a
  %i.uv = shufflevector <3 x float> %i.tw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.uw = shufflevector <4 x float> %i.ts, <4 x float> %i.uv, <4 x i32> <i32 2, i32 3, i32 6, i32 poison>
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> %i.ur, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.uy = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.tx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.uz = fmul <4 x float> %i.ux, %i.uy
  %i.va = shufflevector <4 x float> %i.ss, <4 x float> %i.uv, <4 x i32> <i32 3, i32 3, i32 5, i32 poison>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.ts, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.vc = insertelement <4 x float> %i.up, float 0.000000e+00, i64 3
  %i.vd = insertelement <4 x float> %i.vc, float %i.ti, i64 2
  %i.ve = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vb, <4 x float> %i.vd, <4 x float> %i.uz) ; 3 uses
  store <4 x float> %i.ur, ptr %.sroa.4539.0..sroa_idx, align 8
  %i.vf = extractelement <4 x float> %i.ve, i64 0
  store float %i.vf, ptr %.sroa.9543.16..sroa_idx, align 8
  %i.vg = extractelement <4 x float> %i.ve, i64 1 ; 2 uses
  store float %i.vg, ptr %.sroa.10544.16..sroa_idx, align 4
  store <2 x float> %i.ut, ptr %i.qn, align 4
  %i.vh = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vi = shufflevector <4 x float> %i.ve, <4 x float> %i.vh, <4 x i32> <i32 2, i32 3, i32 0, i32 5>
  %i.vj = fmul <4 x float> %i.vi, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.vk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.uo, i64 0
  %i.vl = shufflevector <4 x float> %i.uv, <4 x float> %i.ur, <4 x i32> <i32 0, i32 5, i32 7, i32 poison>
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> %i.uu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vk, <4 x float> %i.vm, <4 x float> %i.vj) ; 4 uses
  %i.vo = extractelement <4 x float> %i.vn, i64 0 ; 2 uses
  store float %i.vo, ptr %.sroa.15548.32..sroa_idx, align 4
  %i.vp = extractelement <4 x float> %i.vn, i64 2
  %i.vq = call noundef float @llvm.fmuladd.f32(float %i.vg, float 0.000000e+00, float %i.vp)
  %i.vr = extractelement <4 x float> %i.vn, i64 3
  %i.vs = call noundef float @llvm.fmuladd.f32(float %i.vo, float 0.000000e+00, float %i.vr)
  %i.vt = shufflevector <4 x float> %i.vn, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i219 = insertelement <2 x float> %i.vt, float %i.vq, i64 1
  %.sroa.3.12.vec.insert.i220 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vs, i64 0
  store i32 0, ptr %.sroa.16549.32..sroa_idx, align 8
  store <2 x float> %.sroa.0.4.vec.insert.i219, ptr %i.ul, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i220, ptr %i.um, align 4, !tbaa !77
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %i.vu = load i32, ptr %i.gk, align 4, !tbaa !48
  %i.vv = sext i32 %i.vu to i64
  %i.vw = icmp slt i64 %indvars.iv.next705, %i.vv
  br i1 %i.vw, label %bb.i, label %.loopexit634, !llvm.loop !193

.loopexit634:                                     ; preds = %bb.i, %.preheader633, %.loopexit640
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !44 ; 2 uses
  %i.vz = icmp sgt i32 %i.vy, 0
  br i1 %i.vz, label %.lr.ph658, label %._crit_edge687

.lr.ph658:                                        ; preds = %.loopexit634
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.4469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.wd = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.wf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.wh = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.wi = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.wj = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.wk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.wm = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.wp = getelementptr inbounds nuw i8, ptr %15, i64 36
  %i.wq = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.wr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ws = zext nneg i32 %i.vy to i64
  br label %bb.j

.loopexit632:                                     ; preds = %bb.m, %bb.j
  %i.wt = icmp sgt i64 %indvars.iv710, 1
  br i1 %i.wt, label %bb.j, label %._crit_edge659, !llvm.loop !194

._crit_edge659:                                   ; preds = %.loopexit632
  %.pre = load i32, ptr %i.vx, align 4, !tbaa !44 ; 2 uses
  %i.wu = icmp sgt i32 %.pre, 0
  br i1 %i.wu, label %.lr.ph686, label %._crit_edge687

.lr.ph686:                                        ; preds = %._crit_edge659
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 9 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 9 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.xe = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.xg = zext nneg i32 %.pre to i64
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph658, %.loopexit632
  %indvars.iv710 = phi i64 [ %i.ws, %.lr.ph658 ], [ %indvars.iv.next711, %.loopexit632 ] ; 2 uses
  %indvars.iv.next711 = add nsw i64 %indvars.iv710, -1 ; 5 uses
  %i.xh = load ptr, ptr %i.wa, align 8, !tbaa !43
  %i.xi = getelementptr inbounds nuw [816 x i8], ptr %i.xh, i64 %indvars.iv.next711 ; 15 uses
  %i.xj = load float, ptr %i.xi, align 8, !tbaa !88
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 540 ; 3 uses
  store float %i.xj, ptr %i.xk, align 4, !tbaa !227
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 544 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, ptr noundef nonnull align 4 dereferenceable(16) %i.xl, i64 16, i1 false)
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 20
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 560 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xo, ptr noundef nonnull align 4 dereferenceable(48) %i.xn, i64 16, i1 false), !tbaa.struct !78
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 36
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 576 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, ptr noundef nonnull align 4 dereferenceable(16) %i.xp, i64 16, i1 false), !tbaa.struct !78
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xi, i64 52
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xi, i64 592 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xs, ptr noundef nonnull align 4 dereferenceable(16) %i.xr, i64 16, i1 false), !tbaa.struct !78
  %i.xt = load ptr, ptr %i.wb, align 8, !tbaa !51 ; 2 uses
  %i.xu = getelementptr inbounds nuw [32 x i8], ptr %i.xt, i64 %indvars.iv.next711
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !48
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %.lr.ph654, label %.loopexit632

.lr.ph654:                                        ; preds = %bb.j
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xi, i64 552 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xi, i64 568 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xi, i64 584 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xi, i64 600 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xi, i64 604
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph654, %bb.m
  %indvars.iv707 = phi i64 [ 0, %.lr.ph654 ], [ %indvars.iv.next708, %bb.m ] ; 2 uses
  %i.yd = phi ptr [ %i.xt, %.lr.ph654 ], [ %i.akk, %bb.m ]
  %i.ye = getelementptr inbounds nuw [32 x i8], ptr %i.yd, i64 %indvars.iv.next711
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !47
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv707
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !69
  %i.yj = load ptr, ptr %i.wa, align 8, !tbaa !43
  %i.yk = sext i32 %i.yi to i64
  %i.yl = getelementptr inbounds [816 x i8], ptr %i.yj, i64 %i.yk ; 18 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 292 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 308 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 324 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 300 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 316 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 332 ; 2 uses
  %i.ys = load <2 x float>, ptr %i.ym, align 4, !tbaa !68, !noalias !228 ; 4 uses
  %i.yt = load <2 x float>, ptr %i.yn, align 4, !tbaa !68, !noalias !228 ; 4 uses
  %i.yu = load <2 x float>, ptr %i.yo, align 4, !tbaa !68, !noalias !228 ; 4 uses
  %i.yv = load float, ptr %i.yp, align 4, !tbaa !68, !noalias !228 ; 3 uses
  %i.yw = load float, ptr %i.yq, align 4, !tbaa !68, !noalias !228 ; 3 uses
  %i.yx = load float, ptr %i.yr, align 4, !tbaa !68, !noalias !228 ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yl, i64 540 ; 5 uses
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !227
  %i.za = load float, ptr %i.xk, align 4, !tbaa !227
  %i.zb = fadd float %i.yz, %i.za
  store float %i.zb, ptr %i.xk, align 4, !tbaa !227
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yl, i64 544 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yl, i64 548 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yl, i64 552 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yl, i64 340 ; 2 uses
  %i.zg = load float, ptr %i.yy, align 4, !tbaa !68 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yl, i64 348 ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !68
  %i.zj = fmul float %i.zg, %i.zi
  %i.zk = load float, ptr %i.zd, align 4, !tbaa !68 ; 2 uses
  %i.zl = load float, ptr %i.zc, align 4, !tbaa !68 ; 2 uses
  %i.zm = load float, ptr %i.ze, align 4, !tbaa !68 ; 2 uses
  %i.zn = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = fmul <2 x float> %i.yt, %i.zo
  %i.zq = insertelement <2 x float> poison, float %i.zl, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ys, <2 x float> %i.zr, <2 x float> %i.zp)
  %i.zt = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.zu, <2 x float> %i.zs)
  %i.zw = fmul float %i.yw, %i.zk
  %i.zx = call float @llvm.fmuladd.f32(float %i.yv, float %i.zl, float %i.zw)
  %i.zy = call noundef float @llvm.fmuladd.f32(float %i.yx, float %i.zm, float %i.zx)
  %i.zz = load <2 x float>, ptr %i.zf, align 4, !tbaa !68 ; 2 uses
  %i.aaa = insertelement <2 x float> %i.zz, float %i.zg, i64 1
  %i.aab = insertelement <2 x float> %i.zz, float %i.zg, i64 0
  %i.aac = fmul <2 x float> %i.aaa, %i.aab
  %i.aad = fadd <2 x float> %i.zv, %i.aac
  %i.aae = fadd float %i.zy, %i.zj
  %i.aaf = load <2 x float>, ptr %i.xm, align 8, !tbaa !68
  %i.aag = fadd <2 x float> %i.aad, %i.aaf
  store <2 x float> %i.aag, ptr %i.xm, align 8, !tbaa !68
  %i.aah = load float, ptr %i.xy, align 8, !tbaa !68
  %i.aai = fadd float %i.aae, %i.aah
  store float %i.aai, ptr %i.xy, align 8, !tbaa !68
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.yl, i64 560
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yl, i64 576
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yl, i64 592
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yl, i64 564
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yl, i64 580
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yl, i64 596
  %i.aap = load float, ptr %i.yp, align 4, !tbaa !68, !noalias !229 ; 2 uses
  %i.aaq = load float, ptr %i.yq, align 4, !tbaa !68, !noalias !229 ; 3 uses
  %i.aar = load float, ptr %i.yr, align 4, !tbaa !68, !noalias !229 ; 2 uses
  %i.aas = load float, ptr %i.xz, align 8, !tbaa !68
  %i.aat = load float, ptr %i.ya, align 8, !tbaa !68
  %i.aau = load float, ptr %i.yb, align 8, !tbaa !68
  %i.aav = load <2 x float>, ptr %i.xo, align 8, !tbaa !68
  %i.aaw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aas, i64 2
  %i.aax = shufflevector <2 x float> %i.aav, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aay = shufflevector <4 x float> %i.aax, <4 x float> %i.aaw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aaz = load <2 x float>, ptr %i.xq, align 8, !tbaa !68
  %i.aba = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aat, i64 2
  %i.abb = shufflevector <2 x float> %i.aaz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abc = shufflevector <4 x float> %i.abb, <4 x float> %i.aba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abd = load float, ptr %i.aan, align 4, !tbaa !68, !noalias !230
  %i.abe = load <3 x float>, ptr %i.aak, align 4, !tbaa !68, !noalias !230 ; 2 uses
  %i.abf = insertelement <3 x float> poison, float %i.yw, i64 0
  %i.abg = shufflevector <3 x float> %i.abf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.abh = fmul <3 x float> %i.abg, %i.abe
  %i.abi = load <2 x float>, ptr %i.xs, align 8, !tbaa !68
  %i.abj = load float, ptr %i.aam, align 4, !tbaa !68, !noalias !230
  %i.abk = load <3 x float>, ptr %i.aaj, align 4, !tbaa !68, !noalias !230 ; 2 uses
  %i.abl = load float, ptr %i.aao, align 4, !tbaa !68, !noalias !230
  %i.abm = load <3 x float>, ptr %i.aal, align 4, !tbaa !68, !noalias !230 ; 2 uses
  %i.abn = insertelement <3 x float> poison, float %i.yv, i64 0
  %i.abo = shufflevector <3 x float> %i.abn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.abp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.abk, <3 x float> %i.abo, <3 x float> %i.abh)
  %i.abq = insertelement <3 x float> poison, float %i.yx, i64 0
  %i.abr = shufflevector <3 x float> %i.abq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.abs = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.abm, <3 x float> %i.abr, <3 x float> %i.abp) ; 6 uses
  %i.abt = load <2 x float>, ptr %i.ym, align 4, !tbaa !68, !noalias !229 ; 3 uses
  %i.abu = load <2 x float>, ptr %i.yn, align 4, !tbaa !68, !noalias !229 ; 3 uses
  %i.abv = load <2 x float>, ptr %i.yo, align 4, !tbaa !68, !noalias !229 ; 3 uses
  %i.abw = extractelement <2 x float> %i.abu, i64 1
  %i.abx = extractelement <2 x float> %i.abt, i64 0 ; 2 uses
  %i.aby = shufflevector <2 x float> %i.yt, <2 x float> poison, <3 x i32> zeroinitializer
  %i.abz = shufflevector <3 x float> %i.abe, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.aca = insertelement <3 x float> %i.abz, float %i.abd, i64 2 ; 2 uses
  %i.acb = fmul <3 x float> %i.aby, %i.aca
  %i.acc = shufflevector <3 x float> %i.abk, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.acd = insertelement <3 x float> %i.acc, float %i.abj, i64 2 ; 2 uses
  %i.ace = shufflevector <2 x float> %i.ys, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acd, <3 x float> %i.ace, <3 x float> %i.acb)
  %i.acg = shufflevector <3 x float> %i.abm, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.ach = insertelement <3 x float> %i.acg, float %i.abl, i64 2 ; 2 uses
  %i.aci = shufflevector <2 x float> %i.yu, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ach, <3 x float> %i.aci, <3 x float> %i.acf) ; 6 uses
  %21 = extractelement <3 x float> %i.acj, i64 2  ; 2 uses
  %22 = fmul float %21, %i.aaq
  %23 = fmul float %21, %i.abw
  %24 = shufflevector <2 x float> %i.abt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %25 = insertelement <2 x float> %24, float %i.aap, i64 1 ; 2 uses
  %26 = shufflevector <3 x float> %i.acj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ack = insertelement <2 x float> poison, float %23, i64 0
  %27 = insertelement <2 x float> %i.ack, float %22, i64 1
  %i.acl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %26, <2 x float> %27)
  %i.acm = extractelement <3 x float> %i.acj, i64 1
  %i.acn = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aco = insertelement <2 x float> %i.acn, float %i.aar, i64 1 ; 2 uses
  %i.acp = shufflevector <3 x float> %i.acj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aco, <2 x float> %i.acp, <2 x float> %i.acl)
  %i.acr = extractelement <2 x float> %i.abv, i64 0 ; 2 uses
  %i.acs = extractelement <3 x float> %i.acj, i64 0
  %i.act = shufflevector <2 x float> %i.yt, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acu = fmul <3 x float> %i.act, %i.aca
  %i.acv = shufflevector <2 x float> %i.ys, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acd, <3 x float> %i.acv, <3 x float> %i.acu)
  %i.acx = shufflevector <2 x float> %i.yu, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ach, <3 x float> %i.acx, <3 x float> %i.acw) ; 5 uses
  %28 = shufflevector <3 x float> %i.acj, <3 x float> %i.acy, <4 x i32> <i32 2, i32 5, i32 5, i32 5>
  %29 = shufflevector <2 x float> %i.abu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 0>
  %30 = insertelement <4 x float> %29, float %i.aaq, i64 1
  %31 = fmul <4 x float> %28, %30                 ; 3 uses
  %i.acz = extractelement <4 x float> %31, i64 0
  %32 = call float @llvm.fmuladd.f32(float %i.abx, float %i.acm, float %i.acz)
  %33 = call noundef float @llvm.fmuladd.f32(float %i.acr, float %i.acs, float %32)
  %i.ada = shufflevector <3 x float> %i.acy, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = shufflevector <4 x float> %31, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.adb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %i.ada, <2 x float> %34)
  %35 = extractelement <3 x float> %i.acy, i64 1
  %i.adc = extractelement <4 x float> %31, i64 3
  %i.add = call float @llvm.fmuladd.f32(float %i.abx, float %35, float %i.adc)
  %i.ade = shufflevector <3 x float> %i.acy, <3 x float> poison, <2 x i32> zeroinitializer
  %i.adf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aco, <2 x float> %i.ade, <2 x float> %i.adb)
  %i.adg = extractelement <3 x float> %i.acy, i64 0
  %i.adh = call noundef float @llvm.fmuladd.f32(float %i.acr, float %i.adg, float %i.add)
  %i.adi = shufflevector <3 x float> %i.abs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.adj = fmul <2 x float> %i.adi, %i.abu
  %i.adk = shufflevector <3 x float> %i.abs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.adl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.adk, <2 x float> %i.adj)
  %i.adm = shufflevector <3 x float> %i.abs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.adn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abv, <2 x float> %i.adm, <2 x float> %i.adl)
  %i.ado = extractelement <3 x float> %i.abs, i64 1
  %i.adp = fmul float %i.ado, %i.aaq
  %i.adq = extractelement <3 x float> %i.abs, i64 0
  %i.adr = call float @llvm.fmuladd.f32(float %i.aap, float %i.adq, float %i.adp)
  %i.ads = extractelement <3 x float> %i.abs, i64 2
  %i.adt = call noundef float @llvm.fmuladd.f32(float %i.aar, float %i.ads, float %i.adr)
  %i.adu = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %33, i64 0
  %i.adv = shufflevector <2 x float> %i.acq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adw = shufflevector <4 x float> %i.adu, <4 x float> %i.adv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.adx = fadd <4 x float> %i.aay, %i.adw
  %i.ady = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.adh, i64 0
  %i.adz = shufflevector <2 x float> %i.adf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aea = shufflevector <4 x float> %i.ady, <4 x float> %i.adz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aeb = fadd <4 x float> %i.abc, %i.aea
  %i.aec = fadd <2 x float> %i.adn, %i.abi
  %i.aed = fadd float %i.adt, %i.aau
  store <4 x float> %i.adx, ptr %i.xo, align 8, !tbaa !68
  store <4 x float> %i.aeb, ptr %i.xq, align 8, !tbaa !68
  store <2 x float> %i.aec, ptr %i.xs, align 8, !tbaa !68
  store float %i.aed, ptr %i.yb, align 8, !tbaa !68
  store float 0.000000e+00, ptr %i.yc, align 4, !tbaa !68
  %i.aee = load float, ptr %i.yy, align 4, !tbaa !227
  %i.aef = fcmp ogt float %i.aee, 0.000000e+00
  br i1 %i.aef, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.aeg = load float, ptr %i.yy, align 4, !tbaa !68
  %i.aeh = fdiv float 1.000000e+00, %i.aeg        ; 2 uses
  %i.aei = load float, ptr %i.zd, align 4, !tbaa !68 ; 2 uses
  %i.aej = load float, ptr %i.zc, align 4, !tbaa !68 ; 2 uses
  %i.aek = load float, ptr %i.ze, align 4, !tbaa !68 ; 2 uses
  %i.ael = insertelement <2 x float> poison, float %i.aei, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = fmul <2 x float> %i.yt, %i.aem
  %i.aeo = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ys, <2 x float> %i.aep, <2 x float> %i.aen)
  %i.aer = insertelement <2 x float> poison, float %i.aek, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.aes, <2 x float> %i.aeq)
  %i.aeu = fmul float %i.yw, %i.aei
  %i.aev = call float @llvm.fmuladd.f32(float %i.yv, float %i.aej, float %i.aeu)
  %i.aew = call noundef float @llvm.fmuladd.f32(float %i.yx, float %i.aek, float %i.aev)
  %i.aex = insertelement <2 x float> poison, float %i.aeh, i64 0
  %i.aey = shufflevector <2 x float> %i.aex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aez = fmul <2 x float> %i.aet, %i.aey
  %i.afa = fmul float %i.aeh, %i.aew
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afa, i64 0
  store <2 x float> %i.aez, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %14, ptr noundef nonnull align 4 dereferenceable(16) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.afb = load <2 x float>, ptr %i.zf, align 4, !tbaa !68
  %i.afc = load <2 x float>, ptr %13, align 8, !tbaa !68
  %i.afd = fadd <2 x float> %i.afb, %i.afc
  %i.afe = load float, ptr %i.zh, align 4, !tbaa !68
  %i.aff = load float, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !68
  %i.afg = fadd float %i.afe, %i.aff
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afg, i64 0
  store <2 x float> %i.afd, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %.sroa.4465.0..sroa_idx, align 8, !tbaa !77
  call void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.afh = load float, ptr %i.yy, align 4, !tbaa !68, !noalias !231
  %i.afi = load float, ptr %i.xz, align 8, !tbaa !68
  %i.afj = load float, ptr %i.ya, align 8, !tbaa !68
  %i.afk = load float, ptr %i.yb, align 8, !tbaa !68
  %i.afl = load <2 x float>, ptr %14, align 8, !tbaa !68, !noalias !232 ; 3 uses
  %i.afm = load <2 x float>, ptr %i.wc, align 8, !tbaa !68, !noalias !232 ; 4 uses
  %i.afn = load <2 x float>, ptr %i.we, align 8, !tbaa !68, !noalias !232 ; 3 uses
  %i.afo = shufflevector <2 x float> %i.afm, <2 x float> %i.afl, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.afp = insertelement <4 x float> %i.afo, float 1.000000e+00, i64 3
  %i.afq = shufflevector <2 x float> %i.afl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.afr = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.afq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.afs = shufflevector <2 x float> %i.afm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aft = shufflevector <4 x float> %i.afr, <4 x float> %i.afs, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.afu = insertelement <4 x float> %i.afq, float 0.000000e+00, i64 3
  %i.afv = shufflevector <2 x float> %i.afn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afw = insertelement <4 x float> %i.afv, float 0.000000e+00, i64 3
  %i.afx = load <2 x float>, ptr %15, align 8, !tbaa !68, !noalias !233 ; 3 uses
  %i.afy = load <2 x float>, ptr %i.wk, align 8, !tbaa !68, !noalias !233 ; 4 uses
  %i.afz = load <2 x float>, ptr %i.wm, align 8, !tbaa !68, !noalias !233 ; 3 uses
  %i.aga = shufflevector <2 x float> %i.afy, <2 x float> %i.afx, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.agb = insertelement <4 x float> %i.aga, float 0.000000e+00, i64 3
  %i.agc = shufflevector <2 x float> %i.afx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.agd = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.agc, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.age = shufflevector <2 x float> %i.afy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agf = shufflevector <4 x float> %i.agd, <4 x float> %i.age, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.agg = insertelement <4 x float> %i.agc, float 0.000000e+00, i64 3
  %i.agh = shufflevector <2 x float> %i.afz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agi = insertelement <4 x float> %i.agh, float 0.000000e+00, i64 3
  %i.agj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.afh, i64 0
  %i.agk = shufflevector <4 x float> %i.agj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.agl = load <2 x float>, ptr %i.xo, align 8, !tbaa !68
  %i.agm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afi, i64 2
  %i.agn = shufflevector <2 x float> %i.agl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> %i.agm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.agp = load <2 x float>, ptr %i.xq, align 8, !tbaa !68
  %i.agq = load <2 x float>, ptr %i.wd, align 4, !tbaa !68, !noalias !232 ; 2 uses
  %i.agr = load float, ptr %i.wf, align 8, !tbaa !68, !noalias !232
  %i.ags = load <2 x float>, ptr %i.wg, align 4, !tbaa !68, !noalias !232 ; 3 uses
  %i.agt = load float, ptr %i.wi, align 8, !tbaa !68, !noalias !232
  %i.agu = load <2 x float>, ptr %i.wh, align 4, !tbaa !68, !noalias !232 ; 3 uses
  %i.agv = load float, ptr %i.wj, align 8, !tbaa !68, !noalias !232
  %i.agw = shufflevector <2 x float> %i.ags, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agx = shufflevector <4 x float> %i.aft, <4 x float> %i.agw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.agy = fmul <4 x float> %i.afp, %i.agx
  %i.agz = shufflevector <2 x float> %i.agq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aha = shufflevector <4 x float> %i.afu, <4 x float> %i.agz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ahb = shufflevector <4 x float> %i.afq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ahc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aha, <4 x float> %i.ahb, <4 x float> %i.agy)
  %i.ahd = shufflevector <2 x float> %i.agu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahe = shufflevector <4 x float> %i.afw, <4 x float> %i.ahd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ahf = shufflevector <4 x float> %i.agz, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ahg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahe, <4 x float> %i.ahf, <4 x float> %i.ahc)
  %i.ahh = shufflevector <2 x float> %i.ags, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ahi = shufflevector <2 x float> %i.afm, <2 x float> %i.ags, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.ahj = insertelement <4 x float> %i.ahi, float 1.000000e+00, i64 3 ; 2 uses
  %i.ahk = fmul <4 x float> %i.ahh, %i.ahj
  %i.ahl = shufflevector <2 x float> %i.afl, <2 x float> %i.agq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ahm = insertelement <4 x float> %i.ahl, float 0.000000e+00, i64 3 ; 2 uses
  %i.ahn = shufflevector <2 x float> %i.afm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.aho = insertelement <4 x float> %i.ahn, float -0.000000e+00, i64 3
  %i.ahp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahm, <4 x float> %i.aho, <4 x float> %i.ahk)
  %i.ahq = shufflevector <2 x float> %i.afn, <2 x float> %i.agu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ahr = insertelement <4 x float> %i.ahq, float 0.000000e+00, i64 3 ; 2 uses
  %i.ahs = shufflevector <4 x float> %i.ahi, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahr, <4 x float> %i.ahs, <4 x float> %i.ahp)
  %i.ahu = load <2 x float>, ptr %i.wl, align 4, !tbaa !68, !noalias !233 ; 2 uses
  %i.ahv = load float, ptr %i.wn, align 8, !tbaa !68, !noalias !233
  %i.ahw = load <2 x float>, ptr %i.wo, align 4, !tbaa !68, !noalias !233 ; 3 uses
  %i.ahx = load float, ptr %i.wq, align 8, !tbaa !68, !noalias !233
  %i.ahy = load <2 x float>, ptr %i.wp, align 4, !tbaa !68, !noalias !233 ; 3 uses
  %i.ahz = load float, ptr %i.wr, align 8, !tbaa !68, !noalias !233
  %i.aia = shufflevector <2 x float> %i.ahw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aib = shufflevector <4 x float> %i.agf, <4 x float> %i.aia, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aic = fmul <4 x float> %i.agb, %i.aib
  %i.aid = shufflevector <2 x float> %i.ahu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aie = shufflevector <4 x float> %i.agg, <4 x float> %i.aid, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aif = shufflevector <4 x float> %i.agc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.aig = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aie, <4 x float> %i.aif, <4 x float> %i.aic)
  %i.aih = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aii = shufflevector <4 x float> %i.agi, <4 x float> %i.aih, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aij = shufflevector <4 x float> %i.aid, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.aik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aii, <4 x float> %i.aij, <4 x float> %i.aig)
  %i.ail = shufflevector <2 x float> %i.ahw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aim = shufflevector <2 x float> %i.afy, <2 x float> %i.ahw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.ain = insertelement <4 x float> %i.aim, float 1.000000e+00, i64 3 ; 2 uses
  %i.aio = fmul <4 x float> %i.ail, %i.ain
  %i.aip = shufflevector <2 x float> %i.afx, <2 x float> %i.ahu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aiq = insertelement <4 x float> %i.aip, float 0.000000e+00, i64 3 ; 2 uses
  %i.air = shufflevector <2 x float> %i.afy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ais = insertelement <4 x float> %i.air, float -0.000000e+00, i64 3
  %i.ait = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiq, <4 x float> %i.ais, <4 x float> %i.aio)
  %i.aiu = shufflevector <2 x float> %i.afz, <2 x float> %i.ahy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aiv = insertelement <4 x float> %i.aiu, float 0.000000e+00, i64 3 ; 2 uses
  %i.aiw = shufflevector <4 x float> %i.aim, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiv, <4 x float> %i.aiw, <4 x float> %i.ait)
  %i.aiy = fsub <4 x float> %i.ahg, %i.aik
  %i.aiz = fsub <4 x float> %i.aht, %i.aix
  %i.aja = fmul <4 x float> %i.agk, %i.aiy
  %i.ajb = fmul <4 x float> %i.agk, %i.aiz
  %i.ajc = fadd <4 x float> %i.ago, %i.aja
  %i.ajd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afj, i64 2
  %i.aje = shufflevector <2 x float> %i.agp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajf = shufflevector <4 x float> %i.aje, <4 x float> %i.ajd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ajg = fadd <4 x float> %i.ajf, %i.ajb
  store <4 x float> %i.ajc, ptr %i.xo, align 8, !tbaa !68
  store <4 x float> %i.ajg, ptr %i.xq, align 8, !tbaa !68
  %i.ajh = load <2 x float>, ptr %i.xs, align 8, !tbaa !68
  %i.aji = shufflevector <2 x float> %i.agu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ajj = insertelement <4 x float> %i.aji, float 1.000000e+00, i64 3
  %i.ajk = insertelement <4 x float> %i.ahj, float %i.agt, i64 2
  %i.ajl = fmul <4 x float> %i.ajj, %i.ajk
  %i.ajm = insertelement <4 x float> %i.ahm, float %i.agr, i64 2
  %i.ajn = shufflevector <2 x float> %i.afn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ajo = insertelement <4 x float> %i.ajn, float -0.000000e+00, i64 3
  %i.ajp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajm, <4 x float> %i.ajo, <4 x float> %i.ajl)
  %i.ajq = insertelement <4 x float> %i.ahr, float %i.agv, i64 2 ; 2 uses
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.ajs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajq, <4 x float> %i.ajr, <4 x float> %i.ajp)
  %i.ajt = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.aju = insertelement <4 x float> %i.ajt, float 0.000000e+00, i64 3
  %i.ajv = insertelement <4 x float> %i.ain, float %i.ahx, i64 2
  %i.ajw = fmul <4 x float> %i.aju, %i.ajv
  %i.ajx = insertelement <4 x float> %i.aiq, float %i.ahv, i64 2
  %i.ajy = shufflevector <2 x float> %i.afz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ajz = insertelement <4 x float> %i.ajy, float -0.000000e+00, i64 3
  %i.aka = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajx, <4 x float> %i.ajz, <4 x float> %i.ajw)
  %i.akb = insertelement <4 x float> %i.aiv, float %i.ahz, i64 2 ; 2 uses
  %i.akc = shufflevector <4 x float> %i.akb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.akd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akb, <4 x float> %i.akc, <4 x float> %i.aka)
  %i.ake = fsub <4 x float> %i.ajs, %i.akd
  %i.akf = fmul <4 x float> %i.agk, %i.ake
  %i.akg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afk, i64 2
  %i.akh = shufflevector <2 x float> %i.ajh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aki = shufflevector <4 x float> %i.akh, <4 x float> %i.akg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akj = fadd <4 x float> %i.aki, %i.akf
  store <4 x float> %i.akj, ptr %i.xs, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.m

end_hunk_1
