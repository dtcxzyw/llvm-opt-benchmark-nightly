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
@.str.1 = private unnamed_addr constant [23 x i8] c" quadrant out of range\00", align 1
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
  %i.n = call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.m)
  %sqrt.i = call double @sqrt(double noundef %i.n) #6 ; 3 uses
  store double %sqrt.i, ptr %2, align 8, !tbaa !18
  %i.o = fcmp oeq double %sqrt.i, 0.000000e+00
  br i1 %i.o, label %.thread34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = fcmp oeq double %i.k, 0.000000e+00
  %i.q = fcmp oeq double %i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i, label %_cmsAtan2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call double @atan2(double noundef %i.i, double noundef %i.k) #6
  %i.s = fmul double %i.r, 1.800000e+02
  %i.t = fdiv double %i.s, f0x400921FB54442D18    ; 3 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  br i1 %i.u, label %.lr.ph.i.i, label %_cmsAtan2.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.v, %.lr.ph.i.i ], [ %i.t, %bb.c ]
  %i.v = fadd double %.010.i.i, 3.600000e+02      ; 3 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  br i1 %i.w, label %.lr.ph.i.i, label %_cmsAtan2.exit.i, !llvm.loop !0

_cmsAtan2.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.09.i.i = phi double [ 0.000000e+00, %bb.b ], [ %i.t, %bb.c ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.09.i.i, ptr %i.x, align 8, !tbaa !20
  %i.y = fmul double %i.k, %i.k
  %i.z = call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.y)
  %4 = call double @sqrt(double noundef %i.z) #6  ; 2 uses
  %i.aa = fcmp oeq double %i.g, 0.000000e+00
  %i.ab = fcmp oeq double %4, 0.000000e+00
  %or.cond.i22.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i22.i, label %ToSpherical.exit, label %bb.d

bb.d:                                             ; preds = %_cmsAtan2.exit.i
  %i.ac = call double @atan2(double noundef %4, double noundef %i.g) #6
  %i.ad = fmul double %i.ac, 1.800000e+02
  %i.ae = fdiv double %i.ad, f0x400921FB54442D18  ; 3 uses
  %i.af = fcmp olt double %i.ae, 0.000000e+00
  br i1 %i.af, label %.lr.ph.i24.i, label %ToSpherical.exit

.lr.ph.i24.i:                                     ; preds = %bb.d, %.lr.ph.i24.i
  %.010.i25.i = phi double [ %i.ag, %.lr.ph.i24.i ], [ %i.ae, %bb.d ]
  %i.ag = fadd double %.010.i25.i, 3.600000e+02   ; 3 uses
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %.lr.ph.i24.i, label %ToSpherical.exit, !llvm.loop !0

ToSpherical.exit:                                 ; preds = %.lr.ph.i24.i, %_cmsAtan2.exit.i, %bb.d
  %.09.i23.i = phi double [ 0.000000e+00, %_cmsAtan2.exit.i ], [ %i.ae, %bb.d ], [ %i.ag, %.lr.ph.i24.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.09.i23.i, ptr %i.ai, align 8, !tbaa !21
  %5 = fcmp olt double %sqrt.i, 0.000000e+00
  %i.aj = fcmp olt double %.09.i.i, 0.000000e+00
  %or.cond = or i1 %5, %i.aj
  %i.ak = fcmp olt double %.09.i23.i, 0.000000e+00
  %or.cond.a = or i1 %or.cond, %i.ak
  %i.al = insertelement <2 x double> poison, double %.09.i23.i, i64 0
  %i.am = insertelement <2 x double> %i.al, double %.09.i.i, i64 1
  br i1 %or.cond.a, label %bb.e, label %QuantizeToSector.exit

.thread34:                                        ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %QuantizeToSector.exit

bb.e:                                             ; preds = %ToSpherical.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !13
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.an, i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %bb.h

QuantizeToSector.exit:                            ; preds = %ToSpherical.exit, %.thread34
  %i.ao = phi <2 x double> [ zeroinitializer, %.thread34 ], [ %i.am, %ToSpherical.exit ]
  %i.ap = fmul <2 x double> %i.ao, splat (double 1.600000e+01)
  %i.aq = fdiv <2 x double> %i.ap, <double 1.800000e+02, double 3.600000e+02>
  %i.ar = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.aq)
  %i.as = fptosi <2 x double> %i.ar to <2 x i32>
  %i.at = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.as, <2 x i32> splat (i32 15)) ; 3 uses
  %i.au = icmp ugt <2 x i32> %i.at, splat (i32 15) ; 2 uses
  %i.av = extractelement <2 x i1> %i.au, i64 0
  %i.aw = extractelement <2 x i1> %i.au, i64 1
  %or.cond5 = select i1 %i.aw, i1 true, i1 %i.av
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %QuantizeToSector.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !13
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.ax, i32 noundef 2, ptr noundef nonnull @.str.1) #6
  br label %bb.h

bb.g:                                             ; preds = %QuantizeToSector.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = extractelement <2 x i32> %i.at, i64 0
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [512 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = extractelement <2 x i32> %i.at, i64 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.bd
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.be, %bb.g ]
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
  %i.ae = tail call double @sin(double noundef %i.ad) #6
  %i.af = tail call double @cos(double noundef %i.ad) #6
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.ah = tail call double @sin(double noundef %i.ag) #6
  %i.ai = tail call double @cos(double noundef %i.ag) #6
  %i.aj = fmul double %i.ah, 5.000000e+01         ; 2 uses
  %i.ak = fmul double %i.ae, %i.aj                ; 2 uses
  %i.al = fmul double %i.af, %i.aj                ; 2 uses
  %i.am = fmul double %i.ai, 5.000000e+01         ; 2 uses
  call void @_cmsVEC3init(ptr noundef nonnull %4, double noundef 5.000000e+01, double noundef 0.000000e+00, double noundef 0.000000e+00) #6
  call void @_cmsVEC3init(ptr noundef nonnull %5, double noundef %i.am, double noundef %i.ak, double noundef %i.al) #6
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.ao = load double, ptr %4, align 8, !tbaa !22
  %i.ap = fsub double %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = fsub double %i.ar, %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !22
  %i.av = fsub double %i.au, %i.al
  call void @_cmsVEC3init(ptr noundef nonnull %i.an, double noundef %i.ap, double noundef %i.as, double noundef %i.av) #6
  %i.aw = icmp sgt i32 %.1.i, 0
  br i1 %i.aw, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %FindNearSectors.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ba = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %1, i64 1
  %i.bc = add nsw <2 x i32> %i.bb, splat (i32 1)
  %i.bd = sitofp <2 x i32> %i.bc to <2 x double>
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> %i.x, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bf = fmul nnan <4 x double> %i.be, <double 1.800000e+02, double 3.600000e+02, double 1.800000e+02, double 3.600000e+02>
  %i.bg = fmul nnan <4 x double> %i.bf, splat (double 6.250000e-02) ; 2 uses
  %i.bh = zext nneg i32 %.1.i to i64
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
  %i.bi = icmp samesign ult i64 %indvars.iv.next82, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv81
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %ToSpherical.exit
  %indvars.iv77 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next78, %ToSpherical.exit ] ; 2 uses
  %.sroa.0.161 = phi double [ %.sroa.0.067, %.lr.ph ], [ %.sroa.0.2, %ToSpherical.exit ] ; 2 uses
  %.sroa.6.160 = phi double [ %.sroa.6.066, %.lr.ph ], [ %.sroa.6.2, %ToSpherical.exit ]
  %.sroa.7.159 = phi double [ %.sroa.7.065, %.lr.ph ], [ %.sroa.7.2, %ToSpherical.exit ]
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !20
  %i.bp = fmul double %i.bo, f0x400921FB54442D18
  %i.bq = fdiv double %i.bp, 1.800000e+02         ; 2 uses
  %i.br = call double @sin(double noundef %i.bq) #6
  %i.bs = call double @cos(double noundef %i.bq) #6
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !21
  %i.bu = fmul double %i.bt, f0x400921FB54442D18
  %i.bv = fdiv double %i.bu, 1.800000e+02         ; 2 uses
  %i.bw = call double @sin(double noundef %i.bv) #6
  %i.bx = call double @cos(double noundef %i.bv) #6
  %i.by = load double, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %i.bz = fmul double %i.bw, %i.by                ; 2 uses
  %i.ca = fmul double %i.br, %i.bz                ; 2 uses
  %i.cb = fmul double %i.bs, %i.bz                ; 2 uses
  %i.cc = fmul double %i.bx, %i.by                ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv77
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !20
  %i.ci = fmul double %i.ch, f0x400921FB54442D18
  %i.cj = fdiv double %i.ci, 1.800000e+02         ; 2 uses
  %i.ck = call double @sin(double noundef %i.cj) #6
  %i.cl = call double @cos(double noundef %i.cj) #6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !21
  %i.co = fmul double %i.cn, f0x400921FB54442D18
  %i.cp = fdiv double %i.co, 1.800000e+02         ; 2 uses
  %i.cq = call double @sin(double noundef %i.cp) #6
  %i.cr = call double @cos(double noundef %i.cp) #6
  %i.cs = load double, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %i.ct = fmul double %i.cq, %i.cs                ; 2 uses
  %i.cu = fmul double %i.ck, %i.ct
  %i.cv = fmul double %i.cl, %i.ct
  %i.cw = fmul double %i.cr, %i.cs
  call void @_cmsVEC3init(ptr noundef nonnull %6, double noundef %i.cc, double noundef %i.ca, double noundef %i.cb) #6
  %i.cx = fsub double %i.cw, %i.cc
  %i.cy = fsub double %i.cu, %i.ca
  %i.cz = fsub double %i.cv, %i.cb
  call void @_cmsVEC3init(ptr noundef nonnull %i.ax, double noundef %i.cx, double noundef %i.cy, double noundef %i.cz) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_cmsVEC3minus(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %i.da = call double @_cmsVEC3dot(ptr noundef nonnull %i.an, ptr noundef nonnull %i.an) #6 ; 6 uses
  %i.db = call double @_cmsVEC3dot(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ax) #6 ; 6 uses
  %i.dc = call double @_cmsVEC3dot(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ax) #6 ; 5 uses
  %i.dd = call double @_cmsVEC3dot(ptr noundef nonnull %i.an, ptr noundef nonnull %3) #6 ; 4 uses
  %i.de = call double @_cmsVEC3dot(ptr noundef nonnull %i.ax, ptr noundef nonnull %3) #6 ; 5 uses
  %i.df = fneg double %i.db
  %i.dg = fmul double %i.db, %i.df
  %i.dh = call double @llvm.fmuladd.f64(double %i.da, double %i.dc, double %i.dg) ; 7 uses
  %i.di = fcmp olt double %i.dh, 1.000000e-04
  br i1 %i.di, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dj = fneg double %i.dd                       ; 2 uses
  %i.dk = fmul double %i.dc, %i.dj
  %i.dl = call double @llvm.fmuladd.f64(double %i.db, double %i.de, double %i.dk) ; 3 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = fmul double %i.db, %i.dj
  %i.do = call double @llvm.fmuladd.f64(double %i.da, double %i.de, double %i.dn)
  %i.dp = fcmp ogt double %i.dl, %i.dh
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dq = fadd double %i.db, %i.de
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.062.i = phi double [ %i.dl, %bb.g ], [ 0.000000e+00, %bb.e ], [ %i.dh, %bb.h ], [ 0.000000e+00, %bb.f ]
  %.061.i = phi double [ %i.dh, %bb.g ], [ 1.000000e+00, %bb.e ], [ %i.dh, %bb.h ], [ %i.dh, %bb.f ] ; 7 uses
  %.060.i = phi double [ %i.do, %bb.g ], [ %i.de, %bb.e ], [ %i.dq, %bb.h ], [ %i.de, %bb.f ] ; 2 uses
  %.0.i = phi double [ %i.dh, %bb.g ], [ %i.dc, %bb.e ], [ %i.dc, %bb.h ], [ %i.dc, %bb.f ]
  %i.dr = fcmp olt double %.060.i, 0.000000e+00
  br i1 %i.dr, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ds = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.ds, label %ClosestLineToLine.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = fneg double %i.dd                       ; 2 uses
  %i.du = fcmp olt double %i.da, %i.dt            ; 2 uses
  %.061..i = select i1 %i.du, double %.061.i, double %i.dt
  %.061.70.i = select i1 %i.du, double %.061.i, double %i.da
  br label %ClosestLineToLine.exit

bb.l:                                             ; preds = %bb.i
  %i.dv = fcmp ogt double %.060.i, %.0.i
  br i1 %i.dv, label %bb.m, label %ClosestLineToLine.exit

bb.m:                                             ; preds = %bb.l
  %i.dw = fsub double %i.db, %i.dd                ; 3 uses
  %i.dx = fcmp olt double %i.dw, 0.000000e+00
  br i1 %i.dx, label %ClosestLineToLine.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = fcmp ogt double %i.dw, %i.da            ; 2 uses
  %.061.71.i = select i1 %i.dy, double %.061.i, double %i.dw
  %.061.72.i = select i1 %i.dy, double %.061.i, double %i.da
  br label %ClosestLineToLine.exit

ClosestLineToLine.exit:                           ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.163.i = phi double [ %.062.i, %bb.l ], [ %.061..i, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.m ], [ %.061.71.i, %bb.n ] ; 2 uses
  %.1.i38 = phi double [ %.061.i, %bb.l ], [ %.061.70.i, %bb.k ], [ %.061.i, %bb.j ], [ %.061.i, %bb.m ], [ %.061.72.i, %bb.n ]
  %i.dz = call double @llvm.fabs.f64(double %.163.i)
  %i.ea = fcmp olt double %i.dz, 1.000000e-04
  %i.eb = fdiv double %.163.i, %.1.i38
  %i.ec = select i1 %i.ea, double 0.000000e+00, double %i.eb ; 2 uses
  %i.ed = load double, ptr %5, align 8, !tbaa !22
  %i.ee = load double, ptr %i.an, align 8, !tbaa !22
  %i.ef = call double @llvm.fmuladd.f64(double %i.ec, double %i.ee, double %i.ed) ; 4 uses
  %i.eg = load <2 x double>, ptr %i.ay, align 8, !tbaa !22
  %i.eh = load <2 x double>, ptr %i.az, align 8, !tbaa !22
  %i.ei = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.eh, <2 x double> %i.eg) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.ek, %i.ek
  %i.em = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.en = call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.em)
  %i.eo = extractelement <2 x double> %i.ek, i64 1 ; 5 uses
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.en)
  %sqrt.i = call double @sqrt(double noundef %i.ep) #6 ; 3 uses
  %i.eq = fcmp oeq double %sqrt.i, 0.000000e+00
  br i1 %i.eq, label %ToSpherical.exit, label %bb.o

bb.o:                                             ; preds = %ClosestLineToLine.exit
  %i.er = fcmp une <2 x double> %i.ek, zeroinitializer
  %i.es = bitcast <2 x i1> %i.er to i2
  %i.et = icmp eq i2 %i.es, 0
  br i1 %i.et, label %_cmsAtan2.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = call double @atan2(double noundef %i.el, double noundef %i.eo) #6
  %i.ev = fmul double %i.eu, 1.800000e+02
  %i.ew = fdiv double %i.ev, f0x400921FB54442D18  ; 3 uses
  %i.ex = fcmp olt double %i.ew, 0.000000e+00
  br i1 %i.ex, label %.lr.ph.i.i, label %_cmsAtan2.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.ey, %.lr.ph.i.i ], [ %i.ew, %bb.p ]
  %i.ey = fadd double %.010.i.i, 3.600000e+02     ; 3 uses
  %i.ez = fcmp olt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %.lr.ph.i.i, label %_cmsAtan2.exit.i, !llvm.loop !0

_cmsAtan2.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.p, %bb.o
  %.09.i.i = phi double [ 0.000000e+00, %bb.o ], [ %i.ew, %bb.p ], [ %i.ey, %.lr.ph.i.i ] ; 3 uses
  %i.fa = fmul double %i.eo, %i.eo
  %i.fb = call double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.fa)
  %7 = call double @sqrt(double noundef %i.fb) #6 ; 2 uses
  %i.fc = fcmp oeq double %i.ef, 0.000000e+00
  %i.fd = fcmp oeq double %7, 0.000000e+00
  %or.cond.i22.i = and i1 %i.fc, %i.fd
  br i1 %or.cond.i22.i, label %ToSpherical.exit, label %bb.q

bb.q:                                             ; preds = %_cmsAtan2.exit.i
  %i.fe = call double @atan2(double noundef %7, double noundef %i.ef) #6
  %i.ff = fmul double %i.fe, 1.800000e+02
  %i.fg = fdiv double %i.ff, f0x400921FB54442D18  ; 3 uses
  %i.fh = fcmp olt double %i.fg, 0.000000e+00
  br i1 %i.fh, label %.lr.ph.i24.i, label %ToSpherical.exit

.lr.ph.i24.i:                                     ; preds = %bb.q, %.lr.ph.i24.i
  %.010.i25.i = phi double [ %i.fi, %.lr.ph.i24.i ], [ %i.fg, %bb.q ]
  %i.fi = fadd double %.010.i25.i, 3.600000e+02   ; 3 uses
  %i.fj = fcmp olt double %i.fi, 0.000000e+00
  br i1 %i.fj, label %.lr.ph.i24.i, label %ToSpherical.exit, !llvm.loop !0

ToSpherical.exit:                                 ; preds = %.lr.ph.i24.i, %_cmsAtan2.exit.i, %bb.q, %ClosestLineToLine.exit
  %.sroa.447.0 = phi double [ 0.000000e+00, %ClosestLineToLine.exit ], [ %.09.i.i, %_cmsAtan2.exit.i ], [ %.09.i.i, %bb.q ], [ %.09.i.i, %.lr.ph.i24.i ] ; 2 uses
  %.sroa.7.057 = phi double [ 0.000000e+00, %ClosestLineToLine.exit ], [ 0.000000e+00, %_cmsAtan2.exit.i ], [ %i.fg, %bb.q ], [ %i.fi, %.lr.ph.i24.i ] ; 2 uses
  %i.fk = fcmp ule double %sqrt.i, %.sroa.0.161
  %i.fl = insertelement <4 x double> poison, double %.sroa.7.057, i64 0
  %i.fm = insertelement <4 x double> %i.fl, double %.sroa.447.0, i64 1
  %i.fn = shufflevector <4 x double> %i.fm, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fo = fcmp ugt <4 x double> %i.fn, %i.bg
  %i.fp = fcmp ult <4 x double> %i.fn, %i.bg
  %i.fq = shufflevector <4 x i1> %i.fo, <4 x i1> %i.fp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fr = freeze <4 x i1> %i.fq
  %i.fs = bitcast <4 x i1> %i.fr to i4
  %i.ft = icmp ne i4 %i.fs, 0
  %op.rdx = select i1 %i.ft, i1 true, i1 %i.fk    ; 3 uses
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
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.0.0.lcssa, ptr %i.fu, align 8, !tbaa !22
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

declare void @_cmsVEC3minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @_cmsVEC3dot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
