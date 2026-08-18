inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ar, float %i.bv)
  %i.ca = fmul float %i.ak, %i.bw
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bp, float %i.bz)
  %i.cc = load float, ptr %i.c, align 4           ; 3 uses
  %i.cd = fmul float %i.bm, %i.cc                 ; 2 uses
  %i.ce = fmul float %i.cd, %i.bj
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.an, float %i.cb)
  %i.cg = fmul float %i.ao, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ar, float %i.cf)
  %i.ci = load float, ptr %i.o, align 4           ; 3 uses
  %i.cj = fmul float %i.bf, %i.ci                 ; 2 uses
  %i.ck = fmul float %i.bt, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.az, float %i.ch)
  %i.cm = fmul float %i.cj, %i.bc
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.bp, float %i.cl)
  %i.co = fmul float %i.cc, %i.ci                 ; 2 uses
  %i.cp = fmul float %i.bb, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.an, float %i.cn)
  %i.cr = fmul float %i.co, %i.bq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.az, float %i.cq)
  %i.ct = fmul float %i.ai, %i.ci                 ; 2 uses
  %i.cu = fmul float %i.ao, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.bp, float %i.cs)
  %i.cw = fmul float %i.ct, %i.bx
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.an, float %i.cv)
  %i.cy = load float, ptr %i.a, align 4           ; 3 uses
  %i.cz = fmul float %i.cc, %i.cy                 ; 2 uses
  %i.da = fmul float %i.cz, %i.bc
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.ar, float %i.cx)
  %i.dc = fmul float %i.ak, %i.cz
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.az, float %i.db)
  %i.de = fmul float %i.ai, %i.cy                 ; 2 uses
  %i.df = fmul float %i.de, %i.bj
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.bp, float %i.dd)
  %i.dh = fmul float %i.bt, %i.de
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ar, float %i.dg)
  %i.dj = fmul float %i.av, %i.cy                 ; 2 uses
  %i.dk = fmul float %i.dj, %i.bx
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.az, float %i.di)
  %i.dm = fmul float %i.bb, %i.dj
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.bp, float %i.dl)
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dp = insertelement <2 x float> %i.ac, float %.pre, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dq = fneg <2 x float> %i.ac                  ; 2 uses
  %i.dr = fneg float %sqrt.i49                    ; 2 uses
  store <2 x float> %i.dq, ptr %1, align 4
  store float %i.dr, ptr %i.ag, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ds = phi float [ %sqrt.i49, %._crit_edge ], [ %i.dr, %bb.b ] ; 2 uses
  %i.dt = phi <2 x float> [ %i.dp, %._crit_edge ], [ %i.dq, %bb.b ] ; 2 uses
  %i.du = fcmp une <2 x float> %i.dt, zeroinitializer ; 3 uses
  %i.dv = fdiv <2 x float> splat (float 1.000000e+00), %i.dt ; 3 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = fmul float %i.k, %i.dw
  %i.dy = extractelement <2 x i1> %i.du, i64 0
  %.sroa.12.0 = select i1 %i.dy, float %i.dx, float %i.k
  %i.dz = fneg float %.sroa.12.0
  %i.ea = tail call noundef float @asinf(float noundef %i.dz) #47 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ea, ptr %i.eb, align 4
  %i.ec = tail call noundef float @cosf(float noundef %i.ea) #47 ; 2 uses
  %i.ed = tail call noundef float @llvm.fabs.f32(float %i.ec)
  %i.ee = fcmp ogt float %i.ed, f0x34000000
  br i1 %i.ee, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ef = fcmp une float %i.ds, 0.000000e+00
  %i.eg = fdiv float 1.000000e+00, %i.ds
  %i.eh = shufflevector <2 x float> %i.t, <2 x float> %i.v, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %i.ei = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.ek = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float %i.eg, i64 2
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.en = fmul <4 x float> %i.ej, %i.em
  %i.eo = shufflevector <2 x i1> %i.du, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ep = insertelement <4 x i1> %i.eo, i1 %i.ef, i64 2
  %i.eq = shufflevector <4 x i1> %i.ep, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.er = select <4 x i1> %i.eq, <4 x float> %i.en, <4 x float> %i.ej
  %i.es = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fdiv <4 x float> %i.er, %i.et           ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 0
  %i.ew = extractelement <4 x float> %i.eu, i64 2
  %i.ex = tail call noundef float @atan2f(float noundef %i.ev, float noundef %i.ew) #47
  store float %i.ex, ptr %2, align 4
  %i.ey = extractelement <4 x float> %i.eu, i64 1
  %i.ez = extractelement <4 x float> %i.eu, i64 3
  %i.fa = tail call noundef float @atan2f(float noundef %i.ey, float noundef %i.ez) #47
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fb = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fc = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x i1> %i.du, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> %i.fb ; 2 uses
  store float 0.000000e+00, ptr %2, align 4
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = fneg float %i.fg
  %i.fi = extractelement <2 x float> %i.ff, i64 1
  %i.fj = tail call noundef float @atan2f(float noundef %i.fh, float noundef %i.fi) #47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.fa, %bb.d ], [ %i.fj, %bb.e ]
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink, ptr %i.fk, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4DecomposeIntoScalingAxisAnglePosition(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef nonnull %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 16
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.f = call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = load float, ptr %i.b, align 4            ; 4 uses
  %i.h = call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f)
  %i.i = load float, ptr %5, align 16             ; 4 uses
  %i.j = call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.h) ; 2 uses
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.j)
  %i.l = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.c, %i.n
  %i.p = fmul float %i.g, %i.l
  %i.q = fmul float %i.i, %i.l
  br label %_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit

_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_RfS3_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi float [ %i.g, %bb.a ], [ %i.p, %bb.b ]
  %i.s = phi float [ %i.i, %bb.a ], [ %i.q, %bb.b ] ; 3 uses
  %i.t = phi <2 x float> [ %i.c, %bb.a ], [ %i.o, %bb.b ]
  %i.u = fneg float %i.s
  %i.v = call float @llvm.fmuladd.f32(float %i.u, float %i.s, float 1.000000e+00)
  %i.w = call noundef float @sqrtf(float noundef %i.v) #47 ; 2 uses
  %i.x = call noundef float @acosf(float noundef %i.s) #47
  %i.y = fmul float %i.x, 2.000000e+00
  store float %i.y, ptr %3, align 4
  %i.z = call noundef float @llvm.fabs.f32(float %i.w)
  %i.aa = fcmp olt float %i.z, f0x3C23D70A
  %.0.i = select i1 %i.aa, float 1.000000e+00, float %i.w ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x float> %i.t, %i.ac
  store <2 x float> %i.ad, ptr %2, align 4
  %i.ae = fdiv float %i.r, %.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ae, ptr %i.af, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiMatrix4DecomposeNoScaling(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = load float, ptr %0, align 4              ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.c, align 4            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load float, ptr %i.n, align 4            ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4            ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %3 = load <2 x float>, ptr %i.l, align 4        ; 7 uses
  %i.s = load float, ptr %i.r, align 4            ; 4 uses
  %i.t = load float, ptr %i.g, align 4            ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load float, ptr %i.u, align 4            ; 6 uses
  %i.w = fadd float %i.k, %i.o
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = fadd float %i.x, 1.000000e+00
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #47
  %4 = extractelement <2 x float> %3, i64 0
  %i.ab = fsub float %i.m, %4
  %.scalar = fmul float %i.aa, 2.000000e+00
  %i.ac = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %5 = extractelement <2 x float> %3, i64 1
  %i.ae = fsub float %5, %i.t
  %i.af = fsub float %i.s, %i.q
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %i.ag, float %i.af, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ab, i64 3 ; 2 uses
  %i.ak = fmul <4 x float> %i.aj, %i.ad
  %i.al = fdiv <4 x float> %i.aj, %i.ad
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.c:                                             ; preds = %bb.a
  %i.an = fcmp ogt float %i.k, %i.o
  %i.ao = fcmp ogt float %i.k, %i.v
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = fadd float %i.k, 1.000000e+00
  %i.aq = fsub float %i.ap, %i.o
  %i.ar = fsub float %i.aq, %i.v
  %i.as = tail call noundef float @sqrtf(float noundef %i.ar) #47
  %.scalar34 = fmul float %i.as, 2.000000e+00
  %i.at = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar34, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %6 = insertelement <2 x float> poison, float %i.m, i64 0
  %7 = insertelement <2 x float> %6, float %i.t, i64 1
  %8 = fadd <2 x float> %3, %7
  %i.av = fsub float %i.s, %i.q
  %i.aw = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x float> %i.ax, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ay = fdiv <4 x float> %10, %i.au
  %i.az = fmul <4 x float> %10, %i.au
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.bb = fcmp ogt float %i.o, %i.v
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = fadd float %i.o, 1.000000e+00
  %i.bd = fsub float %i.bc, %i.k
  %i.be = fsub float %i.bd, %i.v
  %i.bf = tail call noundef float @sqrtf(float noundef %i.be) #47
  %i.bg = fmul float %i.bf, 2.000000e+00
  %11 = insertelement <2 x float> %3, float %i.q, i64 1
  %12 = insertelement <2 x float> poison, float %i.m, i64 0
  %13 = insertelement <2 x float> %12, float %i.s, i64 1
  %14 = fadd <2 x float> %11, %13
  %15 = extractelement <2 x float> %3, i64 1
  %i.bh = fsub float %15, %i.t
  %i.bi = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.bh, i64 0
  %16 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %17 = shufflevector <4 x float> %i.bi, <4 x float> %16, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.bj = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bl = fdiv <4 x float> %17, %i.bk
  %i.bm = fmul <4 x float> %17, %i.bk
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.bo = fadd float %i.v, 1.000000e+00
  %i.bp = fsub float %i.bo, %i.k
  %i.bq = fsub float %i.bp, %i.o
  %i.br = tail call noundef float @sqrtf(float noundef %i.bq) #47
  %i.bs = fmul float %i.br, 2.000000e+00
  %18 = extractelement <2 x float> %3, i64 1
  %i.bt = fadd float %18, %i.t
  %i.bu = fadd float %i.q, %i.s
  %19 = extractelement <2 x float> %3, i64 0
  %i.bv = fsub float %i.m, %19
  %i.bw = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.bv, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2 ; 2 uses
  %i.bz = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fdiv <4 x float> %i.by, %i.ca
  %i.cc = fmul <4 x float> %i.by, %i.ca
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.ce = phi <4 x float> [ %i.am, %bb.b ], [ %i.ba, %bb.d ], [ %i.bn, %bb.f ], [ %i.cd, %bb.g ]
  store <4 x float> %i.ce, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4FromEulerAngles(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #47 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #47 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #47 ; 4 uses
  %i.g = fmul float %i.c, %i.e
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.a, i64 1
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 1
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = insertelement <2 x float> poison, float %i.h, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.f, i64 1
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o)
  store <2 x float> %i.t, ptr %i.j, align 4
  %i.u = fmul float %i.c, %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.u, ptr %i.v, align 4
  %i.w = fmul float %i.d, %i.f                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = fneg float %i.b
  %i.z = insertelement <2 x float> %i.r, float %i.e, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.w, i64 1
  %i.af = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ag, <2 x float> %i.ac)
  store <2 x float> %i.ah, ptr %i.x, align 4
  %i.ai = fneg float %i.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = fmul float %i.b, %i.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ak, ptr %i.al, align 4
  %i.am = fmul float %i.a, %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.am, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationX(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 0, ptr %i.a, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.6.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationY(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.a = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.a, ptr %.sroa.7.0..sroa_idx.i, align 4
  store float %i.a, ptr %0, align 4
  %i.b = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.b, ptr %i.c, align 4
  %i.d = fneg float %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @aiMatrix4RotationZ(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, float noundef %1) local_unnamed_addr #19 {
bb.a:
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.b = tail call noundef float @cosf(float noundef %1) #47 ; 2 uses
  store float %i.b, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.b, ptr %0, align 4
  %i.c = tail call noundef float @sinf(float noundef %1) #47 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.c, ptr %i.d, align 4
  %i.e = fneg float %i.c
  store float %i.e, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @aiMatrix4FromRotationAroundAxis(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %2) #47 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %2) #47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4            ; 5 uses
  %i.f = fmul float %i.b, %i.e                    ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.scalar = fsub float 1.000000e+00, %i.a        ; 2 uses
  %i.l = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.n = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.o = load float, ptr %i.c, align 4
  %i.p = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 1>
  %i.r = fmul <4 x float> %i.q, %i.m              ; 3 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> %i.n, float %i.o, i64 1 ; 2 uses
  %i.u = insertelement <2 x float> poison, float %i.a, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.g, i64 1
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.t, <2 x float> %i.v)
  store <2 x float> %i.w, ptr %0, align 4
  %i.x = shufflevector <4 x float> %i.p, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 1, i32 1>
  %i.y = insertelement <4 x float> %i.x, float %i.e, i64 0
  %i.z = insertelement <2 x float> poison, float %i.b, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.t            ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ad = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.ac, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.ae = insertelement <4 x float> %i.ad, float %i.f, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.a, i64 3
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.y, <4 x float> %i.af)
  %i.ah = fneg <2 x float> %i.ab
  %i.ai = fmul float %.scalar, %i.e
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.e, float %i.a)
  store float %i.aj, ptr %i.j, align 4
  %i.ak = shufflevector <4 x float> %i.r, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 0, i32 3>
  %i.al = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.e, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ao = insertelement <4 x float> %i.an, float 0.000000e+00, i64 1
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.am, <4 x float> %i.ap)
  store <4 x float> %i.aq, ptr %i.i, align 4
  store <4 x float> %i.ag, ptr %i.h, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
end_hunk_0
