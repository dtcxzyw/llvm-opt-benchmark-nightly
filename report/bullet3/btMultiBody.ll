Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E:bb.a
  %i.ex = fmul float %i.er, %i.eu                 ; 2 uses
  %i.ey = fmul float %i.er, %i.ev                 ; 2 uses
  %i.ez = fmul float %i.er, %i.ew                 ; 2 uses
  %i.fa = fmul float %i.ei, %i.eu                 ; 2 uses
  %i.fb = fmul float %i.ei, %i.ev                 ; 2 uses
  %i.fc = fmul float %i.ei, %i.ew                 ; 2 uses
  %i.fd = fmul float %i.ek, %i.ev                 ; 2 uses
  %i.fe = fmul float %i.ek, %i.ew                 ; 2 uses
  %i.ff = fmul float %i.eo, %i.ew                 ; 2 uses
  %i.fg = fadd float %i.fd, %i.ff
  %i.fh = fsub float 1.000000e+00, %i.fg
  %i.fi = fsub float %i.fb, %i.ez
  %i.fj = fadd float %i.fc, %i.ey
  %i.fk = fadd float %i.fb, %i.ez
  %i.fl = fadd float %i.fa, %i.ff
  %i.fm = fsub float 1.000000e+00, %i.fl
  %i.fn = fsub float %i.fe, %i.ex
  %i.fo = fsub float %i.fc, %i.ey
  %i.fp = fadd float %i.fe, %i.ex
  %i.fq = fadd float %i.fa, %i.fd
  %i.fr = fsub float 1.000000e+00, %i.fq
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 4 uses
  %.sroa.9364.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %.sroa.10365.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 4 uses
  %.sroa.11366.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 4 uses
  %.sroa.14368.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 36 ; 4 uses
  %.sroa.15369.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 4 uses
  %.sroa.16370.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.gd = load float, ptr %2, align 4, !tbaa !20
  %i.ge = load float, ptr %i.ec, align 8, !tbaa !20
  %i.gf = fsub float %i.gd, %i.ge                 ; 4 uses
  %i.gg = load float, ptr %i.ed, align 4, !tbaa !20
  %i.gh = load float, ptr %i.ee, align 4, !tbaa !20
  %i.gi = fsub float %i.gg, %i.gh                 ; 4 uses
  %i.gj = load float, ptr %i.ef, align 4, !tbaa !20
  %i.gk = load float, ptr %i.eg, align 8, !tbaa !20
  %i.gl = fsub float %i.gj, %i.gk                 ; 4 uses
  store float %i.fh, ptr %i.eb, align 4
  store float %i.fi, ptr %.sroa.4360.0..sroa_idx, align 4
  store float %i.fj, ptr %.sroa.5361.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.6362.0..sroa_idx, align 4, !tbaa !21
  store float %i.fk, ptr %i.fs, align 4
  store float %i.fm, ptr %.sroa.9364.16..sroa_idx, align 4
  store float %i.fn, ptr %.sroa.10365.16..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.11366.16..sroa_idx, align 4, !tbaa !21
  store float %i.fo, ptr %i.ft, align 4
  store float %i.fp, ptr %.sroa.14368.32..sroa_idx, align 4
  store float %i.fr, ptr %.sroa.15369.32..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.16370.32..sroa_idx, align 4, !tbaa !21
  %i.gm = load float, ptr %i.fu, align 4, !tbaa !20 ; 2 uses
  %i.gn = load float, ptr %i.fv, align 4, !tbaa !20 ; 2 uses
  %i.go = fneg float %i.gn
  %i.gp = fmul float %i.gl, %i.go
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gm, float %i.gp)
  %i.gr = load float, ptr %4, align 4, !tbaa !20  ; 2 uses
  %i.gs = fneg float %i.gm
  %i.gt = fmul float %i.gf, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gr, float %i.gt)
  %i.gv = fneg float %i.gr
  %i.gw = fmul float %i.gi, %i.gv
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gn, float %i.gw)
  %i.gy = load float, ptr %3, align 4, !tbaa !20
  %i.gz = fadd float %i.gq, %i.gy
  store float %i.gz, ptr %5, align 4, !tbaa !20
  %i.ha = load float, ptr %i.fw, align 4, !tbaa !20
  %i.hb = fadd float %i.gu, %i.ha
  store float %i.hb, ptr %i.fx, align 4, !tbaa !20
  %i.hc = load float, ptr %i.fy, align 4, !tbaa !20
  %i.hd = fadd float %i.gx, %i.hc
  store float %i.hd, ptr %i.fz, align 4, !tbaa !20
  %i.he = load float, ptr %4, align 4, !tbaa !20
  store float %i.he, ptr %i.ga, align 4, !tbaa !20
  %i.hf = load float, ptr %i.fv, align 4, !tbaa !20
  store float %i.hf, ptr %i.gb, align 4, !tbaa !20
  %i.hg = load float, ptr %i.fu, align 4, !tbaa !20
  store float %i.hg, ptr %i.gc, align 4, !tbaa !20
  %i.hh = load <2 x float>, ptr %i.eb, align 4, !tbaa !20 ; 2 uses
  %i.hi = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !20
  %i.hj = load <2 x float>, ptr %i.fs, align 4, !tbaa !20 ; 2 uses
  %i.hk = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = shufflevector <2 x float> %i.hh, <2 x float> %i.hj, <2 x i32> <i32 1, i32 3>
  %i.hn = fmul <2 x float> %i.hl, %i.hm
  %i.ho = shufflevector <2 x float> %i.hh, <2 x float> %i.hj, <2 x i32> <i32 0, i32 2>
  %i.hp = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hq, <2 x float> %i.hn)
  %i.hs = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !20
  %i.ht = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hu = insertelement <2 x float> %i.ht, float %i.hs, i64 1
  %i.hv = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hw, <2 x float> %i.hr)
  %i.hy = load float, ptr %i.ft, align 4, !tbaa !20
  %i.hz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !20
  %i.ia = fmul float %i.gi, %i.hz
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.gf, float %i.ia)
  %i.ic = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !20
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ic, float %i.gl, float %i.ib)
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  store <2 x float> %i.hx, ptr %i.bi, align 4
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %.sroa.477.0..sroa_idx, align 4, !tbaa !21
  %i.ie = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !20
  %i.if = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !20
  %i.ig = load float, ptr %4, align 4, !tbaa !20  ; 2 uses
  %i.ih = load <2 x float>, ptr %i.eb, align 4, !tbaa !20 ; 2 uses
  %i.ii = load float, ptr %i.fv, align 4, !tbaa !20 ; 2 uses
  %i.ij = load float, ptr %i.fu, align 4, !tbaa !20 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.fs, align 4, !tbaa !20 ; 2 uses
  %i.il = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.if, i64 1
  %i.iv = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.is)
  %i.iy = load float, ptr %i.ft, align 4, !tbaa !20
  %i.iz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !20
  %i.ja = fmul float %i.ii, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.ig, float %i.ja)
  %i.jc = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !20
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.ij, float %i.jb)
  %.sroa.3.12.vec.insert.i233 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  store <2 x float> %i.ix, ptr %i.bk, align 4
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i233, ptr %.sroa.475.0..sroa_idx, align 4, !tbaa !21
  %i.je = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !20
  %i.jf = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !20
  %i.jg = load float, ptr %3, align 4, !tbaa !20  ; 2 uses
  %i.jh = load <2 x float>, ptr %i.eb, align 4, !tbaa !20 ; 2 uses
  %i.ji = load float, ptr %i.fw, align 4, !tbaa !20 ; 2 uses
  %i.jj = load float, ptr %i.fy, align 4, !tbaa !20 ; 2 uses
  %i.jk = load <2 x float>, ptr %i.fs, align 4, !tbaa !20 ; 2 uses
  %i.jl = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = shufflevector <2 x float> %i.jh, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.jo = fmul <2 x float> %i.jm, %i.jn
  %i.jp = shufflevector <2 x float> %i.jh, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.jq = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jr, <2 x float> %i.jo)
  %i.jt = insertelement <2 x float> poison, float %i.je, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.jf, i64 1
  %i.jv = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.jw, <2 x float> %i.js)
  %i.jy = load float, ptr %i.ft, align 4, !tbaa !20
  %i.jz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !20
  %i.ka = fmul float %i.ji, %i.jz
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.jg, float %i.ka)
  %i.kc = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !20
  %i.kd = tail call noundef float @llvm.fmuladd.f32(float %i.kc, float %i.jj, float %i.kb)
  %.sroa.3.12.vec.insert.i238 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kd, i64 0
  store <2 x float> %i.jx, ptr %i.bl, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i238, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !21
  br i1 %i.dh, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %._crit_edge
  %scevgep402 = getelementptr i8, ptr %5, i64 24
  %i.ke = add nuw i32 %i.e, 5
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ke, i32 6)
  %i.kf = zext nneg i32 %smax to i64
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %i.kh = add nsw i64 %i.kg, -20
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep402, i8 0, i64 %i.kh, i1 false), !tbaa !20
  br label %._crit_edge391

._crit_edge391:                                   ; preds = %.lr.ph390.preheader, %._crit_edge
  %i.ki = icmp sgt i32 %i.c, 0
  %i.kj = icmp sgt i32 %1, -1
  %or.cond = and i1 %i.kj, %i.ki
  br i1 %or.cond, label %.preheader384, label %.loopexit

.preheader384:                                    ; preds = %._crit_edge391
  %.not400 = icmp eq i32 %.0188.lcssa, 0
  br i1 %.not400, label %.preheader.lr.ph, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader384
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %9 = sext i32 %.0188.lcssa to i64
  %wide.trip.count = zext i32 %.0188.lcssa to i64
  %10 = getelementptr [4 x i8], ptr %i.dq, i64 %9
  br label %bb.w

.preheader.lr.ph:                                 ; preds = %bb.ab, %.preheader384
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !47
  br label %.preheader

bb.w:                                             ; preds = %.lr.ph393, %bb.ab
  %indvars.iv406 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next407, %bb.ab ] ; 2 uses
  %11 = xor i64 %indvars.iv406, -1
  %i.kn = getelementptr [4 x i8], ptr %10, i64 %11
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !20
  %i.kp = fptosi float %i.ko to i32               ; 2 uses
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !47
  %i.kr = sext i32 %i.kp to i64                   ; 3 uses
  %i.ks = getelementptr inbounds [688 x i8], ptr %i.kq, i64 %i.kr ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 20
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !77
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 336
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !20 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 340
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !20 ; 5 uses
  %i.kz = fmul float %i.ky, %i.ky
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 344
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !20 ; 4 uses
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lc, float %i.la)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 348
  %i.lf = load float, ptr %i.le, align 4, !tbaa !20 ; 5 uses
  %i.lg = tail call noundef float @llvm.fmuladd.f32(float %i.lf, float %i.lf, float %i.ld)
  %i.lh = fdiv float 2.000000e+00, %i.lg          ; 3 uses
  %i.li = fmul float %i.kw, %i.lh                 ; 2 uses
  %i.lj = fmul float %i.ky, %i.lh                 ; 3 uses
  %i.lk = fmul float %i.lc, %i.lh                 ; 4 uses
  %i.ll = fmul float %i.lf, %i.li                 ; 2 uses
  %i.lm = fmul float %i.lf, %i.lj                 ; 2 uses
  %i.ln = fmul float %i.lf, %i.lk                 ; 2 uses
  %i.lo = fmul float %i.kw, %i.li                 ; 2 uses
  %i.lp = fmul float %i.kw, %i.lj                 ; 2 uses
  %i.lq = fmul float %i.kw, %i.lk                 ; 2 uses
  %i.lr = fmul float %i.ky, %i.lj                 ; 2 uses
  %i.ls = fmul float %i.ky, %i.lk                 ; 2 uses
  %i.lt = fmul float %i.lc, %i.lk                 ; 2 uses
  %i.lu = add nsw i32 %i.ku, 1
  %i.lv = sext i32 %i.lu to i64                   ; 4 uses
  %i.lw = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.lv ; 9 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.mf = add nsw i32 %i.kp, 1
  %i.mg = sext i32 %i.mf to i64                   ; 4 uses
  %i.mh = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.mg ; 3 uses
  %.scalar = fadd float %i.lr, %i.lt
  %i.mi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mk = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.mj ; 3 uses
  %.scalar446 = fsub float %i.lp, %i.ln           ; 3 uses
  %i.ml = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar446, i64 0 ; 2 uses
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar447 = fadd float %i.lq, %i.lm           ; 3 uses
  %i.mn = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar447, i64 0 ; 2 uses
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mp = load <2 x float>, ptr %i.lw, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.mq = load <2 x float>, ptr %i.lx, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.mr = load <2 x float>, ptr %i.ly, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.ms = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mt = insertelement <4 x float> %i.ms, float 0.000000e+00, i64 3
  %i.mu = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mv = insertelement <4 x float> %i.mu, float 0.000000e+00, i64 3
  %i.mw = shufflevector <2 x float> %i.mr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mx = insertelement <4 x float> %i.mw, float 0.000000e+00, i64 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mz = fadd float %i.lp, %i.ln                 ; 4 uses
  %i.na = fadd float %i.lo, %i.lt
  %i.nb = fsub float 1.000000e+00, %i.na          ; 4 uses
  %i.nc = fsub float %i.ls, %i.ll                 ; 4 uses
  %i.nd = load <2 x float>, ptr %i.ma, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.ne = load float, ptr %i.md, align 4, !tbaa !20, !noalias !410
  %i.nf = load <2 x float>, ptr %i.lz, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.ng = load float, ptr %i.mc, align 4, !tbaa !20, !noalias !410
  %i.nh = load <2 x float>, ptr %i.mb, align 4, !tbaa !20, !noalias !410 ; 2 uses
  %i.ni = load float, ptr %i.me, align 4, !tbaa !20, !noalias !410
  %i.nj = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nk = shufflevector <4 x float> %i.mt, <4 x float> %i.nj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nl = fmul <4 x float> %i.nk, %i.mm
  %i.nm = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nn = shufflevector <4 x float> %i.mv, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.no = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nn, <4 x float> %i.mk, <4 x float> %i.nl)
  %i.np = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nq = shufflevector <4 x float> %i.mx, <4 x float> %i.np, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nq, <4 x float> %i.mo, <4 x float> %i.no)
  %i.ns = shufflevector <2 x float> %i.mq, <2 x float> %i.nd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.nt = insertelement <4 x float> %i.ns, float 0.000000e+00, i64 3
  %i.nu = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nb, i64 0
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.nw = fmul <4 x float> %i.nt, %i.nv
  %i.nx = shufflevector <2 x float> %i.mp, <2 x float> %i.nf, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ny = insertelement <4 x float> %i.nx, float 0.000000e+00, i64 3 ; 2 uses
  %i.nz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.mz, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ob = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ny, <4 x float> %i.oa, <4 x float> %i.nw)
  %i.oc = shufflevector <2 x float> %i.mr, <2 x float> %i.nh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.od = insertelement <4 x float> %i.oc, float 0.000000e+00, i64 3 ; 2 uses
  %i.oe = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.nc, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.og = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> %i.of, <4 x float> %i.ob)
  store <4 x float> %i.nr, ptr %i.mh, align 4
  store <4 x float> %i.og, ptr %i.my, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %.scalar448 = fsub float %i.lq, %i.lm           ; 4 uses
  %i.oi = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar448, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar449 = fadd float %i.ls, %i.ll           ; 4 uses
  %i.ok = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar449, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar450 = fadd float %i.lo, %i.lr
  %i.om = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar450, i64 0
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oo = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.on ; 2 uses
  %i.op = insertelement <4 x float> %i.ns, float 1.000000e+00, i64 3
  %i.oq = insertelement <4 x float> %i.op, float %i.ne, i64 2
  %i.or = fmul <4 x float> %i.ol, %i.oq
  %i.os = insertelement <4 x float> %i.ny, float %i.ng, i64 2
  %i.ot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> %i.oj, <4 x float> %i.or)
  %i.ou = insertelement <4 x float> %i.od, float %i.ni, i64 2
  %i.ov = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> %i.oo, <4 x float> %i.ot)
  store <4 x float> %i.ov, ptr %i.oh, align 4
  %i.ow = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.lv ; 3 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !20 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !20 ; 3 uses
  %i.pa = fmul float %.scalar446, %i.oz
  %i.pb = extractelement <4 x float> %i.mk, i64 0 ; 2 uses
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.ox, float %i.pa)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !20 ; 3 uses
  %i.pf = tail call noundef float @llvm.fmuladd.f32(float %.scalar447, float %i.pe, float %i.pc)
  %i.pg = fmul float %i.nb, %i.oz
  %i.ph = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.ox, float %i.pg)
  %i.pi = tail call noundef float @llvm.fmuladd.f32(float %i.nc, float %i.pe, float %i.ph)
  %i.pj = fmul float %.scalar449, %i.oz
  %i.pk = tail call float @llvm.fmuladd.f32(float %.scalar448, float %i.ox, float %i.pj)
  %i.pl = extractelement <4 x float> %i.oo, i64 0 ; 3 uses
  %i.pm = tail call noundef float @llvm.fmuladd.f32(float %i.pl, float %i.pe, float %i.pk)
  %.sroa.0.0.vec.insert.i241 = insertelement <2 x float> poison, float %i.pf, i64 0
  %.sroa.0.4.vec.insert.i242 = insertelement <2 x float> %.sroa.0.0.vec.insert.i241, float %i.pi, i64 1
  %.sroa.3.12.vec.insert.i243 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pm, i64 0
  %i.pn = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.mg ; 14 uses
  store <2 x float> %.sroa.0.4.vec.insert.i242, ptr %i.pn, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 9 uses
  store <2 x float> %.sroa.3.12.vec.insert.i243, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !21
  %i.po = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.lv ; 3 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !20 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !20 ; 3 uses
  %i.ps = fmul float %.scalar446, %i.pr
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pp, float %i.ps)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !20 ; 3 uses
  %i.pw = tail call noundef float @llvm.fmuladd.f32(float %.scalar447, float %i.pv, float %i.pt)
  %i.px = fmul float %i.nb, %i.pr
  %i.py = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.pp, float %i.px)
  %i.pz = tail call noundef float @llvm.fmuladd.f32(float %i.nc, float %i.pv, float %i.py)
  %i.qa = fmul float %.scalar449, %i.pr
  %i.qb = tail call float @llvm.fmuladd.f32(float %.scalar448, float %i.pp, float %i.qa)
  %i.qc = tail call noundef float @llvm.fmuladd.f32(float %i.pl, float %i.pv, float %i.qb)
  %.sroa.0.0.vec.insert.i246 = insertelement <2 x float> poison, float %i.pw, i64 0
  %.sroa.0.4.vec.insert.i247 = insertelement <2 x float> %.sroa.0.0.vec.insert.i246, float %i.pz, i64 1
  %.sroa.3.12.vec.insert.i248 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qc, i64 0
  %i.qd = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.mg ; 8 uses
  store <2 x float> %.sroa.0.4.vec.insert.i247, ptr %i.qd, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i248, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !21
  %i.qe = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.lv ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qh = load ptr, ptr %i.kk, align 8, !tbaa !47
  %i.qi = getelementptr inbounds [688 x i8], ptr %i.qh, i64 %i.kr ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 352
  %i.qk = load float, ptr %i.qe, align 4, !tbaa !20 ; 2 uses
  %i.ql = load float, ptr %i.qf, align 4, !tbaa !20 ; 2 uses
  %i.qm = load float, ptr %i.qg, align 4, !tbaa !20 ; 2 uses
  %i.qn = insertelement <2 x float> %i.ml, float %i.nb, i64 1
  %i.qo = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qq = fmul <2 x float> %i.qn, %i.qp
  %i.qr = shufflevector <4 x float> %i.mk, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qs = insertelement <2 x float> %i.qr, float %i.mz, i64 1
  %i.qt = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.qu = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qs, <2 x float> %i.qu, <2 x float> %i.qq)
  %i.qw = insertelement <2 x float> %i.mn, float %i.nc, i64 1
  %i.qx = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qw, <2 x float> %i.qy, <2 x float> %i.qv)
  %i.ra = fmul float %.scalar449, %i.ql
  %i.rb = tail call float @llvm.fmuladd.f32(float %.scalar448, float %i.qk, float %i.ra)
  %i.rc = tail call noundef float @llvm.fmuladd.f32(float %i.pl, float %i.qm, float %i.rb)
  %i.rd = load <2 x float>, ptr %i.qj, align 4, !tbaa !20
  %i.re = fsub <2 x float> %i.qz, %i.rd           ; 7 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qi, i64 360
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !20
  %i.rh = fsub float %i.rc, %i.rg                 ; 7 uses
  %.sroa.3.12.vec.insert.i258 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rh, i64 0
  %i.ri = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.mg ; 5 uses
  store <2 x float> %i.re, ptr %i.ri, align 4
end_hunk_0
