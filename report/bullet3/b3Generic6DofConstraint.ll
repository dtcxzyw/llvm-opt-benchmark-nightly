Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Generic6DofConstraint?download=true
inline.NumInlined: 350
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN23b3Generic6DofConstraint21get_limit_motor_info2EP22b3RotationalLimitMotorRK11b3TransformS4_RK9b3Vector3S7_S7_S7_PN17b3TypedConstraint17b3ConstraintInfo2EiRS5_ii:bb.a
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bh = fsub <2 x float> %i.bf, %i.bg           ; 3 uses
  %i.bi = shufflevector <2 x float> %i.bd, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x float> %i.be, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bk = fsub <2 x float> %i.bi, %i.bj           ; 3 uses
  %i.bl = insertelement <2 x float> %i.ay, float %i.aq, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.at, i64 1
  %i.bo = fsub <2 x float> %i.bl, %i.bn           ; 4 uses
  %i.bp = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bs = load float, ptr %i.br, align 4, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = fsub float %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.bx = fneg float %i.bc
  %i.by = load <2 x float>, ptr %i.au, align 4, !tbaa !9 ; 7 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bk
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bq, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.cd, <2 x float> %i.cb) ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.by, %i.cf           ; 3 uses
  %i.ch = fmul <2 x float> %i.bq, %i.ce           ; 3 uses
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.cj = fsub <2 x float> %i.ci, %i.cg
  %i.ck = shufflevector <2 x float> %i.bo, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.cl = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cm = fsub <2 x float> %i.ck, %i.cl
  %i.cn = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.by, %i.cn           ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul <2 x float> %i.by, %i.cq
  %i.cs = insertelement <2 x float> %i.cc, float %i.bc, i64 1 ; 3 uses
  %i.ct = fmul <2 x float> %i.cs, %i.cq
  %i.cu = fadd <2 x float> %i.co, %i.cr
  %i.cv = shufflevector <2 x float> %i.co, <2 x float> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cw = fadd <2 x float> %i.cv, %i.ct
  %i.cx = fsub <2 x float> %i.cu, %i.cg           ; 2 uses
  %i.cy = fsub <2 x float> %i.cw, %i.cl           ; 2 uses
  %i.cz = fneg <2 x float> %i.by                  ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.bh, %i.ch
  %i.da = shufflevector <2 x float> %i.bk, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.db = fsub <2 x float> %i.da, %i.co
  %i.dc = load <2 x float>, ptr %i.bw, align 4, !tbaa !12 ; 4 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.de = fmul <2 x float> %i.dd, %i.cx
  %i.df = fmul <2 x float> %i.dd, %i.cy
  %i.dg = fsub <2 x float> %i.cj, %i.de           ; 2 uses
  %i.dh = fsub <2 x float> %i.cm, %i.df           ; 2 uses
  %shift = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fmul <2 x float> %i.dc, %shift
  %i.di = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul <2 x float> %i.di, %i.cx
  %foldExtExtBinop434 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop432 ; 2 uses
  %i.dk = fadd <2 x float> %i.db, %i.dj           ; 3 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> %foldExtExtBinop434, <2 x i32> <i32 1, i32 2>
  %i.dm = fmul <2 x float> %i.dl, %i.cz
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.cs, <2 x float> %i.dm) ; 2 uses
  %i.do = shufflevector <2 x float> %i.dk, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.dp = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.do, %i.dq
  %i.ds = shufflevector <2 x float> %foldExtExtBinop434, <2 x float> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.bz, <2 x float> %i.dr) ; 3 uses
  %i.du = insertelement <2 x float> %i.dt, float 0.000000e+00, i64 1
  %i.dv = fmul <2 x float> %i.dh, %i.cz
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.cs, <2 x float> %i.dv) ; 2 uses
  %i.dx = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dt, <2 x i32> <i32 3, i32 1>
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.dz = load i8, ptr %i.dy, align 4, !tbaa !43, !range !37, !noundef !38
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = icmp eq i32 %12, 0
  %or.cond3.not = and i1 %i.eb, %i.ea
  br i1 %or.cond3.not, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.ec = fmul <2 x float> %i.di, %i.dn
  %i.ed = fmul <2 x float> %i.dc, %i.dt           ; 2 uses
  %i.ee = insertelement <2 x float> %i.ed, float 0.000000e+00, i64 1
  %i.ef = fmul <2 x float> %i.dd, %i.dw
  %i.eg = shufflevector <2 x float> %i.ed, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi <2 x float> [ %i.ee, %bb.i ], [ %i.du, %bb.h ]
  %.sroa.0389.0 = phi <2 x float> [ %i.ec, %bb.i ], [ %i.dn, %bb.h ]
  %.sroa.9.0 = phi <2 x float> [ %i.eg, %bb.i ], [ %i.dx, %bb.h ]
  %.sroa.0.0 = phi <2 x float> [ %i.ef, %bb.i ], [ %i.dw, %bb.h ]
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.ei = sext i32 %i.c to i64                    ; 3 uses
  %i.ej = shl nsw i64 %i.ei, 2
  %scevgep = getelementptr i8, ptr %i.eh, i64 %i.ej ; 2 uses
  store <2 x float> %.sroa.0389.0, ptr %scevgep, align 4, !tbaa !12
  %.sroa.8.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.8.0.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 0
  store float %.sroa.8.0.vec.extract, ptr %.sroa.8.0.scevgep.sroa_idx, align 4, !tbaa !12
  %i.ek = load ptr, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ei
  %i.em = fneg <2 x float> %.sroa.0.0
  store <2 x float> %i.em, ptr %i.el, align 4, !tbaa !12
  %.sroa.9.8.vec.extract388 = extractelement <2 x float> %.sroa.9.0, i64 0
  %i.en = fneg float %.sroa.9.8.vec.extract388
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store float %i.en, ptr %i.ep, align 4, !tbaa !12
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.er = load float, ptr %i.eq, align 4, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.et = load float, ptr %i.es, align 16, !tbaa !9
  %i.eu = extractelement <2 x float> %i.ao, i64 0
  %i.ev = fsub float %i.eu, %i.et                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !9
  %i.ey = fsub float %i.er, %i.ex                 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !9
  %i.fb = fsub float %i.aq, %i.fa                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !9 ; 2 uses
  %i.fg = fneg float %i.ff
  %i.fh = fmul float %i.fb, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.fd, float %i.fh)
  %i.fj = load float, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.fk = fneg float %i.fd
  %i.fl = fmul float %i.ev, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fj, float %i.fl)
  %i.fn = fneg float %i.fj
  %i.fo = fmul float %i.ey, %i.fn
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ff, float %i.fo)
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !106 ; 3 uses
  %i.fr = sext i32 %i.c to i64                    ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fr
  store float %i.fi, ptr %i.fs, align 4, !tbaa !12
  %i.ft = add nsw i32 %i.c, 1
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fu
  store float %i.fm, ptr %i.fv, align 4, !tbaa !12
  %i.fw = add nsw i32 %i.c, 2
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fx
  store float %i.fp, ptr %i.fy, align 4, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ga = load float, ptr %i.ap, align 8, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !9
  %i.gd = load float, ptr %i.fc, align 8, !tbaa !9 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.an, align 16, !tbaa !9 ; 2 uses
  %i.gf = load <2 x float>, ptr %i.fz, align 16, !tbaa !9 ; 2 uses
  %i.gg = fsub <2 x float> %i.ge, %i.gf           ; 2 uses
  %i.gh = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gi = insertelement <2 x float> %i.gh, float %i.ga, i64 0
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x float> %i.gj, float %i.gc, i64 0
  %i.gl = fsub <2 x float> %i.gi, %i.gk           ; 2 uses
  %i.gm = load float, ptr %i.fe, align 4, !tbaa !9
  %i.gn = load <2 x float>, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.go = fneg float %i.gm
  %i.gp = extractelement <2 x float> %i.gl, i64 0
  %i.gq = fmul float %i.gp, %i.go
  %i.gr = extractelement <2 x float> %i.gg, i64 1
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gd, float %i.gq)
  %i.gt = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gu = insertelement <2 x float> %i.gt, float %i.gd, i64 0
  %i.gv = fneg <2 x float> %i.gu
  %i.gw = fmul <2 x float> %i.gg, %i.gv
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gn, <2 x float> %i.gw)
  %i.gy = fneg float %i.gs
  %i.gz = fneg <2 x float> %i.gx                  ; 2 uses
  %i.ha = load ptr, ptr %i.m, align 8, !tbaa !107 ; 3 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.fr
  store float %i.gy, ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.fu
  %i.hd = extractelement <2 x float> %i.gz, i64 0
  store float %i.hd, ptr %i.hc, align 4, !tbaa !12
  %i.he = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.fx
  %i.hf = extractelement <2 x float> %i.gz, i64 1
  store float %i.hf, ptr %i.he, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j, %bb.f
  br i1 %i.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.hg = load float, ptr %1, align 4, !tbaa !34
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !35
  %i.hj = fcmp une float %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !108 ; 4 uses
  %i.hm = sext i32 %i.c to i64                    ; 10 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hm
  store float 0.000000e+00, ptr %i.hn, align 4, !tbaa !12
  %i.ho = and i1 %i.hj, %i.f
  br i1 %i.ho, label %bb.m, label %.critedge

.thread:                                          ; preds = %bb.k
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !108
  %i.hr = sext i32 %i.c to i64                    ; 5 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hr
  store float 0.000000e+00, ptr %i.hs, align 4, !tbaa !12
  br i1 %i.f, label %bb.n, label %.thread375

bb.m:                                             ; preds = %bb.l
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !52
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !51
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hm
  store float %i.hu, ptr %i.hx, align 4, !tbaa !12
  br label %.critedge

bb.n:                                             ; preds = %.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !52
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !51
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.hr
  store float %i.hz, ptr %i.ic, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !56 ; 2 uses
  %i.if = fneg float %i.ie
  %i.ig = select i1 %.not193, float %i.if, float %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !44
  %i.ij = load float, ptr %1, align 4, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.il = load float, ptr %i.ik, align 4, !tbaa !35
  %i.im = load float, ptr %8, align 8, !tbaa !109
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.io = load float, ptr %i.in, align 4, !tbaa !54
  %i.ip = fmul float %i.im, %i.io
  %i.iq = tail call noundef float @_ZN17b3TypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 16 dereferenceable(64) %0, float noundef %i.ii, float noundef %i.ij, float noundef %i.il, float noundef %i.ig, float noundef %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !56
  %i.it = load ptr, ptr %i.hp, align 8, !tbaa !108
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.hr ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !12
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.is, float %i.iv)
  store float %i.iw, ptr %i.iu, align 4, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !55
  %i.iz = fneg float %i.iy
  %i.ja = load float, ptr %8, align 8, !tbaa !109
  %i.jb = fdiv float %i.iz, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !110
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.hr
  store float %i.jb, ptr %i.je, align 4, !tbaa !12
  %i.jf = load float, ptr %i.ix, align 4, !tbaa !55
  %i.jg = load float, ptr %8, align 8, !tbaa !109
  %i.jh = fdiv float %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !111
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.hr
  store float %i.jh, ptr %i.jk, align 4, !tbaa !12
  br label %.thread375

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.jl = load float, ptr %8, align 8, !tbaa !109
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !54
  %i.jo = fmul float %i.jl, %i.jn                 ; 2 uses
  %i.jp = fneg float %i.jo
  %.sink = select i1 %.not193, float %i.jo, float %i.jp
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !20
  %13 = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hm ; 2 uses
  %i.js = load float, ptr %13, align 4, !tbaa !12
  %i.jt = tail call float @llvm.fmuladd.f32(float %.sink, float %i.jr, float %i.js)
  store float %i.jt, ptr %13, align 4, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !53
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !51
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.hm
  store float %i.jv, ptr %i.jy, align 4, !tbaa !12
  %i.jz = load float, ptr %1, align 4, !tbaa !34
  %i.ka = load float, ptr %i.hh, align 4, !tbaa !35
  %i.kb = fcmp oeq float %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  br i1 %i.kb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !110
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.hm
  store float f0xFF7FFFFF, ptr %i.kf, align 4, !tbaa !12
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !111
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.hm
  store float f0x7F7FFFFF, ptr %i.kh, align 4, !tbaa !12
  br label %.thread375

bb.p:                                             ; preds = %.critedge
  %i.ki = icmp eq i32 %i.h, 1                     ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !110
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.hm
  %. = select i1 %i.ki, float 0.000000e+00, float f0xFF7FFFFF
  %.428 = select i1 %i.ki, float f0x7F7FFFFF, float 0.000000e+00
  store float %., ptr %i.kl, align 4, !tbaa !12
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !111
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.hm
  store float %.428, ptr %i.kn, align 4, !tbaa !12
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !18 ; 3 uses
  %i.kq = fcmp ogt float %i.kp, 0.000000e+00
  br i1 %i.kq, label %bb.q, label %.thread375

bb.q:                                             ; preds = %bb.p
  %i.kr = load float, ptr %10, align 16, !tbaa !9 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !9 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !9 ; 2 uses
  %.429 = select i1 %.not193, ptr %4, ptr %6      ; 3 uses
  %.430 = select i1 %.not193, ptr %5, ptr %7      ; 3 uses
  %i.kw = load float, ptr %.429, align 16, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %.429, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !9
  %i.kz = fmul float %i.ky, %i.kt
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kr, float %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %.429, i64 8
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !9
  %i.ld = tail call noundef float @llvm.fmuladd.f32(float %i.lc, float %i.kv, float %i.la)
  %i.le = load float, ptr %.430, align 16, !tbaa !9
  %i.lf = getelementptr inbounds nuw i8, ptr %.430, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !9
  %i.lh = fmul float %i.kt, %i.lg
  %i.li = tail call float @llvm.fmuladd.f32(float %i.le, float %i.kr, float %i.lh)
  %i.lj = getelementptr inbounds nuw i8, ptr %.430, i64 8
  %i.lk = load float, ptr %i.lj, align 8, !tbaa !9
  %i.ll = tail call noundef float @llvm.fmuladd.f32(float %i.lk, float %i.kv, float %i.li)
  %i.lm = fsub float %i.ld, %i.ll                 ; 4 uses
  br i1 %i.ki, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ln = fcmp olt float %i.lm, 0.000000e+00
  br i1 %i.ln, label %bb.s, label %.thread375

bb.s:                                             ; preds = %bb.r
  %i.lo = fneg float %i.kp
  %i.lp = fmul nnan float %i.lm, %i.lo            ; 2 uses
  %14 = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hm ; 2 uses
  %i.lq = load float, ptr %14, align 4, !tbaa !12
  %i.lr = fcmp ogt float %i.lp, %i.lq
  br i1 %i.lr, label %bb.t, label %.thread375

bb.t:                                             ; preds = %bb.s
  store float %i.lp, ptr %14, align 4, !tbaa !12
  br label %.thread375

bb.u:                                             ; preds = %bb.q
  %i.ls = fcmp ogt float %i.lm, 0.000000e+00
  br i1 %i.ls, label %bb.v, label %.thread375

bb.v:                                             ; preds = %bb.u
  %i.lt = fneg float %i.kp
  %i.lu = fmul nnan float %i.lm, %i.lt            ; 2 uses
  %15 = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hm ; 2 uses
  %i.lv = load float, ptr %15, align 4, !tbaa !12
  %i.lw = fcmp olt float %i.lu, %i.lv
  br i1 %i.lw, label %bb.w, label %.thread375

bb.w:                                             ; preds = %bb.v
  store float %i.lu, ptr %15, align 4, !tbaa !12
  br label %.thread375

.thread375:                                       ; preds = %bb.n, %.thread, %bb.a, %bb.r, %bb.u, %bb.t, %bb.s, %bb.w, %bb.v, %bb.p, %bb.o
  %.0185 = phi i32 [ 0, %bb.a ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.r ], [ 1, %.thread ], [ 1, %bb.n ]
  ret i32 %.0185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23b3Generic6DofConstraint7getAxisEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(824) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23b3Generic6DofConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(824) %0, float noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN23b3Generic6DofConstraint9setFramesERK11b3TransformS2_PK15b3RigidBodyData(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(824) initializes((64, 192), (320, 332), (336, 348), (368, 380), (576, 704), (768, 784)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !10
  tail call void @_ZN23b3Generic6DofConstraint19calculateTransformsEPK15b3RigidBodyData(ptr noundef nonnull align 16 dereferenceable(824) %0, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23b3Generic6DofConstraint24getRelativePivotPositionEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(824) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23b3Generic6DofConstraint8getAngleEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(824) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23b3Generic6DofConstraint13calcAnchorPosEPK15b3RigidBodyData(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(824) initializes((800, 816)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [80 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load float, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [80 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load float, ptr %i.k, align 4, !tbaa !42 ; 2 uses
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fadd float %i.f, %i.l
  %i.o = fdiv float %i.f, %i.n
  %storemerge = select i1 %i.m, float 1.000000e+00, float %i.o ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.s = load float, ptr %i.r, align 8, !tbaa !9
  %i.t = fmul float %storemerge, %i.s
  %i.u = fsub float 1.000000e+00, %storemerge     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.w = load float, ptr %i.v, align 8, !tbaa !9
  %i.x = fmul float %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.p, align 16, !tbaa !9
  %i.z = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = load <2 x float>, ptr %i.q, align 16, !tbaa !9
  %i.ad = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ac, %i.ae
  %i.ag = fadd <2 x float> %i.ab, %i.af
  %i.ah = fadd float %i.t, %i.x
  %.sroa.3.12.vec.insert.i.i16 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <2 x float> %i.ag, ptr %i.ai, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 808
  store <2 x float> %.sroa.3.12.vec.insert.i.i16, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  ret void
}

declare noundef float @_ZN17b3TypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 16 dereferenceable(64), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23b3Generic6DofConstraint8setParamEifi(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(824) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %or.cond = icmp ult i32 %3, 3
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  store float %2, ptr %i.c, align 4, !tbaa !12
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store float %2, ptr %i.f, align 4, !tbaa !12
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = zext nneg i32 %3 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store float %2, ptr %i.i, align 4, !tbaa !12
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %3, 6
  br i1 %i.j, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  switch i32 %1, label %bb.k [
    i32 2, label %bb.h
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr [64 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 224
  store float %2, ptr %i.m, align 16, !tbaa !54
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.n = zext nneg i32 %3 to i64
  %i.o = getelementptr [64 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 228
  store float %2, ptr %i.p, align 4, !tbaa !53
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr [64 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 220
  store float %2, ptr %i.s, align 4, !tbaa !52
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c, %bb.h, %bb.i, %bb.j
  %.sink = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ], [ 4, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ]
  %i.t = mul nuw nsw i32 %3, 3
  %i.u = shl nuw nsw i32 %.sink, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = or i32 %i.w, %i.u
  store i32 %i.x, ptr %i.v, align 4, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.b
end_hunk_0
