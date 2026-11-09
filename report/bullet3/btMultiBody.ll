Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E:bb.a
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
  %wide.trip.count = zext i32 %.0188.lcssa to i64
  br label %bb.w

.preheader.lr.ph:                                 ; preds = %bb.ab, %.preheader384
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !47
  br label %.preheader

bb.w:                                             ; preds = %.lr.ph393, %bb.ab
  %indvars.iv406 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next407, %bb.ab ] ; 2 uses
  %i.kn = trunc nuw nsw i64 %indvars.iv406 to i32
  %i.ko = xor i32 %i.kn, -1
  %i.kp = add nsw i32 %.0188.lcssa, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !20
  %i.kt = fptosi float %i.ks to i32               ; 2 uses
  %i.ku = load ptr, ptr %i.kk, align 8, !tbaa !47
  %i.kv = sext i32 %i.kt to i64                   ; 3 uses
  %i.kw = getelementptr inbounds [688 x i8], ptr %i.ku, i64 %i.kv ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !77
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 336
  %i.la = load float, ptr %i.kz, align 4, !tbaa !20 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 340
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 348
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !20 ; 4 uses
  %i.le = add nsw i32 %i.ky, 1
  %i.lf = sext i32 %i.le to i64                   ; 4 uses
  %i.lg = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.lf ; 6 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lm = load <2 x float>, ptr %i.lb, align 4, !tbaa !20 ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.lm, %i.lm
  %i.ln = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.la, float %i.la, float %i.ln)
  %i.lp = extractelement <2 x float> %i.lm, i64 1 ; 2 uses
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.lp, float %i.lo)
  %i.lr = tail call noundef float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.lq)
  %i.ls = fdiv float 2.000000e+00, %i.lr          ; 2 uses
  %i.lt = fmul float %i.la, %i.ls                 ; 2 uses
  %i.lu = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lm, %i.lv           ; 4 uses
  %i.lx = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ma = fmul <2 x float> %i.ly, %i.lz           ; 3 uses
  %i.mb = fmul float %i.la, %i.lt                 ; 2 uses
  %i.mc = insertelement <2 x float> poison, float %i.la, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.md, %i.lw           ; 3 uses
  %shift = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop450 = fmul <2 x float> %i.lm, %shift ; 2 uses
  %i.mf = extractelement <2 x float> %foldExtExtBinop450, i64 0
  %i.mg = fmul <2 x float> %i.lm, %i.lw           ; 3 uses
  %i.mh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mg)
  %i.mi = fadd <2 x float> %i.me, %i.ma           ; 6 uses
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.mk = extractelement <2 x float> %i.mg, i64 1
  %i.ml = fadd float %i.mb, %i.mk
  %i.mm = load <2 x float>, ptr %i.lg, align 4, !tbaa !20, !noalias !397 ; 3 uses
  %i.mn = load float, ptr %i.ll, align 4, !tbaa !20, !noalias !397 ; 3 uses
  %i.mo = load <2 x float>, ptr %i.li, align 4, !tbaa !20, !noalias !397 ; 3 uses
  %i.mp = fmul float %i.ld, %i.lt                 ; 2 uses
  %i.mq = shufflevector <2 x float> %foldExtExtBinop450, <2 x float> %i.me, <2 x i32> <i32 0, i32 3>
  %i.mr = insertelement <2 x float> %i.ma, float %i.mp, i64 0
  %i.ms = fsub <2 x float> %i.mq, %i.mr           ; 5 uses
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.mu = fadd float %i.mf, %i.mp                 ; 6 uses
  %i.mv = shufflevector <2 x float> %i.mm, <2 x float> %i.mo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.mw = extractelement <2 x float> %i.ms, i64 1 ; 2 uses
  %i.mx = add nsw i32 %i.kt, 1
  %i.my = sext i32 %i.mx to i64                   ; 4 uses
  %i.mz = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.my ; 5 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !21
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = extractelement <2 x float> %i.mg, i64 0
  %i.nc = fadd float %i.mb, %i.nb
  %i.nd = load <2 x float>, ptr %i.lk, align 4, !tbaa !20, !noalias !397 ; 4 uses
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nf = shufflevector <2 x float> %i.nd, <2 x float> %i.mm, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ng = shufflevector <4 x float> %i.mv, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nh = shufflevector <2 x float> %i.mo, <2 x float> %i.nd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ni = insertelement <4 x float> %i.nh, float 0.000000e+00, i64 3
  %i.nj = load <2 x float>, ptr %i.lh, align 4, !tbaa !20, !noalias !397 ; 4 uses
  %i.nk = extractelement <2 x float> %i.nj, i64 0
  %i.nl = extractelement <2 x float> %i.nj, i64 1
  %i.nm = fmul float %i.nk, %i.mu
  %i.nn = shufflevector <2 x float> %i.mo, <2 x float> %i.nd, <2 x i32> <i32 0, i32 2>
  %i.no = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.np = fmul float %i.mu, %i.mn
  %i.nq = load <2 x float>, ptr %i.lj, align 4, !tbaa !20, !noalias !397 ; 4 uses
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.nf, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nt = fmul float %i.nl, %i.mu
  %i.nu = shufflevector <2 x float> %i.mm, <2 x float> %i.nq, <2 x i32> <i32 0, i32 2>
  %i.nv = extractelement <2 x float> %i.nq, i64 1
  %i.nw = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nx = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %i.np, i64 1
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.nw, <2 x float> %i.ny)
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ob = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.lf ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.mh, i64 1
  %i.og = fsub <2 x float> splat (float 1.000000e+00), %i.of ; 6 uses
  %i.oh = extractelement <2 x float> %i.og, i64 1
  %i.oi = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oj = shufflevector <4 x float> %i.oi, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ok = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> %i.og, <2 x i32> <i32 3, i32 1>
  %i.on = shufflevector <2 x float> %i.mi, <2 x float> %i.ms, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.oo = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.my ; 14 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 9 uses
  %i.op = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.lf ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = shufflevector <2 x float> %i.mi, <2 x float> %i.ms, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.os = shufflevector <4 x float> %i.oi, <4 x float> %i.or, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ot = extractelement <2 x float> %i.og, i64 0 ; 2 uses
  %i.ou = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.my ; 8 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 5 uses
  %i.ov = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.lf ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oy = fsub float 1.000000e+00, %i.ml          ; 4 uses
  %i.oz = fmul float %i.oy, %i.mn
  %foldExtExtBinop452 = fsub <2 x float> %i.me, %i.ma ; 3 uses
  %i.pa = extractelement <2 x float> %foldExtExtBinop452, i64 0 ; 2 uses
  %i.pb = shufflevector <2 x float> %foldExtExtBinop452, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = fmul <2 x float> %i.nj, %i.pb
  %i.pd = fmul float %i.pa, %i.mn
  %i.pe = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.ok, <2 x float> %i.pc)
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.oh, float %i.pd)
  %i.ph = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pj = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.pk = fmul <4 x float> %i.pi, %i.pj
  %i.pl = shufflevector <4 x float> %i.ph, <4 x float> %i.pk, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pm = insertelement <4 x float> %i.pl, float %i.oz, i64 3
  %i.pn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ns, <4 x float> %i.mj, <4 x float> %i.pm) ; 2 uses
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.no, <2 x float> %i.pf)
  %i.pp = insertelement <4 x float> %i.pn, float %i.nm, i64 0
  %i.pq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ng, <4 x float> %i.mt, <4 x float> %i.pp) ; 3 uses
  %i.pr = insertelement <4 x float> %i.pq, float 0.000000e+00, i64 3
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> %i.oa, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.pt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ni, <4 x float> %i.oj, <4 x float> %i.ps)
  store <2 x float> %i.po, ptr %i.mz, align 4
  %i.pu = shufflevector <4 x float> %i.pn, <4 x float> %i.pq, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.pv = insertelement <4 x float> %i.pu, float 0.000000e+00, i64 1
  store <4 x float> %i.pv, ptr %.sroa.5326.0..sroa_idx, align 4
  %i.pw = extractelement <4 x float> %i.pq, i64 3
  store float %i.pw, ptr %.sroa.10.16..sroa_idx, align 4
  store <4 x float> %i.pt, ptr %i.na, align 4
  %i.px = load float, ptr %i.ob, align 4, !tbaa !20 ; 2 uses
  %i.py = load float, ptr %i.oc, align 4, !tbaa !20 ; 2 uses
  %i.pz = load float, ptr %i.od, align 4, !tbaa !20 ; 2 uses
  %i.qa = insertelement <2 x float> %foldExtExtBinop452, float %i.oy, i64 1 ; 2 uses
  %i.qb = insertelement <2 x float> poison, float %i.py, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = fmul <2 x float> %i.qa, %i.qc
  %i.qe = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qf = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.qf, <2 x float> %i.qd)
  %i.qh = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.qi, <2 x float> %i.qg)
  %i.qk = fmul float %i.mu, %i.py
  store <2 x float> %i.qj, ptr %i.oo, align 4
  %i.ql = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.px, float %i.qk)
  %i.qm = load <2 x float>, ptr %i.op, align 4, !tbaa !20 ; 2 uses
  %i.qn = shufflevector <2 x float> %i.qm, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.qo = insertelement <4 x float> poison, float %i.ql, i64 0
  %i.qp = insertelement <4 x float> %i.qo, float %i.pa, i64 1
  %i.qq = insertelement <4 x float> %i.qp, float %i.oy, i64 2
  %i.qr = insertelement <4 x float> %i.qq, float %i.mu, i64 3
  %i.qs = fmul <4 x float> %i.qn, %i.qr
  %i.qt = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qu = insertelement <2 x float> %i.qt, float %i.pz, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.qw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> %i.qv, <4 x float> %i.qs) ; 3 uses
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qy = insertelement <2 x float> %i.qx, float 0.000000e+00, i64 1
  store <2 x float> %i.qy, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !21
  %i.qz = load float, ptr %i.oq, align 4, !tbaa !20 ; 2 uses
  %i.ra = insertelement <2 x float> poison, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = shufflevector <4 x float> %i.qw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.rd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.rb, <2 x float> %i.rc)
  %i.re = extractelement <4 x float> %i.qw, i64 3
  %i.rf = tail call noundef float @llvm.fmuladd.f32(float %i.ot, float %i.qz, float %i.re)
  %.sroa.3.12.vec.insert.i248 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rf, i64 0
  store <2 x float> %i.rd, ptr %i.ou, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i248, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !21
  %i.rg = load float, ptr %i.ov, align 4, !tbaa !20 ; 2 uses
  %i.rh = load float, ptr %i.ow, align 4, !tbaa !20 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E:bb.a
  %i.wj = getelementptr inbounds nuw i8, ptr %i.sg, i64 172 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !20 ; 2 uses
  %i.wl = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sg, i64 176 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 8, !tbaa !20 ; 2 uses
  %i.wo = load float, ptr %i.vb, align 4, !tbaa !20 ; 2 uses
  %i.wp = fneg float %i.wo
  %i.wq = fmul float %i.wn, %i.wp
  %i.wr = tail call float @llvm.fmuladd.f32(float %i.wk, float %i.wl, float %i.wq)
  %i.ws = load float, ptr %i.se, align 4, !tbaa !20 ; 2 uses
  %i.wt = load float, ptr %i.wi, align 8, !tbaa !20 ; 2 uses
  %i.wu = fneg float %i.wl
  %i.wv = fmul float %i.wt, %i.wu
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.wn, float %i.ws, float %i.wv)
  %i.wx = fneg float %i.ws
  %i.wy = fmul float %i.wk, %i.wx
  %i.wz = tail call float @llvm.fmuladd.f32(float %i.wt, float %i.wo, float %i.wy)
  %i.xa = getelementptr i8, ptr %i.sg, i64 184
  %i.xb = load float, ptr %i.xa, align 8, !tbaa !20
  %i.xc = fadd float %i.wr, %i.xb
  %i.xd = getelementptr i8, ptr %i.sg, i64 188
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !20
  %i.xf = fadd float %i.ww, %i.xe
  %i.xg = getelementptr i8, ptr %i.sg, i64 192
  %i.xh = load float, ptr %i.xg, align 8, !tbaa !20
  %i.xi = fadd float %i.wz, %i.xh
  %i.xj = load float, ptr %i.oo, align 4, !tbaa !20
  %i.xk = load float, ptr %i.vy, align 4, !tbaa !20
  %i.xl = fmul float %i.xf, %i.xk
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.xj, float %i.xc, float %i.xl)
  %i.xn = load float, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !20
  %i.xo = tail call noundef float @llvm.fmuladd.f32(float %i.xn, float %i.xi, float %i.xm) ; 2 uses
  %i.xp = getelementptr i8, ptr %i.wh, i64 4      ; 2 uses
  store float %i.xo, ptr %i.xp, align 4, !tbaa !20
  %i.xq = getelementptr inbounds nuw i8, ptr %i.sg, i64 200 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.sg, i64 204 ; 2 uses
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !20 ; 2 uses
  %i.xt = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.sg, i64 208 ; 2 uses
  %i.xv = load float, ptr %i.xu, align 8, !tbaa !20 ; 2 uses
  %i.xw = load float, ptr %i.vb, align 4, !tbaa !20 ; 2 uses
  %i.xx = fneg float %i.xw
  %i.xy = fmul float %i.xv, %i.xx
  %i.xz = tail call float @llvm.fmuladd.f32(float %i.xs, float %i.xt, float %i.xy)
  %i.ya = load float, ptr %i.se, align 4, !tbaa !20 ; 2 uses
  %i.yb = load float, ptr %i.xq, align 8, !tbaa !20 ; 2 uses
  %i.yc = fneg float %i.xt
  %i.yd = fmul float %i.yb, %i.yc
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.ya, float %i.yd)
  %i.yf = fneg float %i.ya
  %i.yg = fmul float %i.xs, %i.yf
  %i.yh = tail call float @llvm.fmuladd.f32(float %i.yb, float %i.xw, float %i.yg)
  %i.yi = getelementptr i8, ptr %i.sg, i64 216
  %i.yj = load float, ptr %i.yi, align 8, !tbaa !20
  %i.yk = fadd float %i.xz, %i.yj
  %i.yl = getelementptr i8, ptr %i.sg, i64 220
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !20
  %i.yn = fadd float %i.ye, %i.ym
  %i.yo = getelementptr i8, ptr %i.sg, i64 224
  %i.yp = load float, ptr %i.yo, align 8, !tbaa !20
  %i.yq = fadd float %i.yh, %i.yp
  %i.yr = load float, ptr %i.oo, align 4, !tbaa !20
  %i.ys = load float, ptr %i.vy, align 4, !tbaa !20
  %i.yt = fmul float %i.yn, %i.ys
  %i.yu = tail call float @llvm.fmuladd.f32(float %i.yr, float %i.yk, float %i.yt)
  %i.yv = load float, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !20
  %i.yw = tail call noundef float @llvm.fmuladd.f32(float %i.yv, float %i.yq, float %i.yu) ; 2 uses
  %i.yx = getelementptr i8, ptr %i.wh, i64 8      ; 2 uses
  store float %i.yw, ptr %i.yx, align 4, !tbaa !20
  %i.yy = load float, ptr %i.ou, align 4, !tbaa !20
  %i.yz = load float, ptr %i.uw, align 8, !tbaa !20
  %i.za = getelementptr inbounds nuw i8, ptr %i.ou, i64 4 ; 3 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !20
  %i.zc = load float, ptr %i.ux, align 4, !tbaa !20
  %i.zd = fmul float %i.zb, %i.zc
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.yz, float %i.zd)
  %i.zf = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !20
  %i.zg = load float, ptr %i.uz, align 8, !tbaa !20
  %i.zh = tail call noundef float @llvm.fmuladd.f32(float %i.zf, float %i.zg, float %i.ze)
  %i.zi = fadd float %i.wd, %i.zh
  store float %i.zi, ptr %i.wh, align 4, !tbaa !20
  %i.zj = load float, ptr %i.ou, align 4, !tbaa !20
  %i.zk = load float, ptr %i.wi, align 8, !tbaa !20
  %i.zl = load float, ptr %i.za, align 4, !tbaa !20
  %i.zm = load float, ptr %i.wj, align 4, !tbaa !20
  %i.zn = fmul float %i.zl, %i.zm
  %i.zo = tail call float @llvm.fmuladd.f32(float %i.zj, float %i.zk, float %i.zn)
  %i.zp = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !20
  %i.zq = load float, ptr %i.wm, align 8, !tbaa !20
  %i.zr = tail call noundef float @llvm.fmuladd.f32(float %i.zp, float %i.zq, float %i.zo)
  %i.zs = fadd float %i.xo, %i.zr
  store float %i.zs, ptr %i.xp, align 4, !tbaa !20
  %i.zt = load float, ptr %i.ou, align 4, !tbaa !20
  %i.zu = load float, ptr %i.xq, align 8, !tbaa !20
  %i.zv = load float, ptr %i.za, align 4, !tbaa !20
  %i.zw = load float, ptr %i.xr, align 4, !tbaa !20
  %i.zx = fmul float %i.zv, %i.zw
  %i.zy = tail call float @llvm.fmuladd.f32(float %i.zt, float %i.zu, float %i.zx)
  %i.zz = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !20
  %i.aaa = load float, ptr %i.xu, align 8, !tbaa !20
  %i.aab = tail call noundef float @llvm.fmuladd.f32(float %i.zz, float %i.aaa, float %i.zy)
  %i.aac = fadd float %i.yw, %i.aab
  store float %i.aac, ptr %i.yx, align 4, !tbaa !20
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.aad = getelementptr inbounds nuw i8, ptr %i.sg, i64 136
  %i.aae = getelementptr inbounds nuw i8, ptr %i.sg, i64 140
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !20 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.sg, i64 144
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !20 ; 2 uses
  %i.aai = extractelement <2 x float> %i.sa, i64 1 ; 2 uses
  %i.aaj = fneg float %i.aai
  %i.aak = fmul float %i.aah, %i.aaj
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.aaf, float %i.sd, float %i.aak)
  %i.aam = load float, ptr %i.aad, align 4, !tbaa !20 ; 2 uses
  %i.aan = fneg float %i.sd
  %i.aao = fmul float %i.aam, %i.aan
  %i.aap = extractelement <2 x float> %i.sa, i64 0 ; 2 uses
  %i.aaq = tail call float @llvm.fmuladd.f32(float %i.aah, float %i.aap, float %i.aao)
  %i.aar = fneg float %i.aap
  %i.aas = fmul float %i.aaf, %i.aar
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.aai, float %i.aas)
  %i.aau = load float, ptr %i.oo, align 4, !tbaa !20
  %i.aav = getelementptr inbounds nuw i8, ptr %i.oo, i64 4 ; 3 uses
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !20
  %i.aax = fmul float %i.aaw, %i.aaq
  %i.aay = tail call float @llvm.fmuladd.f32(float %i.aau, float %i.aal, float %i.aax)
  %i.aaz = load float, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !20
  %i.aba = tail call noundef float @llvm.fmuladd.f32(float %i.aaz, float %i.aat, float %i.aay)
  %i.abb = getelementptr inbounds nuw i8, ptr %i.sg, i64 328
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !86
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.abd ; 3 uses
  store float %i.aba, ptr %i.abe, align 4, !tbaa !20
  %i.abf = getelementptr i8, ptr %i.sg, i64 184
  %i.abg = load float, ptr %i.oo, align 4, !tbaa !20
  %i.abh = load float, ptr %i.abf, align 8, !tbaa !20
  %i.abi = load float, ptr %i.aav, align 4, !tbaa !20
  %i.abj = getelementptr i8, ptr %i.sg, i64 188
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !20
  %i.abl = fmul float %i.abi, %i.abk
  %i.abm = tail call float @llvm.fmuladd.f32(float %i.abg, float %i.abh, float %i.abl)
  %i.abn = load float, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !20
  %i.abo = getelementptr i8, ptr %i.sg, i64 192
  %i.abp = load float, ptr %i.abo, align 8, !tbaa !20
  %i.abq = tail call noundef float @llvm.fmuladd.f32(float %i.abn, float %i.abp, float %i.abm)
  %i.abr = getelementptr i8, ptr %i.abe, i64 4
  store float %i.abq, ptr %i.abr, align 4, !tbaa !20
  %i.abs = getelementptr i8, ptr %i.sg, i64 216
  %i.abt = load float, ptr %i.oo, align 4, !tbaa !20
  %i.abu = load float, ptr %i.abs, align 8, !tbaa !20
  %i.abv = load float, ptr %i.aav, align 4, !tbaa !20
  %i.abw = getelementptr i8, ptr %i.sg, i64 220
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !20
  %i.aby = fmul float %i.abv, %i.abx
  %i.abz = tail call float @llvm.fmuladd.f32(float %i.abt, float %i.abu, float %i.aby)
  %i.aca = load float, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !20
  %i.acb = getelementptr i8, ptr %i.sg, i64 224
  %i.acc = load float, ptr %i.acb, align 8, !tbaa !20
  %i.acd = tail call noundef float @llvm.fmuladd.f32(float %i.aca, float %i.acc, float %i.abz)
  %i.ace = getelementptr i8, ptr %i.abe, i64 8
  store float %i.acd, ptr %i.ace, align 4, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.aa, %bb.z, %bb.y, %bb.x
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.lr.ph, label %bb.w, !llvm.loop !392

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge396
  %.0185399 = phi i32 [ %1, %.preheader.lr.ph ], [ %i.adl, %._crit_edge396 ]
  %i.acf = sext i32 %.0185399 to i64
  %i.acg = getelementptr inbounds [688 x i8], ptr %i.km, i64 %i.acf ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 556
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !79 ; 3 uses
  %i.acj = icmp sgt i32 %i.aci, 0
  br i1 %i.acj, label %.lr.ph395, label %._crit_edge396

.lr.ph395:                                        ; preds = %.preheader
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 328
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !86 ; 2 uses
  %invariant.op = add i32 %i.acl, 6               ; 9 uses
  %i.acm = sext i32 %i.acl to i64                 ; 2 uses
  %wide.trip.count412 = zext nneg i32 %i.aci to i64 ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dk, i64 %i.acm ; 6 uses
  %min.iters.check435 = icmp ult i32 %i.aci, 16
  br i1 %min.iters.check435, label %scalar.ph434.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph395
  %i.acn = add nsw i64 %wide.trip.count412, -1    ; 2 uses
  %i.aco = trunc nsw i64 %i.acn to i32
  %i.acp = add i32 %invariant.op, %i.aco
  %i.acq = icmp slt i32 %i.acp, %invariant.op
  %i.acr = icmp ugt i64 %i.acn, 4294967295
  %i.acs = or i1 %i.acq, %i.acr
  br i1 %i.acs, label %scalar.ph434.preheader, label %vector.memcheck436

vector.memcheck436:                               ; preds = %vector.scevcheck
  %i.act = sext i32 %invariant.op to i64
  %9 = shl nsw i64 %i.act, 2
  %i.acu = shl nsw i64 %i.acm, 2
  %10 = add i64 %9, %i.a
  %i.acv = add i64 %i.acu, %i.dl
  %11 = sub i64 %i.acv, %10
  %diff.check437 = icmp ugt i64 %11, -32
  br i1 %diff.check437, label %scalar.ph434.preheader, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck436
  %n.vec439 = and i64 %wide.trip.count412, 2147483640 ; 3 uses
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph438
  %index441 = phi i64 [ 0, %vector.ph438 ], [ %index.next444, %vector.body440 ] ; 3 uses
  %i.acw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index441 ; 2 uses
  %i.acx = getelementptr i8, ptr %i.acw, i64 16
  %wide.load442 = load <4 x float>, ptr %i.acw, align 4, !tbaa !20
  %wide.load443 = load <4 x float>, ptr %i.acx, align 4, !tbaa !20
  %i.acy = trunc nuw nsw i64 %index441 to i32
  %i.acz = add i32 %invariant.op, %i.acy
  %i.ada = sext i32 %i.acz to i64
  %i.adb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ada ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  store <4 x float> %wide.load442, ptr %i.adb, align 4, !tbaa !20
  store <4 x float> %wide.load443, ptr %i.adc, align 4, !tbaa !20
  %index.next444 = add nuw i64 %index441, 8       ; 2 uses
  %i.add = icmp eq i64 %index.next444, %n.vec439
  br i1 %i.add, label %middle.block445, label %vector.body440, !llvm.loop !393

middle.block445:                                  ; preds = %vector.body440
  %cmp.n446 = icmp eq i64 %n.vec439, %wide.trip.count412
  br i1 %cmp.n446, label %._crit_edge396, label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %vector.memcheck436, %vector.scevcheck, %.lr.ph395, %middle.block445
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck436 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph395 ], [ %n.vec439, %middle.block445 ] ; 3 uses
  %xtraiter457 = and i64 %wide.trip.count412, 3   ; 2 uses
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol

scalar.ph434.prol:                                ; preds = %scalar.ph434.preheader, %scalar.ph434.prol
  %indvars.iv409.prol = phi i64 [ %indvars.iv.next410.prol, %scalar.ph434.prol ], [ %indvars.iv409.ph, %scalar.ph434.preheader ] ; 3 uses
  %prol.iter459 = phi i64 [ %prol.iter459.next, %scalar.ph434.prol ], [ 0, %scalar.ph434.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv409.prol
  %i.ade = load float, ptr %gep.prol, align 4, !tbaa !20
  %i.adf = trunc nuw nsw i64 %indvars.iv409.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.adf
  %i.adg = sext i32 %.reass.prol to i64
  %i.adh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.adg
  store float %i.ade, ptr %i.adh, align 4, !tbaa !20
  %indvars.iv.next410.prol = add nuw nsw i64 %indvars.iv409.prol, 1 ; 2 uses
  %prol.iter459.next = add i64 %prol.iter459, 1   ; 2 uses
  %prol.iter459.cmp.not = icmp eq i64 %prol.iter459.next, %xtraiter457
  br i1 %prol.iter459.cmp.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol, !llvm.loop !394

scalar.ph434.prol.loopexit:                       ; preds = %scalar.ph434.prol, %scalar.ph434.preheader
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %scalar.ph434.preheader ], [ %indvars.iv.next410.prol, %scalar.ph434.prol ]
  %i.adi = sub nsw i64 %indvars.iv409.ph, %wide.trip.count412
  %i.adj = icmp ugt i64 %i.adi, -4
  br i1 %i.adj, label %._crit_edge396, label %scalar.ph434

._crit_edge396:                                   ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434, %middle.block445, %.preheader
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acg, i64 20
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !77 ; 2 uses
  %.not192 = icmp eq i32 %i.adl, -1
  br i1 %.not192, label %.loopexit, label %.preheader, !llvm.loop !395

scalar.ph434:                                     ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.3, %scalar.ph434 ], [ %indvars.iv409.unr, %scalar.ph434.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv409
  %i.adm = load float, ptr %gep, align 4, !tbaa !20
  %i.adn = trunc nuw nsw i64 %indvars.iv409 to i32
  %.reass = add i32 %invariant.op, %i.adn
  %i.ado = sext i32 %.reass to i64
  %i.adp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ado
  store float %i.adm, ptr %i.adp, align 4, !tbaa !20
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410
  %i.adq = load float, ptr %gep.1, align 4, !tbaa !20
  %i.adr = trunc nuw nsw i64 %indvars.iv.next410 to i32
  %.reass.1 = add i32 %invariant.op, %i.adr
  %i.ads = sext i32 %.reass.1 to i64
  %i.adt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ads
  store float %i.adq, ptr %i.adt, align 4, !tbaa !20
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410.1
  %i.adu = load float, ptr %gep.2, align 4, !tbaa !20
  %i.adv = trunc nuw nsw i64 %indvars.iv.next410.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.adv
  %i.adw = sext i32 %.reass.2 to i64
  %i.adx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.adw
  store float %i.adu, ptr %i.adx, align 4, !tbaa !20
  %indvars.iv.next410.2 = add nuw nsw i64 %indvars.iv409, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next410.2
  %i.ady = load float, ptr %gep.3, align 4, !tbaa !20
  %i.adz = trunc nuw nsw i64 %indvars.iv.next410.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.adz
  %i.aea = sext i32 %.reass.3 to i64
  %i.aeb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aea
  store float %i.ady, ptr %i.aeb, align 4, !tbaa !20
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %exitcond413.not.3 = icmp eq i64 %indvars.iv.next410.3, %wide.trip.count412
  br i1 %exitcond413.not.3, label %._crit_edge396, label %scalar.ph434, !llvm.loop !396

.loopexit:                                        ; preds = %._crit_edge396, %._crit_edge391
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btMultiBody6wakeUpEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(640) initializes((562, 563), (568, 572)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.b, align 2, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btMultiBody9goToSleepEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(640) initializes((562, 563)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 0, ptr %i.a, align 2, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody29checkMotionAndSleepIfRequiredEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, float noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 563
  %i.b = load i8, ptr %i.a, align 1, !tbaa !63, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = load i8, ptr @gDisableDeactivation, align 1, !range !68
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -6
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 5 uses
  %i.k = add i32 %i.g, 5                          ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.l = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.l to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp slt i32 %i.k, 3
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.n, align 2, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 568
  store float 0.000000e+00, ptr %i.o, align 8, !tbaa !100
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.089.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.089.epil = phi float [ %.089.epil.init, %.epil.preheader ], [ %i.r, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.q = load float, ptr %i.p, align 4, !tbaa !20 ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %.089.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !398

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader
  %.08.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.t = load float, ptr %i.s, align 4, !tbaa !400
  %i.u = fcmp olt float %.08.lcssa, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.089 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ak, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %.089)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
end_hunk_1
