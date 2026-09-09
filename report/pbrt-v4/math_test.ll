Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_:bb.a
  %i.cq = fadd float %i.bj, %i.ci                 ; 4 uses
  %i.cr = fsub float %i.cq, %i.bj                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fsub float %i.bj, %i.cs
  %i.cu = fsub float %i.ci, %i.cr
  %i.cv = fadd float %i.cu, %i.ct
  %i.cw = fadd float %i.cv, %i.cp
  %i.cx = fadd float %i.bl, %i.cw
  %i.cy = fadd float %i.be, %i.cq                 ; 4 uses
  %i.cz = fsub float %i.cy, %i.be                 ; 2 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fsub float %i.be, %i.da
  %i.dc = fsub float %i.cq, %i.cz
  %i.dd = fadd float %i.dc, %i.db
  %i.de = fadd float %i.dd, %i.cx
  %i.df = fadd float %i.bg, %i.de
  %i.dg = fadd float %i.ba, %i.cy                 ; 3 uses
  %i.dh = fsub float %i.dg, %i.ba                 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fsub float %i.ba, %i.di
  %i.dk = fsub float %i.cy, %i.dh
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, %i.df
  %i.dn = fadd float %i.bc, %i.dm
  %i.do = fadd float %i.dg, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dq = shufflevector <2 x float> %i.at, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ds = load <4 x float>, ptr %i.dr, align 4
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dv = load float, ptr %i.du, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !37 ; 2 uses
  %i.ea = fdiv float 1.000000e+00, %i.do
  %i.eb = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 7, i32 2, i32 15, i32 10, i32 3, i32 6, i32 11, i32 14> ; 2 uses
  %i.ec = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 3 uses
  %i.ed = fmul <8 x float> %i.eb, %i.ec           ; 4 uses
  %i.ee = insertelement <2 x float> %i.dt, float %i.dx, i64 1
  %i.ef = fneg <2 x float> %i.ee                  ; 2 uses
  %i.eg = shufflevector <2 x float> %i.m, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.eh = fneg <2 x float> %i.eg
  %i.ei = fneg <16 x float> %i.g
  %i.ej = shufflevector <16 x float> %i.ei, <16 x float> poison, <4 x i32> <i32 2, i32 7, i32 10, i32 15>
  %i.ek = fneg <16 x float> %i.g
  %i.el = shufflevector <16 x float> %i.ek, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.em, align 4, !tbaa !50
  %i.en = shufflevector <2 x float> %i.at, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <16 x float> %i.g, <16 x float> %i.en, <8 x i32> <i32 5, i32 16, i32 17, i32 17, i32 16, i32 16, i32 8, i32 17>
  %i.ep = shufflevector <16 x float> %i.en, <16 x float> %i.g, <8 x i32> <i32 0, i32 poison, i32 29, i32 poison, i32 16, i32 poison, i32 1, i32 poison>
  %i.eq = shufflevector <2 x float> %i.eh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <8 x float> %i.ep, <8 x float> %i.eq, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 poison>
  %i.es = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.et = shufflevector <8 x float> %i.er, <8 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 6, i32 10> ; 2 uses
  %i.eu = fmul <8 x float> %i.eo, %i.et           ; 4 uses
  %i.ev = fneg <8 x float> %i.eu
  %i.ew = shufflevector <8 x float> %i.et, <8 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 3, i32 poison, i32 5, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <16 x float> %i.g, <16 x float> %i.ew, <8 x i32> <i32 5, i32 17, i32 13, i32 19, i32 0, i32 21, i32 8, i32 23>
  %i.ey = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ex, <8 x float> %i.dq, <8 x float> %i.ev)
  %i.ez = fneg <8 x float> %i.ed
  %i.fa = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.eb, <8 x float> %i.ec, <8 x float> %i.ez)
  %i.fb = shufflevector <2 x float> %i.ar, <2 x float> %i.ef, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.ej, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x float> %i.fb, <8 x float> %i.fc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fe = fmul <8 x float> %i.aj, %i.fd           ; 3 uses
  %i.ff = fneg <8 x float> %i.fe
  %i.fg = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.fd, <8 x float> %i.aj, <8 x float> %i.ff)
  %i.fh = fadd <8 x float> %i.fe, %i.ed           ; 4 uses
  %i.fi = fsub <8 x float> %i.fh, %i.ed           ; 2 uses
  %i.fj = fsub <8 x float> %i.fh, %i.fi
  %i.fk = fsub <8 x float> %i.ed, %i.fj
  %i.fl = fsub <8 x float> %i.fe, %i.fi
  %i.fm = fadd <8 x float> %i.fl, %i.fk
  %i.fn = fadd <8 x float> %i.fg, %i.fm
  %i.fo = fadd <8 x float> %i.fa, %i.fn
  %i.fp = fadd <8 x float> %i.eu, %i.fh           ; 3 uses
  %i.fq = fsub <8 x float> %i.fp, %i.eu           ; 2 uses
  %i.fr = fsub <8 x float> %i.fp, %i.fq
  %i.fs = fsub <8 x float> %i.eu, %i.fr
  %i.ft = fsub <8 x float> %i.fh, %i.fq
  %i.fu = fadd <8 x float> %i.ft, %i.fs
  %i.fv = fadd <8 x float> %i.fu, %i.fo
  %i.fw = fadd <8 x float> %i.ey, %i.fv
  %i.fx = fadd <8 x float> %i.fp, %i.fw
  %i.fy = insertelement <8 x float> poison, float %i.ea, i64 0
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ga = fmul <8 x float> %i.fx, %i.fz
  %i.gb = shufflevector <8 x float> %i.ga, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %i.gb, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gc = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <16 x float> %i.gc, <16 x float> %i.g, <4 x i32> <i32 3, i32 16, i32 2, i32 24> ; 2 uses
  %i.ge = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.gf = shufflevector <2 x float> %i.k, <2 x float> %i.h, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.el, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 8, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.aj, <8 x float> %i.es, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 10, i32 3>
  %i.gl = fmul <8 x float> %i.gj, %i.gk           ; 4 uses
  %i.gm = fneg <8 x float> %i.gl
  %i.gn = shufflevector <4 x float> %i.gd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <8 x float> %i.gj, <8 x float> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gp = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 3, i32 3>
  %i.gq = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.go, <8 x float> %i.gp, <8 x float> %i.gm)
  %i.gr = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gs = shufflevector <8 x float> %i.ec, <8 x float> %i.gr, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 8, i32 9, i32 9>
  %i.gt = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <8 x float> %i.gt, <8 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.gv = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gw = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.o, <4 x float> %i.gw, <8 x i32> <i32 1, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.gy = shufflevector <2 x float> %i.m, <2 x float> %i.j, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 3> ; 2 uses
  %i.gz = shufflevector <8 x float> %i.gx, <8 x float> %i.gy, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 13, i32 6, i32 15>
  %i.ha = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.hb = shufflevector <8 x float> %i.gz, <8 x float> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.hc = fmul <8 x float> %i.gu, %i.hb           ; 3 uses
  %i.hd = insertelement <8 x float> %i.gy, float %i.dv, i64 0
  %i.he = insertelement <8 x float> %i.hd, float %i.dz, i64 2
  %i.hf = shufflevector <8 x float> %i.he, <8 x float> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.hg = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = shufflevector <8 x float> %i.hf, <8 x float> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 7> ; 3 uses
  %i.hi = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 poison, i32 4, i32 poison, i32 6, i32 5, i32 poison, i32 7, i32 poison>
  %i.hj = shufflevector <8 x float> %i.gr, <8 x float> %i.hi, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 0, i32 14, i32 2> ; 2 uses
  %i.hk = shufflevector <8 x float> %i.hh, <8 x float> %i.gu, <8 x i32> <i32 0, i32 13, i32 14, i32 14, i32 13, i32 poison, i32 6, i32 poison>
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 9> ; 2 uses
  %i.hm = shufflevector <2 x float> %i.aa, <2 x float> %i.ef, <8 x i32> <i32 0, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = insertelement <8 x float> %i.hm, float %i.dz, i64 2
  %i.ho = shufflevector <8 x float> %i.gv, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 15, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hp = shufflevector <8 x float> %i.hn, <8 x float> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hq = fmul <8 x float> %i.hl, %i.hp           ; 3 uses
  %i.hr = fneg <8 x float> %i.hj
  %i.hs = fmul <8 x float> %i.hh, %i.hr
  %i.ht = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hh, <8 x float> %i.hj, <8 x float> %i.hs)
  %i.hu = shufflevector <8 x float> %i.aj, <8 x float> %i.hl, <8 x i32> <i32 4, i32 9, i32 6, i32 10, i32 9, i32 13, i32 10, i32 15> ; 2 uses
  %i.hv = shufflevector <8 x float> %i.es, <8 x float> %i.hp, <8 x i32> <i32 1, i32 9, i32 0, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = shufflevector <8 x float> %i.gv, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = shufflevector <8 x float> %i.hv, <8 x float> %i.hw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hy = fneg <8 x float> %i.hx
  %i.hz = fmul <8 x float> %i.hu, %i.hy
  %i.ia = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hx, <8 x float> %i.hu, <8 x float> %i.hz)
  %i.ib = fadd <8 x float> %i.hq, %i.hc           ; 4 uses
  %i.ic = shufflevector <8 x float> %i.hq, <8 x float> %i.hc, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15> ; 2 uses
  %i.id = fsub <8 x float> %i.ib, %i.ic           ; 2 uses
  %i.ie = fsub <8 x float> %i.ib, %i.id
  %i.if = fsub <8 x float> %i.ic, %i.ie
  %i.ig = shufflevector <8 x float> %i.hc, <8 x float> %i.hq, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15>
  %i.ih = fsub <8 x float> %i.ig, %i.id
  %i.ii = fadd <8 x float> %i.ih, %i.if
  %i.ij = fadd <8 x float> %i.ia, %i.ii
  %i.ik = fadd <8 x float> %i.ht, %i.ij
  %i.il = fadd <8 x float> %i.gl, %i.ib           ; 3 uses
  %i.im = fsub <8 x float> %i.il, %i.gl           ; 2 uses
  %i.in = fsub <8 x float> %i.il, %i.im
  %i.io = fsub <8 x float> %i.gl, %i.in
  %i.ip = fsub <8 x float> %i.ib, %i.im
  %i.iq = fadd <8 x float> %i.ip, %i.io
  %i.ir = fadd <8 x float> %i.iq, %i.ik
  %i.is = fadd <8 x float> %i.gq, %i.ir
  %i.it = fadd <8 x float> %i.il, %i.is
  %i.iu = fmul <8 x float> %i.it, %i.fz
  store <8 x float> %i.iu, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SquareMatrix_Inverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %19 = alloca %"class.pbrt::SquareMatrix", align 16 ; 11 uses
  %20 = alloca %"class.pstd::optional", align 8   ; 9 uses
  %21 = alloca %"class.pbrt::SquareMatrix", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %23 = alloca %"class.testing::Message", align 8 ; 14 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 14 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.pbrt::SquareMatrix.33", align 16 ; 13 uses
  %30 = alloca %"class.pstd::optional.35", align 16 ; 13 uses
  %31 = alloca %"class.pbrt::SquareMatrix.33", align 4 ; 8 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %33 = alloca %"class.testing::Message", align 8 ; 14 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 14 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 9 uses
  %40 = alloca %"class.pstd::optional.40", align 16 ; 11 uses
  %41 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 8 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %43 = alloca %"class.testing::Message", align 8 ; 14 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 14 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 8
  %gep.1.i = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %indvars.iv728.sroa.gep896 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.b

.preheader560:                                    ; preds = %bb.bv
  %i.aa = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 3 uses
  %gep.1.i245 = getelementptr inbounds nuw i8, ptr %30, i64 12
  %gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %30, i64 20
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  br label %bb.bx

bb.b:                                             ; preds = %bb.a, %bb.bv
  %i.aw = phi i32 [ 0, %bb.a ], [ %i.lm, %bb.bv ] ; 2 uses
  %indvars.iv731 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next732, %bb.bv ] ; 3 uses
  %i.ax = mul i64 %indvars.iv731, 9202493588570546565 ; 2 uses
  %i.ay = lshr i64 %i.ax, 27
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -9089707755183418291     ; 2 uses
  %i.bb = lshr i64 %i.ba, 33
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = shl nuw nsw i64 %indvars.iv731, 1
  %i.be = or disjoint i64 %i.bd, 1                ; 5 uses
  %i.bf = add i64 %i.bc, %i.be
  %i.bg = mul i64 %i.bf, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.bh = add i64 %i.bg, %i.be                    ; 2 uses
  %i.bi = mul i64 %i.bh, 6364136223846793005
  %i.bj = add i64 %i.bi, %i.be                    ; 2 uses
  %i.bk = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %i.bl = insertelement <2 x i64> %i.bk, i64 %i.bj, i64 1 ; 3 uses
  %i.bm = lshr <2 x i64> %i.bl, splat (i64 45)
  %i.bn = lshr <2 x i64> %i.bl, splat (i64 27)
  %i.bo = xor <2 x i64> %i.bm, %i.bn
  %i.bp = trunc <2 x i64> %i.bo to <2 x i32>      ; 2 uses
  %i.bq = lshr <2 x i64> %i.bl, splat (i64 59)
  %i.br = trunc nuw nsw <2 x i64> %i.bq to <2 x i32>
  %i.bs = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bp, <2 x i32> %i.bp, <2 x i32> %i.br)
  %i.bt = uitofp <2 x i32> %i.bs to <2 x float>
  %i.bu = fmul nnan <2 x float> %i.bt, splat (float f0x2F800000) ; 2 uses
  %i.bv = fcmp olt <2 x float> %i.bu, splat (float f0x3F7FFFFF)
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.bu, <2 x float> splat (float f0x3F7FFFFF)
  %i.bx = fmul nnan <2 x float> %i.bw, splat (float 2.000000e+01)
  %i.by = fadd <2 x float> %i.bx, splat (float -1.000000e+01)
  %i.bz = mul i64 %i.bj, 6364136223846793005
  %i.ca = add i64 %i.bz, %i.be                    ; 2 uses
  %i.cb = mul i64 %i.ca, 6364136223846793005
  %i.cc = add i64 %i.cb, %i.be
  %i.cd = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.ce = insertelement <2 x i64> %i.cd, i64 %i.cc, i64 1 ; 3 uses
  %i.cf = lshr <2 x i64> %i.ce, splat (i64 45)
  %i.cg = lshr <2 x i64> %i.ce, splat (i64 27)
  %i.ch = xor <2 x i64> %i.cf, %i.cg
  %i.ci = trunc <2 x i64> %i.ch to <2 x i32>      ; 2 uses
  %i.cj = lshr <2 x i64> %i.ce, splat (i64 59)
  %i.ck = trunc nuw nsw <2 x i64> %i.cj to <2 x i32>
  %i.cl = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ci, <2 x i32> %i.ci, <2 x i32> %i.ck)
  %i.cm = uitofp <2 x i32> %i.cl to <2 x float>
  %i.cn = fmul nnan <2 x float> %i.cm, splat (float f0x2F800000) ; 2 uses
  %i.co = fcmp olt <2 x float> %i.cn, splat (float f0x3F7FFFFF)
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.cn, <2 x float> splat (float f0x3F7FFFFF)
  %i.cq = fmul nnan <2 x float> %i.cp, splat (float 2.000000e+01)
  %i.cr = fadd <2 x float> %i.cq, splat (float -1.000000e+01)
  store <2 x float> %i.by, ptr %19, align 16
  store <2 x float> %i.cr, ptr %52, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @_ZN4pbrt7InverseILi2EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %20, ptr noundef nonnull align 4 dereferenceable(16) %19)
  %i.cs = load i8, ptr %53, align 8, !tbaa !46, !range !19, !noundef !20
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cu = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !34
  br label %bb.bv

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.cv = load <2 x float>, ptr %20, align 8, !tbaa !37 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.j, align 8, !tbaa !37 ; 2 uses
  %54 = load <4 x float>, ptr %19, align 16
  %55 = load float, ptr %i.i, align 4, !tbaa !37
  %i.cx = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cx, <2 x float> %i.cv, <2 x float> zeroinitializer)
  %56 = insertelement <2 x float> poison, float %55, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x float> @llvm.fma.v2f32(<2 x float> %57, <2 x float> %i.cw, <2 x float> %i.cy)
  %58 = load float, ptr %52, align 8, !tbaa !37
  %59 = load float, ptr %gep.1.i, align 4, !tbaa !37
  %60 = insertelement <2 x float> poison, float %58, i64 0
  %i.da = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.da, <2 x float> %i.cv, <2 x float> zeroinitializer)
  %61 = insertelement <2 x float> poison, float %59, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x float> @llvm.fma.v2f32(<2 x float> %62, <2 x float> %i.cw, <2 x float> %i.db)
  store <2 x float> %i.cz, ptr %21, align 8
  store <2 x float> %i.dc, ptr %i.k, align 8
  br label %.preheader561

.preheader561:                                    ; preds = %bb.d, %bb.f
  %i.dd = phi i1 [ true, %bb.d ], [ false, %bb.f ]
  %indvars.iv728.sroa.phi = phi ptr [ %21, %bb.d ], [ %indvars.iv728.sroa.gep896, %bb.f ] ; 2 uses
  %indvars.iv728 = phi i64 [ 0, %bb.d ], [ 1, %bb.f ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %indvars.iv728.sroa.phi, i64 %indvars.iv728
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.bv

bb.f:                                             ; preds = %bb.bu
  br i1 %i.dd, label %.preheader561, label %bb.e, !llvm.loop !119

bb.g:                                             ; preds = %.preheader561, %bb.bu
  %i.df = phi i1 [ true, %.preheader561 ], [ false, %bb.bu ]
  %indvars.iv = phi i64 [ 0, %.preheader561 ], [ 1, %bb.bu ] ; 2 uses
  %i.dg = icmp eq i64 %indvars.iv728, %indvars.iv
  br i1 %i.dg, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.dh = load float, ptr %i.de, align 4, !tbaa !37
  %i.di = call noundef float @llvm.fabs.f32(float %i.dh) ; 3 uses
  %i.dj = fpext float %i.di to double
  %i.dk = fcmp olt double %i.dj, 1.000000e-05
  %i.dl = fadd float %i.di, -1.000000e+00         ; 2 uses
  %i.dm = fadd float %i.di, 1.000000e+00
  %i.dn = fmul float %i.dm, 5.000000e-01
  %i.do = fdiv float %i.dl, %i.dn
  %.0.in.i = select i1 %i.dk, float %i.dl, float %i.do
  %.0.i = fcmp olt float %.0.in.i, f0x38D1B717    ; 2 uses
  %i.dp = zext i1 %.0.i to i8
  store i8 %i.dp, ptr %22, align 8, !tbaa !18
  store ptr null, ptr %i.s, align 8, !tbaa !21
  br i1 %.0.i, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.dq = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %.noexc143 unwind label %.loopexit567

.noexc143:                                        ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %18, align 8, !tbaa !26
  %i.dt = load i64, ptr %i.t, align 8, !tbaa !51
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ds, i64 noundef %i.dt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc143
  %i.dv = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.u
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.dx = load i64, ptr %i.u, align 8, !tbaa !32
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc143
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.u
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.k
  %i.ec = load i64, ptr %i.u, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.ee = load ptr, ptr %23, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull @.str.233, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %.loopexit567 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.eh = load i8, ptr %53, align 8, !tbaa !46, !range !19, !noundef !20
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc145 unwind label %.loopexit.split-lp568

.noexc145:                                        ; preds = %bb.l
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.ej = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %.noexc153 unwind label %.loopexit567

.noexc153:                                        ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %17, align 8, !tbaa !26
  %i.em = load i64, ptr %i.v, align 8, !tbaa !51
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el, i64 noundef %i.em)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150: ; preds = %.noexc153
  %i.eo = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.w
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150
  %i.eq = load i64, ptr %i.w, align 8, !tbaa !32
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152

bb.m:                                             ; preds = %.noexc153
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.w
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147: ; preds = %bb.m
  %i.ev = load i64, ptr %i.w, align 8, !tbaa !32
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ex = load ptr, ptr %23, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.234, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158 unwind label %.loopexit567 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152
  %i.fa = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %.noexc165 unwind label %.loopexit567

.noexc165:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %16, align 8, !tbaa !26
  %i.fd = load i64, ptr %i.x, align 8, !tbaa !51
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc, i64 noundef %i.fd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162: ; preds = %.noexc165
  %i.ff = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.y
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162
  %i.fh = load i64, ptr %i.y, align 8, !tbaa !32
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164

bb.n:                                             ; preds = %.noexc165
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.y
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159: ; preds = %bb.n
  %i.fm = load i64, ptr %i.y, align 8, !tbaa !32
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164
  %i.fo = load ptr, ptr %25, align 8, !tbaa !26
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 573, ptr noundef %i.fo)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  %i.fp = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.z
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.fr = load i64, ptr %i.z, align 8, !tbaa !32
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.ft = load ptr, ptr %23, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.r
  br i1 %i.fu, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %.noexc.i.i
  %i.fv = load ptr, ptr %23, align 8, !tbaa !29   ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ai, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #25, !inline_history !0
  br label %bb.ai

bb.u:                                             ; preds = %bb.r
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #26
  unreachable

bb.v:                                             ; preds = %bb.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit174

.loopexit567:                                     ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158
  %lpad.loopexit569 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp568:                            ; preds = %bb.l
  %lpad.loopexit.split-lp570 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.x:                                             ; preds = %bb.o
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn130 = phi { ptr, i32 } [ %i.gf, %bb.y ], [ %i.ge, %bb.x ] ; 2 uses
  %i.gg = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.z
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.z
  %i.gi = load i64, ptr %i.z, align 8, !tbaa !32
  %i.gj = add i64 %i.gi, 1
end_hunk_0
begin_hunk_1_@_ZN25SquareMatrix_Inverse_Test8TestBodyEv:bb.a
  %.not.i.i.i172 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i172, label %_ZN7testing7MessageD2Ev.exit174, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.gl = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i173 unwind label %bb.ad

.noexc.i.i173:                                    ; preds = %bb.aa
  br i1 %i.gl, label %bb.ab, label %_ZN7testing7MessageD2Ev.exit174

bb.ab:                                            ; preds = %.noexc.i.i173
  %i.gm = load ptr, ptr %23, align 8, !tbaa !29   ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_ZN7testing7MessageD2Ev.exit174, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !31
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gm) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit174

bb.ad:                                            ; preds = %bb.aa
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #26
  unreachable

_ZN7testing7MessageD2Ev.exit174:                  ; preds = %bb.ac, %bb.ab, %.noexc.i.i173, %.body, %bb.v
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.v ], [ %.pn130.pn.pn, %.body ], [ %.pn130.pn.pn, %.noexc.i.i173 ], [ %.pn130.pn.pn, %bb.ab ], [ %.pn130.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.gt = load ptr, ptr %i.s, align 8, !tbaa !21
  %.not.i.i.i175 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i175, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit174
  %i.gu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i176 unwind label %bb.ah

.noexc.i.i176:                                    ; preds = %bb.ae
  br i1 %i.gu, label %bb.af, label %_ZN7testing15AssertionResultD2Ev.exit

bb.af:                                            ; preds = %.noexc.i.i176
  %i.gv = load ptr, ptr %i.s, align 8, !tbaa !21  ; 4 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !26 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !32
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #26
  unreachable

bb.ai:                                            ; preds = %bb.t, %bb.s, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !21
  %.not.i.i.i177 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i177, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.he = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i178 unwind label %bb.am

.noexc.i.i178:                                    ; preds = %bb.aj
  br i1 %i.he, label %bb.ak, label %_ZN7testing15AssertionResultD2Ev.exit182

bb.ak:                                            ; preds = %.noexc.i.i178
  %i.hf = load ptr, ptr %i.s, align 8, !tbaa !21  ; 4 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !26 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179: ; preds = %bb.al
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !32
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit182

bb.am:                                            ; preds = %bb.aj
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit182:         ; preds = %bb.h, %bb.ai, %.noexc.i.i178, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bu

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.af, %.noexc.i.i176, %_ZN7testing7MessageD2Ev.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bw

bb.an:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %indvars.iv728.sroa.phi, i64 %indvars.iv
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !37
  %i.hq = call noundef float @llvm.fabs.f32(float %i.hp)
  store float %i.hq, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 1.000000e-04, ptr %i.c, align 8, !tbaa !39
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.164, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hr = load i8, ptr %26, align 8, !tbaa !18, !range !19, !noundef !20
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.bp, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit232

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  %i.hu = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %.noexc191 unwind label %.loopexit562

.noexc191:                                        ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %15, align 8, !tbaa !26
  %i.hx = load i64, ptr %i.l, align 8, !tbaa !51
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.hw, i64 noundef %i.hx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188 unwind label %bb.as ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188: ; preds = %.noexc191
  %i.hz = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.m
  br i1 %i.ia, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188
  %i.ib = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190

bb.as:                                            ; preds = %.noexc191
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.m
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185: ; preds = %bb.as
  %i.ig = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ii = load ptr, ptr %27, align 8, !tbaa !29
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull @.str.233, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196 unwind label %.loopexit562 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190
  %i.il = load i8, ptr %53, align 8, !tbaa !46, !range !19, !noundef !20
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198, label %bb.at

bb.at:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc197 unwind label %.loopexit.split-lp563

.noexc197:                                        ; preds = %bb.at
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196
  %i.in = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %.noexc205 unwind label %.loopexit562

.noexc205:                                        ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %14, align 8, !tbaa !26
  %i.iq = load i64, ptr %i.n, align 8, !tbaa !51
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip, i64 noundef %i.iq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202 unwind label %bb.au ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202: ; preds = %.noexc205
  %i.is = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.o
  br i1 %i.it, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202
  %i.iu = load i64, ptr %i.o, align 8, !tbaa !32
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204

bb.au:                                            ; preds = %.noexc205
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.o
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199: ; preds = %bb.au
  %i.iz = load i64, ptr %i.o, align 8, !tbaa !32
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jb = load ptr, ptr %27, align 8, !tbaa !29
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.234, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210 unwind label %.loopexit562 ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204
  %i.je = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %.noexc217 unwind label %.loopexit562

.noexc217:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %13, align 8, !tbaa !26
  %i.jh = load i64, ptr %i.p, align 8, !tbaa !51
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef %i.jg, i64 noundef %i.jh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214 unwind label %bb.av ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214: ; preds = %.noexc217
  %i.jj = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.q
  br i1 %i.jk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214
  %i.jl = load i64, ptr %i.q, align 8, !tbaa !32
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216

bb.av:                                            ; preds = %.noexc217
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.q
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211: ; preds = %bb.av
  %i.jq = load i64, ptr %i.q, align 8, !tbaa !32
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.js = load ptr, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216
  %i.ju = phi ptr [ %i.jt, %bb.aw ], [ @.str.324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 576, ptr noundef %i.ju)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.jv = load ptr, ptr %27, align 8, !tbaa !29
  %.not.i.i.i221 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i221, label %_ZN7testing7MessageD2Ev.exit223, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i222 unwind label %bb.bc

.noexc.i.i222:                                    ; preds = %bb.az
  br i1 %i.jw, label %bb.ba, label %_ZN7testing7MessageD2Ev.exit223

bb.ba:                                            ; preds = %.noexc.i.i222
  %i.jx = load ptr, ptr %27, align 8, !tbaa !29   ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZN7testing7MessageD2Ev.exit223, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !31
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit223

bb.bc:                                            ; preds = %bb.az
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #26
  unreachable

_ZN7testing7MessageD2Ev.exit223:                  ; preds = %bb.ay, %.noexc.i.i222, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.bp

bb.bd:                                            ; preds = %bb.aq
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit226

.loopexit562:                                     ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210
  %lpad.loopexit564 = landingpad { ptr, i32 }
          cleanup
  br label %.body192

.loopexit.split-lp563:                            ; preds = %bb.at
  %lpad.loopexit.split-lp565 = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ax
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn125 = phi { ptr, i32 } [ %i.kg, %bb.bf ], [ %i.kf, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.body192

.body192:                                         ; preds = %.loopexit562, %.loopexit.split-lp563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200, %bb.bg
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %bb.bg ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186 ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200 ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212 ], [ %lpad.loopexit564, %.loopexit562 ], [ %lpad.loopexit.split-lp565, %.loopexit.split-lp563 ] ; 4 uses
  %i.kh = load ptr, ptr %27, align 8, !tbaa !29
  %.not.i.i.i224 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %bb.bh

bb.bh:                                            ; preds = %.body192
  %i.ki = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i225 unwind label %bb.bk

.noexc.i.i225:                                    ; preds = %bb.bh
  br i1 %i.ki, label %bb.bi, label %_ZN7testing7MessageD2Ev.exit226

end_hunk_1
