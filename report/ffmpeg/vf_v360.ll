Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@v360_slice:bb.a
  %i.dt = call float @llvm.fabs.f32(float %i.ds)
  %i.du = fcmp ueq float %i.dt, +inf
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dv = phi float [ 1.000000e+00, %bb.k ], [ %i.ds, %bb.j ] ; 3 uses
  %i.dw = phi float [ 0.000000e+00, %bb.k ], [ %i.dp, %bb.j ]
  %i.dx = phi float [ 0.000000e+00, %bb.k ], [ %i.dm, %bb.j ]
  %i.dy = load float, ptr %i.ae, align 4, !tbaa !29 ; 3 uses
  %i.dz = load float, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.ad, align 8, !tbaa !29
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dw, i64 1
  %i.ed = fadd nsz <2 x float> %i.ea, %i.ec       ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ed, %i.ed
  %i.ee = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ef = extractelement <2 x float> %i.ed, i64 0 ; 2 uses
  %i.eg = call nsz float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = call nsz float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.eg)
  %i.ei = call nsz float @llvm.sqrt.f32(float %i.eh) ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fdiv nsz <2 x float> %i.ed, %i.ek       ; 5 uses
  %i.em = fdiv nsz float %i.dv, %i.ei             ; 4 uses
  %i.en = extractelement <2 x float> %i.el, i64 0 ; 2 uses
  %i.eo = fneg nsz float %i.en
  %i.ep = load float, ptr %i.af, align 8, !tbaa !29 ; 4 uses
  %i.eq = fmul nsz float %i.ep, %i.eo
  %i.er = call nsz float @llvm.fmuladd.f32(float %i.dy, float 0.000000e+00, float %i.eq)
  %i.es = load <2 x float>, ptr %i.ag, align 4, !tbaa !29 ; 5 uses
  %i.et = fneg nsz <2 x float> %i.es              ; 3 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %i.ev = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.ew = call nsz float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.er)
  %i.ex = fneg nsz float %i.ep
  %i.ey = extractelement <2 x float> %i.et, i64 1
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.em, float %i.ew) ; 2 uses
  %i.fa = fmul nsz float %i.ev, %i.dy
  %i.fb = extractelement <2 x float> %i.es, i64 0
  %i.fc = call nsz float @llvm.fmuladd.f32(float %i.fb, float 0.000000e+00, float %i.fa)
  %i.fd = extractelement <2 x float> %i.es, i64 1
  %i.fe = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ff = insertelement <2 x float> %i.fe, float %i.em, i64 0
  %i.fg = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul nsz <2 x float> %i.ff, %i.fh
  %i.fj = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = insertelement <2 x float> %i.fj, float %i.ep, i64 1
  %i.fl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> zeroinitializer, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.em, i64 1
  %i.fo = shufflevector <2 x float> %i.el, <2 x float> %i.es, <2 x i32> <i32 1, i32 2>
  %i.fp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fo, <2 x float> %i.fl)
  %i.fq = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.en, float %i.fc)
  %i.fr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.el, <2 x float> %i.fp) ; 5 uses
  %i.fs = call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.em, float %i.fq) ; 3 uses
  %i.ft = load float, ptr %i.ai, align 8, !tbaa !29 ; 3 uses
  %i.fu = fneg nsz float %i.fs
  %i.fv = load <2 x float>, ptr %i.aj, align 4, !tbaa !29 ; 4 uses
  %i.fw = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fz = insertelement <2 x float> %i.fy, float %i.ft, i64 0
  %i.ga = fmul nsz <2 x float> %i.fx, %i.fz
  %i.gb = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gc = insertelement <2 x float> %i.gb, float %i.fs, i64 1
  %i.gd = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ge, <2 x float> %i.ga)
  %i.gg = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.gi = insertelement <2 x float> %i.fy, float %i.ft, i64 1
  %i.gj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gi, <2 x float> %i.gf)
  %i.gk = fneg nsz <2 x float> %i.fr
  %i.gl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.fv, <2 x float> %i.gj) ; 4 uses
  %i.gm = extractelement <2 x float> %i.fv, i64 1
  %i.gn = fmul nsz float %i.ez, %i.gm
  %i.go = extractelement <2 x float> %i.fr, i64 0
  %i.gp = call nsz float @llvm.fmuladd.f32(float %i.go, float %i.dz, float %i.gn)
  %i.gq = extractelement <2 x float> %i.fr, i64 1
  %i.gr = extractelement <2 x float> %i.fv, i64 0
  %i.gs = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gr, float %i.gp)
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.ft, float %i.gs) ; 3 uses
  %foldExtExtBinop141 = fmul nsz <2 x float> %i.gl, %i.gl
  %i.gu = extractelement <2 x float> %foldExtExtBinop141, i64 1
  %i.gv = extractelement <2 x float> %i.gl, i64 0 ; 2 uses
  %i.gw = call nsz float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float %i.gu)
  %i.gx = call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %i.gw)
  %i.gy = call nsz float @llvm.sqrt.f32(float %i.gx) ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fdiv nsz <2 x float> %i.gl, %i.ha
  %i.hc = fdiv nsz float %i.gt, %i.gy
  %i.hd = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.he = fmul nsz <2 x float> %i.hd, %i.hb
  store <2 x float> %i.he, ptr %i.c, align 8, !tbaa !29
  %i.hf = load float, ptr %i.al, align 4, !tbaa !29
  %i.hg = fmul nsz float %i.hc, %i.hf
  store float %i.hg, ptr %i.ac, align 8, !tbaa !29
  %i.hh = load i32, ptr %i.am, align 4, !tbaa !60
  %.not119 = icmp eq i32 %i.hh, 0
  %i.hi = load ptr, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hj = call i32 %i.hi(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.bf, i32 noundef %i.bd, ptr noundef nonnull %i.ao, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.hk = call i32 %i.hi(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.bf, ptr noundef nonnull %4, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0109 = phi i32 [ %i.hj, %bb.m ], [ %i.hk, %bb.n ]
  %i.hl = load i32, ptr %i.ap, align 8, !tbaa !161
  %i.hm = load i32, ptr %i.aq, align 4, !tbaa !162
  %.not.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i, label %.loopexit30.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.o
  %i.hn = load <8 x i16>, ptr %4, align 16, !tbaa !18
  %i.ho = xor <8 x i16> %i.hn, splat (i16 -1)
  %i.hp = add <8 x i16> %i.cb, %i.ho
  store <8 x i16> %i.hp, ptr %4, align 16, !tbaa !18
  %i.hq = load <8 x i16>, ptr %i.ar, align 16, !tbaa !18
  %i.hr = xor <8 x i16> %i.hq, splat (i16 -1)
  %i.hs = add <8 x i16> %i.cb, %i.hr
  store <8 x i16> %i.hs, ptr %i.ar, align 16, !tbaa !18
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.preheader29.i, %bb.o
  %.not26.i = icmp eq i32 %i.hm, 0
  br i1 %.not26.i, label %input_flip.exit, label %.preheader27.i

.preheader27.i:                                   ; preds = %.loopexit30.i
  %i.ht = load <8 x i16>, ptr %i.ao, align 16, !tbaa !18
  %i.hu = xor <8 x i16> %i.ht, splat (i16 -1)
  %i.hv = add <8 x i16> %i.bz, %i.hu
  store <8 x i16> %i.hv, ptr %i.ao, align 16, !tbaa !18
  %i.hw = load <8 x i16>, ptr %i.as, align 16, !tbaa !18
  %i.hx = xor <8 x i16> %i.hw, splat (i16 -1)
  %i.hy = add <8 x i16> %i.bz, %i.hx
  store <8 x i16> %i.hy, ptr %i.as, align 16, !tbaa !18
  br label %input_flip.exit

input_flip.exit:                                  ; preds = %.loopexit30.i, %.preheader27.i
  %i.hz = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.ia = load float, ptr %i.a, align 4, !tbaa !29
  %i.ib = load float, ptr %i.b, align 4, !tbaa !29
  call void %i.hz(float noundef %i.ia, float noundef %i.ib, ptr noundef nonnull %4, ptr noundef %i.co, ptr noundef %i.cq, ptr noundef %i.cs) #17
  br i1 %.not, label %bb.p, label %bb.t

bb.p:                                             ; preds = %input_flip.exit
  %i.ic = load ptr, ptr %i.y, align 8, !tbaa !71
  %.not120 = icmp eq ptr %i.ic, null
  br i1 %.not120, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.id = load i32, ptr %i.au, align 4, !tbaa !53
  %i.ie = icmp eq i32 %i.id, 1
  %i.if = and i32 %.0109, %.0                     ; 2 uses
  br i1 %i.ie, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ig = trunc i32 %i.if to i8
  %i.ih = sub i8 0, %i.ig
  store i8 %i.ih, ptr %i.df, align 1, !tbaa !19
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ii = mul nsw i32 %i.if, %i.av
  %i.ij = trunc i32 %i.ii to i16
  store i16 %i.ij, ptr %i.dg, align 2, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p, %input_flip.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !160
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @calculate_cubic_bc_coeffs(float noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #8 {
bb.a:
  %i.a = fadd nsz float %0, 1.000000e+00          ; 3 uses
  %i.b = tail call nsz float @llvm.fabs.f32(float %i.a) ; 10 uses
  %i.c = fcmp nsz olt float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul nnan nsz float %i.a, %i.a           ; 2 uses
  %i.e = tail call nnan nsz float @llvm.fmuladd.f32(float %i.b, float f0x3F955555, float -2.000000e+00)
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.e, float f0x3F638E39)
  %i.g = fmul nnan nsz float %i.b, f0x3F955555
  %i.h = fmul nnan nsz float %i.g, 5.000000e-01
  %i.i = fadd nnan nsz float %i.h, -2.000000e+00
  %i.j = fmul nsz float %i.d, %i.i
  %i.k = fmul nsz float %i.j, 2.500000e-01
  %i.l = fadd nsz float %i.k, f0x3F638E39
  %i.m = fmul nsz float %i.f, %i.l
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = fcmp nsz olt float %i.b, 2.000000e+00
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %2 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.b, float f0xBEC71C73, float 2.000000e+00)
  %3 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.b, float %2, float f0xC0555555)
  %4 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.b, float %3, float f0x3FE38E39)
  %5 = fmul nnan nsz float %i.b, 5.000000e-01
  %6 = tail call nnan nsz float @llvm.fmuladd.f32(float %5, float f0xBEC71C73, float 2.000000e+00)
  %i.o = fmul nnan nsz float %i.b, %6
  %i.p = fmul nnan nsz float %i.o, 5.000000e-01
  %i.q = fadd nnan nsz float %i.p, f0xC0555555
  %i.r = fmul nnan nsz float %i.b, %i.q
  %i.s = fmul nnan nsz float %i.r, 5.000000e-01
  %i.t = fadd nnan nsz float %i.s, f0x3FE38E39
  %i.u = fmul nsz float %4, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi float [ %i.u, %bb.d ], [ %i.m, %bb.b ], [ 0.000000e+00, %bb.c ] ; 3 uses
  store float %.sink, ptr %1, align 4, !tbaa !29
  %i.v = fadd nsz float %0, -1.000000e+00
  %i.w = fadd nsz float %i.v, 1.000000e+00        ; 3 uses
  %i.x = tail call nsz float @llvm.fabs.f32(float %i.w) ; 10 uses
  %i.y = fcmp nsz olt float %i.x, 1.000000e+00
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = fcmp nsz olt float %i.x, 2.000000e+00
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %7 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.x, float f0xBEC71C73, float 2.000000e+00)
  %8 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.x, float %7, float f0xC0555555)
  %9 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.x, float %8, float f0x3FE38E39)
  %10 = fmul nnan nsz float %i.x, 5.000000e-01
  %11 = tail call nnan nsz float @llvm.fmuladd.f32(float %10, float f0xBEC71C73, float 2.000000e+00)
  %i.aa = fmul nnan nsz float %i.x, %11
  %i.ab = fmul nnan nsz float %i.aa, 5.000000e-01
  %i.ac = fadd nnan nsz float %i.ab, f0xC0555555
  %i.ad = fmul nnan nsz float %i.x, %i.ac
  %i.ae = fmul nnan nsz float %i.ad, 5.000000e-01
  %i.af = fadd nnan nsz float %i.ae, f0x3FE38E39
  %i.ag = fmul nsz float %9, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ah = fmul nnan nsz float %i.w, %i.w          ; 2 uses
  %i.ai = tail call nnan nsz float @llvm.fmuladd.f32(float %i.x, float f0x3F955555, float -2.000000e+00)
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.ai, float f0x3F638E39)
  %i.ak = fmul nnan nsz float %i.x, f0x3F955555
  %i.al = fmul nnan nsz float %i.ak, 5.000000e-01
  %i.am = fadd nnan nsz float %i.al, -2.000000e+00
  %i.an = fmul nsz float %i.ah, %i.am
  %i.ao = fmul nsz float %i.an, 2.500000e-01
  %i.ap = fadd nsz float %i.ao, f0x3F638E39
  %i.aq = fmul nsz float %i.aj, %i.ap
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.ar = phi float [ %i.aq, %bb.h ], [ %i.ag, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.as = fadd nsz float %0, -2.000000e+00
  %i.at = fadd nsz float %i.as, 1.000000e+00      ; 3 uses
  %i.au = tail call nsz float @llvm.fabs.f32(float %i.at) ; 10 uses
  %i.av = fcmp nsz olt float %i.au, 1.000000e+00
  br i1 %i.av, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = fcmp nsz olt float %i.au, 2.000000e+00
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %12 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.au, float f0xBEC71C73, float 2.000000e+00)
  %13 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.au, float %12, float f0xC0555555)
  %14 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.au, float %13, float f0x3FE38E39)
  %15 = fmul nnan nsz float %i.au, 5.000000e-01
  %16 = tail call nnan nsz float @llvm.fmuladd.f32(float %15, float f0xBEC71C73, float 2.000000e+00)
  %i.ax = fmul nnan nsz float %i.au, %16
  %i.ay = fmul nnan nsz float %i.ax, 5.000000e-01
  %i.az = fadd nnan nsz float %i.ay, f0xC0555555
  %i.ba = fmul nnan nsz float %i.au, %i.az
  %i.bb = fmul nnan nsz float %i.ba, 5.000000e-01
  %i.bc = fadd nnan nsz float %i.bb, f0x3FE38E39
  %i.bd = fmul nsz float %14, %i.bc
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.be = fmul nnan nsz float %i.at, %i.at        ; 2 uses
  %i.bf = tail call nnan nsz float @llvm.fmuladd.f32(float %i.au, float f0x3F955555, float -2.000000e+00)
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.be, float %i.bf, float f0x3F638E39)
  %i.bh = fmul nnan nsz float %i.au, f0x3F955555
  %i.bi = fmul nnan nsz float %i.bh, 5.000000e-01
  %i.bj = fadd nnan nsz float %i.bi, -2.000000e+00
  %i.bk = fmul nsz float %i.be, %i.bj
  %i.bl = fmul nsz float %i.bk, 2.500000e-01
  %i.bm = fadd nsz float %i.bl, f0x3F638E39
  %i.bn = fmul nsz float %i.bg, %i.bm
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.bo = phi float [ %i.bn, %bb.l ], [ %i.bd, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.bp = fadd nsz float %0, -3.000000e+00
  %i.bq = fadd nsz float %i.bp, 1.000000e+00      ; 3 uses
  %i.br = tail call nsz float @llvm.fabs.f32(float %i.bq) ; 10 uses
  %i.bs = fcmp nsz olt float %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = fcmp nsz olt float %i.br, 2.000000e+00
  br i1 %i.bt, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %17 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.br, float f0xBEC71C73, float 2.000000e+00)
  %18 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.br, float %17, float f0xC0555555)
  %19 = tail call nnan nsz float @llvm.fmuladd.f32(float %i.br, float %18, float f0x3FE38E39)
  %20 = fmul nnan nsz float %i.br, 5.000000e-01
  %21 = tail call nnan nsz float @llvm.fmuladd.f32(float %20, float f0xBEC71C73, float 2.000000e+00)
  %i.bu = fmul nnan nsz float %i.br, %21
  %i.bv = fmul nnan nsz float %i.bu, 5.000000e-01
  %i.bw = fadd nnan nsz float %i.bv, f0xC0555555
  %i.bx = fmul nnan nsz float %i.br, %i.bw
  %i.by = fmul nnan nsz float %i.bx, 5.000000e-01
  %i.bz = fadd nnan nsz float %i.by, f0x3FE38E39
  %i.ca = fmul nsz float %19, %i.bz
  br label %.preheader

bb.p:                                             ; preds = %bb.m
  %i.cb = fmul nnan nsz float %i.bq, %i.bq        ; 2 uses
  %i.cc = tail call nnan nsz float @llvm.fmuladd.f32(float %i.br, float f0x3F955555, float -2.000000e+00)
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float f0x3F638E39)
  %i.ce = fmul nnan nsz float %i.br, f0x3F955555
  %i.cf = fmul nnan nsz float %i.ce, 5.000000e-01
  %i.cg = fadd nnan nsz float %i.cf, -2.000000e+00
  %i.ch = fmul nsz float %i.cb, %i.cg
  %i.ci = fmul nsz float %i.ch, 2.500000e-01
  %i.cj = fadd nsz float %i.ci, f0x3F638E39
  %i.ck = fmul nsz float %i.cd, %i.cj
  br label %.preheader

.preheader:                                       ; preds = %bb.n, %bb.p, %bb.o
  %i.cl = phi float [ %i.ck, %bb.p ], [ %i.ca, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.cm = fadd nsz float %.sink, %i.ar
  %i.cn = fadd nsz float %i.cm, %i.bo
  %i.co = fadd nsz float %i.cn, %i.cl
  %i.cp = insertelement <4 x float> poison, float %.sink, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.ar, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.bo, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.cl, i64 3
  %i.ct = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fdiv nsz <4 x float> %i.cs, %i.cu
  store <4 x float> %i.cv, ptr %1, align 4, !tbaa !29
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @xyz_to_cube(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4) unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !29   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !29 ; 5 uses
  %i.d = tail call nsz float @llvm.atan2.f32(float %i.a, float %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !29 ; 3 uses
  %i.g = tail call nsz float @llvm.asin.f32(float %i.f) ; 2 uses
  %i.h = fpext nsz float %i.d to double           ; 9 uses
  %i.i = fcmp nsz oge double %i.h, f0xBFE921FB54442D18
  %i.j = fcmp nsz olt double %i.h, f0x3FE921FB54442D18
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %4, align 4, !tbaa !57
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp nsz oge double %i.h, f0xC002D97C7F3321D2
  %i.l = fcmp nsz olt double %i.h, f0xBFE921FB54442D18
  %or.cond70 = and i1 %i.k, %i.l
  br i1 %or.cond70, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4, !tbaa !57
  %i.m = fadd nsz double %i.h, f0x3FF921FB54442D18
  %i.n = fptrunc nsz double %i.m to float
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = fcmp nsz oge double %i.h, f0x3FE921FB54442D18
  %i.p = fcmp nsz olt double %i.h, f0x4002D97C7F3321D2
  %or.cond71 = and i1 %i.o, %i.p
  br i1 %or.cond71, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !57
  %i.q = fadd nsz double %i.h, f0xBFF921FB54442D18
  %i.r = fptrunc nsz double %i.q to float
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 5, ptr %4, align 4, !tbaa !57
  %i.s = fcmp nsz ogt float %i.d, 0.000000e+00
  %i.t = select nsz i1 %i.s, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %i.u = fadd nsz double %i.t, %i.h
  %i.v = fptrunc nsz double %i.u to float
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.pr = phi i32 [ 4, %bb.b ], [ 1, %bb.d ], [ 0, %bb.f ], [ 5, %bb.g ]
  %.0 = phi nsz float [ %i.d, %bb.b ], [ %i.n, %bb.d ], [ %i.r, %bb.f ], [ %i.v, %bb.g ]
  %i.w = tail call nsz float @llvm.cos.f32(float %.0)
  %i.x = tail call nsz float @llvm.atan.f32(float %i.w) ; 2 uses
  %i.y = fcmp nsz ogt float %i.g, %i.x
  br i1 %i.y, label %.thread72, label %bb.i

.thread72:                                        ; preds = %bb.h
  store i32 3, ptr %4, align 4, !tbaa !57
  %i.z = fdiv nsz float %i.a, %i.f
  store float %i.z, ptr %2, align 4, !tbaa !29
  %i.aa = load float, ptr %i.b, align 4, !tbaa !29
  %i.ab = fneg nsz float %i.aa
  %i.ac = load float, ptr %i.e, align 4, !tbaa !29
  %i.ad = fdiv nsz float %i.ab, %i.ac
  br label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ae = fneg nsz float %i.x
  %i.af = fcmp nsz olt float %i.g, %i.ae
  br i1 %i.af, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  store i32 2, ptr %4, align 4, !tbaa !57
  %i.ag = fneg nsz float %i.a
  %i.ah = fdiv nsz float %i.ag, %i.f
  store float %i.ah, ptr %2, align 4, !tbaa !29
  %i.ai = load float, ptr %i.b, align 4, !tbaa !29
  %i.aj = fneg nsz float %i.ai
  %i.ak = load float, ptr %i.e, align 4, !tbaa !29
  %i.al = fdiv nsz float %i.aj, %i.ak
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  switch i32 %.pr, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 5, label %bb.n
    i32 4, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.am = fneg nsz float %i.c
  %i.an = fdiv nsz float %i.am, %i.a
  store float %i.an, ptr %2, align 4, !tbaa !29
  %i.ao = load float, ptr %i.e, align 4, !tbaa !29
  %i.ap = load float, ptr %1, align 4, !tbaa !29
  %i.aq = fdiv nsz float %i.ao, %i.ap
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ar = fneg nsz float %i.c
  %i.as = fdiv nsz float %i.ar, %i.a
  store float %i.as, ptr %2, align 4, !tbaa !29
  %i.at = load float, ptr %i.e, align 4, !tbaa !29
  %i.au = fneg nsz float %i.at
  %i.av = load float, ptr %1, align 4, !tbaa !29
  %i.aw = fdiv nsz float %i.au, %i.av
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ax = fdiv nsz float %i.a, %i.c
  store float %i.ax, ptr %2, align 4, !tbaa !29
  %i.ay = load float, ptr %i.e, align 4, !tbaa !29
  %i.az = load float, ptr %i.b, align 4, !tbaa !29
  %i.ba = fdiv nsz float %i.ay, %i.az
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bb = fdiv nsz float %i.a, %i.c
  store float %i.bb, ptr %2, align 4, !tbaa !29
  %i.bc = load float, ptr %i.e, align 4, !tbaa !29
  %i.bd = fneg nsz float %i.bc
  %i.be = load float, ptr %i.b, align 4, !tbaa !29
  %i.bf = fdiv nsz float %i.bd, %i.be
  br label %bb.o

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.m, %.thread72, %.thread, %bb.l, %bb.k
  %.sink = phi float [ %i.bf, %bb.n ], [ %i.ba, %bb.m ], [ %i.ad, %.thread72 ], [ %i.al, %.thread ], [ %i.aw, %bb.l ], [ %i.aq, %bb.k ] ; 3 uses
  %i.bg = phi i64 [ 5, %bb.n ], [ 4, %bb.m ], [ 3, %.thread72 ], [ 2, %.thread ], [ 1, %bb.l ], [ 0, %bb.k ]
  store float %.sink, ptr %3, align 4, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !57
  switch i32 %i.bn, label %bb.s [
    i32 0, label %rotate_cube_face.exit
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bo = load float, ptr %2, align 4, !tbaa !29
  %i.bp = fneg nsz float %.sink
end_hunk_0
