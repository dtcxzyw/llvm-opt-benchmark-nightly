inline.NumInlined: 302
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }

$_ZN36btDiscreteCollisionDetectorInterfaceD2Ev = comdat any

$_ZN16btBoxBoxDetectorD0Ev = comdat any

$_ZTI36btDiscreteCollisionDetectorInterface = comdat any

$_ZTS36btDiscreteCollisionDetectorInterface = comdat any

@_ZTV16btBoxBoxDetector = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI16btBoxBoxDetector, ptr @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, ptr @_ZN16btBoxBoxDetectorD0Ev, ptr @_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb] }, align 8
@_ZTI16btBoxBoxDetector = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btBoxBoxDetector, ptr @_ZTI36btDiscreteCollisionDetectorInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16btBoxBoxDetector = dso_local constant [19 x i8] c"16btBoxBoxDetector\00", align 1
@_ZTI36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS36btDiscreteCollisionDetectorInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant [39 x i8] c"36btDiscreteCollisionDetectorInterface\00", comdat, align 1

@_ZN16btBoxBoxDetectorC1EP10btBoxShapeS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV16btBoxBoxDetector, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !16   ; 2 uses
  %i.b = load float, ptr %3, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !16 ; 2 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h) ; 3 uses
  %i.n = fneg float %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.m, float 1.000000e+00) ; 2 uses
  %i.p = fcmp ugt float %i.o, f0x38D1B717
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !16
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = load float, ptr %2, align 4, !tbaa !16
  %i.w = load float, ptr %0, align 4, !tbaa !16
  %i.x = fsub float %i.v, %i.w                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %i.ad = fmul float %i.f, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.b, float %i.x, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.ae)
  %i.ag = fmul float %i.d, %i.ac
  %6 = fdiv float 1.000000e+00, %i.o
  %7 = fneg float %i.af                           ; 2 uses
  %8 = tail call float @llvm.fmuladd.f32(float %i.a, float %i.x, float %i.ag)
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.u, float %8) ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %i.aj = insertelement <2 x float> %10, float %7, i64 1
  %i.ak = insertelement <2 x float> poison, float %7, i64 0
  %11 = insertelement <2 x float> %i.ak, float %9, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aj, <2 x float> %11)
  %i.am = insertelement <2 x float> poison, float %6, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.an, %i.al
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi <2 x float> [ %i.ao, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 1
  store float %i.aq, ptr %4, align 4, !tbaa !16
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  store float %i.ar, ptr %5, align 4, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_Z11cullPoints2iPfiiPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 8 uses
  switch i32 %0, label %.preheader [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.d = add nsw i32 %0, -1
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !16
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !16
  %i.i = fadd <2 x float> %i.g, %i.h
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0102117 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !16 ; 3 uses
  %i.o = load <2 x float>, ptr %i.l, align 4, !tbaa !16 ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1
  %i.q = fneg float %i.p
  %i.r = extractelement <2 x float> %i.n, i64 0
  %i.s = fmul float %i.r, %i.q
  %i.t = extractelement <2 x float> %i.o, i64 0
  %i.u = extractelement <2 x float> %i.n, i64 1
  %i.v = tail call float @llvm.fmuladd.f32(float %i.t, float %i.u, float %i.s) ; 2 uses
  %i.w = fadd float %.0102117, %i.v               ; 2 uses
  %i.x = fadd <2 x float> %i.o, %i.n
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.x, <2 x float> %i.k) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.c, %bb.b
  %i.ab = phi <2 x float> [ %i.j, %bb.c ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %.lr.ph124.preheader

.loopexit:                                        ; preds = %.lr.ph, %.preheader
  %.0102.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.w, %.lr.ph ]
  %i.ac = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.aa, %.lr.ph ]
  %i.ad = shl nsw i32 %0, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %1, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load <2 x float>, ptr %1, align 4, !tbaa !16 ; 3 uses
  %i.ai = load <2 x float>, ptr %i.ag, align 4, !tbaa !16 ; 3 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1
  %i.ak = fneg float %i.aj
  %i.al = extractelement <2 x float> %i.ah, i64 0
  %i.am = fmul float %i.al, %i.ak
  %i.an = extractelement <2 x float> %i.ai, i64 0
  %i.ao = extractelement <2 x float> %i.ah, i64 1
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.am) ; 2 uses
  %i.aq = fadd float %.0102.lcssa, %i.ap          ; 2 uses
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = fcmp ogt float %i.ar, f0x34000000
  %i.at = fmul float %i.aq, 3.000000e+00
  %i.au = fdiv float 1.000000e+00, %i.at
  %.1103 = select i1 %i.as, float %i.au, float f0x5D5E0B6B
  %i.av = fadd <2 x float> %i.ai, %i.ah
  %i.aw = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.av, <2 x float> %i.ac)
  %i.az = insertelement <2 x float> poison, float %.1103, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ay, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bc = icmp sgt i32 %0, 0
  br i1 %i.bc, label %.lr.ph124.preheader, label %._crit_edge125.thread

._crit_edge125.thread:                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %._crit_edge129

.lr.ph124.preheader:                              ; preds = %.thread, %.loopexit
  %i.bd = phi <2 x float> [ %i.ab, %.thread ], [ %i.bb, %.loopexit ] ; 2 uses
  %wide.trip.count148 = zext nneg i32 %0 to i64   ; 4 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0 ; 3 uses
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 3 uses
  %xtraiter = and i64 %wide.trip.count148, 1
  %i.bg = icmp eq i32 %0, 1
  br i1 %i.bg, label %.lr.ph124.epil.preheader, label %.lr.ph124.preheader.new

.lr.ph124.preheader.new:                          ; preds = %.lr.ph124.preheader
  %unroll_iter = and i64 %wide.trip.count148, 2147483646
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader.new
  %indvars.iv145 = phi i64 [ 0, %.lr.ph124.preheader.new ], [ %indvars.iv.next146.1, %.lr.ph124 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph124.preheader.new ], [ %niter.next.1, %.lr.ph124 ]
  %.idx164 = shl nuw nsw i64 %indvars.iv145, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !16
  %i.bk = fsub float %i.bj, %i.bf
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !16
  %i.bm = fsub float %i.bl, %i.be
  %i.bn = tail call noundef float @atan2f(float noundef %i.bk, float noundef %i.bm) #12, !tbaa !4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv145
  store float %i.bn, ptr %i.bo, align 8, !tbaa !16
  %indvars.iv.next146 = or disjoint i64 %indvars.iv145, 1 ; 2 uses
  %.idx164.1 = shl nuw nsw i64 %indvars.iv.next146, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !16
  %i.bs = fsub float %i.br, %i.bf
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !16
  %i.bu = fsub float %i.bt, %i.be
  %i.bv = tail call noundef float @atan2f(float noundef %i.bs, float noundef %i.bu) #12, !tbaa !4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next146
  store float %i.bv, ptr %i.bw, align 4, !tbaa !16
  %indvars.iv.next146.1 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge125.unr-lcssa, label %.lr.ph124

._crit_edge125.unr-lcssa:                         ; preds = %.lr.ph124
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge125, label %.lr.ph124.epil.preheader

.lr.ph124.epil.preheader:                         ; preds = %._crit_edge125.unr-lcssa, %.lr.ph124.preheader
  %indvars.iv145.epil.init = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next146.1, %._crit_edge125.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %.idx164.epil = shl nuw nsw i64 %indvars.iv145.epil.init, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.epil ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !16
  %i.ca = fsub float %i.bz, %i.bf
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !16
  %i.cc = fsub float %i.cb, %i.be
  %i.cd = tail call noundef float @atan2f(float noundef %i.ca, float noundef %i.cc) #12, !tbaa !4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv145.epil.init
  store float %i.cd, ptr %i.ce, align 4, !tbaa !16
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.unr-lcssa, %.lr.ph124.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %wide.trip.count153 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph128.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge125
  %n.vec = and i64 %wide.trip.count148, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cf, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.cg, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count148
  br i1 %cmp.n, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %._crit_edge125, %middle.block
  %indvars.iv150.ph = phi i64 [ 0, %._crit_edge125 ], [ %n.vec, %middle.block ]
  br label %.lr.ph128
end_hunk_0
