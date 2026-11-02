Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmssm?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._spiral = type { i32, i32 }
%struct.cmsSpherical = type { double, double, double }
%struct.cmsVEC3 = type { [3 x double] }
%struct.cmsLine = type { %struct.cmsVEC3, %struct.cmsVEC3 }

@.str = private unnamed_addr constant [29 x i8] c"spherical value out of range\00", align 1
@Spiral = internal unnamed_addr constant [24 x %struct._spiral] [%struct._spiral { i32 0, i32 -1 }, %struct._spiral { i32 1, i32 -1 }, %struct._spiral { i32 1, i32 0 }, %struct._spiral { i32 1, i32 1 }, %struct._spiral { i32 0, i32 1 }, %struct._spiral { i32 -1, i32 1 }, %struct._spiral { i32 -1, i32 0 }, %struct._spiral { i32 -1, i32 -1 }, %struct._spiral { i32 -1, i32 -2 }, %struct._spiral { i32 0, i32 -2 }, %struct._spiral { i32 1, i32 -2 }, %struct._spiral { i32 2, i32 -2 }, %struct._spiral { i32 2, i32 -1 }, %struct._spiral { i32 2, i32 0 }, %struct._spiral { i32 2, i32 1 }, %struct._spiral { i32 2, i32 2 }, %struct._spiral { i32 1, i32 2 }, %struct._spiral { i32 0, i32 2 }, %struct._spiral { i32 -1, i32 2 }, %struct._spiral { i32 -2, i32 2 }, %struct._spiral { i32 -2, i32 1 }, %struct._spiral { i32 -2, i32 0 }, %struct._spiral { i32 -2, i32 -1 }, %struct._spiral { i32 -2, i32 -2 }], align 16

; Function Attrs: nounwind uwtable
define ptr @cmsGBDAlloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 8200) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @cmsGBDFree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @_cmsFree(ptr noundef %i.a, ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cmsGDBAddPoint(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cmsSpherical, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = call fastcc ptr @GetPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %2, align 8, !tbaa !18
  %i.g = load double, ptr %i.e, align 8, !tbaa !19
  %i.h = fcmp ogt double %i.f, %i.g
  br i1 %i.h, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GetPoint(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cmsVEC3, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = load double, ptr %1, align 8, !tbaa !18
  %i.b = fadd double %i.a, -5.000000e+01
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !21
  call void @_cmsVEC3init(ptr noundef nonnull %3, double noundef %i.b, double noundef %i.d, double noundef %i.f) #6
  %i.g = load double, ptr %3, align 8, !tbaa !22  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !22 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !22 ; 6 uses
  %i.l = fmul double %i.i, %i.i
  %i.m = call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.l)
  %i.n = call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.m) ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %i.n)
  store double %sqrt.i, ptr %2, align 8, !tbaa !18
  %i.o = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.o, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %QuantizeToSector.exit

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp oeq double %i.k, 0.000000e+00
  %i.r = fcmp oeq double %i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i, label %_cmsAtan2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call double @atan2(double noundef %i.i, double noundef %i.k) #6
  %i.t = fmul double %i.s, 1.800000e+02
  %i.u = fdiv double %i.t, f0x400921FB54442D18    ; 3 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %.lr.ph.i.i, label %_cmsAtan2.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.w, %.lr.ph.i.i ], [ %i.u, %bb.c ]
  %i.w = fadd double %.010.i.i, 3.600000e+02      ; 3 uses
  %i.x = fcmp olt double %i.w, 0.000000e+00
  br i1 %i.x, label %.lr.ph.i.i, label %_cmsAtan2.exit.i, !llvm.loop !0

_cmsAtan2.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.09.i.i = phi double [ 0.000000e+00, %bb.b ], [ %i.u, %bb.c ], [ %i.w, %.lr.ph.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.09.i.i, ptr %i.y, align 8, !tbaa !20
  %i.z = fmul double %i.k, %i.k
  %i.aa = call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.z) ; 2 uses
  %i.ab = fcmp oeq double %i.g, 0.000000e+00
  %i.ac = fcmp oeq double %i.aa, 0.000000e+00
  %or.cond.i22.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i22.i, label %ToSpherical.exit, label %bb.d

bb.d:                                             ; preds = %_cmsAtan2.exit.i
  %sqrt27.i = call double @llvm.sqrt.f64(double %i.aa)
  %i.ad = call double @atan2(double noundef %sqrt27.i, double noundef %i.g) #6
  %i.ae = fmul double %i.ad, 1.800000e+02
  %i.af = fdiv double %i.ae, f0x400921FB54442D18  ; 3 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  br i1 %i.ag, label %.lr.ph.i24.i, label %ToSpherical.exit

.lr.ph.i24.i:                                     ; preds = %bb.d, %.lr.ph.i24.i
  %.010.i25.i = phi double [ %i.ah, %.lr.ph.i24.i ], [ %i.af, %bb.d ]
  %i.ah = fadd double %.010.i25.i, 3.600000e+02   ; 3 uses
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %.lr.ph.i24.i, label %ToSpherical.exit, !llvm.loop !0

ToSpherical.exit:                                 ; preds = %.lr.ph.i24.i, %_cmsAtan2.exit.i, %bb.d
  %.09.i23.i = phi double [ 0.000000e+00, %_cmsAtan2.exit.i ], [ %i.af, %bb.d ], [ %i.ah, %.lr.ph.i24.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.09.i23.i, ptr %i.aj, align 8, !tbaa !21
  %i.ak = fcmp olt double %.09.i.i, 0.000000e+00
  %i.al = fcmp olt double %.09.i23.i, 0.000000e+00
  %or.cond = or i1 %i.ak, %i.al
  %i.am = insertelement <2 x double> poison, double %.09.i23.i, i64 0
  %i.an = insertelement <2 x double> %i.am, double %.09.i.i, i64 1
  br i1 %or.cond, label %bb.e, label %QuantizeToSector.exit

bb.e:                                             ; preds = %ToSpherical.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !13
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.ao, i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %bb.f

QuantizeToSector.exit:                            ; preds = %ToSpherical.exit, %.thread
  %i.ap = phi <2 x double> [ zeroinitializer, %.thread ], [ %i.an, %ToSpherical.exit ]
  %i.aq = fmul <2 x double> %i.ap, splat (double 1.600000e+01)
  %i.ar = fdiv <2 x double> %i.aq, <double 1.800000e+02, double 3.600000e+02> ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = call double @llvm.floor.f64(double %i.as)
  %i.au = fptosi double %i.at to i32
  %.023 = call i32 @llvm.smin.i32(i32 %i.au, i32 15)
  %i.av = extractelement <2 x double> %i.ar, i64 1
  %i.aw = call double @llvm.floor.f64(double %i.av)
  %i.ax = fptosi double %i.aw to i32
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ax, i32 15)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = zext nneg i32 %.023 to i64
  %i.ba = getelementptr inbounds nuw [512 x i8], ptr %i.ay, i64 %i.az
  %i.bb = zext nneg i32 %spec.select to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bb
  br label %bb.f

bb.f:                                             ; preds = %QuantizeToSector.exit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.bc, %QuantizeToSector.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cmsGDBCheckPoint(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cmsSpherical, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = call fastcc ptr @GetPoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load double, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fcmp ole double %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cmsGDBCompute(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
.preheader19.preheader:
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 3, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 4, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 5, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 6, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 7, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 8, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 9, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 10, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 11, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 12, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 13, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 14, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 0, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 1, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 2, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 3, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 4, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 5, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 6, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 7, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 8, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 9, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 10, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 11, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 12, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 13, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 14, i32 noundef 15)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 15, i32 noundef 15)
  br label %.preheader

.preheader:                                       ; preds = %.preheader19.preheader, %.preheader
  %.023 = phi i32 [ %i.a, %.preheader ], [ 1, %.preheader19.preheader ] ; 17 uses
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 0, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 1, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 2, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 3, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 4, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 5, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 6, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 7, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 8, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 9, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 10, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 11, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 12, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 13, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 14, i32 noundef %.023)
  tail call fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef 15, i32 noundef %.023)
  %i.a = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.a, 16
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !24

bb.a:                                             ; preds = %.preheader
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @InterpolateMissingSector(ptr noundef %0, i32 noundef range(i32 -2147483648, 16) %1, i32 noundef range(i32 -2147483648, 16) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cmsVEC3, align 8            ; 5 uses
  %4 = alloca %struct.cmsVEC3, align 8            ; 6 uses
  %5 = alloca %struct.cmsLine, align 8            ; 8 uses
  %i.a = alloca [25 x ptr], align 16              ; 5 uses
  %6 = alloca %struct.cmsLine, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [512 x i8], ptr %i.b, i64 %i.c
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.02127.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @Spiral, i64 %indvars.iv.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = add nsw i32 %i.i, %1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %i.m = add nsw i32 %i.l, %2
  %spec.select.i = and i32 %i.j, 15
  %.019.i = and i32 %i.m, 15
  %i.n = zext nneg i32 %.019.i to i64
  %i.o = getelementptr inbounds nuw [512 x i8], ptr %i.b, i64 %i.n
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.s = add nsw i32 %.02127.i, 1
  %i.t = sext i32 %.02127.i to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.t
  store ptr %i.q, ptr %i.u, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.1.i = phi i32 [ %i.s, %bb.b ], [ %.02127.i, %.preheader ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 24
  br i1 %exitcond.not.i, label %FindNearSectors.exit, label %.preheader, !llvm.loop !25

FindNearSectors.exit:                             ; preds = %bb.c
  %i.v = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %2, i64 1
  %i.x = sitofp <2 x i32> %i.w to <2 x double>    ; 2 uses
  %i.y = fadd nnan <2 x double> %i.x, splat (double 5.000000e-01)
  %i.z = fmul nnan <2 x double> %i.y, <double 3.600000e+02, double 1.800000e+02>
  %i.aa = fmul nnan <2 x double> %i.z, splat (double 6.250000e-02)
  %i.ab = fmul nnan <2 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = fdiv <2 x double> %i.ab, splat (double 1.800000e+02) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %7 = tail call double @sin(double noundef %i.ad) #6
  %8 = tail call double @cos(double noundef %i.ad) #6
  %i.ae = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %9 = tail call double @sin(double noundef %i.ae) #6
  %10 = tail call double @cos(double noundef %i.ae) #6
  %i.af = fmul double %9, 5.000000e+01            ; 2 uses
  %i.ag = fmul double %7, %i.af                   ; 2 uses
  %i.ah = fmul double %8, %i.af                   ; 2 uses
  %i.ai = fmul double %10, 5.000000e+01           ; 2 uses
  call void @_cmsVEC3init(ptr noundef nonnull %4, double noundef 5.000000e+01, double noundef 0.000000e+00, double noundef 0.000000e+00) #6
  call void @_cmsVEC3init(ptr noundef nonnull %5, double noundef %i.ai, double noundef %i.ag, double noundef %i.ah) #6
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.ak = load double, ptr %4, align 8, !tbaa !22
  %i.al = fsub double %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !22
  %i.ao = fsub double %i.an, %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !22
  %i.ar = fsub double %i.aq, %i.ah
  call void @_cmsVEC3init(ptr noundef nonnull %i.aj, double noundef %i.al, double noundef %i.ao, double noundef %i.ar) #6
  %i.as = icmp sgt i32 %.1.i, 0
  br i1 %i.as, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %FindNearSectors.exit
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aw = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %1, i64 1
  %i.ay = add nsw <2 x i32> %i.ax, splat (i32 1)
  %i.az = sitofp <2 x i32> %i.ay to <2 x double>
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> %i.x, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bb = fmul nnan <4 x double> %i.ba, <double 1.800000e+02, double 3.600000e+02, double 1.800000e+02, double 3.600000e+02>
  %i.bc = fmul nnan <4 x double> %i.bb, splat (double 6.250000e-02) ; 2 uses
  %i.bd = zext nneg i32 %.1.i to i64
  %wide.trip.count85 = zext nneg i32 %.1.i to i64 ; 2 uses
  br label %bb.d

.loopexit:                                        ; preds = %ToSpherical.exit, %bb.d
  %.sroa.7.1.lcssa = phi double [ %.sroa.7.065, %bb.d ], [ %.sroa.7.2, %ToSpherical.exit ] ; 2 uses
  %.sroa.6.1.lcssa = phi double [ %.sroa.6.066, %bb.d ], [ %.sroa.6.2, %ToSpherical.exit ] ; 2 uses
  %.sroa.0.1.lcssa = phi double [ %.sroa.0.067, %bb.d ], [ %.sroa.0.2, %ToSpherical.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge, label %bb.d, !llvm.loop !26

bb.d:                                             ; preds = %.lr.ph69, %.loopexit
  %indvars.iv81 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next82, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph69 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.0.067 = phi double [ 0.000000e+00, %.lr.ph69 ], [ %.sroa.0.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.6.066 = phi double [ 0.000000e+00, %.lr.ph69 ], [ %.sroa.6.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.7.065 = phi double [ 0.000000e+00, %.lr.ph69 ], [ %.sroa.7.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 3 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next82, %i.bd
  br i1 %i.be, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv81
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %ToSpherical.exit
  %indvars.iv77 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next78, %ToSpherical.exit ] ; 2 uses
  %.sroa.0.161 = phi double [ %.sroa.0.067, %.lr.ph ], [ %.sroa.0.2, %ToSpherical.exit ] ; 2 uses
  %.sroa.6.160 = phi double [ %.sroa.6.066, %.lr.ph ], [ %.sroa.6.2, %ToSpherical.exit ]
  %.sroa.7.159 = phi double [ %.sroa.7.065, %.lr.ph ], [ %.sroa.7.2, %ToSpherical.exit ]
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !20
  %i.bl = fmul double %i.bk, f0x400921FB54442D18
  %i.bm = fdiv double %i.bl, 1.800000e+02         ; 2 uses
  %11 = call double @sin(double noundef %i.bm) #6
  %12 = call double @cos(double noundef %i.bm) #6
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !21
  %i.bo = fmul double %i.bn, f0x400921FB54442D18
  %i.bp = fdiv double %i.bo, 1.800000e+02         ; 2 uses
  %13 = call double @sin(double noundef %i.bp) #6
  %14 = call double @cos(double noundef %i.bp) #6
  %i.bq = load double, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %i.br = fmul double %13, %i.bq                  ; 2 uses
  %i.bs = fmul double %11, %i.br                  ; 2 uses
  %i.bt = fmul double %12, %i.br                  ; 2 uses
  %i.bu = fmul double %14, %i.bq                  ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv77
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !20
  %i.ca = fmul double %i.bz, f0x400921FB54442D18
  %i.cb = fdiv double %i.ca, 1.800000e+02         ; 2 uses
  %15 = call double @sin(double noundef %i.cb) #6
  %16 = call double @cos(double noundef %i.cb) #6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !21
  %i.ce = fmul double %i.cd, f0x400921FB54442D18
  %i.cf = fdiv double %i.ce, 1.800000e+02         ; 2 uses
  %17 = call double @sin(double noundef %i.cf) #6
  %18 = call double @cos(double noundef %i.cf) #6
  %i.cg = load double, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %i.ch = fmul double %17, %i.cg                  ; 2 uses
  %i.ci = fmul double %15, %i.ch
  %i.cj = fmul double %16, %i.ch
  %i.ck = fmul double %18, %i.cg
  call void @_cmsVEC3init(ptr noundef nonnull %6, double noundef %i.bu, double noundef %i.bs, double noundef %i.bt) #6
  %i.cl = fsub double %i.ck, %i.bu
  %i.cm = fsub double %i.ci, %i.bs
  %i.cn = fsub double %i.cj, %i.bt
  call void @_cmsVEC3init(ptr noundef nonnull %i.at, double noundef %i.cl, double noundef %i.cm, double noundef %i.cn) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_cmsVEC3minus(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %i.co = call double @_cmsVEC3dot(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj) #6 ; 6 uses
  %i.cp = call double @_cmsVEC3dot(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.at) #6 ; 6 uses
  %i.cq = call double @_cmsVEC3dot(ptr noundef nonnull %i.at, ptr noundef nonnull %i.at) #6 ; 5 uses
  %i.cr = call double @_cmsVEC3dot(ptr noundef nonnull %i.aj, ptr noundef nonnull %3) #6 ; 4 uses
  %i.cs = call double @_cmsVEC3dot(ptr noundef nonnull %i.at, ptr noundef nonnull %3) #6 ; 5 uses
  %i.ct = fneg double %i.cp
  %i.cu = fmul double %i.cp, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %i.cu) ; 7 uses
  %i.cw = fcmp olt double %i.cv, 1.000000e-04
  br i1 %i.cw, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = fneg double %i.cr                       ; 2 uses
  %i.cy = fmul double %i.cq, %i.cx
  %i.cz = call double @llvm.fmuladd.f64(double %i.cp, double %i.cs, double %i.cy) ; 3 uses
  %i.da = fcmp olt double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = fmul double %i.cp, %i.cx
  %i.dc = call double @llvm.fmuladd.f64(double %i.co, double %i.cs, double %i.db)
  %i.dd = fcmp ogt double %i.cz, %i.cv
  br i1 %i.dd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.de = fadd double %i.cp, %i.cs
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.062.i = phi double [ %i.cz, %bb.g ], [ 0.000000e+00, %bb.e ], [ %i.cv, %bb.h ], [ 0.000000e+00, %bb.f ]
  %.061.i = phi double [ %i.cv, %bb.g ], [ 1.000000e+00, %bb.e ], [ %i.cv, %bb.h ], [ %i.cv, %bb.f ] ; 7 uses
  %.060.i = phi double [ %i.dc, %bb.g ], [ %i.cs, %bb.e ], [ %i.de, %bb.h ], [ %i.cs, %bb.f ] ; 2 uses
  %.0.i = phi double [ %i.cv, %bb.g ], [ %i.cq, %bb.e ], [ %i.cq, %bb.h ], [ %i.cq, %bb.f ]
  %i.df = fcmp olt double %.060.i, 0.000000e+00
  br i1 %i.df, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp ogt double %i.cr, 0.000000e+00
  br i1 %i.dg, label %ClosestLineToLine.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = fneg double %i.cr                       ; 2 uses
  %i.di = fcmp olt double %i.co, %i.dh            ; 2 uses
  %.061..i = select i1 %i.di, double %.061.i, double %i.dh
  %.061.70.i = select i1 %i.di, double %.061.i, double %i.co
  br label %ClosestLineToLine.exit

bb.l:                                             ; preds = %bb.i
  %i.dj = fcmp ogt double %.060.i, %.0.i
  br i1 %i.dj, label %bb.m, label %ClosestLineToLine.exit

bb.m:                                             ; preds = %bb.l
  %i.dk = fsub double %i.cp, %i.cr                ; 3 uses
  %i.dl = fcmp olt double %i.dk, 0.000000e+00
  br i1 %i.dl, label %ClosestLineToLine.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = fcmp ogt double %i.dk, %i.co            ; 2 uses
  %.061.71.i = select i1 %i.dm, double %.061.i, double %i.dk
  %.061.72.i = select i1 %i.dm, double %.061.i, double %i.co
  br label %ClosestLineToLine.exit

ClosestLineToLine.exit:                           ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.163.i = phi double [ %.062.i, %bb.l ], [ %.061..i, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.m ], [ %.061.71.i, %bb.n ] ; 2 uses
  %.1.i38 = phi double [ %.061.i, %bb.l ], [ %.061.70.i, %bb.k ], [ %.061.i, %bb.j ], [ %.061.i, %bb.m ], [ %.061.72.i, %bb.n ]
  %i.dn = call double @llvm.fabs.f64(double %.163.i)
  %i.do = fcmp olt double %i.dn, 1.000000e-04
  %i.dp = fdiv double %.163.i, %.1.i38
  %i.dq = select i1 %i.do, double 0.000000e+00, double %i.dp ; 2 uses
  %i.dr = load double, ptr %5, align 8, !tbaa !22
  %i.ds = load double, ptr %i.aj, align 8, !tbaa !22
  %i.dt = call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.dr) ; 4 uses
  %i.du = load <2 x double>, ptr %i.au, align 8, !tbaa !22
  %i.dv = load <2 x double>, ptr %i.av, align 8, !tbaa !22
  %i.dw = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dv, <2 x double> %i.du) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.dz = extractelement <2 x double> %i.dy, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.dy, %i.dy
  %i.ea = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.eb = call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.ea)
  %i.ec = extractelement <2 x double> %i.dy, i64 1 ; 5 uses
  %i.ed = call double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.eb) ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ed) ; 2 uses
  %i.ee = fcmp oeq double %i.ed, 0.000000e+00
  br i1 %i.ee, label %ToSpherical.exit, label %bb.o

bb.o:                                             ; preds = %ClosestLineToLine.exit
  %i.ef = fcmp une <2 x double> %i.dy, zeroinitializer
  %i.eg = bitcast <2 x i1> %i.ef to i2
  %i.eh = icmp eq i2 %i.eg, 0
  br i1 %i.eh, label %_cmsAtan2.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = call double @atan2(double noundef %i.dz, double noundef %i.ec) #6
  %i.ej = fmul double %i.ei, 1.800000e+02
  %i.ek = fdiv double %i.ej, f0x400921FB54442D18  ; 3 uses
  %i.el = fcmp olt double %i.ek, 0.000000e+00
  br i1 %i.el, label %.lr.ph.i.i, label %_cmsAtan2.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.em, %.lr.ph.i.i ], [ %i.ek, %bb.p ]
  %i.em = fadd double %.010.i.i, 3.600000e+02     ; 3 uses
  %i.en = fcmp olt double %i.em, 0.000000e+00
  br i1 %i.en, label %.lr.ph.i.i, label %_cmsAtan2.exit.i, !llvm.loop !0

_cmsAtan2.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.p, %bb.o
  %.09.i.i = phi double [ 0.000000e+00, %bb.o ], [ %i.ek, %bb.p ], [ %i.em, %.lr.ph.i.i ] ; 3 uses
  %i.eo = fmul double %i.ec, %i.ec
  %i.ep = call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.eo) ; 2 uses
  %i.eq = fcmp oeq double %i.dt, 0.000000e+00
  %i.er = fcmp oeq double %i.ep, 0.000000e+00
  %or.cond.i22.i = and i1 %i.eq, %i.er
  br i1 %or.cond.i22.i, label %ToSpherical.exit, label %bb.q

bb.q:                                             ; preds = %_cmsAtan2.exit.i
  %sqrt27.i = call double @llvm.sqrt.f64(double %i.ep)
  %i.es = call double @atan2(double noundef %sqrt27.i, double noundef %i.dt) #6
  %i.et = fmul double %i.es, 1.800000e+02
  %i.eu = fdiv double %i.et, f0x400921FB54442D18  ; 3 uses
  %i.ev = fcmp olt double %i.eu, 0.000000e+00
  br i1 %i.ev, label %.lr.ph.i24.i, label %ToSpherical.exit

.lr.ph.i24.i:                                     ; preds = %bb.q, %.lr.ph.i24.i
  %.010.i25.i = phi double [ %i.ew, %.lr.ph.i24.i ], [ %i.eu, %bb.q ]
  %i.ew = fadd double %.010.i25.i, 3.600000e+02   ; 3 uses
  %i.ex = fcmp olt double %i.ew, 0.000000e+00
  br i1 %i.ex, label %.lr.ph.i24.i, label %ToSpherical.exit, !llvm.loop !0

ToSpherical.exit:                                 ; preds = %.lr.ph.i24.i, %_cmsAtan2.exit.i, %bb.q, %ClosestLineToLine.exit
  %.sroa.447.0 = phi double [ 0.000000e+00, %ClosestLineToLine.exit ], [ %.09.i.i, %_cmsAtan2.exit.i ], [ %.09.i.i, %bb.q ], [ %.09.i.i, %.lr.ph.i24.i ] ; 2 uses
  %.sroa.7.057 = phi double [ 0.000000e+00, %ClosestLineToLine.exit ], [ 0.000000e+00, %_cmsAtan2.exit.i ], [ %i.eu, %bb.q ], [ %i.ew, %.lr.ph.i24.i ] ; 2 uses
  %i.ey = fcmp ule double %sqrt.i, %.sroa.0.161
  %i.ez = insertelement <4 x double> poison, double %.sroa.7.057, i64 0
  %i.fa = insertelement <4 x double> %i.ez, double %.sroa.447.0, i64 1
  %i.fb = shufflevector <4 x double> %i.fa, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fc = fcmp ugt <4 x double> %i.fb, %i.bc
  %i.fd = fcmp ult <4 x double> %i.fb, %i.bc
  %i.fe = shufflevector <4 x i1> %i.fc, <4 x i1> %i.fd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ff = freeze <4 x i1> %i.fe
  %i.fg = bitcast <4 x i1> %i.ff to i4
  %i.fh = icmp ne i4 %i.fg, 0
  %op.rdx = select i1 %i.fh, i1 true, i1 %i.ey    ; 3 uses
  %.sroa.7.2 = select i1 %op.rdx, double %.sroa.7.159, double %.sroa.7.057 ; 2 uses
  %.sroa.6.2 = select i1 %op.rdx, double %.sroa.6.160, double %.sroa.447.0 ; 2 uses
  %.sroa.0.2 = select i1 %op.rdx, double %.sroa.0.161, double %sqrt.i ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count85
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !27

._crit_edge:                                      ; preds = %.loopexit, %FindNearSectors.exit
  %.sroa.7.0.lcssa = phi double [ 0.000000e+00, %FindNearSectors.exit ], [ %.sroa.7.1.lcssa, %.loopexit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %FindNearSectors.exit ], [ %.sroa.6.1.lcssa, %.loopexit ]
  %.sroa.0.0.lcssa = phi double [ 0.000000e+00, %FindNearSectors.exit ], [ %.sroa.0.1.lcssa, %.loopexit ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.0.0.lcssa, ptr %i.fi, align 8, !tbaa !22
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %.sroa.6.0.lcssa, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !22
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store double %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx10, align 8, !tbaa !22
  store i32 2, ptr %i.f, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

declare void @_cmsVEC3init(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

declare void @_cmsVEC3minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @_cmsVEC3dot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS18_cmsContext_struct", !10, i64 0}
!12 = !{!"", !11, i64 0, !6, i64 8}
!13 = !{!12, !11, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"", !7, i64 0, !15, i64 8}
!17 = !{!16, !7, i64 0}
!18 = !{!15, !14, i64 0}
!19 = !{!16, !14, i64 8}
!20 = !{!15, !14, i64 8}
!21 = !{!15, !14, i64 16}
!22 = !{!14, !14, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = !{!"_spiral", !7, i64 0, !7, i64 4}
!29 = !{!28, !7, i64 0}
!30 = !{!28, !7, i64 4}
!31 = !{!10, !10, i64 0}
end_hunk_0
