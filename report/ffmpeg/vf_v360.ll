Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 115
begin_hunk_0_@remap4_16bit_slice:bb.a
  %i.dj = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.dk = mul nsw i64 %indvars.iv, %i.cq
  %i.dl = getelementptr inbounds i8, ptr %i.bs, i64 %i.dk
  tail call void %i.dj(ptr noundef %i.dl, i32 noundef %i.bx, ptr noundef %i.bo, i64 noundef %i.co, ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.di) #17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph.split, !llvm.loop !146

.critedge._crit_edge:                             ; preds = %.critedge.prol.loopexit, %.critedge, %.lr.ph.split, %.critedge.preheader
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.dm = load i32, ptr %i.k, align 8, !tbaa !67  ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next123, %i.dn
  br i1 %i.do, label %.lr.ph108, label %._crit_edge, !llvm.loop !147

.critedge:                                        ; preds = %.critedge.prol.loopexit, %.critedge
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %.critedge ], [ %indvars.iv117.unr, %.critedge.prol.loopexit ] ; 4 uses
  %i.dp = mul nsw i64 %indvars.iv117, %i.cw
  %i.dq = getelementptr inbounds i8, ptr %i.bs, i64 %i.dp
  %i.dr = sub i64 %indvars.iv117, %i.cc
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = mul i32 %i.ct, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.fr113, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr nonnull align 1 %i.dv, i64 %i.cu, i1 false)
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dw = mul nsw i64 %indvars.iv.next118, %i.cw
  %i.dx = getelementptr inbounds i8, ptr %i.bs, i64 %i.dw
  %i.dy = sub i64 %indvars.iv.next118, %i.cc
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = mul i32 %i.ct, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %.fr113, i64 %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr nonnull align 1 %i.ec, i64 %i.cu, i1 false)
  %indvars.iv.next118.1 = add nsw i64 %indvars.iv117, 2 ; 2 uses
  %exitcond121.not.1 = icmp eq i64 %indvars.iv.next118.1, %wide.trip.count120
  br i1 %exitcond121.not.1, label %.critedge._crit_edge, label %.critedge, !llvm.loop !148
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @lanczos_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
bb.a:
  %i.a = fadd nsz float %0, 1.000000e+00
  %i.b = fpext nsz float %i.a to double
  %i.c = fmul nsz double %i.b, f0x400921FB54442D18
  %i.d = fptrunc nsz double %i.c to float         ; 5 uses
  %i.e = fcmp nsz oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call nsz float @llvm.sin.f32(float %i.d)
  %i.g = fmul nsz float %i.d, 5.000000e-01
  %i.h = tail call nsz float @llvm.sin.f32(float %i.g)
  %i.i = fmul nsz float %i.f, %i.h
  %i.j = fmul nsz float %i.d, %i.d
  %i.k = fmul nsz float %i.j, 5.000000e-01
  %i.l = fdiv nsz float %i.i, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.l, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.n = fadd nsz float %0, -1.000000e+00
  %i.o = fadd nsz float %i.n, 1.000000e+00
  %i.p = fpext nsz float %i.o to double
  %i.q = fmul nsz double %i.p, f0x400921FB54442D18
  %i.r = fptrunc nsz double %i.q to float         ; 5 uses
  %i.s = fcmp nsz oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call nsz float @llvm.sin.f32(float %i.r)
  %i.u = fmul nsz float %i.r, 5.000000e-01
  %i.v = tail call nsz float @llvm.sin.f32(float %i.u)
  %i.w = fmul nsz float %i.t, %i.v
  %i.x = fmul nsz float %i.r, %i.r
  %i.y = fmul nsz float %i.x, 5.000000e-01
  %i.z = fdiv nsz float %i.w, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi float [ %i.z, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.ab = fadd nsz float %0, -2.000000e+00
  %i.ac = fadd nsz float %i.ab, 1.000000e+00
  %i.ad = fpext nsz float %i.ac to double
  %i.ae = fmul nsz double %i.ad, f0x400921FB54442D18
  %i.af = fptrunc nsz double %i.ae to float       ; 5 uses
  %i.ag = fcmp nsz oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call nsz float @llvm.sin.f32(float %i.af)
  %i.ai = fmul nsz float %i.af, 5.000000e-01
  %i.aj = tail call nsz float @llvm.sin.f32(float %i.ai)
  %i.ak = fmul nsz float %i.ah, %i.aj
  %i.al = fmul nsz float %i.af, %i.af
  %i.am = fmul nsz float %i.al, 5.000000e-01
  %i.an = fdiv nsz float %i.ak, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi float [ %i.an, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ap = fadd nsz float %0, -3.000000e+00
  %i.aq = fadd nsz float %i.ap, 1.000000e+00
  %i.ar = fpext nsz float %i.aq to double
  %i.as = fmul nsz double %i.ar, f0x400921FB54442D18
  %i.at = fptrunc nsz double %i.as to float       ; 5 uses
  %i.au = fcmp nsz oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %calculate_lanczos_coeffs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = tail call nsz float @llvm.sin.f32(float %i.at)
  %i.aw = fmul nsz float %i.at, 5.000000e-01
  %i.ax = tail call nsz float @llvm.sin.f32(float %i.aw)
  %i.ay = fmul nsz float %i.av, %i.ax
  %i.az = fmul nsz float %i.at, %i.at
  %i.ba = fmul nsz float %i.az, 5.000000e-01
  %i.bb = fdiv nsz float %i.ay, %i.ba
  br label %calculate_lanczos_coeffs.exit

calculate_lanczos_coeffs.exit:                    ; preds = %bb.g, %bb.h
  %.sink30.i = phi float [ %i.bb, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %i.bc = fadd nsz float %1, 1.000000e+00
  %i.bd = fpext nsz float %i.bc to double
  %i.be = fmul nsz double %i.bd, f0x400921FB54442D18
  %i.bf = fptrunc nsz double %i.be to float       ; 5 uses
  %i.bg = fcmp nsz oeq float %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %calculate_lanczos_coeffs.exit
  %i.bh = tail call nsz float @llvm.sin.f32(float %i.bf)
  %i.bi = fmul nsz float %i.bf, 5.000000e-01
  %i.bj = tail call nsz float @llvm.sin.f32(float %i.bi)
  %i.bk = fmul nsz float %i.bh, %i.bj
  %i.bl = fmul nsz float %i.bf, %i.bf
  %i.bm = fmul nsz float %i.bl, 5.000000e-01
  %i.bn = fdiv nsz float %i.bk, %i.bm
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %calculate_lanczos_coeffs.exit
  %i.bo = phi float [ %i.bn, %bb.i ], [ 1.000000e+00, %calculate_lanczos_coeffs.exit ] ; 2 uses
  %i.bp = fadd nsz float %1, -1.000000e+00
  %i.bq = fadd nsz float %i.bp, 1.000000e+00
  %i.br = fpext nsz float %i.bq to double
  %i.bs = fmul nsz double %i.br, f0x400921FB54442D18
  %i.bt = fptrunc nsz double %i.bs to float       ; 5 uses
  %i.bu = fcmp nsz oeq float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call nsz float @llvm.sin.f32(float %i.bt)
  %i.bw = fmul nsz float %i.bt, 5.000000e-01
  %i.bx = tail call nsz float @llvm.sin.f32(float %i.bw)
  %i.by = fmul nsz float %i.bv, %i.bx
  %i.bz = fmul nsz float %i.bt, %i.bt
  %i.ca = fmul nsz float %i.bz, 5.000000e-01
  %i.cb = fdiv nsz float %i.by, %i.ca
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi float [ %i.cb, %bb.k ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.cd = fadd nsz float %1, -2.000000e+00
  %i.ce = fadd nsz float %i.cd, 1.000000e+00
  %i.cf = fpext nsz float %i.ce to double
  %i.cg = fmul nsz double %i.cf, f0x400921FB54442D18
  %i.ch = fptrunc nsz double %i.cg to float       ; 5 uses
  %i.ci = fcmp nsz oeq float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call nsz float @llvm.sin.f32(float %i.ch)
  %i.ck = fmul nsz float %i.ch, 5.000000e-01
  %i.cl = tail call nsz float @llvm.sin.f32(float %i.ck)
  %i.cm = fmul nsz float %i.cj, %i.cl
  %i.cn = fmul nsz float %i.ch, %i.ch
  %i.co = fmul nsz float %i.cn, 5.000000e-01
  %i.cp = fdiv nsz float %i.cm, %i.co
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cq = phi float [ %i.cp, %bb.m ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.cr = fadd nsz float %1, -3.000000e+00
  %i.cs = fadd nsz float %i.cr, 1.000000e+00
  %i.ct = fpext nsz float %i.cs to double
  %i.cu = fmul nsz double %i.ct, f0x400921FB54442D18
  %i.cv = fptrunc nsz double %i.cu to float       ; 5 uses
  %i.cw = fcmp nsz oeq float %i.cv, 0.000000e+00
  br i1 %i.cw, label %calculate_lanczos_coeffs.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = tail call nsz float @llvm.sin.f32(float %i.cv)
  %i.cy = fmul nsz float %i.cv, 5.000000e-01
  %i.cz = tail call nsz float @llvm.sin.f32(float %i.cy)
  %i.da = fmul nsz float %i.cx, %i.cz
  %i.db = fmul nsz float %i.cv, %i.cv
  %i.dc = fmul nsz float %i.db, 5.000000e-01
  %i.dd = fdiv nsz float %i.da, %i.dc
  br label %calculate_lanczos_coeffs.exit24

calculate_lanczos_coeffs.exit24:                  ; preds = %bb.n, %bb.o
  %.sink30.i23 = phi float [ %i.dd, %bb.o ], [ 1.000000e+00, %bb.n ] ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.m, i64 0
  %7 = insertelement <2 x float> %6, float %i.bo, i64 1
  %8 = insertelement <2 x float> poison, float %i.aa, i64 0
  %9 = insertelement <2 x float> %8, float %i.cc, i64 1
  %10 = fadd nsz <2 x float> %7, %9
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.df = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.df, ptr %3, align 2, !tbaa !18
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !18
  store i16 %i.dg, ptr %4, align 2, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 30
  %11 = insertelement <2 x float> poison, float %i.ao, i64 0
  %12 = insertelement <2 x float> %11, float %i.cq, i64 1
  %13 = fadd nsz <2 x float> %10, %12
  %14 = insertelement <2 x float> poison, float %.sink30.i, i64 0
  %15 = insertelement <2 x float> %14, float %.sink30.i23, i64 1
  %16 = fadd nsz <2 x float> %13, %15             ; 2 uses
  %i.gd = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.aa, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.ao, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %.sink30.i, i64 3 ; 2 uses
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gi = shufflevector <4 x float> %i.gg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gj = shufflevector <8 x float> %i.gh, <8 x float> %i.gi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gk = shufflevector <2 x float> %16, <2 x float> poison, <16 x i32> zeroinitializer
  %i.gl = fdiv nsz <16 x float> %i.gj, %i.gk
  %i.gm = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.cc, i64 1
  %i.go = insertelement <4 x float> %i.gn, float %i.cq, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %.sink30.i23, i64 3
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gq = fdiv nsz <4 x float> %i.gp, %17
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.gs = fmul nsz <16 x float> %i.gl, %i.gr
  %i.gt = fmul nsz <16 x float> %i.gs, splat (float 1.638500e+04)
  %i.gu = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.gt)
  %i.gv = trunc <16 x i64> %i.gu to <16 x i16>    ; 16 uses
  %i.gw = extractelement <16 x i16> %i.gv, i64 0
  store i16 %i.gw, ptr %5, align 2, !tbaa !18
  %i.gx = load i16, ptr %i.dh, align 2, !tbaa !18
  store i16 %i.gx, ptr %i.di, align 2, !tbaa !18
  %i.gy = load i16, ptr %i.dj, align 2, !tbaa !18
  store i16 %i.gy, ptr %i.dk, align 2, !tbaa !18
  %i.gz = extractelement <16 x i16> %i.gv, i64 1
  store i16 %i.gz, ptr %i.dl, align 2, !tbaa !18
  %i.ha = load i16, ptr %i.dm, align 2, !tbaa !18
  store i16 %i.ha, ptr %i.dn, align 2, !tbaa !18
  %i.hb = load i16, ptr %i.do, align 2, !tbaa !18
  store i16 %i.hb, ptr %i.dp, align 2, !tbaa !18
  %i.hc = extractelement <16 x i16> %i.gv, i64 2
  store i16 %i.hc, ptr %i.dq, align 2, !tbaa !18
  %i.hd = load i16, ptr %i.dr, align 2, !tbaa !18
  store i16 %i.hd, ptr %i.ds, align 2, !tbaa !18
  %i.he = load i16, ptr %i.dt, align 2, !tbaa !18
  store i16 %i.he, ptr %i.du, align 2, !tbaa !18
  %i.hf = extractelement <16 x i16> %i.gv, i64 3
  store i16 %i.hf, ptr %i.dv, align 2, !tbaa !18
  %i.hg = load i16, ptr %i.dw, align 2, !tbaa !18
  store i16 %i.hg, ptr %i.dy, align 2, !tbaa !18
  %i.hh = load i16, ptr %i.dx, align 2, !tbaa !18
  store i16 %i.hh, ptr %i.dz, align 2, !tbaa !18
  %i.hi = extractelement <16 x i16> %i.gv, i64 4
  store i16 %i.hi, ptr %i.ea, align 2, !tbaa !18
  %i.hj = load i16, ptr %i.eb, align 2, !tbaa !18
  store i16 %i.hj, ptr %i.ec, align 2, !tbaa !18
  %i.hk = load i16, ptr %i.ed, align 2, !tbaa !18
  store i16 %i.hk, ptr %i.ee, align 2, !tbaa !18
  %i.hl = extractelement <16 x i16> %i.gv, i64 5
  store i16 %i.hl, ptr %i.ef, align 2, !tbaa !18
  %i.hm = load i16, ptr %i.eg, align 2, !tbaa !18
  store i16 %i.hm, ptr %i.eh, align 2, !tbaa !18
  %i.hn = load i16, ptr %i.ei, align 2, !tbaa !18
  store i16 %i.hn, ptr %i.ej, align 2, !tbaa !18
  %i.ho = extractelement <16 x i16> %i.gv, i64 6
  store i16 %i.ho, ptr %i.ek, align 2, !tbaa !18
  %i.hp = load i16, ptr %i.el, align 2, !tbaa !18
  store i16 %i.hp, ptr %i.em, align 2, !tbaa !18
  %i.hq = load i16, ptr %i.en, align 2, !tbaa !18
  store i16 %i.hq, ptr %i.eo, align 2, !tbaa !18
  %i.hr = extractelement <16 x i16> %i.gv, i64 7
  store i16 %i.hr, ptr %i.ep, align 2, !tbaa !18
  %i.hs = load i16, ptr %i.eq, align 2, !tbaa !18
  store i16 %i.hs, ptr %i.es, align 2, !tbaa !18
  %i.ht = load i16, ptr %i.er, align 2, !tbaa !18
  store i16 %i.ht, ptr %i.et, align 2, !tbaa !18
  %i.hu = extractelement <16 x i16> %i.gv, i64 8
  store i16 %i.hu, ptr %i.eu, align 2, !tbaa !18
  %i.hv = load i16, ptr %i.ev, align 2, !tbaa !18
  store i16 %i.hv, ptr %i.ew, align 2, !tbaa !18
  %i.hw = load i16, ptr %i.ex, align 2, !tbaa !18
  store i16 %i.hw, ptr %i.ey, align 2, !tbaa !18
  %i.hx = extractelement <16 x i16> %i.gv, i64 9
  store i16 %i.hx, ptr %i.ez, align 2, !tbaa !18
  %i.hy = load i16, ptr %i.fa, align 2, !tbaa !18
  store i16 %i.hy, ptr %i.fb, align 2, !tbaa !18
  %i.hz = load i16, ptr %i.fc, align 2, !tbaa !18
  store i16 %i.hz, ptr %i.fd, align 2, !tbaa !18
  %i.ia = extractelement <16 x i16> %i.gv, i64 10
  store i16 %i.ia, ptr %i.fe, align 2, !tbaa !18
  %i.ib = load i16, ptr %i.ff, align 2, !tbaa !18
  store i16 %i.ib, ptr %i.fg, align 2, !tbaa !18
  %i.ic = load i16, ptr %i.fh, align 2, !tbaa !18
  store i16 %i.ic, ptr %i.fi, align 2, !tbaa !18
  %i.id = extractelement <16 x i16> %i.gv, i64 11
  store i16 %i.id, ptr %i.fj, align 2, !tbaa !18
  %i.ie = load i16, ptr %i.fk, align 2, !tbaa !18
  store i16 %i.ie, ptr %i.fm, align 2, !tbaa !18
  %i.if = load i16, ptr %i.fl, align 2, !tbaa !18
  store i16 %i.if, ptr %i.fn, align 2, !tbaa !18
  %i.ig = extractelement <16 x i16> %i.gv, i64 12
  store i16 %i.ig, ptr %i.fo, align 2, !tbaa !18
  %i.ih = load i16, ptr %i.fp, align 2, !tbaa !18
  store i16 %i.ih, ptr %i.fq, align 2, !tbaa !18
  %i.ii = load i16, ptr %i.fr, align 2, !tbaa !18
  store i16 %i.ii, ptr %i.fs, align 2, !tbaa !18
  %i.ij = extractelement <16 x i16> %i.gv, i64 13
  store i16 %i.ij, ptr %i.ft, align 2, !tbaa !18
  %i.ik = load i16, ptr %i.fu, align 2, !tbaa !18
  store i16 %i.ik, ptr %i.fv, align 2, !tbaa !18
  %i.il = load i16, ptr %i.fw, align 2, !tbaa !18
  store i16 %i.il, ptr %i.fx, align 2, !tbaa !18
  %i.im = extractelement <16 x i16> %i.gv, i64 14
  store i16 %i.im, ptr %i.fy, align 2, !tbaa !18
  %i.in = load i16, ptr %i.fz, align 2, !tbaa !18
  store i16 %i.in, ptr %i.ga, align 2, !tbaa !18
  %i.io = load i16, ptr %i.gb, align 2, !tbaa !18
  store i16 %i.io, ptr %i.gc, align 2, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 30
  %i.iq = extractelement <16 x i16> %i.gv, i64 15
  store i16 %i.iq, ptr %i.ip, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spline16_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
.preheader:
  %i.a = fadd nsz float %0, -1.800000e+00
  %i.b = fsub nsz float 1.200000e+00, %0
  %i.c = insertelement <4 x float> poison, float %0, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = insertelement <4 x float> <float f0xBEAAAAAB, float poison, float poison, float f0x3EAAAAAB>, float %i.a, i64 1
  %i.f = insertelement <4 x float> %i.e, float %i.b, i64 2
  %i.g = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %i.f, <4 x float> <float 8.000000e-01, float -2.000000e-01, float 8.000000e-01, float -2.000000e-01>) ; 3 uses
  %i.h = fadd nsz float %1, -1.800000e+00
  %i.i = fsub nsz float 1.200000e+00, %1
  %i.j = insertelement <4 x float> poison, float %1, i64 0
  %i.k = shufflevector <4 x float> %i.g, <4 x float> %i.j, <4 x i32> <i32 3, i32 4, i32 4, i32 4>
  %i.l = insertelement <4 x float> <float poison, float f0xBEAAAAAB, float poison, float poison>, float %0, i64 0
  %i.m = insertelement <4 x float> %i.l, float %i.h, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.i, i64 3
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.n, <4 x float> <float f0xBE088889, float 8.000000e-01, float -2.000000e-01, float 8.000000e-01>) ; 4 uses
  %i.p = extractelement <4 x float> %i.o, i64 1
  %i.q = tail call nsz float @llvm.fmuladd.f32(float %i.p, float %1, float f0xBEEEEEEF)
  %i.r = fmul nsz float %1, %i.q
  %i.s = extractelement <4 x float> %i.o, i64 2
  %i.t = tail call nsz float @llvm.fmuladd.f32(float %i.s, float %1, float 1.000000e+00) ; 4 uses
  %i.u = extractelement <4 x float> %i.o, i64 3
  %i.v = fmul nsz float %1, %i.u                  ; 4 uses
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %1, float f0x3EAAAAAB, float -2.000000e-01)
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %i.w, float %1, float f0xBE088889)
  %i.y = fmul nsz float %1, %i.x                  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.aa, ptr %3, align 2, !tbaa !18
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !18
  store i16 %i.ab, ptr %4, align 2, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.aq = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ar = insertelement <2 x float> poison, float %0, i64 0 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.as, <2 x float> <float f0xBEEEEEEF, float 1.000000e+00>) ; 2 uses
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  %i.av = shufflevector <4 x float> %i.g, <4 x float> %i.o, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = fmul nsz <4 x float> %i.au, %i.ax       ; 4 uses
  %i.az = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = fmul nsz <4 x float> %i.ay, %i.ba       ; 4 uses
  %i.bc = extractelement <4 x float> %i.bb, i64 0
  %i.bd = fmul nsz float %i.bc, 1.638500e+04
  %i.be = tail call i64 @llvm.lrint.i64.f32(float %i.bd)
  %i.bf = trunc i64 %i.be to i16
  store i16 %i.bf, ptr %5, align 2, !tbaa !18
  %i.bg = load i16, ptr %i.ac, align 2, !tbaa !18
  store i16 %i.bg, ptr %i.ad, align 2, !tbaa !18
  %i.bh = load i16, ptr %i.ae, align 2, !tbaa !18
  store i16 %i.bh, ptr %i.af, align 2, !tbaa !18
  %i.bi = extractelement <4 x float> %i.bb, i64 1
  %i.bj = fmul nsz float %i.bi, 1.638500e+04
  %i.bk = tail call i64 @llvm.lrint.i64.f32(float %i.bj)
  %i.bl = trunc i64 %i.bk to i16
  store i16 %i.bl, ptr %i.ag, align 2, !tbaa !18
  %i.bm = load i16, ptr %i.ah, align 2, !tbaa !18
  store i16 %i.bm, ptr %i.ai, align 2, !tbaa !18
  %i.bn = load i16, ptr %i.aj, align 2, !tbaa !18
  store i16 %i.bn, ptr %i.ak, align 2, !tbaa !18
  %i.bo = extractelement <4 x float> %i.bb, i64 2
  %i.bp = fmul nsz float %i.bo, 1.638500e+04
  %i.bq = tail call i64 @llvm.lrint.i64.f32(float %i.bp)
  %i.br = trunc i64 %i.bq to i16
  store i16 %i.br, ptr %i.al, align 2, !tbaa !18
  %i.bs = load i16, ptr %i.am, align 2, !tbaa !18
  store i16 %i.bs, ptr %i.an, align 2, !tbaa !18
  %i.bt = load i16, ptr %i.ao, align 2, !tbaa !18
  store i16 %i.bt, ptr %i.ap, align 2, !tbaa !18
  %i.bu = extractelement <4 x float> %i.bb, i64 3
  %i.bv = fmul nsz float %i.bu, 1.638500e+04
  %i.bw = tail call i64 @llvm.lrint.i64.f32(float %i.bv)
  %i.bx = trunc i64 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cb = load i16, ptr %i.bz, align 2, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !18
  %i.cd = load i16, ptr %i.ca, align 2, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
begin_hunk_1_@spline16_kernel:.preheader
  %i.fk = tail call i64 @llvm.lrint.i64.f32(float %i.fj)
  %i.fl = trunc i64 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fp = load i16, ptr %i.fn, align 2, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !18
  %i.fr = load i16, ptr %i.fo, align 2, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !18
  %i.ft = fmul nsz float %i.cf, %i.y
  %i.fu = fmul nsz float %i.ft, 1.638500e+04
  %i.fv = tail call i64 @llvm.lrint.i64.f32(float %i.fu)
  %i.fw = trunc i64 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !18
  %i.ge = fmul nsz float %i.cr, %i.y
  %i.gf = fmul nsz float %i.ge, 1.638500e+04
  %i.gg = tail call i64 @llvm.lrint.i64.f32(float %i.gf)
  %i.gh = trunc i64 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !18
  %i.gp = fmul nsz float %i.dd, %i.y
  %i.gq = fmul nsz float %i.gp, 1.638500e+04
  %i.gr = tail call i64 @llvm.lrint.i64.f32(float %i.gq)
  %i.gs = trunc i64 %i.gr to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !18
  %i.ha = fmul nsz float %i.dp, %i.y
  %i.hb = fmul nsz float %i.ha, 1.638500e+04
  %i.hc = tail call i64 @llvm.lrint.i64.f32(float %i.hb)
  %i.hd = trunc i64 %i.hc to i16
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @gaussian_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
bb.a:
  %i.a = fadd nsz float %0, 1.000000e+00          ; 5 uses
  %i.b = fcmp nsz oeq float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fmul nsz float %i.a, -2.000000e+00
  %i.d = fmul nsz float %i.a, %i.c
  %i.e = tail call nsz float @llvm.exp.f32(float %i.d)
  %i.f = fneg nsz float %i.a
  %i.g = fmul nsz float %i.a, %i.f
  %i.h = fmul nsz float %i.g, 5.000000e-01
  %i.i = tail call nsz float @llvm.exp.f32(float %i.h)
  %i.j = fmul nsz float %i.e, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi float [ %i.j, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.l = fcmp nsz oeq float %0, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fmul nsz float %0, -2.000000e+00
  %i.n = fmul nsz float %0, %i.m
  %i.o = tail call nsz float @llvm.exp.f32(float %i.n)
  %i.p = fneg nsz float %0
  %i.q = fmul nsz float %0, %i.p
  %i.r = fmul nsz float %i.q, 5.000000e-01
  %i.s = tail call nsz float @llvm.exp.f32(float %i.r)
  %i.t = fmul nsz float %i.o, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi float [ %i.t, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.v = fadd nsz float %0, -1.000000e+00         ; 5 uses
  %i.w = fcmp nsz oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = fmul nsz float %i.v, -2.000000e+00
  %i.y = fmul nsz float %i.v, %i.x
  %i.z = tail call nsz float @llvm.exp.f32(float %i.y)
  %i.aa = fneg nsz float %i.v
  %i.ab = fmul nsz float %i.v, %i.aa
  %i.ac = fmul nsz float %i.ab, 5.000000e-01
  %i.ad = tail call nsz float @llvm.exp.f32(float %i.ac)
  %i.ae = fmul nsz float %i.z, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi float [ %i.ae, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ag = fadd nsz float %0, -2.000000e+00        ; 5 uses
  %i.ah = fcmp nsz oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %calculate_gaussian_coeffs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul nsz float %i.ag, -2.000000e+00
  %i.aj = fmul nsz float %i.ag, %i.ai
  %i.ak = tail call nsz float @llvm.exp.f32(float %i.aj)
  %i.al = fneg nsz float %i.ag
  %i.am = fmul nsz float %i.ag, %i.al
  %i.an = fmul nsz float %i.am, 5.000000e-01
  %i.ao = tail call nsz float @llvm.exp.f32(float %i.an)
  %i.ap = fmul nsz float %i.ak, %i.ao
  br label %calculate_gaussian_coeffs.exit

calculate_gaussian_coeffs.exit:                   ; preds = %bb.g, %bb.h
  %.sink30.i = phi float [ %i.ap, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  %i.aq = fadd nsz float %1, 1.000000e+00         ; 5 uses
  %i.ar = fcmp nsz oeq float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %calculate_gaussian_coeffs.exit
  %i.as = fmul nsz float %i.aq, -2.000000e+00
  %i.at = fmul nsz float %i.aq, %i.as
  %i.au = tail call nsz float @llvm.exp.f32(float %i.at)
  %i.av = fneg nsz float %i.aq
  %i.aw = fmul nsz float %i.aq, %i.av
  %i.ax = fmul nsz float %i.aw, 5.000000e-01
  %i.ay = tail call nsz float @llvm.exp.f32(float %i.ax)
  %i.az = fmul nsz float %i.au, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %calculate_gaussian_coeffs.exit
  %i.ba = phi float [ %i.az, %bb.i ], [ 1.000000e+00, %calculate_gaussian_coeffs.exit ] ; 2 uses
  %i.bb = fcmp nsz oeq float %1, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = fmul nsz float %1, -2.000000e+00
  %i.bd = fmul nsz float %1, %i.bc
  %i.be = tail call nsz float @llvm.exp.f32(float %i.bd)
  %i.bf = fneg nsz float %1
  %i.bg = fmul nsz float %1, %i.bf
  %i.bh = fmul nsz float %i.bg, 5.000000e-01
  %i.bi = tail call nsz float @llvm.exp.f32(float %i.bh)
  %i.bj = fmul nsz float %i.be, %i.bi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi float [ %i.bj, %bb.k ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.bl = fadd nsz float %1, -1.000000e+00        ; 5 uses
  %i.bm = fcmp nsz oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fmul nsz float %i.bl, -2.000000e+00
  %i.bo = fmul nsz float %i.bl, %i.bn
  %i.bp = tail call nsz float @llvm.exp.f32(float %i.bo)
  %i.bq = fneg nsz float %i.bl
  %i.br = fmul nsz float %i.bl, %i.bq
  %i.bs = fmul nsz float %i.br, 5.000000e-01
  %i.bt = tail call nsz float @llvm.exp.f32(float %i.bs)
  %i.bu = fmul nsz float %i.bp, %i.bt
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = phi float [ %i.bu, %bb.m ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.bw = fadd nsz float %1, -2.000000e+00        ; 5 uses
  %i.bx = fcmp nsz oeq float %i.bw, 0.000000e+00
  br i1 %i.bx, label %calculate_gaussian_coeffs.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = fmul nsz float %i.bw, -2.000000e+00
  %i.bz = fmul nsz float %i.bw, %i.by
  %i.ca = tail call nsz float @llvm.exp.f32(float %i.bz)
  %i.cb = fneg nsz float %i.bw
  %i.cc = fmul nsz float %i.bw, %i.cb
  %i.cd = fmul nsz float %i.cc, 5.000000e-01
  %i.ce = tail call nsz float @llvm.exp.f32(float %i.cd)
  %i.cf = fmul nsz float %i.ca, %i.ce
  br label %calculate_gaussian_coeffs.exit24

calculate_gaussian_coeffs.exit24:                 ; preds = %bb.n, %bb.o
  %.sink30.i23 = phi float [ %i.cf, %bb.o ], [ 1.000000e+00, %bb.n ] ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.k, i64 0
  %7 = insertelement <2 x float> %6, float %i.ba, i64 1
  %8 = insertelement <2 x float> poison, float %i.u, i64 0
  %9 = insertelement <2 x float> %8, float %i.bk, i64 1
  %10 = fadd nsz <2 x float> %7, %9
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.ch, ptr %3, align 2, !tbaa !18
  %i.ci = load i16, ptr %i.cg, align 2, !tbaa !18
  store i16 %i.ci, ptr %4, align 2, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 30
  %11 = insertelement <2 x float> poison, float %i.af, i64 0
  %12 = insertelement <2 x float> %11, float %i.bv, i64 1
  %13 = fadd nsz <2 x float> %10, %12
  %14 = insertelement <2 x float> poison, float %.sink30.i, i64 0
  %15 = insertelement <2 x float> %14, float %.sink30.i23, i64 1
  %16 = fadd nsz <2 x float> %13, %15             ; 2 uses
  %i.ff = insertelement <4 x float> poison, float %i.k, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.u, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.af, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %.sink30.i, i64 3 ; 2 uses
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fl = shufflevector <8 x float> %i.fj, <8 x float> %i.fk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fm = shufflevector <2 x float> %16, <2 x float> poison, <16 x i32> zeroinitializer
  %i.fn = fdiv nsz <16 x float> %i.fl, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.fp = insertelement <4 x float> %i.fo, float %i.bk, i64 1
  %i.fq = insertelement <4 x float> %i.fp, float %i.bv, i64 2
  %i.fr = insertelement <4 x float> %i.fq, float %.sink30.i23, i64 3
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = fdiv nsz <4 x float> %i.fr, %17
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.fu = fmul nsz <16 x float> %i.fn, %i.ft
  %i.fv = fmul nsz <16 x float> %i.fu, splat (float 1.638500e+04)
  %i.fw = tail call <16 x i64> @llvm.lrint.v16i64.v16f32(<16 x float> %i.fv)
  %i.fx = trunc <16 x i64> %i.fw to <16 x i16>    ; 16 uses
  %i.fy = extractelement <16 x i16> %i.fx, i64 0
  store i16 %i.fy, ptr %5, align 2, !tbaa !18
  %i.fz = load i16, ptr %i.cj, align 2, !tbaa !18
  store i16 %i.fz, ptr %i.ck, align 2, !tbaa !18
  %i.ga = load i16, ptr %i.cl, align 2, !tbaa !18
  store i16 %i.ga, ptr %i.cm, align 2, !tbaa !18
  %i.gb = extractelement <16 x i16> %i.fx, i64 1
  store i16 %i.gb, ptr %i.cn, align 2, !tbaa !18
  %i.gc = load i16, ptr %i.co, align 2, !tbaa !18
  store i16 %i.gc, ptr %i.cp, align 2, !tbaa !18
  %i.gd = load i16, ptr %i.cq, align 2, !tbaa !18
  store i16 %i.gd, ptr %i.cr, align 2, !tbaa !18
  %i.ge = extractelement <16 x i16> %i.fx, i64 2
  store i16 %i.ge, ptr %i.cs, align 2, !tbaa !18
  %i.gf = load i16, ptr %i.ct, align 2, !tbaa !18
  store i16 %i.gf, ptr %i.cu, align 2, !tbaa !18
  %i.gg = load i16, ptr %i.cv, align 2, !tbaa !18
  store i16 %i.gg, ptr %i.cw, align 2, !tbaa !18
  %i.gh = extractelement <16 x i16> %i.fx, i64 3
  store i16 %i.gh, ptr %i.cx, align 2, !tbaa !18
  %i.gi = load i16, ptr %i.cy, align 2, !tbaa !18
  store i16 %i.gi, ptr %i.da, align 2, !tbaa !18
  %i.gj = load i16, ptr %i.cz, align 2, !tbaa !18
  store i16 %i.gj, ptr %i.db, align 2, !tbaa !18
  %i.gk = extractelement <16 x i16> %i.fx, i64 4
  store i16 %i.gk, ptr %i.dc, align 2, !tbaa !18
  %i.gl = load i16, ptr %i.dd, align 2, !tbaa !18
  store i16 %i.gl, ptr %i.de, align 2, !tbaa !18
  %i.gm = load i16, ptr %i.df, align 2, !tbaa !18
  store i16 %i.gm, ptr %i.dg, align 2, !tbaa !18
  %i.gn = extractelement <16 x i16> %i.fx, i64 5
  store i16 %i.gn, ptr %i.dh, align 2, !tbaa !18
  %i.go = load i16, ptr %i.di, align 2, !tbaa !18
  store i16 %i.go, ptr %i.dj, align 2, !tbaa !18
  %i.gp = load i16, ptr %i.dk, align 2, !tbaa !18
  store i16 %i.gp, ptr %i.dl, align 2, !tbaa !18
  %i.gq = extractelement <16 x i16> %i.fx, i64 6
  store i16 %i.gq, ptr %i.dm, align 2, !tbaa !18
  %i.gr = load i16, ptr %i.dn, align 2, !tbaa !18
  store i16 %i.gr, ptr %i.do, align 2, !tbaa !18
  %i.gs = load i16, ptr %i.dp, align 2, !tbaa !18
  store i16 %i.gs, ptr %i.dq, align 2, !tbaa !18
  %i.gt = extractelement <16 x i16> %i.fx, i64 7
  store i16 %i.gt, ptr %i.dr, align 2, !tbaa !18
  %i.gu = load i16, ptr %i.ds, align 2, !tbaa !18
  store i16 %i.gu, ptr %i.du, align 2, !tbaa !18
  %i.gv = load i16, ptr %i.dt, align 2, !tbaa !18
  store i16 %i.gv, ptr %i.dv, align 2, !tbaa !18
  %i.gw = extractelement <16 x i16> %i.fx, i64 8
  store i16 %i.gw, ptr %i.dw, align 2, !tbaa !18
  %i.gx = load i16, ptr %i.dx, align 2, !tbaa !18
  store i16 %i.gx, ptr %i.dy, align 2, !tbaa !18
  %i.gy = load i16, ptr %i.dz, align 2, !tbaa !18
  store i16 %i.gy, ptr %i.ea, align 2, !tbaa !18
  %i.gz = extractelement <16 x i16> %i.fx, i64 9
  store i16 %i.gz, ptr %i.eb, align 2, !tbaa !18
  %i.ha = load i16, ptr %i.ec, align 2, !tbaa !18
  store i16 %i.ha, ptr %i.ed, align 2, !tbaa !18
  %i.hb = load i16, ptr %i.ee, align 2, !tbaa !18
  store i16 %i.hb, ptr %i.ef, align 2, !tbaa !18
  %i.hc = extractelement <16 x i16> %i.fx, i64 10
  store i16 %i.hc, ptr %i.eg, align 2, !tbaa !18
  %i.hd = load i16, ptr %i.eh, align 2, !tbaa !18
  store i16 %i.hd, ptr %i.ei, align 2, !tbaa !18
  %i.he = load i16, ptr %i.ej, align 2, !tbaa !18
  store i16 %i.he, ptr %i.ek, align 2, !tbaa !18
  %i.hf = extractelement <16 x i16> %i.fx, i64 11
  store i16 %i.hf, ptr %i.el, align 2, !tbaa !18
  %i.hg = load i16, ptr %i.em, align 2, !tbaa !18
  store i16 %i.hg, ptr %i.eo, align 2, !tbaa !18
  %i.hh = load i16, ptr %i.en, align 2, !tbaa !18
  store i16 %i.hh, ptr %i.ep, align 2, !tbaa !18
  %i.hi = extractelement <16 x i16> %i.fx, i64 12
  store i16 %i.hi, ptr %i.eq, align 2, !tbaa !18
  %i.hj = load i16, ptr %i.er, align 2, !tbaa !18
  store i16 %i.hj, ptr %i.es, align 2, !tbaa !18
  %i.hk = load i16, ptr %i.et, align 2, !tbaa !18
  store i16 %i.hk, ptr %i.eu, align 2, !tbaa !18
  %i.hl = extractelement <16 x i16> %i.fx, i64 13
  store i16 %i.hl, ptr %i.ev, align 2, !tbaa !18
  %i.hm = load i16, ptr %i.ew, align 2, !tbaa !18
  store i16 %i.hm, ptr %i.ex, align 2, !tbaa !18
  %i.hn = load i16, ptr %i.ey, align 2, !tbaa !18
  store i16 %i.hn, ptr %i.ez, align 2, !tbaa !18
  %i.ho = extractelement <16 x i16> %i.fx, i64 14
  store i16 %i.ho, ptr %i.fa, align 2, !tbaa !18
  %i.hp = load i16, ptr %i.fb, align 2, !tbaa !18
  store i16 %i.hp, ptr %i.fc, align 2, !tbaa !18
  %i.hq = load i16, ptr %i.fd, align 2, !tbaa !18
  store i16 %i.hq, ptr %i.fe, align 2, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 30
  %i.hs = extractelement <16 x i16> %i.fx, i64 15
  store i16 %i.hs, ptr %i.hr, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @mitchell_kernel(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5) #0 {
.preheader:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call fastcc void @calculate_cubic_bc_coeffs(float noundef %0, ptr noundef %i.a)
  call fastcc void @calculate_cubic_bc_coeffs(float noundef %1, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load float, ptr %i.b, align 16, !tbaa !29 ; 4 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !18
  store i16 %i.e, ptr %3, align 2, !tbaa !18
  %i.f = load i16, ptr %i.c, align 2, !tbaa !18
  store i16 %i.f, ptr %4, align 2, !tbaa !18
  %i.g = load float, ptr %i.a, align 16, !tbaa !29 ; 2 uses
  %i.h = fmul nsz float %i.g, %i.d
  %i.i = fmul nsz float %i.h, 1.638500e+04
  %i.j = tail call i64 @llvm.lrint.i64.f32(float %i.i)
  %i.k = trunc i64 %i.j to i16
  store i16 %i.k, ptr %5, align 2, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.m, ptr %i.n, align 2, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.p = load i16, ptr %i.o, align 2, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.p, ptr %i.q, align 2, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %i.t = fmul nsz float %i.s, %i.d
  %i.u = fmul nsz float %i.t, 1.638500e+04
  %i.v = tail call i64 @llvm.lrint.i64.f32(float %i.u)
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = fmul nsz float %i.af, %i.d
  %i.ah = fmul nsz float %i.ag, 1.638500e+04
  %i.ai = tail call i64 @llvm.lrint.i64.f32(float %i.ah)
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.am = load i16, ptr %i.al, align 2, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.am, ptr %i.an, align 2, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !29 ; 2 uses
  %i.at = fmul nsz float %i.as, %i.d
  %i.au = fmul nsz float %i.at, 1.638500e+04
  %i.av = tail call i64 @llvm.lrint.i64.f32(float %i.au)
  %i.aw = trunc i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !29 ; 4 uses
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !18
  %i.be = load i16, ptr %i.az, align 2, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !18
  %i.bg = fmul nsz float %i.g, %i.bb
  %i.bh = fmul nsz float %i.bg, 1.638500e+04
  %i.bi = tail call i64 @llvm.lrint.i64.f32(float %i.bh)
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !18
  %i.br = fmul nsz float %i.s, %i.bb
  %i.bs = fmul nsz float %i.br, 1.638500e+04
  %i.bt = tail call i64 @llvm.lrint.i64.f32(float %i.bs)
  %i.bu = trunc i64 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !18
end_hunk_1
