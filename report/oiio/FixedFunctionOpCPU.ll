inline.NumInlined: 2146
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_526Renderer_ACES_RedMod10_Fwd5applyEPKvPvl:bb.a
  %i.o = fmul float %i.n, f0x3FDDB3D7
  %i.p = tail call noundef float @atan2f(float noundef %i.o, float noundef %i.m) #25, !tbaa !3
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.j, float 2.000000e+00) ; 2 uses
  %i.r = fptosi float %i.q to i32                 ; 3 uses
  %or.cond.i = icmp ult i32 %i.r, 4
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit:   ; preds = %bb.b
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZZN16OpenColorIO_v2_513CalcHueWeightEffffE2_M, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ac = load float, ptr %i.v, align 16, !tbaa !9
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ac, float %i.ab)
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ad, float %i.z)
  %i.af = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ae, float %i.x) ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit
  %i.ah = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fcmp olt <2 x float> %i.g, %i.ah
  %i.aj = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = select <2 x i1> %i.ai, <2 x float> %i.aj, <2 x float> %i.ak ; 3 uses
  %i.am = insertelement <2 x float> %i.al, float %i.e, i64 0 ; 2 uses
  %i.an = insertelement <2 x float> %i.al, float %i.e, i64 1
  %i.ao = fcmp olt <2 x float> %i.am, %i.an
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = select <2 x i1> %i.ao, <2 x float> %i.al, <2 x float> %i.ap ; 3 uses
  %i.ar = fcmp ogt <2 x float> %i.aq, splat (float 1.000000e-10)
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.aq, <2 x float> splat (float 1.000000e-10) ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x3C23D70A
  %.sroa.speculated13.i = select i1 %i.av, float %i.au, float f0x3C23D70A
  %i.aw = fdiv float %i.at, %.sroa.speculated13.i
  %i.ax = fmul float %i.aw, %i.af
  %i.ay = load float, ptr %i.c, align 4, !tbaa !21
  %i.az = fsub float %i.ay, %i.e
  %i.ba = fmul float %i.ax, %i.az
  %i.bb = load float, ptr %i.d, align 8, !tbaa !22
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bb, float %i.e)
  br label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread: ; preds = %bb.b, %bb.c, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit
  %.031 = phi float [ %i.bc, %bb.c ], [ %i.e, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit ], [ %i.e, %bb.b ]
  store float %.031, ptr %.02935, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %.02935, i64 4
  store <2 x float> %i.g, ptr %i.bd, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %.036, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %.02935, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.02935, i64 16
  %i.bj = add nuw nsw i64 %.03034, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_526Renderer_ACES_RedMod10_InvC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float 1.800000e-01, float 3.000000e-02>, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float f0x3FD94CAF, ptr %i.b, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_526Renderer_ACES_RedMod10_InvE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_526Renderer_ACES_RedMod10_Inv5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread
  %.045 = phi ptr [ %1, %.lr.ph ], [ %i.bg, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread ] ; 4 uses
  %.03844 = phi ptr [ %2, %.lr.ph ], [ %i.bh, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread ] ; 4 uses
  %.03943 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread ]
  %i.e = load float, ptr %.045, align 4, !tbaa !9 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 4 uses
  %i.i = extractelement <2 x float> %i.g, i64 0   ; 4 uses
  %i.j = load float, ptr %i.b, align 8, !tbaa !19
  %i.k = fadd float %i.i, %i.h
  %i.l = fneg float %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.e, float 2.000000e+00, float %i.l)
  %i.n = fsub float %i.i, %i.h
  %i.o = fmul float %i.n, f0x3FDDB3D7
  %i.p = tail call noundef float @atan2f(float noundef %i.o, float noundef %i.m) #25, !tbaa !3
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.j, float 2.000000e+00) ; 2 uses
  %i.r = fptosi float %i.q to i32                 ; 3 uses
  %or.cond.i = icmp ult i32 %i.r, 4
  br i1 %or.cond.i, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit:   ; preds = %bb.b
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZZN16OpenColorIO_v2_513CalcHueWeightEffffE2_M, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ac = load float, ptr %i.v, align 16, !tbaa !9
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ac, float %i.ab)
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ad, float %i.z)
  %i.af = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ae, float %i.x) ; 4 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit
  %i.ah = fcmp olt float %i.i, %i.h
  %i.ai = select i1 %i.ah, float %i.i, float %i.h ; 2 uses
  %i.aj = load float, ptr %i.c, align 8, !tbaa !22 ; 3 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aj, float -1.000000e+00) ; 2 uses
  %i.al = load float, ptr %i.d, align 4, !tbaa !21 ; 2 uses
  %i.am = fadd float %i.ai, %i.al
  %i.an = fneg float %i.am
  %i.ao = fmul float %i.af, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.aj, float %i.e) ; 3 uses
  %i.aq = fmul float %i.af, %i.al
  %i.ar = fmul float %i.ai, %i.aq
  %i.as = fneg float %i.ap
  %i.at = fmul float %i.ak, 4.000000e+00
  %i.au = fneg float %i.aj
  %i.av = fmul float %i.ar, %i.au
  %i.aw = fmul float %i.at, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.aw)
  %i.ay = tail call noundef float @sqrtf(float noundef %i.ax) #25, !tbaa !3
  %i.az = fsub float %i.as, %i.ay
  %i.ba = fmul float %i.ak, 2.000000e+00
  %i.bb = fdiv float %i.az, %i.ba
  br label %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread

_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit.thread: ; preds = %bb.b, %bb.c, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit
  %.040 = phi float [ %i.bb, %bb.c ], [ %i.e, %_ZN16OpenColorIO_v2_513CalcHueWeightEffff.exit ], [ %i.e, %bb.b ]
  store float %.040, ptr %.03844, align 4, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.03844, i64 4
  store <2 x float> %i.g, ptr %i.bc, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %.045, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %.03844, i64 12
  store float %i.be, ptr %i.bf, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.03844, i64 16
  %i.bi = add nuw nsw i64 %.03943, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_524Renderer_ACES_Glow03_FwdC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2, float noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_524Renderer_ACES_Glow03_FwdE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %3, ptr %i.b, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524Renderer_ACES_Glow03_Fwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.046 = phi ptr [ %1, %.lr.ph ], [ %i.bb, %bb.e ] ; 4 uses
  %.03945 = phi ptr [ %2, %.lr.ph ], [ %i.bc, %bb.e ] ; 4 uses
  %.04044 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.e ]
  %4 = load <2 x float>, ptr %.046, align 4, !tbaa !9 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 1       ; 8 uses
  %6 = extractelement <2 x float> %4, i64 0       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 9 uses
  %i.f = fsub float %i.e, %5
  %i.g = fsub float %5, %6
  %i.h = fmul float %5, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.f, float %i.h)
  %i.j = fsub float %6, %i.e
  %i.k = tail call float @llvm.fmuladd.f32(float %6, float %i.j, float %i.i)
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #25, !tbaa !3
  %i.m = fadd float %5, %i.e
  %i.n = fadd float %6, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float 1.750000e+00, float %i.n)
  %i.p = fdiv float %i.o, 3.000000e+00            ; 3 uses
  %i.q = fcmp olt float %i.e, %5
  %i.r = select i1 %i.q, float %i.e, float %5     ; 2 uses
  %i.s = fcmp olt float %i.r, %6
  %.sroa.speculated26.i = select i1 %i.s, float %i.r, float %6 ; 2 uses
  %i.t = fcmp olt float %5, %i.e
  %i.u = select i1 %i.t, float %i.e, float %5     ; 2 uses
  %i.v = fcmp olt float %6, %i.u
  %.sroa.speculated23.i = select i1 %i.v, float %i.u, float %6 ; 4 uses
  %i.w = fcmp ogt float %.sroa.speculated23.i, 1.000000e-10
  %.sroa.speculated8.i = select i1 %i.w, float %.sroa.speculated23.i, float 1.000000e-10
  %i.x = fcmp ogt float %.sroa.speculated26.i, 1.000000e-10
  %.sroa.speculated.i = select i1 %i.x, float %.sroa.speculated26.i, float 1.000000e-10
  %i.y = fsub float %.sroa.speculated8.i, %.sroa.speculated.i
  %i.z = fcmp ogt float %.sroa.speculated23.i, f0x3C23D70A
  %.sroa.speculated13.i = select i1 %i.z, float %.sroa.speculated23.i, float f0x3C23D70A
  %i.aa = fdiv float %i.y, %.sroa.speculated13.i
  %i.ab = fadd float %i.aa, -4.000000e-01
  %i.ac = fmul float %i.ab, 5.000000e+00          ; 2 uses
  %i.ad = tail call float @llvm.copysign.f32(float 1.000000e+00, float %i.ac) ; 2 uses
  %i.ae = fmul nnan float %i.ad, -5.000000e-01
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ac, float 1.000000e+00) ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %.sroa.speculated.i43 = select i1 %i.ag, float %i.af, float 0.000000e+00 ; 2 uses
  %i.ah = fneg float %.sroa.speculated.i43
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.speculated.i43, float 1.000000e+00)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ai, float 1.000000e+00)
  %i.ak = fmul float %i.aj, 5.000000e-01
  %i.al = load float, ptr %i.b, align 8, !tbaa !25
  %i.am = fmul float %i.al, %i.ak                 ; 2 uses
  %i.an = load float, ptr %i.c, align 4, !tbaa !27 ; 2 uses
  %i.ao = fmul float %i.an, 2.000000e+00          ; 2 uses
  %i.ap = fcmp ult float %i.p, %i.ao
  br i1 %i.ap, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aq = fdiv float %i.ao, 3.000000e+00
  %i.ar = fcmp ugt float %i.p, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = fdiv float %i.an, %i.p
  %i.at = fadd float %i.as, -5.000000e-01
  %i.au = fmul float %i.at, %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.038 = phi float [ %i.au, %bb.d ], [ 0.000000e+00, %bb.b ], [ %i.am, %bb.c ]
  %i.av = fadd float %.038, 1.000000e+00          ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.av, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul <2 x float> %4, %8
  store <2 x float> %9, ptr %.03945, align 4, !tbaa !9
  %i.aw = fmul float %i.e, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.03945, i64 8
  store float %i.aw, ptr %i.ax, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.046, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %.03945, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.03945, i64 16
  %i.bd = add nuw nsw i64 %.04044, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_524Renderer_ACES_Glow03_InvC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2, float noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %3, ptr %i.b, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_524Renderer_ACES_Glow03_InvE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524Renderer_ACES_Glow03_Inv5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.048 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %bb.f ] ; 4 uses
  %.04247 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %bb.f ] ; 4 uses
  %.04346 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %bb.f ]
  %4 = load <2 x float>, ptr %.048, align 4, !tbaa !9 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 1       ; 8 uses
  %6 = extractelement <2 x float> %4, i64 0       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 9 uses
  %i.f = fsub float %i.e, %5
  %i.g = fsub float %5, %6
  %i.h = fmul float %5, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.f, float %i.h)
  %i.j = fsub float %6, %i.e
  %i.k = tail call float @llvm.fmuladd.f32(float %6, float %i.j, float %i.i)
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #25, !tbaa !3
  %i.m = fadd float %5, %i.e
  %i.n = fadd float %6, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float 1.750000e+00, float %i.n)
  %i.p = fdiv float %i.o, 3.000000e+00            ; 3 uses
  %i.q = fcmp olt float %i.e, %5
  %i.r = select i1 %i.q, float %i.e, float %5     ; 2 uses
  %i.s = fcmp olt float %i.r, %6
  %.sroa.speculated26.i = select i1 %i.s, float %i.r, float %6 ; 2 uses
  %i.t = fcmp olt float %5, %i.e
  %i.u = select i1 %i.t, float %i.e, float %5     ; 2 uses
  %i.v = fcmp olt float %6, %i.u
  %.sroa.speculated23.i = select i1 %i.v, float %i.u, float %6 ; 4 uses
  %i.w = fcmp ogt float %.sroa.speculated23.i, 1.000000e-10
  %.sroa.speculated8.i = select i1 %i.w, float %.sroa.speculated23.i, float 1.000000e-10
  %i.x = fcmp ogt float %.sroa.speculated26.i, 1.000000e-10
  %.sroa.speculated.i = select i1 %i.x, float %.sroa.speculated26.i, float 1.000000e-10
  %i.y = fsub float %.sroa.speculated8.i, %.sroa.speculated.i
  %i.z = fcmp ogt float %.sroa.speculated23.i, f0x3C23D70A
  %.sroa.speculated13.i = select i1 %i.z, float %.sroa.speculated23.i, float f0x3C23D70A
  %i.aa = fdiv float %i.y, %.sroa.speculated13.i
  %i.ab = fadd float %i.aa, -4.000000e-01
  %i.ac = fmul float %i.ab, 5.000000e+00          ; 2 uses
  %i.ad = tail call float @llvm.copysign.f32(float 1.000000e+00, float %i.ac) ; 2 uses
  %i.ae = fmul nnan float %i.ad, -5.000000e-01
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ac, float 1.000000e+00) ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %.sroa.speculated.i45 = select i1 %i.ag, float %i.af, float 0.000000e+00 ; 2 uses
  %i.ah = fneg float %.sroa.speculated.i45
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.speculated.i45, float 1.000000e+00)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ai, float 1.000000e+00)
  %i.ak = fmul float %i.aj, 5.000000e-01
  %i.al = load float, ptr %i.b, align 8, !tbaa !25
  %i.am = fmul float %i.al, %i.ak                 ; 4 uses
  %i.an = load float, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.ao = fmul float %i.an, 2.000000e+00
  %i.ap = fcmp ult float %i.p, %i.ao
  br i1 %i.ap, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aq = fadd float %i.am, 1.000000e+00          ; 2 uses
  %i.ar = fmul float %i.an, %i.aq
  %i.as = fmul float %i.ar, 2.000000e+00
  %i.at = fdiv float %i.as, 3.000000e+00
  %i.au = fcmp ugt float %i.p, %i.at
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = fneg float %i.am
  %i.aw = fdiv float %i.av, %i.aq
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ax = fdiv float %i.an, %i.p
  %i.ay = fadd float %i.ax, -5.000000e-01
  %i.az = fmul float %i.ay, %i.am
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.am, float 5.000000e-01, float -1.000000e+00)
  %i.bb = fdiv float %i.az, %i.ba
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.041 = phi float [ %i.bb, %bb.e ], [ %i.aw, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.bc = fadd float %.041, 1.000000e+00          ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.bc, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fmul <2 x float> %4, %8
  store <2 x float> %9, ptr %.04247, align 4, !tbaa !9
  %i.bd = fmul float %i.e, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.04247, i64 8
  store float %i.bd, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %.048, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %.04247, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.04247, i64 16
  %i.bk = add nuw nsw i64 %.04346, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_529Renderer_ACES_DarkToDim10_FwdC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_529Renderer_ACES_DarkToDim10_FwdE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = fadd float %2, -1.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.a, ptr %i.b, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_529Renderer_ACES_DarkToDim10_Fwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.029 = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 4 uses
  %.02528 = phi ptr [ %2, %.lr.ph ], [ %i.o, %bb.b ] ; 4 uses
  %.02627 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ]
  %4 = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %5 = load float, ptr %4, align 4, !tbaa !9      ; 2 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !30
  %6 = load <2 x float>, ptr %.029, align 4, !tbaa !9 ; 3 uses
  %7 = extractelement <2 x float> %6, i64 1
  %i.d = fmul float %7, f0x3F2C909F
  %8 = extractelement <2 x float> %6, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %8, float f0x3E8B6190, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %5, float f0x3D5BE98A, float %i.e) ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e-10
  %.sroa.speculated = select i1 %i.g, float %i.f, float 1.000000e-10
  %i.h = tail call noundef float @powf(float noundef %.sroa.speculated, float noundef %i.c) #25, !tbaa !3 ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.h, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %6, %10
  store <2 x float> %11, ptr %.02528, align 4, !tbaa !9
  %i.i = fmul float %5, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.02528, i64 8
  store float %i.i, ptr %i.j, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %.02528, i64 12
  store float %i.l, ptr %i.m, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.02528, i64 16
  %i.p = add nuw nsw i64 %.02627, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_58compressEffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = fsub float %0, %1
  %i.b = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.a, i64 0
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %3, i64 1
  %i.e = fdiv <2 x float> %i.b, %i.d              ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.g = tail call noundef float @powf(float noundef %i.f, float noundef %3) #25, !tbaa !3
  %i.h = fmul float %2, %i.f
  %i.i = fadd float %i.g, 1.000000e+00
  %i.j = extractelement <2 x float> %i.e, i64 1
  %i.k = tail call noundef float @powf(float noundef %i.i, float noundef %i.j) #25, !tbaa !3
  %i.l = fdiv float %i.h, %i.k
  %i.m = fadd float %1, %i.l
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_510uncompressEffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = fadd float %1, %2
  %i.b = fcmp ult float %0, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fsub float %0, %1
  %i.d = fdiv float %i.c, %2
  %i.e = tail call noundef float @powf(float noundef %i.d, float noundef %3) #25, !tbaa !3 ; 2 uses
  %i.f = fadd float %i.e, -1.000000e+00
  %i.g = fneg float %i.e
  %i.h = fdiv float %i.g, %i.f
  %i.i = fdiv float 1.000000e+00, %3
  %i.j = tail call noundef float @powf(float noundef %i.h, float noundef %i.i) #25, !tbaa !3
  %i.k = tail call float @llvm.fmuladd.f32(float %2, float %i.j, float %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.k, %bb.b ], [ %0, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_529Renderer_ACES_GamutComp13_FwdC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_529Renderer_ACES_GamutComp13_FwdE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <4 x double>, ptr %i.c, align 8, !tbaa !42
  %i.f = fptrunc <4 x double> %i.e to <4 x float> ; 4 uses
  store <4 x float> %i.f, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !42
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 3 uses
  store <2 x float> %i.j, ptr %i.h, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = extractelement <4 x float> %i.f, i64 3
  %i.o = fsub float 1.000000e+00, %i.n
  %i.p = fptrunc double %i.l to float             ; 3 uses
  %i.q = insertelement <4 x float> %i.f, float %i.p, i64 3
  %i.r = shufflevector <4 x float> %i.f, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 3, i32 poison, i32 poison, i32 7>
  %i.s = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.t = shufflevector <4 x float> %i.r, <4 x float> %i.s, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.u = fsub <4 x float> %i.q, %i.t              ; 3 uses
  %i.v = extractelement <4 x float> %i.u, i64 0
  %i.w = fdiv float %i.o, %i.v
  %i.x = fneg float %i.p                          ; 3 uses
  %i.y = tail call noundef float @powf(float noundef %i.w, float noundef %i.x) #25, !tbaa !3
  %i.z = fadd float %i.y, -1.000000e+00
  %i.aa = fdiv float 1.000000e+00, %i.p           ; 3 uses
  %i.ab = tail call noundef float @powf(float noundef %i.z, float noundef %i.aa) #25, !tbaa !3
  %i.ac = fsub <2 x float> splat (float 1.000000e+00), %i.j
  %i.ad = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ae = fdiv <2 x float> %i.ac, %i.ad           ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = tail call noundef float @powf(float noundef %i.af, float noundef %i.x) #25, !tbaa !3
  %i.ah = fadd float %i.ag, -1.000000e+00
  %i.ai = tail call noundef float @powf(float noundef %i.ah, float noundef %i.aa) #25, !tbaa !3
  %i.aj = extractelement <2 x float> %i.ae, i64 1
  %i.ak = tail call noundef float @powf(float noundef %i.aj, float noundef %i.x) #25, !tbaa !3
  %i.al = fadd float %i.ak, -1.000000e+00
  %i.am = tail call noundef float @powf(float noundef %i.al, float noundef %i.aa) #25, !tbaa !3
  %i.an = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ab, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ai, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.am, i64 2
  %i.aq = fdiv <4 x float> %i.u, %i.ap
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x float> %i.ar, ptr %i.m, align 8, !tbaa !9
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_529Renderer_ACES_GamutComp13_Fwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.bx, %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24 ] ; 5 uses
  %.01834 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24 ]
  %.01933 = phi ptr [ %2, %.lr.ph ], [ %i.by, %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24 ] ; 6 uses
  %i.h = load float, ptr %.035, align 4, !tbaa !9 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.035, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !9  ; 4 uses
  %i.m = fcmp olt float %i.j, %i.l
  %i.n = select i1 %i.m, float %i.l, float %i.j   ; 2 uses
  %i.o = fcmp olt float %i.h, %i.n
  %.sroa.speculated = select i1 %i.o, float %i.n, float %i.h ; 8 uses
  %i.p = load float, ptr %i.b, align 4, !tbaa !44 ; 3 uses
  %i.q = load <2 x float>, ptr %i.c, align 8, !tbaa !9 ; 3 uses
  %i.r = fcmp oeq float %.sroa.speculated, 0.000000e+00
  br i1 %i.r, label %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fsub float %.sroa.speculated, %i.h
  %i.t = tail call noundef float @llvm.fabs.f32(float %.sroa.speculated) ; 6 uses
  %i.u = fdiv float %i.s, %i.t                    ; 2 uses
  %i.v = fcmp olt float %i.u, %i.p
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = fsub float %i.u, %i.p
  %i.x = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.w, i64 1
  %i.y = fdiv <2 x float> %i.x, %i.q              ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = extractelement <2 x float> %i.q, i64 0
  %i.ab = tail call noundef float @powf(float noundef %i.z, float noundef %i.aa) #25, !tbaa !3
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.y
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ad = fadd float %i.ab, 1.000000e+00
  %i.ae = extractelement <2 x float> %i.y, i64 0
  %i.af = tail call noundef float @powf(float noundef %i.ad, float noundef %i.ae) #25, !tbaa !3
  %i.ag = fdiv float %i.ac, %i.af
  %i.ah = fadd float %i.p, %i.ag
  %i.ai = fneg float %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.t, float %.sroa.speculated)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1.i.ph = phi float [ %i.h, %bb.c ], [ %i.aj, %bb.d ]
  store float %.1.i.ph, ptr %.01933, align 4, !tbaa !9
  %i.ak = load float, ptr %i.d, align 8, !tbaa !46 ; 3 uses
  %i.al = fsub float %.sroa.speculated, %i.j
  %i.am = fdiv float %i.al, %i.t                  ; 2 uses
  %i.an = fcmp olt float %i.am, %i.ak
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load float, ptr %i.c, align 8, !tbaa !47 ; 2 uses
  %i.ap = load float, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.aq = fsub float %i.am, %i.ak
  %i.ar = fdiv float %i.aq, %i.ap                 ; 2 uses
  %i.as = tail call noundef float @powf(float noundef %i.ar, float noundef %i.ao) #25, !tbaa !3
  %i.at = fmul float %i.ap, %i.ar
  %i.au = fadd float %i.as, 1.000000e+00
  %i.av = fdiv float 1.000000e+00, %i.ao
  %i.aw = tail call noundef float @powf(float noundef %i.au, float noundef %i.av) #25, !tbaa !3
  %i.ax = fdiv float %i.at, %i.aw
  %i.ay = fadd float %i.ak, %i.ax
  %i.az = fneg float %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.t, float %.sroa.speculated)
  br label %bb.g

_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22: ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %.01933, align 4, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_205applyEPKvPvl:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.025.i8, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9
  %i.ab = call noundef float @fmodf(float noundef %i.aa, float noundef 3.600000e+02) #25, !tbaa !3 ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fadd float %i.ab, 3.600000e+02
  %.0.i.i.i.i11 = select i1 %i.ac, float %i.ad, float %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ae = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i.i11, ptr noundef nonnull align 4 dereferenceable(1460) %i.w) ; 2 uses
  %.fca.0.extract1.i12 = extractvalue { <2 x float>, float } %i.ae, 0
  %.fca.1.extract2.i13 = extractvalue { <2 x float>, float } %i.ae, 1
  store <2 x float> %.fca.0.extract1.i12, ptr %4, align 8
  store float %.fca.1.extract2.i13, ptr %.sroa.24.0..sroa_idx.i7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.af = load <2 x float>, ptr %.025.i8, align 4, !tbaa !9
  store <2 x float> %i.af, ptr %5, align 8, !tbaa !9
  store float %.0.i.i.i.i11, ptr %i.x, align 8, !tbaa !9
  %i.ag = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_invERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(5828) %i.y) ; 2 uses
  %.fca.0.extract.i14 = extractvalue { <2 x float>, float } %i.ag, 0
  %.fca.1.extract.i15 = extractvalue { <2 x float>, float } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store <2 x float> %.fca.0.extract.i14, ptr %.02124.i9, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %.02124.i9, i64 8
  store float %.fca.1.extract.i15, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i8, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %.02124.i9, i64 12
  store float %i.aj, ptr %i.ak, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i8, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.02124.i9, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.an = add nuw nsw i64 %.02223.i10, 1          ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.an, %3
  br i1 %exitcond.not.i18, label %_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203fwdEPKvPvl.exit, label %bb.e, !llvm.loop !113

_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203fwdEPKvPvl.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7300) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.02124 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 4 uses
  %.02223 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %i.g = call noundef float @fmodf(float noundef %i.f, float noundef 3.600000e+02) #25, !tbaa !3 ; 3 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.g, 3.600000e+02
  %.0.i.i.i = select i1 %i.h, float %i.i, float %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.b) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.j, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.k = load <2 x float>, ptr %.025, align 4, !tbaa !9
  store <2 x float> %i.k, ptr %5, align 8, !tbaa !9
  store float %.0.i.i.i, ptr %i.c, align 8, !tbaa !9
  %i.l = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_fwdERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(5828) %i.d) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store <2 x float> %.fca.0.extract, ptr %.02124, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %.02124, i64 8
  store float %.fca.1.extract, ptr %i.m, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.02124, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.s = add nuw nsw i64 %.02223, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !112
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7300) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.02124 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 4 uses
  %.02223 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %i.g = call noundef float @fmodf(float noundef %i.f, float noundef 3.600000e+02) #25, !tbaa !3 ; 3 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.g, 3.600000e+02
  %.0.i.i.i = select i1 %i.h, float %i.i, float %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.b) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.j, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.k = load <2 x float>, ptr %.025, align 4, !tbaa !9
  store <2 x float> %i.k, ptr %5, align 8, !tbaa !9
  store float %.0.i.i.i, ptr %i.c, align 8, !tbaa !9
  %i.l = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_invERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(5828) %i.d) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store <2 x float> %.fca.0.extract, ptr %.02124, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %.02124, i64 8
  store float %.fca.1.extract, ptr %i.m, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.02124, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.s = add nuw nsw i64 %.02223, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_525Renderer_REC2100_SurroundC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_525Renderer_REC2100_SurroundE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = icmp eq i32 %i.c, 12                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = load double, ptr %i.f, align 8, !tbaa !42
  %i.h = fptrunc double %i.g to float             ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call float @powf(float noundef f0x38D1B717, float noundef %i.h) #25, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi float [ %i.i, %bb.b ], [ f0x38D1B717, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !114
  %i.l = fdiv float 1.000000e+00, %i.h
  %i.m = select i1 %i.d, float %i.h, float %i.l
  %i.n = fadd float %i.m, -1.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_525Renderer_REC2100_Surround5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi ptr [ %1, %.lr.ph ], [ %i.o, %bb.b ] ; 4 uses
  %.02427 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.b ] ; 4 uses
  %.02526 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ]
  %4 = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.d = load float, ptr %4, align 4, !tbaa !9    ; 2 uses
  %5 = load float, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  %i.e = load float, ptr %i.c, align 8, !tbaa !116
  %6 = load <2 x float>, ptr %.028, align 4, !tbaa !9 ; 3 uses
  %7 = extractelement <2 x float> %6, i64 1
  %i.f = fmul float %7, f0x3F2D9168
  %8 = extractelement <2 x float> %6, i64 0
  %i.g = tail call float @llvm.fmuladd.f32(float %8, float 2.627000e-01, float %i.f)
  %9 = tail call float @llvm.fmuladd.f32(float %i.d, float 5.930000e-02, float %i.g)
  %10 = tail call noundef float @llvm.fabs.f32(float %9) ; 2 uses
  %i.h = fcmp olt float %5, %10
  %.sroa.speculated = select i1 %i.h, float %10, float %5
  %i.i = tail call float @powf(float noundef %.sroa.speculated, float noundef %i.e) #25, !tbaa !3 ; 2 uses
  %11 = insertelement <2 x float> poison, float %i.i, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %6, %12
  store <2 x float> %13, ptr %.02427, align 4, !tbaa !9
  %i.j = fmul float %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02427, i64 8
  store float %i.j, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.02427, i64 12
  store float %i.m, ptr %i.n, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.02427, i64 16
  %i.q = add nuw nsw i64 %.02526, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_RGB_TO_HSVC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_RGB_TO_HSVE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep80 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep80
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep81 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep82 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep83 = getelementptr i8, ptr %i.i, i64 48
  %next.gep84 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !118
  %i.k = load float, ptr %next.gep81, align 4, !tbaa !9, !alias.scope !118
  %i.l = load float, ptr %next.gep82, align 4, !tbaa !9, !alias.scope !118
  %i.m = load float, ptr %next.gep83, align 4, !tbaa !9, !alias.scope !118
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !118
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !118
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !118
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !118
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !118
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !118
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !118
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !118
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 6 uses
  %i.ap = fcmp olt <4 x float> %i.ac, %i.q
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.ac, <4 x float> %i.q ; 2 uses
  %i.ar = fcmp olt <4 x float> %i.ao, %i.aq
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ao, <4 x float> %i.aq ; 5 uses
  %i.at = fcmp olt <4 x float> %i.q, %i.ac
  %i.au = select <4 x i1> %i.at, <4 x float> %i.ac, <4 x float> %i.q ; 2 uses
  %i.av = fcmp olt <4 x float> %i.au, %i.ao
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ao, <4 x float> %i.au ; 9 uses
  %i.ax = fcmp une <4 x float> %i.as, %i.aw       ; 4 uses
  %i.ay = fsub <4 x float> %i.aw, %i.as           ; 5 uses
  %i.az = fcmp une <4 x float> %i.aw, zeroinitializer
  %i.ba = fdiv <4 x float> %i.ay, %i.aw
  %i.bb = fcmp oeq <4 x float> %i.q, %i.aw        ; 2 uses
  %i.bc = xor <4 x i1> %i.bb, splat (i1 true)
  %i.bd = select <4 x i1> %i.ax, <4 x i1> %i.bc, <4 x i1> zeroinitializer
  %i.be = fcmp une <4 x float> %i.ac, %i.aw
  %i.bf = select <4 x i1> %i.bd, <4 x i1> %i.be, <4 x i1> zeroinitializer
  %i.bg = fsub <4 x float> %i.q, %i.ac
  %i.bh = fdiv <4 x float> %i.bg, %i.ay
  %i.bi = fadd <4 x float> %i.bh, splat (float 4.000000e+00)
  %i.bj = fsub <4 x float> %i.ao, %i.q
  %i.bk = fdiv <4 x float> %i.bj, %i.ay
  %i.bl = fadd <4 x float> %i.bk, splat (float 2.000000e+00)
  %i.bm = select <4 x i1> %i.ax, <4 x i1> %i.bb, <4 x i1> zeroinitializer
  %i.bn = fsub <4 x float> %i.ac, %i.ao
  %i.bo = fdiv <4 x float> %i.bn, %i.ay
  %predphi = select <4 x i1> %i.bf, <4 x float> %i.bi, <4 x float> %i.bl
  %predphi85 = select <4 x i1> %i.bm, <4 x float> %i.bo, <4 x float> %predphi ; 3 uses
  %i.bp = fcmp olt <4 x float> %predphi85, zeroinitializer
  %i.bq = fadd nnan <4 x float> %predphi85, splat (float 6.000000e+00)
  %i.br = select <4 x i1> %i.bp, <4 x float> %i.bq, <4 x float> %predphi85
  %i.bs = fmul <4 x float> %i.br, splat (float f0x3E2AAAAB)
  %i.bt = and <4 x i1> %i.ax, %i.az
  %predphi86 = select <4 x i1> %i.bt, <4 x float> %i.ba, <4 x float> zeroinitializer
  %predphi87 = select <4 x i1> %i.ax, <4 x float> %i.bs, <4 x float> zeroinitializer
  %i.bu = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.bv = fadd <4 x float> %i.aw, %i.as
  %i.bw = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %i.aw
  %i.bx = fneg <4 x float> %i.as                  ; 2 uses
  %i.by = fcmp olt <4 x float> %i.aw, %i.bx
  %i.bz = fdiv <4 x float> %i.ay, %i.bx
  %i.ca = select <4 x i1> %i.by, <4 x float> %i.bz, <4 x float> %predphi86
  %i.cb = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cc = getelementptr i8, ptr %i.g, i64 28
  %i.cd = getelementptr i8, ptr %i.h, i64 44
  %i.ce = getelementptr i8, ptr %i.i, i64 60
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !9, !alias.scope !118
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !9, !alias.scope !118
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !9, !alias.scope !118
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !9, !alias.scope !118
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = shufflevector <4 x float> %predphi87, <4 x float> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.co = shufflevector <4 x float> %i.bw, <4 x float> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep84, align 4, !tbaa !9, !alias.scope !121, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.076.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04675.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.04774.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph._crit_edge
  %.076 = phi ptr [ %i.ea, %.lr.ph._crit_edge ], [ %.076.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04675 = phi ptr [ %i.eb, %.lr.ph._crit_edge ], [ %.04675.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04774 = phi i64 [ %i.ec, %.lr.ph._crit_edge ], [ %.04774.ph, %.lr.ph.preheader90 ]
  %i.cq = load float, ptr %.076, align 4, !tbaa !9 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !9 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !9 ; 6 uses
  %i.cv = fcmp olt float %i.cs, %i.cq
  %.sroa.speculated69 = select i1 %i.cv, float %i.cs, float %i.cq ; 2 uses
  %i.cw = fcmp olt float %i.cu, %.sroa.speculated69
  %.sroa.speculated62 = select i1 %i.cw, float %i.cu, float %.sroa.speculated69 ; 5 uses
  %i.cx = fcmp olt float %i.cq, %i.cs
  %.sroa.speculated66 = select i1 %i.cx, float %i.cs, float %i.cq ; 2 uses
  %i.cy = fcmp olt float %.sroa.speculated66, %i.cu
  %.sroa.speculated = select i1 %i.cy, float %i.cu, float %.sroa.speculated66 ; 9 uses
  %i.cz = fcmp une float %.sroa.speculated62, %.sroa.speculated
  %i.da = fsub float %.sroa.speculated, %.sroa.speculated62 ; 5 uses
  br i1 %i.cz, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.db = fcmp une float %.sroa.speculated, 0.000000e+00
  %i.dc = fdiv float %i.da, %.sroa.speculated
  %.042 = select i1 %i.db, float %i.dc, float 0.000000e+00
  %i.dd = fcmp oeq float %i.cq, %.sroa.speculated
  br i1 %i.dd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.de = fsub float %i.cs, %i.cu
  %i.df = fdiv float %i.de, %i.da
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dg = fcmp oeq float %i.cs, %.sroa.speculated
  br i1 %i.dg, label %bb.e, label %bb.f
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VID5applyEPKvPvl:bb.a
  %i.ct = fcmp olt float %i.cm, %i.co
  %.sroa.speculated80.i = select i1 %i.ct, float %i.co, float %i.cm ; 2 uses
  %i.cu = fcmp olt float %.sroa.speculated80.i, %i.cq
  %.sroa.speculated69.i = select i1 %i.cu, float %i.cq, float %.sroa.speculated80.i ; 4 uses
  %i.cv = fmul float %i.co, 7.152000e-01
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cm, float 2.126000e-01, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float 7.220000e-02, float %i.cw) ; 4 uses
  %i.cy = fsub float %i.cm, %i.cx
  %i.cz = fsub float %i.co, %i.cx
  %i.da = fsub float %i.cq, %i.cx
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.cy)
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.cz)
  %i.dd = fadd float %i.db, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.da)
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fmul float %i.df, 1.250000e+00
  %i.dh = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dh, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.di = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.dj = fcmp oeq float %i.cm, %.sroa.speculated69.i
  br i1 %i.dj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dk = fsub float %i.co, %i.cq
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dl = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dm = fsub float %i.cq, %i.cm
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dn = fsub float %i.cm, %i.co
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink98.i = phi float [ %i.dm, %bb.e ], [ %i.dn, %bb.f ], [ %i.dk, %bb.c ]
  %.sink97.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.do = fdiv float %.sink98.i, %i.di
  %i.dp = fadd float %i.do, %.sink97.i
  %i.dq = fmul float %i.dp, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.dq, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.dg, ptr %i.dr, align 4, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cx, ptr %i.ds, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.093.i, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.du, ptr %i.dv, align 4, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %.093.i, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.dy = add nuw nsw i64 %.05191.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !155

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 41)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_xyY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !156
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !156
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !156
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !156
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !156
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !156
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !156
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !156
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !156
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !156
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !156
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !156
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3
  %i.ap = fadd <4 x float> %i.q, %i.ac
  %i.aq = fadd <4 x float> %i.ap, %i.ao           ; 2 uses
  %i.ar = fcmp oeq <4 x float> %i.aq, zeroinitializer
  %i.as = fdiv <4 x float> splat (float 1.000000e+00), %i.aq
  %i.at = select <4 x i1> %i.ar, <4 x float> zeroinitializer, <4 x float> %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.av = getelementptr i8, ptr %i.g, i64 28
  %i.aw = getelementptr i8, ptr %i.h, i64 44
  %i.ax = getelementptr i8, ptr %i.i, i64 60
  %i.ay = load float, ptr %i.au, align 4, !tbaa !9, !alias.scope !156
  %i.az = load float, ptr %i.av, align 4, !tbaa !9, !alias.scope !156
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !9, !alias.scope !156
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !9, !alias.scope !156
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = shufflevector <4 x float> %i.q, <4 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bh = shufflevector <4 x float> %i.at, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bi = fmul <8 x float> %i.bg, %i.bh
  %i.bj = shufflevector <4 x float> %i.ac, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bi, <8 x float> %i.bj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !159, !noalias !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.bu, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02629 = phi ptr [ %i.bv, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02728 = phi i64 [ %i.bw, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %4 = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %5 = load float, ptr %4, align 4, !tbaa !9
  %6 = load <2 x float>, ptr %.030, align 4, !tbaa !9 ; 3 uses
  %7 = extractelement <2 x float> %6, i64 0
  %8 = extractelement <2 x float> %6, i64 1       ; 2 uses
  %i.bl = fadd float %7, %8
  %i.bm = fadd float %i.bl, %5                    ; 2 uses
  %i.bn = fcmp oeq float %i.bm, 0.000000e+00
  %i.bo = fdiv float 1.000000e+00, %i.bm
  %i.bp = select i1 %i.bn, float 0.000000e+00, float %i.bo
  %9 = insertelement <2 x float> poison, float %i.bp, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %6, %10
  store <2 x float> %11, ptr %.02629, align 4, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %8, ptr %i.bq, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.bs, ptr %i.bt, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.bw = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_xyY_TO_XYZC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_xyY_TO_XYZE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_xyY_TO_XYZ5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !163
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !163
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !163
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !163
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !163
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !163
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !163
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !163
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !163
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !163
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !163
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !163
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 3 uses
  %i.ap = fcmp oeq <4 x float> %i.ac, zeroinitializer
  %i.aq = fdiv <4 x float> splat (float 1.000000e+00), %i.ac
  %i.ar = select <4 x i1> %i.ap, <4 x float> zeroinitializer, <4 x float> %i.aq ; 2 uses
  %i.as = fmul <4 x float> %i.q, %i.ao
  %i.at = fmul <4 x float> %i.as, %i.ar
  %i.au = fsub <4 x float> splat (float 1.000000e+00), %i.q
  %i.av = fsub <4 x float> %i.au, %i.ac
  %i.aw = fmul <4 x float> %i.ao, %i.av
  %i.ax = fmul <4 x float> %i.aw, %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.az = getelementptr i8, ptr %i.g, i64 28
  %i.ba = getelementptr i8, ptr %i.h, i64 44
  %i.bb = getelementptr i8, ptr %i.i, i64 60
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !9, !alias.scope !163
  %i.bd = load float, ptr %i.az, align 4, !tbaa !9, !alias.scope !163
  %i.be = load float, ptr %i.ba, align 4, !tbaa !9, !alias.scope !163
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !9, !alias.scope !163
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = shufflevector <4 x float> %i.at, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !166, !noalias !163
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.cg, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02629 = phi ptr [ %i.ch, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02728 = phi i64 [ %i.ci, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bn = load float, ptr %.030, align 4, !tbaa !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !9 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9 ; 3 uses
  %i.bs = fcmp oeq float %i.bp, 0.000000e+00
  %i.bt = fdiv float 1.000000e+00, %i.bp
  %i.bu = select i1 %i.bs, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bv = fmul float %i.bn, %i.br
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = fsub float 1.000000e+00, %i.bn
  %i.by = fsub float %i.bx, %i.bp
  %i.bz = fmul float %i.br, %i.by
  %i.ca = fmul float %i.bz, %i.bu
  store float %i.bw, ptr %.02629, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.02629, i64 4
  store float %i.br, ptr %i.cb, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.ca, ptr %i.cc, align 4, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.ce, ptr %i.cf, align 4, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.ci = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_uvYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_uvYE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_uvY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
end_hunk_2
