Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE:bb.a
  %i.ff = load float, ptr %i.cw, align 4, !tbaa !20 ; 2 uses
  %i.fg = fmul float %i.ab, %i.ff
  %i.fh = fadd float %i.fe, %i.fg
  %i.fi = fmul float %i.ab, %i.fd
  %i.fj = fmul float %.sroa.064.0.vec.extract, %i.ff
  %i.fk = fsub float %i.fi, %i.fj
  %i.fl = tail call float @llvm.fabs.f32(float %i.fk)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !20
  %i.fo = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.fl, float noundef %.sroa.059.0.vec.extract, float noundef %i.fh, float noundef %i.fn)
  %i.fp = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fmul <2 x float> %i.fq, %i.ce
  %i.fs = fmul <2 x float> %i.fq, %i.cf
  %i.ft = load float, ptr %i.da, align 4, !tbaa !85 ; 3 uses
  %i.fu = fmul float %i.aj, 2.000000e+00
  %i.fv = fsub float %i.fu, %i.db
  %i.fw = fadd float %i.fv, f0x40490FDB
  %i.fx = fsub float %i.r, %i.fw                  ; 3 uses
  %i.fy = fcmp ogt float %i.fx, f0x40490FDB
  br i1 %i.fy, label %.lr.ph.i.1, label %.preheader.i.1

.lr.ph.i.1:                                       ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit, %.lr.ph.i.1
  %.09.i.1 = phi float [ %i.fz, %.lr.ph.i.1 ], [ %i.fx, %_ZN4pbrt8HairBxDF2NpEfifff.exit ]
  %i.fz = fadd float %.09.i.1, f0xC0C90FDB        ; 3 uses
  %i.ga = fcmp ogt float %i.fz, f0x40490FDB
  br i1 %i.ga, label %.lr.ph.i.1, label %.preheader.i.1, !llvm.loop !0

.preheader.i.1:                                   ; preds = %.lr.ph.i.1, %_ZN4pbrt8HairBxDF2NpEfifff.exit
  %.0.lcssa.i.1 = phi float [ %i.fx, %_ZN4pbrt8HairBxDF2NpEfifff.exit ], [ %i.fz, %.lr.ph.i.1 ] ; 3 uses
  %i.gb = fcmp olt float %.0.lcssa.i.1, f0xC0490FDB
  br i1 %i.gb, label %.lr.ph11.i.1, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.1

.lr.ph11.i.1:                                     ; preds = %.preheader.i.1, %.lr.ph11.i.1
  %.110.i.1 = phi float [ %i.gc, %.lr.ph11.i.1 ], [ %.0.lcssa.i.1, %.preheader.i.1 ]
  %i.gc = fadd float %.110.i.1, f0x40C90FDB       ; 3 uses
  %i.gd = fcmp olt float %i.gc, f0xC0490FDB
  br i1 %i.gd, label %.lr.ph11.i.1, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.1, !llvm.loop !1

_ZN4pbrt8HairBxDF2NpEfifff.exit.1:                ; preds = %.lr.ph11.i.1, %.preheader.i.1
  %.1.lcssa.i.1 = phi float [ %.0.lcssa.i.1, %.preheader.i.1 ], [ %i.gc, %.lr.ph11.i.1 ]
  %i.ge = tail call noundef float @llvm.fabs.f32(float %.1.lcssa.i.1)
  %i.gf = fneg float %i.ge
  %i.gg = fdiv float %i.gf, %i.ft
  %i.gh = tail call noundef float @expf(float noundef %i.gg) #31 ; 2 uses
  %i.gi = fadd float %i.gh, 1.000000e+00          ; 2 uses
  %i.gj = fmul float %i.gi, %i.gi
  %i.gk = fmul float %i.ft, %i.gj
  %i.gl = fdiv float %i.gh, %i.gk
  %i.gm = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fdiv <2 x float> <float f0xC0490FDB, float f0x40490FDB>, %i.gn ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0
  %i.gq = tail call noundef float @expf(float noundef %i.gp) #31
  %i.gr = extractelement <2 x float> %i.go, i64 1
  %i.gs = tail call noundef float @expf(float noundef %i.gr) #31
  %i.gt = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gs, i64 1
  %i.gv = fadd <2 x float> %i.gu, splat (float 1.000000e+00)
  %i.gw = fdiv <2 x float> splat (float 1.000000e+00), %i.gv ; 2 uses
  %shift212.1 = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop213.1 = fsub <2 x float> %i.gw, %shift212.1
  %i.gx = extractelement <2 x float> %foldExtExtBinop213.1, i64 0
  %i.gy = fdiv float %i.gl, %i.gx
  %i.gz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = fmul <2 x float> %i.fr, %i.ha
  %i.hc = fadd <2 x float> %i.fa, %i.hb
  %i.hd = fmul <2 x float> %i.fs, %i.ha
  %i.he = fadd <2 x float> %i.fc, %i.hd
  %i.hf = load float, ptr %i.ct, align 4, !tbaa !20 ; 2 uses
  %i.hg = fmul float %.sroa.064.0.vec.extract, %i.hf
  %i.hh = load float, ptr %i.cu, align 4, !tbaa !20 ; 2 uses
  %i.hi = fmul float %i.ab, %i.hh
  %i.hj = fadd float %i.hg, %i.hi
  %i.hk = fmul float %i.ab, %i.hf
  %i.hl = fmul float %.sroa.064.0.vec.extract, %i.hh
  %i.hm = fsub float %i.hk, %i.hl
  %i.hn = tail call float @llvm.fabs.f32(float %i.hm)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !20
  %i.hq = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.hn, float noundef %.sroa.059.0.vec.extract, float noundef %i.hj, float noundef %i.hp)
  %i.hr = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.ci
  %i.hu = fmul <2 x float> %i.hs, %i.cj
  %i.hv = load float, ptr %i.da, align 4, !tbaa !85 ; 3 uses
  %i.hw = fmul float %i.aj, 4.000000e+00
  %i.hx = fsub float %i.hw, %i.db
  %i.hy = fadd float %i.hx, f0x40C90FDB
  %i.hz = fsub float %i.r, %i.hy                  ; 3 uses
  %i.ia = fcmp ogt float %i.hz, f0x40490FDB
  br i1 %i.ia, label %.lr.ph.i.2, label %.preheader.i.2

.lr.ph.i.2:                                       ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit.1, %.lr.ph.i.2
  %.09.i.2 = phi float [ %i.ib, %.lr.ph.i.2 ], [ %i.hz, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1 ]
  %i.ib = fadd float %.09.i.2, f0xC0C90FDB        ; 3 uses
  %i.ic = fcmp ogt float %i.ib, f0x40490FDB
  br i1 %i.ic, label %.lr.ph.i.2, label %.preheader.i.2, !llvm.loop !0

.preheader.i.2:                                   ; preds = %.lr.ph.i.2, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1
  %.0.lcssa.i.2 = phi float [ %i.hz, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1 ], [ %i.ib, %.lr.ph.i.2 ] ; 3 uses
  %i.id = fcmp olt float %.0.lcssa.i.2, f0xC0490FDB
  br i1 %i.id, label %.lr.ph11.i.2, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.2

.lr.ph11.i.2:                                     ; preds = %.preheader.i.2, %.lr.ph11.i.2
  %.110.i.2 = phi float [ %i.ie, %.lr.ph11.i.2 ], [ %.0.lcssa.i.2, %.preheader.i.2 ]
  %i.ie = fadd float %.110.i.2, f0x40C90FDB       ; 3 uses
  %i.if = fcmp olt float %i.ie, f0xC0490FDB
  br i1 %i.if, label %.lr.ph11.i.2, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.2, !llvm.loop !1

_ZN4pbrt8HairBxDF2NpEfifff.exit.2:                ; preds = %.lr.ph11.i.2, %.preheader.i.2
  %.1.lcssa.i.2 = phi float [ %.0.lcssa.i.2, %.preheader.i.2 ], [ %i.ie, %.lr.ph11.i.2 ]
  %i.ig = tail call noundef float @llvm.fabs.f32(float %.1.lcssa.i.2)
  %i.ih = fneg float %i.ig
  %i.ii = fdiv float %i.ih, %i.hv
  %i.ij = tail call noundef float @expf(float noundef %i.ii) #31 ; 2 uses
  %i.ik = fadd float %i.ij, 1.000000e+00          ; 2 uses
  %i.il = fmul float %i.ik, %i.ik
  %i.im = fmul float %i.hv, %i.il
  %i.in = fdiv float %i.ij, %i.im
  %i.io = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = fdiv <2 x float> <float f0xC0490FDB, float f0x40490FDB>, %i.ip ; 2 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 0
  %i.is = tail call noundef float @expf(float noundef %i.ir) #31
  %i.it = extractelement <2 x float> %i.iq, i64 1
  %i.iu = tail call noundef float @expf(float noundef %i.it) #31
  %i.iv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iw = insertelement <2 x float> %i.iv, float %i.iu, i64 1
  %i.ix = fadd <2 x float> %i.iw, splat (float 1.000000e+00)
  %i.iy = fdiv <2 x float> splat (float 1.000000e+00), %i.ix ; 2 uses
  %shift212.2 = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop213.2 = fsub <2 x float> %i.iy, %shift212.2
  %i.iz = extractelement <2 x float> %foldExtExtBinop213.2, i64 0
  %i.ja = fdiv float %i.in, %i.iz
  %i.jb = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jd = fmul <2 x float> %i.ht, %i.jc
  %i.je = fadd <2 x float> %i.hc, %i.jd
  %i.jf = fmul <2 x float> %i.hu, %i.jc
  %i.jg = fadd <2 x float> %i.he, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !20
  %i.jj = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.ab, float noundef %.sroa.059.0.vec.extract, float noundef %.sroa.064.0.vec.extract, float noundef %i.ji)
  %i.jk = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jm = fmul <2 x float> %i.jl, %.sroa.0.0.copyload.i.i
  %i.jn = fdiv <2 x float> %i.jm, splat (float f0x40C90FDB)
  %i.jo = fadd <2 x float> %i.je, %i.jn           ; 2 uses
  %i.jp = fmul <2 x float> %i.jl, %.sroa.6.0.copyload.i.i
  %i.jq = fdiv <2 x float> %i.jp, splat (float f0x40C90FDB)
  %i.jr = fadd <2 x float> %i.jg, %i.jq           ; 2 uses
  %i.js = fcmp ueq float %4, 0.000000e+00
  br i1 %i.js, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit.2
  %i.jt = tail call noundef float @llvm.fabs.f32(float %4)
  %i.ju = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jw = fdiv <2 x float> %i.jo, %i.jv
  %i.jx = fdiv <2 x float> %i.jr, %i.jv
  br label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit.2, %bb.c
  %.sroa.0132.1 = phi <2 x float> [ %i.jw, %bb.c ], [ %i.jo, %_ZN4pbrt8HairBxDF2NpEfifff.exit.2 ]
  %.sroa.15.1 = phi <2 x float> [ %i.jx, %bb.c ], [ %i.jr, %_ZN4pbrt8HairBxDF2NpEfifff.exit.2 ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0132.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.15.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = fmul float %0, %1
  %i.b = fdiv float %i.a, %4                      ; 8 uses
  %i.c = fmul float %2, %3
  %i.d = fdiv float %i.c, %4                      ; 2 uses
  %i.e = fpext float %4 to double
  %i.f = fcmp ugt double %i.e, 1.000000e-01
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp ogt float %i.b, 1.200000e+01
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fdiv float 1.000000e+00, %i.b
  %i.i = tail call noundef float @logf(float noundef %i.h) #31
  %i.j = fadd float %i.i, f0xBFEB3F8E
  %i.k = fmul nnan float %i.b, 8.000000e+00
  %i.l = fdiv nnan float 1.000000e+00, %i.k
  %i.m = fadd float %i.l, %i.j
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = fadd float %i.b, %i.n
  br label %_ZN4pbrt5LogI0Ef.exit

bb.d:                                             ; preds = %bb.b
  %i.p = fmul float %i.b, %i.b                    ; 10 uses
  %i.q = fmul float %i.p, %i.p                    ; 2 uses
  %i.r = fmul float %i.q, 1.562500e-02
  %i.s = fmul float %i.p, %i.q                    ; 2 uses
  %i.t = fmul float %i.p, %i.s                    ; 2 uses
  %5 = fmul float %i.p, %i.t                      ; 2 uses
  %i.u = fmul float %i.p, %5                      ; 2 uses
  %6 = fmul float %i.p, %i.u                      ; 2 uses
  %i.v = fmul float %i.p, %6                      ; 2 uses
  %7 = fmul float %i.p, %i.v
  %i.w = fmul float %i.p, 2.500000e-01
  %8 = fadd float %i.w, 1.000000e+00
  %9 = fadd float %8, %i.r
  %10 = insertelement <8 x float> poison, float %i.s, i64 0
  %11 = insertelement <8 x float> %10, float %i.t, i64 1
  %12 = insertelement <8 x float> %11, float %5, i64 2
  %13 = insertelement <8 x float> %12, float %i.u, i64 3
  %14 = insertelement <8 x float> %13, float %6, i64 4
  %15 = insertelement <8 x float> %14, float %i.v, i64 5
  %16 = insertelement <8 x float> %15, float %7, i64 6
  %17 = fdiv <8 x float> %16, <float 2.304000e+03, float 1.474560e+05, float 1.474560e+07, float f0x4EFD2000, float f0x52C1CC80, float f0x56C1CC80, float f0x5AF546D2, float poison> ; 7 uses
  %18 = extractelement <8 x float> %17, i64 0
  %19 = fadd float %9, %18
  %20 = extractelement <8 x float> %17, i64 1
  %i.x = fadd float %19, %20
  %21 = extractelement <8 x float> %17, i64 2
  %i.y = fadd float %i.x, %21
  %22 = extractelement <8 x float> %17, i64 3
  %i.z = fadd float %i.y, %22
  %23 = extractelement <8 x float> %17, i64 4
  %i.aa = fadd float %i.z, %23
  %24 = extractelement <8 x float> %17, i64 5
  %i.ab = fadd float %i.aa, %24
  %25 = extractelement <8 x float> %17, i64 6
  %26 = fadd float %i.ab, %25
  %i.ac = tail call noundef float @logf(float noundef %26) #31
  br label %_ZN4pbrt5LogI0Ef.exit

_ZN4pbrt5LogI0Ef.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.o, %bb.c ], [ %i.ac, %bb.d ]
  %i.ad = fsub float %.0.i, %i.d
  %i.ae = fdiv float 1.000000e+00, %4
  %i.af = fsub float %i.ad, %i.ae
  %i.ag = fadd float %i.af, 6.931000e-01
  %i.ah = fmul float %4, 2.000000e+00
  %i.ai = fdiv float 1.000000e+00, %i.ah
  %i.aj = tail call noundef float @logf(float noundef %i.ai) #31
  %i.ak = fadd float %i.aj, %i.ag
  %i.al = fmul float %i.ak, f0x3FB8AA3B           ; 2 uses
  %i.am = tail call noundef float @llvm.floor.f32(float %i.al) ; 2 uses
  %i.an = fsub float %i.al, %i.am                 ; 3 uses
  %i.ao = fptosi float %i.am to i32
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.an, float f0x3DA00AC9, float f0x3E679A0B)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.an, float %i.ap, float f0x3F321004)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.an, float %i.aq, float 1.000000e+00)
  %i.as = bitcast float %i.ar to i32              ; 2 uses
  %i.at = lshr i32 %i.as, 23
  %i.au = add i32 %i.ao, -127
  %i.av = add i32 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp slt i32 %i.av, -126
  br i1 %i.aw, label %_ZN4pbrt7FastExpEf.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt5LogI0Ef.exit
  %i.ax = icmp sgt i32 %i.av, 127
  br i1 %i.ax, label %_ZN4pbrt7FastExpEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = and i32 %i.as, -2139095041
  %i.az = shl nsw i32 %i.av, 23
  %i.ba = add nsw i32 %i.az, 1065353216
  %i.bb = or i32 %i.ba, %i.ay
  %i.bc = bitcast i32 %i.bb to float
  br label %_ZN4pbrt7FastExpEf.exit

bb.g:                                             ; preds = %bb.a
  %i.bd = fmul float %i.d, f0xBFB8AA3B            ; 2 uses
  %i.be = tail call noundef float @llvm.floor.f32(float %i.bd) ; 2 uses
  %i.bf = fsub float %i.bd, %i.be                 ; 3 uses
  %i.bg = fptosi float %i.be to i32
  %i.bh = tail call noundef float @llvm.fma.f32(float %i.bf, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bf, float %i.bh, float f0x3F321004)
  %i.bj = tail call noundef float @llvm.fma.f32(float %i.bf, float %i.bi, float 1.000000e+00)
  %i.bk = bitcast float %i.bj to i32              ; 2 uses
  %i.bl = lshr i32 %i.bk, 23
  %i.bm = add i32 %i.bg, -127
  %i.bn = add i32 %i.bm, %i.bl                    ; 3 uses
  %i.bo = icmp slt i32 %i.bn, -126
  br i1 %i.bo, label %_ZN4pbrt7FastExpEf.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp sgt i32 %i.bn, 127
  br i1 %i.bp, label %_ZN4pbrt7FastExpEf.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = and i32 %i.bk, -2139095041
  %i.br = shl nsw i32 %i.bn, 23
  %i.bs = add nsw i32 %i.br, 1065353216
  %i.bt = or i32 %i.bs, %i.bq
  %i.bu = bitcast i32 %i.bt to float
  br label %_ZN4pbrt7FastExpEf.exit18

_ZN4pbrt7FastExpEf.exit18:                        ; preds = %bb.g, %bb.h, %bb.i
  %.0.i17 = phi float [ %i.bu, %bb.i ], [ 0.000000e+00, %bb.g ], [ +inf, %bb.h ]
  %i.bv = fmul float %i.b, %i.b                   ; 10 uses
  %i.bw = fmul float %i.bv, %i.bv                 ; 2 uses
  %i.bx = fmul float %i.bw, 1.562500e-02
  %i.by = fmul float %i.bv, %i.bw                 ; 2 uses
  %i.bz = fmul float %i.bv, %i.by                 ; 2 uses
  %27 = fmul float %i.bv, %i.bz                   ; 2 uses
  %i.ca = fmul float %i.bv, %27                   ; 2 uses
  %28 = fmul float %i.bv, %i.ca                   ; 2 uses
  %i.cb = fmul float %i.bv, %28                   ; 2 uses
  %29 = fmul float %i.bv, %i.cb
  %i.cc = fmul float %i.bv, 2.500000e-01
  %30 = fadd float %i.cc, 1.000000e+00
  %31 = fadd float %30, %i.bx
  %32 = insertelement <8 x float> poison, float %i.by, i64 0
  %33 = insertelement <8 x float> %32, float %i.bz, i64 1
  %34 = insertelement <8 x float> %33, float %27, i64 2
  %35 = insertelement <8 x float> %34, float %i.ca, i64 3
  %36 = insertelement <8 x float> %35, float %28, i64 4
  %37 = insertelement <8 x float> %36, float %i.cb, i64 5
  %38 = insertelement <8 x float> %37, float %29, i64 6
  %39 = fdiv <8 x float> %38, <float 2.304000e+03, float 1.474560e+05, float 1.474560e+07, float f0x4EFD2000, float f0x52C1CC80, float f0x56C1CC80, float f0x5AF546D2, float poison> ; 7 uses
  %40 = extractelement <8 x float> %39, i64 0
  %41 = fadd float %31, %40
  %42 = extractelement <8 x float> %39, i64 1
  %i.cd = fadd float %41, %42
  %43 = extractelement <8 x float> %39, i64 2
  %i.ce = fadd float %i.cd, %43
  %44 = extractelement <8 x float> %39, i64 3
  %i.cf = fadd float %i.ce, %44
  %45 = extractelement <8 x float> %39, i64 4
  %i.cg = fadd float %i.cf, %45
  %46 = extractelement <8 x float> %39, i64 5
  %i.ch = fadd float %i.cg, %46
  %47 = extractelement <8 x float> %39, i64 6
  %48 = fadd float %i.ch, %47
  %i.ci = fmul float %48, %.0.i17
  %i.cj = fdiv float 1.000000e+00, %4
  %i.ck = tail call noundef float @sinhf(float noundef %i.cj) #31
  %i.cl = fmul float %i.ck, 2.000000e+00
  %i.cm = fmul float %4, %i.cl
  %i.cn = fdiv float %i.ci, %i.cm
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.f, %bb.e, %_ZN4pbrt5LogI0Ef.exit, %_ZN4pbrt7FastExpEf.exit18
  %i.co = phi float [ %i.cn, %_ZN4pbrt7FastExpEf.exit18 ], [ %i.bc, %bb.f ], [ 0.000000e+00, %_ZN4pbrt5LogI0Ef.exit ], [ +inf, %bb.e ]
  ret float %i.co
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF5ApPDFEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %0, float noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fmul float %1, %1
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !84 ; 5 uses
  %i.f = fdiv float %sqrt.i, %i.e                 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %.sroa.speculated.i27 = select i1 %i.i, float %i.h, float 0.000000e+00
  %sqrt.i28 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i27)
  %i.j = fmul float %i.e, %i.e
  %i.k = fmul float %sqrt.i, %sqrt.i
  %i.l = fsub float %i.j, %i.k                    ; 2 uses
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %.sroa.speculated.i29 = select i1 %i.m, float %i.l, float 0.000000e+00
  %sqrt.i30 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i29)
  %i.n = fdiv float %sqrt.i30, %1
  %i.o = load float, ptr %0, align 4, !tbaa !83   ; 3 uses
  %i.p = fdiv float %i.o, %i.n                    ; 5 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float 1.000000e+00, %i.q            ; 2 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  %.sroa.speculated.i31 = select i1 %i.s, float %i.r, float 0.000000e+00
  %sqrt.i32 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i31)
  %i.t = fcmp olt float %i.p, -1.000000e+00
  %i.u = fcmp ogt float %i.p, 1.000000e+00
  %..i.i = select i1 %i.u, float 1.000000e+00, float %i.p
  %.0.i.i = select i1 %i.t, float -1.000000e+00, float %..i.i ; 2 uses
  %i.v = fcmp olt float %.0.i.i, -1.000000e+00
  br i1 %i.v, label %cdce.call, label %cdce.end, !prof !70

cdce.call:                                        ; preds = %bb.a
  %i.w = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = fmul float %sqrt.i32, 2.000000e+00
  %i.z = fdiv float %i.y, %sqrt.i28
  %i.aa = load <4 x float>, ptr %i.x, align 4, !tbaa !20
  %i.ab = fneg <4 x float> %i.aa
  %i.ac = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x float> %i.ad, %i.ab           ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  %i.ag = tail call noundef float @expf(float noundef %i.af) #31
  %i.ah = extractelement <4 x float> %i.ae, i64 1
  %i.ai = tail call noundef float @expf(float noundef %i.ah) #31
  %i.aj = extractelement <4 x float> %i.ae, i64 2
  %i.ak = tail call noundef float @expf(float noundef %i.aj) #31
  %i.al = extractelement <4 x float> %i.ae, i64 3
  %i.am = tail call noundef float @expf(float noundef %i.al) #31
  %i.an = fmul float %i.o, %i.o
  %i.ao = fsub float 1.000000e+00, %i.an          ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ap, float %i.ao, float 0.000000e+00
  %sqrt.i.i = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.aq = fmul float %1, %sqrt.i.i                ; 3 uses
  %i.ar = fcmp olt float %i.aq, -1.000000e+00
  %i.as = fcmp ogt float %i.aq, 1.000000e+00
  %..i.i.i = select i1 %i.as, float 1.000000e+00, float %i.aq
  %.0.i.i.i = select i1 %i.ar, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.at = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.au = fdiv float 1.000000e+00, %i.e
  %i.av = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.at, float %i.au, float %i.e ; 4 uses
  %.024.i.i = select i1 %i.at, float %i.av, float %.0.i.i.i ; 5 uses
  %i.aw = fmul float %.024.i.i, %.024.i.i
  %i.ax = fsub float 1.000000e+00, %i.aw
  %i.ay = fmul float %.025.i.i, %.025.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.b:                                             ; preds = %cdce.end
  %i.bb = fsub float 1.000000e+00, %i.az          ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.bc, float %i.bb, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.bd = fmul float %.025.i.i, %.024.i.i         ; 2 uses
  %i.be = fsub float %i.bd, %sqrt.i.i.i
  %i.bf = fadd float %i.bd, %sqrt.i.i.i
  %i.bg = fdiv float %i.be, %i.bf                 ; 2 uses
  %i.bh = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bi = fsub float %.024.i.i, %i.bh
  %i.bj = fadd float %.024.i.i, %i.bh
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bg, %i.bg
  %i.bm = fmul float %i.bk, %i.bk
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fmul float %i.bn, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.b, %cdce.end
  %.0.i.i43 = phi float [ %i.bo, %bb.b ], [ 1.000000e+00, %cdce.end ] ; 6 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.i43      ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.ai, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.ak, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.am, i64 3 ; 4 uses
  %i.bv = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bu, %i.bw           ; 5 uses
  %i.by = fmul <4 x float> %i.bu, %i.bx
  %i.bz = insertelement <4 x float> poison, float %.0.i.i43, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <4 x float> %i.ca, %i.by           ; 5 uses
  %i.cc = fmul <4 x float> %i.bu, %i.ca
  %i.cd = fsub <4 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %i.ce = fcmp une <4 x float> %i.cd, zeroinitializer
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %.not = icmp eq i4 %i.cf, 0                     ; 2 uses
  %i.cg = fmul <4 x float> %i.ca, %i.cb
  %i.ch = fmul <4 x float> %i.bu, %i.cg
  %i.ci = fdiv <4 x float> %i.ch, %i.cd           ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.40.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.ck ; 2 uses
  %.sroa.34.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.cj ; 2 uses
  %i.cl = fadd float %.0.i.i43, %.0.i.i43
  %i.cm = fadd float %i.cl, %.0.i.i43
  %shift = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bx, %shift
  %shift82 = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop83 = fadd <4 x float> %foldExtExtBinop, %shift82
  %shift85 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop86 = fadd <4 x float> %i.cb, %shift85
  %shift88 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop89 = fadd <4 x float> %foldExtExtBinop86, %shift88
  %shift91 = shufflevector <2 x float> %.sroa.34.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop92 = fadd <2 x float> %.sroa.34.0, %shift91
  %foldExtExtBinop94 = fadd <2 x float> %foldExtExtBinop92, %.sroa.40.0
  %i.cn = shufflevector <2 x float> %foldExtExtBinop94, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.co = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %foldExtExtBinop83, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %foldExtExtBinop89, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cs = shufflevector <2 x float> %.sroa.40.0, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ct = insertelement <4 x float> %i.cs, float %.0.i.i43, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.cb, <4 x i32> <i32 0, i32 poison, i32 7, i32 3>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> %i.bx, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.cw = fadd <4 x float> %i.cr, %i.cv
  %i.cx = fmul <4 x float> %i.cw, splat (float 2.500000e-01) ; 5 uses
  %i.cy = extractelement <4 x float> %i.cx, i64 0
  %i.cz = fadd float %i.cy, 0.000000e+00
  %i.da = extractelement <4 x float> %i.cx, i64 1
  %i.db = fadd float %i.cz, %i.da
  %i.dc = extractelement <4 x float> %i.cx, i64 2
  %i.dd = fadd float %i.db, %i.dc
  %i.de = extractelement <4 x float> %i.cx, i64 3
  %i.df = fadd float %i.dd, %i.de
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fdiv <4 x float> %i.cx, %i.dh           ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dj, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.dk, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 %6, i32 %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %8 = alloca %"class.pstd::array", align 8       ; 5 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 14 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 16 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = tail call noundef float @atan2f(float noundef %3, float noundef %.sroa.098.4.vec.extract) #31
  %i.e = load float, ptr %1, align 4, !tbaa !83   ; 4 uses
  %i.f = fcmp olt float %i.e, -1.000000e+00
  %i.g = fcmp ogt float %i.e, 1.000000e+00
  %..i.i = select i1 %i.g, float 1.000000e+00, float %i.e
  %.0.i.i = select i1 %i.f, float -1.000000e+00, float %..i.i
  %i.h = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
end_hunk_0
begin_hunk_1_@_ZNK4pbrt13ConductorBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE:bb.a
  %i.d = load float, ptr %0, align 4, !tbaa !20   ; 2 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp olt float %i.d, %i.e
  %i.g = select i1 %i.f, float %i.e, float %i.d
  %i.h = fcmp olt float %i.g, 1.000000e-03
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef float @llvm.fabs.f32(float %2)
  %i.j = tail call noundef float @llvm.fabs.f32(float %4)
  %i.k = fcmp oeq float %4, 0.000000e+00
  %i.l = fcmp oeq float %2, 0.000000e+00
  %or.cond = or i1 %i.l, %i.k
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fadd float %2, %4                        ; 3 uses
  %i.n = fadd <2 x float> %1, %3                  ; 4 uses
  %i.o = fmul <2 x float> %i.n, %i.n              ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.m, %i.m
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.r) ; 3 uses
  %i.t = extractelement <2 x float> %i.n, i64 0
  %i.u = fdiv float %i.t, %sqrt.i.i               ; 2 uses
  %i.v = extractelement <2 x float> %i.n, i64 1
  %i.w = fdiv float %i.v, %sqrt.i.i               ; 2 uses
  %i.x = fdiv float %i.m, %sqrt.i.i               ; 3 uses
  %i.y = fmul float %.sroa.03.0.vec.extract.i, %i.u
  %i.z = fmul float %.sroa.03.4.vec.extract.i, %i.w
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %2, %i.x
  %i.ac = fadd float %i.ab, %i.aa
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.ac) ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.014.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.215.0.copyload = load <2 x float>, ptr %.sroa.215.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 2 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.213.0.copyload = load <2 x float>, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %.sroa.0.4.vec.insert.i77 = shufflevector <2 x float> %.sroa.014.0.copyload, <2 x float> %.sroa.012.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ag = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.i77)
  %.sroa.0.4.vec.insert.1.i = shufflevector <2 x float> %.sroa.014.0.copyload, <2 x float> %.sroa.012.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ah = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.1.i)
  %.sroa.0.4.vec.insert.2.i = shufflevector <2 x float> %.sroa.215.0.copyload, <2 x float> %.sroa.213.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.2.i)
  %.sroa.0.4.vec.insert.3.i = shufflevector <2 x float> %.sroa.215.0.copyload, <2 x float> %.sroa.213.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.aj = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ad, <2 x float> %.sroa.0.4.vec.insert.3.i)
  %i.ak = fmul float %i.x, %i.x                   ; 4 uses
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.am, float %i.al, float 0.000000e+00 ; 2 uses
  %i.an = fdiv float %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = fmul float %i.ak, %i.ak                 ; 2 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e-16
  br i1 %i.ar, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i) #31 ; 3 uses
  %i.at = fcmp oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i, label %bb.h

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i:    ; preds = %bb.g
  %i.au = load float, ptr %0, align 4, !tbaa !41  ; 2 uses
  %i.av = fdiv float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ax = fdiv float %i.u, %i.as                  ; 3 uses
  %i.ay = fcmp olt float %i.ax, -1.000000e+00
  %i.az = fcmp ogt float %i.ax, 1.000000e+00
  %..i.i.i = select i1 %i.az, float 1.000000e+00, float %i.ax
  %.0.i.i.i = select i1 %i.ay, float -1.000000e+00, float %..i.i.i
  %i.ba = load float, ptr %0, align 4, !tbaa !41  ; 2 uses
  %i.bb = fdiv float %.0.i.i.i, %i.ba             ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fdiv float %i.w, %i.as                  ; 3 uses
  %i.be = fcmp olt float %i.bd, -1.000000e+00
  %i.bf = fcmp ogt float %i.bd, 1.000000e+00
  %..i.i29.i = select i1 %i.bf, float 1.000000e+00, float %i.bd
  %.0.i.i30.i = select i1 %i.be, float -1.000000e+00, float %..i.i29.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.h, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.bg = phi float [ %i.bc, %bb.h ], [ %i.aw, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bh = phi float [ %i.ba, %bb.h ], [ %i.au, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bi = phi float [ %.0.i.i30.i, %bb.h ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bj = load float, ptr %i.c, align 4, !tbaa !42 ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = fadd float %i.bg, %i.bl
  %i.bn = fmul float %i.an, %i.bm
  %i.bo = fmul float %i.bh, f0x40490FDB
  %i.bp = fmul float %i.bo, %i.bj
  %i.bq = fmul float %i.aq, %i.bp
  %i.br = fadd float %i.bn, 1.000000e+00          ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fdiv float 1.000000e+00, %i.bt
  br label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit

_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit: ; preds = %bb.e, %bb.f, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i
  %.1.i = phi float [ 0.000000e+00, %bb.e ], [ %i.bu, %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i ], [ 0.000000e+00, %bb.f ]
  %i.bv = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.ah, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.ai, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.aj, i64 3
  %i.bz = insertelement <4 x float> poison, float %.1.i, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.by, %i.ca
  %i.cc = tail call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1GENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1, float %2, <2 x float> %3, float %4)
  %i.cd = fmul float %i.j, 4.000000e+00
  %i.ce = fmul float %i.i, %i.cd
  %i.cf = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x float> %i.cg, %i.cb
  %i.ci = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fdiv <4 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit
  %.sroa.0101.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.cl, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit ], [ zeroinitializer, %bb.d ]
  %.sroa.10.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.c ], [ %i.cm, %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit ], [ zeroinitializer, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0101.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.10.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bxdfs.cpp() #26 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !20
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !20
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !20
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !20
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGmeasuredBRDFBytesE, ptr noundef nonnull @"_ZN4pbrt3$_58__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { cold nofree noreturn }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !66}
!1 = distinct !{!1, !66}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !66}
!5 = distinct !{null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"float", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{!"_ZTSN4pbrt27TrowbridgeReitzDistributionE", !19, i64 0, !19, i64 4}
!23 = !{!"_ZTSN4pbrt14DielectricBxDFE", !19, i64 0, !22, i64 4}
!24 = !{!"_ZTSN4pstd5arrayIfLi4EEE", !15, i64 0}
!25 = !{!"_ZTSN4pbrt15SampledSpectrumE", !24, i64 0}
!26 = !{!"_ZTSN4pbrt11DiffuseBxDFE", !25, i64 0}
!27 = !{!"_ZTSN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EEE", !23, i64 0, !26, i64 12, !19, i64 28, !19, i64 32, !25, i64 36, !16, i64 52, !16, i64 56}
!28 = !{!27, !19, i64 28}
!29 = !{!27, !19, i64 32}
!30 = !{i64 0, i64 16, !21}
!31 = !{!27, !16, i64 52}
!32 = !{!27, !16, i64 56}
!33 = !{!"any pointer", !15, i64 0}
!34 = !{!"p1 omnipotent char", !33, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"long", !15, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !37, i64 8, !15, i64 16}
!39 = !{!38, !37, i64 8}
!40 = !{!38, !34, i64 0}
!41 = !{!22, !19, i64 0}
!42 = !{!22, !19, i64 4}
!43 = !{!"p1 _ZTSN4pbrt14DielectricBxDFE", !33, i64 0}
!44 = !{!"p1 _ZTSN4pbrt11DiffuseBxDFE", !33, i64 0}
!45 = !{!"_ZTSN4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEEE", !43, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !43, i64 0}
!48 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !33, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"bool", !15, i64 0}
!51 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !15, i64 0}
!52 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !16, i64 0, !50, i64 4, !50, i64 5, !50, i64 6, !50, i64 7, !50, i64 8, !50, i64 9, !50, i64 10, !50, i64 11, !50, i64 12, !50, i64 13, !51, i64 16}
!53 = !{!52, !16, i64 0}
!54 = !{!"_ZTSN4pstd8optionalIN4pbrt10BSDFSampleEEE", !15, i64 0, !50, i64 44}
!55 = !{!54, !50, i64 44}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!59 = !{!"_ZTSN4pbrt7Vector3IfEE", !58, i64 0}
!60 = !{!"_ZTSN4pbrt9BxDFFlagsE", !15, i64 0}
!61 = !{!"_ZTSN4pbrt10BSDFSampleE", !25, i64 0, !59, i64 16, !19, i64 28, !60, i64 32, !19, i64 36, !50, i64 40}
!62 = !{!61, !19, i64 28}
!63 = !{!58, !19, i64 8}
!64 = !{!"_ZTSN4pbrt15HGPhaseFunctionE", !19, i64 0}
!65 = !{!64, !19, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!23, !19, i64 0}
!68 = !{!61, !60, i64 32}
!69 = !{!61, !50, i64 40}
!70 = !{!"branch_weights", i32 1, i32 1048575}
!71 = !{!37, !37, i64 0}
!72 = !{!"_ZTSN4pbrt13ConductorBxDFE", !22, i64 0, !25, i64 8, !25, i64 24}
!73 = !{!"_ZTSN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EEE", !23, i64 0, !72, i64 12, !19, i64 52, !19, i64 56, !25, i64 60, !16, i64 76, !16, i64 80}
!74 = !{!73, !19, i64 52}
!75 = !{!73, !19, i64 56}
!76 = !{!73, !16, i64 76}
!77 = !{!73, !16, i64 80}
!78 = !{!"p1 _ZTSN4pbrt13ConductorBxDFE", !33, i64 0}
!79 = !{!"_ZTSN4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEEE", !43, i64 0, !78, i64 8}
!80 = !{!79, !78, i64 8}
!81 = !{!79, !43, i64 0}
!82 = !{!"_ZTSN4pbrt8HairBxDFE", !19, i64 0, !19, i64 4, !25, i64 8, !19, i64 24, !19, i64 28, !15, i64 32, !19, i64 48, !15, i64 52, !15, i64 64}
!83 = !{!82, !19, i64 0}
!84 = !{!82, !19, i64 4}
!85 = !{!82, !19, i64 48}
!86 = !{!"any p2 pointer", !33, i64 0}
!87 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !86, i64 0}
!88 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!89 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !88, i64 0}
!90 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !37, i64 8}
!91 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6Tensor5FieldEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !87, i64 0, !37, i64 8, !89, i64 16, !37, i64 24, !90, i64 32, !88, i64 48}
!92 = !{!91, !87, i64 0}
!93 = !{!91, !37, i64 8}
!94 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6Tensor5FieldESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !91, i64 0}
!95 = !{!"_ZTSN4pbrt6TensorE", !94, i64 0, !38, i64 56, !37, i64 88}
!96 = !{!95, !37, i64 88}
!97 = !{!16, !16, i64 0}
!98 = !{!"_ZTSN4pbrt6Tensor4TypeE", !15, i64 0}
!99 = !{!"p1 long", !33, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !100, i64 0}
!102 = !{!"_ZTSSt12_Vector_baseImSaImEE", !101, i64 0}
!103 = !{!"_ZTSSt6vectorImSaImEE", !102, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !34, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPhSt14default_deleteIA_hEEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPhSt14default_deleteIA_hEEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIhSt14default_deleteIA_hEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIhSt14default_deleteIA_hELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !108, i64 0}
!110 = !{!"_ZTSN4pbrt6Tensor5FieldE", !98, i64 0, !37, i64 8, !103, i64 16, !109, i64 40}
!111 = !{!110, !98, i64 0}
!112 = !{!100, !99, i64 16}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!100, !99, i64 0}
!115 = !{!100, !99, i64 8}
!116 = !{!34, !34, i64 0}
!117 = !{!"vtable pointer", !14, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!120 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!121 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !33, i64 0}
!122 = !{!"_ZTSNSt8ios_base6_WordsE", !33, i64 0, !37, i64 8}
!123 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !33, i64 0}
!124 = !{!"p1 _ZTSNSt6locale5_ImplE", !33, i64 0}
!125 = !{!"_ZTSSt6locale", !124, i64 0}
!126 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !119, i64 24, !120, i64 28, !120, i64 32, !121, i64 40, !122, i64 48, !15, i64 64, !16, i64 192, !123, i64 200, !125, i64 208}
!127 = !{!89, !88, i64 0}
!128 = !{!91, !37, i64 24}
!129 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !125, i64 56}
!130 = !{!129, !34, i64 40}
!131 = !{!129, !34, i64 32}
!132 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !33, i64 0}
!133 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIfEE", !132, i64 0}
!134 = !{!"p1 float", !33, i64 0}
!135 = !{!"_ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !133, i64 0, !134, i64 8, !37, i64 16, !37, i64 24}
!136 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EiEE", !16, i64 0, !16, i64 4}
!137 = !{!"_ZTSN4pbrt7Vector2IiEE", !136, i64 0}
!138 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EfEE", !19, i64 0, !19, i64 4}
!139 = !{!"_ZTSN4pbrt7Vector2IfEE", !138, i64 0}
!140 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEEE", !132, i64 0}
!141 = !{!"p1 _ZTSN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEE", !33, i64 0}
!142 = !{!"_ZTSN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEEE", !140, i64 0, !141, i64 8, !37, i64 16, !37, i64 24}
!143 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm3EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 36, !142, i64 48, !135, i64 80, !135, i64 112, !135, i64 144}
!144 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm0EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 24, !142, i64 24, !135, i64 56, !135, i64 88, !135, i64 120}
!145 = !{!"_ZTSN4pbrt17PiecewiseLinear2DILm2EEE", !137, i64 0, !139, i64 8, !139, i64 16, !15, i64 24, !15, i64 32, !142, i64 40, !135, i64 72, !135, i64 104, !135, i64 136}
!146 = !{!"_ZTSN4pbrt16MeasuredBxDFDataE", !135, i64 0, !143, i64 32, !144, i64 208, !145, i64 360, !144, i64 528, !50, i64 680, !145, i64 688, !38, i64 856}
!147 = !{!146, !50, i64 680}
!148 = !{!134, !134, i64 0}
!149 = !{!135, !134, i64 8}
!150 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_1
