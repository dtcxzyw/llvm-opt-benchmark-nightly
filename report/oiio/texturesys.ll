Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load <2 x float>, ptr %5, align 4, !tbaa !266 ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %i.ab, align 4, !tbaa !266
  store <2 x float> %i.ad, ptr %i.ac, align 4, !tbaa !266
  %.not58 = icmp eq ptr %6, null
  br i1 %.not58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !266
  %i.ah = load float, ptr %6, align 4, !tbaa !266 ; 2 uses
  store float %i.ah, ptr %i.af, align 4, !tbaa !266
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.h
  %.sink70 = phi i64 [ 8, %bb.h ], [ 4, %bb.d ]
  %.sink68 = phi float [ %i.ah, %bb.h ], [ %i.n, %bb.d ]
  %.sink67 = phi i64 [ 12, %bb.h ], [ 8, %bb.d ]
  %.sink = phi float [ %i.ag, %bb.h ], [ %i.n, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 %.sink70
  store float %.sink68, ptr %i.ai, align 4, !tbaa !266
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %.sink67
  store float %.sink, ptr %i.aj, align 4, !tbaa !266
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f, %bb.g, %bb.e, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) #11 align 2 !guid !1016 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 7 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 7 uses
  %i.d = insertelement <2 x float> poison, float %8, i64 0
  %i.e = insertelement <2 x float> %i.d, float %9, i64 1
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e) ; 2 uses
  %i.g = insertelement <2 x float> poison, float %10, i64 0 ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %11, i64 1
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.h) ; 2 uses
  %i.j = fcmp olt <2 x float> %i.f, %i.i
  %i.k = select <2 x i1> %i.j, <2 x float> %i.i, <2 x float> %i.f ; 2 uses
  %i.l = fcmp olt <2 x float> %i.k, splat (float f0x322BCC77)
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float f0x322BCC77), <2 x float> %i.k
  %i.n = fdiv <2 x float> splat (float 1.000000e+00), %i.m ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fptosi float %i.o to i32
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fptosi float %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !452 ; 9 uses
  %i.u = fcmp oge float %i.t, 0.000000e+00        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = trunc i32 %i.w to i1
  %i.y = and i32 %i.w, 2
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = select i1 %i.u, i1 %i.x, i1 false
  %i.ab = select i1 %i.u, i1 %i.z, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !266 ; 2 uses
  %i.ae = insertelement <2 x float> %i.g, float %8, i64 1
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.ae, %i.af           ; 5 uses
  %i.ah = insertelement <2 x float> poison, float %11, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %9, i64 1
  %i.aj = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x float> %i.ai, %i.aj           ; 5 uses
  %i.al = fmul <2 x float> %i.ak, %i.ak
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.al) ; 3 uses
  %i.an = fcmp olt <2 x float> %i.am, splat (float 1.000000e-16) ; 3 uses
  %i.ao = extractelement <2 x i1> %i.an, i64 1
  br i1 %i.ao, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ap = extractelement <2 x i1> %i.an, i64 0
  br i1 %i.ap, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = extractelement <2 x float> %i.am, i64 0
  %i.ar = tail call float @llvm.sqrt.f32(float %i.aq)
  %i.as = fdiv float f0x322BCC77, %i.ar           ; 2 uses
  %i.at = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.au = fmul float %i.at, %i.as
  %i.av = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.aw = fneg float %i.av
  %i.ax = fmul float %i.as, %i.aw
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.d:                                             ; preds = %bb.a
  %i.ay = extractelement <2 x i1> %i.an, i64 0
  %i.az = extractelement <2 x float> %i.ag, i64 0
  %i.ba = extractelement <2 x float> %i.ag, i64 1 ; 3 uses
  %i.bb = extractelement <2 x float> %i.ak, i64 0
  %i.bc = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  br i1 %i.ay, label %bb.e, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = extractelement <2 x float> %i.am, i64 1
  %i.be = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float f0x322BCC77, %i.be           ; 2 uses
  %i.bg = fneg float %i.bc
  %i.bh = fmul float %i.bf, %i.bg
  %i.bi = fmul float %i.ba, %i.bf
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0303 = phi float [ %i.bb, %bb.d ], [ %i.at, %bb.c ], [ %i.bi, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  %.0302 = phi float [ %i.az, %bb.d ], [ %i.av, %bb.c ], [ %i.bh, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0301 = phi float [ %i.bc, %bb.d ], [ %i.ax, %bb.c ], [ %i.bc, %bb.e ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0300 = phi float [ %i.ba, %bb.d ], [ %i.au, %bb.c ], [ %i.ba, %bb.e ], [ f0x322BCC77, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.bj = fmul float %.0300, %.0300
  %i.bk = fmul float %.0301, %.0301
  %i.bl = fmul float %.0302, %.0302
  %i.bm = fmul float %.0303, %.0303
  %i.bn = fadd float %i.bm, %i.bk
  %i.bo = fpext float %i.bn to double             ; 2 uses
  %i.bp = fmul float %.0303, %.0302
  %i.bq = tail call float @llvm.fmuladd.f32(float %.0300, float %.0301, float %i.bp)
  %i.br = fpext float %i.bq to double
  %i.bs = fmul double %i.br, -2.000000e+00        ; 2 uses
  %i.bt = fadd float %i.bl, %i.bj
  %i.bu = fpext float %i.bt to double             ; 2 uses
  %i.bv = fsub double %i.bo, %i.bu                ; 3 uses
  %i.bw = tail call double @hypot(double noundef %i.bv, double noundef %i.bs) #50 ; 2 uses
  %i.bx = fadd double %i.bo, %i.bu                ; 2 uses
  %i.by = fsub double %i.bx, %i.bw
  %i.bz = fadd double %i.bw, %i.bx
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fmul <2 x double> %i.cb, splat (double 5.000000e-01) ; 2 uses
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  %i.ce = fcmp ult <2 x double> %i.cc, splat (double f0xB690000000000000)
  %i.cf = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cd)
  %i.cg = select <2 x i1> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cf ; 2 uses
  %i.ch = fcmp ogt <2 x float> %i.cg, splat (float 1.000000e+03)
  %i.ci = select <2 x i1> %i.ch, <2 x float> splat (float 1.000000e+03), <2 x float> %i.cg ; 2 uses
  %i.cj = fptrunc double %i.bs to float           ; 3 uses
  %i.ck = fptrunc double %i.bv to float
  %i.cl = tail call float @llvm.fabs.f32(float %i.ck) ; 4 uses
  %i.cm = tail call float @llvm.fabs.f32(float %i.cj) ; 4 uses
  %i.cn = fcmp ogt float %i.cm, %i.cl             ; 2 uses
  %i.co = fcmp oeq float %i.cj, 0.000000e+00
  br i1 %i.co, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cp = fcmp oeq float %i.cl, %i.cm
  br i1 %i.cp, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = fdiv float %i.cl, %i.cm
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

bb.i:                                             ; preds = %bb.g
  %i.cr = fdiv float %i.cm, %i.cl
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.f, %bb.h, %bb.i
  %i.cs = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit ], [ 1.000000e+00, %bb.f ], [ %i.cq, %bb.h ], [ %i.cr, %bb.i ]
  %i.ct = fadd float %i.cs, -1.000000e+00
  %i.cu = fadd float %i.ct, 1.000000e+00          ; 3 uses
  %i.cv = fmul float %i.cu, %i.cu                 ; 3 uses
  %i.cw = fmul contract float %i.cv, f0x3EDC3EAD
  %i.cx = fadd contract float %i.cw, 1.000000e+00
  %i.cy = fmul float %i.cu, %i.cx
  %i.cz = fmul contract float %i.cv, 5.793550e-02
  %i.da = fadd contract float %i.cz, f0x3F43547E
  %i.db = fmul contract float %i.cv, %i.da
  %i.dc = fadd contract float %i.db, 1.000000e+00
  %i.dd = fdiv float %i.cy, %i.dc                 ; 2 uses
  %i.de = fsub float f0x3FC90FDB, %i.dd
  %.0.i.i = select i1 %i.cn, float %i.de, float %i.dd ; 2 uses
  %i.df = bitcast double %i.bv to i64
  %i.dg = fsub float f0x40490FDB, %.0.i.i
  %.not.i57.i = icmp slt i64 %i.df, 0
  %.1.i.i = select i1 %.not.i57.i, float %i.dg, float %.0.i.i
  %i.dh = tail call noundef float @llvm.copysign.f32(float %.1.i.i, float %i.cj)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 5.000000e-01, float f0x3FC90FDB) ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dk = load <2 x float>, ptr %i.dj, align 8, !tbaa !266 ; 3 uses
  %i.dl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dk)
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit
  %i.dn = fmul float %i.di, f0x3EA2F983           ; 2 uses
  %i.do = tail call float @llvm.copysign.f32(float 5.000000e-01, float %i.dn)
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = fptosi float %i.dp to i32               ; 2 uses
  %i.dr = sitofp i32 %i.dq to float               ; 4 uses
  %i.ds = fmul contract float %i.dr, f0x40490000
  %i.dt = fsub contract float %i.di, %i.ds
  %i.du = fmul contract float %i.dr, f0x3A7DA000
  %i.dv = fsub contract float %i.dt, %i.du
  %i.dw = fmul contract float %i.dr, f0x34222000
  %i.dx = fsub contract float %i.dv, %i.dw
  %i.dy = fmul contract float %i.dr, f0x2CB4611A
  %i.dz = fsub contract float %i.dx, %i.dy
  %i.ea = fadd float %i.dz, f0xBFC90FDB
  %i.eb = fadd float %i.ea, f0x3FC90FDB           ; 4 uses
  %i.ec = fmul float %i.eb, %i.eb                 ; 9 uses
  %i.ed = and i32 %i.dq, 1
  %.not.i.i = icmp eq i32 %i.ed, 0                ; 2 uses
  %i.ee = fneg float %i.eb
  %.0.i.i202 = select i1 %.not.i.i, float %i.eb, float %i.ee ; 2 uses
  %i.ef = fmul contract float %i.ec, f0x362F0A87
  %i.eg = fadd contract float %i.ef, f0xB94FBAEB
  %i.eh = fmul contract float %i.ec, %i.eg
  %i.ei = fadd contract float %i.eh, f0x3C088777
  %i.ej = fmul contract float %i.ec, %i.ei
  %i.ek = fadd contract float %i.ej, f0xBE2AAAA6
  %i.el = fmul float %.0.i.i202, %i.ek
  %i.em = fmul contract float %i.ec, %i.el
  %i.en = fadd contract float %.0.i.i202, %i.em
  %i.eo = fmul contract float %i.ec, f0x3491ED89
  %i.ep = fsub contract float f0x37D0078B, %i.eo
  %i.eq = fmul contract float %i.ec, %i.ep
  %i.er = fadd contract float %i.eq, f0xBAB60B58
  %i.es = fmul contract float %i.ec, %i.er
  %i.et = fadd contract float %i.es, f0x3D2AAAAA
  %i.eu = fmul contract float %i.ec, %i.et
  %i.ev = fadd contract float %i.eu, -5.000000e-01
  %i.ew = fmul contract float %i.ec, %i.ev
  %i.ex = fadd contract float %i.ew, 1.000000e+00 ; 2 uses
  %i.ey = fneg float %i.ex
  %storemerge.i.i = select i1 %.not.i.i, float %i.ex, float %i.ey
  %i.ez = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %storemerge.i.i, i64 1 ; 2 uses
  %i.fb = fcmp oge <2 x float> %i.fa, splat (float -1.000000e+00)
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.fa, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.fd = fcmp ogt <2 x float> %i.fc, splat (float 1.000000e+00)
  %i.fe = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fc)
  %i.ff = select <2 x i1> %i.fd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fe ; 2 uses
  %i.fg = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = fmul <2 x float> %i.fg, %i.fh
  %i.fj = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.ff, <2 x float> %i.fi)
  %i.fl = fadd <2 x float> %i.ci, %i.fk           ; 4 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = extractelement <2 x float> %i.fl, i64 1
  %i.fo = fcmp ogt float %i.fm, %i.fn
  br i1 %i.fo, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fpext float %i.di to double
  %i.fr = fadd double %i.fq, f0x3FF921FB54442D18
  %i.fs = fptrunc double %i.fr to float
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, %bb.j, %bb.k
  %.0308 = phi float [ %i.fs, %bb.k ], [ %i.di, %bb.j ], [ %i.di, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ]
  %i.ft = phi <2 x float> [ %i.fp, %bb.k ], [ %i.fl, %bb.j ], [ %i.ci, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ] ; 4 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0 ; 3 uses
  %i.fv = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.fw = fdiv float %i.fv, %i.fu                 ; 2 uses
  %.inv.i203 = fcmp oge float %i.fw, 1.000000e+00
  %.0.i.i204 = select i1 %.inv.i203, float %i.fw, float 1.000000e+00 ; 2 uses
  %i.fx = fcmp ogt float %.0.i.i204, 1.000000e+06
  %.1.i.i205 = select i1 %i.fx, float 1.000000e+06, float %.0.i.i204 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !449 ; 2 uses
  %i.ga = uitofp i16 %i.fz to float               ; 8 uses
  %i.gb = fcmp ogt float %.1.i.i205, %i.ga
  br i1 %i.gb, label %bb.l, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !450, !range !293, !noundef !294
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ga, float %i.fv)
  %i.gg = fmul float %i.gf, 5.000000e-01          ; 2 uses
  %i.gh = fdiv float %i.gg, %i.ga
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.n:                                             ; preds = %bb.l
  %i.gk = fmul float %i.fu, %i.ga
  %i.gl = insertelement <2 x float> %i.ft, float %i.gk, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit, %bb.m, %bb.n
  %.0.i = phi float [ %i.ga, %bb.m ], [ %i.ga, %bb.n ], [ %.1.i.i205, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 5 uses
  %i.gm = phi <2 x float> [ %i.gj, %bb.m ], [ %i.gl, %bb.n ], [ %i.ft, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !393
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gq = sext i32 %i.go to i64
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !394
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %i.gr, i64 %i.gq ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !533 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 100
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !534 ; 7 uses
  %i.gx = icmp slt i32 %i.gw, %i.gu
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !535
  %i.ha = sext i32 %i.gw to i64
  %i.hb = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ha, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !54
  %i.he = sitofp i32 %i.hd to float
  %i.hf = fmul float %i.hb, %i.he                 ; 2 uses
  %i.hg = fcmp ugt float %i.hf, 1.000000e+00
  br i1 %i.hg, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gu, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.o, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.o
  %i.hh = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hf, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i208 = fcmp oge float %i.hj, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i208, float %i.hj, float 0.000000e+00 ; 2 uses
  %i.hk = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.hk, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.hl = fsub float 1.000000e+00, %.1.i78.i
  %i.hm = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.hm, label %.loopexit.i.thread, label %bb.p

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit, %.loopexit.i
  %i.hn = add nsw i32 %i.gu, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.p:                                             ; preds = %.loopexit.i
  %.not351 = icmp slt i32 %i.gw, %i.hh
  br i1 %.not351, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !389
  switch i8 %i.hp, label %bb.t [
    i8 1, label %bb.r
    i8 2, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  ]

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !422 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !54
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !54
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 %i.hv)
  %i.hx = sitofp i32 %i.hw to float               ; 2 uses
  %i.hy = fmul float %i.hb, %i.hx
  %i.hz = fcmp olt float %i.hy, 5.000000e-01
  br i1 %i.hz, label %bb.s, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.s:                                             ; preds = %bb.r
  %i.ia = extractelement <2 x float> %i.gm, i64 1
  %i.ib = fmul float %i.ia, %i.hx
  %i.ic = fmul float %i.ib, 2.000000e+00          ; 2 uses
  %.inv93.i = fcmp oge float %i.ic, 1.000000e+00
  %.0.i75.i = select i1 %.inv93.i, float %i.ic, float 1.000000e+00 ; 2 uses
  %i.id = fcmp ogt float %.0.i75.i, %i.ga
  %.1.i76.i = select i1 %i.id, float %i.ga, float %.0.i75.i
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.t:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.u, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.u:                                             ; preds = %bb.t
  %i.ie = fcmp ult float %i.t, %.1.i78.i          ; 2 uses
  %i.if = fdiv float %i.t, %.1.i78.i
  %i.ig = fsub float %i.t, %.1.i78.i
  %i.ih = fsub float 1.000000e+00, %.1.i78.i
  %i.ii = fdiv float %i.ig, %i.ih
  %.sroa.10.1 = select i1 %i.ie, i32 %i.hh, i32 %i.hi ; 2 uses
  %.sink109.i = select i1 %i.ie, float %i.if, float %i.ii ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i206 = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.ij = fcmp ogt float %.0.i.i206, 1.000000e+00
  %.1.i.i207 = select i1 %i.ij, float 1.000000e+00, float %.0.i.i206 ; 2 uses
  store float %.1.i.i207, ptr %i.s, align 8, !tbaa !452
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.q, %.loopexit.i.thread, %bb.r, %bb.s, %bb.t, %bb.u
  %i.ik = phi float [ %i.t, %.loopexit.i.thread ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %.1.i.i207, %bb.u ], [ %i.t, %bb.t ], [ %i.t, %bb.q ]
  %.sroa.10.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hh, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
  %.sroa.0328.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hi, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.azh = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.pre2302, %._crit_edge.loopexit ]
  %.sroa.01534.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azg, %._crit_edge.loopexit ]
  %.sroa.01536.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azf, %._crit_edge.loopexit ]
  %.0315.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.33182060, %._crit_edge.loopexit ]
  %i.azi = sext i32 %9 to i64
  %i.azj = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.azi
  %.sroa.01179.0.copyload2072 = load <4 x i32>, ptr %i.azj, align 16, !tbaa !274 ; 4 uses
  %i.azk = and <4 x i32> %i.azh, %.sroa.01179.0.copyload2072
  store <4 x i32> %i.azk, ptr %22, align 16
  br i1 %i.av, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge
  %i.azl = fsub float 1.000000e+00, %.0315.lcssa
  %i.azm = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.azn = load float, ptr %i.azm, align 8, !tbaa !444
  %i.azo = fmul float %i.azl, %i.azn
  %i.azp = insertelement <4 x float> poison, float %i.azo, i64 0
  %i.azq = xor <4 x i32> %.sroa.01179.0.copyload2072, splat (i32 -1)
  %i.azr = bitcast <4 x float> %i.azp to <4 x i32>
  %i.azs = shufflevector <4 x i32> %i.azr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azt = and <4 x i32> %i.azs, %i.azq
  %i.azu = load <4 x float>, ptr %22, align 16, !tbaa !274
  %i.azv = bitcast <4 x i32> %i.azt to <4 x float>
  %i.azw = fadd <4 x float> %i.azu, %i.azv
  store <4 x float> %i.azw, ptr %22, align 16, !tbaa !274
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !559
  br i1 %.not370, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.azx = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01536.1.lcssa
  store <4 x i32> %i.azx, ptr %12, align 16
  %i.azy = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01534.1.lcssa
  store <4 x i32> %i.azy, ptr %13, align 16
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %.loopexit2114
  %i.azz = phi i1 [ true, %bb.cf ], [ true, %bb.cg ], [ false, %.loopexit2114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  ret i1 %i.azz
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7) local_unnamed_addr #23 !guid !1062 {
_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50:
  %i.a = fmul float %0, %0
  %i.b = fmul float %1, %1
  %i.c = fmul float %2, %2
  %i.d = fmul float %3, %3
  %i.e = fadd float %i.b, %i.d
  %i.f = fpext float %i.e to double               ; 4 uses
  %i.g = fmul float %2, %3
  %i.h = tail call float @llvm.fmuladd.f32(float %0, float %1, float %i.g)
  %i.i = fpext float %i.h to double
  %i.j = fmul double %i.i, -2.000000e+00          ; 5 uses
  %i.k = fadd float %i.a, %i.c
  %i.l = fpext float %i.k to double               ; 4 uses
  %i.m = fsub double %i.f, %i.l                   ; 3 uses
  %i.n = tail call double @hypot(double noundef %i.m, double noundef %i.j) #50 ; 2 uses
  %i.o = fadd double %i.l, %i.f                   ; 2 uses
  %i.p = fsub double %i.o, %i.n
  %i.q = fadd double %i.o, %i.n
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.q, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double f0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  store float %i.aa, ptr %4, align 4, !tbaa !266
  %i.ab = extractelement <2 x float> %i.z, i64 0
  store float %i.ab, ptr %5, align 4, !tbaa !266
  %i.ac = fptrunc double %i.j to float            ; 3 uses
  %i.ad = fptrunc double %i.m to float
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 4 uses
  %i.af = tail call float @llvm.fabs.f32(float %i.ac) ; 4 uses
  %i.ag = fcmp ogt float %i.af, %i.ae             ; 2 uses
  %i.ah = fcmp oeq float %i.ac, 0.000000e+00
  br i1 %i.ah, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50
  %i.ai = fcmp oeq float %i.ae, %i.af
  br i1 %i.ai, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = fdiv float %i.ae, %i.af
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = fdiv float %i.af, %i.ae
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

_ZN11OpenImageIO4v3_110fast_atan2Eff.exit:        ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50, %bb.a, %bb.c, %bb.d
  %i.al = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50 ], [ 1.000000e+00, %bb.a ], [ %i.aj, %bb.c ], [ %i.ak, %bb.d ]
  %i.am = fadd float %i.al, -1.000000e+00
  %i.an = fadd float %i.am, 1.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, %i.an                 ; 3 uses
  %i.ap = fmul contract float %i.ao, f0x3EDC3EAD
  %i.aq = fadd contract float %i.ap, 1.000000e+00
  %i.ar = fmul float %i.an, %i.aq
  %i.as = fmul contract float %i.ao, 5.793550e-02
  %i.at = fadd contract float %i.as, f0x3F43547E
  %i.au = fmul contract float %i.ao, %i.at
  %i.av = fadd contract float %i.au, 1.000000e+00
  %i.aw = fdiv float %i.ar, %i.av                 ; 2 uses
  %i.ax = fsub float f0x3FC90FDB, %i.aw
  %.0.i = select i1 %i.ag, float %i.ax, float %i.aw ; 2 uses
  %i.ay = bitcast double %i.m to i64
  %i.az = fsub float f0x40490FDB, %.0.i
  %.not.i57 = icmp slt i64 %i.ay, 0
  %.1.i = select i1 %.not.i57, float %i.az, float %.0.i
  %i.ba = tail call noundef float @llvm.copysign.f32(float %.1.i, float %i.ac)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 5.000000e-01, float f0x3FC90FDB)
  store float %i.bb, ptr %6, align 4, !tbaa !266
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  %i.bc = fmul double %i.j, %i.j
  %i.bd = fmul double %i.bc, -2.500000e-01
  %i.be = tail call double @llvm.fmuladd.f64(double %i.f, double %i.l, double %i.bd) ; 2 uses
  %i.bf = fdiv double 1.000000e+00, %i.be
  %i.bg = insertelement <4 x double> poison, double %i.f, i64 0
  %i.bh = insertelement <4 x double> %i.bg, double %i.j, i64 1
  %i.bi = insertelement <4 x double> %i.bh, double %i.l, i64 2
  %i.bj = insertelement <4 x double> %i.bi, double %i.be, i64 3
  %i.bk = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.bf, i64 0
  %i.bl = shufflevector <4 x double> %i.bk, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bm = fmul <4 x double> %i.bj, %i.bl
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float>
  store <4 x float> %i.bn, ptr %7, align 4, !tbaa !266
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9, float noundef %10) local_unnamed_addr #23 !guid !1066 {
bb.a:
  %sincos.i = tail call { float, float } @llvm.sincos.f32(float %1) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  store float %sin.i, ptr %5, align 4, !tbaa !266
  %i.a = fsub float %2, %3
  %i.b = fmul float %i.a, 2.000000e+00            ; 3 uses
  %i.c = fmul float %cos.i, %i.b
  store float %i.c, ptr %4, align 4, !tbaa !266
  %i.d = load float, ptr %5, align 4, !tbaa !266
  %i.e = fmul float %i.b, %i.d
  store float %i.e, ptr %5, align 4, !tbaa !266
  br i1 %9, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %7, align 4, !tbaa !266
  store float 1.000000e+00, ptr %6, align 4, !tbaa !266
  %i.f = tail call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float -1.000000e+00)
  %i.g = fmul float %i.f, f0x3F2EC4BC             ; 2 uses
  %i.h = tail call float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.i = fcmp ogt float %i.h, f0x3F7FFFFF
  %spec.store.select.i = select i1 %i.i, float f0x3F7FFFFF, float %i.h ; 2 uses
  %i.j = fsub float 1.000000e+00, %spec.store.select.i
  %i.k = fadd float %spec.store.select.i, 1.000000e+00
  %i.l = fmul float %i.j, %i.k                    ; 2 uses
  %.inv70 = fcmp oge float %i.l, f0x00800000
  %.0.i.i = select i1 %.inv70, float %i.l, float f0x00800000 ; 2 uses
  %i.m = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.n = bitcast float %.0.i.i to i32
  %i.o = select i1 %i.m, i32 2139095039, i32 %i.n ; 2 uses
  %i.p = lshr i32 %i.o, 23
  %i.q = add nsw i32 %i.p, -127
  %i.r = and i32 %i.o, 8388607
  %i.s = or disjoint i32 %i.r, 1065353216
  %i.t = bitcast i32 %i.s to float
  %i.u = fadd float %i.t, -1.000000e+00           ; 9 uses
  %i.v = fmul float %i.u, %i.u                    ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = fmul contract float %i.u, f0x3C188B0D
  %i.y = fsub contract float f0x3D5541C9, %i.x
  %i.z = fmul contract float %i.u, f0x3EF5162D
  %i.aa = fadd contract float %i.z, f0xBF389E54
  %i.ab = fmul contract float %i.u, %i.y
  %i.ac = fadd contract float %i.ab, f0xBE0CD4FD
  %i.ad = fmul contract float %i.u, %i.ac
  %i.ae = fadd contract float %i.ad, f0x3E77ADBD
  %i.af = fmul contract float %i.u, %i.ae
  %i.ag = fadd contract float %i.af, f0xBEB1D206
  %i.ah = fmul contract float %i.u, %i.aa
  %i.ai = fadd contract float %i.ah, f0x3FB8AA10
  %i.aj = fmul float %i.u, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ag, float %i.aj)
  %i.al = sitofp i32 %i.q to float
  %i.am = fadd float %i.ak, %i.al
  %i.an = fmul float %i.am, f0x3F317218           ; 3 uses
  %i.ao = fcmp ogt float %i.an, -5.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = fsub float -2.500000e+00, %i.an         ; 8 uses
  %i.aq = fmul contract float %i.ap, f0x32F16588
  %i.ar = fadd contract float %i.aq, f0x34B84B36
  %i.as = fmul contract float %i.ap, %i.ar
  %i.at = fadd contract float %i.as, f0xB66C7357
  %i.au = fmul contract float %i.ap, %i.at
  %i.av = fadd contract float %i.au, f0xB6935AC1
  %i.aw = fmul contract float %i.ap, %i.av
  %i.ax = fadd contract float %i.aw, f0x396532DB
  %i.ay = fmul contract float %i.ap, %i.ax
  %i.az = fadd contract float %i.ay, f0xBAA45408
  %i.ba = fmul contract float %i.ap, %i.az
  %i.bb = fadd contract float %i.ba, f0xBB88E4EF
  %i.bc = fmul contract float %i.ap, %i.bb
  %i.bd = fadd contract float %i.bc, f0x3E7C8F63
  %i.be = fmul contract float %i.ap, %i.bd
  %i.bf = fadd contract float %i.be, f0x3FC02E2F
  br label %_ZN11OpenImageIO4v3_19fast_ierfEf.exit

bb.d:                                             ; preds = %bb.b
  %i.bg = fneg float %i.an
  %i.bh = tail call float @llvm.sqrt.f32(float %i.bg)
  %i.bi = fadd float %i.bh, -3.000000e+00         ; 8 uses
  %i.bj = fmul contract float %i.bi, f0x3951F09B
  %i.bk = fsub contract float f0x38D3B56B, %i.bj
  %i.bl = fmul contract float %i.bi, %i.bk
  %i.bm = fadd contract float %i.bl, f0x3AB0DC72
  %i.bn = fmul contract float %i.bi, %i.bm
  %i.bo = fadd contract float %i.bn, f0xBB70BDE7
  %i.bp = fmul contract float %i.bi, %i.bo
  %i.bq = fadd contract float %i.bp, f0x3BBC127B
  %i.br = fmul contract float %i.bi, %i.bq
  %i.bs = fadd contract float %i.br, f0xBBF9C5D7
  %i.bt = fmul contract float %i.bi, %i.bs
  %i.bu = fadd contract float %i.bt, f0x3C1AA57E
  %i.bv = fmul contract float %i.bi, %i.bu
  %i.bw = fadd contract float %i.bv, f0x3F8036DB
  %i.bx = fmul contract float %i.bi, %i.bw
  %i.by = fadd contract float %i.bx, f0x40354F7E
  br label %_ZN11OpenImageIO4v3_19fast_ierfEf.exit

_ZN11OpenImageIO4v3_19fast_ierfEf.exit:           ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.bf, %bb.c ], [ %i.by, %bb.d ]
  %i.bz = fmul float %i.g, %.0.i
  %i.ca = fmul float %i.bz, f0x3FB504F3
  store float %i.ca, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.cb = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float -1.000000e+00)
  %i.cc = fptosi float %i.cb to i32               ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 5 uses
  %i.cd = uitofp nneg i32 %.sroa.speculated to float
  %i.ce = fdiv float 1.000000e+00, %i.cd
  store float %i.ce, ptr %6, align 4, !tbaa !266
  switch i32 %.sroa.speculated, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store float 1.000000e+00, ptr %7, align 4, !tbaa !266
  store float 0.000000e+00, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  store <2 x float> splat (float 5.000000e-01), ptr %7, align 4, !tbaa !266
  store <2 x float> <float -5.000000e-01, float 5.000000e-01>, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.cf = fdiv float %2, %i.b
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br label %bb.i

.preheader:                                       ; preds = %bb.i
  %min.iters.check = icmp slt i32 %i.cc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cg, align 4, !tbaa !266
  %i.ch = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.ch, ptr %i.cg, align 4, !tbaa !266
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !1063

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.05371 = phi float [ 0.000000e+00, %bb.h ], [ %i.do, %bb.i ]
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fadd nnan float %i.ck, 5.000000e-01
  %i.cm = fmul nnan float %i.cl, 2.000000e+00
  %i.cn = load float, ptr %6, align 4, !tbaa !266
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float -1.000000e+00) ; 2 uses
  %i.cp = fmul float %i.cf, %i.co                 ; 2 uses
  %i.cq = fmul float %i.cp, -2.000000e+00
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = fmul float %i.cr, f0x3FB8AA3B           ; 2 uses
  %.inv = fcmp oge float %i.cs, -1.260000e+02
  %.0.i.i55 = select i1 %.inv, float %i.cs, float -1.260000e+02 ; 2 uses
  %i.ct = fcmp ogt float %.0.i.i55, 1.260000e+02
  %.1.i.i56 = select i1 %i.ct, float 1.260000e+02, float %.0.i.i55 ; 2 uses
  %i.cu = fptosi float %.1.i.i56 to i32           ; 2 uses
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = fsub float %i.cv, %.1.i.i56
  %i.cx = fadd float %i.cw, 1.000000e+00
  %i.cy = fsub float 1.000000e+00, %i.cx          ; 5 uses
  %i.cz = fmul contract float %i.cy, f0x3AAEC44E
  %i.da = fadd contract float %i.cz, f0x3C20BB9A
  %i.db = fmul contract float %i.cy, %i.da
  %i.dc = fadd contract float %i.db, f0x3D636733
  %i.dd = fmul contract float %i.cy, %i.dc
  %i.de = fadd contract float %i.dd, f0x3E75F192
  %i.df = fmul contract float %i.cy, %i.de
  %i.dg = fadd contract float %i.df, f0x3F3171F1
  %i.dh = fmul contract float %i.cy, %i.dg
  %i.di = fadd contract float %i.dh, 1.000000e+00
  %i.dj = bitcast float %i.di to i32
  %i.dk = shl i32 %i.cu, 23
  %i.dl = add i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = bitcast i32 %i.dl to float
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !266
  %i.do = fadd float %.05371, %i.dm               ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.co, ptr %i.dp, align 4, !tbaa !266
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.i, !llvm.loop !1064

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv75 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !266
  %i.ds = fdiv float %i.dr, %i.do
  store float %i.ds, ptr %i.dq, align 4, !tbaa !266
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond79.not, label %.loopexit, label %scalar.ph, !llvm.loop !1065

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.f, %bb.g, %_ZN11OpenImageIO4v3_19fast_ierfEf.exit
  %.051 = phi i32 [ 1, %_ZN11OpenImageIO4v3_19fast_ierfEf.exit ], [ 1, %bb.f ], [ 2, %bb.g ], [ %.sroa.speculated, %middle.block ], [ %.sroa.speculated, %scalar.ph ]
  ret i32 %.051
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !guid !1093 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = sext i32 %4 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = sext i32 %5 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !454
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.h    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 38 ; 4 uses
  %i.m = load i8, ptr %i.l, align 2               ; 2 uses
  %i.n = and i8 %i.m, 2
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i8 %i.m, 4
  %.not82 = icmp eq i8 %i.o, 0
  br i1 %.not82, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.p = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f, !prof !247

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex) #3
  %.not83 = icmp eq i32 %i.r, 0
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex, align 1, !tbaa !560
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiiiE5mutex) #3
  br label %bb.f
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii:bb.a
.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader49
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader49 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ak = add nsw i64 %wide.trip.count, -1
  %i.al = icmp eq i64 %indvars.iv.ph, %i.ak
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.d
  %i.am = fsub float 1.000000e+00, %i.j
  %i.an = load float, ptr %3, align 4, !tbaa !266
  %i.ao = fmul float %i.am, %i.an
  store float %i.ao, ptr %3, align 4, !tbaa !266
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ap = load float, ptr %3, align 4, !tbaa !266
  %i.aq = fmul float %i.j, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !266
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !266
  %i.av = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.as, float %i.au)
  store float %i.av, ptr %i.at, align 4, !tbaa !266
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load float, ptr %3, align 4, !tbaa !266
  %i.ax = fmul float %i.j, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.az = load float, ptr %i.ay, align 4, !tbaa !266
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !266
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.az, float %i.bb)
  store float %i.bc, ptr %i.ba, align 4, !tbaa !266
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1106
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !guid !1117 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca float, align 4                    ; 12 uses
  %i.e = alloca float, align 4                    ; 13 uses
  %i.f = alloca float, align 4                    ; 10 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca float, align 4                    ; 7 uses
  %i.i = alloca float, align 4                    ; 7 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 14 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 15 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %12 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %14 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.k = alloca [3 x float], align 8              ; 6 uses
  %16 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.l = alloca [3 x float], align 8              ; 6 uses
  %18 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %i.m = alloca [3 x float], align 8              ; 6 uses
  %20 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::span.195", align 8 ; 3 uses
  %22 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !273
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !322
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.n, i64 noundef %i.p) ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.60, i64 noundef 11) ; 0 uses
  %i.s = fpext float %2 to double
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, double noundef %i.s) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !274
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !280
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1118
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.aa, %bb.b ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = fpext float %3 to double                ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, double noundef %i.ac) ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.61, i64 noundef 5) ; 0 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, double noundef %i.ac) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !274
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !280
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1118
  %.not.i125 = icmp eq i64 %i.al, 0
  br i1 %.not.i125, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127: ; preds = %bb.d, %bb.e
  %.0.i126 = phi ptr [ %i.am, %bb.d ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = fpext float %5 to double
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i126, double noundef %i.ao)
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %i.ar = insertelement <2 x float> poison, float %5, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %3, i64 1 ; 2 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = insertelement <2 x float> poison, float %4, i64 0
  %i.av = insertelement <2 x float> %i.au, float %2, i64 1 ; 2 uses
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.av, <2 x float> %i.at) ; 3 uses
  %i.ax = fcmp olt <2 x float> %i.aw, splat (float 1.000000e-16) ; 3 uses
  %i.ay = extractelement <2 x i1> %i.ax, i64 1
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.az = extractelement <2 x i1> %i.ax, i64 0
  br i1 %i.az, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = extractelement <2 x float> %i.aw, i64 0
  %i.bb = call float @llvm.sqrt.f32(float %i.ba)
  %i.bc = fdiv float f0x322BCC77, %i.bb           ; 2 uses
  %i.bd = fmul float %5, %i.bc
  %i.be = fneg float %4
  %i.bf = fmul float %i.bc, %i.be
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.bg = extractelement <2 x i1> %i.ax, i64 0
  br i1 %i.bg, label %bb.i, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = extractelement <2 x float> %i.aw, i64 1
  %i.bi = call float @llvm.sqrt.f32(float %i.bh)
  %i.bj = fdiv float f0x322BCC77, %i.bi           ; 2 uses
  %i.bk = fneg float %3
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fmul float %2, %i.bj
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0170 = phi float [ %5, %bb.h ], [ %5, %bb.g ], [ %i.bm, %bb.i ], [ f0x322BCC77, %bb.f ] ; 2 uses
  %.0169 = phi float [ %4, %bb.h ], [ %4, %bb.g ], [ %i.bl, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0168 = phi float [ %3, %bb.h ], [ %i.bf, %bb.g ], [ %3, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0167 = phi float [ %2, %bb.h ], [ %i.bd, %bb.g ], [ %2, %bb.i ], [ f0x322BCC77, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  call void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %.0167, float noundef %.0168, float noundef %.0169, float noundef %.0170, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull %i.g)
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.62, i64 noundef 16) ; 0 uses
  %i.bo = load float, ptr %i.d, align 4, !tbaa !266
  %i.bp = fpext float %i.bo to double
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.bp) ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.63, i64 noundef 8) ; 0 uses
  %i.bs = load float, ptr %i.e, align 4, !tbaa !266
  %i.bt = fpext float %i.bs to double
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, double noundef %i.bt) ; 2 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.64, i64 noundef 8) ; 0 uses
  %i.bw = load float, ptr %i.f, align 4, !tbaa !266
  %i.bx = fpext float %i.bw to double
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.bx)
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %i.ca = fadd float %6, %7
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cc = load float, ptr %i.f, align 4, !tbaa !266 ; 3 uses
  %i.cd = fmul float %i.cc, f0x3EA2F983           ; 2 uses
  %i.ce = call float @llvm.copysign.f32(float 5.000000e-01, float %i.cd)
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = fptosi float %i.cf to i32               ; 2 uses
  %i.ch = sitofp i32 %i.cg to float               ; 4 uses
  %i.ci = fmul contract float %i.ch, f0x40490000
  %i.cj = fsub contract float %i.cc, %i.ci
  %i.ck = fmul contract float %i.ch, f0x3A7DA000
  %i.cl = fsub contract float %i.cj, %i.ck
  %i.cm = fmul contract float %i.ch, f0x34222000
  %i.cn = fsub contract float %i.cl, %i.cm
  %i.co = fmul contract float %i.ch, f0x2CB4611A
  %i.cp = fsub contract float %i.cn, %i.co
  %i.cq = fadd float %i.cp, f0xBFC90FDB
  %i.cr = fadd float %i.cq, f0x3FC90FDB           ; 4 uses
  %i.cs = fmul float %i.cr, %i.cr                 ; 9 uses
  %i.ct = and i32 %i.cg, 1
  %.not.i.i = icmp eq i32 %i.ct, 0                ; 2 uses
  %i.cu = fneg float %i.cr
  %.0.i.i = select i1 %.not.i.i, float %i.cr, float %i.cu ; 2 uses
  %i.cv = fmul contract float %i.cs, f0x362F0A87
  %i.cw = fadd contract float %i.cv, f0xB94FBAEB
  %i.cx = fmul contract float %i.cs, %i.cw
  %i.cy = fadd contract float %i.cx, f0x3C088777
  %i.cz = fmul contract float %i.cs, %i.cy
  %i.da = fadd contract float %i.cz, f0xBE2AAAA6
  %i.db = fmul float %.0.i.i, %i.da
  %i.dc = fmul contract float %i.cs, %i.db
  %i.dd = fadd contract float %.0.i.i, %i.dc
  %i.de = fmul contract float %i.cs, f0x3491ED89
  %i.df = fsub contract float f0x37D0078B, %i.de
  %i.dg = fmul contract float %i.cs, %i.df
  %i.dh = fadd contract float %i.dg, f0xBAB60B58
  %i.di = fmul contract float %i.cs, %i.dh
  %i.dj = fadd contract float %i.di, f0x3D2AAAAA
  %i.dk = fmul contract float %i.cs, %i.dj
  %i.dl = fadd contract float %i.dk, -5.000000e-01
  %i.dm = fmul contract float %i.cs, %i.dl
  %i.dn = fadd contract float %i.dm, 1.000000e+00 ; 2 uses
  %i.do = fneg float %i.dn
  %storemerge.i.i = select i1 %.not.i.i, float %i.dn, float %i.do
  %i.dp = load float, ptr %i.d, align 4, !tbaa !266
  %i.dq = load float, ptr %i.e, align 4, !tbaa !266
  %i.dr = insertelement <2 x float> poison, float %storemerge.i.i, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 1 ; 2 uses
  %i.dt = fcmp oge <2 x float> %i.ds, splat (float -1.000000e+00)
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.ds, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.dv = fcmp ogt <2 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du)
  %i.dx = select <2 x i1> %i.dv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dw ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %7, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = insertelement <2 x float> poison, float %6, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.dx, <2 x float> %i.eb)
  %i.ef = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.dq, i64 1
  %i.eh = fadd <2 x float> %i.eg, %i.ee           ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0 ; 3 uses
  store float %i.ei, ptr %i.d, align 4, !tbaa !266
  %i.ej = extractelement <2 x float> %i.eh, i64 1 ; 3 uses
  store float %i.ej, ptr %i.e, align 4, !tbaa !266
  %i.ek = fcmp ogt float %i.ej, %i.ei
  br i1 %i.ek, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  store float %i.ei, ptr %i.e, align 4, !tbaa !266
  store float %i.ej, ptr %i.d, align 4, !tbaa !266
  %i.el = fpext float %i.cc to double
  %i.em = fadd double %i.el, f0x3FF921FB54442D18
  %i.en = fptrunc double %i.em to float
  store float %i.en, ptr %i.f, align 4, !tbaa !266
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.j, %bb.k
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.65, i64 noundef 7) ; 0 uses
  %i.ep = fpext float %6 to double
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ep) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !274
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !280
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1118
  %.not.i128 = icmp eq i64 %i.ew, 0
  br i1 %.not.i128, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130: ; preds = %bb.l, %bb.m
  %.0.i129 = phi ptr [ %i.ex, %bb.l ], [ %i.eq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ez = fpext float %7 to double
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i129, double noundef %i.ez) ; 2 uses
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.66, i64 noundef 13) ; 0 uses
  %i.fc = load float, ptr %i.d, align 4, !tbaa !266
  %i.fd = fpext float %i.fc to double
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, double noundef %i.fd) ; 2 uses
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.63, i64 noundef 8) ; 0 uses
  %i.fg = load float, ptr %i.e, align 4, !tbaa !266
  %i.fh = fpext float %i.fg to double
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, double noundef %i.fh)
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.42, i64 noundef 2) ; 0 uses
  %i.fk = load float, ptr %i.d, align 4, !tbaa !266 ; 3 uses
  %i.fl = load float, ptr %i.e, align 4, !tbaa !266 ; 3 uses
  %i.fm = fdiv float %i.fk, %i.fl                 ; 2 uses
  %.inv.i131 = fcmp oge float %i.fm, 1.000000e+00
  %.0.i.i132 = select i1 %.inv.i131, float %i.fm, float 1.000000e+00 ; 2 uses
  %i.fn = fcmp ogt float %.0.i.i132, 1.000000e+06
  %.1.i.i = select i1 %i.fn, float 1.000000e+06, float %.0.i.i132 ; 2 uses
  %i.fo = fcmp ogt float %.1.i.i, 3.200000e+01
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130
  %i.fp = call float @llvm.fmuladd.f32(float %i.fl, float 3.200000e+01, float %i.fk)
  %i.fq = fmul float %i.fp, 5.000000e-01          ; 3 uses
  store float %i.fq, ptr %i.d, align 4, !tbaa !266
  %i.fr = fmul float %i.fq, 3.125000e-02          ; 2 uses
  store float %i.fr, ptr %i.e, align 4, !tbaa !266
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130, %bb.n
  %i.fs = phi float [ %i.fr, %bb.n ], [ %i.fl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %i.ft = phi float [ %i.fq, %bb.n ], [ %i.fk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %.0.i133 = phi float [ 3.200000e+01, %bb.n ], [ %.1.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !329
  %i.fw = and i32 %i.fv, 2
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = alloca [1024 x i8], align 16            ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  %i.ga = load float, ptr %i.f, align 4, !tbaa !266
  %i.gb = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0.i133, float noundef %i.ga, float noundef %i.ft, float noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fz, i1 noundef zeroext %i.fx, float noundef 5.000000e-01) ; 4 uses
  %i.gc = load float, ptr %i.h, align 4, !tbaa !266
  %i.gd = fmul float %i.gc, 5.000000e-01
  store float %i.gd, ptr %i.h, align 4, !tbaa !266
  %i.ge = load float, ptr %i.i, align 4, !tbaa !266
  %i.gf = fmul float %i.ge, 5.000000e-01
  store float %i.gf, ptr %i.i, align 4, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 256, i32 noundef 256, i32 noundef 3, i64 258) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 1)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i32 -2147483648, ptr %10, align 8, !tbaa !488
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gg, i8 0, i64 28, i1 false)
  %i.gh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4fillERNS0_8ImageBufENS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE4grey, i64 3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.p
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.s

bb.q:                                             ; preds = %bb.t
  %i.gk = fmul float %.0167, 1.000000e+02
  %i.gl = fptosi float %i.gk to i32
  %i.gm = add nsw i32 %i.gl, 128
  %i.gn = fmul float %.0168, 1.000000e+02
  %i.go = fptosi float %i.gn to i32
  %i.gp = sub nsw i32 128, %i.go
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE3red, ptr %11, align 8, !tbaa !1120
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.gq, align 8, !tbaa !1121
  store i32 -2147483648, ptr %12, align 8, !tbaa !488
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gr, i8 0, i64 28, i1 false)
  %i.gs = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.gm, i32 noundef %i.gp, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %11, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.s:                                             ; preds = %.preheader, %bb.t
  %.0109175 = phi i32 [ 0, %.preheader ], [ %i.gy, %bb.t ] ; 3 uses
  %i.gu = add nsw i32 %.0109175, -128
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fdiv float %i.gv, 1.000000e+02          ; 3 uses
  %i.gx = sub nuw nsw i32 255, %.0109175
  br label %bb.u

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %i.gy = add nuw nsw i32 %.0109175, 1            ; 2 uses
  %exitcond185.not = icmp eq i32 %i.gy, 256
  br i1 %exitcond185.not, label %bb.q, label %bb.s, !llvm.loop !1112

bb.u:                                             ; preds = %bb.s, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %.0108174 = phi i32 [ 0, %bb.s ], [ %i.hm, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ] ; 3 uses
  %i.gz = add nsw i32 %.0108174, -128
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = fdiv float %i.ha, 1.000000e+02          ; 3 uses
  %i.hc = load float, ptr %i.g, align 16, !tbaa !266
  %i.hd = fmul float %i.hb, %i.hc
  %i.he = load float, ptr %i.gi, align 4, !tbaa !266
end_hunk_2
