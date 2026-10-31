Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/window?download=true
inline.NumInlined: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@FLAC__window_bartlett:bb.a
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %.0.lcssa, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat80, <i32 0, i32 1, i32 2, i32 3>
  %i.z = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat78
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.w
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph75
  %index82 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body81 ] ; 2 uses
  %vec.ind83 = phi <4 x i32> [ %induction, %vector.ph75 ], [ %vec.ind.next85, %vector.body81 ] ; 2 uses
  %i.aa = uitofp nneg <4 x i32> %vec.ind83 to <4 x float>
  %i.ab = fmul reassoc nnan nsz arcp <4 x float> %i.aa, splat (float 2.000000e+00)
  %i.ac = fmul reassoc nsz arcp <4 x float> %i.ab, %i.z
  %i.ad = fsub reassoc nsz arcp <4 x float> splat (float 2.000000e+00), %i.ac
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index82
  store <4 x float> %i.ad, ptr %gep, align 4, !tbaa !10
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %vec.ind.next85 = add <4 x i32> %vec.ind83, splat (i32 4)
  %i.ae = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.ae, label %middle.block86, label %vector.body81, !llvm.loop !16

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %i.x, %n.vec76
  br i1 %cmp.n87, label %.loopexit, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.lr.ph43, %middle.block86
  %indvars.iv54.ph = phi i64 [ %i.w, %.lr.ph43 ], [ %i.y, %middle.block86 ]
  %i.af = fdiv reassoc nsz arcp float 1.000000e+00, %i.v
  br label %scalar.ph73

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = uitofp nsz nneg i32 %i.ag to float
  %i.ai = fmul reassoc nnan nsz arcp float %i.ah, 2.000000e+00
  %i.aj = fmul reassoc nsz arcp float %i.ai, %i.l
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader36, label %scalar.ph, !llvm.loop !17

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %scalar.ph73 ], [ %indvars.iv54.ph, %scalar.ph73.preheader ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.am = uitofp nsz nneg i32 %i.al to float
  %i.an = fmul reassoc nnan nsz arcp float %i.am, 2.000000e+00
  %i.ao = fmul reassoc nsz arcp float %i.an, %i.af
  %i.ap = fsub reassoc nsz arcp float 2.000000e+00, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv54
  store float %i.ap, ptr %i.aq, align 4, !tbaa !10
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.loopexit, label %scalar.ph73, !llvm.loop !18

.preheader:                                       ; preds = %scalar.ph89, %middle.block100, %.preheader35
  %.2.lcssa = phi i32 [ 0, %.preheader35 ], [ %i.m, %middle.block100 ], [ %i.m, %scalar.ph89 ] ; 3 uses
  %.not32.not48 = icmp slt i32 %.2.lcssa, %1
  br i1 %.not32.not48, label %.lr.ph50, label %.loopexit

.lr.ph50:                                         ; preds = %.preheader
  %i.ar = uitofp nneg i32 %i.a to float           ; 2 uses
  %i.as = zext nneg i32 %.2.lcssa to i64          ; 4 uses
  %wide.trip.count67 = zext nneg i32 %1 to i64    ; 2 uses
  %i.at = sub nsw i64 %wide.trip.count67, %i.as   ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.at, 4
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph50
  %n.vec106 = and i64 %i.at, -4                   ; 3 uses
  %i.au = add nsw i64 %n.vec106, %i.as
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %.2.lcssa, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction111 = add nuw <4 x i32> %broadcast.splat110, <i32 0, i32 1, i32 2, i32 3>
  %i.av = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat108
  %invariant.gep121 = getelementptr [4 x i8], ptr %0, i64 %i.as
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph105
  %index113 = phi i64 [ 0, %vector.ph105 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %vec.ind114 = phi <4 x i32> [ %induction111, %vector.ph105 ], [ %vec.ind.next116, %vector.body112 ] ; 2 uses
  %i.aw = uitofp nneg <4 x i32> %vec.ind114 to <4 x float>
  %i.ax = fmul reassoc nnan nsz arcp <4 x float> %i.aw, splat (float 2.000000e+00)
  %i.ay = fmul reassoc nsz arcp <4 x float> %i.ax, %i.av
  %i.az = fsub reassoc nsz arcp <4 x float> splat (float 2.000000e+00), %i.ay
  %gep122 = getelementptr [4 x i8], ptr %invariant.gep121, i64 %index113
  store <4 x float> %i.az, ptr %gep122, align 4, !tbaa !10
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %vec.ind.next116 = add <4 x i32> %vec.ind114, splat (i32 4)
  %i.ba = icmp eq i64 %index.next115, %n.vec106
  br i1 %i.ba, label %middle.block117, label %vector.body112, !llvm.loop !19

middle.block117:                                  ; preds = %vector.body112
  %cmp.n118 = icmp eq i64 %i.at, %n.vec106
  br i1 %cmp.n118, label %.loopexit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph50, %middle.block117
  %indvars.iv64.ph = phi i64 [ %i.as, %.lr.ph50 ], [ %i.au, %middle.block117 ]
  %i.bb = fdiv reassoc nsz arcp float 1.000000e+00, %i.ar
  br label %scalar.ph103

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %scalar.ph89
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %scalar.ph89 ], [ %indvars.iv59.ph, %scalar.ph89.preheader ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv59 to i32
  %i.bd = uitofp nsz nneg i32 %i.bc to float
  %i.be = fmul reassoc nnan nsz arcp float %i.bd, 2.000000e+00
  %i.bf = fmul reassoc nsz arcp float %i.be, %i.u
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv59
  store float %i.bf, ptr %i.bg, align 4, !tbaa !10
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.preheader, label %scalar.ph89, !llvm.loop !20

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph103 ], [ %indvars.iv64.ph, %scalar.ph103.preheader ] ; 3 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv64 to i32
  %i.bi = uitofp nsz nneg i32 %i.bh to float
  %i.bj = fmul reassoc nnan nsz arcp float %i.bi, 2.000000e+00
  %i.bk = fmul reassoc nsz arcp float %i.bj, %i.bb
  %i.bl = fsub reassoc nsz arcp float 2.000000e+00, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64
  store float %i.bl, ptr %i.bm, align 4, !tbaa !10
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit, label %scalar.ph103, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph73, %scalar.ph103, %middle.block86, %middle.block117, %.preheader36, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_bartlett_hann(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to float
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = fdiv reassoc nsz arcp float 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = uitofp nsz nneg i32 %i.e to float
  %i.g = fmul reassoc nsz arcp float %i.f, %i.d   ; 2 uses
  %i.h = fadd reassoc nsz arcp float %i.g, -5.000000e-01
  %i.i = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.h)
  %i.j = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.i, float -4.800000e-01, float 6.200000e-01)
  %i.k = fpext reassoc nsz arcp float %i.g to double
  %i.l = fmul reassoc nsz arcp double %i.k, f0x401921FB54442D18
  %i.m = fptrunc reassoc nsz arcp double %i.l to float
  %i.n = tail call reassoc nsz arcp float @cosf(float noundef %i.m) #6
  %i.o = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.n, float -3.800000e-01, float %i.j)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_blackman(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nsz nneg i32 %i.g to double
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul reassoc nnan nsz arcp <2 x double> %i.j, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.l = fmul reassoc nsz arcp <2 x double> %i.k, %i.f
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = tail call reassoc nsz arcp float @cosf(float noundef %i.n) #6
  %i.p = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.o, float -5.000000e-01, float 4.200000e-01)
  %i.q = extractelement <2 x float> %i.m, i64 1
  %i.r = tail call reassoc nsz arcp float @cosf(float noundef %i.q) #6
  %i.s = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.r, float 8.000000e-02, float %i.p)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.s, ptr %i.t, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_blackman_harris_4term_92db_sidelobe(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not.not12 = icmp sgt i32 %1, 0
  br i1 %.not.not12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = uitofp nneg i32 %i.a to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.c = insertelement <2 x double> poison, double %i.b, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.b
  %i.f = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nsz nneg i32 %i.g to double       ; 2 uses
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -4.882900e-01, float 3.587500e-01)
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul reassoc nnan nsz arcp <2 x double> %i.o, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.q = fmul reassoc nsz arcp <2 x double> %i.p, %i.f
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float 1.412800e-01, float %i.m)
  %i.v = extractelement <2 x float> %i.r, i64 1
  %i.w = tail call reassoc nsz arcp float @cosf(float noundef %i.v) #6
  %i.x = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.w, float -1.168000e-02, float %i.u)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_connes(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sitofp reassoc nsz arcp i32 %i.a to double ; 3 uses
  %i.c = fmul reassoc nnan nsz arcp double %i.b, 5.000000e-01 ; 2 uses
  %.not.not13 = icmp sgt i32 %1, 0
  br i1 %.not.not13, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat17 = shufflevector <4 x double> %broadcast.splatinsert16, <4 x double> poison, <4 x i32> zeroinitializer
  %i.d = fdiv reassoc nsz arcp <4 x double> splat (double 1.000000e+00), %broadcast.splat17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.e = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.f = fsub reassoc nnan nsz arcp <4 x double> %i.e, %broadcast.splat
  %i.g = fmul reassoc nnan nsz arcp <4 x double> %i.f, splat (double 2.000000e+00)
  %i.h = fmul reassoc nsz arcp <4 x double> %i.g, %i.d ; 2 uses
  %i.i = fneg reassoc nsz arcp <4 x double> %i.h
  %i.j = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.i, <4 x double> %i.h, <4 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.k = fmul reassoc nsz arcp <4 x double> %i.j, %i.j
  %i.l = fptrunc reassoc nsz arcp <4 x double> %i.k to <4 x float>
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.o = fdiv reassoc nsz arcp double 1.000000e+00, %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = uitofp nsz nneg i32 %i.p to double
  %i.r = fsub reassoc nnan nsz arcp double %i.q, %i.c
  %i.s = fmul reassoc nnan nsz arcp double %i.r, 2.000000e+00
  %i.t = fmul reassoc nsz arcp double %i.s, %i.o  ; 2 uses
  %i.u = fneg reassoc nsz arcp double %i.t
  %i.v = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.u, double %i.t, double 1.000000e+00) ; 2 uses
  %i.w = fmul reassoc nsz arcp double %i.v, %i.v
  %i.x = fptrunc reassoc nsz arcp double %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_flattop(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <4 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp <4 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nsz nneg i32 %i.g to double
  %i.i = insertelement <4 x double> poison, double %i.h, i64 0
  %i.j = shufflevector <4 x double> %i.i, <4 x double> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nnan nsz arcp <4 x double> %i.j, <double f0x401921FB54442D18, double f0x402921FB54442D18, double f0x4032D97C7F3321D2, double f0x403921FB54442D18>
  %i.l = fmul reassoc nsz arcp <4 x double> %i.k, %i.f
  %i.m = fptrunc <4 x double> %i.l to <4 x float> ; 4 uses
  %i.n = extractelement <4 x float> %i.m, i64 0
  %i.o = tail call reassoc nsz arcp float @cosf(float noundef %i.n) #6
  %i.p = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.o, float f0xBED550BC, float f0x3E5CC0BA)
  %i.q = extractelement <4 x float> %i.m, i64 1
  %i.r = tail call reassoc nsz arcp float @cosf(float noundef %i.q) #6
  %i.s = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.r, float f0x3E8DF570, float %i.p)
  %i.t = extractelement <4 x float> %i.m, i64 2
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0xBDAB2B70, float %i.s)
  %i.w = extractelement <4 x float> %i.m, i64 3
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float f0x3BE3A6BF, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_gauss(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sitofp reassoc nsz arcp i32 %i.a to double ; 2 uses
  %i.c = fmul reassoc nnan nsz arcp double %i.b, 5.000000e-01 ; 3 uses
  %i.d = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.e = fcmp reassoc nsz arcp ole float %2, 5.000000e-01
  %or.cond = and i1 %i.d, %i.e
  %.not.not22 = icmp sgt i32 %1, 0                ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %.not.not22, label %.lr.ph, label %FLAC__window_gauss.exit

.lr.ph:                                           ; preds = %.preheader18
  %i.f = fdiv reassoc nsz arcp double 8.000000e+00, %i.b ; 2 uses
  %invariant.op = fmul reassoc nnan nsz arcp double %i.f, -5.000000e-01
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not.not22, label %.lr.ph24, label %FLAC__window_gauss.exit

.lr.ph24:                                         ; preds = %.preheader
  %i.g = fpext reassoc nnan ninf nsz arcp float %2 to double
  %i.h = fmul reassoc nnan nsz arcp double %i.c, %i.g
  %i.i = fdiv reassoc nsz arcp double 1.000000e+00, %i.h ; 2 uses
  %invariant.op25 = fmul reassoc nnan nsz arcp double %i.i, -5.000000e-01
  %wide.trip.count32 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = uitofp nsz nneg i32 %i.j to double
  %i.l = fsub reassoc nsz arcp double %i.k, %i.c  ; 2 uses
  %i.m = fmul reassoc nsz arcp double %i.l, %i.f
  %.reass = fmul reassoc nsz arcp double %i.l, %invariant.op
  %i.n = fmul reassoc nsz arcp double %.reass, %i.m
  %i.o = tail call reassoc nsz arcp double @exp(double noundef %i.n) #6, !inline_history !29
  %i.p = fptrunc reassoc nsz arcp double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %FLAC__window_gauss.exit, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %.lr.ph24, %bb.c
  %indvars.iv29 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next30, %bb.c ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv29 to i32
  %i.s = uitofp nsz nneg i32 %i.r to double
  %i.t = fsub reassoc nsz arcp double %i.s, %i.c  ; 2 uses
  %i.u = fmul reassoc nsz arcp double %i.t, %i.i
  %.reass26 = fmul reassoc nsz arcp double %i.t, %invariant.op25
  %i.v = fmul reassoc nsz arcp double %.reass26, %i.u
  %i.w = tail call reassoc nsz arcp double @exp(double noundef %i.v) #6
  %i.x = fptrunc reassoc nsz arcp double %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv29
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %FLAC__window_gauss.exit, label %bb.c, !llvm.loop !28

FLAC__window_gauss.exit:                          ; preds = %bb.b, %bb.c, %.preheader18, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_hamming(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nsz nneg i32 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -4.600000e-01, float 5.400000e-01)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.p = uitofp nsz nneg i32 %i.o to double
  %i.q = fmul reassoc nnan nsz arcp double %i.p, f0x401921FB54442D18
  %i.r = fmul reassoc nsz arcp double %i.q, %i.f
  %i.s = fptrunc reassoc nsz arcp double %i.r to float
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float -4.600000e-01, float 5.400000e-01)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp double %i.x, f0x401921FB54442D18
  %i.z = fdiv reassoc nsz arcp double %i.y, %i.c
  %i.aa = fptrunc reassoc nsz arcp double %i.z to float
  %i.ab = tail call reassoc nsz arcp float @cosf(float noundef %i.aa) #6
  %i.ac = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ab, float -4.600000e-01, float 5.400000e-01)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_hann(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.e = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = uitofp nsz nneg i32 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp double %i.h, f0x401921FB54442D18
  %i.j = fmul reassoc nsz arcp double %i.i, %i.e
  %i.k = fptrunc reassoc nsz arcp double %i.j to float
  %i.l = tail call reassoc nsz arcp float @cosf(float noundef %i.k) #6
  %i.m = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.l, float -5.000000e-01, float 5.000000e-01)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.p = uitofp nsz nneg i32 %i.o to double
  %i.q = fmul reassoc nnan nsz arcp double %i.p, f0x401921FB54442D18
  %i.r = fmul reassoc nsz arcp double %i.q, %i.f
  %i.s = fptrunc reassoc nsz arcp double %i.r to float
  %i.t = tail call reassoc nsz arcp float @cosf(float noundef %i.s) #6
  %i.u = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.t, float -5.000000e-01, float 5.000000e-01)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp double %i.x, f0x401921FB54442D18
  %i.z = fdiv reassoc nsz arcp double %i.y, %i.c
  %i.aa = fptrunc reassoc nsz arcp double %i.z to float
  %i.ab = tail call reassoc nsz arcp float @cosf(float noundef %i.aa) #6
  %i.ac = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.ab, float -5.000000e-01, float 5.000000e-01)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_kaiser_bessel(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.g = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = uitofp nsz nneg i32 %i.h to double       ; 2 uses
  %i.j = fmul reassoc nnan nsz arcp double %i.i, f0x401921FB54442D18
  %i.k = fmul reassoc nsz arcp double %i.j, %i.f
  %i.l = fptrunc reassoc nsz arcp double %i.k to float
  %i.m = tail call reassoc nsz arcp float @cosf(float noundef %i.l) #6
  %i.n = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.m, float -4.980000e-01, float 4.020000e-01)
  %i.o = insertelement <2 x double> poison, double %i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nnan nsz arcp <2 x double> %i.p, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.r = fmul reassoc nsz arcp <2 x double> %i.q, %i.g
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0x3DC8B439, float %i.n)
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float -1.000000e-03, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_nuttall(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv reassoc nsz arcp double 1.000000e+00, %i.c
  %i.g = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = uitofp nsz nneg i32 %i.h to double       ; 2 uses
  %i.j = fmul reassoc nnan nsz arcp double %i.i, f0x401921FB54442D18
  %i.k = fmul reassoc nsz arcp double %i.j, %i.f
  %i.l = fptrunc reassoc nsz arcp double %i.k to float
  %i.m = tail call reassoc nsz arcp float @cosf(float noundef %i.l) #6
  %i.n = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.m, float f0xBEFA7579, float f0x3EBA2768)
  %i.o = insertelement <2 x double> poison, double %i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nnan nsz arcp <2 x double> %i.p, <double f0x402921FB54442D18, double f0x4032D97C7F3321D2>
  %i.r = fmul reassoc nsz arcp <2 x double> %i.q, %i.g
  %i.s = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = tail call reassoc nsz arcp float @cosf(float noundef %i.t) #6
  %i.v = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.u, float f0x3E0BE0BD, float %i.n)
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = tail call reassoc nsz arcp float @cosf(float noundef %i.w) #6
  %i.y = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.x, float -1.064110e-02, float %i.v)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_rectangle(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.b, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.d = icmp eq i64 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write) uwtable
define hidden void @FLAC__window_triangle(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader36, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.b = add nsw i32 %1, 1                        ; 2 uses
  %i.c = ashr exact i32 %i.b, 1                   ; 4 uses
  %.not3440 = icmp slt i32 %i.c, 1
  br i1 %.not3440, label %.preheader37, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader39
  %i.d = sitofp reassoc nsz arcp i32 %1 to float
  %i.e = fadd reassoc nsz arcp float %i.d, 1.000000e+00 ; 2 uses
  %i.f = add nuw nsw i32 %i.c, 1                  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 2147483644               ; 3 uses
  %i.h = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.j = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.k = fmul reassoc nnan nsz arcp <4 x float> %i.j, splat (float 2.000000e+00)
  %i.l = fmul reassoc nsz arcp <4 x float> %i.k, %i.i
  %i.m = getelementptr [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.l, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.preheader37, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph ], [ %i.h, %middle.block ]
  %i.o = fdiv reassoc nsz arcp float 1.000000e+00, %i.e
  br label %scalar.ph

.preheader36:                                     ; preds = %bb.a
  %i.p = ashr exact i32 %1, 1                     ; 4 uses
  %.not3245 = icmp slt i32 %i.p, 1
  br i1 %.not3245, label %.preheader, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader36
  %i.q = uitofp nneg i32 %1 to float
  %i.r = fadd reassoc nsz arcp float %i.q, 1.000000e+00 ; 2 uses
  %i.s = add nuw nsw i32 %i.p, 1                  ; 3 uses
  %wide.trip.count63 = zext nneg i32 %i.s to i64
  %i.t = zext nneg i32 %i.p to i64                ; 2 uses
  %min.iters.check94 = icmp ult i32 %i.p, 4
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph47
  %n.vec96 = and i64 %i.t, 2147483644             ; 3 uses
  %i.u = or disjoint i64 %n.vec96, 1
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat98
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph95
  %index100 = phi i64 [ 0, %vector.ph95 ], [ %index.next102, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph95 ], [ %vec.ind.next103, %vector.body99 ] ; 2 uses
  %i.w = uitofp nneg <4 x i32> %vec.ind101 to <4 x float>
  %i.x = fmul reassoc nnan nsz arcp <4 x float> %i.w, splat (float 2.000000e+00)
  %i.y = fmul reassoc nsz arcp <4 x float> %i.x, %i.v
  %i.z = getelementptr [4 x i8], ptr %0, i64 %index100
  store <4 x float> %i.y, ptr %i.z, align 4, !tbaa !10
  %index.next102 = add nuw i64 %index100, 4       ; 2 uses
  %vec.ind.next103 = add <4 x i32> %vec.ind101, splat (i32 4)
  %i.aa = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.aa, label %middle.block104, label %vector.body99, !llvm.loop !36

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %n.vec96, %i.t
  br i1 %cmp.n105, label %.preheader, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %.lr.ph47, %middle.block104
  %indvars.iv60.ph = phi i64 [ 1, %.lr.ph47 ], [ %i.u, %middle.block104 ]
  %i.ab = fdiv reassoc nsz arcp float 1.000000e+00, %i.r
  br label %scalar.ph93

.preheader37:                                     ; preds = %scalar.ph, %middle.block, %.preheader39
  %.0.lcssa = phi i32 [ 1, %.preheader39 ], [ %i.f, %middle.block ], [ %i.f, %scalar.ph ] ; 3 uses
  %.not3542 = icmp sgt i32 %.0.lcssa, %1
  br i1 %.not3542, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader37
  %i.ac = uitofp nneg i32 %1 to float
  %i.ad = fadd reassoc nsz arcp float %i.ac, 1.000000e+00 ; 2 uses
  %i.ae = zext i32 %.0.lcssa to i64               ; 4 uses
  %wide.trip.count58 = zext nneg i32 %i.b to i64  ; 2 uses
  %i.af = sub nsw i64 %wide.trip.count58, %i.ae   ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.af, 4
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph44
  %n.vec78 = and i64 %i.af, -4                    ; 3 uses
  %i.ag = add nsw i64 %n.vec78, %i.ae
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat82 = shufflevector <4 x i32> %broadcast.splatinsert81, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <4 x i32> poison, i32 %.0.lcssa, i64 0
  %broadcast.splat84 = shufflevector <4 x i32> %broadcast.splatinsert83, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat84, <i32 0, i32 1, i32 2, i32 3>
  %i.ah = fdiv reassoc nsz arcp <4 x float> splat (float 1.000000e+00), %broadcast.splat80
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ae
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph77
  %index86 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body85 ] ; 2 uses
  %vec.ind87 = phi <4 x i32> [ %induction, %vector.ph77 ], [ %vec.ind.next89, %vector.body85 ] ; 2 uses
  %i.ai = sub <4 x i32> %broadcast.splat82, %vec.ind87
  %i.aj = shl nuw <4 x i32> %i.ai, splat (i32 1)
  %i.ak = add <4 x i32> %i.aj, splat (i32 2)
  %i.al = sitofp reassoc nsz arcp <4 x i32> %i.ak to <4 x float>
  %i.am = fmul reassoc nsz arcp <4 x float> %i.al, %i.ah
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index86
  %i.an = getelementptr i8, ptr %gep, i64 -4
  store <4 x float> %i.am, ptr %i.an, align 4, !tbaa !10
  %index.next88 = add nuw i64 %index86, 4         ; 2 uses
  %vec.ind.next89 = add <4 x i32> %vec.ind87, splat (i32 4)
  %i.ao = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.ao, label %middle.block90, label %vector.body85, !llvm.loop !37
end_hunk_0
begin_hunk_1_@FLAC__window_triangle:bb.a
  %i.bs = trunc nuw nsw i64 %indvars.iv60 to i32
  %i.bt = uitofp nsz nneg i32 %i.bs to float
  %i.bu = fmul reassoc nnan nsz arcp float %i.bt, 2.000000e+00
  %i.bv = fmul reassoc nsz arcp float %i.bu, %i.ab
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv60
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store float %i.bv, ptr %i.bx, align 4, !tbaa !10
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.preheader, label %scalar.ph93, !llvm.loop !41

scalar.ph107:                                     ; preds = %scalar.ph107.preheader, %scalar.ph107
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %scalar.ph107 ], [ %indvars.iv65.ph, %scalar.ph107.preheader ] ; 3 uses
  %i.by = trunc i64 %indvars.iv65 to i32
  %.tr72 = sub i32 %1, %i.by
  %i.bz = shl nuw i32 %.tr72, 1
  %i.ca = add i32 %i.bz, 2
  %i.cb = sitofp reassoc nsz arcp i32 %i.ca to float
  %i.cc = fmul reassoc nsz arcp float %i.cb, %i.br
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv65
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store float %i.cc, ptr %i.ce, align 4, !tbaa !10
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %scalar.ph107, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph75, %scalar.ph107, %middle.block90, %middle.block123, %.preheader37, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %FLAC__window_rectangle.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %FLAC__window_rectangle.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %FLAC__window_rectangle.exit, label %.lr.ph.i, !llvm.loop !44

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp reassoc nsz arcp ult float %2, 1.000000e+00
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.i32, label %FLAC__window_rectangle.exit

.lr.ph.i32:                                       ; preds = %bb.d
  %i.i = add nsw i32 %1, -1
  %i.j = uitofp nneg i32 %i.i to double           ; 3 uses
  %wide.trip.count.i33 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i33, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i32.new

.lr.ph.i32.new:                                   ; preds = %.lr.ph.i32
  %unroll_iter = and i64 %wide.trip.count.i33, 2147483646
  %i.l = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  %i.m = fdiv reassoc nsz arcp double 1.000000e+00, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i32.new
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i32.new ], [ %indvars.iv.next.i35.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i32.new ], [ %niter.next.1, %bb.e ]
  %i.n = trunc nuw nsw i64 %indvars.iv.i34 to i32
  %i.o = uitofp nsz nneg i32 %i.n to double
  %i.p = fmul reassoc nnan nsz arcp double %i.o, f0x401921FB54442D18
  %i.q = fmul reassoc nsz arcp double %i.p, %i.l
  %i.r = fptrunc reassoc nsz arcp double %i.q to float
  %i.s = tail call reassoc nsz arcp float @cosf(float noundef %i.r) #6
  %i.t = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.s, float -5.000000e-01, float 5.000000e-01)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %indvars.iv.next.i35 = or disjoint i64 %indvars.iv.i34, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i35 to i32
  %i.w = uitofp nsz nneg i32 %i.v to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x401921FB54442D18
  %i.y = fmul reassoc nsz arcp double %i.x, %i.m
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i35
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.c
  %i.ad = fcmp reassoc nsz arcp ogt float %2, 0.000000e+00
  %i.ae = fcmp reassoc nsz arcp olt float %2, 1.000000e+00
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sitofp reassoc nsz arcp i32 %1 to float
  %i.ag = fmul reassoc nnan nsz arcp float %i.af, 2.500000e-01
  %i.ah = fptosi float %i.ag to i32               ; 4 uses
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.aj = icmp sgt i32 %1, 0
  br i1 %i.aj, label %.lr.ph.preheader.i44, label %FLAC__window_rectangle.exit50

.lr.ph.preheader.i44:                             ; preds = %bb.g
  %wide.trip.count.i45 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check79 = icmp ult i32 %1, 8
  br i1 %min.iters.check79, label %.lr.ph.i46.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.preheader.i44
  %n.vec81 = and i64 %wide.trip.count.i45, 2147483640 ; 3 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next84, %vector.body82 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index83 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next84 = add nuw i64 %index83, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.am, label %middle.block85, label %vector.body82, !llvm.loop !45

middle.block85:                                   ; preds = %vector.body82
  %cmp.n86 = icmp eq i64 %n.vec81, %wide.trip.count.i45
  br i1 %cmp.n86, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block85
  %indvars.iv.i47.ph = phi i64 [ 0, %.lr.ph.preheader.i44 ], [ %n.vec81, %middle.block85 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ %indvars.iv.i47.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i47
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !10
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count.i45
  br i1 %exitcond.not.i49, label %FLAC__window_rectangle.exit50, label %.lr.ph.i46, !llvm.loop !46

FLAC__window_rectangle.exit50:                    ; preds = %.lr.ph.i46, %middle.block85, %bb.g
  %i.ao = icmp sgt i32 %i.ah, 1
  br i1 %i.ao, label %.preheader52, label %FLAC__window_rectangle.exit

.preheader52:                                     ; preds = %FLAC__window_rectangle.exit50
  %i.ap = uitofp nneg i32 %i.ai to double
  %i.aq = sub i32 %1, %i.ah
  %i.ar = sext i32 %i.aq to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ar
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.at
  br label %bb.h

bb.h:                                             ; preds = %.preheader52, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ax = trunc i64 %indvars.iv to i32
  %i.ay = add i32 %i.ai, %i.ax
  %i.az = uitofp nsz nneg i32 %i.av to double
  %i.ba = sitofp reassoc nsz arcp i32 %i.ay to double
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fmul reassoc nnan nsz arcp <2 x double> %i.bc, splat (double f0x400921FB54442D18)
  %i.be = fmul reassoc nsz arcp <2 x double> %i.bd, %i.au
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = tail call reassoc nsz arcp float @cosf(float noundef %i.bg) #6, !inline_history !50
  %i.bi = extractelement <2 x float> %i.bf, i64 1
  %i.bj = tail call reassoc nsz arcp float @cosf(float noundef %i.bi) #6, !inline_history !50
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  store float %i.bn, ptr %i.aw, align 4, !tbaa !10
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %gep, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %FLAC__window_rectangle.exit, label %bb.h, !llvm.loop !47

bb.i:                                             ; preds = %bb.f
  %i.bp = fmul reassoc nnan nsz arcp float %2, 5.000000e-01
  %i.bq = sitofp reassoc nsz arcp i32 %1 to float
  %i.br = fmul reassoc nsz arcp float %i.bp, %i.bq
  %i.bs = fptosi float %i.br to i32               ; 4 uses
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bu = icmp sgt i32 %1, 0
  br i1 %i.bu, label %.lr.ph.preheader.i37, label %FLAC__window_rectangle.exit43

.lr.ph.preheader.i37:                             ; preds = %bb.i
  %wide.trip.count.i38 = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check89 = icmp ult i32 %1, 8
  br i1 %min.iters.check89, label %.lr.ph.i39.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i37
  %n.vec91 = and i64 %wide.trip.count.i38, 2147483640 ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next94, %vector.body92 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index93 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.bv, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.bw, align 4, !tbaa !10
  %index.next94 = add nuw i64 %index93, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next94, %n.vec91
  br i1 %i.bx, label %middle.block95, label %vector.body92, !llvm.loop !48

middle.block95:                                   ; preds = %vector.body92
  %cmp.n96 = icmp eq i64 %n.vec91, %wide.trip.count.i38
  br i1 %cmp.n96, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i37, %middle.block95
  %indvars.iv.i40.ph = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %n.vec91, %middle.block95 ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i40
  store float 1.000000e+00, ptr %i.by, align 4, !tbaa !10
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i38
  br i1 %exitcond.not.i42, label %FLAC__window_rectangle.exit43, label %.lr.ph.i39, !llvm.loop !49

FLAC__window_rectangle.exit43:                    ; preds = %.lr.ph.i39, %middle.block95, %bb.i
  %i.bz = icmp sgt i32 %i.bs, 1
  br i1 %i.bz, label %.preheader, label %FLAC__window_rectangle.exit

.preheader:                                       ; preds = %FLAC__window_rectangle.exit43
  %i.ca = uitofp nneg i32 %i.bt to double
  %i.cb = sub i32 %1, %i.bs
  %i.cc = sext i32 %i.cb to i64
  %wide.trip.count65 = zext nneg i32 %i.bs to i64
  %invariant.gep73 = getelementptr [4 x i8], ptr %0, i64 %i.cc
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv reassoc nsz arcp <2 x double> splat (double 1.000000e+00), %i.ce
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv62 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next63, %bb.j ] ; 5 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv62
  %i.ci = trunc i64 %indvars.iv62 to i32
  %i.cj = add i32 %i.bt, %i.ci
  %i.ck = uitofp nsz nneg i32 %i.cg to double
  %i.cl = sitofp reassoc nsz arcp i32 %i.cj to double
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1
  %i.co = fmul reassoc nnan nsz arcp <2 x double> %i.cn, splat (double f0x400921FB54442D18)
  %i.cp = fmul reassoc nsz arcp <2 x double> %i.co, %i.cf
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float> ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = tail call reassoc nsz arcp float @cosf(float noundef %i.cr) #6
  %i.ct = extractelement <2 x float> %i.cq, i64 1
  %i.cu = tail call reassoc nsz arcp float @cosf(float noundef %i.ct) #6
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cu, i64 1
  %i.cx = tail call reassoc nsz arcp <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  store float %i.cy, ptr %i.ch, align 4, !tbaa !10
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %indvars.iv62
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  store float %i.cz, ptr %gep74, align 4, !tbaa !10
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %FLAC__window_rectangle.exit, label %bb.j, !llvm.loop !47

FLAC__window_rectangle.exit.loopexit99.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %FLAC__window_rectangle.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %.lr.ph.i32
  %indvars.iv.i34.epil.init = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i35.1, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.da = trunc nuw nsw i64 %indvars.iv.i34.epil.init to i32
  %i.db = uitofp nsz nneg i32 %i.da to double
  %i.dc = fmul reassoc nnan nsz arcp double %i.db, f0x401921FB54442D18
  %i.dd = fdiv reassoc nsz arcp double %i.dc, %i.j
  %i.de = fptrunc reassoc nsz arcp double %i.dd to float
  %i.df = tail call reassoc nsz arcp float @cosf(float noundef %i.de) #6
  %i.dg = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.df, float -5.000000e-01, float 5.000000e-01)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i34.epil.init
  store float %i.dg, ptr %i.dh, align 4, !tbaa !10
  br label %FLAC__window_rectangle.exit

FLAC__window_rectangle.exit:                      ; preds = %.lr.ph.i, %.epil.preheader, %FLAC__window_rectangle.exit.loopexit99.unr-lcssa, %bb.h, %bb.j, %middle.block, %FLAC__window_rectangle.exit50, %bb.d, %bb.b, %FLAC__window_rectangle.exit43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: write, errnomem: write) uwtable
define hidden void @FLAC__window_partial_tukey(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sitofp reassoc nsz arcp i32 %1 to float  ; 2 uses
  %i.b = fmul reassoc nsz arcp float %3, %i.a
  %i.c = fptosi float %i.b to i32                 ; 9 uses
  %i.d = fmul reassoc nsz arcp float %4, %i.a
  %i.e = fptosi float %i.d to i32                 ; 9 uses
  %i.f = sub nsw i32 %i.e, %i.c                   ; 4 uses
  %i.g = fcmp reassoc nsz arcp ugt float %2, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sitofp reassoc nsz arcp i32 %i.f to float
  %i.i = fmul reassoc nnan nsz arcp float %i.h, 2.500000e-02
  %i.j = fptosi float %i.i to i32                 ; 7 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %1) ; 3 uses
  %i.k = icmp sgt i32 %invariant.smin, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader102

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext nneg i32 %invariant.smin to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.m, i1 false), !tbaa !10
  br label %.preheader102

.preheader102:                                    ; preds = %.lr.ph.preheader, %bb.b
  %.066.i.lcssa = phi i32 [ 0, %bb.b ], [ %invariant.smin, %.lr.ph.preheader ] ; 3 uses
  %i.n = add nsw i32 %i.j, %i.c
  %invariant.smin104 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %1) ; 4 uses
  %i.o = icmp slt i32 %.066.i.lcssa, %invariant.smin104
  br i1 %i.o, label %.lr.ph107, label %.preheader101

.lr.ph107:                                        ; preds = %.preheader102
  %i.p = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.q = zext nneg i32 %.066.i.lcssa to i64       ; 4 uses
  %wide.trip.count200 = zext nneg i32 %invariant.smin104 to i64 ; 2 uses
  %i.r = sub nsw i64 %wide.trip.count200, %i.q    ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = add nsw i64 %wide.trip.count200, -1
  %i.t = icmp eq i64 %i.s, %i.q
  br i1 %i.t, label %.epil.preheader, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.lr.ph107
  %unroll_iter = and i64 %i.r, -2
  %i.u = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  %i.v = fdiv reassoc nsz arcp double 1.000000e+00, %i.p
  br label %bb.c

.preheader101.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader101.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv.epil.init = phi i64 [ %i.q, %.lr.ph107 ], [ %indvars.iv.next.1, %.preheader101.loopexit.unr-lcssa ]
  %.0.i106.epil.init = phi i32 [ 1, %.lr.ph107 ], [ %i.bf, %.preheader101.loopexit.unr-lcssa ]
  %lcmp.mod338 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.w = uitofp nsz nneg i32 %.0.i106.epil.init to double
  %i.x = fmul reassoc nnan nsz arcp double %i.w, f0x400921FB54442D18
  %i.y = fdiv reassoc nsz arcp double %i.x, %i.p
  %i.z = fptrunc reassoc nsz arcp double %i.y to float
  %i.aa = tail call reassoc nsz arcp float @cosf(float noundef %i.z) #6, !inline_history !61
  %i.ab = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.aa, float -5.000000e-01, float 5.000000e-01)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  br label %.preheader101

.preheader101:                                    ; preds = %.epil.preheader, %.preheader101.loopexit.unr-lcssa, %.preheader102
  %.167.i.lcssa = phi i32 [ %.066.i.lcssa, %.preheader102 ], [ %invariant.smin104, %.preheader101.loopexit.unr-lcssa ], [ %invariant.smin104, %.epil.preheader ] ; 5 uses
  %i.ad = sub nsw i32 %i.e, %i.j
  %invariant.smin109 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %1) ; 3 uses
  %i.ae = icmp slt i32 %.167.i.lcssa, %invariant.smin109
  br i1 %i.ae, label %.lr.ph111.preheader, label %.preheader100

.lr.ph111.preheader:                              ; preds = %.preheader101
  %i.af = zext nneg i32 %.167.i.lcssa to i64      ; 3 uses
  %i.ag = xor i32 %.167.i.lcssa, -1
  %i.ah = add i32 %invariant.smin109, %i.ag       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 7
  br i1 %min.iters.check, label %.lr.ph111.preheader336, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.preheader
  %n.vec = and i64 %i.aj, 8589934584              ; 4 uses
  %i.ak = add nuw nsw i64 %n.vec, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %gep, align 4, !tbaa !10
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %i.an = trunc i64 %n.vec to i32
  %i.ao = add i32 %.167.i.lcssa, %i.an
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.preheader100, label %.lr.ph111.preheader336

.lr.ph111.preheader336:                           ; preds = %.lr.ph111.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ %i.af, %.lr.ph111.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph111

bb.c:                                             ; preds = %bb.c, %.lr.ph107.new
  %indvars.iv = phi i64 [ %i.q, %.lr.ph107.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.0.i106 = phi i32 [ 1, %.lr.ph107.new ], [ %i.bf, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph107.new ], [ %niter.next.1, %bb.c ]
  %i.ap = uitofp nsz nneg i32 %.0.i106 to double
  %i.aq = fmul reassoc nnan nsz arcp double %i.ap, f0x400921FB54442D18
  %i.ar = fmul reassoc nsz arcp double %i.aq, %i.u
  %i.as = fptrunc reassoc nsz arcp double %i.ar to float
  %i.at = tail call reassoc nsz arcp float @cosf(float noundef %i.as) #6, !inline_history !61
  %i.au = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.at, float -5.000000e-01, float 5.000000e-01)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = add nuw nsw i32 %.0.i106, 1
  %i.ax = uitofp nsz nneg i32 %i.aw to double
  %i.ay = fmul reassoc nnan nsz arcp double %i.ax, f0x400921FB54442D18
  %i.az = fmul reassoc nsz arcp double %i.ay, %i.v
  %i.ba = fptrunc reassoc nsz arcp double %i.az to float
  %i.bb = tail call reassoc nsz arcp float @cosf(float noundef %i.ba) #6, !inline_history !61
  %i.bc = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bb, float -5.000000e-01, float 5.000000e-01)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.bc, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = add nuw nsw i32 %.0.i106, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader101.loopexit.unr-lcssa, label %bb.c, !llvm.loop !52

.preheader100:                                    ; preds = %.lr.ph111, %middle.block, %.preheader101
  %.2.i.lcssa = phi i32 [ %.167.i.lcssa, %.preheader101 ], [ %i.ao, %middle.block ], [ %i.bx, %.lr.ph111 ] ; 5 uses
  %invariant.smin113 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %1) ; 4 uses
  %i.bg = icmp slt i32 %.2.i.lcssa, %invariant.smin113
  br i1 %i.bg, label %.lr.ph116, label %.preheader98

.lr.ph116:                                        ; preds = %.preheader100
  %i.bh = sitofp reassoc nsz arcp i32 %i.j to double ; 3 uses
  %i.bi = zext nneg i32 %.2.i.lcssa to i64        ; 3 uses
  %i.bj = sub i32 %invariant.smin113, %.2.i.lcssa
  %.neg = add i32 %.2.i.lcssa, 1
  %xtraiter339 = and i32 %i.bj, 1
  %lcmp.mod340.not = icmp eq i32 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %i.bk = sitofp reassoc nsz arcp i32 %i.j to double
  %i.bl = fmul reassoc nnan nsz arcp double %i.bk, f0x400921FB54442D18
  %i.bm = fdiv reassoc nsz arcp double %i.bl, %i.bh
  %i.bn = fptrunc reassoc nsz arcp double %i.bm to float
  %i.bo = tail call reassoc nsz arcp float @cosf(float noundef %i.bn) #6, !inline_history !61
  %i.bp = tail call reassoc nsz arcp float @llvm.fmuladd.f32(float %i.bo, float -5.000000e-01, float 5.000000e-01)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
end_hunk_1
