Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/drawImage?download=true
inline.NumInlined: 91
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z10drawImage1RN7Imf_3_47Array2DINS_4RgbaEEEii:bb.a
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.q, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.r = mul nsw i64 %i.f, %indvars.iv.next.3
  %i.s = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.s, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.t = mul nsw i64 %i.f, %indvars.iv.next.4
  %i.u = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.u, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.v = mul nsw i64 %i.f, %indvars.iv.next.5
  %i.w = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.w, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.x = mul nsw i64 %i.f, %indvars.iv.next.6
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.y, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.preheader83, !llvm.loop !17

.preheader.loopexit.unr-lcssa:                    ; preds = %.preheader83
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader83.epil.preheader

.preheader83.epil.preheader:                      ; preds = %.preheader.loopexit.unr-lcssa, %.preheader83.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.preheader83.epil

.preheader83.epil:                                ; preds = %.preheader83.epil, %.preheader83.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader83.epil.preheader ], [ %indvars.iv.next.epil, %.preheader83.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader83.epil.preheader ], [ %epil.iter.next, %.preheader83.epil ]
  %i.z = mul nsw i64 %i.f, %indvars.iv.epil
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.aa, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.preheader83.epil, !llvm.loop !18

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.preheader83.epil, %.preheader83.lr.ph, %bb.a
  %i.ab = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ac = insertelement <2 x i32> %i.ab, i32 %2, i64 1 ; 2 uses
  %i.ad = sdiv <2 x i32> %i.ac, splat (i32 2)
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = sitofp <4 x i32> %i.ae to <4 x float>   ; 2 uses
  %i.ai = sitofp i32 %1 to double                 ; 2 uses
  %i.aj = fmul nnan double %i.ai, 5.000000e-02
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = fmul nnan double %i.ai, 1.000000e-02
  %i.an = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %.preheader, %bb.e
  %.086 = phi i32 [ 0, %.preheader ], [ %i.bb, %bb.e ] ; 3 uses
  %i.ao = shl nuw nsw i32 %.086, 1
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = fmul nnan double %i.ap, f0x400921FB54442D18
  %i.ar = fdiv double %i.aq, 5.600000e+03
  %i.as = fptrunc double %i.ar to float
  %i.at = fpext float %i.as to double             ; 5 uses
  %i.au = fmul nnan double %i.at, 2.000000e+00
  %i.av = tail call double @sin(double noundef %i.au) #8
  %i.aw = fmul nnan double %i.at, 1.500000e+01    ; 2 uses
  %i.ax = tail call double @sin(double noundef %i.aw) #8
  %i.ay = fmul nnan double %i.at, 3.000000e+00
  %i.az = tail call double @cos(double noundef %i.ay) #8
  %i.ba = tail call double @cos(double noundef %i.aw) #8
  %i.bb = add nuw nsw i32 %.086, 1                ; 3 uses
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fdiv float %i.bc, 5.600000e+03
  %i.be = fpext float %i.bd to double             ; 7 uses
  %i.bf = fmul nnan double %i.be, 3.000000e-01
  %i.bg = fmul nnan double %i.at, 8.000000e+01    ; 2 uses
  %i.bh = tail call double @sin(double noundef %i.bg) #8
  %i.bi = tail call double @cos(double noundef %i.bg) #8
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.at, double 8.000000e+01, double f0x3FF921FB54442D18) ; 2 uses
  %i.bk = tail call double @sin(double noundef %i.bj) #8
  %i.bl = tail call double @cos(double noundef %i.bj) #8
  %i.bm = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.ba, i64 1
  %i.bo = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.az, i64 1
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 2.000000e-01), <2 x double> %i.bp)
  %i.br = fptrunc <2 x double> %i.bq to <2 x float> ; 2 uses
  %i.bs = fpext <2 x float> %i.br to <2 x double>
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.bv = shufflevector <4 x double> %i.bu, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bw = insertelement <4 x double> poison, double %i.bh, i64 0
  %i.bx = insertelement <4 x double> %i.bw, double %i.bi, i64 1
  %i.by = insertelement <4 x double> %i.bx, double %i.bk, i64 2
  %i.bz = insertelement <4 x double> %i.by, double %i.bl, i64 3
  %i.ca = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.bz, <4 x double> %i.bt)
  %i.cb = fptrunc <4 x double> %i.ca to <4 x float>
  %.lhs.trunc = trunc nuw nsw i32 %.086 to i16
  %i.cc = urem i16 %.lhs.trunc, 10
  %i.cd = icmp eq i16 %i.cc, 0
  %.val79.pre90 = load i64, ptr %i.ak, align 8    ; 2 uses
  %.val80.pre92 = load ptr, ptr %i.al, align 8    ; 2 uses
  br i1 %i.cd, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = fmul nnan double %i.be, 5.000000e-01
  %.pre94 = fmul double %.pre, %i.be
  %.pre96 = fptrunc double %.pre94 to float
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ce = fmul <2 x float> %i.af, %i.br
  %i.cf = fdiv <2 x float> %i.ce, splat (float 3.000000e+00)
  %i.cg = fadd <2 x float> %i.cf, %i.an           ; 2 uses
  %i.ch = fmul double %i.aj, %i.be
  %i.ci = fptrunc double %i.ch to float
  %i.cj = fmul nnan double %i.be, 5.000000e-01
  %i.ck = fmul double %i.cj, %i.be
  %i.cl = fptrunc double %i.ck to float           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cg, i64 0
  %i.cn = extractelement <2 x float> %i.cg, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79.pre90, ptr %.val80.pre92, i32 noundef %1, i32 noundef %2, float noundef %i.cm, float noundef %i.cn, float noundef %i.ci, float noundef 2.000000e+00, float noundef 8.000000e-01, float noundef 1.000000e-01, float noundef %i.cl)
  %.val79.pre = load i64, ptr %i.ak, align 8
  %.val80.pre = load ptr, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi97 = phi float [ %.pre96, %._crit_edge ], [ %i.cl, %bb.d ] ; 2 uses
  %.val80 = phi ptr [ %.val80.pre92, %._crit_edge ], [ %.val80.pre, %bb.d ]
  %.val79 = phi i64 [ %.val79.pre90, %._crit_edge ], [ %.val79.pre, %bb.d ]
  %i.co = fmul <4 x float> %i.ag, %i.cb
  %i.cp = fmul double %i.am, %i.be
  %i.cq = fptrunc double %i.cp to float           ; 2 uses
  %i.cr = fdiv <4 x float> %i.co, splat (float 3.000000e+00)
  %i.cs = fadd <4 x float> %i.cr, %i.ah           ; 4 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0
  %i.cu = extractelement <4 x float> %i.cs, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79, ptr %.val80, i32 noundef %1, i32 noundef %2, float noundef %i.ct, float noundef %i.cu, float noundef %i.cq, float noundef f0x3F333333, float noundef 2.000000e-01, float noundef 2.000000e+00, float noundef %.pre-phi97)
  %.val = load i64, ptr %i.ak, align 8
  %.val78 = load ptr, ptr %i.al, align 8
  %i.cv = extractelement <4 x float> %i.cs, i64 2
  %i.cw = extractelement <4 x float> %i.cs, i64 3
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val, ptr %.val78, i32 noundef %1, i32 noundef %2, float noundef %i.cv, float noundef %i.cw, float noundef %i.cq, float noundef 2.000000e-01, float noundef 1.500000e+00, float noundef 1.000000e-01, float noundef %.pre-phi97)
  %exitcond89.not = icmp eq i32 %i.bb, 5600
  br i1 %exitcond89.not, label %bb.b, label %bb.c, !llvm.loop !19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.8.val, ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef nofpclass(nan inf zero sub nnorm) %5, float noundef nofpclass(nan inf zero sub nnorm) %6, float noundef nofpclass(nan inf zero sub nnorm) %7, float noundef %8) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fsub float %2, %4
  %i.b = tail call noundef float @llvm.floor.f32(float %i.a) ; 2 uses
  %i.c = fcmp olt float %i.b, 0.000000e+00
  %.sroa.speculated12 = select i1 %i.c, float 0.000000e+00, float %i.b
  %i.d = fptosi float %.sroa.speculated12 to i32  ; 2 uses
  %i.e = fadd float %2, %4
  %i.f = tail call noundef float @llvm.ceil.f32(float %i.e) ; 2 uses
  %i.g = sitofp i32 %0 to float
  %i.h = fadd float %i.g, -1.000000e+00           ; 2 uses
  %i.i = fcmp olt float %i.h, %i.f
  %.sroa.speculated7 = select i1 %i.i, float %i.h, float %i.f
  %i.j = fptosi float %.sroa.speculated7 to i32   ; 2 uses
  %i.k = fsub float %3, %4
  %i.l = tail call noundef float @llvm.floor.f32(float %i.k) ; 2 uses
  %i.m = fcmp olt float %i.l, 0.000000e+00
  %.sroa.speculated2 = select i1 %i.m, float 0.000000e+00, float %i.l
  %i.n = fptosi float %.sroa.speculated2 to i32   ; 2 uses
  %i.o = fadd float %3, %4
  %i.p = tail call noundef float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = sitofp i32 %1 to float
  %i.r = fadd float %i.q, -1.000000e+00           ; 2 uses
  %i.s = fcmp olt float %i.r, %i.p
  %.sroa.speculated = select i1 %i.s, float %i.r, float %i.p
  %i.t = fptosi float %.sroa.speculated to i32    ; 2 uses
  %.not18 = icmp sgt i32 %i.n, %i.t
  br i1 %.not18, label %._crit_edge20.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not8016 = icmp sgt i32 %i.d, %i.j
  %i.u = fadd float %4, -1.000000e+00
  br i1 %.not8016, label %._crit_edge20.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %9 = sext i32 %i.d to i64
  %i.v = add i32 %i.j, 1
  %10 = sext i32 %i.n to i64
  %i.w = add i32 %i.t, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ %10, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.x = trunc nsw i64 %indvars.iv22 to i32
  %11 = sitofp i32 %i.x to float
  %i.y = fsub float %11, %3
  %i.z = fdiv float %i.y, %4                      ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = fpext float %i.z to double
  %i.ac = fmul double %i.ab, -5.656800e-01
  %i.ad = mul nsw i64 %.8.val, %indvars.iv22
  %i.ae = getelementptr inbounds [8 x i8], ptr %.16.val, i64 %i.ad
  %i.af = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  br label %bb.b

._crit_edge20.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.ar
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1 ; 2 uses
  %lftr.wideiv25 = trunc i64 %indvars.iv.next23 to i32
  %exitcond26.not = icmp eq i32 %i.w, %lftr.wideiv25
  br i1 %exitcond26.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !21

bb.b:                                             ; preds = %.preheader, %bb.ar
  %indvars.iv = phi i64 [ %9, %.preheader ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %i.ag = trunc nsw i64 %indvars.iv to i32
  %12 = sitofp i32 %i.ag to float
  %i.ah = fsub float %12, %2
  %i.ai = fdiv float %i.ah, %4                    ; 3 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.aa)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.aj) ; 4 uses
  %i.ak = fcmp ult float %sqrt, 1.000000e+00
  br i1 %i.ak, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.al = fmul float %4, %sqrt
  %i.am = fcmp ogt float %i.al, %i.u
  %i.an = fneg float %sqrt                        ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %4, float %4)
  %.076 = select i1 %i.am, float %i.ao, float 1.000000e+00 ; 4 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.an, float %sqrt, float 1.000000e+00)
  %i.aq = tail call noundef float @sqrtf(float noundef %i.ap) #8
  %i.ar = fpext float %i.ai to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double 4.242600e-01, double %i.ac)
  %i.at = fpext float %i.aq to double
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double 7.071000e-01, double %i.as) ; 2 uses
  %i.av = fptrunc double %i.au to float           ; 2 uses
  %i.aw = fcmp olt double %i.au, f0xB690000000000000
  %i.ax = fpext nnan float %i.av to double
  %i.ay = fmul nnan double %i.ax, -1.000000e-01
  %i.az = fptrunc double %i.ay to float
  %.075 = select i1 %i.aw, float %i.az, float %i.av ; 3 uses
  %i.ba = fmul float %.075, %.075                 ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb                 ; 2 uses
  %i.bd = fmul float %i.bc, %i.bc                 ; 3 uses
  %i.be = fmul float %i.ba, %i.bd
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = fmul float %i.bg, 4.000000e+00
  %i.bi = fadd float %.075, %i.bh                 ; 3 uses
  %i.bj = fmul float %5, %i.bi
  %i.bk = fmul float %6, %i.bi
  %i.bl = fmul float %7, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv ; 5 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !13
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !14
  %i.br = fsub float 1.000000e+00, %.076          ; 4 uses
  %i.bs = fmul float %8, %i.bj
  %i.bt = fmul float %.076, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.br, float %i.bt) ; 2 uses
  %i.bv = bitcast float %i.bu to i32
  %i.bw = tail call float @llvm.fabs.f32(float %i.bu)
  %i.bx = bitcast float %i.bw to i32              ; 10 uses
  %i.by = lshr i32 %i.bv, 16                      ; 3 uses
  %i.bz = trunc nuw i32 %i.by to i16
  %i.ca = and i16 %i.bz, -32768                   ; 3 uses
  %i.cb = icmp samesign ugt i32 %i.bx, 947912703
  br i1 %i.cb, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.cc = icmp samesign ugt i32 %i.bx, 2139095039
  br i1 %i.cc, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.cd = or disjoint i16 %i.ca, 31744            ; 2 uses
  %i.ce = icmp eq i32 %i.bx, 2139095040
  br i1 %i.ce, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = lshr i32 %i.bx, 13
  %i.cg = and i32 %i.cf, 1023                     ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i16
  %i.cj = trunc nuw nsw i32 %i.cg to i16
  %i.ck = or i16 %i.cj, %i.ci
  %i.cl = or disjoint i16 %i.ck, %i.cd
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.d
  %i.cm = icmp samesign ugt i32 %i.bx, 1199566847
  br i1 %i.cm, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.cn = or disjoint i16 %i.ca, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.g
  %i.co = add nuw nsw i32 %i.bx, 134221823
  %i.cp = lshr i32 %i.bx, 13
  %i.cq = and i32 %i.cp, 1
  %i.cr = add nuw nsw i32 %i.co, %i.cq
  %i.cs = lshr i32 %i.cr, 13
  %i.ct = and i32 %i.by, 32768
  %i.cu = or i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.j:                                             ; preds = %bb.c
  %i.cw = icmp samesign ult i32 %i.bx, 855638017
  br i1 %i.cw, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = lshr i32 %i.bx, 23                      ; 2 uses
  %i.cy = sub nuw nsw i32 126, %i.cx
  %i.cz = and i32 %i.bx, 8388607
  %i.da = or disjoint i32 %i.cz, 8388608          ; 2 uses
  %i.db = add nsw i32 %i.cx, -94
  %i.dc = shl i32 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr i32 %i.da, %i.cy                   ; 2 uses
  %i.de = and i32 %i.by, 32768
  %i.df = or i32 %i.dd, %i.de
  %i.dg = trunc nuw i32 %i.df to i16              ; 2 uses
  %i.dh = icmp ugt i32 %i.dc, -2147483648
  br i1 %i.dh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = icmp ne i32 %i.dc, -2147483648
  %i.dj = and i32 %i.dd, 1
  %.not.i.i.i = icmp eq i32 %i.dj, 0
  %or.cond.i.i.i = select i1 %i.di, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dk = add nuw i16 %i.dg, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.033.i.i.i = phi i16 [ %i.ca, %bb.j ], [ %i.cl, %bb.f ], [ %i.cn, %bb.h ], [ %i.cv, %bb.i ], [ %i.cd, %bb.e ], [ %i.dk, %bb.m ], [ %i.dg, %bb.l ]
  store i16 %.033.i.i.i, ptr %i.bm, align 2, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 2 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !13
  %i.dn = zext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !14
  %i.dq = fmul float %8, %i.bk
  %i.dr = fmul float %.076, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.br, float %i.dr) ; 2 uses
  %i.dt = bitcast float %i.ds to i32
  %i.du = tail call float @llvm.fabs.f32(float %i.ds)
  %i.dv = bitcast float %i.du to i32              ; 10 uses
  %i.dw = lshr i32 %i.dt, 16                      ; 3 uses
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = and i16 %i.dx, -32768                   ; 3 uses
  %i.dz = icmp samesign ugt i32 %i.dv, 947912703
  br i1 %i.dz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ea = icmp samesign ugt i32 %i.dv, 2139095039
  br i1 %i.ea, label %bb.o, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.eb = or disjoint i16 %i.dy, 31744            ; 2 uses
  %i.ec = icmp eq i32 %i.dv, 2139095040
  br i1 %i.ec, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = lshr i32 %i.dv, 13
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i16
  %i.eh = trunc nuw nsw i32 %i.ee to i16
  %i.ei = or i16 %i.eh, %i.eg
  %i.ej = or disjoint i16 %i.ei, %i.eb
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.q:                                             ; preds = %bb.n
  %i.ek = icmp samesign ugt i32 %i.dv, 1199566847
  br i1 %i.ek, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.el = or disjoint i16 %i.dy, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.s:                                             ; preds = %bb.q
  %i.em = add nuw nsw i32 %i.dv, 134221823
  %i.en = lshr i32 %i.dv, 13
  %i.eo = and i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.em, %i.eo
  %i.eq = lshr i32 %i.ep, 13
  %i.er = and i32 %i.dw, 32768
  %i.es = or i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i16
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.t:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.eu = icmp samesign ult i32 %i.dv, 855638017
  br i1 %i.eu, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = lshr i32 %i.dv, 23                      ; 2 uses
  %i.ew = sub nuw nsw i32 126, %i.ev
  %i.ex = and i32 %i.dv, 8388607
  %i.ey = or disjoint i32 %i.ex, 8388608          ; 2 uses
  %i.ez = add nsw i32 %i.ev, -94
  %i.fa = shl i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr i32 %i.ey, %i.ew                   ; 2 uses
  %i.fc = and i32 %i.dw, 32768
  %i.fd = or i32 %i.fb, %i.fc
  %i.fe = trunc nuw i32 %i.fd to i16              ; 2 uses
  %i.ff = icmp ugt i32 %i.fa, -2147483648
  br i1 %i.ff, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = icmp ne i32 %i.fa, -2147483648
  %i.fh = and i32 %i.fb, 1
  %.not.i.i.i84 = icmp eq i32 %i.fh, 0
  %or.cond.i.i.i85 = select i1 %i.fg, i1 true, i1 %.not.i.i.i84
  br i1 %or.cond.i.i.i85, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fi = add nuw i16 %i.fe, 1
  br label %_ZN9Imath_3_24halfaSEf.exit87

_ZN9Imath_3_24halfaSEf.exit87:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.033.i.i.i86 = phi i16 [ %i.dy, %bb.t ], [ %i.ej, %bb.p ], [ %i.el, %bb.r ], [ %i.et, %bb.s ], [ %i.eb, %bb.o ], [ %i.fi, %bb.w ], [ %i.fe, %bb.v ]
  store i16 %.033.i.i.i86, ptr %i.dl, align 2, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !13
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !14
  %i.fo = fmul float %8, %i.bl
  %i.fp = fmul float %.076, %i.fo
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.br, float %i.fp) ; 2 uses
  %i.fr = bitcast float %i.fq to i32
  %i.fs = tail call float @llvm.fabs.f32(float %i.fq)
  %i.ft = bitcast float %i.fs to i32              ; 10 uses
  %i.fu = lshr i32 %i.fr, 16                      ; 3 uses
  %i.fv = trunc nuw i32 %i.fu to i16
  %i.fw = and i16 %i.fv, -32768                   ; 3 uses
  %i.fx = icmp samesign ugt i32 %i.ft, 947912703
  br i1 %i.fx, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit87
  %i.fy = icmp samesign ugt i32 %i.ft, 2139095039
  br i1 %i.fy, label %bb.y, label %bb.aa, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.fz = or disjoint i16 %i.fw, 31744            ; 2 uses
  %i.ga = icmp eq i32 %i.ft, 2139095040
  br i1 %i.ga, label %_ZN9Imath_3_24halfaSEf.exit91, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = lshr i32 %i.ft, 13
  %i.gc = and i32 %i.gb, 1023                     ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i16
  %i.gf = trunc nuw nsw i32 %i.gc to i16
  %i.gg = or i16 %i.gf, %i.ge
  %i.gh = or disjoint i16 %i.gg, %i.fz
  br label %_ZN9Imath_3_24halfaSEf.exit91

bb.aa:                                            ; preds = %bb.x
  %i.gi = icmp samesign ugt i32 %i.ft, 1199566847
  br i1 %i.gi, label %bb.ab, label %bb.ac, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.gj = or disjoint i16 %i.fw, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit91

bb.ac:                                            ; preds = %bb.aa
  %i.gk = add nuw nsw i32 %i.ft, 134221823
  %i.gl = lshr i32 %i.ft, 13
  %i.gm = and i32 %i.gl, 1
  %i.gn = add nuw nsw i32 %i.gk, %i.gm
  %i.go = lshr i32 %i.gn, 13
  %i.gp = and i32 %i.fu, 32768
  %i.gq = or i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i16
  br label %_ZN9Imath_3_24halfaSEf.exit91

bb.ad:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit87
  %i.gs = icmp samesign ult i32 %i.ft, 855638017
  br i1 %i.gs, label %_ZN9Imath_3_24halfaSEf.exit91, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = lshr i32 %i.ft, 23                      ; 2 uses
  %i.gu = sub nuw nsw i32 126, %i.gt
  %i.gv = and i32 %i.ft, 8388607
  %i.gw = or disjoint i32 %i.gv, 8388608          ; 2 uses
  %i.gx = add nsw i32 %i.gt, -94
  %i.gy = shl i32 %i.gw, %i.gx                    ; 2 uses
  %i.gz = lshr i32 %i.gw, %i.gu                   ; 2 uses
  %i.ha = and i32 %i.fu, 32768
  %i.hb = or i32 %i.gz, %i.ha
  %i.hc = trunc nuw i32 %i.hb to i16              ; 2 uses
  %i.hd = icmp ugt i32 %i.gy, -2147483648
  br i1 %i.hd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.he = icmp ne i32 %i.gy, -2147483648
  %i.hf = and i32 %i.gz, 1
  %.not.i.i.i88 = icmp eq i32 %i.hf, 0
  %or.cond.i.i.i89 = select i1 %i.he, i1 true, i1 %.not.i.i.i88
  br i1 %or.cond.i.i.i89, label %_ZN9Imath_3_24halfaSEf.exit91, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hg = add nuw i16 %i.hc, 1
  br label %_ZN9Imath_3_24halfaSEf.exit91

_ZN9Imath_3_24halfaSEf.exit91:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.033.i.i.i90 = phi i16 [ %i.fw, %bb.ad ], [ %i.gh, %bb.z ], [ %i.gj, %bb.ab ], [ %i.gr, %bb.ac ], [ %i.fz, %bb.y ], [ %i.hg, %bb.ag ], [ %i.hc, %bb.af ]
  store i16 %.033.i.i.i90, ptr %i.fj, align 2, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bm, i64 6 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !13
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !14
  %i.hm = fsub float 1.000000e+00, %i.hl
  %i.hn = fneg float %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.br, float 1.000000e+00) ; 2 uses
  %i.hp = bitcast float %i.ho to i32
  %i.hq = tail call float @llvm.fabs.f32(float %i.ho)
  %i.hr = bitcast float %i.hq to i32              ; 10 uses
  %i.hs = lshr i32 %i.hp, 16                      ; 3 uses
  %i.ht = trunc nuw i32 %i.hs to i16
  %i.hu = and i16 %i.ht, -32768                   ; 3 uses
  %i.hv = icmp samesign ugt i32 %i.hr, 947912703
  br i1 %i.hv, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit91
  %i.hw = icmp samesign ugt i32 %i.hr, 2139095039
  br i1 %i.hw, label %bb.ai, label %bb.ak, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.hx = or disjoint i16 %i.hu, 31744            ; 2 uses
  %i.hy = icmp eq i32 %i.hr, 2139095040
  br i1 %i.hy, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = lshr i32 %i.hr, 13
  %i.ia = and i32 %i.hz, 1023                     ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = zext i1 %i.ib to i16
  %i.id = trunc nuw nsw i32 %i.ia to i16
  %i.ie = or i16 %i.id, %i.ic
  %i.if = or disjoint i16 %i.ie, %i.hx
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.ak:                                            ; preds = %bb.ah
  %i.ig = icmp samesign ugt i32 %i.hr, 1199566847
  br i1 %i.ig, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.ih = or disjoint i16 %i.hu, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.am:                                            ; preds = %bb.ak
  %i.ii = add nuw nsw i32 %i.hr, 134221823
  %i.ij = lshr i32 %i.hr, 13
  %i.ik = and i32 %i.ij, 1
  %i.il = add nuw nsw i32 %i.ii, %i.ik
  %i.im = lshr i32 %i.il, 13
  %i.in = and i32 %i.hs, 32768
  %i.io = or i32 %i.im, %i.in
  %i.ip = trunc i32 %i.io to i16
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.an:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit91
  %i.iq = icmp samesign ult i32 %i.hr, 855638017
  br i1 %i.iq, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ir = lshr i32 %i.hr, 23                      ; 2 uses
  %i.is = sub nuw nsw i32 126, %i.ir
  %i.it = and i32 %i.hr, 8388607
  %i.iu = or disjoint i32 %i.it, 8388608          ; 2 uses
  %i.iv = add nsw i32 %i.ir, -94
  %i.iw = shl i32 %i.iu, %i.iv                    ; 2 uses
  %i.ix = lshr i32 %i.iu, %i.is                   ; 2 uses
  %i.iy = and i32 %i.hs, 32768
  %i.iz = or i32 %i.ix, %i.iy
  %i.ja = trunc nuw i32 %i.iz to i16              ; 2 uses
  %i.jb = icmp ugt i32 %i.iw, -2147483648
  br i1 %i.jb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jc = icmp ne i32 %i.iw, -2147483648
  %i.jd = and i32 %i.ix, 1
  %.not.i.i.i92 = icmp eq i32 %i.jd, 0
  %or.cond.i.i.i93 = select i1 %i.jc, i1 true, i1 %.not.i.i.i92
  br i1 %or.cond.i.i.i93, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.je = add nuw i16 %i.ja, 1
  br label %_ZN9Imath_3_24halfaSEf.exit95

_ZN9Imath_3_24halfaSEf.exit95:                    ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq
  %.033.i.i.i94 = phi i16 [ %i.hu, %bb.an ], [ %i.if, %bb.aj ], [ %i.ih, %bb.al ], [ %i.ip, %bb.am ], [ %i.hx, %bb.ai ], [ %i.je, %bb.aq ], [ %i.ja, %bb.ap ]
  store i16 %.033.i.i.i94, ptr %i.hh, align 2, !tbaa !10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %_ZN9Imath_3_24halfaSEf.exit95
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage2RN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS0_IfEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br i1 %i.b, label %.preheader46.preheader, label %.preheader

.preheader46.preheader:                           ; preds = %.preheader46.lr.ph
  %wide.trip.count54 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader46.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 3 uses
  %i.k = mul nsw i64 %i.f, %indvars.iv51
  %i.l = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.m = mul nsw i64 %i.j, %indvars.iv51
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader46, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader46 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store <4 x i16> zeroinitializer, ptr %i.o, align 2, !tbaa !10
  store <4 x i16> zeroinitializer, ptr %i.p, align 2, !tbaa !10
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.q, align 4, !tbaa !29
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.r, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader46, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader46 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %._crit_edge, %.preheader46.lr.ph, %bb.a
  %i.t = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %2, i64 1 ; 2 uses
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 3 uses
  %i.w = sdiv <2 x i32> %i.u, splat (i32 2)
  %i.x = sitofp <2 x i32> %i.w to <2 x float>
  %i.y = mul nsw i32 %2, 3
  %i.z = sitofp i32 %i.y to float
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = fadd <2 x float> %i.v, splat (float -1.000000e+00) ; 2 uses
  %i.af = extractelement <2 x float> %i.v, i64 1  ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.preheader, label %.preheader46, !llvm.loop !24

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  store i16 0, ptr %i.ag, align 2, !tbaa !10
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float f0x7F7FFFFF, ptr %i.ah, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !25

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit
  ret void

bb.c:                                             ; preds = %.preheader, %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit
  %.04149 = phi i32 [ 0, %.preheader ], [ %i.fw, %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit ] ; 2 uses
  %i.ai = shl nuw nsw i32 %.04149, 1
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fmul nnan double %i.aj, f0x400921FB54442D18
  %i.al = fdiv double %i.ak, 2.000000e+03
  %i.am = fptrunc double %i.al to float
  %i.an = fpext float %i.am to double             ; 4 uses
  %i.ao = fmul nnan double %i.an, 4.000000e+00
  %i.ap = tail call double @sin(double noundef %i.ao) #8
  %i.aq = fmul nnan double %i.an, 1.500000e+01    ; 3 uses
  %i.ar = tail call double @sin(double noundef %i.aq) #8
  %i.as = fmul nnan double %i.an, 3.000000e+00
  %i.at = tail call double @cos(double noundef %i.as) #8
  %i.au = tail call double @cos(double noundef %i.aq) #8
  %i.av = fmul nnan double %i.an, 5.000000e+00
  %i.aw = tail call double @sin(double noundef %i.av) #8
  %i.ax = fptrunc double %i.aw to float           ; 2 uses
  %i.ay = tail call double @sin(double noundef %i.aq) #8
  %i.az = fpext float %i.ax to double
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double 3.000000e-01, double -5.000000e-01>, <2 x double> <double f0x3FE6666666666666, double 5.000000e-01>) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = fptrunc double %i.bd to float
  %i.bf = extractelement <2 x double> %i.bc, i64 1
  %i.bg = fadd double %i.bf, 2.000000e-01
  %i.bh = fptrunc double %i.bg to float
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.af, float %i.z)
  %i.bj = fmul float %i.af, %i.be
  %i.bk = fpext float %i.bj to double
  %i.bl = fmul double %i.bk, 5.000000e-02
  %i.bm = fptrunc double %i.bl to float           ; 4 uses
  %i.bn = fpext float %i.bh to double             ; 2 uses
  %i.bo = fmul double %i.bn, 2.500000e+00
  %i.bp = fmul double %i.bo, %i.bn
  %i.bq = fptrunc double %i.bp to float
  %.val = load i64, ptr %i.aa, align 8
  %.val43 = load ptr, ptr %i.ab, align 8
  %.val44 = load i64, ptr %i.ac, align 8
  %.val45 = load ptr, ptr %i.ad, align 8
  %i.br = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.ar, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.ap, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> splat (double 2.000000e-01), <2 x double> %i.bu)
  %i.bw = fptrunc <2 x double> %i.bv to <2 x float>
  %i.bx = fmul <2 x float> %i.v, %i.bw
  %i.by = fdiv <2 x float> %i.bx, splat (float 3.000000e+00)
  %i.bz = fadd <2 x float> %i.by, %i.x            ; 4 uses
  %i.ca = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = fsub <2 x float> %i.bz, %i.cb
  %i.cd = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cc) ; 2 uses
  %i.ce = fcmp olt <2 x float> %i.cd, zeroinitializer
  %i.cf = select <2 x i1> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cd
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>   ; 4 uses
  %i.ch = fadd <2 x float> %i.bz, %i.cb
  %i.ci = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ch) ; 2 uses
  %i.cj = fcmp olt <2 x float> %i.ae, %i.ci
  %i.ck = select <2 x i1> %i.cj, <2 x float> %i.ae, <2 x float> %i.ci
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cg, i64 1
  %i.cn = icmp sgt <2 x i32> %i.cg, %i.cl
  %.not24.i = extractelement <2 x i1> %i.cn, i64 1
  br i1 %.not24.i, label %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.co = extractelement <2 x i32> %i.cg, i64 0
  %i.cp = icmp sgt <2 x i32> %i.cg, %i.cl
  %.not5920.i = extractelement <2 x i1> %i.cp, i64 0
  %i.cq = fneg float %i.bm
  br i1 %.not5920.i, label %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.cr = add <2 x i32> %i.cl, splat (i32 1)      ; 2 uses
  %4 = sext i32 %i.cm to i64
  %5 = extractelement <2 x float> %i.bz, i64 1
  %i.cs = extractelement <2 x i32> %i.cr, i64 1
  %6 = sext i32 %i.co to i64
  %i.ct = extractelement <2 x float> %i.bz, i64 0
  %7 = extractelement <2 x i32> %i.cr, i64 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv28.i = phi i64 [ %4, %.preheader.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 4 uses
  %i.cu = trunc nsw i64 %indvars.iv28.i to i32
  %8 = sitofp i32 %i.cu to float
  %i.cv = fsub float %8, %5
  %i.cw = fdiv float %i.cv, %i.bm                 ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val45, i64 %indvars.iv28.i
  %i.cx = fpext float %i.cw to double
  %invariant.gep22.i = getelementptr [2 x i8], ptr %.val43, i64 %indvars.iv28.i
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.q
  %indvars.iv.next29.i = add nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %lftr.wideiv31.i = trunc i64 %indvars.iv.next29.i to i32
  %exitcond32.not.i = icmp eq i32 %i.cs, %lftr.wideiv31.i
  br i1 %exitcond32.not.i, label %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit, label %.preheader.i, !llvm.loop !26

bb.d:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i = phi i64 [ %6, %.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %i.cy = trunc nsw i64 %indvars.iv.i to i32
  %9 = sitofp i32 %i.cy to float
  %i.cz = fsub float %9, %i.ct
  %i.da = fdiv float %i.cz, %i.bm                 ; 3 uses
  %i.db = fmul float %i.da, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.db)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.dc) ; 3 uses
  %i.dd = fcmp ult float %sqrt.i, 1.000000e+00
  br i1 %i.dd, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.de = fneg float %sqrt.i
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %sqrt.i, float 1.000000e+00)
  %i.dg = tail call noundef float @sqrtf(float noundef %i.df) #8 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dg, float %i.bi) ; 2 uses
  %i.di = mul nsw i64 %indvars.iv.i, %.val44
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.di ; 2 uses
  %i.dj = load float, ptr %gep.i, align 4, !tbaa !29
  %i.dk = fcmp ult float %i.dh, %i.dj
  br i1 %i.dk, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.dl = fpext float %i.da to double
  %i.dm = fmul double %i.dl, -5.656800e-01
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cx, double 4.242600e-01, double %i.dm)
  %i.do = fpext float %i.dg to double
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double 7.071000e-01, double %i.dn) ; 2 uses
  %i.dq = fptrunc double %i.dp to float           ; 2 uses
  %i.dr = fcmp olt double %i.dp, f0xB690000000000000
  %i.ds = fpext nnan float %i.dq to double
  %i.dt = fmul nnan double %i.ds, -1.000000e-01
  %i.du = fptrunc double %i.dt to float
  %.0.i = select i1 %i.dr, float %i.du, float %i.dq ; 3 uses
  %i.dv = fmul float %.0.i, %.0.i                 ; 3 uses
  %i.dw = fmul float %i.dv, %i.dv                 ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw                 ; 2 uses
  %i.dy = fmul float %i.dx, %i.dx                 ; 3 uses
  %i.dz = fmul float %i.dv, %i.dy
  %i.ea = fmul float %i.dy, %i.dy
  %i.eb = fmul float %i.ea, %i.dz
  %i.ec = fmul float %i.eb, 4.000000e+00
  %i.ed = fadd float %.0.i, %i.ec
  %i.ee = fmul float %i.ed, %i.bq                 ; 2 uses
  %i.ef = mul nsw i64 %indvars.iv.i, %.val
  %gep23.i = getelementptr [2 x i8], ptr %invariant.gep22.i, i64 %i.ef
  %i.eg = bitcast float %i.ee to i32
  %i.eh = tail call float @llvm.fabs.f32(float %i.ee)
  %i.ei = bitcast float %i.eh to i32              ; 10 uses
  %i.ej = lshr i32 %i.eg, 16                      ; 3 uses
  %i.ek = trunc nuw i32 %i.ej to i16
  %i.el = and i16 %i.ek, -32768                   ; 3 uses
  %i.em = icmp samesign ugt i32 %i.ei, 947912703
  br i1 %i.em, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.en = icmp samesign ugt i32 %i.ei, 2139095039
  br i1 %i.en, label %bb.h, label %bb.j, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.eo = or disjoint i16 %i.el, 31744            ; 2 uses
  %i.ep = icmp eq i32 %i.ei, 2139095040
  br i1 %i.ep, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = lshr i32 %i.ei, 13
  %i.er = and i32 %i.eq, 1023                     ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %i.et = zext i1 %i.es to i16
  %i.eu = trunc nuw nsw i32 %i.er to i16
  %i.ev = or i16 %i.eu, %i.et
  %i.ew = or disjoint i16 %i.ev, %i.eo
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ex = icmp samesign ugt i32 %i.ei, 1199566847
  br i1 %i.ex, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.ey = or disjoint i16 %i.el, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ez = add nuw nsw i32 %i.ei, 134221823
  %i.fa = lshr i32 %i.ei, 13
  %i.fb = and i32 %i.fa, 1
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, 13
  %i.fe = and i32 %i.ej, 32768
  %i.ff = or i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.m:                                             ; preds = %bb.f
  %i.fh = icmp samesign ult i32 %i.ei, 855638017
  br i1 %i.fh, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fi = lshr i32 %i.ei, 23                      ; 2 uses
  %i.fj = sub nuw nsw i32 126, %i.fi
  %i.fk = and i32 %i.ei, 8388607
  %i.fl = or disjoint i32 %i.fk, 8388608          ; 2 uses
  %i.fm = add nsw i32 %i.fi, -94
  %i.fn = shl i32 %i.fl, %i.fm                    ; 2 uses
  %i.fo = lshr i32 %i.fl, %i.fj                   ; 2 uses
  %i.fp = and i32 %i.ej, 32768
  %i.fq = or i32 %i.fo, %i.fp
  %i.fr = trunc nuw i32 %i.fq to i16              ; 2 uses
  %i.fs = icmp ugt i32 %i.fn, -2147483648
  br i1 %i.fs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = icmp ne i32 %i.fn, -2147483648
  %i.fu = and i32 %i.fo, 1
  %.not.i.i.i.i = icmp eq i32 %i.fu, 0
  %or.cond.i.i.i.i = select i1 %i.ft, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fv = add nuw i16 %i.fr, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.033.i.i.i.i = phi i16 [ %i.el, %bb.m ], [ %i.ew, %bb.i ], [ %i.ey, %bb.k ], [ %i.fg, %bb.l ], [ %i.eo, %bb.h ], [ %i.fv, %bb.p ], [ %i.fr, %bb.o ]
  store i16 %.033.i.i.i.i, ptr %gep23.i, align 2, !tbaa !10
  store float %i.dh, ptr %gep.i, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %7, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !27

_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit: ; preds = %._crit_edge.i, %bb.c, %.preheader.lr.ph.i
  %i.fw = add nuw nsw i32 %.04149, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.fw, 2000
  br i1 %exitcond56.not, label %bb.b, label %bb.c, !llvm.loop !28
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage3RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %7                        ; 2 uses
  %i.b = shl nuw i32 1, %8                        ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = sitofp i32 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.g, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.val, ptr %.val10, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.a, i32 noundef %i.b, double noundef 3.280000e-01, double noundef 3.690000e-01, double noundef 5.000000e-01, double noundef %i.e, double noundef -7.130000e-01, double noundef f0x3FEF295E9E1B089A)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.8.val, ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, double noundef nofpclass(nan inf zero sub nnorm) %8, double noundef nofpclass(nan inf zero sub nnorm) %9, double noundef nofpclass(nan inf zero sub nnorm) %10, double noundef %11, double noundef nofpclass(nan inf zero sub) %12, double noundef nofpclass(nan inf zero sub) %13) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %7, i64 1
  %i.c = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.b, <2 x i32> splat (i32 6)) ; 3 uses
  %i.d = fsub double %9, %8                       ; 2 uses
  %i.e = fmul double %i.d, %11
  %i.f = sitofp i32 %1 to double                  ; 2 uses
  %i.g = fmul double %i.e, %i.f
  %i.h = sitofp i32 %0 to double                  ; 2 uses
  %i.i = fdiv double %i.g, %i.h
  %i.j = fadd double %10, %i.i
  %i.k = fdiv double %i.d, %i.h
  %i.l = fsub double %i.j, %10
  %i.m = fdiv double %i.l, %i.f
  %i.n = sitofp <2 x i32> %i.c to <2 x float>
  %i.o = fdiv <2 x float> splat (float 1.000000e+00), %i.n ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.q = fpext float %i.p to double
  %i.r = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.s = fpext float %i.r to double
  %i.t = fmul float %i.p, %i.r                    ; 4 uses
  %i.u = icmp slt i32 %4, %5
  br i1 %i.u, label %.preheader1.lr.ph, label %._crit_edge19.split

.preheader1.lr.ph:                                ; preds = %bb.a
  %i.v = icmp slt i32 %2, %3
  %i.w = icmp sgt i32 %6, 0
  %i.x = icmp sgt i32 %7, 0
  %i.y = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  br i1 %i.v, label %.preheader1.preheader, label %._crit_edge19.split

.preheader1.preheader:                            ; preds = %.preheader1.lr.ph
  %i.z = sext i32 %2 to i64                       ; 2 uses
  %i.aa = sext i32 %4 to i64                      ; 2 uses
  %wide.trip.count26 = sext i32 %5 to i64
  %wide.trip.count = sext i32 %3 to i64
  %i.ab = extractelement <2 x i32> %i.c, i64 1
  %i.ac = extractelement <2 x i32> %i.c, i64 0
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge17
  %indvars.iv23 = phi i64 [ %i.aa, %.preheader1.preheader ], [ %indvars.iv.next24, %._crit_edge17 ] ; 3 uses
  %i.ad = sub nsw i64 %indvars.iv23, %i.aa
  %i.ae = mul nsw i64 %.8.val, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %.16.val, i64 %i.ae
  %i.ag = trunc nsw i64 %indvars.iv23 to i32
  %i.ah = sitofp i32 %i.ag to double
  br label %bb.b

._crit_edge19.split:                              ; preds = %._crit_edge17, %.preheader1.lr.ph, %bb.a
  ret void

._crit_edge17:                                    ; preds = %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge19.split, label %.preheader1, !llvm.loop !32

bb.b:                                             ; preds = %.preheader1, %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit
  %indvars.iv = phi i64 [ %i.z, %.preheader1 ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit ] ; 3 uses
  %i.ai = sub nsw i64 %indvars.iv, %i.z
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ai ; 7 uses
  store i16 0, ptr %i.aj, align 2, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 3 uses
  store i16 0, ptr %i.ak, align 2, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  store i16 0, ptr %i.al, align 2, !tbaa !10
  br i1 %i.w, label %.preheader.lr.ph, label %._crit_edge10.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = sitofp i32 %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.ap = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  br i1 %i.x, label %.preheader, label %._crit_edge10.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted815 = phi i16 [ %.033.i.i.i18.i81, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.promoted713 = phi i16 [ %.033.i.i.i14.i78, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.promoted12 = phi i16 [ %.033.i.i.i11.i, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.0709 = phi i32 [ %i.ia, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.aq = uitofp nneg i32 %.0709 to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.q, double %i.an)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.k, double %i.ar, double %8)
  br label %bb.aq

._crit_edge10.split.loopexit:                     ; preds = %._crit_edge
  %i.at = zext i16 %.033.i.i.i11.i to i64
  %i.au = zext i16 %.033.i.i.i14.i78 to i64
  %i.av = zext i16 %.033.i.i.i18.i81 to i64
  br label %._crit_edge10.split

._crit_edge10.split:                              ; preds = %._crit_edge10.split.loopexit, %.preheader.lr.ph, %bb.b
  %i.aw = phi i64 [ %i.av, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.ax = phi i64 [ %i.au, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.ay = phi i64 [ %i.at, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !14
  %i.bb = fmul float %i.t, %i.ba                  ; 2 uses
  %i.bc = bitcast float %i.bb to i32
  %i.bd = tail call float @llvm.fabs.f32(float %i.bb)
  %i.be = bitcast float %i.bd to i32              ; 10 uses
  %i.bf = lshr i32 %i.bc, 16                      ; 3 uses
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = and i16 %i.bg, -32768                   ; 3 uses
  %i.bi = icmp samesign ugt i32 %i.be, 947912703
  br i1 %i.bi, label %bb.c, label %bb.i

bb.c:                                             ; preds = %._crit_edge10.split
  %i.bj = icmp samesign ugt i32 %i.be, 2139095039
  br i1 %i.bj, label %bb.d, label %bb.f, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.bk = or disjoint i16 %i.bh, 31744            ; 2 uses
  %i.bl = icmp eq i32 %i.be, 2139095040
  br i1 %i.bl, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = lshr i32 %i.be, 13
  %i.bn = and i32 %i.bm, 1023                     ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i16
  %i.bq = trunc nuw nsw i32 %i.bn to i16
  %i.br = or i16 %i.bq, %i.bp
  %i.bs = or disjoint i16 %i.br, %i.bk
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.f:                                             ; preds = %bb.c
  %i.bt = icmp samesign ugt i32 %i.be, 1199566847
  br i1 %i.bt, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.bu = or disjoint i16 %i.bh, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bv = add nuw nsw i32 %i.be, 134221823
  %i.bw = lshr i32 %i.be, 13
  %i.bx = and i32 %i.bw, 1
  %i.by = add nuw nsw i32 %i.bv, %i.bx
  %i.bz = lshr i32 %i.by, 13
  %i.ca = and i32 %i.bf, 32768
  %i.cb = or i32 %i.bz, %i.ca
  %i.cc = trunc i32 %i.cb to i16
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.i:                                             ; preds = %._crit_edge10.split
  %i.cd = icmp samesign ult i32 %i.be, 855638017
  br i1 %i.cd, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = lshr i32 %i.be, 23                      ; 2 uses
  %i.cf = sub nuw nsw i32 126, %i.ce
  %i.cg = and i32 %i.be, 8388607
  %i.ch = or disjoint i32 %i.cg, 8388608          ; 2 uses
  %i.ci = add nsw i32 %i.ce, -94
  %i.cj = shl i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr i32 %i.ch, %i.cf                   ; 2 uses
  %i.cl = and i32 %i.bf, 32768
  %i.cm = or i32 %i.ck, %i.cl
  %i.cn = trunc nuw i32 %i.cm to i16              ; 2 uses
  %i.co = icmp ugt i32 %i.cj, -2147483648
  br i1 %i.co, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = icmp ne i32 %i.cj, -2147483648
  %i.cq = and i32 %i.ck, 1
  %.not.i.i.i.i = icmp eq i32 %i.cq, 0
  %or.cond.i.i.i.i = select i1 %i.cp, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd:bb.a

_ZN9Imath_3_24halfmLEf.exit15.i:                  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.033.i.i.i14.i = phi i16 [ %i.et, %bb.ac ], [ %i.fe, %bb.y ], [ %i.fg, %bb.aa ], [ %i.fo, %bb.ab ], [ %i.ew, %bb.x ], [ %i.gd, %bb.af ], [ %i.fz, %bb.ae ]
  store i16 %.033.i.i.i14.i, ptr %i.al, align 2, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aj, i64 6 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !13
  %i.gg = zext i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !14
  %i.gj = fmul float %i.t, %i.gi                  ; 2 uses
  %i.gk = bitcast float %i.gj to i32
  %i.gl = tail call float @llvm.fabs.f32(float %i.gj)
  %i.gm = bitcast float %i.gl to i32              ; 10 uses
  %i.gn = lshr i32 %i.gk, 16                      ; 3 uses
  %i.go = trunc nuw i32 %i.gn to i16
  %i.gp = and i16 %i.go, -32768                   ; 3 uses
  %i.gq = icmp samesign ugt i32 %i.gm, 947912703
  br i1 %i.gq, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit15.i
  %i.gr = icmp samesign ugt i32 %i.gm, 2139095039
  br i1 %i.gr, label %bb.ah, label %bb.aj, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.gs = or disjoint i16 %i.gp, 31744            ; 2 uses
  %i.gt = icmp eq i32 %i.gm, 2139095040
  br i1 %i.gt, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = lshr i32 %i.gm, 13
  %i.gv = and i32 %i.gu, 1023                     ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i16
  %i.gy = trunc nuw nsw i32 %i.gv to i16
  %i.gz = or i16 %i.gy, %i.gx
  %i.ha = or disjoint i16 %i.gz, %i.gs
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hb = icmp samesign ugt i32 %i.gm, 1199566847
  br i1 %i.hb, label %bb.ak, label %bb.al, !prof !15

bb.ak:                                            ; preds = %bb.aj
  %i.hc = or disjoint i16 %i.gp, 31744
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.al:                                            ; preds = %bb.aj
  %i.hd = add nuw nsw i32 %i.gm, 134221823
  %i.he = lshr i32 %i.gm, 13
  %i.hf = and i32 %i.he, 1
  %i.hg = add nuw nsw i32 %i.hd, %i.hf
  %i.hh = lshr i32 %i.hg, 13
  %i.hi = and i32 %i.gn, 32768
  %i.hj = or i32 %i.hh, %i.hi
  %i.hk = trunc i32 %i.hj to i16
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.am:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit15.i
  %i.hl = icmp samesign ult i32 %i.gm, 855638017
  br i1 %i.hl, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hm = lshr i32 %i.gm, 23                      ; 2 uses
  %i.hn = sub nuw nsw i32 126, %i.hm
  %i.ho = and i32 %i.gm, 8388607
  %i.hp = or disjoint i32 %i.ho, 8388608          ; 2 uses
  %i.hq = add nsw i32 %i.hm, -94
  %i.hr = shl i32 %i.hp, %i.hq                    ; 2 uses
  %i.hs = lshr i32 %i.hp, %i.hn                   ; 2 uses
  %i.ht = and i32 %i.gn, 32768
  %i.hu = or i32 %i.hs, %i.ht
  %i.hv = trunc nuw i32 %i.hu to i16              ; 2 uses
  %i.hw = icmp ugt i32 %i.hr, -2147483648
  br i1 %i.hw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hx = icmp ne i32 %i.hr, -2147483648
  %i.hy = and i32 %i.hs, 1
  %.not.i.i.i16.i = icmp eq i32 %i.hy, 0
  %or.cond.i.i.i17.i = select i1 %i.hx, i1 true, i1 %.not.i.i.i16.i
  br i1 %or.cond.i.i.i17.i, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hz = add nuw i16 %i.hv, 1
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit:   ; preds = %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am, %bb.ao, %bb.ap
  %.033.i.i.i18.i = phi i16 [ %i.gp, %bb.am ], [ %i.ha, %bb.ai ], [ %i.hc, %bb.ak ], [ %i.hk, %bb.al ], [ %i.gs, %bb.ah ], [ %i.hz, %bb.ap ], [ %i.hv, %bb.ao ]
  store i16 %.033.i.i.i18.i, ptr %i.ge, align 2, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond22.not, label %._crit_edge17, label %bb.b, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit
  %i.ia = add nuw nsw i32 %.0709, 1               ; 2 uses
  %exitcond20.not = icmp eq i32 %i.ia, %i.ac
  br i1 %exitcond20.not, label %._crit_edge10.split.loopexit, label %.preheader, !llvm.loop !34

bb.aq:                                            ; preds = %.preheader, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit
  %i.ib = phi i16 [ %.promoted815, %.preheader ], [ %.033.i.i.i18.i81, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %i.ic = phi i16 [ %.promoted713, %.preheader ], [ %.033.i.i.i14.i78, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %.033.i.i.i11.i6 = phi i16 [ %.promoted12, %.preheader ], [ %.033.i.i.i11.i, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %.0695 = phi i32 [ 0, %.preheader ], [ %i.qj, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ] ; 2 uses
  %i.id = uitofp nneg i32 %.0695 to double
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.s, double %i.ah)
  %i.if = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ie, double %10)
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ar
  %.04 = phi i32 [ 0, %bb.aq ], [ %i.ir, %bb.ar ] ; 2 uses
  %.0673 = phi double [ %13, %bb.aq ], [ %i.iv, %bb.ar ] ; 3 uses
  %.0682 = phi double [ %12, %bb.aq ], [ %i.iq, %bb.ar ] ; 2 uses
  %i.ih = fneg double %.0673
  %i.ii = fmul double %.0673, %i.ih
  %i.ij = fmul double %.0682, 2.000000e+00
  %i.ik = insertelement <2 x double> poison, double %.0682, i64 0 ; 2 uses
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1
  %i.im = insertelement <2 x double> %i.ik, double %.0673, i64 1
  %i.in = insertelement <2 x double> %i.ig, double %i.ii, i64 0
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.im, <2 x double> %i.in) ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0 ; 2 uses
  %i.iq = fadd double %i.as, %i.ip
  %i.ir = add nuw nsw i32 %.04, 1                 ; 2 uses
  %i.is = icmp samesign ult i32 %.04, 255
  %i.it = fcmp olt double %i.ip, 1.000000e+02
  %i.iu = select i1 %i.is, i1 %i.it, i1 false
  %i.iv = extractelement <2 x double> %i.io, i64 1
  br i1 %i.iu, label %bb.ar, label %bb.as, !llvm.loop !35

bb.as:                                            ; preds = %bb.ar
  %i.iw = uitofp nneg i32 %i.ir to float
  %i.ix = fmul nnan float %i.iw, 3.906250e-03     ; 2 uses
  %i.iy = bitcast float %i.ix to i32              ; 10 uses
  %i.iz = icmp samesign ugt i32 %i.iy, 947912703
  br i1 %i.iz, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ja = icmp samesign ugt i32 %i.iy, 2139095039
  br i1 %i.ja, label %bb.au, label %bb.aw, !prof !15

bb.au:                                            ; preds = %bb.at
  %i.jb = icmp eq i32 %i.iy, 2139095040
  br i1 %i.jb, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jc = lshr i32 %i.iy, 13
  %i.jd = and i32 %i.jc, 1023                     ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  %i.jf = zext i1 %i.je to i16
  %i.jg = trunc nuw nsw i32 %i.jd to i16
  %i.jh = or i16 %i.jg, %i.jf
  %i.ji = or disjoint i16 %i.jh, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.aw:                                            ; preds = %bb.at
  %i.jj = icmp samesign ugt i32 %i.iy, 1199566847
  br i1 %i.jj, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.ax, !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.jk = add nuw nsw i32 %i.iy, 134221823
  %i.jl = lshr i32 %i.iy, 13
  %i.jm = and i32 %i.jl, 1
  %i.jn = add nuw nsw i32 %i.jk, %i.jm
  %i.jo = lshr i32 %i.jn, 13
  %i.jp = trunc i32 %i.jo to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.ay:                                            ; preds = %bb.as
  %i.jq = icmp samesign ult i32 %i.iy, 855638017
  br i1 %i.jq, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jr = lshr i32 %i.iy, 23                      ; 2 uses
  %i.js = sub nuw nsw i32 126, %i.jr
  %i.jt = and i32 %i.iy, 8388607
  %i.ju = or disjoint i32 %i.jt, 8388608          ; 2 uses
  %i.jv = add nsw i32 %i.jr, -94
  %i.jw = shl i32 %i.ju, %i.jv                    ; 2 uses
  %i.jx = lshr i32 %i.ju, %i.js                   ; 2 uses
  %i.jy = trunc nuw nsw i32 %i.jx to i16          ; 2 uses
  %i.jz = icmp ugt i32 %i.jw, -2147483648
  br i1 %i.jz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = icmp ne i32 %i.jw, -2147483648
  %i.kb = and i32 %i.jx, 1
  %.not.i.i.i.i73 = icmp eq i32 %i.kb, 0
  %or.cond.i.i.i.i74 = select i1 %i.ka, i1 true, i1 %.not.i.i.i.i73
  br i1 %or.cond.i.i.i.i74, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kc = add nuw nsw i16 %i.jy, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.aw, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au
  %.033.i.i.i.i75 = phi i16 [ 0, %bb.ay ], [ %i.ji, %bb.av ], [ %i.jy, %bb.ba ], [ %i.jp, %bb.ax ], [ 31744, %bb.au ], [ %i.kc, %bb.bb ], [ 31744, %bb.aw ]
  store i16 %.033.i.i.i.i75, ptr %i.ao, align 2, !tbaa !10
  %i.kd = fmul nnan float %i.ix, 4.000000e+00     ; 4 uses
  %i.ke = fptosi float %i.kd to i32
  %14 = sitofp i32 %i.ke to float
  %i.kf = fsub nnan float %i.kd, %14
  %i.kg = fmul nnan float %i.kf, 2.000000e+00     ; 3 uses
  %i.kh = fcmp olt float %i.kg, 1.000000e+00
  %i.ki = fsub float 2.000000e+00, %i.kg
  %i.kj = select i1 %i.kh, float %i.kg, float %i.ki
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float 4.000000e+00, float 1.000000e-01)
  %i.kl = zext i16 %.033.i.i.i11.i6 to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.kl
  %i.kn = load float, ptr %i.km, align 4, !tbaa !14
  %i.ko = fadd float %i.kk, %i.kn                 ; 2 uses
  %i.kp = bitcast float %i.ko to i32
  %i.kq = tail call float @llvm.fabs.f32(float %i.ko)
  %i.kr = bitcast float %i.kq to i32              ; 10 uses
  %i.ks = lshr i32 %i.kp, 16                      ; 3 uses
  %i.kt = trunc nuw i32 %i.ks to i16
  %i.ku = and i16 %i.kt, -32768                   ; 3 uses
  %i.kv = icmp samesign ugt i32 %i.kr, 947912703
  br i1 %i.kv, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit.i
  %i.kw = icmp samesign ugt i32 %i.kr, 2139095039
  br i1 %i.kw, label %bb.bd, label %bb.bf, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.kx = or disjoint i16 %i.ku, 31744            ; 2 uses
  %i.ky = icmp eq i32 %i.kr, 2139095040
  br i1 %i.ky, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = lshr i32 %i.kr, 13
  %i.la = and i32 %i.kz, 1023                     ; 2 uses
  %i.lb = icmp eq i32 %i.la, 0
  %i.lc = zext i1 %i.lb to i16
  %i.ld = trunc nuw nsw i32 %i.la to i16
  %i.le = or i16 %i.ld, %i.lc
  %i.lf = or disjoint i16 %i.le, %i.kx
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.lg = icmp samesign ugt i32 %i.kr, 1199566847
  br i1 %i.lg, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.lh = or disjoint i16 %i.ku, 31744
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.li = add nuw nsw i32 %i.kr, 134221823
  %i.lj = lshr i32 %i.kr, 13
  %i.lk = and i32 %i.lj, 1
  %i.ll = add nuw nsw i32 %i.li, %i.lk
  %i.lm = lshr i32 %i.ll, 13
  %i.ln = and i32 %i.ks, 32768
  %i.lo = or i32 %i.lm, %i.ln
  %i.lp = trunc i32 %i.lo to i16
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bi:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit.i
  %i.lq = icmp samesign ult i32 %i.kr, 855638017
  br i1 %i.lq, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lr = lshr i32 %i.kr, 23                      ; 2 uses
  %i.ls = sub nuw nsw i32 126, %i.lr
  %i.lt = and i32 %i.kr, 8388607
  %i.lu = or disjoint i32 %i.lt, 8388608          ; 2 uses
  %i.lv = add nsw i32 %i.lr, -94
  %i.lw = shl i32 %i.lu, %i.lv                    ; 2 uses
  %i.lx = lshr i32 %i.lu, %i.ls                   ; 2 uses
  %i.ly = and i32 %i.ks, 32768
  %i.lz = or i32 %i.lx, %i.ly
  %i.ma = trunc nuw i32 %i.lz to i16              ; 2 uses
  %i.mb = icmp ugt i32 %i.lw, -2147483648
  br i1 %i.mb, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mc = icmp ne i32 %i.lw, -2147483648
  %i.md = and i32 %i.lx, 1
  %.not.i.i.i9.i = icmp eq i32 %i.md, 0
  %or.cond.i.i.i10.i = select i1 %i.mc, i1 true, i1 %.not.i.i.i9.i
  br i1 %or.cond.i.i.i10.i, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.me = add nuw i16 %i.ma, 1
  br label %_ZN9Imath_3_24halfpLEf.exit.i

_ZN9Imath_3_24halfpLEf.exit.i:                    ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd
  %.033.i.i.i11.i = phi i16 [ %i.ku, %bb.bi ], [ %i.lf, %bb.be ], [ %i.lh, %bb.bg ], [ %i.lp, %bb.bh ], [ %i.kx, %bb.bd ], [ %i.me, %bb.bl ], [ %i.ma, %bb.bk ] ; 4 uses
  store i16 %.033.i.i.i11.i, ptr %i.aj, align 2, !tbaa !10
  %i.mf = fadd float %i.kd, 3.333300e-01          ; 2 uses
  %i.mg = fptosi float %i.mf to i32
  %15 = sitofp i32 %i.mg to float
  %i.mh = fsub nnan float %i.mf, %15
  %i.mi = fmul nnan float %i.mh, 2.000000e+00     ; 3 uses
  %i.mj = fcmp olt float %i.mi, 1.000000e+00
  %i.mk = fsub float 2.000000e+00, %i.mi
  %i.ml = select i1 %i.mj, float %i.mi, float %i.mk
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.ml, float 4.000000e+00, float 1.000000e-01)
  %i.mn = zext i16 %i.ic to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.mn
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !14
  %i.mq = fadd float %i.mm, %i.mp                 ; 2 uses
  %i.mr = bitcast float %i.mq to i32
  %i.ms = tail call float @llvm.fabs.f32(float %i.mq)
  %i.mt = bitcast float %i.ms to i32              ; 10 uses
  %i.mu = lshr i32 %i.mr, 16                      ; 3 uses
  %i.mv = trunc nuw i32 %i.mu to i16
  %i.mw = and i16 %i.mv, -32768                   ; 3 uses
  %i.mx = icmp samesign ugt i32 %i.mt, 947912703
  br i1 %i.mx, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %_ZN9Imath_3_24halfpLEf.exit.i
  %i.my = icmp samesign ugt i32 %i.mt, 2139095039
  br i1 %i.my, label %bb.bn, label %bb.bp, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.mz = or disjoint i16 %i.mw, 31744            ; 2 uses
  %i.na = icmp eq i32 %i.mt, 2139095040
  br i1 %i.na, label %_ZN9Imath_3_24halfpLEf.exit15.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nb = lshr i32 %i.mt, 13
  %i.nc = and i32 %i.nb, 1023                     ; 2 uses
  %i.nd = icmp eq i32 %i.nc, 0
  %i.ne = zext i1 %i.nd to i16
  %i.nf = trunc nuw nsw i32 %i.nc to i16
  %i.ng = or i16 %i.nf, %i.ne
  %i.nh = or disjoint i16 %i.ng, %i.mz
  br label %_ZN9Imath_3_24halfpLEf.exit15.i

bb.bp:                                            ; preds = %bb.bm
  %i.ni = icmp samesign ugt i32 %i.mt, 1199566847
  br i1 %i.ni, label %bb.bq, label %bb.br, !prof !15

bb.bq:                                            ; preds = %bb.bp
  %i.nj = or disjoint i16 %i.mw, 31744
  br label %_ZN9Imath_3_24halfpLEf.exit15.i

bb.br:                                            ; preds = %bb.bp
  %i.nk = add nuw nsw i32 %i.mt, 134221823
  %i.nl = lshr i32 %i.mt, 13
  %i.nm = and i32 %i.nl, 1
  %i.nn = add nuw nsw i32 %i.nk, %i.nm
  %i.no = lshr i32 %i.nn, 13
  %i.np = and i32 %i.mu, 32768
  %i.nq = or i32 %i.no, %i.np
  %i.nr = trunc i32 %i.nq to i16
  br label %_ZN9Imath_3_24halfpLEf.exit15.i

bb.bs:                                            ; preds = %_ZN9Imath_3_24halfpLEf.exit.i
  %i.ns = icmp samesign ult i32 %i.mt, 855638017
  br i1 %i.ns, label %_ZN9Imath_3_24halfpLEf.exit15.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nt = lshr i32 %i.mt, 23                      ; 2 uses
  %i.nu = sub nuw nsw i32 126, %i.nt
  %i.nv = and i32 %i.mt, 8388607
  %i.nw = or disjoint i32 %i.nv, 8388608          ; 2 uses
  %i.nx = add nsw i32 %i.nt, -94
  %i.ny = shl i32 %i.nw, %i.nx                    ; 2 uses
  %i.nz = lshr i32 %i.nw, %i.nu                   ; 2 uses
  %i.oa = and i32 %i.mu, 32768
  %i.ob = or i32 %i.nz, %i.oa
  %i.oc = trunc nuw i32 %i.ob to i16              ; 2 uses
  %i.od = icmp ugt i32 %i.ny, -2147483648
  br i1 %i.od, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oe = icmp ne i32 %i.ny, -2147483648
  %i.of = and i32 %i.nz, 1
  %.not.i.i.i12.i76 = icmp eq i32 %i.of, 0
  %or.cond.i.i.i13.i77 = select i1 %i.oe, i1 true, i1 %.not.i.i.i12.i76
  br i1 %or.cond.i.i.i13.i77, label %_ZN9Imath_3_24halfpLEf.exit15.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.og = add nuw i16 %i.oc, 1
  br label %_ZN9Imath_3_24halfpLEf.exit15.i

_ZN9Imath_3_24halfpLEf.exit15.i:                  ; preds = %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn
  %.033.i.i.i14.i78 = phi i16 [ %i.mw, %bb.bs ], [ %i.nh, %bb.bo ], [ %i.nj, %bb.bq ], [ %i.nr, %bb.br ], [ %i.mz, %bb.bn ], [ %i.og, %bb.bv ], [ %i.oc, %bb.bu ] ; 4 uses
  store i16 %.033.i.i.i14.i78, ptr %i.ak, align 2, !tbaa !10
  %i.oh = fadd float %i.kd, 6.666700e-01          ; 2 uses
  %i.oi = fptosi float %i.oh to i32
  %16 = sitofp i32 %i.oi to float
  %i.oj = fsub nnan float %i.oh, %16
  %i.ok = fmul nnan float %i.oj, 2.000000e+00     ; 3 uses
  %i.ol = fcmp olt float %i.ok, 1.000000e+00
  %i.om = fsub float 2.000000e+00, %i.ok
  %i.on = select i1 %i.ol, float %i.ok, float %i.om
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.on, float 4.000000e+00, float 1.000000e-01)
  %i.op = zext i16 %i.ib to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.op
  %i.or = load float, ptr %i.oq, align 4, !tbaa !14
  %i.os = fadd float %i.oo, %i.or                 ; 2 uses
  %i.ot = bitcast float %i.os to i32
  %i.ou = tail call float @llvm.fabs.f32(float %i.os)
  %i.ov = bitcast float %i.ou to i32              ; 10 uses
  %i.ow = lshr i32 %i.ot, 16                      ; 3 uses
  %i.ox = trunc nuw i32 %i.ow to i16
  %i.oy = and i16 %i.ox, -32768                   ; 3 uses
  %i.oz = icmp samesign ugt i32 %i.ov, 947912703
  br i1 %i.oz, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %_ZN9Imath_3_24halfpLEf.exit15.i
  %i.pa = icmp samesign ugt i32 %i.ov, 2139095039
  br i1 %i.pa, label %bb.bx, label %bb.bz, !prof !15

bb.bx:                                            ; preds = %bb.bw
  %i.pb = or disjoint i16 %i.oy, 31744            ; 2 uses
  %i.pc = icmp eq i32 %i.ov, 2139095040
  br i1 %i.pc, label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pd = lshr i32 %i.ov, 13
  %i.pe = and i32 %i.pd, 1023                     ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  %i.pg = zext i1 %i.pf to i16
  %i.ph = trunc nuw nsw i32 %i.pe to i16
  %i.pi = or i16 %i.ph, %i.pg
  %i.pj = or disjoint i16 %i.pi, %i.pb
  br label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit

bb.bz:                                            ; preds = %bb.bw
  %i.pk = icmp samesign ugt i32 %i.ov, 1199566847
  br i1 %i.pk, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.pl = or disjoint i16 %i.oy, 31744
  br label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit

bb.cb:                                            ; preds = %bb.bz
  %i.pm = add nuw nsw i32 %i.ov, 134221823
  %i.pn = lshr i32 %i.ov, 13
  %i.po = and i32 %i.pn, 1
  %i.pp = add nuw nsw i32 %i.pm, %i.po
  %i.pq = lshr i32 %i.pp, 13
  %i.pr = and i32 %i.ow, 32768
  %i.ps = or i32 %i.pq, %i.pr
  %i.pt = trunc i32 %i.ps to i16
  br label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit

bb.cc:                                            ; preds = %_ZN9Imath_3_24halfpLEf.exit15.i
  %i.pu = icmp samesign ult i32 %i.ov, 855638017
  br i1 %i.pu, label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pv = lshr i32 %i.ov, 23                      ; 2 uses
  %i.pw = sub nuw nsw i32 126, %i.pv
  %i.px = and i32 %i.ov, 8388607
  %i.py = or disjoint i32 %i.px, 8388608          ; 2 uses
  %i.pz = add nsw i32 %i.pv, -94
  %i.qa = shl i32 %i.py, %i.pz                    ; 2 uses
  %i.qb = lshr i32 %i.py, %i.pw                   ; 2 uses
  %i.qc = and i32 %i.ow, 32768
  %i.qd = or i32 %i.qb, %i.qc
  %i.qe = trunc nuw i32 %i.qd to i16              ; 2 uses
  %i.qf = icmp ugt i32 %i.qa, -2147483648
  br i1 %i.qf, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qg = icmp ne i32 %i.qa, -2147483648
  %i.qh = and i32 %i.qb, 1
  %.not.i.i.i16.i79 = icmp eq i32 %i.qh, 0
  %or.cond.i.i.i17.i80 = select i1 %i.qg, i1 true, i1 %.not.i.i.i16.i79
  br i1 %or.cond.i.i.i17.i80, label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.qi = add nuw i16 %i.qe, 1
  br label %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit

_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit:     ; preds = %bb.bx, %bb.by, %bb.ca, %bb.cb, %bb.cc, %bb.ce, %bb.cf
  %.033.i.i.i18.i81 = phi i16 [ %i.oy, %bb.cc ], [ %i.pj, %bb.by ], [ %i.pl, %bb.ca ], [ %i.pt, %bb.cb ], [ %i.pb, %bb.bx ], [ %i.qi, %bb.cf ], [ %i.qe, %bb.ce ] ; 4 uses
  store i16 %.033.i.i.i18.i81, ptr %i.al, align 2, !tbaa !10
  %i.qj = add nuw nsw i32 %.0695, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.qj, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage4RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %7                        ; 2 uses
  %i.b = shl nuw i32 1, %8                        ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = sitofp i32 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.g, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.val, ptr %.val10, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.a, i32 noundef %i.b, double noundef 3.247000e-01, double noundef 3.334800e-01, double noundef 4.346000e-01, double noundef %i.e, double noundef 4.000000e-01, double noundef -7.650000e-01)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage5RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %7                        ; 2 uses
  %i.b = shl nuw i32 1, %8                        ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = sitofp i32 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.g, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.val, ptr %.val10, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.a, i32 noundef %i.b, double noundef 2.839000e-01, double noundef 2.852000e-01, double noundef 9.610000e-03, double noundef %i.e, double noundef 2.500000e-01, double noundef 3.100000e-01)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage6RN7Imf_3_47Array2DI2GZEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.b, align 8
  %i.c = sitofp i32 %2 to double                  ; 2 uses
  %i.d = fmul nnan double %i.c, 3.500000e+00
  %i.e = sitofp i32 %1 to double                  ; 2 uses
  %i.f = fdiv double %i.d, %i.e
  %i.g = fadd double %i.f, -1.333300e+00
  %i.h = fdiv double 3.500000e+00, %i.e
  %i.i = fadd double %i.g, 1.333300e+00
  %i.j = fdiv double %i.i, %i.c                   ; 2 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.preheader1.lr.ph.i, label %_ZN12_GLOBAL__N_14mndlI2GZEEvRN7Imf_3_47Array2DIT_EEiiiiiiiidddddd.exit

.preheader1.lr.ph.i:                              ; preds = %bb.a
  %i.l = icmp sgt i32 %1, 0
  %i.m = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  br i1 %i.l, label %.preheader1.preheader.i, label %_ZN12_GLOBAL__N_14mndlI2GZEEvRN7Imf_3_47Array2DIT_EEiiiiiiiidddddd.exit

.preheader1.preheader.i:                          ; preds = %.preheader1.lr.ph.i
  %wide.trip.count20.i = zext nneg i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %._crit_edge.i, %.preheader1.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader1.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 3 uses
  %i.p = mul nsw i64 %indvars.iv17.i, %.val
  %i.q = getelementptr inbounds [8 x i8], ptr %.val4, i64 %i.p
  %i.r = trunc nuw nsw i64 %indvars.iv17.i to i32
  %i.s = uitofp nneg i32 %i.r to double           ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fadd <2 x double> %i.u, <double -0.000000e+00, double f0x3FD5555560000000>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.v, <2 x double> splat (double -1.333300e+00)) ; 2 uses
  %i.x = fadd double %i.s, f0x3FE5555560000000
  %i.y = tail call double @llvm.fmuladd.f64(double %i.j, double %i.x, double -1.333300e+00)
  %i.z = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = insertelement <2 x double> poison, double %i.y, i64 1
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN12_GLOBAL__N_14mndlI2GZEEvRN7Imf_3_47Array2DIT_EEiiiiiiiidddddd.exit, label %.preheader1.i, !llvm.loop !37

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i, %.preheader1.i
  %indvars.iv.i = phi i64 [ 0, %.preheader1.i ], [ %indvars.iv.next.i, %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i ; 6 uses
  store i16 0, ptr %i.ab, align 2, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 5 uses
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !42
  %i.ad = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ae = uitofp nneg i32 %i.ad to double
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, %bb.b
  %.07011.i = phi i32 [ 0, %bb.b ], [ %i.kj, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i ] ; 2 uses
  %.promoted910.i = phi i16 [ 0, %bb.b ], [ %i.ki, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i ]
  %i.af = uitofp nneg i32 %.07011.i to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double f0x3FD5555560000000, double %i.ae)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ag, double -2.500000e+00) ; 3 uses
  br label %bb.n

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i
  %i.ai = zext i16 %i.ki to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !14
  %i.al = fmul float %i.ak, f0x3DE38E3A           ; 2 uses
  %i.am = bitcast float %i.al to i32
  %i.an = tail call float @llvm.fabs.f32(float %i.al)
  %i.ao = bitcast float %i.an to i32              ; 10 uses
  %i.ap = lshr i32 %i.am, 16                      ; 3 uses
  %i.aq = trunc nuw i32 %i.ap to i16
  %i.ar = and i16 %i.aq, -32768                   ; 3 uses
  %i.as = icmp samesign ugt i32 %i.ao, 947912703
  br i1 %i.as, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.at = icmp samesign ugt i32 %i.ao, 2139095039
  br i1 %i.at, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.au = or disjoint i16 %i.ar, 31744            ; 2 uses
  %i.av = icmp eq i32 %i.ao, 2139095040
  br i1 %i.av, label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = lshr i32 %i.ao, 13
  %i.ax = and i32 %i.aw, 1023                     ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i16
  %i.ba = trunc nuw nsw i32 %i.ax to i16
  %i.bb = or i16 %i.ba, %i.az
  %i.bc = or disjoint i16 %i.bb, %i.au
  br label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i

bb.g:                                             ; preds = %bb.d
  %i.bd = icmp samesign ugt i32 %i.ao, 1199566847
  br i1 %i.bd, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.be = or disjoint i16 %i.ar, 31744
  br label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bf = add nuw nsw i32 %i.ao, 134221823
  %i.bg = lshr i32 %i.ao, 13
  %i.bh = and i32 %i.bg, 1
  %i.bi = add nuw nsw i32 %i.bf, %i.bh
  %i.bj = lshr i32 %i.bi, 13
  %i.bk = and i32 %i.ap, 32768
  %i.bl = or i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i16
  br label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i

bb.j:                                             ; preds = %bb.c
  %i.bn = icmp samesign ult i32 %i.ao, 855638017
  br i1 %i.bn, label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = lshr i32 %i.ao, 23                      ; 2 uses
  %i.bp = sub nuw nsw i32 126, %i.bo
  %i.bq = and i32 %i.ao, 8388607
  %i.br = or disjoint i32 %i.bq, 8388608          ; 2 uses
  %i.bs = add nsw i32 %i.bo, -94
  %i.bt = shl i32 %i.br, %i.bs                    ; 2 uses
  %i.bu = lshr i32 %i.br, %i.bp                   ; 2 uses
  %i.bv = and i32 %i.ap, 32768
  %i.bw = or i32 %i.bu, %i.bv
  %i.bx = trunc nuw i32 %i.bw to i16              ; 2 uses
  %i.by = icmp ugt i32 %i.bt, -2147483648
  br i1 %i.by, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp ne i32 %i.bt, -2147483648
  %i.ca = and i32 %i.bu, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ca, 0
  %or.cond.i.i.i.i.i = select i1 %i.bz, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cb = add nuw i16 %i.bx, 1
  br label %_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i

_ZN12_GLOBAL__N_15scaleEfR2GZ.exit.i:             ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.033.i.i.i.i.i = phi i16 [ %i.ar, %bb.j ], [ %i.bc, %bb.f ], [ %i.be, %bb.h ], [ %i.bm, %bb.i ], [ %i.au, %bb.e ], [ %i.cb, %bb.m ], [ %i.bx, %bb.l ]
  store i16 %.033.i.i.i.i.i, ptr %i.ab, align 4, !tbaa !10
  %i.cc = fmul nnan float %i.ig, f0x3DE38E3A
  store float %i.cc, ptr %i.ac, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !38

bb.n:                                             ; preds = %bb.n, %.preheader.i
  %.04.i = phi i32 [ 0, %.preheader.i ], [ %i.cn, %bb.n ] ; 2 uses
  %i.cd = phi <2 x double> [ zeroinitializer, %.preheader.i ], [ %i.cr, %bb.n ] ; 3 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.cf = fneg double %i.ce
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ch, <double 1.000000e+00, double 2.000000e+00>
  %i.cj = insertelement <2 x double> %i.z, double %i.cg, i64 0
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cd, <2 x double> %i.cj) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cm = fadd double %i.ah, %i.cl
  %i.cn = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %i.co = icmp samesign ult i32 %.04.i, 255
  %i.cp = fcmp olt double %i.cl, 1.000000e+02
  %i.cq = select i1 %i.co, i1 %i.cp, i1 false
  %i.cr = insertelement <2 x double> %i.ck, double %i.cm, i64 0
  br i1 %i.cq, label %bb.n, label %bb.o, !llvm.loop !39

bb.o:                                             ; preds = %bb.n
  %i.cs = uitofp nneg i32 %i.cn to float
  %i.ct = fmul nnan float %i.cs, 3.906250e-03
  %i.cu = fmul nnan float %i.ct, 5.000000e+00     ; 3 uses
  %i.cv = fptosi float %i.cu to i32
  %3 = sitofp i32 %i.cv to float
  %i.cw = fsub nnan float %i.cu, %3
  %i.cx = fmul nnan float %i.cw, 2.000000e+00     ; 3 uses
  %i.cy = fcmp olt float %i.cx, 1.000000e+00
  %i.cz = fsub nnan float 2.000000e+00, %i.cx
  %i.da = select i1 %i.cy, float %i.cx, float %i.cz
  %i.db = fmul nnan float %i.da, 4.000000e+00
  %i.dc = zext i16 %.promoted910.i to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !14
  %i.df = fadd float %i.db, %i.de                 ; 2 uses
  %i.dg = bitcast float %i.df to i32
  %i.dh = tail call float @llvm.fabs.f32(float %i.df)
  %i.di = bitcast float %i.dh to i32              ; 10 uses
  %i.dj = lshr i32 %i.dg, 16                      ; 3 uses
  %i.dk = trunc nuw i32 %i.dj to i16
  %i.dl = and i16 %i.dk, -32768                   ; 3 uses
  %i.dm = icmp samesign ugt i32 %i.di, 947912703
  br i1 %i.dm, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.dn = icmp samesign ugt i32 %i.di, 2139095039
  br i1 %i.dn, label %bb.q, label %bb.s, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.do = or disjoint i16 %i.dl, 31744            ; 2 uses
  %i.dp = icmp eq i32 %i.di, 2139095040
  br i1 %i.dp, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = lshr i32 %i.di, 13
  %i.dr = and i32 %i.dq, 1023                     ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i16
  %i.du = trunc nuw nsw i32 %i.dr to i16
  %i.dv = or i16 %i.du, %i.dt
  %i.dw = or disjoint i16 %i.dv, %i.do
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i

bb.s:                                             ; preds = %bb.p
  %i.dx = icmp samesign ugt i32 %i.di, 1199566847
  br i1 %i.dx, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.dy = or disjoint i16 %i.dl, 31744
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dz = add nuw nsw i32 %i.di, 134221823
  %i.ea = lshr i32 %i.di, 13
  %i.eb = and i32 %i.ea, 1
  %i.ec = add nuw nsw i32 %i.dz, %i.eb
  %i.ed = lshr i32 %i.ec, 13
  %i.ee = and i32 %i.dj, 32768
  %i.ef = or i32 %i.ed, %i.ee
  %i.eg = trunc i32 %i.ef to i16
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i

bb.v:                                             ; preds = %bb.o
  %i.eh = icmp samesign ult i32 %i.di, 855638017
  br i1 %i.eh, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = lshr i32 %i.di, 23                      ; 2 uses
  %i.ej = sub nuw nsw i32 126, %i.ei
  %i.ek = and i32 %i.di, 8388607
  %i.el = or disjoint i32 %i.ek, 8388608          ; 2 uses
  %i.em = add nsw i32 %i.ei, -94
  %i.en = shl i32 %i.el, %i.em                    ; 2 uses
  %i.eo = lshr i32 %i.el, %i.ej                   ; 2 uses
  %i.ep = and i32 %i.dj, 32768
  %i.eq = or i32 %i.eo, %i.ep
  %i.er = trunc nuw i32 %i.eq to i16              ; 2 uses
  %i.es = icmp ugt i32 %i.en, -2147483648
  br i1 %i.es, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = icmp ne i32 %i.en, -2147483648
  %i.eu = and i32 %i.eo, 1
  %.not.i.i.i.i73.i = icmp eq i32 %i.eu, 0
  %or.cond.i.i.i.i74.i = select i1 %i.et, i1 true, i1 %.not.i.i.i.i73.i
  br i1 %or.cond.i.i.i.i74.i, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ev = add nuw i16 %i.er, 1
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i

_ZN12_GLOBAL__N_13addEfR2GZ.exit.i:               ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.033.i.i.i.i75.i = phi i16 [ %i.dl, %bb.v ], [ %i.dw, %bb.r ], [ %i.dy, %bb.t ], [ %i.eg, %bb.u ], [ %i.do, %bb.q ], [ %i.ev, %bb.y ], [ %i.er, %bb.x ] ; 2 uses
  store i16 %.033.i.i.i.i75.i, ptr %i.ab, align 4, !tbaa !10
  store float %i.cu, ptr %i.ac, align 4, !tbaa !42
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i
  %.04.1.i = phi i32 [ 0, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i ], [ %i.fg, %bb.z ] ; 2 uses
  %i.ew = phi <2 x double> [ zeroinitializer, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.i ], [ %i.fk, %bb.z ] ; 3 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 1 ; 2 uses
  %i.ey = fneg double %i.ex
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x double> %i.fa, <double 1.000000e+00, double 2.000000e+00>
  %i.fc = insertelement <2 x double> %i.w, double %i.ez, i64 0
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.ew, <2 x double> %i.fc) ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.ff = fadd double %i.ah, %i.fe
  %i.fg = add nuw nsw i32 %.04.1.i, 1             ; 2 uses
  %i.fh = icmp samesign ult i32 %.04.1.i, 255
  %i.fi = fcmp olt double %i.fe, 1.000000e+02
  %i.fj = select i1 %i.fh, i1 %i.fi, i1 false
  %i.fk = insertelement <2 x double> %i.fd, double %i.ff, i64 0
  br i1 %i.fj, label %bb.z, label %bb.aa, !llvm.loop !39

bb.aa:                                            ; preds = %bb.z
  %i.fl = uitofp nneg i32 %i.fg to float
  %i.fm = fmul nnan float %i.fl, 3.906250e-03
  %i.fn = fmul nnan float %i.fm, 5.000000e+00     ; 3 uses
  %i.fo = fptosi float %i.fn to i32
  %4 = sitofp i32 %i.fo to float
  %i.fp = fsub nnan float %i.fn, %4
  %i.fq = fmul nnan float %i.fp, 2.000000e+00     ; 3 uses
  %i.fr = fcmp olt float %i.fq, 1.000000e+00
  %i.fs = fsub nnan float 2.000000e+00, %i.fq
  %i.ft = select i1 %i.fr, float %i.fq, float %i.fs
  %i.fu = fmul nnan float %i.ft, 4.000000e+00
  %i.fv = zext i16 %.033.i.i.i.i75.i to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !14
  %i.fy = fadd float %i.fu, %i.fx                 ; 2 uses
  %i.fz = bitcast float %i.fy to i32
  %i.ga = tail call float @llvm.fabs.f32(float %i.fy)
  %i.gb = bitcast float %i.ga to i32              ; 10 uses
  %i.gc = lshr i32 %i.fz, 16                      ; 3 uses
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = and i16 %i.gd, -32768                   ; 3 uses
  %i.gf = icmp samesign ugt i32 %i.gb, 947912703
  br i1 %i.gf, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = icmp samesign ult i32 %i.gb, 855638017
  br i1 %i.gg, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = lshr i32 %i.gb, 23                      ; 2 uses
  %i.gi = sub nuw nsw i32 126, %i.gh
  %i.gj = and i32 %i.gb, 8388607
  %i.gk = or disjoint i32 %i.gj, 8388608          ; 2 uses
  %i.gl = add nsw i32 %i.gh, -94
  %i.gm = shl i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = lshr i32 %i.gk, %i.gi                   ; 2 uses
  %i.go = and i32 %i.gc, 32768
  %i.gp = or i32 %i.gn, %i.go
  %i.gq = trunc nuw i32 %i.gp to i16              ; 2 uses
  %i.gr = icmp ugt i32 %i.gm, -2147483648
  br i1 %i.gr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = icmp ne i32 %i.gm, -2147483648
  %i.gt = and i32 %i.gn, 1
  %.not.i.i.i.i73.1.i = icmp eq i32 %i.gt, 0
  %or.cond.i.i.i.i74.1.i = select i1 %i.gs, i1 true, i1 %.not.i.i.i.i73.1.i
  br i1 %or.cond.i.i.i.i74.1.i, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gu = add nuw i16 %i.gq, 1
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.af:                                            ; preds = %bb.aa
  %i.gv = icmp samesign ugt i32 %i.gb, 2139095039
  br i1 %i.gv, label %bb.aj, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %bb.af
  %i.gw = icmp samesign ugt i32 %i.gb, 1199566847
  br i1 %i.gw, label %bb.ai, label %bb.ah, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.gx = add nuw nsw i32 %i.gb, 134221823
  %i.gy = lshr i32 %i.gb, 13
  %i.gz = and i32 %i.gy, 1
  %i.ha = add nuw nsw i32 %i.gx, %i.gz
  %i.hb = lshr i32 %i.ha, 13
  %i.hc = and i32 %i.gc, 32768
  %i.hd = or i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i16
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.ai:                                            ; preds = %bb.ag
  %i.hf = or disjoint i16 %i.ge, 31744
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.aj:                                            ; preds = %bb.af
  %i.hg = or disjoint i16 %i.ge, 31744            ; 2 uses
  %i.hh = icmp eq i32 %i.gb, 2139095040
  br i1 %i.hh, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hi = lshr i32 %i.gb, 13
  %i.hj = and i32 %i.hi, 1023                     ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  %i.hl = zext i1 %i.hk to i16
  %i.hm = trunc nuw nsw i32 %i.hj to i16
  %i.hn = or i16 %i.hm, %i.hl
  %i.ho = or disjoint i16 %i.hn, %i.hg
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i:             ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ab
  %.033.i.i.i.i75.1.i = phi i16 [ %i.ge, %bb.ab ], [ %i.ho, %bb.ak ], [ %i.hf, %bb.ai ], [ %i.he, %bb.ah ], [ %i.hg, %bb.aj ], [ %i.gu, %bb.ae ], [ %i.gq, %bb.ad ] ; 2 uses
  store i16 %.033.i.i.i.i75.1.i, ptr %i.ab, align 4, !tbaa !10
  store float %i.fn, ptr %i.ac, align 4, !tbaa !42
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i
  %.04.2.i = phi i32 [ 0, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i ], [ %i.hz, %bb.al ] ; 2 uses
  %i.hp = phi <2 x double> [ zeroinitializer, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i ], [ %i.id, %bb.al ] ; 3 uses
  %i.hq = extractelement <2 x double> %i.hp, i64 1 ; 2 uses
  %i.hr = fneg double %i.hq
  %i.hs = fmul double %i.hq, %i.hr
  %i.ht = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x double> %i.ht, <double 1.000000e+00, double 2.000000e+00>
  %i.hv = insertelement <2 x double> %i.aa, double %i.hs, i64 0
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.hp, <2 x double> %i.hv) ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0 ; 2 uses
  %i.hy = fadd double %i.ah, %i.hx
  %i.hz = add nuw nsw i32 %.04.2.i, 1             ; 2 uses
  %i.ia = icmp samesign ult i32 %.04.2.i, 255
  %i.ib = fcmp olt double %i.hx, 1.000000e+02
  %i.ic = select i1 %i.ia, i1 %i.ib, i1 false
  %i.id = insertelement <2 x double> %i.hw, double %i.hy, i64 0
  br i1 %i.ic, label %bb.al, label %bb.am, !llvm.loop !39

bb.am:                                            ; preds = %bb.al
  %i.ie = uitofp nneg i32 %i.hz to float
  %i.if = fmul nnan float %i.ie, 3.906250e-03
  %i.ig = fmul nnan float %i.if, 5.000000e+00     ; 4 uses
  %i.ih = fptosi float %i.ig to i32
  %5 = sitofp i32 %i.ih to float
  %i.ii = fsub nnan float %i.ig, %5
  %i.ij = fmul nnan float %i.ii, 2.000000e+00     ; 3 uses
  %i.ik = fcmp olt float %i.ij, 1.000000e+00
  %i.il = fsub nnan float 2.000000e+00, %i.ij
  %i.im = select i1 %i.ik, float %i.ij, float %i.il
  %i.in = fmul nnan float %i.im, 4.000000e+00
  %i.io = zext i16 %.033.i.i.i.i75.1.i to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !14
  %i.ir = fadd float %i.in, %i.iq                 ; 2 uses
  %i.is = bitcast float %i.ir to i32
  %i.it = tail call float @llvm.fabs.f32(float %i.ir)
  %i.iu = bitcast float %i.it to i32              ; 10 uses
  %i.iv = lshr i32 %i.is, 16                      ; 3 uses
  %i.iw = trunc nuw i32 %i.iv to i16
  %i.ix = and i16 %i.iw, -32768                   ; 3 uses
  %i.iy = icmp samesign ugt i32 %i.iu, 947912703
  br i1 %i.iy, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iz = icmp samesign ult i32 %i.iu, 855638017
  br i1 %i.iz, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = lshr i32 %i.iu, 23                      ; 2 uses
  %i.jb = sub nuw nsw i32 126, %i.ja
  %i.jc = and i32 %i.iu, 8388607
  %i.jd = or disjoint i32 %i.jc, 8388608          ; 2 uses
  %i.je = add nsw i32 %i.ja, -94
  %i.jf = shl i32 %i.jd, %i.je                    ; 2 uses
  %i.jg = lshr i32 %i.jd, %i.jb                   ; 2 uses
  %i.jh = and i32 %i.iv, 32768
  %i.ji = or i32 %i.jg, %i.jh
  %i.jj = trunc nuw i32 %i.ji to i16              ; 2 uses
  %i.jk = icmp ugt i32 %i.jf, -2147483648
  br i1 %i.jk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jl = icmp ne i32 %i.jf, -2147483648
  %i.jm = and i32 %i.jg, 1
  %.not.i.i.i.i73.2.i = icmp eq i32 %i.jm, 0
  %or.cond.i.i.i.i74.2.i = select i1 %i.jl, i1 true, i1 %.not.i.i.i.i73.2.i
  br i1 %or.cond.i.i.i.i74.2.i, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jn = add nuw i16 %i.jj, 1
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.ar:                                            ; preds = %bb.am
  %i.jo = icmp samesign ugt i32 %i.iu, 2139095039
  br i1 %i.jo, label %bb.av, label %bb.as, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.jp = icmp samesign ugt i32 %i.iu, 1199566847
  br i1 %i.jp, label %bb.au, label %bb.at, !prof !15

bb.at:                                            ; preds = %bb.as
  %i.jq = add nuw nsw i32 %i.iu, 134221823
  %i.jr = lshr i32 %i.iu, 13
  %i.js = and i32 %i.jr, 1
  %i.jt = add nuw nsw i32 %i.jq, %i.js
  %i.ju = lshr i32 %i.jt, 13
  %i.jv = and i32 %i.iv, 32768
  %i.jw = or i32 %i.ju, %i.jv
  %i.jx = trunc i32 %i.jw to i16
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.au:                                            ; preds = %bb.as
  %i.jy = or disjoint i16 %i.ix, 31744
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.av:                                            ; preds = %bb.ar
  %i.jz = or disjoint i16 %i.ix, 31744            ; 2 uses
  %i.ka = icmp eq i32 %i.iu, 2139095040
  br i1 %i.ka, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kb = lshr i32 %i.iu, 13
  %i.kc = and i32 %i.kb, 1023                     ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = zext i1 %i.kd to i16
  %i.kf = trunc nuw nsw i32 %i.kc to i16
  %i.kg = or i16 %i.kf, %i.ke
  %i.kh = or disjoint i16 %i.kg, %i.jz
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i:             ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.an
  %i.ki = phi i16 [ %i.ix, %bb.an ], [ %i.kh, %bb.aw ], [ %i.jy, %bb.au ], [ %i.jx, %bb.at ], [ %i.jz, %bb.av ], [ %i.jn, %bb.aq ], [ %i.jj, %bb.ap ] ; 3 uses
  store i16 %i.ki, ptr %i.ab, align 4, !tbaa !10
  store float %i.ig, ptr %i.ac, align 4, !tbaa !42
  %i.kj = add nuw nsw i32 %.07011.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kj, 3
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !40

_ZN12_GLOBAL__N_14mndlI2GZEEvRN7Imf_3_47Array2DIT_EEiiiiiiiidddddd.exit: ; preds = %._crit_edge.i, %bb.a, %.preheader1.lr.ph.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage7RN7Imf_3_45ArrayINS_4RgbaEEEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.neg36 = lshr i32 %1, 1
  %.neg25 = sdiv i32 %2, -2
  %i.b = add i32 %.neg25, %3
  %i.c = sitofp i32 %i.b to float                 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN9Imath_3_24halfaSEf.exit33, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN9Imath_3_24halfaSEf.exit33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN9Imath_3_24halfaSEf.exit33 ] ; 3 uses
  %i.g = trunc i64 %indvars.iv to i32
  %i.h = sub i32 %i.g, %.neg36
  %i.i = sitofp i32 %i.h to float                 ; 3 uses
  %i.j = tail call noundef float @atan2f(float noundef %i.i, float noundef %i.c) #8 ; 3 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.d)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.k) ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.m = fmul nnan float %sqrt, 1.000000e-01
  %i.n = tail call noundef float @sinf(float noundef %i.m) #8
  %i.o = fmul float %i.n, 3.000000e-01
  %i.p = tail call float @llvm.fmuladd.f32(float %i.j, float 3.000000e+00, float %i.o)
  %i.q = tail call noundef float @sinf(float noundef %i.p) #8
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 5.000000e-01, float 5.000000e-01) ; 2 uses
  %i.s = bitcast float %i.r to i32
  %i.t = tail call float @llvm.fabs.f32(float %i.r)
  %i.u = bitcast float %i.t to i32                ; 10 uses
  %i.v = lshr i32 %i.s, 16                        ; 3 uses
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = and i16 %i.w, -32768                     ; 3 uses
  %i.y = icmp samesign ugt i32 %i.u, 947912703
  br i1 %i.y, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ugt i32 %i.u, 2139095039
  br i1 %i.z, label %bb.d, label %bb.f, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.aa = or disjoint i16 %i.x, 31744             ; 2 uses
  %i.ab = icmp eq i32 %i.u, 2139095040
  br i1 %i.ab, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = lshr i32 %i.u, 13
  %i.ad = and i32 %i.ac, 1023                     ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i16
  %i.ag = trunc nuw nsw i32 %i.ad to i16
  %i.ah = or i16 %i.ag, %i.af
  %i.ai = or disjoint i16 %i.ah, %i.aa
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.f:                                             ; preds = %bb.c
  %i.aj = icmp samesign ugt i32 %i.u, 1199566847
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.ak = or disjoint i16 %i.x, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.h:                                             ; preds = %bb.f
  %i.al = add nuw nsw i32 %i.u, 134221823
  %i.am = lshr i32 %i.u, 13
  %i.an = and i32 %i.am, 1
  %i.ao = add nuw nsw i32 %i.al, %i.an
  %i.ap = lshr i32 %i.ao, 13
  %i.aq = and i32 %i.v, 32768
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.b
  %i.at = icmp samesign ult i32 %i.u, 855638017
  br i1 %i.at, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = lshr i32 %i.u, 23                       ; 2 uses
  %i.av = sub nuw nsw i32 126, %i.au
  %i.aw = and i32 %i.u, 8388607
  %i.ax = or disjoint i32 %i.aw, 8388608          ; 2 uses
  %i.ay = add nsw i32 %i.au, -94
  %i.az = shl i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = lshr i32 %i.ax, %i.av                   ; 2 uses
  %i.bb = and i32 %i.v, 32768
  %i.bc = or i32 %i.ba, %i.bb
  %i.bd = trunc nuw i32 %i.bc to i16              ; 2 uses
  %i.be = icmp ugt i32 %i.az, -2147483648
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = icmp ne i32 %i.az, -2147483648
end_hunk_1
