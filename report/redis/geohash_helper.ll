inline.NumInlined: 19
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GeoHashRadius = type { %struct.GeoHashBits, %struct.GeoHashArea, %struct.GeoHashNeighbors }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashRange = type { double, double }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@DEG_TO_RAD = dso_local local_unnamed_addr constant double f0x3F91DF46A2529D39, align 8
@EARTH_RADIUS_IN_METERS = dso_local local_unnamed_addr constant double f0x41584F6F63E51090, align 8
@MERCATOR_MAX = dso_local local_unnamed_addr constant double f0x41731C05E5EB851F, align 8
@MERCATOR_MIN = dso_local local_unnamed_addr constant double f0xC1731C05E5EB851F, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext range(i8 1, 27) i8 @geohashEstimateStepsByRadius(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = fcmp olt double %0, f0x41731C05E5EB851F
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.022 = phi i32 [ %i.d, %.lr.ph ], [ 1, %.preheader ]
  %.01921 = phi double [ %i.c, %.lr.ph ], [ %0, %.preheader ]
  %i.c = fmul nnan double %.01921, 2.000000e+00   ; 2 uses
  %i.d = add nuw nsw i32 %.022, 1                 ; 2 uses
  %i.e = fcmp olt double %i.c, f0x41731C05E5EB851F
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi i32 [ 1, %.preheader ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.f = add nsw i32 %.0.lcssa, -2
  %i.g = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %or.cond = fcmp ogt double %i.g, 6.600000e+01
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.h = add nsw i32 %.0.lcssa, -3
  %or.cond3 = fcmp ogt double %i.g, 8.000000e+01
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.0.lcssa, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.f, %._crit_edge ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.1, i32 1)
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 26)
  %i.j = trunc nuw nsw i32 %spec.store.select4 to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.018 = phi i8 [ %i.j, %bb.d ], [ 26, %bb.a ]
  ret i8 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashBoundingBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !20 ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load double, ptr %i.l, align 8, !tbaa !20
  %i.n = fmul double %i.m, 5.000000e-01
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi double [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.o = phi double [ %i.n, %bb.c ], [ %i.j, %bb.b ]
  %i.p = fmul double %i.f, %.pn
  %i.q = fmul double %i.f, %i.o
  %i.r = fdiv double %i.p, f0x41584F6F63E51090
  %2 = insertelement <2 x double> poison, double %i.r, i64 0
  %3 = insertelement <2 x double> %2, double %i.q, i64 1
  %4 = fdiv <2 x double> %3, <double f0x3F91DF46A2529D39, double f0x41584F6F63E51090> ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %i.s = fadd double %i.d, %5                     ; 2 uses
  %i.t = fmul double %i.s, f0x3F91DF46A2529D39
  %i.u = tail call double @cos(double noundef %i.t) #10, !tbaa !9
  %i.v = fsub double %i.d, %5                     ; 2 uses
  %i.w = fmul double %i.v, f0x3F91DF46A2529D39
  %i.x = tail call double @cos(double noundef %i.w) #10, !tbaa !9
  %i.y = fcmp olt double %i.d, 0.000000e+00
  %..v.v = select i1 %i.y, double %i.x, double %i.u
  %6 = extractelement <2 x double> %4, i64 1
  %..v = fdiv double %6, %..v.v
  %. = fdiv double %..v, f0x3F91DF46A2529D39      ; 2 uses
  %i.z = fsub double %i.b, %.
  store double %i.z, ptr %1, align 8, !tbaa !15
  %i.aa = fadd double %i.b, %.
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.v, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.s, ptr %i.ad, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @geohashCalculateAreasByShapeWGS84(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.GeoHashRadius) align 8 captures(none) %0, ptr nofree noundef captures(none) initializes((32, 64)) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.GeoHashRange, align 8       ; 12 uses
  %3 = alloca %struct.GeoHashRange, align 8       ; 12 uses
  %4 = alloca %struct.GeoHashBits, align 8        ; 10 uses
  %5 = alloca %struct.GeoHashNeighbors, align 8   ; 30 uses
  %6 = alloca %struct.GeoHashArea, align 8        ; 9 uses
  %7 = alloca %struct.GeoHashArea, align 8        ; 4 uses
  %8 = alloca %struct.GeoHashArea, align 8        ; 4 uses
  %9 = alloca %struct.GeoHashArea, align 8        ; 4 uses
  %10 = alloca %struct.GeoHashArea, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !15 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !19
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load double, ptr %i.j, align 8, !tbaa !20 ; 5 uses
  br i1 %i.i, label %geohashBoundingBox.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = fmul double %i.n, 5.000000e-01
  br label %geohashBoundingBox.exit

geohashBoundingBox.exit:                          ; preds = %bb.a, %bb.b
  %.pn.i = phi double [ %i.l, %bb.b ], [ %i.k, %bb.a ]
  %i.p = phi double [ %i.o, %bb.b ], [ %i.k, %bb.a ]
  %i.q = fmul double %i.g, %.pn.i
  %i.r = fmul double %i.g, %i.p
  %i.s = fdiv double %i.q, f0x41584F6F63E51090
  %11 = insertelement <2 x double> poison, double %i.s, i64 0
  %12 = insertelement <2 x double> %11, double %i.r, i64 1
  %13 = fdiv <2 x double> %12, <double f0x3F91DF46A2529D39, double f0x41584F6F63E51090> ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %i.t = fadd double %i.e, %14                    ; 4 uses
  %i.u = fmul double %i.t, f0x3F91DF46A2529D39
  %i.v = tail call double @cos(double noundef %i.u) #10, !tbaa !9
  %i.w = fsub double %i.e, %14                    ; 4 uses
  %i.x = fmul double %i.w, f0x3F91DF46A2529D39
  %i.y = tail call double @cos(double noundef %i.x) #10, !tbaa !9
  %i.z = fcmp olt double %i.e, 0.000000e+00
  %..v.v.i = select i1 %i.z, double %i.y, double %i.v
  %15 = extractelement <2 x double> %13, i64 1
  %..v.i = fdiv double %15, %..v.v.i
  %..i = fdiv double %..v.i, f0x3F91DF46A2529D39  ; 2 uses
  %i.aa = fsub double %i.c, %..i                  ; 3 uses
  store double %i.aa, ptr %i.a, align 8, !tbaa !15
  %i.ab = fadd double %i.c, %..i                  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.ab, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.w, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.t, ptr %i.ae, align 8, !tbaa !15
  %i.af = load i32, ptr %1, align 8, !tbaa !19
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %geohashBoundingBox.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !20
  %i.aj = fmul double %i.ai, 5.000000e-01         ; 2 uses
  %i.ak = fmul double %i.k, 5.000000e-01          ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.al)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.am)
  br label %bb.d

bb.d:                                             ; preds = %geohashBoundingBox.exit, %bb.c
  %i.an = phi double [ %sqrt, %bb.c ], [ %i.k, %geohashBoundingBox.exit ]
  %i.ao = fmul double %i.g, %i.an                 ; 3 uses
  %i.ap = fcmp oeq double %i.ao, 0.000000e+00
  br i1 %i.ap, label %geohashEstimateStepsByRadius.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.aq = fcmp olt double %i.ao, f0x41731C05E5EB851F
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.022.i = phi i32 [ %i.as, %.lr.ph.i ], [ 1, %.preheader.i ]
  %.01921.i = phi double [ %i.ar, %.lr.ph.i ], [ %i.ao, %.preheader.i ]
  %i.ar = fmul nnan double %.01921.i, 2.000000e+00 ; 2 uses
  %i.as = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %i.at = fcmp olt double %i.ar, f0x41731C05E5EB851F
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 1, %.preheader.i ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %i.au = add nsw i32 %.0.lcssa.i, -2
  %i.av = tail call double @llvm.fabs.f64(double %i.e) ; 2 uses
  %or.cond.i = fcmp ogt double %i.av, 6.600000e+01
  br i1 %or.cond.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i
  %i.aw = add nsw i32 %.0.lcssa.i, -3
  %or.cond3.i = fcmp ogt double %i.av, 8.000000e+01
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = add nsw i32 %.0.lcssa.i, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.1.i = phi i32 [ %i.ax, %bb.f ], [ %i.aw, %bb.e ], [ %i.au, %._crit_edge.i ]
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 1)
  %spec.store.select4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 26)
  %i.ay = trunc nuw nsw i32 %spec.store.select4.i to i8
  br label %geohashEstimateStepsByRadius.exit

geohashEstimateStepsByRadius.exit:                ; preds = %bb.d, %bb.g
  %.018.i = phi i8 [ %i.ay, %bb.g ], [ 26, %bb.d ] ; 3 uses
  %i.az = zext nneg i8 %.018.i to i32             ; 2 uses
  call void @geohashGetCoordRange(ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %i.ba = call i32 @geohashEncode(ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %i.c, double noundef %i.e, i8 noundef zeroext %.018.i, ptr noundef nonnull %4) #10 ; 0 uses
  call void @geohashNeighbors(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.bb = load double, ptr %2, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = load double, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bg = load double, ptr %i.bf, align 8
  %i.bh = load i64, ptr %4, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = call i32 @geohashDecode(double %i.bb, double %i.bd, double %i.be, double %i.bg, i64 %i.bh, i8 %i.bj, ptr noundef nonnull %6) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bl = load double, ptr %2, align 8
  %i.bm = load double, ptr %i.bc, align 8
  %i.bn = load double, ptr %3, align 8
  %i.bo = load double, ptr %i.bf, align 8
  %i.bp = load i64, ptr %5, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = call i32 @geohashDecode(double %i.bl, double %i.bm, double %i.bn, double %i.bo, i64 %i.bp, i8 %i.br, ptr noundef nonnull %7) #10 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bu = load double, ptr %2, align 8
  %i.bv = load double, ptr %i.bc, align 8
  %i.bw = load double, ptr %3, align 8
  %i.bx = load double, ptr %i.bf, align 8
  %i.by = load i64, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = call i32 @geohashDecode(double %i.bu, double %i.bv, double %i.bw, double %i.bx, i64 %i.by, i8 %i.ca, ptr noundef nonnull %8) #10 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cd = load double, ptr %2, align 8
  %i.ce = load double, ptr %i.bc, align 8
  %i.cf = load double, ptr %3, align 8
  %i.cg = load double, ptr %i.bf, align 8
  %i.ch = load i64, ptr %i.cc, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8
  %i.ck = call i32 @geohashDecode(double %i.cd, double %i.ce, double %i.cf, double %i.cg, i64 %i.ch, i8 %i.cj, ptr noundef nonnull %9) #10 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cm = load double, ptr %2, align 8
  %i.cn = load double, ptr %i.bc, align 8
  %i.co = load double, ptr %3, align 8
  %i.cp = load double, ptr %i.bf, align 8
  %i.cq = load i64, ptr %i.cl, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8
  %i.ct = call i32 @geohashDecode(double %i.cm, double %i.cn, double %i.co, double %i.cp, i64 %i.cq, i8 %i.cs, ptr noundef nonnull %10) #10 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !21
  %i.cw = fcmp olt double %i.cv, %i.t
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !26
  %i.cz = fcmp ogt double %i.cy, %i.w
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.db = load double, ptr %i.da, align 8, !tbaa !27
  %i.dc = fcmp olt double %i.db, %i.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !28
  %i.df = fcmp ogt double %i.de, %i.aa
  %i.dg = select i1 %i.df, i1 true, i1 %i.dc
  %i.dh = select i1 %i.dg, i1 true, i1 %i.cz
  %narrow = select i1 %i.dh, i1 true, i1 %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.di = icmp samesign ugt i8 %.018.i, 1
  %or.cond = and i1 %i.di, %narrow
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %geohashEstimateStepsByRadius.exit
  %i.dj = add nsw i32 %i.az, -1                   ; 2 uses
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = call i32 @geohashEncode(ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %i.c, double noundef %i.e, i8 noundef zeroext %i.dk, ptr noundef nonnull %4) #10 ; 0 uses
  call void @geohashNeighbors(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.dm = load double, ptr %2, align 8
  %i.dn = load double, ptr %i.bc, align 8
  %i.do = load double, ptr %3, align 8
  %i.dp = load double, ptr %i.bf, align 8
  %i.dq = load i64, ptr %4, align 8
  %i.dr = load i8, ptr %i.bi, align 8
  %i.ds = call i32 @geohashDecode(double %i.dm, double %i.dn, double %i.do, double %i.dp, i64 %i.dq, i8 %i.dr, ptr noundef nonnull %6) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %geohashEstimateStepsByRadius.exit
  %.036 = phi i32 [ %i.dj, %bb.h ], [ %i.az, %geohashEstimateStepsByRadius.exit ]
  %i.dt = icmp samesign ugt i32 %.036, 1
  br i1 %i.dt, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dv = load double, ptr %i.du, align 8, !tbaa !26
  %i.dw = fcmp olt double %i.dv, %i.w
  br i1 %i.dw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bz, align 8, !tbaa !29
  store i64 0, ptr %i.bt, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 0, ptr %i.dy, align 8, !tbaa !32
  store i64 0, ptr %i.dx, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i8 0, ptr %i.ea, align 8, !tbaa !34
  store i64 0, ptr %i.dz, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !21
  %i.ed = fcmp ogt double %i.ec, %i.t
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.bq, align 8, !tbaa !36
  store i64 0, ptr %5, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.ef, align 8, !tbaa !38
  store i64 0, ptr %i.ee, align 8, !tbaa !39
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 0, ptr %i.eh, align 8, !tbaa !40
  store i64 0, ptr %i.eg, align 8, !tbaa !41
  br label %bb.n

end_hunk_0
