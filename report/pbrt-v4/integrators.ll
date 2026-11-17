Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4pbrt13ZSobolSampler5Get1DEv:bb.a

bb.e:                                             ; preds = %bb.d, %.lr.ph.i9
  %.1.i11 = phi i32 [ %i.kt, %bb.d ], [ %.0914.i, %.lr.ph.i9 ] ; 2 uses
  %i.ku = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  %.not.i13 = icmp eq i64 %i.ku, 0
  br i1 %.not.i13, label %._crit_edge.loopexit.i, label %.lr.ph.i9, !llvm.loop !24

bb.f:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i43, label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit, label %.lr.ph.i17

._crit_edge.loopexit.i25:                         ; preds = %bb.h
  %i.kv = xor i32 %.1.i22, %i.km
  br label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit

.lr.ph.i17:                                       ; preds = %bb.f, %bb.h
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i23, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.0914.i19 = phi i32 [ %.1.i22, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.01013.i20 = phi i64 [ %i.la, %bb.h ], [ %.1.i, %bb.f ] ; 2 uses
  %i.kw = and i64 %.01013.i20, 1
  %.not11.i21 = icmp eq i64 %i.kw, 0
  br i1 %.not11.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i17
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i18
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !49
  %i.kz = xor i32 %i.ky, %.0914.i19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i17
  %.1.i22 = phi i32 [ %i.kz, %bb.g ], [ %.0914.i19, %.lr.ph.i17 ] ; 2 uses
  %i.la = ashr i64 %.01013.i20, 1                 ; 2 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i18, 1
  %.not.i24 = icmp eq i64 %i.la, 0
  br i1 %.not.i24, label %._crit_edge.loopexit.i25, label %.lr.ph.i17, !llvm.loop !25

_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit: ; preds = %bb.f, %._crit_edge.loopexit.i25
  %.09.lcssa.i27 = phi i32 [ %i.km, %bb.f ], [ %i.kv, %._crit_edge.loopexit.i25 ]
  %i.lb = uitofp i32 %.09.lcssa.i27 to float
  %i.lc = fmul nnan float %i.lb, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

bb.i:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i43, label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, label %.lr.ph.i31

._crit_edge.loopexit.i39:                         ; preds = %bb.k
  %i.ld = tail call i32 @llvm.bitreverse.i32(i32 %.1.i36)
  br label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit

.lr.ph.i31:                                       ; preds = %bb.i, %bb.k
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i37, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.0914.i33 = phi i32 [ %.1.i36, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.01013.i34 = phi i64 [ %i.li, %bb.k ], [ %.1.i, %bb.i ] ; 2 uses
  %i.le = and i64 %.01013.i34, 1
  %.not11.i35 = icmp eq i64 %i.le, 0
  br i1 %.not11.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i31
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i32
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !49
  %i.lh = xor i32 %i.lg, %.0914.i33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i31
  %.1.i36 = phi i32 [ %i.lh, %bb.j ], [ %.0914.i33, %.lr.ph.i31 ] ; 2 uses
  %i.li = ashr i64 %.01013.i34, 1                 ; 2 uses
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i32, 1
  %.not.i38 = icmp eq i64 %i.li, 0
  br i1 %.not.i38, label %._crit_edge.loopexit.i39, label %.lr.ph.i31, !llvm.loop !26

_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit: ; preds = %bb.i, %._crit_edge.loopexit.i39
  %.09.lcssa.i41 = phi i32 [ 0, %bb.i ], [ %i.ld, %._crit_edge.loopexit.i39 ] ; 2 uses
  %i.lj = mul i32 %.09.lcssa.i41, 1025551850
  %i.lk = xor i32 %i.lj, %.09.lcssa.i41
  %i.ll = add i32 %i.lk, %i.km
  %i.lm = lshr i32 %i.km, 16
  %i.ln = or i32 %i.lm, 1
  %i.lo = mul i32 %i.ll, %i.ln                    ; 2 uses
  %i.lp = mul i32 %i.lo, 89287766
  %i.lq = xor i32 %i.lp, %i.lo                    ; 2 uses
  %i.lr = mul i32 %i.lq, 1403136100
  %i.ls = xor i32 %i.lr, %i.lq
  %i.lt = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ls)
  %i.lu = uitofp i32 %i.lt to float
  %i.lv = fmul nnan float %i.lu, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

bb.l:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i43, label %._crit_edge.i53, label %.lr.ph.i45

._crit_edge.i53:                                  ; preds = %bb.p, %bb.l
  %.09.lcssa.i54 = phi i32 [ 0, %bb.l ], [ %.1.i50, %bb.p ]
  %i.lw = shl i32 %i.km, 31
  %spec.select.i.i = xor i32 %.09.lcssa.i54, %i.lw
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %._crit_edge.i53
  %.013.i.i = phi i32 [ 1, %._crit_edge.i53 ], [ %i.ng, %bb.n ] ; 8 uses
  %.112.i.i = phi i32 [ %spec.select.i.i, %._crit_edge.i53 ], [ %.2.i.i.1, %bb.n ] ; 2 uses
  %i.lx = sub nuw nsw i32 32, %.013.i.i
  %i.ly = shl nsw i32 -1, %i.lx
  %i.lz = and i32 %i.ly, %.112.i.i
  %i.ma = xor i32 %i.lz, %i.km
  %i.mb = zext i32 %i.ma to i64                   ; 2 uses
  %i.mc = lshr i64 %i.mb, 31
  %i.md = xor i64 %i.mc, %i.mb
  %i.me = mul i64 %i.md, 9202493588570546565      ; 2 uses
  %i.mf = lshr i64 %i.me, 27
  %i.mg = xor i64 %i.mf, %i.me
  %i.mh = mul i64 %i.mg, -9089707755183418291     ; 2 uses
  %i.mi = lshr i64 %i.mh, 33
  %i.mj = xor i64 %i.mi, %i.mh
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = shl nuw i32 1, %.013.i.i
  %i.mm = and i32 %i.ml, %i.mk
  %.not11.i.i = icmp eq i32 %i.mm, 0
  %i.mn = lshr exact i32 -2147483648, %.013.i.i
  %i.mo = select i1 %.not11.i.i, i32 0, i32 %i.mn
  %.2.i.i = xor i32 %i.mo, %.112.i.i              ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.013.i.i, 31
  br i1 %exitcond.not.i.i, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.mp = ashr exact i32 -2147483648, %.013.i.i
  %i.mq = and i32 %i.mp, %.2.i.i
  %i.mr = xor i32 %i.mq, %i.km
  %i.ms = zext i32 %i.mr to i64                   ; 2 uses
  %i.mt = lshr i64 %i.ms, 31
  %i.mu = xor i64 %i.mt, %i.ms
  %i.mv = mul i64 %i.mu, 9202493588570546565      ; 2 uses
  %i.mw = lshr i64 %i.mv, 27
  %i.mx = xor i64 %i.mw, %i.mv
  %i.my = mul i64 %i.mx, -9089707755183418291     ; 2 uses
  %i.mz = lshr i64 %i.my, 33
  %i.na = xor i64 %i.mz, %i.my
  %i.nb = trunc i64 %i.na to i32
  %i.nc = shl nuw i32 2, %.013.i.i
  %i.nd = and i32 %i.nc, %i.nb
  %.not11.i.i.1 = icmp eq i32 %i.nd, 0
  %i.ne = lshr exact i32 1073741824, %.013.i.i
  %i.nf = select i1 %.not11.i.i.1, i32 0, i32 %i.ne
  %.2.i.i.1 = xor i32 %i.nf, %.2.i.i
  %i.ng = add nuw nsw i32 %.013.i.i, 2
  br label %bb.m

.lr.ph.i45:                                       ; preds = %bb.l, %bb.p
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i51, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.0914.i47 = phi i32 [ %.1.i50, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.01013.i48 = phi i64 [ %i.nl, %bb.p ], [ %.1.i, %bb.l ] ; 2 uses
  %i.nh = and i64 %.01013.i48, 1
  %.not11.i49 = icmp eq i64 %i.nh, 0
  br i1 %.not11.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i45
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i46
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !49
  %i.nk = xor i32 %i.nj, %.0914.i47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i45
  %.1.i50 = phi i32 [ %i.nk, %bb.o ], [ %.0914.i47, %.lr.ph.i45 ] ; 2 uses
  %i.nl = ashr i64 %.01013.i48, 1                 ; 2 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i46, 1
  %.not.i52 = icmp eq i64 %i.nl, 0
  br i1 %.not.i52, label %._crit_edge.i53, label %.lr.ph.i45, !llvm.loop !27

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit: ; preds = %bb.m
  %i.nm = uitofp i32 %.2.i.i to float
  %i.nn = fmul nnan float %i.nm, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit

_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit: ; preds = %._crit_edge.loopexit.i, %bb.c, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit
  %.sink65 = phi float [ %i.nn, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit ], [ %i.lv, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit ], [ %i.lc, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit ], [ 0.000000e+00, %bb.c ], [ %i.kp, %._crit_edge.loopexit.i ] ; 2 uses
  %i.no = fcmp ogt float %.sink65, f0x3F7FFFFF
  %.sroa.speculated.i55 = select i1 %i.no, float f0x3F7FFFFF, float %.sink65
  ret float %.sroa.speculated.i55
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt18SampledWavelengths13SampleVisibleEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SampledWavelengths") align 4 %0, float noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = fadd float %1, 0.000000e+00              ; 2 uses
  %i.d = fcmp ogt float %1, 1.000000e+00
  %i.e = fadd float %i.c, -1.000000e+00
  %spec.select = select i1 %i.d, float %i.e, float %i.c
  %i.f = fmul float %spec.select, f0x3FE9EB96
  %i.g = fsub float f0x3F5B5E7F, %i.f
  %i.h = tail call noundef float @atanhf(float noundef %i.g) #38
  %i.i = fmul float %i.h, f0x430AE38E
  %i.j = fsub float 5.380000e+02, %i.i            ; 4 uses
  store float %i.j, ptr %0, align 4, !tbaa !189
  %i.k = fcmp olt float %i.j, 3.600000e+02
  %i.l = fcmp ogt float %i.j, 8.300000e+02
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %_ZN4pbrt21VisibleWavelengthsPDFEf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fadd float %i.j, -5.380000e+02
  %i.n = fmul float %i.m, 7.200000e-03
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
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.cb = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float %.sroa.11.0, i64 2
  %i.cd = fmul <4 x float> %i.ca, %i.cc
  %i.ce = insertelement <4 x float> %i.cd, float %6, i64 3
  %i.cf = fpext <4 x float> %i.ce to <4 x double>
  %i.cg = load <4 x double>, ptr %i.by, align 8, !tbaa !607
  %i.ch = fadd <4 x double> %i.cg, %i.cf
  store <4 x double> %i.ch, ptr %i.by, align 8, !tbaa !607
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
end_hunk_0
begin_hunk_1_@_ZNK4pbrt23DiffuseTransmissionBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE:bb.a
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ad) ; 2 uses
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = fcmp ogt <2 x float> %i.ai, %shift
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = fdiv float %i.ae, %i.af
  %i.am = fmul float %i.al, f0x3F490FDB
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = fdiv float %i.af, %i.ae
  %i.ao = fmul float %i.an, f0x3F490FDB
  %i.ap = fsub float f0x3FC90FDB, %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.024.i.i = phi float [ %i.am, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %.0.i.i = phi float [ %i.af, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aq = tail call noundef float @cosf(float noundef %.024.i.i) #38
  %i.ar = tail call noundef float @sinf(float noundef %.024.i.i) #38
  %i.as = fmul float %.0.i.i, %i.aq
  %i.at = fmul float %.0.i.i, %i.ar
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.at, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.d, %bb.h
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.h ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.au = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = fsub float 1.000000e+00, %i.av
  %i.ax = extractelement <2 x float> %i.au, i64 1
  %i.ay = fsub float %i.aw, %i.ax                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.az, float %i.ay, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.ba = fcmp olt float %3, 0.000000e+00
  %i.bb = fneg float %sqrt.i.i
  %spec.select77 = select i1 %i.ba, float %i.bb, float %sqrt.i.i ; 2 uses
  %i.bc = tail call float @llvm.fabs.f32(float %sqrt.i.i)
  %i.bd = fmul float %i.bc, f0x3EA2F983
  %i.be = fmul float %spec.select, %i.bd
  %i.bf = fdiv float %i.be, %i.z
  %i.bg = fmul float %3, %spec.select77
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00      ; 2 uses
  %.sroa.0.0.copyload.i17.i = load <2 x float>, ptr %i.k, align 4
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %1, align 4
  %.sink.i = select i1 %i.bh, i64 8, i64 24
  %.sroa.0.0.copyload.i17.sink32.i = select i1 %i.bh, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i17.i
  %.sroa.6.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i
  %.sroa.6.0.copyload.i19.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i18.i, align 4, !tbaa !47
  %i.bi = fmul <2 x float> %.sroa.0.0.copyload.i17.sink32.i, splat (float f0x3EA2F983)
  %i.bj = fmul <2 x float> %.sroa.6.0.copyload.i19.i, splat (float f0x3EA2F983)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.bk, align 4, !tbaa !379
  store <2 x float> %i.bi, ptr %0, align 4
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bj, ptr %.sroa.4116.0..sroa_idx, align 4
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i, ptr %.sroa.5117.0..sroa_idx, align 4
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select77, ptr %.sroa.6118.0..sroa_idx, align 4
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bf, ptr %.sroa.7119.0..sroa_idx, align 4
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %.sroa.8120.0..sroa_idx, align 4
  %.sroa.9121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9121.0..sroa_idx, align 4
  %.sroa.10122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10122.0..sroa_idx, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.bn = fcmp ogt float %i.bl, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = fdiv float %i.ae, %i.af
  %i.bp = fmul float %i.bo, f0x3F490FDB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bq = fdiv float %i.af, %i.ae
  %i.br = fmul float %i.bq, f0x3F490FDB
  %i.bs = fsub float f0x3FC90FDB, %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.024.i.i85 = phi float [ %i.bp, %bb.k ], [ %i.bs, %bb.l ] ; 2 uses
  %.0.i.i86 = phi float [ %i.af, %bb.k ], [ %i.ae, %bb.l ] ; 2 uses
  %i.bt = tail call noundef float @cosf(float noundef %.024.i.i85) #38
  %i.bu = tail call noundef float @sinf(float noundef %.024.i.i85) #38
  %i.bv = fmul float %.0.i.i86, %i.bt
  %i.bw = fmul float %.0.i.i86, %i.bu
  %.sroa.0.0.vec.insert.i.i29.i.i87 = insertelement <2 x float> poison, float %i.bv, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i88 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i87, float %i.bw, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96: ; preds = %bb.i, %bb.m
  %.sroa.035.0.i.i89 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i88, %bb.m ], [ zeroinitializer, %bb.i ] ; 3 uses
  %i.bx = fmul <2 x float> %.sroa.035.0.i.i89, %.sroa.035.0.i.i89 ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fsub float 1.000000e+00, %i.by
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = fsub float %i.bz, %i.ca                 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, 0.000000e+00
  %.sroa.speculated.i.i92 = select i1 %i.cc, float %i.cb, float 0.000000e+00
  %sqrt.i.i93 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i92) ; 3 uses
  %i.cd = fcmp ogt float %3, 0.000000e+00
  %i.ce = fneg float %sqrt.i.i93
  %spec.select78 = select i1 %i.cd, float %i.ce, float %sqrt.i.i93 ; 2 uses
  %i.cf = tail call float @llvm.fabs.f32(float %sqrt.i.i93)
  %i.cg = fmul float %i.cf, f0x3EA2F983
  %i.ch = fmul float %.075, %i.cg
  %i.ci = fdiv float %i.ch, %i.z
  %i.cj = fmul float %3, %spec.select78
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00      ; 2 uses
  %.sroa.0.0.copyload.i17.i97 = load <2 x float>, ptr %i.k, align 4
  %.sroa.0.0.copyload.i.i98 = load <2 x float>, ptr %1, align 4
  %.sink.i99 = select i1 %i.ck, i64 8, i64 24
  %.sroa.0.0.copyload.i17.sink32.i100 = select i1 %i.ck, <2 x float> %.sroa.0.0.copyload.i.i98, <2 x float> %.sroa.0.0.copyload.i17.i97
  %.sroa.6.0..sroa_idx.i18.i101 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i99
  %.sroa.6.0.copyload.i19.i102 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i18.i101, align 4, !tbaa !47
  %i.cl = fmul <2 x float> %.sroa.0.0.copyload.i17.sink32.i100, splat (float f0x3EA2F983)
  %i.cm = fmul <2 x float> %.sroa.6.0.copyload.i19.i102, splat (float f0x3EA2F983)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.cn, align 4, !tbaa !379
  store <2 x float> %i.cl, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cm, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i89, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select78, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ci, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 6, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96, %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.128") align 4, ptr noundef nonnull align 4 dereferenceable(60), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #11 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.128") align 4, ptr noundef nonnull align 4 dereferenceable(84), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #11 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.128") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !1968 ; 4 uses
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %..i.i = select i1 %i.c, float 1.000000e+00, float %i.a ; 5 uses
  %i.d = fmul float %..i.i, %..i.i
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = fmul float %i.b, %i.b
  %i.g = fdiv float %i.e, %i.f                    ; 2 uses
  %i.h = fcmp ult float %i.g, 1.000000e+00
  br i1 %i.h, label %_ZN4pbrt12FrDielectricEff.exit, label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %bb.a
  %i.i = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.j, float %i.i, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.k = fmul float %..i.i, %i.b                  ; 2 uses
  %i.l = fsub float %i.k, %sqrt.i.i
  %i.m = fadd float %i.k, %sqrt.i.i
  %i.n = fdiv float %i.l, %i.m                    ; 2 uses
  %i.o = fmul float %i.b, %sqrt.i.i               ; 2 uses
  %i.p = fsub float %..i.i, %i.o
  %i.q = fadd float %..i.i, %i.o
  %i.r = fdiv float %i.p, %i.q                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fmul float %i.r, %i.r
  %i.u = fadd float %i.s, %i.t
  %i.v = fmul float %i.u, 5.000000e-01            ; 7 uses
  %i.w = fsub float 1.000000e+00, %i.v            ; 3 uses
  %i.x = fcmp olt float %i.v, 1.000000e+00
  br i1 %i.x, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.thread

bb.b:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  %i.y = fmul float %i.w, %i.w
  %i.z = fmul float %i.v, %i.y
  %i.aa = fmul nnan float %i.v, %i.v
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = fdiv float %i.z, %i.ab
  %i.ad = fadd float %i.v, %i.ac                  ; 2 uses
  %i.ae = fsub float 1.000000e+00, %i.ad
  br label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit.thread:            ; preds = %bb.a, %bb.b, %_ZN4pbrt12FrDielectricEff.exit
  %.055 = phi float [ %i.ae, %bb.b ], [ %i.w, %_ZN4pbrt12FrDielectricEff.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.0 = phi float [ %i.ad, %bb.b ], [ %i.v, %_ZN4pbrt12FrDielectricEff.exit ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.af = and i32 %7, 1
  %.not = icmp eq i32 %i.af, 0
  %spec.select = select i1 %.not, float 0.000000e+00, float %.0 ; 3 uses
  %i.ag = and i32 %7, 2
  %.not60 = icmp eq i32 %i.ag, 0
  %.057 = select i1 %.not60, float 0.000000e+00, float %.055 ; 3 uses
  %i.ah = fcmp oeq float %spec.select, 0.000000e+00
  %i.ai = fcmp oeq float %.057, 0.000000e+00
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  %i.aj = fadd float %.057, %spec.select          ; 2 uses
  %i.ak = fdiv float %spec.select, %i.aj          ; 2 uses
  %i.al = fcmp olt float %4, %i.ak
  %i.am = fneg <2 x float> %2                     ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = fdiv float %.0, %i.a
  %.sroa.076.0.vec.insert = insertelement <2 x float> poison, float %i.an, i64 0
  %.sroa.076.4.vec.insert = shufflevector <2 x float> %.sroa.076.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.ao, align 4, !tbaa !379
  store <2 x float> %.sroa.076.4.vec.insert, ptr %0, align 4
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.076.4.vec.insert, ptr %.sroa.468.0..sroa_idx, align 4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.569.0..sroa_idx, align 4
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.670.0..sroa_idx, align 4
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ak, ptr %.sroa.771.0..sroa_idx, align 4
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 17, ptr %.sroa.872.0..sroa_idx, align 4
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.973.0..sroa_idx, align 4
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.1074.0..sroa_idx, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fneg float %3
  %i.aq = fdiv float %.055, %i.a
  %.sroa.063.0.vec.insert = insertelement <2 x float> poison, float %i.aq, i64 0
  %.sroa.063.4.vec.insert = shufflevector <2 x float> %.sroa.063.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv float %.057, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.as, align 4, !tbaa !379
  store <2 x float> %.sroa.063.4.vec.insert, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.063.4.vec.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ap, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ar, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 18, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

declare void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.128") align 4, ptr noundef nonnull align 4 dereferenceable(76), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind writable sret(%"class.pstd::optional.128") align 4, ptr noundef nonnull align 8 dereferenceable(40), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::BSDFSample") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !421
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = fmul <2 x float> %5, splat (float 2.000000e+00)
  %i.d = fadd <2 x float> %i.c, splat (float -1.000000e+00) ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %or.cond.i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fcmp ogt <2 x float> %i.i, %shift
  %i.k = extractelement <2 x i1> %i.j, i64 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv float %i.g, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv float %i.e, %i.g
  %i.o = fmul float %i.n, f0x3F490FDB
  %i.p = fsub float f0x3FC90FDB, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i.i = phi float [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i.i = phi float [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.q = tail call noundef float @cosf(float noundef %.024.i.i) #38
  %i.r = tail call noundef float @sinf(float noundef %.024.i.i) #38
  %i.s = fmul float %.0.i.i, %i.q
  %i.t = fmul float %.0.i.i, %i.r
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.t, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.c, %bb.g
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.g ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.u = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fsub float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.aa = fcmp olt float %3, 0.000000e+00
  %i.ab = fneg float %sqrt.i.i
  %spec.select = select i1 %i.aa, float %i.ab, float %sqrt.i.i ; 5 uses
  %i.ac = fmul float %3, %spec.select
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.h, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.h:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit
  %i.ae = load float, ptr %1, align 4, !tbaa !707
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fsub float 1.000000e+00, %i.ah
  %i.aj = load float, ptr %1, align 4, !tbaa !707 ; 4 uses
  %i.ak = fcmp olt float %spec.select, -1.000000e+00
  %i.al = fcmp ogt float %spec.select, 1.000000e+00
  %..i.i.i = select i1 %i.al, float 1.000000e+00, float %spec.select
  %.0.i.i.i = select i1 %i.ak, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.am = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.an = fdiv float 1.000000e+00, %i.aj
  %i.ao = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.am, float %i.an, float %i.aj ; 4 uses
  %.024.i.i37 = select i1 %i.am, float %i.ao, float %.0.i.i.i ; 5 uses
  %i.ap = fmul float %.024.i.i37, %.024.i.i37
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = fmul float %.025.i.i, %.025.i.i
  %i.as = fdiv float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.av, float %i.au, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.aw = fmul float %.024.i.i37, %.025.i.i       ; 2 uses
  %i.ax = fsub float %i.aw, %sqrt.i.i.i
  %i.ay = fadd float %i.aw, %sqrt.i.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bb = fsub float %.024.i.i37, %i.ba
  %i.bc = fadd float %.024.i.i37, %i.ba
  %i.bd = fdiv float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.az, %i.az
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %i.bg, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

end_hunk_1
begin_hunk_2_@_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE:bb.a
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = fadd float %i.bq, %i.bs
  %i.bu = extractelement <2 x float> %i.br, i64 1
  %i.bv = fadd float %i.bu, %i.bt                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bk, %i.bi ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bi, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.bz, %foldExtExtBinop180
  %i.ca = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cc = fcmp olt float %i.bv, %i.cb
  %.sroa.speculated149 = select i1 %i.cc, float %i.cb, float %i.bv
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bv) ; 2 uses
  %i.cd = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x float> %i.bp, %i.cf           ; 3 uses
  %i.ch = load <2 x i16>, ptr %0, align 4, !tbaa !590
  %i.ci = uitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = fdiv nnan <2 x float> %i.ci, splat (float 6.553500e+04)
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %i.ck, splat (float -1.000000e+00) ; 3 uses
  %i.cm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cm, %shift184
  %i.cn = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.co = fsub float 1.000000e+00, %i.cn          ; 4 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cm
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.cl)
  %i.ct = fmul nnan <2 x float> %i.cs, %i.cr
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.ct, %bb.b ], [ %i.cl, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cu = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.cu, %shift187
  %i.cv = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cw = fmul float %i.co, %i.co
  %i.cx = fadd float %i.cw, %i.cv
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx) ; 2 uses
  %i.cy = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cz = fmul float %i.cd, %i.cy
  %i.da = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.co, i64 1
  %i.dc = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  %i.df = fmul <2 x float> %i.cg, %i.de           ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.cz, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = and i32 %i.z, 1073741824
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = tail call float @llvm.fabs.f32(float %i.dj)
  %spec.select = select i1 %.not, float %i.dj, float %i.dl ; 5 uses
  %i.dm = fmul float %spec.select, %spec.select
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.do, float %i.dn, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.dp = fcmp ult float %i.ap, %i.an
  %i.dq = fcmp ugt float %i.ap, %i.am
  %or.cond.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dr = shufflevector <2 x float> %i.bm, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = fcmp ugt <4 x float> %i.dr, %i.ds
  %i.du = freeze <4 x i1> %i.dt
  %i.dv = bitcast <4 x i1> %i.du to i4
  %.not206 = icmp eq i4 %i.dv, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dw = fsub float %i.ap, %i.am                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dy = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dz = fadd float %i.dx, %i.dy
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.ea = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.eb = fadd float %i.ea, %i.dz
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.eb) ; 2 uses
  %i.ec = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ed = fcmp olt float %i.bv, %i.ec
  br i1 %i.ed, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ee = phi float [ %i.ec, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ef = fsub float %i.ap, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bm, %shift198 ; 3 uses
  %i.eg = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eh = extractelement <2 x float> %i.bm, i64 1
  %i.ei = fsub float %i.eh, %2                    ; 3 uses
  %i.ej = fmul float %i.ef, %i.ef
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ek = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.el = fadd float %i.ej, %i.ek
  %i.em = fmul float %i.ei, %i.ei
  %i.en = fadd float %i.em, %i.el                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @llvm.sqrt.f32(float %i.en) ; 3 uses
  %i.eo = fdiv float %i.ef, %sqrt.i.i.i125        ; 2 uses
  %i.ep = fdiv float %i.eg, %sqrt.i.i.i125        ; 2 uses
  %i.eq = fdiv float %i.ei, %sqrt.i.i.i125        ; 3 uses
  %i.er = fdiv float %i.ee, %i.en
  %i.es = fsub float 1.000000e+00, %i.er          ; 2 uses
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.et, float %i.es, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = fmul float %i.ep, %i.ep
  %i.ew = fadd float %i.eu, %i.ev
  %i.ex = fmul float %i.eq, %i.eq
  %i.ey = fadd float %i.ex, %i.ew
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.ey)
  %i.ez = fdiv float %i.eq, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ez, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.fa = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.ai, i64 1 ; 2 uses
  %i.fc = fmul <2 x float> %i.fb, %i.fb
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fc ; 2 uses
  %i.fe = fcmp ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> zeroinitializer ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %sqrt.i130 = tail call noundef float @llvm.sqrt.f32(float %i.fg) ; 2 uses
  %i.fh = extractelement <2 x float> %i.ff, i64 1
  %sqrt.i132 = tail call noundef float @llvm.sqrt.f32(float %i.fh) ; 2 uses
  %i.fi = fcmp ogt float %spec.select, %i.ai      ; 2 uses
  %i.fj = fmul float %i.ai, %spec.select
  %i.fk = fmul float %sqrt.i132, %sqrt.i124
  %i.fl = fadd float %i.fj, %i.fk
  %.0.i = select i1 %i.fi, float 1.000000e+00, float %i.fl ; 2 uses
  %i.fm = fmul float %i.ai, %sqrt.i124
  %i.fn = fmul float %sqrt.i132, %spec.select
  %i.fo = fsub float %i.fm, %i.fn
  %.0.i133 = select i1 %i.fi, float 0.000000e+00, float %i.fo
  %i.fp = fcmp ogt float %.0.i, %.sroa.3.12.vec.extract
  %i.fq = fmul float %.0.i, %.sroa.3.12.vec.extract
  %i.fr = fmul float %.0.i133, %sqrt.i130
  %i.fs = fadd float %i.fq, %i.fr
  %.0.i134 = select i1 %i.fp, float 1.000000e+00, float %i.fs ; 2 uses
  %i.ft = fcmp ugt float %.0.i134, %i.al
  br i1 %i.ft, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !2011
  %i.fw = fmul float %.0.i134, %i.fv
  %i.fx = fdiv float %i.fw, %.sroa.speculated149  ; 2 uses
  %.sroa.0164.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.fy = fcmp une float %.sroa.0164.0.vec.extract, 0.000000e+00
  %.sroa.0164.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.fz = fcmp une float %.sroa.0164.4.vec.extract, 0.000000e+00
  %or.cond.i137 = select i1 %i.fy, i1 true, i1 %i.fz
  %i.ga = fcmp une float %4, 0.000000e+00
  %or.cond = select i1 %or.cond.i137, i1 true, i1 %i.ga
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.e

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.d
  %i.gb = extractelement <2 x float> %i.cg, i64 1
  %i.gc = fmul float %4, %i.gb                    ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %4, i64 1
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gd, i64 1
  %i.gi = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gf, <2 x float> %i.cg, <2 x float> %i.gh) ; 2 uses
  %shift203 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %i.gi, %shift203
  %i.gj = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.gk = tail call noundef float @llvm.fma.f32(float %.sroa.0164.0.vec.extract, float %i.cd, float %i.gj) ; 3 uses
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk) ; 2 uses
  %i.gm = fmul float %i.gk, %i.gk
  %i.gn = fsub float 1.000000e+00, %i.gm          ; 2 uses
  %i.go = fcmp ogt float %i.gn, 0.000000e+00
  %.sroa.speculated.i140 = select i1 %i.go, float %i.gn, float 0.000000e+00
  %sqrt.i141 = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i140)
  %i.gp = fcmp ogt float %i.gl, %.sroa.3.12.vec.extract
  %i.gq = fmul float %i.gl, %.sroa.3.12.vec.extract
  %i.gr = fmul float %sqrt.i141, %sqrt.i130
  %i.gs = fadd float %i.gq, %i.gr
  %.0.i142 = select i1 %i.gp, float 1.000000e+00, float %i.gs
  %i.gt = fmul float %.0.i142, %i.fx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.0170 = phi float [ %i.gt, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ], [ %i.fx, %bb.d ] ; 2 uses
  %i.gu = fcmp olt float %.0170, 0.000000e+00
  %.sroa.speculated = select i1 %i.gu, float 0.000000e+00, float %.0170
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, %bb.e
  %.0 = phi float [ %.sroa.speculated, %bb.e ], [ 0.000000e+00, %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit ]
  ret float %.0
}

declare { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr noundef nonnull align 8 dereferenceable(8), <2 x float>, float, ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNS_4BxDF10RegularizeEvEUlT_E_vNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  switch i32 %2, label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit [
    i32 8, label %bb.q
    i32 4, label %bb.m
    i32 2, label %bb.b
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !709 ; 2 uses
  %i.c = fcmp olt float %i.b, 3.000000e-01
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fmul nnan float %i.b, 2.000000e+00       ; 3 uses
  %i.e = fcmp olt float %i.d, 1.000000e-01
  %i.f = fcmp ogt float %i.d, 3.000000e-01
  %..i.i.i.i.i = select i1 %i.f, float 3.000000e-01, float %i.d
  %.0.i.i.i.i.i = select i1 %i.e, float 1.000000e-01, float %..i.i.i.i.i
  store float %.0.i.i.i.i.i, ptr %i.a, align 4, !tbaa !709
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !710 ; 2 uses
  %i.i = fcmp olt float %i.h, 3.000000e-01
  br i1 %i.i, label %bb.e, label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = fmul nnan float %i.h, 2.000000e+00       ; 3 uses
  %i.k = fcmp olt float %i.j, 1.000000e-01
  %i.l = fcmp ogt float %i.j, 3.000000e-01
  %..i2.i.i.i.i = select i1 %i.l, float 3.000000e-01, float %i.j
  %.0.i3.i.i.i.i = select i1 %i.k, float 1.000000e-01, float %..i2.i.i.i.i
  store float %.0.i3.i.i.i.i, ptr %i.g, align 4, !tbaa !710
  br label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !709 ; 2 uses
  %i.o = fcmp olt float %i.n, 3.000000e-01
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = fmul nnan float %i.n, 2.000000e+00       ; 3 uses
  %i.q = fcmp olt float %i.p, 1.000000e-01
  %i.r = fcmp ogt float %i.p, 3.000000e-01
  %..i.i.i.i.i21 = select i1 %i.r, float 3.000000e-01, float %i.p
  %.0.i.i.i.i.i22 = select i1 %i.q, float 1.000000e-01, float %..i.i.i.i.i21
  store float %.0.i.i.i.i.i22, ptr %i.m, align 4, !tbaa !709
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !710 ; 2 uses
  %i.u = fcmp olt float %i.t, 3.000000e-01
  br i1 %i.u, label %bb.i, label %_ZN4pbrt14DielectricBxDF10RegularizeEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = fmul nnan float %i.t, 2.000000e+00       ; 3 uses
  %i.w = fcmp olt float %i.v, 1.000000e-01
  %i.x = fcmp ogt float %i.v, 3.000000e-01
  %..i2.i.i.i.i19 = select i1 %i.x, float 3.000000e-01, float %i.v
  %.0.i3.i.i.i.i20 = select i1 %i.w, float 1.000000e-01, float %..i2.i.i.i.i19
  store float %.0.i3.i.i.i.i20, ptr %i.s, align 4, !tbaa !710
  br label %_ZN4pbrt14DielectricBxDF10RegularizeEv.exit.i.i

_ZN4pbrt14DielectricBxDF10RegularizeEv.exit.i.i:  ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !709 ; 2 uses
  %i.aa = fcmp olt float %i.z, 3.000000e-01
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt14DielectricBxDF10RegularizeEv.exit.i.i
  %i.ab = fmul nnan float %i.z, 2.000000e+00      ; 3 uses
  %i.ac = fcmp olt float %i.ab, 1.000000e-01
  %i.ad = fcmp ogt float %i.ab, 3.000000e-01
  %..i.i.i3.i.i = select i1 %i.ad, float 3.000000e-01, float %i.ab
  %.0.i.i.i4.i.i = select i1 %i.ac, float 1.000000e-01, float %..i.i.i3.i.i
  store float %.0.i.i.i4.i.i, ptr %i.y, align 4, !tbaa !709
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4pbrt14DielectricBxDF10RegularizeEv.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !710 ; 2 uses
  %i.ag = fcmp olt float %i.af, 3.000000e-01
  br i1 %i.ag, label %bb.l, label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = fmul nnan float %i.af, 2.000000e+00     ; 3 uses
  %i.ai = fcmp olt float %i.ah, 1.000000e-01
  %i.aj = fcmp ogt float %i.ah, 3.000000e-01
  %..i2.i.i1.i.i = select i1 %i.aj, float 3.000000e-01, float %i.ah
  %.0.i3.i.i2.i.i = select i1 %i.ai, float 1.000000e-01, float %..i2.i.i1.i.i
  store float %.0.i3.i.i2.i.i, ptr %i.ae, align 4, !tbaa !710
  br label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.m:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !709 ; 2 uses
  %i.am = fcmp olt float %i.al, 3.000000e-01
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = fmul nnan float %i.al, 2.000000e+00     ; 3 uses
  %i.ao = fcmp olt float %i.an, 1.000000e-01
  %i.ap = fcmp ogt float %i.an, 3.000000e-01
  %..i.i.i.i = select i1 %i.ap, float 3.000000e-01, float %i.an
  %.0.i.i.i.i = select i1 %i.ao, float 1.000000e-01, float %..i.i.i.i
  store float %.0.i.i.i.i, ptr %i.ak, align 4, !tbaa !709
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !710 ; 2 uses
  %i.as = fcmp olt float %i.ar, 3.000000e-01
  br i1 %i.as, label %bb.p, label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = fmul nnan float %i.ar, 2.000000e+00     ; 3 uses
  %i.au = fcmp olt float %i.at, 1.000000e-01
  %i.av = fcmp ogt float %i.at, 3.000000e-01
  %..i2.i.i.i = select i1 %i.av, float 3.000000e-01, float %i.at
  %.0.i3.i.i.i = select i1 %i.au, float 1.000000e-01, float %..i2.i.i.i
  store float %.0.i3.i.i.i, ptr %i.aq, align 4, !tbaa !710
  br label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.q:                                             ; preds = %bb.a
  %i.aw = load float, ptr %1, align 4, !tbaa !709 ; 2 uses
  %i.ax = fcmp olt float %i.aw, 3.000000e-01
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = fmul nnan float %i.aw, 2.000000e+00     ; 3 uses
  %i.az = fcmp olt float %i.ay, 1.000000e-01
  %i.ba = fcmp ogt float %i.ay, 3.000000e-01
  %..i.i.i.i.i25 = select i1 %i.ba, float 3.000000e-01, float %i.ay
  %.0.i.i.i.i.i26 = select i1 %i.az, float 1.000000e-01, float %..i.i.i.i.i25
  store float %.0.i.i.i.i.i26, ptr %1, align 4, !tbaa !709
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !710 ; 2 uses
  %i.bd = fcmp olt float %i.bc, 3.000000e-01
  br i1 %i.bd, label %bb.t, label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

bb.t:                                             ; preds = %bb.s
  %i.be = fmul nnan float %i.bc, 2.000000e+00     ; 3 uses
  %i.bf = fcmp olt float %i.be, 1.000000e-01
  %i.bg = fcmp ogt float %i.be, 3.000000e-01
  %..i2.i.i.i.i23 = select i1 %i.bg, float 3.000000e-01, float %i.be
  %.0.i3.i.i.i.i24 = select i1 %i.bf, float 1.000000e-01, float %..i2.i.i.i.i23
  store float %.0.i3.i.i.i.i24, ptr %i.bb, align 4, !tbaa !710
  br label %_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit

_ZZN4pbrt4BxDF10RegularizeEvENKUlT_E_clIPNS_17CoatedDiffuseBxDFEEEDaS1_.exit: ; preds = %bb.a, %bb.t, %bb.s, %bb.p, %bb.o, %bb.l, %bb.k, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF3PDFENS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_fNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  switch i32 %2, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
