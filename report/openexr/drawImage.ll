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
  %.086 = phi i32 [ 0, %.preheader ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ao = shl nuw nsw i32 %.086, 1
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = fmul nnan double %i.ap, f0x400921FB54442D18
  %i.ar = fdiv double %i.aq, 5.600000e+03
  %i.as = fptrunc double %i.ar to float
  %i.at = fpext float %i.as to double             ; 5 uses
  %i.au = fmul nnan double %i.at, 2.000000e+00
  %3 = tail call double @sin(double noundef %i.au) #8
  %i.av = fmul nnan double %i.at, 1.500000e+01    ; 2 uses
  %4 = tail call double @sin(double noundef %i.av) #8
  %i.aw = fmul nnan double %i.at, 3.000000e+00
  %5 = tail call double @cos(double noundef %i.aw) #8
  %6 = tail call double @cos(double noundef %i.av) #8
  %i.ax = add nuw nsw i32 %.086, 1                ; 3 uses
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = fdiv float %i.ay, 5.600000e+03
  %i.ba = fpext float %i.az to double             ; 7 uses
  %i.bb = fmul nnan double %i.ba, 3.000000e-01
  %i.bc = fmul nnan double %i.at, 8.000000e+01    ; 2 uses
  %7 = tail call double @sin(double noundef %i.bc) #8
  %8 = tail call double @cos(double noundef %i.bc) #8
  %9 = tail call double @llvm.fmuladd.f64(double %i.at, double 8.000000e+01, double f0x3FF921FB54442D18) ; 2 uses
  %10 = tail call double @sin(double noundef %9) #8
  %11 = tail call double @cos(double noundef %9) #8
  %i.bd = insertelement <2 x double> poison, double %4, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %6, i64 1
  %i.bf = insertelement <2 x double> poison, double %3, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %5, i64 1
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> splat (double 2.000000e-01), <2 x double> %i.bg)
  %i.bh = fptrunc <2 x double> %12 to <2 x float> ; 2 uses
  %i.bi = fpext <2 x float> %i.bh to <2 x double>
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = insertelement <4 x double> poison, double %i.bb, i64 0
  %i.bl = shufflevector <4 x double> %i.bk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bm = insertelement <4 x double> poison, double %7, i64 0
  %i.bn = insertelement <4 x double> %i.bm, double %8, i64 1
  %i.bo = insertelement <4 x double> %i.bn, double %10, i64 2
  %i.bp = insertelement <4 x double> %i.bo, double %11, i64 3
  %13 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> %i.bp, <4 x double> %i.bj)
  %i.bq = fptrunc <4 x double> %13 to <4 x float>
  %.lhs.trunc = trunc nuw nsw i32 %.086 to i16
  %i.br = urem i16 %.lhs.trunc, 10
  %i.bs = icmp eq i16 %i.br, 0
  %.val79.pre90 = load i64, ptr %i.ak, align 8    ; 2 uses
  %.val80.pre92 = load ptr, ptr %i.al, align 8    ; 2 uses
  br i1 %i.bs, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = fmul nnan double %i.ba, 5.000000e-01
  %.pre94 = fmul double %.pre, %i.ba
  %.pre96 = fptrunc double %.pre94 to float
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = fmul <2 x float> %i.af, %i.bh
  %i.bu = fdiv <2 x float> %i.bt, splat (float 3.000000e+00)
  %i.bv = fadd <2 x float> %i.bu, %i.an           ; 2 uses
  %i.bw = fmul double %i.aj, %i.ba
  %i.bx = fptrunc double %i.bw to float
  %i.by = fmul nnan double %i.ba, 5.000000e-01
  %i.bz = fmul double %i.by, %i.ba
  %i.ca = fptrunc double %i.bz to float           ; 2 uses
  %i.cb = extractelement <2 x float> %i.bv, i64 0
  %i.cc = extractelement <2 x float> %i.bv, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79.pre90, ptr %.val80.pre92, i32 noundef %1, i32 noundef %2, float noundef %i.cb, float noundef %i.cc, float noundef %i.bx, float noundef 2.000000e+00, float noundef 8.000000e-01, float noundef 1.000000e-01, float noundef %i.ca)
  %.val79.pre = load i64, ptr %i.ak, align 8
  %.val80.pre = load ptr, ptr %i.al, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi97 = phi float [ %.pre96, %._crit_edge ], [ %i.ca, %bb.d ] ; 2 uses
  %.val80 = phi ptr [ %.val80.pre92, %._crit_edge ], [ %.val80.pre, %bb.d ]
  %.val79 = phi i64 [ %.val79.pre90, %._crit_edge ], [ %.val79.pre, %bb.d ]
  %i.cd = fmul <4 x float> %i.ag, %i.bq
  %i.ce = fmul double %i.am, %i.ba
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = fdiv <4 x float> %i.cd, splat (float 3.000000e+00)
  %i.ch = fadd <4 x float> %i.cg, %i.ah           ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = extractelement <4 x float> %i.ch, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79, ptr %.val80, i32 noundef %1, i32 noundef %2, float noundef %i.ci, float noundef %i.cj, float noundef %i.cf, float noundef f0x3F333333, float noundef 2.000000e-01, float noundef 2.000000e+00, float noundef %.pre-phi97)
  %.val = load i64, ptr %i.ak, align 8
  %.val78 = load ptr, ptr %i.al, align 8
  %i.ck = extractelement <4 x float> %i.ch, i64 2
  %i.cl = extractelement <4 x float> %i.ch, i64 3
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val, ptr %.val78, i32 noundef %1, i32 noundef %2, float noundef %i.ck, float noundef %i.cl, float noundef %i.cf, float noundef 2.000000e-01, float noundef 1.500000e+00, float noundef 1.000000e-01, float noundef %.pre-phi97)
  %exitcond89.not = icmp eq i32 %i.ax, 5600
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
  br i1 %i.dl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = icmp ne i32 %i.dg, -2147483648
  %i.dn = and i32 %i.dh, 1
  %.not.i.i.i = icmp eq i32 %i.dn, 0
  %or.cond.i.i.i = select i1 %i.dm, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.do = add nuw i16 %i.dk, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.033.i.i.i = phi i16 [ %i.ce, %bb.j ], [ %i.cp, %bb.f ], [ %i.cr, %bb.h ], [ %i.cz, %bb.i ], [ %i.ch, %bb.e ], [ %i.do, %bb.m ], [ %i.dk, %bb.l ]
  store i16 %.033.i.i.i, ptr %i.bq, align 2, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !13
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !14
  %i.du = fmul float %8, %i.bo
  %i.dv = fmul float %.076, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bv, float %i.dv) ; 2 uses
  %i.dx = bitcast float %i.dw to i32
  %i.dy = tail call float @llvm.fabs.f32(float %i.dw)
  %i.dz = bitcast float %i.dy to i32              ; 10 uses
  %i.ea = lshr i32 %i.dx, 16                      ; 3 uses
  %i.eb = trunc nuw i32 %i.ea to i16
  %i.ec = and i16 %i.eb, -32768                   ; 3 uses
  %i.ed = icmp samesign ugt i32 %i.dz, 947912703
  br i1 %i.ed, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ee = icmp samesign ugt i32 %i.dz, 2139095039
  br i1 %i.ee, label %bb.o, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.ef = or disjoint i16 %i.ec, 31744            ; 2 uses
  %i.eg = icmp eq i32 %i.dz, 2139095040
  br i1 %i.eg, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = lshr i32 %i.dz, 13
  %i.ei = and i32 %i.eh, 1023                     ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i16
  %i.el = trunc nuw nsw i32 %i.ei to i16
  %i.em = or i16 %i.el, %i.ek
  %i.en = or disjoint i16 %i.em, %i.ef
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.q:                                             ; preds = %bb.n
  %i.eo = icmp samesign ugt i32 %i.dz, 1199566847
  br i1 %i.eo, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.ep = or disjoint i16 %i.ec, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.s:                                             ; preds = %bb.q
  %i.eq = add nuw nsw i32 %i.dz, 134221823
  %i.er = lshr i32 %i.dz, 13
  %i.es = and i32 %i.er, 1
  %i.et = add nuw nsw i32 %i.eq, %i.es
  %i.eu = lshr i32 %i.et, 13
  %i.ev = and i32 %i.ea, 32768
  %i.ew = or i32 %i.eu, %i.ev
  %i.ex = trunc i32 %i.ew to i16
  br label %_ZN9Imath_3_24halfaSEf.exit87

bb.t:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ey = icmp samesign ult i32 %i.dz, 855638017
  br i1 %i.ey, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = lshr i32 %i.dz, 23                      ; 2 uses
  %i.fa = sub nuw nsw i32 126, %i.ez
  %i.fb = and i32 %i.dz, 8388607
  %i.fc = or disjoint i32 %i.fb, 8388608          ; 2 uses
  %i.fd = add nsw i32 %i.ez, -94
  %i.fe = shl i32 %i.fc, %i.fd                    ; 2 uses
  %i.ff = lshr i32 %i.fc, %i.fa                   ; 2 uses
  %i.fg = and i32 %i.ea, 32768
  %i.fh = or i32 %i.ff, %i.fg
  %i.fi = trunc nuw i32 %i.fh to i16              ; 2 uses
  %i.fj = icmp ugt i32 %i.fe, -2147483648
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = icmp ne i32 %i.fe, -2147483648
  %i.fl = and i32 %i.ff, 1
  %.not.i.i.i84 = icmp eq i32 %i.fl, 0
  %or.cond.i.i.i85 = select i1 %i.fk, i1 true, i1 %.not.i.i.i84
  br i1 %or.cond.i.i.i85, label %_ZN9Imath_3_24halfaSEf.exit87, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fm = add nuw i16 %i.fi, 1
  br label %_ZN9Imath_3_24halfaSEf.exit87

_ZN9Imath_3_24halfaSEf.exit87:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.033.i.i.i86 = phi i16 [ %i.ec, %bb.t ], [ %i.en, %bb.p ], [ %i.ep, %bb.r ], [ %i.ex, %bb.s ], [ %i.ef, %bb.o ], [ %i.fm, %bb.w ], [ %i.fi, %bb.v ]
  store i16 %.033.i.i.i86, ptr %i.dp, align 2, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !13
  %i.fp = zext i16 %i.fo to i64
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hk = add nuw i16 %i.hg, 1
  br label %_ZN9Imath_3_24halfaSEf.exit91

_ZN9Imath_3_24halfaSEf.exit91:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.033.i.i.i90 = phi i16 [ %i.ga, %bb.ad ], [ %i.gl, %bb.z ], [ %i.gn, %bb.ab ], [ %i.gv, %bb.ac ], [ %i.gd, %bb.y ], [ %i.hk, %bb.ag ], [ %i.hg, %bb.af ]
  store i16 %.033.i.i.i90, ptr %i.fn, align 2, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bq, i64 6 ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !13
  %i.hn = zext i16 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !14
  %i.hq = fsub float 1.000000e+00, %i.hp
  %i.hr = fneg float %i.hq
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.bv, float 1.000000e+00) ; 2 uses
  %i.ht = bitcast float %i.hs to i32
  %i.hu = tail call float @llvm.fabs.f32(float %i.hs)
  %i.hv = bitcast float %i.hu to i32              ; 10 uses
  %i.hw = lshr i32 %i.ht, 16                      ; 3 uses
  %i.hx = trunc nuw i32 %i.hw to i16
  %i.hy = and i16 %i.hx, -32768                   ; 3 uses
  %i.hz = icmp samesign ugt i32 %i.hv, 947912703
  br i1 %i.hz, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit91
  %i.ia = icmp samesign ugt i32 %i.hv, 2139095039
  br i1 %i.ia, label %bb.ai, label %bb.ak, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.ib = or disjoint i16 %i.hy, 31744            ; 2 uses
  %i.ic = icmp eq i32 %i.hv, 2139095040
  br i1 %i.ic, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = lshr i32 %i.hv, 13
  %i.ie = and i32 %i.id, 1023                     ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  %i.ig = zext i1 %i.if to i16
  %i.ih = trunc nuw nsw i32 %i.ie to i16
  %i.ii = or i16 %i.ih, %i.ig
  %i.ij = or disjoint i16 %i.ii, %i.ib
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.ak:                                            ; preds = %bb.ah
  %i.ik = icmp samesign ugt i32 %i.hv, 1199566847
  br i1 %i.ik, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.il = or disjoint i16 %i.hy, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.am:                                            ; preds = %bb.ak
  %i.im = add nuw nsw i32 %i.hv, 134221823
  %i.in = lshr i32 %i.hv, 13
  %i.io = and i32 %i.in, 1
  %i.ip = add nuw nsw i32 %i.im, %i.io
  %i.iq = lshr i32 %i.ip, 13
  %i.ir = and i32 %i.hw, 32768
  %i.is = or i32 %i.iq, %i.ir
  %i.it = trunc i32 %i.is to i16
  br label %_ZN9Imath_3_24halfaSEf.exit95

bb.an:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit91
  %i.iu = icmp samesign ult i32 %i.hv, 855638017
  br i1 %i.iu, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = lshr i32 %i.hv, 23                      ; 2 uses
  %i.iw = sub nuw nsw i32 126, %i.iv
  %i.ix = and i32 %i.hv, 8388607
  %i.iy = or disjoint i32 %i.ix, 8388608          ; 2 uses
  %i.iz = add nsw i32 %i.iv, -94
  %i.ja = shl i32 %i.iy, %i.iz                    ; 2 uses
  %i.jb = lshr i32 %i.iy, %i.iw                   ; 2 uses
  %i.jc = and i32 %i.hw, 32768
  %i.jd = or i32 %i.jb, %i.jc
  %i.je = trunc nuw i32 %i.jd to i16              ; 2 uses
  %i.jf = icmp ugt i32 %i.ja, -2147483648
  br i1 %i.jf, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jg = icmp ne i32 %i.ja, -2147483648
  %i.jh = and i32 %i.jb, 1
  %.not.i.i.i92 = icmp eq i32 %i.jh, 0
  %or.cond.i.i.i93 = select i1 %i.jg, i1 true, i1 %.not.i.i.i92
  br i1 %or.cond.i.i.i93, label %_ZN9Imath_3_24halfaSEf.exit95, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ji = add nuw i16 %i.je, 1
  br label %_ZN9Imath_3_24halfaSEf.exit95

_ZN9Imath_3_24halfaSEf.exit95:                    ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq
  %.033.i.i.i94 = phi i16 [ %i.hy, %bb.an ], [ %i.ij, %bb.aj ], [ %i.il, %bb.al ], [ %i.it, %bb.am ], [ %i.ib, %bb.ai ], [ %i.ji, %bb.aq ], [ %i.je, %bb.ap ]
  store i16 %.033.i.i.i94, ptr %i.hl, align 2, !tbaa !10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %_ZN9Imath_3_24halfaSEf.exit95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
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
  %.04149 = phi i32 [ 0, %.preheader ], [ %i.gc, %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit ] ; 2 uses
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
  %i.cs = extractelement <2 x i32> %i.cr, i64 1
  %wide.trip.count31.i = zext i32 %i.cs to i64
  %i.ct = extractelement <2 x i32> %i.cr, i64 0
  %wide.trip.count.i = zext i32 %i.ct to i64
  %i.cu = zext i32 %i.cm to i64
  %i.cv = extractelement <2 x float> %i.bz, i64 1
  %i.cw = zext i32 %i.co to i64
  %i.cx = extractelement <2 x float> %i.bz, i64 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv28.i = phi i64 [ %i.cu, %.preheader.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 4 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv28.i to i32
  %i.cz = uitofp nneg i32 %i.cy to float
  %i.da = fsub float %i.cz, %i.cv
  %i.db = fdiv float %i.da, %i.bm                 ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val45, i64 %indvars.iv28.i
  %i.dc = fpext float %i.db to double
  %invariant.gep22.i = getelementptr [2 x i8], ptr %.val43, i64 %indvars.iv28.i
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.q
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit, label %.preheader.i, !llvm.loop !26

bb.d:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cw, %.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = fsub float %i.de, %i.cx
  %i.dg = fdiv float %i.df, %i.bm                 ; 3 uses
  %i.dh = fmul float %i.dg, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.dh)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.di) ; 3 uses
  %i.dj = fcmp ult float %sqrt.i, 1.000000e+00
  br i1 %i.dj, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.dk = fneg float %sqrt.i
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %sqrt.i, float 1.000000e+00)
  %i.dm = tail call noundef float @sqrtf(float noundef %i.dl) #8 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dm, float %i.bi) ; 2 uses
  %i.do = mul nsw i64 %indvars.iv.i, %.val44
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.do ; 2 uses
  %i.dp = load float, ptr %gep.i, align 4, !tbaa !29
  %i.dq = fcmp ult float %i.dn, %i.dp
  br i1 %i.dq, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.dr = fpext float %i.dg to double
  %i.ds = fmul double %i.dr, -5.656800e-01
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dc, double 4.242600e-01, double %i.ds)
  %i.du = fpext float %i.dm to double
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double 7.071000e-01, double %i.dt) ; 2 uses
  %i.dw = fptrunc double %i.dv to float           ; 2 uses
  %i.dx = fcmp olt double %i.dv, f0xB690000000000000
  %i.dy = fpext nnan float %i.dw to double
  %i.dz = fmul nnan double %i.dy, -1.000000e-01
  %i.ea = fptrunc double %i.dz to float
  %.0.i = select i1 %i.dx, float %i.ea, float %i.dw ; 3 uses
  %i.eb = fmul float %.0.i, %.0.i                 ; 3 uses
  %i.ec = fmul float %i.eb, %i.eb                 ; 2 uses
  %i.ed = fmul float %i.ec, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.ed, %i.ed                 ; 3 uses
  %i.ef = fmul float %i.eb, %i.ee
  %i.eg = fmul float %i.ee, %i.ee
  %i.eh = fmul float %i.eg, %i.ef
  %i.ei = fmul float %i.eh, 4.000000e+00
  %i.ej = fadd float %.0.i, %i.ei
  %i.ek = fmul float %i.ej, %i.bq                 ; 2 uses
  %i.el = mul nsw i64 %indvars.iv.i, %.val
  %gep23.i = getelementptr [2 x i8], ptr %invariant.gep22.i, i64 %i.el
  %i.em = bitcast float %i.ek to i32
  %i.en = tail call float @llvm.fabs.f32(float %i.ek)
  %i.eo = bitcast float %i.en to i32              ; 10 uses
  %i.ep = lshr i32 %i.em, 16                      ; 3 uses
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = and i16 %i.eq, -32768                   ; 3 uses
  %i.es = icmp samesign ugt i32 %i.eo, 947912703
  br i1 %i.es, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.et = icmp samesign ugt i32 %i.eo, 2139095039
  br i1 %i.et, label %bb.h, label %bb.j, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.eu = or disjoint i16 %i.er, 31744            ; 2 uses
  %i.ev = icmp eq i32 %i.eo, 2139095040
  br i1 %i.ev, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = lshr i32 %i.eo, 13
  %i.ex = and i32 %i.ew, 1023                     ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i16
  %i.fa = trunc nuw nsw i32 %i.ex to i16
  %i.fb = or i16 %i.fa, %i.ez
  %i.fc = or disjoint i16 %i.fb, %i.eu
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %bb.g
  %i.fd = icmp samesign ugt i32 %i.eo, 1199566847
  br i1 %i.fd, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.fe = or disjoint i16 %i.er, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ff = add nuw nsw i32 %i.eo, 134221823
  %i.fg = lshr i32 %i.eo, 13
  %i.fh = and i32 %i.fg, 1
  %i.fi = add nuw nsw i32 %i.ff, %i.fh
  %i.fj = lshr i32 %i.fi, 13
  %i.fk = and i32 %i.ep, 32768
  %i.fl = or i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.m:                                             ; preds = %bb.f
  %i.fn = icmp samesign ult i32 %i.eo, 855638017
  br i1 %i.fn, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fo = lshr i32 %i.eo, 23                      ; 2 uses
  %i.fp = sub nuw nsw i32 126, %i.fo
  %i.fq = and i32 %i.eo, 8388607
  %i.fr = or disjoint i32 %i.fq, 8388608          ; 2 uses
  %i.fs = add nsw i32 %i.fo, -94
  %i.ft = shl i32 %i.fr, %i.fs                    ; 2 uses
  %i.fu = lshr i32 %i.fr, %i.fp                   ; 2 uses
  %i.fv = and i32 %i.ep, 32768
  %i.fw = or i32 %i.fu, %i.fv
  %i.fx = trunc nuw i32 %i.fw to i16              ; 2 uses
  %i.fy = icmp ugt i32 %i.ft, -2147483648
  br i1 %i.fy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = icmp ne i32 %i.ft, -2147483648
  %i.ga = and i32 %i.fu, 1
  %.not.i.i.i.i = icmp eq i32 %i.ga, 0
  %or.cond.i.i.i.i = select i1 %i.fz, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gb = add nuw i16 %i.fx, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.033.i.i.i.i = phi i16 [ %i.er, %bb.m ], [ %i.fc, %bb.i ], [ %i.fe, %bb.k ], [ %i.fm, %bb.l ], [ %i.eu, %bb.h ], [ %i.gb, %bb.p ], [ %i.fx, %bb.o ]
  store i16 %.033.i.i.i.i, ptr %gep23.i, align 2, !tbaa !10
  store float %i.dn, ptr %gep.i, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !27

_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit: ; preds = %._crit_edge.i, %bb.c, %.preheader.lr.ph.i
  %i.gc = add nuw nsw i32 %.04149, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.gc, 2000
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
end_hunk_1
begin_hunk_2_@_Z10drawImage6RN7Imf_3_47Array2DI2GZEEii:bb.a
  %.not.i.i.i.i73.1.i = icmp eq i32 %i.gv, 0
  %or.cond.i.i.i.i74.1.i = select i1 %i.gu, i1 true, i1 %.not.i.i.i.i73.1.i
  br i1 %or.cond.i.i.i.i74.1.i, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gw = add nuw i16 %i.gs, 1
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.af:                                            ; preds = %bb.aa
  %i.gx = icmp samesign ugt i32 %i.gd, 2139095039
  br i1 %i.gx, label %bb.aj, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %bb.af
  %i.gy = icmp samesign ugt i32 %i.gd, 1199566847
  br i1 %i.gy, label %bb.ai, label %bb.ah, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.gz = add nuw nsw i32 %i.gd, 134221823
  %i.ha = lshr i32 %i.gd, 13
  %i.hb = and i32 %i.ha, 1
  %i.hc = add nuw nsw i32 %i.gz, %i.hb
  %i.hd = lshr i32 %i.hc, 13
  %i.he = and i32 %i.ge, 32768
  %i.hf = or i32 %i.hd, %i.he
  %i.hg = trunc i32 %i.hf to i16
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.ai:                                            ; preds = %bb.ag
  %i.hh = or disjoint i16 %i.gg, 31744
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

bb.aj:                                            ; preds = %bb.af
  %i.hi = or disjoint i16 %i.gg, 31744            ; 2 uses
  %i.hj = icmp eq i32 %i.gd, 2139095040
  br i1 %i.hj, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = lshr i32 %i.gd, 13
  %i.hl = and i32 %i.hk, 1023                     ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i16
  %i.ho = trunc nuw nsw i32 %i.hl to i16
  %i.hp = or i16 %i.ho, %i.hn
  %i.hq = or disjoint i16 %i.hp, %i.hi
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i

_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i:             ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ab
  %.033.i.i.i.i75.1.i = phi i16 [ %i.gg, %bb.ab ], [ %i.hq, %bb.ak ], [ %i.hh, %bb.ai ], [ %i.hg, %bb.ah ], [ %i.hi, %bb.aj ], [ %i.gw, %bb.ae ], [ %i.gs, %bb.ad ] ; 2 uses
  store i16 %.033.i.i.i.i75.1.i, ptr %i.ab, align 4, !tbaa !10
  store float %i.fo, ptr %i.ac, align 4, !tbaa !42
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i
  %.04.2.i = phi i32 [ 0, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i ], [ %i.ib, %bb.al ] ; 2 uses
  %i.hr = phi <2 x double> [ zeroinitializer, %_ZN12_GLOBAL__N_13addEfR2GZ.exit.1.i ], [ %i.if, %bb.al ] ; 3 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1 ; 2 uses
  %i.ht = fneg double %i.hs
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.hv, <double 1.000000e+00, double 2.000000e+00>
  %i.hx = insertelement <2 x double> %i.aa, double %i.hu, i64 0
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.hr, <2 x double> %i.hx) ; 2 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 0 ; 2 uses
  %i.ia = fadd double %i.ah, %i.hz
  %i.ib = add nuw nsw i32 %.04.2.i, 1             ; 2 uses
  %i.ic = icmp samesign ult i32 %.04.2.i, 255
  %i.id = fcmp olt double %i.hz, 1.000000e+02
  %i.ie = select i1 %i.ic, i1 %i.id, i1 false
  %i.if = insertelement <2 x double> %i.hy, double %i.ia, i64 0
  br i1 %i.ie, label %bb.al, label %bb.am, !llvm.loop !39

bb.am:                                            ; preds = %bb.al
  %i.ig = uitofp nneg i32 %i.ib to float
  %i.ih = fmul nnan float %i.ig, 3.906250e-03
  %i.ii = fmul nnan float %i.ih, 5.000000e+00     ; 4 uses
  %i.ij = fptosi float %i.ii to i32
  %i.ik = uitofp nneg i32 %i.ij to float
  %i.il = fsub nnan float %i.ii, %i.ik
  %i.im = fmul nnan float %i.il, 2.000000e+00     ; 3 uses
  %i.in = fcmp olt float %i.im, 1.000000e+00
  %i.io = fsub nnan float 2.000000e+00, %i.im
  %i.ip = select i1 %i.in, float %i.im, float %i.io
  %i.iq = fmul nnan float %i.ip, 4.000000e+00
  %i.ir = zext i16 %.033.i.i.i.i75.1.i to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !14
  %i.iu = fadd float %i.iq, %i.it                 ; 2 uses
  %i.iv = bitcast float %i.iu to i32
  %i.iw = tail call float @llvm.fabs.f32(float %i.iu)
  %i.ix = bitcast float %i.iw to i32              ; 10 uses
  %i.iy = lshr i32 %i.iv, 16                      ; 3 uses
  %i.iz = trunc nuw i32 %i.iy to i16
  %i.ja = and i16 %i.iz, -32768                   ; 3 uses
  %i.jb = icmp samesign ugt i32 %i.ix, 947912703
  br i1 %i.jb, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = icmp samesign ult i32 %i.ix, 855638017
  br i1 %i.jc, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = lshr i32 %i.ix, 23                      ; 2 uses
  %i.je = sub nuw nsw i32 126, %i.jd
  %i.jf = and i32 %i.ix, 8388607
  %i.jg = or disjoint i32 %i.jf, 8388608          ; 2 uses
  %i.jh = add nsw i32 %i.jd, -94
  %i.ji = shl i32 %i.jg, %i.jh                    ; 2 uses
  %i.jj = lshr i32 %i.jg, %i.je                   ; 2 uses
  %i.jk = and i32 %i.iy, 32768
  %i.jl = or i32 %i.jj, %i.jk
  %i.jm = trunc nuw i32 %i.jl to i16              ; 2 uses
  %i.jn = icmp ugt i32 %i.ji, -2147483648
  br i1 %i.jn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jo = icmp ne i32 %i.ji, -2147483648
  %i.jp = and i32 %i.jj, 1
  %.not.i.i.i.i73.2.i = icmp eq i32 %i.jp, 0
  %or.cond.i.i.i.i74.2.i = select i1 %i.jo, i1 true, i1 %.not.i.i.i.i73.2.i
  br i1 %or.cond.i.i.i.i74.2.i, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jq = add nuw i16 %i.jm, 1
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.ar:                                            ; preds = %bb.am
  %i.jr = icmp samesign ugt i32 %i.ix, 2139095039
  br i1 %i.jr, label %bb.av, label %bb.as, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.js = icmp samesign ugt i32 %i.ix, 1199566847
  br i1 %i.js, label %bb.au, label %bb.at, !prof !15

bb.at:                                            ; preds = %bb.as
  %i.jt = add nuw nsw i32 %i.ix, 134221823
  %i.ju = lshr i32 %i.ix, 13
  %i.jv = and i32 %i.ju, 1
  %i.jw = add nuw nsw i32 %i.jt, %i.jv
  %i.jx = lshr i32 %i.jw, 13
  %i.jy = and i32 %i.iy, 32768
  %i.jz = or i32 %i.jx, %i.jy
  %i.ka = trunc i32 %i.jz to i16
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.au:                                            ; preds = %bb.as
  %i.kb = or disjoint i16 %i.ja, 31744
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

bb.av:                                            ; preds = %bb.ar
  %i.kc = or disjoint i16 %i.ja, 31744            ; 2 uses
  %i.kd = icmp eq i32 %i.ix, 2139095040
  br i1 %i.kd, label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ke = lshr i32 %i.ix, 13
  %i.kf = and i32 %i.ke, 1023                     ; 2 uses
  %i.kg = icmp eq i32 %i.kf, 0
  %i.kh = zext i1 %i.kg to i16
  %i.ki = trunc nuw nsw i32 %i.kf to i16
  %i.kj = or i16 %i.ki, %i.kh
  %i.kk = or disjoint i16 %i.kj, %i.kc
  br label %_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i

_ZN12_GLOBAL__N_13addEfR2GZ.exit.2.i:             ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.an
  %i.kl = phi i16 [ %i.ja, %bb.an ], [ %i.kk, %bb.aw ], [ %i.kb, %bb.au ], [ %i.ka, %bb.at ], [ %i.kc, %bb.av ], [ %i.jq, %bb.aq ], [ %i.jm, %bb.ap ] ; 3 uses
  store i16 %i.kl, ptr %i.ab, align 4, !tbaa !10
  store float %i.ii, ptr %i.ac, align 4, !tbaa !42
  %i.km = add nuw nsw i32 %.07011.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.km, 3
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
  %i.bg = and i32 %i.ba, 1
  %.not.i.i.i = icmp eq i32 %i.bg, 0
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = add nuw i16 %i.bd, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l
  %.033.i.i.i = phi i16 [ %i.x, %bb.i ], [ %i.ai, %bb.e ], [ %i.ak, %bb.g ], [ %i.as, %bb.h ], [ %i.aa, %bb.d ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ]
  store i16 %.033.i.i.i, ptr %i.l, align 2, !tbaa !10
  %i.bi = fmul nnan float %sqrt, 1.100000e-01
  %i.bj = tail call noundef float @sinf(float noundef %i.bi) #8
  %i.bk = fmul float %i.bj, 3.000000e-01
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.j, float 3.000000e+00, float %i.bk)
  %i.bm = tail call noundef float @sinf(float noundef %i.bl) #8
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float 5.000000e-01, float 5.000000e-01) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.bp = bitcast float %i.bn to i32
  %i.bq = tail call float @llvm.fabs.f32(float %i.bn)
  %i.br = bitcast float %i.bq to i32              ; 10 uses
  %i.bs = lshr i32 %i.bp, 16                      ; 3 uses
  %i.bt = trunc nuw i32 %i.bs to i16
  %i.bu = and i16 %i.bt, -32768                   ; 3 uses
  %i.bv = icmp samesign ugt i32 %i.br, 947912703
  br i1 %i.bv, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.bw = icmp samesign ugt i32 %i.br, 2139095039
  br i1 %i.bw, label %bb.n, label %bb.p, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.bx = or disjoint i16 %i.bu, 31744            ; 2 uses
  %i.by = icmp eq i32 %i.br, 2139095040
  br i1 %i.by, label %_ZN9Imath_3_24halfaSEf.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = lshr i32 %i.br, 13
  %i.ca = and i32 %i.bz, 1023                     ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i16
  %i.cd = trunc nuw nsw i32 %i.ca to i16
  %i.ce = or i16 %i.cd, %i.cc
  %i.cf = or disjoint i16 %i.ce, %i.bx
  br label %_ZN9Imath_3_24halfaSEf.exit29

bb.p:                                             ; preds = %bb.m
  %i.cg = icmp samesign ugt i32 %i.br, 1199566847
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ch = or disjoint i16 %i.bu, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit29

bb.r:                                             ; preds = %bb.p
  %i.ci = add nuw nsw i32 %i.br, 134221823
  %i.cj = lshr i32 %i.br, 13
  %i.ck = and i32 %i.cj, 1
  %i.cl = add nuw nsw i32 %i.ci, %i.ck
  %i.cm = lshr i32 %i.cl, 13
  %i.cn = and i32 %i.bs, 32768
  %i.co = or i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i16
  br label %_ZN9Imath_3_24halfaSEf.exit29

bb.s:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.cq = icmp samesign ult i32 %i.br, 855638017
  br i1 %i.cq, label %_ZN9Imath_3_24halfaSEf.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = lshr i32 %i.br, 23                      ; 2 uses
  %i.cs = sub nuw nsw i32 126, %i.cr
  %i.ct = and i32 %i.br, 8388607
  %i.cu = or disjoint i32 %i.ct, 8388608          ; 2 uses
  %i.cv = add nsw i32 %i.cr, -94
  %i.cw = shl i32 %i.cu, %i.cv                    ; 2 uses
  %i.cx = lshr i32 %i.cu, %i.cs                   ; 2 uses
  %i.cy = and i32 %i.bs, 32768
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = trunc nuw i32 %i.cz to i16              ; 2 uses
  %i.db = icmp ugt i32 %i.cw, -2147483648
  br i1 %i.db, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = icmp ne i32 %i.cw, -2147483648
  %i.dd = and i32 %i.cx, 1
  %.not.i.i.i26 = icmp eq i32 %i.dd, 0
  %or.cond.i.i.i27 = select i1 %i.dc, i1 true, i1 %.not.i.i.i26
  br i1 %or.cond.i.i.i27, label %_ZN9Imath_3_24halfaSEf.exit29, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = add nuw i16 %i.da, 1
  br label %_ZN9Imath_3_24halfaSEf.exit29

_ZN9Imath_3_24halfaSEf.exit29:                    ; preds = %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v
  %.033.i.i.i28 = phi i16 [ %i.bu, %bb.s ], [ %i.cf, %bb.o ], [ %i.ch, %bb.q ], [ %i.cp, %bb.r ], [ %i.bx, %bb.n ], [ %i.de, %bb.v ], [ %i.da, %bb.u ]
  store i16 %.033.i.i.i28, ptr %i.bo, align 2, !tbaa !10
  %i.df = fmul nnan float %sqrt, 1.200000e-01
  %i.dg = tail call noundef float @sinf(float noundef %i.df) #8
  %i.dh = fmul float %i.dg, 3.000000e-01
  %i.di = tail call float @llvm.fmuladd.f32(float %i.j, float 3.000000e+00, float %i.dh)
  %i.dj = tail call noundef float @sinf(float noundef %i.di) #8
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float 5.000000e-01, float 5.000000e-01) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dm = bitcast float %i.dk to i32
  %i.dn = tail call float @llvm.fabs.f32(float %i.dk)
  %i.do = bitcast float %i.dn to i32              ; 10 uses
  %i.dp = lshr i32 %i.dm, 16                      ; 3 uses
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = and i16 %i.dq, -32768                   ; 3 uses
  %i.ds = icmp samesign ugt i32 %i.do, 947912703
  br i1 %i.ds, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit29
  %i.dt = icmp samesign ugt i32 %i.do, 2139095039
  br i1 %i.dt, label %bb.x, label %bb.z, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.du = or disjoint i16 %i.dr, 31744            ; 2 uses
  %i.dv = icmp eq i32 %i.do, 2139095040
  br i1 %i.dv, label %_ZN9Imath_3_24halfaSEf.exit33, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = lshr i32 %i.do, 13
  %i.dx = and i32 %i.dw, 1023                     ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i16
  %i.ea = trunc nuw nsw i32 %i.dx to i16
  %i.eb = or i16 %i.ea, %i.dz
  %i.ec = or disjoint i16 %i.eb, %i.du
  br label %_ZN9Imath_3_24halfaSEf.exit33

bb.z:                                             ; preds = %bb.w
  %i.ed = icmp samesign ugt i32 %i.do, 1199566847
  br i1 %i.ed, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.ee = or disjoint i16 %i.dr, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit33

bb.ab:                                            ; preds = %bb.z
  %i.ef = add nuw nsw i32 %i.do, 134221823
  %i.eg = lshr i32 %i.do, 13
  %i.eh = and i32 %i.eg, 1
  %i.ei = add nuw nsw i32 %i.ef, %i.eh
  %i.ej = lshr i32 %i.ei, 13
  %i.ek = and i32 %i.dp, 32768
  %i.el = or i32 %i.ej, %i.ek
  %i.em = trunc i32 %i.el to i16
  br label %_ZN9Imath_3_24halfaSEf.exit33

bb.ac:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit29
  %i.en = icmp samesign ult i32 %i.do, 855638017
  br i1 %i.en, label %_ZN9Imath_3_24halfaSEf.exit33, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = lshr i32 %i.do, 23                      ; 2 uses
  %i.ep = sub nuw nsw i32 126, %i.eo
  %i.eq = and i32 %i.do, 8388607
  %i.er = or disjoint i32 %i.eq, 8388608          ; 2 uses
  %i.es = add nsw i32 %i.eo, -94
  %i.et = shl i32 %i.er, %i.es                    ; 2 uses
  %i.eu = lshr i32 %i.er, %i.ep                   ; 2 uses
  %i.ev = and i32 %i.dp, 32768
  %i.ew = or i32 %i.eu, %i.ev
  %i.ex = trunc nuw i32 %i.ew to i16              ; 2 uses
  %i.ey = icmp ugt i32 %i.et, -2147483648
  br i1 %i.ey, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = icmp ne i32 %i.et, -2147483648
  %i.fa = and i32 %i.eu, 1
  %.not.i.i.i30 = icmp eq i32 %i.fa, 0
  %or.cond.i.i.i31 = select i1 %i.ez, i1 true, i1 %.not.i.i.i30
  br i1 %or.cond.i.i.i31, label %_ZN9Imath_3_24halfaSEf.exit33, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fb = add nuw i16 %i.ex, 1
  br label %_ZN9Imath_3_24halfaSEf.exit33

_ZN9Imath_3_24halfaSEf.exit33:                    ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %.033.i.i.i32 = phi i16 [ %i.dr, %bb.ac ], [ %i.ec, %bb.y ], [ %i.ee, %bb.aa ], [ %i.em, %bb.ab ], [ %i.du, %bb.x ], [ %i.fb, %bb.af ], [ %i.ex, %bb.ae ]
  store i16 %.033.i.i.i32, ptr %i.dl, align 2, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i16 15360, ptr %i.fc, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !43
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"_ZTSN9Imath_3_24halfE", !9, i64 0}
!13 = !{!12, !9, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"float", !5, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !20}
!19 = distinct !{!19, !11}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !30, !31}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !31, !30}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!16, !16, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = !{!"_ZTS2GZ", !12, i64 0, !16, i64 4}
!42 = !{!41, !16, i64 4}
!43 = distinct !{!43, !11}
!44 = !{!"long", !5, i64 0}
!45 = !{!"any pointer", !5, i64 0}
!46 = !{!"p1 _ZTSN7Imf_3_44RgbaE", !45, i64 0}
!47 = !{!"_ZTSN7Imf_3_45ArrayINS_4RgbaEEE", !44, i64 0, !46, i64 8}
!48 = !{!47, !46, i64 8}
end_hunk_2
