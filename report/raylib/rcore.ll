Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@Vector3Min:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Max(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %0, <2 x float> %2)
  %i.b = tail call nsz float @llvm.maxnum.f32(float %1, float %3)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Barycenter(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %7, i64 1
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fsub <2 x float> %i.b, %i.d              ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %4, %2      ; 2 uses
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop70 = fsub <2 x float> %4, %2    ; 2 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop70, i64 0 ; 2 uses
  %i.h = fsub float %5, %3                        ; 3 uses
  %i.i = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fsub <2 x float> %i.l, %i.m              ; 3 uses
  %i.o = fmul float %i.f, %i.f
  %i.p = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.p)
  %i.r = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.r, %i.n
  %i.t = shufflevector <2 x float> %foldExtExtBinop70, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.k, <2 x float> %i.s)
  %i.v = insertelement <2 x float> poison, float %i.h, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.e, <2 x float> %i.u) ; 4 uses
  %i.y = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %i.y, %i.n
  %i.aa = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.k, <2 x float> %i.z)
  %i.ac = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.e, <2 x float> %i.ab) ; 3 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fneg float %i.ae
  %i.ag = extractelement <2 x float> %i.x, i64 1
  %i.ah = fmul float %i.ag, %i.af
  %i.ai = extractelement <2 x float> %i.ad, i64 1
  %i.aj = extractelement <2 x float> %i.x, i64 0
  %i.ak = fneg <2 x float> %i.x
  %i.al = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x float> %i.al, %i.ak
  %i.an = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ad, <2 x float> %i.am) ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.aj, float %i.ah)
  %i.ar = insertelement <2 x float> %i.ap, float %i.aq, i64 1
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fdiv <2 x float> %i.ar, %i.as           ; 3 uses
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at)
  %i.av = fsub float 1.000000e+00, %i.au
  %i.aw = insertelement <2 x float> %i.at, float %i.av, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.aw, 0
  %i.ax = extractelement <2 x float> %i.at, i64 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ax, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @Vector3Unproject(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load float, ptr %i.t, align 8            ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.z = load float, ptr %i.y, align 4            ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ac = load float, ptr %2, align 8             ; 3 uses
  %i.ad = load float, ptr %i.b, align 4           ; 3 uses
  %i.ae = load float, ptr %i.h, align 4           ; 3 uses
  %i.af = load <2 x float>, ptr %i.a, align 8     ; 4 uses
  %i.ag = load <2 x float>, ptr %3, align 8       ; 4 uses
  %i.ah = load <2 x float>, ptr %i.c, align 8     ; 4 uses
  %i.ai = load <2 x float>, ptr %i.e, align 8     ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.af, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.an, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.af, %i.aq
  %i.as = fmul float %i.ad, %i.u
  %i.at = fmul float %i.ae, %i.u
  %i.au = fmul float %i.ad, %i.z
  %i.av = fmul float %i.ae, %i.z
  %i.aw = load float, ptr %i.p, align 4           ; 3 uses
  %i.ax = load float, ptr %i.o, align 8           ; 3 uses
  %i.ay = load float, ptr %i.q, align 8           ; 3 uses
  %i.az = load float, ptr %i.r, align 4           ; 3 uses
  %i.ba = fmul float %i.aw, %i.u
  %i.bb = fmul float %i.aw, %i.z
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.af, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bm, <2 x float> %i.bk) ; 5 uses
  %i.bo = fneg <2 x float> %i.bn                  ; 5 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bq = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.br = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %1, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = load float, ptr %i.s, align 8           ; 4 uses
  %i.bv = load float, ptr %i.v, align 8           ; 4 uses
  %i.bw = load float, ptr %i.w, align 8           ; 4 uses
  %i.bx = load float, ptr %i.x, align 4           ; 4 uses
  %i.by = load float, ptr %i.aa, align 4          ; 4 uses
  %i.bz = load float, ptr %i.ab, align 4          ; 4 uses
  %i.ca = load float, ptr %i.d, align 8           ; 3 uses
  %i.cb = load float, ptr %i.f, align 4           ; 3 uses
  %i.cc = load float, ptr %i.g, align 8           ; 3 uses
  %i.cd = load float, ptr %i.i, align 8           ; 3 uses
  %i.ce = load float, ptr %i.j, align 4           ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.cg, <2 x float> %i.ao)
  %i.ci = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cj, <2 x float> %i.ch) ; 7 uses
  %i.cl = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.cm, <2 x float> %i.ar)
  %i.co = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.cp, <2 x float> %i.cn)
  %i.cr = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cs, <2 x float> %i.cq) ; 5 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ac, float %i.au)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ca, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cb, float %i.cv) ; 5 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cc, float %i.at)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cd, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ce, float %i.cy) ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ax, float %i.ba)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ay, float %i.da)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.az, float %i.db) ; 2 uses
  %i.dd = fneg float %i.dc                        ; 2 uses
  %i.de = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  %i.df = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ax, i64 0
  %i.dg = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dd, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dh)
  %i.dj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.dk = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ay, i64 0
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  %i.dn = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.az, i64 0
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dn, <2 x float> %i.dl) ; 3 uses
  %i.dp = fneg <2 x float> %i.ct                  ; 5 uses
  %i.dq = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.dr = extractelement <2 x float> %i.dp, i64 0 ; 2 uses
  %i.ds = fmul float %i.dq, %i.dr
  %i.dt = extractelement <2 x float> %i.ck, i64 0 ; 3 uses
  %i.du = extractelement <2 x float> %i.ct, i64 1
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.ds) ; 4 uses
  %i.dw = fmul float %i.cw, %i.dr
  %i.dx = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = extractelement <2 x float> %i.dp, i64 1
  %i.ea = fmul float %i.cw, %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = extractelement <2 x float> %i.do, i64 0 ; 4 uses
  %i.ee = shufflevector <2 x float> %i.dp, <2 x float> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.ef = fneg <2 x float> %i.ck
  %i.eg = shufflevector <2 x float> %i.ck, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.eh = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.ei = fneg float %i.ed
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.el = fneg float %i.dt
  %i.em = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 2, i32 0>
  %i.eo = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fneg float %i.cz                        ; 2 uses
  %4 = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cc, float %i.av)
  %5 = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cd, float %4)
  %6 = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.ce, float %5) ; 6 uses
  %i.er = fmul float %i.cw, %i.eq
  %i.es = load float, ptr %i.l, align 4           ; 3 uses
  %i.et = load float, ptr %i.k, align 8           ; 3 uses
  %i.eu = load float, ptr %i.m, align 8           ; 3 uses
  %i.ev = load float, ptr %i.n, align 4           ; 3 uses
  %i.ew = fmul float %i.es, %i.u
  %i.ex = fmul float %i.es, %i.z
  %i.ey = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.af, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.et, float %i.ex)
  %i.fc = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.fd, <2 x float> %i.fa)
  %i.ff = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.fg, <2 x float> %i.fe)
  %i.fi = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.fj, <2 x float> %i.fh) ; 3 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 1 ; 5 uses
  %i.fm = fneg float %i.fl
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.by, float %i.eu, float %i.fb)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.ev, float %i.fn) ; 5 uses
  %7 = fneg float %i.fo                           ; 2 uses
  %8 = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.et, float %i.ew)
  %9 = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.eu, float %8)
  %10 = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ev, float %9) ; 5 uses
  %i.fp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.fq = fmul float %i.fl, %i.fp
  %i.fr = fmul float %i.fo, %i.fp
  %i.fs = insertelement <2 x float> poison, float %10, i64 0
  %11 = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %11, %i.bo
  %13 = extractelement <2 x float> %i.bo, i64 1
  %14 = fmul float %i.fo, %13
  %15 = fmul float %i.fo, %i.dd
  %16 = tail call float @llvm.fmuladd.f32(float %10, float %i.ed, float %15) ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %16, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %17 = insertelement <2 x float> poison, float %i.fo, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.dq, float %6, float %i.ea) ; 4 uses
  %19 = extractelement <2 x float> %i.fk, i64 0   ; 5 uses
  %20 = extractelement <2 x float> %i.bn, i64 1
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %i.fq) ; 2 uses
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.ec, <2 x float> %12) ; 7 uses
  %23 = extractelement <2 x float> %22, i64 1
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.dt, float %6, float %i.dw) ; 4 uses
  %24 = extractelement <2 x float> %22, i64 0
  %25 = fneg float %i.fw                          ; 2 uses
  %26 = fneg float %i.fv                          ; 2 uses
  %27 = fneg float %6
  %i.fx = insertelement <2 x float> poison, float %27, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %6, i64 1
  %28 = insertelement <2 x float> poison, float %i.fw, i64 0
  %29 = insertelement <2 x float> %28, float %26, i64 1
  %30 = fmul <2 x float> %i.ec, %29
  %31 = fmul float %10, %25
  %32 = fmul float %10, %i.fv
  %33 = fneg float %19
  %i.fz = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %34 = shufflevector <2 x float> %i.ct, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.gb = insertelement <2 x float> poison, float %6, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.eq, i64 1
  %35 = insertelement <2 x float> poison, float %21, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = fneg float %i.cw                        ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ac, float %i.as)
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ca, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cb, float %i.gf) ; 3 uses
  %i.gh = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gj = fmul <2 x float> %i.gi, %i.dp
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.dy, <2 x float> %i.gj) ; 6 uses
  %38 = tail call float @llvm.fmuladd.f32(float %i.gg, float %6, float %i.er) ; 4 uses
  %39 = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.ed, float %14) ; 3 uses
  %40 = fneg float %39                            ; 2 uses
  %41 = extractelement <2 x float> %37, i64 0     ; 2 uses
  %42 = fmul float %41, %40
  %43 = tail call float @llvm.fmuladd.f32(float %i.dv, float %16, float %42)
  %i.gk = fneg float %41
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fw, float %23, float %43)
  %i.gm = extractelement <2 x float> %37, i64 1   ; 2 uses
  %i.gn = tail call float @llvm.fmuladd.f32(float %19, float %i.ed, float %i.fr) ; 3 uses
  %44 = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.gn, float %i.gl)
  %45 = tail call float @llvm.fmuladd.f32(float %26, float %24, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %38, float %21, float %45)
  %47 = fdiv float 1.000000e+00, %46
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0 ; 2 uses
  %i.gp = insertelement <2 x float> %i.go, float %40, i64 1
  %i.gq = fmul <2 x float> %i.dy, %i.gp
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fu, <2 x float> %i.gq)
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %22, <2 x float> %48)
  %i.gr = insertelement <2 x float> poison, float %47, i64 0
  %50 = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %51 = fmul <2 x float> %49, %50
  %52 = fneg float %i.gn                          ; 2 uses
  %53 = insertelement <2 x float> poison, float %52, i64 0
  %54 = insertelement <2 x float> %53, float %39, i64 1
  %55 = fmul <2 x float> %i.gi, %54
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.fu, <2 x float> %55)
  %i.gt = insertelement <2 x float> %i.eh, float %i.gd, i64 1
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %22, <2 x float> %i.gs)
  %i.gv = fmul <2 x float> %i.gu, %50
  %i.gw = insertelement <2 x float> poison, float %38, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.gx, <2 x float> %30)
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %37, <2 x float> %i.gy)
  %i.ha = fmul <2 x float> %i.gz, %50
  %i.hb = tail call float @llvm.fmuladd.f32(float %19, float %38, float %31)
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.fm, float %38, float %32)
  %i.hd = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.hc, i64 1
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %37, <2 x float> %i.he)
  %i.hg = fmul <2 x float> %i.hf, %50
  %i.hh = insertelement <2 x float> %i.ga, float %52, i64 0
  %i.hi = fmul <2 x float> %i.fz, %i.hh
  %i.hj = insertelement <2 x float> %22, float %39, i64 0 ; 2 uses
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.hj, <2 x float> %i.hi)
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %36, <2 x float> %i.hk)
  %i.hm = fmul <2 x float> %i.hl, %50
  %56 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = fneg <2 x float> %22
  %i.ho = shufflevector <2 x float> %i.go, <2 x float> %i.hn, <2 x i32> <i32 0, i32 2>
  %i.hp = fmul <2 x float> %56, %i.ho
  %57 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %58 = insertelement <2 x float> %57, float %i.el, i64 0
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %i.hj, <2 x float> %i.hp)
  %59 = insertelement <2 x float> poison, float %i.gd, i64 0
  %60 = insertelement <2 x float> %59, float %i.gg, i64 1
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %36, <2 x float> %i.hq)
  %i.hs = fmul <2 x float> %i.hr, %50
  %61 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ht = insertelement <2 x float> %61, float %25, i64 0
  %i.hu = fmul <2 x float> %i.em, %i.ht
  %i.hv = insertelement <2 x float> %37, float %i.fv, i64 0
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.hv, <2 x float> %i.hu)
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.ep, <2 x float> %i.hw)
  %i.hy = fmul <2 x float> %i.hx, %50
  %i.hz = fmul float %i.fl, %i.gk
  %i.ia = fmul float %i.fl, %i.fw
  %i.ib = tail call float @llvm.fmuladd.f32(float %19, float %i.gm, float %i.hz)
  %i.ic = tail call float @llvm.fmuladd.f32(float %33, float %i.fv, float %i.ia)
  %62 = tail call float @llvm.fmuladd.f32(float %10, float %i.dv, float %i.ib)
  %63 = tail call float @llvm.fmuladd.f32(float %7, float %i.dv, float %i.ic)
  %i.id = insertelement <2 x float> poison, float %63, i64 0
  %64 = insertelement <2 x float> %i.id, float %62, i64 1
  %i.ie = fmul <2 x float> %64, %50
  %i.if = fmul <2 x float> %i.bq, %i.gv
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> %i.br, <2 x float> %i.if)
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.bt, <2 x float> %i.ig)
  %i.ii = fadd <2 x float> %i.hg, %i.ih
  %i.ij = fmul <2 x float> %i.bq, %i.hs
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.br, <2 x float> %i.ij)
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.bt, <2 x float> %i.ik)
  %i.im = fadd <2 x float> %i.ie, %i.il           ; 3 uses
  %i.in = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.io = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ip = fdiv <2 x float> %i.in, %i.io
  %i.iq = extractelement <2 x float> %i.im, i64 0
  %i.ir = extractelement <2 x float> %i.im, i64 1
  %i.is = fdiv float %i.iq, %i.ir
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.ip, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.is, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3ToFloatV(<2 x float> %0, float %1) local_unnamed_addr #13 {
bb.a:
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Invert(<2 x float> %0, float %1) local_unnamed_addr #13 {
bb.a:
  %i.a = fdiv <2 x float> splat (float 1.000000e+00), %0
  %i.b = fdiv float 1.000000e+00, %1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Clamp(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %2, <2 x float> %0)
  %i.b = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %4, <2 x float> %i.a)
  %i.c = tail call nsz float @llvm.maxnum.f32(float %3, float %1)
  %i.d = tail call nsz float @llvm.minnum.f32(float %5, float %i.c)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.b, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.d, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3ClampValue(<2 x float> %0, float %1, float noundef %2, float noundef %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.015.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract, float %.sroa.015.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c) ; 4 uses
  %i.e = fcmp olt float %sqrt, %2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fdiv float %2, %sqrt
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = fcmp ogt float %sqrt, %3
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = fdiv float %3, %sqrt
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi float [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.i = insertelement <2 x float> poison, float %.0, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %0, %i.j
  %i.l = fmul float %1, %.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.sroa.026.0 = phi <2 x float> [ %i.k, %bb.f ], [ %0, %bb.a ]
  %.sroa.4.0 = phi float [ %i.l, %bb.f ], [ %1, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.026.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.4.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @Vector3Equals(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.01.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = tail call nsz float @llvm.fabs.f32(float %.sroa.09.0.vec.extract)
  %i.d = tail call nsz float @llvm.fabs.f32(float %.sroa.01.0.vec.extract)
  %i.e = tail call nsz float @llvm.maxnum.f32(float %i.c, float %i.d)
  %i.f = tail call nsz float @llvm.maxnum.f32(float %i.e, float 1.000000e+00)
  %i.g = fmul nnan float %i.f, f0x358637BD
  %i.h = fcmp ugt float %i.b, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.09.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.01.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.i = fsub float %.sroa.09.4.vec.extract, %.sroa.01.4.vec.extract
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = tail call nsz float @llvm.fabs.f32(float %.sroa.09.4.vec.extract)
  %i.l = tail call nsz float @llvm.fabs.f32(float %.sroa.01.4.vec.extract)
  %i.m = tail call nsz float @llvm.maxnum.f32(float %i.k, float %i.l)
  %i.n = tail call nsz float @llvm.maxnum.f32(float %i.m, float 1.000000e+00)
  %i.o = fmul nnan float %i.n, f0x358637BD
  %i.p = fcmp ugt float %i.j, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fsub float %1, %3
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = tail call nsz float @llvm.fabs.f32(float %1)
  %i.t = tail call nsz float @llvm.fabs.f32(float %3)
  %i.u = tail call nsz float @llvm.maxnum.f32(float %i.s, float %i.t)
  %i.v = tail call nsz float @llvm.maxnum.f32(float %i.u, float 1.000000e+00)
  %i.w = fmul nnan float %i.v, f0x358637BD
  %i.x = fcmp ole float %i.r, %i.w
  %i.y = zext i1 %i.x to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.z = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.y, %bb.c ]
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @Vector3Refract(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #14 {
bb.a:
  %.sroa.028.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.020.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.028.0.vec.extract, float %.sroa.020.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b) ; 3 uses
  %i.d = fneg float %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float %i.c, float 1.000000e+00)
  %i.f = fneg float %4
  %i.g = fmul float %4, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.e, float 1.000000e+00) ; 2 uses
  %i.i = fcmp ult float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call float @sqrtf(float noundef %i.h) #56
  %i.k = tail call float @llvm.fmuladd.f32(float %4, float %i.c, float %i.j) ; 2 uses
  %i.l = fneg <2 x float> %2
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = insertelement <2 x float> poison, float %4, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %0, <2 x float> %i.o)
  %i.s = fneg float %3
  %i.t = fmul float %i.k, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %4, float %1, float %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.036.0 = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.3.0 = phi float [ %i.u, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.036.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.3.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @Vector4Zero() local_unnamed_addr #10 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @Vector4One() local_unnamed_addr #10 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> splat (float 1.000000e+00) }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @Vector4Add(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.c = fadd <4 x float> %i.a, %i.b              ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
end_hunk_0
begin_hunk_1_@CameraMoveRight:bb.a
  %i.as = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i, float %.sroa.07.0.vec.extract.i, float %i.as)
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %.sroa.11.0, float %i.at) ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.j, label %Vector3Normalize.exit

bb.j:                                             ; preds = %bb.i
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %.sroa.036.0, %i.ay
  %i.ba = fmul float %.sroa.11.0, %i.aw
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.j, %bb.i, %GetCameraRight.exit
  %.sroa.036.1 = phi <2 x float> [ %.sroa.013.0.i.i, %GetCameraRight.exit ], [ %i.az, %bb.j ], [ %.sroa.036.0, %bb.i ]
  %.sroa.11.1 = phi float [ %.sroa.617.0.i.i, %GetCameraRight.exit ], [ %i.ba, %bb.j ], [ %.sroa.11.0, %bb.i ]
  %i.bb = fmul float %1, %.sroa.11.1              ; 2 uses
  %i.bc = insertelement <2 x float> poison, float %1, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %.sroa.036.1    ; 2 uses
  %i.bf = fadd <2 x float> %.sroa.09.0.copyload.i.i, %i.be
  %i.bg = fadd float %.sroa.210.0.copyload.i.i, %i.bb
  store <2 x float> %i.bf, ptr %0, align 4
  store float %i.bg, ptr %.sroa.210.0..sroa_idx.i.i, align 4
  %i.bh = fadd <2 x float> %.sroa.011.0.copyload.i.i, %i.be
  %i.bi = fadd float %.sroa.212.0.copyload.i.i, %i.bb
  store <2 x float> %i.bh, ptr %i.a, align 4
  store float %i.bi, ptr %.sroa.212.0..sroa_idx.i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CameraMoveToTarget(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #27 {
GetCameraForward.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.022.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4 ; 2 uses
  %i.b = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.022.0.copyload ; 5 uses
  %i.c = fsub float %.sroa.221.0.copyload, %.sroa.223.0.copyload ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00        ; 2 uses
  %i.i = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  %.sroa.013.0.i.i = select i1 %i.h, <2 x float> %i.l, <2 x float> %i.b
  %.sroa.617.0.i.i = select i1 %i.h, float %i.m, float %i.c
  %i.n = fadd float %1, %sqrt.i                   ; 2 uses
  %i.o = fcmp ole float %i.n, 0.000000e+00
  %.neg = fneg float %i.n
  %i.p = select i1 %i.o, float -1.000000e-03, float %.neg ; 2 uses
  %i.q = fmul float %i.p, %.sroa.617.0.i.i
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %.sroa.013.0.i.i
  %i.u = fadd <2 x float> %.sroa.020.0.copyload, %i.t
  %i.v = fadd float %.sroa.221.0.copyload, %i.q
  store <2 x float> %i.u, ptr %0, align 4
  store float %i.v, ptr %.sroa.223.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraYaw(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.03.0.copyload.i
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  %i.f = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.g = insertelement <2 x float> %i.f, float %.sroa.24.0.copyload.i, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.h = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.g, %i.j              ; 4 uses
  %i.l = fmul float %.sroa.07.0.vec.extract.i.i, %i.h ; 3 uses
  %foldExtExtBinop75 = fmul <2 x float> %i.k, %i.k
  %.pre69 = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %.pre70 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %.pre69)
  %i.m = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %.pre72 = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %.pre70)
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi73 = phi float [ %i.d, %bb.a ], [ %.pre72, %bb.b ] ; 2 uses
  %.sroa.044.0.vec.extract.i.pre-phi = phi float [ %.sroa.07.0.vec.extract.i.i, %bb.a ], [ %i.l, %bb.b ]
  %i.n = phi <2 x float> [ %i.g, %bb.a ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.233.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %sqrt.i = tail call float @llvm.sqrt.f32(float %.pre-phi73)
  %i.p = fcmp oeq float %.pre-phi73, 0.000000e+00
  %i.q = fdiv float 1.000000e+00, %sqrt.i
  %i.r = select i1 %i.p, float 1.000000e+00, float %i.q ; 2 uses
  %i.s = fmul float %1, 5.000000e-01              ; 2 uses
  %i.t = tail call float @sinf(float noundef %i.s) #56 ; 2 uses
  %i.u = tail call float @cosf(float noundef %i.s) #56
  %i.v = fmul float %i.u, 2.000000e+00            ; 2 uses
  %i.w = fsub <2 x float> %.sroa.032.0.copyload, %.sroa.030.0.copyload ; 4 uses
  %i.x = fsub float %.sroa.233.0.copyload, %.sroa.231.0.copyload ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.n, %i.z
  %i.ab = fmul float %.sroa.044.0.vec.extract.i.pre-phi, %i.r
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.aa           ; 4 uses
  %i.af = fmul float %i.t, %i.ab                  ; 4 uses
  %i.ag = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ah = fneg float %i.ag
  %i.ai = extractelement <2 x float> %i.w, i64 0
  %i.aj = fneg float %i.ai
  %i.ak = fneg float %i.x
  %i.al = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.am = fmul float %i.al, %i.ah
  %i.an = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ao = fmul float %i.an, %i.aj
  %i.ap = fmul float %i.af, %i.ak
  %i.aq = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x float> %i.aq, float %i.x, i64 0
  %i.as = insertelement <2 x float> poison, float %i.am, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ap, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ar, <2 x float> %i.at) ; 4 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ag, float %i.ao) ; 3 uses
  %i.ay = fneg float %i.ax
  %i.az = fneg float %i.aw
  %i.ba = fmul float %i.af, %i.ay
  %i.bb = fmul float %i.al, %i.az
  %i.bc = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = insertelement <2 x float> %i.bc, float %i.ax, i64 0
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ba, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bd, <2 x float> %i.bf)
  %i.bh = fneg float %i.av
  %i.bi = fmul float %i.an, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aw, float %i.bi)
  %i.bk = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.au
  %i.bn = fmul float %i.v, %i.ax
  %i.bo = fmul <2 x float> %i.bg, splat (float 2.000000e+00)
  %i.bp = fmul float %i.bj, 2.000000e+00
  %i.bq = fadd <2 x float> %i.w, %i.bm
  %i.br = fadd float %i.x, %i.bn
  %i.bs = fadd <2 x float> %i.bq, %i.bo           ; 2 uses
  %i.bt = fadd float %i.br, %i.bp                 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %i.bu = fsub <2 x float> %.sroa.032.0.copyload, %i.bs
  %i.bv = fsub float %.sroa.213.0.copyload, %i.bt
  store <2 x float> %i.bu, ptr %0, align 4
  store float %i.bv, ptr %.sroa.231.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %GetCameraUp.exit
  %.sroa.24.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %i.bw = fadd <2 x float> %.sroa.030.0.copyload, %i.bs
  %i.bx = fadd float %i.bt, %.sroa.24.0.copyload
  store <2 x float> %i.bw, ptr %i.o, align 4
  store float %i.bx, ptr %.sroa.233.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraPitch(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 7 uses
  %.sroa.07.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1 ; 7 uses
  %i.b = fmul float %.sroa.07.4.vec.extract.i.i, %.sroa.07.4.vec.extract.i.i
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b) ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 2 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.f = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %.sroa.03.0.copyload.i, %i.h
  %i.j = fmul float %.sroa.24.0.copyload.i, %i.f
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.013.0.i.i = phi <2 x float> [ %i.i, %bb.b ], [ %.sroa.03.0.copyload.i, %bb.a ] ; 5 uses
  %.sroa.617.0.i.i = phi float [ %i.j, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 3 uses
  %.sroa.271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %.sroa.271.0.copyload = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %.sroa.068.0.copyload = load <2 x float>, ptr %0, align 4 ; 3 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.269.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 0
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 1
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 1
  %.sroa.08.4.vec.insert.i = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.068.0.copyload ; 8 uses
  %i.l = extractelement <2 x float> %.sroa.08.4.vec.insert.i, i64 1 ; 8 uses
  %i.m = extractelement <2 x float> %.sroa.08.4.vec.insert.i, i64 0 ; 8 uses
  %i.n = fsub float %.sroa.271.0.copyload, %.sroa.269.0.copyload ; 8 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 1 ; 2 uses
  %i.o = fneg float %i.l
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 0 ; 2 uses
  %i.p = fneg float %i.n
  %i.q = fneg float %i.m
  %i.r = fmul float %.sroa.020.4.vec.extract.i, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %.sroa.020.0.vec.extract.i, float %i.m, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i, float %i.n, float %i.s)
  %i.u = fneg float %.sroa.020.0.vec.extract.i    ; 2 uses
  %i.v = fneg float %.sroa.020.4.vec.extract.i    ; 2 uses
  %i.w = fneg float %.sroa.617.0.i.i              ; 2 uses
  %i.x = insertelement <2 x float> poison, float %.sroa.617.0.i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = insertelement <2 x float> %.sroa.08.4.vec.insert.i, float %i.o, i64 0
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = insertelement <2 x float> %i.ab, float %i.v, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.aa) ; 2 uses
  %i.ag = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> %i.ae, float %i.p, i64 0
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> %i.y, float %i.w, i64 1
  %i.ak = shufflevector <2 x float> %.sroa.08.4.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ak, <2 x float> %i.ai) ; 2 uses
  %i.am = insertelement <2 x float> %i.ak, float %i.q, i64 0
  %i.an = fmul <2 x float> %i.ab, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> %.sroa.08.4.vec.insert.i, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.08.4.vec.insert.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x float> %i.ap, float %i.u, i64 1
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an) ; 2 uses
  %i.as = fmul <2 x float> %i.al, %i.al
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.as)
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ar, <2 x float> %i.at)
  %i.av = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.au) ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = tail call float @atan2f(float noundef %i.aw, float noundef %i.t) #56
  %i.ay = fadd float %i.ax, -1.000000e-03         ; 2 uses
  %i.az = fcmp ogt float %1, %i.ay
  %.0 = select i1 %i.az, float %i.ay, float %1    ; 2 uses
  %i.ba = fmul float %i.l, %i.v
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.u, float %i.m, float %i.ba)
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.w, float %i.n, float %i.bb)
  %i.bd = extractelement <2 x float> %i.av, i64 1
  %i.be = tail call float @atan2f(float noundef %i.bd, float noundef %i.bc) #56
  %i.bf = fsub float 1.000000e-03, %i.be          ; 2 uses
  %i.bg = fcmp olt float %.0, %i.bf
  %.1 = select i1 %i.bg, float %i.bf, float %.0
  %.sroa.212.0.copyload.i.i.pre = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %.sroa.210.0.copyload.i.i.pre = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %.pre = fsub float %.sroa.212.0.copyload.i.i.pre, %.sroa.210.0.copyload.i.i.pre
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %GetCameraUp.exit
  %.pre-phi = phi float [ %.pre, %bb.c ], [ %i.n, %GetCameraUp.exit ] ; 4 uses
  %.2 = phi float [ %.1, %bb.c ], [ %1, %GetCameraUp.exit ]
  %i.bh = fmul float %i.l, %i.l
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %.pre-phi, float %.pre-phi, float %i.bi) ; 2 uses
  %i.bk = fcmp une float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.e, label %GetCameraForward.exit.i

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %.sroa.08.4.vec.insert.i, %i.bn
  %i.bp = fmul float %.pre-phi, %i.bl
  br label %GetCameraForward.exit.i

GetCameraForward.exit.i:                          ; preds = %bb.e, %bb.d
  %.sroa.013.0.i.i.i = phi <2 x float> [ %i.bo, %bb.e ], [ %.sroa.08.4.vec.insert.i, %bb.d ] ; 2 uses
  %.sroa.617.0.i.i.i = phi float [ %i.bp, %bb.e ], [ %.pre-phi, %bb.d ] ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.24.0.copyload.i.i, float %i.c) ; 2 uses
  %i.br = fcmp une float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.f, label %GetCameraUp.exit.i

bb.f:                                             ; preds = %GetCameraForward.exit.i
  %sqrt.i.i31.i = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.bs = fdiv float 1.000000e+00, %sqrt.i.i31.i  ; 3 uses
  %i.bt = fmul float %.sroa.07.0.vec.extract.i.i, %i.bs
  %i.bu = fmul float %.sroa.07.4.vec.extract.i.i, %i.bs
  %i.bv = fmul float %.sroa.24.0.copyload.i.i, %i.bs
  br label %GetCameraUp.exit.i

GetCameraUp.exit.i:                               ; preds = %bb.f, %GetCameraForward.exit.i
  %.sroa.03.0.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.0.vec.extract.i.i, %GetCameraForward.exit.i ], [ %i.bt, %bb.f ] ; 2 uses
  %.sroa.03.4.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.4.vec.extract.i.i, %GetCameraForward.exit.i ], [ %i.bu, %bb.f ] ; 2 uses
  %.sroa.617.0.i.i30.i = phi float [ %.sroa.24.0.copyload.i.i, %GetCameraForward.exit.i ], [ %i.bv, %bb.f ] ; 2 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 1 ; 2 uses
  %i.bw = fneg float %.sroa.03.4.vec.extract.i.pre-phi.i
  %i.bx = fmul float %.sroa.617.0.i.i.i, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %.sroa.617.0.i.i30.i, float %i.bx) ; 4 uses
  %.sroa.018.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 0 ; 2 uses
  %i.bz = fneg float %.sroa.617.0.i.i30.i
  %i.ca = fmul float %.sroa.011.0.vec.extract.i.i, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i.i, float %.sroa.03.0.vec.extract.i.pre-phi.i, float %i.ca) ; 4 uses
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i, float %i.cb, i64 1
  %i.cc = fneg float %.sroa.03.0.vec.extract.i.pre-phi.i
  %i.cd = fmul float %.sroa.011.4.vec.extract.i.i, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %.sroa.03.4.vec.extract.i.pre-phi.i, float %i.cd) ; 4 uses
  %i.cf = fmul float %i.cb, %i.cb
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.cf)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cg) ; 2 uses
  %i.ci = fcmp une float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.g, label %GetCameraRight.exit

bb.g:                                             ; preds = %GetCameraUp.exit.i
  %sqrt.i.i114 = tail call float @llvm.sqrt.f32(float %i.ch)
  %i.cj = fdiv float 1.000000e+00, %sqrt.i.i114   ; 3 uses
  %i.ck = fmul float %i.by, %i.cj
  %.sroa.013.0.vec.insert.i.i115 = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cl = fmul float %i.cb, %i.cj
  %.sroa.013.4.vec.insert.i.i116 = insertelement <2 x float> %.sroa.013.0.vec.insert.i.i115, float %i.cl, i64 1
  %i.cm = fmul float %i.ce, %i.cj
  br label %GetCameraRight.exit

GetCameraRight.exit:                              ; preds = %GetCameraUp.exit.i, %bb.g
  %.sroa.013.0.i.i112 = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i116, %bb.g ], [ %.sroa.018.4.vec.insert.i.i, %GetCameraUp.exit.i ] ; 2 uses
  %.sroa.617.0.i.i113 = phi float [ %i.cm, %bb.g ], [ %i.ce, %GetCameraUp.exit.i ] ; 3 uses
  %.sroa.044.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i112, i64 0 ; 3 uses
  %.sroa.044.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i112, i64 1 ; 3 uses
  %5 = fmul float %.sroa.044.4.vec.extract.i, %.sroa.044.4.vec.extract.i
  %i.cn = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract.i, float %.sroa.044.0.vec.extract.i, float %5)
  %i.co = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i113, float %.sroa.617.0.i.i113, float %i.cn) ; 2 uses
  %sqrt.i117 = tail call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fcmp oeq float %i.co, 0.000000e+00
  %i.cq = fdiv float 1.000000e+00, %sqrt.i117
  %i.cr = select i1 %i.cp, float 1.000000e+00, float %i.cq ; 3 uses
  %6 = fmul float %.sroa.044.0.vec.extract.i, %i.cr ; 2 uses
  %7 = fmul float %.sroa.044.4.vec.extract.i, %i.cr ; 2 uses
  %8 = fmul float %.sroa.617.0.i.i113, %i.cr      ; 2 uses
  %i.cs = fmul float %.2, 5.000000e-01            ; 4 uses
  %i.ct = tail call float @sinf(float noundef %i.cs) #56 ; 3 uses
  %9 = fmul float %i.ct, %6                       ; 4 uses
  %10 = fmul float %i.ct, %7                      ; 4 uses
  %11 = fmul float %i.ct, %8                      ; 4 uses
  %12 = tail call float @cosf(float noundef %i.cs) #56
  %13 = fneg float %i.l
  %i.cu = fmul float %11, %13
  %14 = tail call float @llvm.fmuladd.f32(float %10, float %i.n, float %i.cu) ; 3 uses
  %15 = fneg float %i.n
  %16 = fmul float %9, %15
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %i.m, float %16) ; 3 uses
  %18 = fneg float %i.m
  %19 = fmul float %10, %18
  %20 = tail call float @llvm.fmuladd.f32(float %9, float %i.l, float %19) ; 3 uses
  %21 = fneg float %17
  %22 = fmul float %11, %21
  %23 = tail call float @llvm.fmuladd.f32(float %10, float %20, float %22)
  %24 = fneg float %20
  %25 = fmul float %9, %24
  %26 = tail call float @llvm.fmuladd.f32(float %11, float %14, float %25)
  %i.cv = fneg float %14
  %i.cw = fmul float %10, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %9, float %17, float %i.cw)
  %27 = fmul float %12, 2.000000e+00              ; 3 uses
  %28 = fmul float %27, %14
  %29 = fmul float %27, %17
  %i.cy = fmul float %27, %20
  %30 = fmul float %23, 2.000000e+00
  %31 = fmul float %26, 2.000000e+00
  %32 = fmul float %i.cx, 2.000000e+00
  %33 = fadd float %i.m, %28
  %34 = fadd float %i.l, %29
  %i.cz = fadd float %i.n, %i.cy
  %35 = fadd float %33, %30                       ; 2 uses
  %i.da = fadd float %34, %31                     ; 2 uses
  %36 = fadd float %i.cz, %32                     ; 2 uses
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GetCameraRight.exit
  %.sroa.223.0.copyload = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %i.db = fsub float %.sroa.06.0.vec.extract.i, %35
  %.sroa.08.0.vec.insert.i122 = insertelement <2 x float> poison, float %i.db, i64 0
  %37 = fsub float %.sroa.06.4.vec.extract.i, %i.da
  %.sroa.08.4.vec.insert.i125 = insertelement <2 x float> %.sroa.08.0.vec.insert.i122, float %37, i64 1
  %38 = fsub float %.sroa.223.0.copyload, %36
  store <2 x float> %.sroa.08.4.vec.insert.i125, ptr %0, align 4
  store float %38, ptr %.sroa.269.0..sroa_idx, align 4
  br label %bb.j

bb.i:                                             ; preds = %GetCameraRight.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %i.dc = fadd float %.sroa.03.0.vec.extract.i, %35
  %.sroa.08.0.vec.insert.i130 = insertelement <2 x float> poison, float %i.dc, i64 0
  %39 = fadd float %.sroa.03.4.vec.extract.i, %i.da
  %.sroa.08.4.vec.insert.i133 = insertelement <2 x float> %.sroa.08.0.vec.insert.i130, float %39, i64 1
  %i.dd = fadd float %36, %.sroa.213.0.copyload
  store <2 x float> %.sroa.08.4.vec.insert.i133, ptr %i.k, align 4
  store float %i.dd, ptr %.sroa.271.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %i.de = tail call float @sinf(float noundef %i.cs) #56 ; 3 uses
  %i.df = fmul float %6, %i.de                    ; 4 uses
  %40 = fmul float %7, %i.de                      ; 4 uses
  %41 = fmul float %8, %i.de                      ; 4 uses
  %42 = tail call float @cosf(float noundef %i.cs) #56
  %i.dg = fneg float %.sroa.07.4.vec.extract.i.i
  %43 = fmul float %41, %i.dg
  %44 = tail call float @llvm.fmuladd.f32(float %40, float %.sroa.24.0.copyload, float %43) ; 3 uses
  %45 = fneg float %.sroa.24.0.copyload
  %i.dh = fmul float %i.df, %45
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %.sroa.07.0.vec.extract.i.i, float %i.dh) ; 3 uses
  %47 = fneg float %.sroa.07.0.vec.extract.i.i
  %48 = fmul float %40, %47
  %49 = tail call float @llvm.fmuladd.f32(float %i.df, float %.sroa.07.4.vec.extract.i.i, float %48) ; 3 uses
  %i.di = fneg float %46
  %i.dj = fmul float %41, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %40, float %49, float %i.dj)
  %i.dl = fneg float %49
  %50 = fmul float %i.df, %i.dl
  %51 = tail call float @llvm.fmuladd.f32(float %41, float %44, float %50)
  %52 = fneg float %44
  %i.dm = fmul float %40, %52
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.df, float %46, float %i.dm)
  %53 = fmul float %42, 2.000000e+00              ; 3 uses
  %i.do = fmul float %53, %44
  %54 = fmul float %53, %46
  %55 = fmul float %53, %49
  %56 = fmul float %i.dk, 2.000000e+00
  %i.dp = fmul float %51, 2.000000e+00
  %57 = fmul float %i.dn, 2.000000e+00
  %58 = fadd float %.sroa.07.0.vec.extract.i.i, %i.do
  %59 = fadd float %.sroa.07.4.vec.extract.i.i, %54
  %i.dq = fadd float %.sroa.24.0.copyload, %55
  %60 = fadd float %58, %56
  %61 = insertelement <2 x float> poison, float %60, i64 0
  %i.dr = fadd float %59, %i.dp
  %.sroa.071.4.vec.insert82.i141 = insertelement <2 x float> %61, float %i.dr, i64 1
  %62 = fadd float %i.dq, %57
  store <2 x float> %.sroa.071.4.vec.insert82.i141, ptr %i.a, align 4
  store float %62, ptr %.sroa.24.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraRoll(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %i.a, align 4
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.212.0.copyload.i = load float, ptr %.sroa.212.0..sroa_idx.i, align 4
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %0, align 4
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4
  %i.b = fsub <2 x float> %.sroa.011.0.copyload.i, %.sroa.09.0.copyload.i ; 5 uses
  %i.c = fsub float %.sroa.212.0.copyload.i, %.sroa.210.0.copyload.i ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %GetCameraForward.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  br label %GetCameraForward.exit

GetCameraForward.exit:                            ; preds = %bb.a, %bb.b
  %.sroa.013.0.i.i = phi <2 x float> [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.617.0.i.i = phi float [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 3 uses
  %.sroa.044.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 0 ; 2 uses
  %foldExtExtBinop16 = fmul <2 x float> %.sroa.013.0.i.i, %.sroa.013.0.i.i
  %i.o = extractelement <2 x float> %foldExtExtBinop16, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract.i, float %.sroa.044.0.vec.extract.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i, float %.sroa.617.0.i.i, float %i.p) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.q)
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  %i.s = fdiv float 1.000000e+00, %sqrt.i
  %i.t = select i1 %i.r, float 1.000000e+00, float %i.s
  %i.u = fmul float %1, 5.000000e-01              ; 2 uses
  %i.v = tail call float @sinf(float noundef %i.u) #56
  %i.w = tail call float @cosf(float noundef %i.u) #56
  %i.x = fmul float %i.w, 2.000000e+00            ; 2 uses
  %i.y = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %.sroa.617.0.i.i, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %.sroa.013.0.i.i, %i.ab
  %i.ae = insertelement <2 x float> %i.y, float %.sroa.617.0.i.i, i64 0
  %i.af = fmul <2 x float> %i.ae, %i.ab
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ac           ; 5 uses
  %i.aj = fmul <2 x float> %i.ah, %i.ad
  %i.ak = fmul <2 x float> %i.ah, %i.af           ; 5 uses
  %i.al = shufflevector <2 x float> %.sroa.03.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.am = insertelement <2 x float> %i.al, float %.sroa.24.0.copyload, i64 1 ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = fneg <2 x float> %.sroa.03.0.copyload
  %i.ap = insertelement <2 x float> %i.al, float %.sroa.24.0.copyload, i64 0 ; 2 uses
  %i.aq = fneg <2 x float> %i.ap
  %i.ar = fmul <2 x float> %i.ak, %i.an
  %i.as = fmul <2 x float> %i.ai, %i.ao
  %i.at = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2>
  %i.au = fmul <2 x float> %i.at, %i.aq
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %i.ar) ; 3 uses
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.am, <2 x float> %i.as) ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %.sroa.03.0.copyload, <2 x float> %i.au)
  %i.ay = fneg <2 x float> %i.ax
  %i.az = fmul <2 x float> %i.ak, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aw, <2 x float> %i.az)
  %i.bb = extractelement <2 x float> %i.av, i64 0
  %i.bc = fneg float %i.bb
  %i.bd = extractelement <2 x float> %i.ai, i64 0
  %i.be = fmul float %i.bd, %i.bc
  %i.bf = extractelement <2 x float> %i.av, i64 1
  %i.bg = extractelement <2 x float> %i.ak, i64 1
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bf, float %i.be)
  %i.bi = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bj, %i.av
  %i.bl = extractelement <2 x float> %i.aw, i64 0
  %i.bm = fmul float %i.x, %i.bl
  %i.bn = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bo = fmul float %i.bh, 2.000000e+00
  %i.bp = fadd <2 x float> %.sroa.03.0.copyload, %i.bk
  %i.bq = fadd float %.sroa.24.0.copyload, %i.bm
  %i.br = fadd <2 x float> %i.bp, %i.bn
  %i.bs = fadd float %i.bq, %i.bo
  store <2 x float> %i.br, ptr %i.n, align 4
  store float %i.bs, ptr %.sroa.24.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetCameraViewMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 4 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.070.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 3 uses
  %.sroa.070.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 2 uses
  %.sroa.058.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload ; 5 uses
  %i.h = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.g
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %sqrt86.i = tail call float @llvm.sqrt.f32(float %i.l)
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fdiv float 1.000000e+00, %sqrt86.i
  %i.o = select i1 %i.m, float 1.000000e+00, float %i.n
  %i.p = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = fmul <2 x float> %i.g, %i.s              ; 2 uses
  %i.v = fneg <2 x float> %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1   ; 3 uses
  %i.x = fneg float %i.w
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %.sroa.2.0.copyload, i64 1
  %i.aa = fmul <2 x float> %i.z, %i.v
  %i.ab = fmul float %.sroa.058.0.vec.extract.i, %i.x
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.copyload, <2 x float> %i.t, <2 x float> %i.aa) ; 3 uses
  %i.ad = extractelement <2 x float> %i.u, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %.sroa.2.0.copyload, float %i.ad, float %i.ab) ; 3 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = fdiv float 1.000000e+00, %sqrt.i
  %i.am = select i1 %i.ak, float 1.000000e+00, float %i.al ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ac, %i.ao           ; 3 uses
  %i.aq = fmul float %i.ae, %i.am                 ; 4 uses
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.as = fneg float %i.ar
  %i.at = fneg float %i.aq
  %i.au = fmul float %i.ad, %i.as
  %i.av = fmul float %i.w, %i.at
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ap, <2 x float> %i.ax) ; 3 uses
  %i.az = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.bc) ; 2 uses
  store float %i.az, ptr %0, align 4, !alias.scope !207
  store float %i.ad, ptr %i.d, align 4, !alias.scope !207
  store float %i.aq, ptr %i.f, align 4, !alias.scope !207
  store <2 x float> %i.ay, ptr %i.c, align 4, !alias.scope !207
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ar, ptr %i.bf, align 4, !alias.scope !207
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bd, ptr %i.bg, align 4, !alias.scope !207
  store <2 x float> %i.t, ptr %i.be, align 4, !alias.scope !207
  %i.bh = fmul float %.sroa.070.4.vec.extract.i, %i.aq
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.070.0.vec.extract.i, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.24.0.copyload, float %i.bi)
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bk, ptr %i.bl, align 4, !alias.scope !207
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.03.0.copyload, %i.ay
  %i.bm = extractelement <2 x float> %foldExtExtBinop8, i64 1
  %i.bn = extractelement <2 x float> %i.ay, i64 0
end_hunk_1
