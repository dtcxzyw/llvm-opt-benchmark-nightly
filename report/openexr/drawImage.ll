Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/drawImage?download=true
inline.NumInlined: 91
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage1RN7Imf_3_47Array2DINS_4RgbaEEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader83.lr.ph, label %.preheader

.preheader83.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 9 uses
  br i1 %i.b, label %.preheader83.preheader, label %.preheader

.preheader83.preheader:                           ; preds = %.preheader83.lr.ph
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 9 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.i = icmp ult i32 %2, 8
  br i1 %i.i, label %.preheader83.epil.preheader, label %.preheader83.preheader.new

.preheader83.preheader.new:                       ; preds = %.preheader83.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83, %.preheader83.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader83.preheader.new ], [ %indvars.iv.next.7, %.preheader83 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader83.preheader.new ], [ %niter.next.7, %.preheader83 ]
  %i.j = mul nsw i64 %i.f, %indvars.iv
  %i.k = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.k, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.l = mul nsw i64 %i.f, %indvars.iv.next
  %i.m = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.m, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.n = mul nsw i64 %i.f, %indvars.iv.next.1
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.o, i8 0, i64 %i.h, i1 false), !tbaa !10
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.p = mul nsw i64 %i.f, %indvars.iv.next.2
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
  %3 = uitofp nneg i32 %1 to float                ; 2 uses
  %i.ab = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ac = insertelement <2 x i32> %i.ab, i32 %2, i64 1
  %i.ad = sdiv <2 x i32> %i.ac, splat (i32 2)
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %4 = sitofp i32 %2 to float                     ; 2 uses
  %5 = uitofp nneg <4 x i32> %i.ae to <4 x float>
  %i.af = sitofp <4 x i32> %i.ae to <4 x float>
  %6 = shufflevector <4 x float> %5, <4 x float> %i.af, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %7 = uitofp nneg i32 %1 to double               ; 2 uses
  %i.ag = fmul nnan double %7, 5.000000e-02
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = fmul nnan double %7, 1.000000e-02
  %8 = insertelement <4 x float> poison, float %3, i64 0
  %9 = insertelement <4 x float> %8, float %4, i64 1
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = insertelement <2 x float> poison, float %3, i64 0
  %12 = insertelement <2 x float> %11, float %4, i64 1
  %i.ak = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %.preheader, %bb.e
  %.086 = phi i32 [ 0, %.preheader ], [ %i.ay, %bb.e ] ; 3 uses
  %i.al = shl nuw nsw i32 %.086, 1
  %i.am = uitofp nneg i32 %i.al to double
  %i.an = fmul nnan double %i.am, f0x400921FB54442D18
  %i.ao = fdiv double %i.an, 5.600000e+03
  %i.ap = fptrunc double %i.ao to float
  %i.aq = fpext float %i.ap to double             ; 5 uses
  %i.ar = fmul nnan double %i.aq, 2.000000e+00
  %i.as = tail call double @sin(double noundef %i.ar) #8
  %i.at = fmul nnan double %i.aq, 1.500000e+01    ; 2 uses
  %i.au = tail call double @sin(double noundef %i.at) #8
  %i.av = fmul nnan double %i.aq, 3.000000e+00
  %i.aw = tail call double @cos(double noundef %i.av) #8
  %i.ax = tail call double @cos(double noundef %i.at) #8
  %i.ay = add nuw nsw i32 %.086, 1                ; 3 uses
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = fdiv float %i.az, 5.600000e+03
  %i.bb = fpext float %i.ba to double             ; 7 uses
  %i.bc = fmul nnan double %i.bb, 3.000000e-01
  %i.bd = fmul nnan double %i.aq, 8.000000e+01    ; 2 uses
  %i.be = tail call double @sin(double noundef %i.bd) #8
  %i.bf = tail call double @cos(double noundef %i.bd) #8
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.aq, double 8.000000e+01, double f0x3FF921FB54442D18) ; 2 uses
  %i.bh = tail call double @sin(double noundef %i.bg) #8
  %i.bi = tail call double @cos(double noundef %i.bg) #8
  %i.bj = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.ax, i64 1
  %i.bl = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.aw, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 2.000000e-01), <2 x double> %i.bm)
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float> ; 2 uses
  %i.bp = fpext <2 x float> %i.bo to <2 x double>
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = insertelement <4 x double> poison, double %i.bc, i64 0
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bt = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bu = insertelement <4 x double> %i.bt, double %i.bf, i64 1
  %i.bv = insertelement <4 x double> %i.bu, double %i.bh, i64 2
  %i.bw = insertelement <4 x double> %i.bv, double %i.bi, i64 3
  %i.bx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bs, <4 x double> %i.bw, <4 x double> %i.bq)
  %i.by = fptrunc <4 x double> %i.bx to <4 x float>
  %.lhs.trunc = trunc nuw nsw i32 %.086 to i16
  %i.bz = urem i16 %.lhs.trunc, 10
  %i.ca = icmp eq i16 %i.bz, 0
  %.val79.pre90 = load i64, ptr %i.ah, align 8    ; 2 uses
  %.val80.pre92 = load ptr, ptr %i.ai, align 8    ; 2 uses
  br i1 %i.ca, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = fmul nnan double %i.bb, 5.000000e-01
  %.pre94 = fmul double %.pre, %i.bb
  %.pre96 = fptrunc double %.pre94 to float
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cb = fmul <2 x float> %12, %i.bo
  %i.cc = fdiv <2 x float> %i.cb, splat (float 3.000000e+00)
  %i.cd = fadd <2 x float> %i.cc, %i.ak           ; 2 uses
  %i.ce = fmul double %i.ag, %i.bb
  %i.cf = fptrunc double %i.ce to float
  %i.cg = fmul nnan double %i.bb, 5.000000e-01
  %i.ch = fmul double %i.cg, %i.bb
  %i.ci = fptrunc double %i.ch to float           ; 2 uses
  %i.cj = extractelement <2 x float> %i.cd, i64 0
  %i.ck = extractelement <2 x float> %i.cd, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79.pre90, ptr %.val80.pre92, i32 noundef %1, i32 noundef %2, float noundef %i.cj, float noundef %i.ck, float noundef %i.cf, float noundef 2.000000e+00, float noundef 8.000000e-01, float noundef 1.000000e-01, float noundef %i.ci)
  %.val79.pre = load i64, ptr %i.ah, align 8
  %.val80.pre = load ptr, ptr %i.ai, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi97 = phi float [ %.pre96, %._crit_edge ], [ %i.ci, %bb.d ] ; 2 uses
  %.val80 = phi ptr [ %.val80.pre92, %._crit_edge ], [ %.val80.pre, %bb.d ]
  %.val79 = phi i64 [ %.val79.pre90, %._crit_edge ], [ %.val79.pre, %bb.d ]
  %i.cl = fmul <4 x float> %10, %i.by
  %i.cm = fmul double %i.aj, %i.bb
  %i.cn = fptrunc double %i.cm to float           ; 2 uses
  %i.co = fdiv <4 x float> %i.cl, splat (float 3.000000e+00)
  %i.cp = fadd <4 x float> %i.co, %6              ; 4 uses
  %i.cq = extractelement <4 x float> %i.cp, i64 0
  %i.cr = extractelement <4 x float> %i.cp, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79, ptr %.val80, i32 noundef %1, i32 noundef %2, float noundef %i.cq, float noundef %i.cr, float noundef %i.cn, float noundef f0x3F333333, float noundef 2.000000e-01, float noundef 2.000000e+00, float noundef %.pre-phi97)
  %.val = load i64, ptr %i.ah, align 8
  %.val78 = load ptr, ptr %i.ai, align 8
  %i.cs = extractelement <4 x float> %i.cp, i64 2
  %i.ct = extractelement <4 x float> %i.cp, i64 3
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val, ptr %.val78, i32 noundef %1, i32 noundef %2, float noundef %i.cs, float noundef %i.ct, float noundef %i.cn, float noundef 2.000000e-01, float noundef 1.500000e+00, float noundef 1.000000e-01, float noundef %.pre-phi97)
  %exitcond89.not = icmp eq i32 %i.ay, 5600
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
  %i.v = zext nneg i32 %i.d to i64
  %i.w = add i32 %i.j, 1
  %i.x = zext nneg i32 %i.n to i64
  %i.y = add i32 %i.t, 1
  %wide.trip.count25 = zext i32 %i.y to i64
  %wide.trip.count = zext i32 %i.w to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ %i.x, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.z = trunc nuw nsw i64 %indvars.iv22 to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = fsub float %i.aa, %3
  %i.ac = fdiv float %i.ab, %4                    ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fpext float %i.ac to double
  %i.af = fmul double %i.ae, -5.656800e-01
  %i.ag = mul nsw i64 %.8.val, %indvars.iv22
  %i.ah = getelementptr inbounds [8 x i8], ptr %.16.val, i64 %i.ag
  %i.ai = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  br label %bb.b

._crit_edge20.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.ar
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !21

bb.b:                                             ; preds = %.preheader, %bb.ar
  %indvars.iv = phi i64 [ %i.v, %.preheader ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = fsub float %i.ak, %2
  %i.am = fdiv float %i.al, %4                    ; 3 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ad)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.an) ; 4 uses
  %i.ao = fcmp ult float %sqrt, 1.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.ap = fmul float %4, %sqrt
  %i.aq = fcmp ogt float %i.ap, %i.u
  %i.ar = fneg float %sqrt                        ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %4, float %4)
  %.076 = select i1 %i.aq, float %i.as, float 1.000000e+00 ; 4 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %sqrt, float 1.000000e+00)
  %i.au = tail call noundef float @sqrtf(float noundef %i.at) #8
  %i.av = fpext float %i.am to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double 4.242600e-01, double %i.af)
  %i.ax = fpext float %i.au to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double 7.071000e-01, double %i.aw) ; 2 uses
  %i.az = fptrunc double %i.ay to float           ; 2 uses
  %i.ba = fcmp olt double %i.ay, f0xB690000000000000
  %i.bb = fpext nnan float %i.az to double
  %i.bc = fmul nnan double %i.bb, -1.000000e-01
  %i.bd = fptrunc double %i.bc to float
  %.075 = select i1 %i.ba, float %i.bd, float %i.az ; 3 uses
  %i.be = fmul float %.075, %.075                 ; 3 uses
  %i.bf = fmul float %i.be, %i.be                 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = fmul float %i.bg, %i.bg                 ; 3 uses
  %i.bi = fmul float %i.be, %i.bh
  %i.bj = fmul float %i.bh, %i.bh
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = fmul float %i.bk, 4.000000e+00
  %i.bm = fadd float %.075, %i.bl                 ; 3 uses
  %i.bn = fmul float %5, %i.bm
  %i.bo = fmul float %6, %i.bm
  %i.bp = fmul float %7, %i.bm
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 5 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !13
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = fsub float 1.000000e+00, %.076          ; 4 uses
  %i.bw = fmul float %8, %i.bn
  %i.bx = fmul float %.076, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float %i.bx) ; 2 uses
  %i.bz = bitcast float %i.by to i32
  %i.ca = tail call float @llvm.fabs.f32(float %i.by)
  %i.cb = bitcast float %i.ca to i32              ; 10 uses
  %i.cc = lshr i32 %i.bz, 16                      ; 3 uses
  %i.cd = trunc nuw i32 %i.cc to i16
  %i.ce = and i16 %i.cd, -32768                   ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.cb, 947912703
  br i1 %i.cf, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.cg = icmp samesign ugt i32 %i.cb, 2139095039
  br i1 %i.cg, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.ch = or disjoint i16 %i.ce, 31744            ; 2 uses
  %i.ci = icmp eq i32 %i.cb, 2139095040
  br i1 %i.ci, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = lshr i32 %i.cb, 13
  %i.ck = and i32 %i.cj, 1023                     ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i16
  %i.cn = trunc nuw nsw i32 %i.ck to i16
  %i.co = or i16 %i.cn, %i.cm
  %i.cp = or disjoint i16 %i.co, %i.ch
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.d
  %i.cq = icmp samesign ugt i32 %i.cb, 1199566847
  br i1 %i.cq, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.cr = or disjoint i16 %i.ce, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.g
  %i.cs = add nuw nsw i32 %i.cb, 134221823
  %i.ct = lshr i32 %i.cb, 13
  %i.cu = and i32 %i.ct, 1
  %i.cv = add nuw nsw i32 %i.cs, %i.cu
  %i.cw = lshr i32 %i.cv, 13
  %i.cx = and i32 %i.cc, 32768
  %i.cy = or i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.j:                                             ; preds = %bb.c
  %i.da = icmp samesign ult i32 %i.cb, 855638017
  br i1 %i.da, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = lshr i32 %i.cb, 23                      ; 2 uses
  %i.dc = sub nuw nsw i32 126, %i.db
  %i.dd = and i32 %i.cb, 8388607
  %i.de = or disjoint i32 %i.dd, 8388608          ; 2 uses
  %i.df = add nsw i32 %i.db, -94
  %i.dg = shl i32 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i32 %i.de, %i.dc                   ; 2 uses
  %i.di = and i32 %i.cc, 32768
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = trunc nuw i32 %i.dj to i16              ; 2 uses
  %i.dl = icmp ugt i32 %i.dg, -2147483648
end_hunk_0
