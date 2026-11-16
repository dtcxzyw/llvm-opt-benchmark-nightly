Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4pbrt18SampledWavelengths13SampleVisibleEf:bb.a
  %i.o = tail call noundef float @coshf(float noundef %i.n) #38 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = fdiv float f0x3B811979, %i.p
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit

_ZN4pbrt21VisibleWavelengthsPDFEf.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.q, %bb.b ], [ 0.000000e+00, %bb.a ]
  store float %.0.i, ptr %i.b, align 4, !tbaa !189
  %i.r = fadd float %1, 2.500000e-01              ; 3 uses
  %i.s = fcmp ogt float %i.r, 1.000000e+00
  %i.t = fadd float %i.r, -1.000000e+00
  %spec.select.1 = select i1 %i.s, float %i.t, float %i.r
  %i.u = fmul float %spec.select.1, f0x3FE9EB96
  %i.v = fsub float f0x3F5B5E7F, %i.u
  %i.w = tail call noundef float @atanhf(float noundef %i.v) #38
  %i.x = fmul float %i.w, f0x430AE38E
  %i.y = fsub float 5.380000e+02, %i.x            ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !189
  %i.aa = fcmp olt float %i.y, 3.600000e+02
  %i.ab = fcmp ogt float %i.y, 8.300000e+02
  %or.cond.i.1 = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.1, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit
  %i.ac = fadd float %i.y, -5.380000e+02
  %i.ad = fmul float %i.ac, 7.200000e-03
  %i.ae = tail call noundef float @coshf(float noundef %i.ad) #38 ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = fdiv float f0x3B811979, %i.af
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1:         ; preds = %bb.c, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit
  %.0.i.1 = phi float [ %i.ag, %bb.c ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.0.i.1, ptr %i.ah, align 4, !tbaa !189
  %i.ai = fadd float %1, 5.000000e-01             ; 3 uses
  %i.aj = fcmp ogt float %i.ai, 1.000000e+00
  %i.ak = fadd float %i.ai, -1.000000e+00
  %spec.select.2 = select i1 %i.aj, float %i.ak, float %i.ai
  %i.al = fmul float %spec.select.2, f0x3FE9EB96
  %i.am = fsub float f0x3F5B5E7F, %i.al
  %i.an = tail call noundef float @atanhf(float noundef %i.am) #38
  %i.ao = fmul float %i.an, f0x430AE38E
  %i.ap = fsub float 5.380000e+02, %i.ao          ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !189
  %i.ar = fcmp olt float %i.ap, 3.600000e+02
  %i.as = fcmp ogt float %i.ap, 8.300000e+02
  %or.cond.i.2 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.2, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1
  %i.at = fadd float %i.ap, -5.380000e+02
  %i.au = fmul float %i.at, 7.200000e-03
  %i.av = tail call noundef float @coshf(float noundef %i.au) #38 ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  %i.ax = fdiv float f0x3B811979, %i.aw
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2:         ; preds = %bb.d, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1
  %.0.i.2 = phi float [ %i.ax, %bb.d ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.1 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.0.i.2, ptr %i.ay, align 4, !tbaa !189
  %i.az = fadd float %1, 7.500000e-01             ; 3 uses
  %i.ba = fcmp ogt float %i.az, 1.000000e+00
  %i.bb = fadd float %i.az, -1.000000e+00
  %spec.select.3 = select i1 %i.ba, float %i.bb, float %i.az
  %i.bc = fmul float %spec.select.3, f0x3FE9EB96
  %i.bd = fsub float f0x3F5B5E7F, %i.bc
  %i.be = tail call noundef float @atanhf(float noundef %i.bd) #38
  %i.bf = fmul float %i.be, f0x430AE38E
  %i.bg = fsub float 5.380000e+02, %i.bf          ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !189
  %i.bi = fcmp olt float %i.bg, 3.600000e+02
  %i.bj = fcmp ogt float %i.bg, 8.300000e+02
  %or.cond.i.3 = or i1 %i.bi, %i.bj
  br i1 %or.cond.i.3, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2
  %i.bk = fadd float %i.bg, -5.380000e+02
  %i.bl = fmul float %i.bk, 7.200000e-03
  %i.bm = tail call noundef float @coshf(float noundef %i.bl) #38 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = fdiv float f0x3B811979, %i.bn
  br label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3

_ZN4pbrt21VisibleWavelengthsPDFEf.exit.3:         ; preds = %bb.e, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2
  %.0.i.3 = phi float [ %i.bo, %bb.e ], [ 0.000000e+00, %_ZN4pbrt21VisibleWavelengthsPDFEf.exit.2 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.0.i.3, ptr %i.bp, align 4, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atanhf(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @coshf(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7RGBFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef %5, float noundef %6) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load <4 x float>, ptr %i.c, align 4      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !679 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.h, 0
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.h, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.j, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  %i.o = fcmp une <4 x float> %i.d, zeroinitializer
  %i.p = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = fdiv <4 x float> %i.p, %i.d
  %i.r = select <4 x i1> %i.o, <4 x float> %i.q, <4 x float> zeroinitializer ; 5 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.t = fmul <2 x float> %i.s, %i.i              ; 2 uses
  %i.u = extractelement <4 x float> %i.r, i64 3
  %i.v = fmul float %i.u, %.sroa.8.12.vec.extract.i.i
  %i.w = shufflevector <2 x float> %i.m, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fmul <4 x float> %i.r, %i.w              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.z = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.z, 1
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = fmul <4 x float> %i.r, %i.ac            ; 4 uses
  %shift = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ad, %shift
  %shift44 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop45 = fadd <4 x float> %shift44, %foldExtExtBinop
  %shift47 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop48 = fadd <4 x float> %shift47, %foldExtExtBinop45
  %i.ae = extractelement <4 x float> %foldExtExtBinop48, i64 0
  %i.af = fmul float %i.ae, 2.500000e-01
  %shift50 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fadd <2 x float> %i.t, %shift50
  %i.ag = shufflevector <4 x float> %i.r, <4 x float> %i.x, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ah = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.x, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.aj = fmul <2 x float> %i.ag, %i.ai
  %i.ak = fadd <2 x float> %i.ag, %i.ai
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.an = shufflevector <2 x float> %foldExtExtBinop51, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ao = fadd <2 x float> %i.an, %i.al
  %i.ap = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.aq = insertelement <2 x float> %i.ap, float %i.v, i64 0
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = fmul <2 x float> %i.ar, splat (float 2.500000e-01)
  %i.at = insertelement <2 x float> poison, float %i.f, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as           ; 4 uses
  %i.aw = fmul float %i.f, %i.af                  ; 4 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.ay = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %i.ax ; 2 uses
  %i.bb = fcmp olt float %i.ba, %i.aw
  %.sroa.speculated = select i1 %i.bb, float %i.aw, float %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !1830 ; 2 uses
  %i.be = fcmp ogt float %.sroa.speculated, %i.bd ; 2 uses
  %i.bf = fdiv float %i.bd, %.sroa.speculated     ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.av, %i.bh
  %i.bj = fmul float %i.aw, %i.bf
  %.sroa.0.0 = select i1 %i.be, <2 x float> %i.bi, <2 x float> %i.av
  %.sroa.11.0 = select i1 %i.be, float %i.bj, float %i.aw
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !149 ; 2 uses
  %i.bm = sub i32 %.sroa.0.0.extract.trunc.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !150
  %i.bp = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !683
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !149
  %i.bu = sub nsw i32 %i.bt, %i.bl
  %i.bv = mul nsw i32 %i.bu, %i.bp
  %i.bw = add nsw i32 %i.bm, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [56 x i8], ptr %i.br, i64 %i.bx ; 2 uses
  %i.bz = insertelement <4 x float> poison, float %6, i64 0
  %7 = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float 1.000000e+00, i64 3
  %8 = insertelement <4 x float> %i.cb, float %.sroa.11.0, i64 2
  %9 = fmul <4 x float> %7, %8
  %i.cc = fpext <4 x float> %9 to <4 x double>
  %i.cd = load <4 x double>, ptr %i.by, align 8, !tbaa !607
  %i.ce = fadd <4 x double> %i.cd, %i.cc
  store <4 x double> %i.ce, ptr %i.by, align 8, !tbaa !607
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !189
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #38
  %i.e = load i32, ptr %0, align 8, !tbaa !297
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !221
  %.not = icmp ugt i64 %i.j, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !189
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !189
  %i.p = tail call noundef i64 @lroundf(float noundef %i.o) #38
  %i.q = load i32, ptr %0, align 8, !tbaa !297
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !221
  %.not.1 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !189
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !189
  %i.ab = tail call noundef i64 @lroundf(float noundef %i.aa) #38
  %i.ac = load i32, ptr %0, align 8, !tbaa !297
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !221
  %.not.2 = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !189
  %.sroa.6.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !189
  %i.an = tail call noundef i64 @lroundf(float noundef %i.am) #38
  %i.ao = load i32, ptr %0, align 8, !tbaa !297
  %i.ap = trunc i64 %i.an to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !221
  %.not.3 = icmp ugt i64 %i.at, %i.as
  br i1 %.not.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !189
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink30 = phi float [ %i.aw, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0.4.vec.insert17 = insertelement <2 x float> %.sroa.0.0, float %.sink, i64 1
  %.sroa.6.12.vec.insert22 = insertelement <2 x float> %.sroa.6.0, float %.sink30, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert17, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.12.vec.insert22, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #10

declare void @_ZN4pbrt11GBufferFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(872), i64, <2 x float>, <2 x float>, ptr noundef nonnull align 4 dereferenceable(32), ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt12SpectralFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(180) %0, i64 %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef %5, float noundef %6) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load <4 x float>, ptr %i.c, align 4      ; 2 uses
  %.sroa.08.0.vec.extract.i.i = extractelement <2 x float> %2, i64 0 ; 3 uses
  %.sroa.08.4.vec.extract.i.i = extractelement <2 x float> %2, i64 1 ; 2 uses
  %.sroa.39.8.vec.extract.i.i = extractelement <2 x float> %3, i64 0 ; 3 uses
  %.sroa.39.12.vec.extract.i.i = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !679 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.h, 0
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.h, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.j, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  %i.o = fcmp une <4 x float> %i.d, zeroinitializer
  %i.p = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = fdiv <4 x float> %i.p, %i.d
  %i.r = select <4 x i1> %i.o, <4 x float> %i.q, <4 x float> zeroinitializer ; 5 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.t = fmul <2 x float> %i.s, %i.i              ; 2 uses
  %i.u = extractelement <4 x float> %i.r, i64 3
  %i.v = fmul float %i.u, %.sroa.8.12.vec.extract.i.i
  %i.w = shufflevector <2 x float> %i.m, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fmul <4 x float> %i.r, %i.w              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.z = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.z, 1
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = fmul <4 x float> %i.r, %i.ac            ; 4 uses
  %shift = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ad, %shift
  %shift91 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop92 = fadd <4 x float> %shift91, %foldExtExtBinop
  %shift94 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop95 = fadd <4 x float> %shift94, %foldExtExtBinop92
  %i.ae = extractelement <4 x float> %foldExtExtBinop95, i64 0
  %i.af = fmul float %i.ae, 2.500000e-01
  %shift97 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop98 = fadd <2 x float> %i.t, %shift97
  %i.ag = shufflevector <4 x float> %i.r, <4 x float> %i.x, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ah = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.x, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.aj = fmul <2 x float> %i.ag, %i.ai
  %i.ak = fadd <2 x float> %i.ag, %i.ai
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.an = shufflevector <2 x float> %foldExtExtBinop98, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ao = fadd <2 x float> %i.an, %i.al
  %i.ap = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.aq = insertelement <2 x float> %i.ap, float %i.v, i64 0
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = fmul <2 x float> %i.ar, splat (float 2.500000e-01)
  %i.at = insertelement <2 x float> poison, float %i.f, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as           ; 4 uses
  %i.aw = fmul float %i.f, %i.af                  ; 4 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.ay = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %i.ax ; 2 uses
  %i.bb = fcmp olt float %i.ba, %i.aw
  %.sroa.speculated = select i1 %i.bb, float %i.aw, float %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !1831 ; 4 uses
  %i.be = fcmp ogt float %.sroa.speculated, %i.bd ; 2 uses
  %i.bf = fdiv float %i.bd, %.sroa.speculated     ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.av, %i.bh
  %i.bj = fmul float %i.aw, %i.bf
  %.sroa.0.0 = select i1 %i.be, <2 x float> %i.bi, <2 x float> %i.av
  %.sroa.11.0 = select i1 %i.be, float %i.bj, float %i.aw
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !149 ; 2 uses
  %i.bm = sub i32 %.sroa.0.0.extract.trunc.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !150
  %i.bp = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1832
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !149
  %i.bu = sub nsw i32 %i.bt, %i.bl
  %i.bv = mul nsw i32 %i.bu, %i.bp
  %i.bw = add nsw i32 %i.bm, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [80 x i8], ptr %i.br, i64 %i.bx ; 4 uses
  %i.bz = insertelement <4 x float> poison, float %6, i64 0
  %7 = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float 1.000000e+00, i64 3
  %8 = insertelement <4 x float> %i.cb, float %.sroa.11.0, i64 2
  %9 = fmul <4 x float> %7, %8
  %i.cc = fpext <4 x float> %9 to <4 x double>
  %i.cd = load <4 x double>, ptr %i.by, align 8, !tbaa !607
  %i.ce = fadd <4 x double> %i.cd, %i.cc
  store <4 x double> %i.ce, ptr %i.by, align 8, !tbaa !607
  %i.cf = fcmp olt float %.sroa.08.0.vec.extract.i.i, %.sroa.08.4.vec.extract.i.i
  %.sroa.speculated.i = select i1 %i.cf, float %.sroa.08.4.vec.extract.i.i, float %.sroa.08.0.vec.extract.i.i ; 2 uses
  %i.cg = fcmp olt float %.sroa.speculated.i, %.sroa.39.8.vec.extract.i.i
  %.sroa.speculated.1.i = select i1 %i.cg, float %.sroa.39.8.vec.extract.i.i, float %.sroa.speculated.i ; 2 uses
  %i.ch = fcmp olt float %.sroa.speculated.1.i, %.sroa.39.12.vec.extract.i.i
  %.sroa.speculated.2.i = select i1 %i.ch, float %.sroa.39.12.vec.extract.i.i, float %.sroa.speculated.1.i ; 2 uses
  %i.ci = fcmp ogt float %.sroa.speculated.2.i, %i.bd
  br i1 %i.ci, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.cj = fdiv float %i.bd, %.sroa.speculated.2.i
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x float> %2, %i.cl              ; 2 uses
  %i.cn = fmul <2 x float> %3, %i.cl              ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cm, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.11.8.vec.extract78.pre-phi = phi float [ %i.co, %bb.a ], [ %.sroa.39.8.vec.extract.i.i, %.lr.ph.i.i ]
  %.sroa.059.0.vec.extract62.pre-phi = phi float [ %i.cp, %bb.a ], [ %.sroa.08.0.vec.extract.i.i, %.lr.ph.i.i ]
  %.sroa.11.088 = phi <2 x float> [ %i.cn, %bb.a ], [ %3, %.lr.ph.i.i ]
  %.sroa.059.0 = phi <2 x float> [ %i.cm, %bb.a ], [ %2, %.lr.ph.i.i ]
  %i.cq = fpext float %6 to double                ; 4 uses
  %i.cr = fmul float %6, f0x42D5B6BB              ; 4 uses
  %i.cs = fmul float %i.cr, %.sroa.059.0.vec.extract62.pre-phi
  %.sroa.059.4.vec.extract71 = extractelement <2 x float> %.sroa.059.0, i64 1
  %i.ct = fmul float %i.cr, %.sroa.059.4.vec.extract71
  %i.cu = fmul float %i.cr, %.sroa.11.8.vec.extract78.pre-phi
  %.sroa.11.12.vec.extract85 = extractelement <2 x float> %.sroa.11.088, i64 1
  %i.cv = fmul float %i.cr, %.sroa.11.12.vec.extract85
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !1833 ; 2 uses
  %i.cy = sitofp i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = load float, ptr %i.cz, align 8, !tbaa !255 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dc = load float, ptr %i.db, align 4, !tbaa !256
  %i.dd = fsub float %i.dc, %i.da
  %i.de = add nsw i32 %i.cx, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1836 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1837 ; 4 uses
  %i.dj = fpext float %i.cs to double
  %i.dk = fpext float %i.ct to double
  %i.dl = load <2 x float>, ptr %4, align 4, !tbaa !189
  %i.dm = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fsub <2 x float> %i.dl, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = fmul <2 x float> %i.do, %i.dq
  %i.ds = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x float> %i.dr, %i.dt
  %i.dv = fptosi <2 x float> %i.du to <2 x i32>   ; 2 uses
  %i.dw = icmp slt <2 x i32> %i.dv, zeroinitializer
  %i.dx = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %i.dy = shufflevector <2 x i32> %i.dx, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dv, <2 x i32> %i.dy)
  %i.ea = select <2 x i1> %i.dw, <2 x i32> zeroinitializer, <2 x i32> %i.dz ; 2 uses
  %i.eb = extractelement <2 x i32> %i.ea, i64 0
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ec ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !607
  %i.ef = fadd double %i.ee, %i.dj
  store double %i.ef, ptr %i.ed, align 8, !tbaa !607
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ec ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !607
  %i.ei = fadd double %i.eh, %i.cq
  store double %i.ei, ptr %i.eg, align 8, !tbaa !607
  %i.ej = extractelement <2 x i32> %i.ea, i64 1
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.ek ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !607
  %i.en = fadd double %i.em, %i.dk
  store double %i.en, ptr %i.el, align 8, !tbaa !607
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ek ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !607
  %i.eq = fadd double %i.ep, %i.cq
  store double %i.eq, ptr %i.eo, align 8, !tbaa !607
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.es = fpext float %i.cu to double
  %i.et = fpext float %i.cv to double
  %i.eu = load <2 x float>, ptr %i.er, align 4, !tbaa !189
  %i.ev = fsub <2 x float> %i.eu, %i.dn
  %i.ew = fmul <2 x float> %i.ev, %i.dq
  %i.ex = fdiv <2 x float> %i.ew, %i.dt
  %i.ey = fptosi <2 x float> %i.ex to <2 x i32>   ; 2 uses
  %i.ez = icmp slt <2 x i32> %i.ey, zeroinitializer
  %i.fa = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ey, <2 x i32> %i.dy)
  %i.fb = select <2 x i1> %i.ez, <2 x i32> zeroinitializer, <2 x i32> %i.fa ; 2 uses
  %i.fc = extractelement <2 x i32> %i.fb, i64 0
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !607
  %i.fg = fadd double %i.ff, %i.es
  store double %i.fg, ptr %i.fe, align 8, !tbaa !607
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fd ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !607
  %i.fj = fadd double %i.fi, %i.cq
  store double %i.fj, ptr %i.fh, align 8, !tbaa !607
  %i.fk = extractelement <2 x i32> %i.fb, i64 1
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fl ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !607
  %i.fo = fadd double %i.fn, %i.et
  store double %i.fo, ptr %i.fm, align 8, !tbaa !607
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.fl ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !607
  %i.fr = fadd double %i.fq, %i.cq
  store double %i.fr, ptr %i.fp, align 8, !tbaa !607
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt4$_268__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL18nIntersectionTestsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  tail call void @_ZN4pbrt16StatsAccumulator13ReportCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.134, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !145
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZN4pbrt4$_278__invokeERNS_16StatsAccumulatorE"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL12nShadowTestsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !145
  tail call void @_ZN4pbrt16StatsAccumulator13ReportCounterEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !145
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef byval(%"class.pbrt::Point3fi") align 8 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #14 comdat {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i)
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i)
  %i.c = tail call noundef float @llvm.fabs.f32(float %2) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !684 ; 2 uses
  %i.j = load float, ptr %i.g, align 8, !tbaa !685 ; 2 uses
  %i.k = fsub float %i.i, %i.j
  %i.l = fmul float %i.k, 5.000000e-01            ; 2 uses
  %i.m = fmul float %i.c, %i.l                    ; 2 uses
  %i.n = fneg float %i.m
  %i.o = tail call noundef float @llvm.fma.f32(float %i.c, float %i.l, float %i.n)
  %.sroa.04.0.vec.extract.i76 = extractelement <2 x float> %3, i64 0
  %.sroa.04.4.vec.extract.i78 = extractelement <2 x float> %3, i64 1
  %i.p = fmul float %2, %4                        ; 2 uses
  %i.q = tail call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i, float %.sroa.04.4.vec.extract.i78, float %i.p)
  %i.r = fneg float %i.p
  %i.s = tail call noundef float @llvm.fma.f32(float %2, float %4, float %i.r)
  %i.t = fadd float %i.q, %i.s
  %i.u = tail call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i, float %.sroa.04.0.vec.extract.i76, float %i.t)
  %i.v = fcmp olt float %i.u, 0.000000e+00        ; 2 uses
  %i.w = fadd float %i.i, %i.j
  %i.x = fmul float %i.w, 5.000000e-01
  %i.y = load <4 x float>, ptr %0, align 8, !tbaa !189 ; 3 uses
  %i.z = load float, ptr %i.f, align 4, !tbaa !684
  %i.aa = load float, ptr %i.e, align 8, !tbaa !685
  %i.ab = load float, ptr %i.d, align 4, !tbaa !684
  %i.ac = extractelement <4 x float> %i.y, i64 0
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = fsub float %i.z, %i.aa
  %i.ag = fmul float %i.af, 5.000000e-01
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.b, float %i.ag, float %i.m)
  %i.ai = fadd float %i.ah, %i.o
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.a, float %i.ae, float %i.ai) ; 2 uses
  %i.ak = fmul float %2, %i.aj                    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %1, %i.am              ; 2 uses
  %i.ao = fneg <2 x float> %i.an
  %i.ap = fneg float %i.ak
  %.sroa.11.0 = select i1 %i.v, float %i.ap, float %i.ak ; 3 uses
  %.sroa.0106.0 = select i1 %i.v, <2 x float> %i.ao, <2 x float> %i.an ; 3 uses
  %i.aq = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.as = fadd <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %i.as, splat (float 5.000000e-01)
  %.sroa.03.0.vec.extract.i83 = extractelement <2 x float> %.sroa.0106.0, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i84 = extractelement <2 x float> %.sroa.0106.0, i64 1 ; 2 uses
  %i.au = fadd <2 x float> %i.at, %.sroa.0106.0   ; 4 uses
  %i.av = fadd float %i.x, %.sroa.11.0            ; 7 uses
end_hunk_0
