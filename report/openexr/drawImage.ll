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
  br i1 %i.b, label %.preheader83.preheader, label %.preheader

.preheader83.preheader:                           ; preds = %.preheader83.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = shl i64 %4, 3                              ; 9 uses
  %i.e = zext nneg i32 %1 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.g = icmp ult i32 %2, 8
  br i1 %i.g, label %.preheader83.epil.preheader, label %.preheader83.preheader.new

.preheader83.preheader.new:                       ; preds = %.preheader83.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83, %.preheader83.preheader.new
  %indvar = phi i64 [ 0, %.preheader83.preheader.new ], [ %indvar.next.7, %.preheader83 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader83.preheader.new ], [ %niter.next.7, %.preheader83 ]
  %i.h = mul i64 %5, %indvar
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next = or disjoint i64 %indvar, 1
  %i.i = mul i64 %5, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.d, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.1, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.j = mul i64 %5, %indvar.next.1
  %scevgep.2 = getelementptr i8, ptr %i.d, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.2, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.k = mul i64 %5, %indvar.next.2
  %scevgep.3 = getelementptr i8, ptr %i.d, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.3, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.l = mul i64 %5, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.d, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.4, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.m = mul i64 %5, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.d, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.5, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.n = mul i64 %5, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.d, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.6, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.o = mul i64 %5, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.d, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.7, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.preheader83, !llvm.loop !11

.preheader.loopexit.unr-lcssa:                    ; preds = %.preheader83
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader83.epil.preheader

.preheader83.epil.preheader:                      ; preds = %.preheader.loopexit.unr-lcssa, %.preheader83.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader83.preheader ], [ %indvar.next.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.preheader83.epil

.preheader83.epil:                                ; preds = %.preheader83.epil, %.preheader83.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader83.epil.preheader ], [ %indvar.next.epil, %.preheader83.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader83.epil.preheader ], [ %epil.iter.next, %.preheader83.epil ]
  %i.p = mul i64 %5, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.d, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !9
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.preheader83.epil, !llvm.loop !13

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.preheader83.epil, %.preheader83.lr.ph, %bb.a
  %i.q = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %2, i64 1 ; 2 uses
  %i.s = sdiv <2 x i32> %i.r, splat (i32 2)
  %i.t = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.u = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = sitofp <4 x i32> %i.t to <4 x float>     ; 2 uses
  %i.x = sitofp i32 %1 to double                  ; 2 uses
  %i.y = fmul nnan double %i.x, 5.000000e-02
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = fmul nnan double %i.x, 1.000000e-02
  %i.ac = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %.preheader, %bb.e
  %.086 = phi i32 [ 0, %.preheader ], [ %i.aq, %bb.e ] ; 3 uses
  %i.ad = shl nuw nsw i32 %.086, 1
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = fmul nnan double %i.ae, f0x400921FB54442D18
  %i.ag = fdiv double %i.af, 5.600000e+03
  %i.ah = fptrunc double %i.ag to float
  %i.ai = fpext float %i.ah to double             ; 5 uses
  %i.aj = fmul nnan double %i.ai, 2.000000e+00
  %i.ak = tail call double @sin(double noundef %i.aj) #8
  %i.al = fmul nnan double %i.ai, 1.500000e+01    ; 2 uses
  %i.am = tail call double @sin(double noundef %i.al) #8
  %i.an = fmul nnan double %i.ai, 3.000000e+00
  %i.ao = tail call double @cos(double noundef %i.an) #8
  %i.ap = tail call double @cos(double noundef %i.al) #8
  %i.aq = add nuw nsw i32 %.086, 1                ; 3 uses
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv float %i.ar, 5.600000e+03
  %i.at = fpext float %i.as to double             ; 7 uses
  %i.au = fmul nnan double %i.at, 3.000000e-01
  %i.av = fmul nnan double %i.ai, 8.000000e+01    ; 2 uses
  %i.aw = tail call double @sin(double noundef %i.av) #8
  %i.ax = tail call double @cos(double noundef %i.av) #8
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ai, double 8.000000e+01, double f0x3FF921FB54442D18) ; 2 uses
  %i.az = tail call double @sin(double noundef %i.ay) #8
  %i.ba = tail call double @cos(double noundef %i.ay) #8
  %i.bb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ap, i64 1
  %i.bd = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ao, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> splat (double 2.000000e-01), <2 x double> %i.be)
  %i.bg = fptrunc <2 x double> %i.bf to <2 x float> ; 2 uses
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = insertelement <4 x double> poison, double %i.au, i64 0
  %i.bk = shufflevector <4 x double> %i.bj, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = insertelement <4 x double> poison, double %i.aw, i64 0
  %i.bm = insertelement <4 x double> %i.bl, double %i.ax, i64 1
  %i.bn = insertelement <4 x double> %i.bm, double %i.az, i64 2
  %i.bo = insertelement <4 x double> %i.bn, double %i.ba, i64 3
  %i.bp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> %i.bo, <4 x double> %i.bi)
  %i.bq = fptrunc <4 x double> %i.bp to <4 x float>
  %.lhs.trunc = trunc nuw nsw i32 %.086 to i16
  %i.br = urem i16 %.lhs.trunc, 10
  %i.bs = icmp eq i16 %i.br, 0
  %.val79.pre90 = load i64, ptr %i.z, align 8     ; 2 uses
  %.val80.pre92 = load ptr, ptr %i.aa, align 8    ; 2 uses
  br i1 %i.bs, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = fmul nnan double %i.at, 5.000000e-01
  %.pre94 = fmul double %.pre, %i.at
  %.pre96 = fptrunc double %.pre94 to float
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = fmul <2 x float> %i.u, %i.bg
  %i.bu = fdiv <2 x float> %i.bt, splat (float 3.000000e+00)
  %i.bv = fadd <2 x float> %i.bu, %i.ac           ; 2 uses
  %i.bw = fmul double %i.y, %i.at
  %i.bx = fptrunc double %i.bw to float
  %i.by = fmul nnan double %i.at, 5.000000e-01
  %i.bz = fmul double %i.by, %i.at
  %i.ca = fptrunc double %i.bz to float           ; 2 uses
  %i.cb = extractelement <2 x float> %i.bv, i64 0
  %i.cc = extractelement <2 x float> %i.bv, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79.pre90, ptr %.val80.pre92, i32 noundef %1, i32 noundef %2, float noundef %i.cb, float noundef %i.cc, float noundef %i.bx, float noundef 2.000000e+00, float noundef 8.000000e-01, float noundef 1.000000e-01, float noundef %i.ca)
  %.val79.pre = load i64, ptr %i.z, align 8
  %.val80.pre = load ptr, ptr %i.aa, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi97 = phi float [ %.pre96, %._crit_edge ], [ %i.ca, %bb.d ] ; 2 uses
  %.val80 = phi ptr [ %.val80.pre92, %._crit_edge ], [ %.val80.pre, %bb.d ]
  %.val79 = phi i64 [ %.val79.pre90, %._crit_edge ], [ %.val79.pre, %bb.d ]
  %i.cd = fmul <4 x float> %i.v, %i.bq
  %i.ce = fmul double %i.ab, %i.at
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = fdiv <4 x float> %i.cd, splat (float 3.000000e+00)
  %i.ch = fadd <4 x float> %i.cg, %i.w            ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = extractelement <4 x float> %i.ch, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val79, ptr %.val80, i32 noundef %1, i32 noundef %2, float noundef %i.ci, float noundef %i.cj, float noundef %i.cf, float noundef f0x3F333333, float noundef 2.000000e-01, float noundef 2.000000e+00, float noundef %.pre-phi97)
  %.val = load i64, ptr %i.z, align 8
  %.val78 = load ptr, ptr %i.aa, align 8
  %i.ck = extractelement <4 x float> %i.ch, i64 2
  %i.cl = extractelement <4 x float> %i.ch, i64 3
  tail call fastcc void @_ZN12_GLOBAL__N_12spERN7Imf_3_47Array2DINS0_4RgbaEEEiifffffff(i64 %.val, ptr %.val78, i32 noundef %1, i32 noundef %2, float noundef %i.ck, float noundef %i.cl, float noundef %i.cf, float noundef 2.000000e-01, float noundef 1.500000e+00, float noundef 1.000000e-01, float noundef %.pre-phi97)
  %exitcond89.not = icmp eq i32 %i.aq, 5600
  br i1 %exitcond89.not, label %bb.b, label %bb.c, !llvm.loop !15
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
  %i.v = sext i32 %i.d to i64
  %i.w = add i32 %i.j, 1
  %i.x = sext i32 %i.n to i64
  %i.y = add i32 %i.t, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ %i.x, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.z = trunc nsw i64 %indvars.iv22 to i32
  %i.aa = sitofp i32 %i.z to float
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
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1 ; 2 uses
  %lftr.wideiv25 = trunc i64 %indvars.iv.next23 to i32
  %exitcond26.not = icmp eq i32 %i.y, %lftr.wideiv25
  br i1 %exitcond26.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !16

bb.b:                                             ; preds = %.preheader, %bb.ar
  %indvars.iv = phi i64 [ %i.v, %.preheader ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fsub float %i.ak, %2
  %i.am = fdiv float %i.al, %4                    ; 3 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ad)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.an) ; 4 uses
  %i.ao = fcmp ult float %sqrt, 1.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.ar
end_hunk_0
