Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geohash_helper?download=true
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
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = fcmp olt double %0, f0x41731C05E5EB851F
  br i1 %i.b, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.022 = phi i32 [ %i.d, %.lr.ph ], [ 1, %.preheader ]
  %.01921 = phi double [ %i.c, %.lr.ph ], [ %0, %.preheader ]
  %i.c = fmul nnan double %.01921, 2.000000e+00   ; 2 uses
  %i.d = add nuw nsw i32 %.022, 1                 ; 2 uses
  %i.e = fcmp olt double %i.c, f0x41731C05E5EB851F
  br i1 %i.e, label %.lr.ph, label %bb.b, !llvm.loop !13

bb.b:                                             ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi i32 [ 1, %.preheader ], [ %i.d, %.lr.ph ]
  %2 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %or.cond = fcmp ogt double %2, 6.600000e+01
  %or.cond3 = fcmp ogt double %2, 8.000000e+01
  %spec.select.v = select i1 %or.cond3, i32 -4, i32 -3
  %.1.v = select i1 %or.cond, i32 %spec.select.v, i32 -2
  %.1 = add nsw i32 %.0.lcssa, %.1.v
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.1, i32 1)
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 26)
  %i.f = trunc nuw nsw i32 %spec.store.select4 to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.018 = phi i8 [ %i.f, %bb.b ], [ 26, %bb.a ]
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
  %i.f = load double, ptr %i.e, align 8, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !20
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load double, ptr %i.m, align 8, !tbaa !20
  %i.o = insertelement <2 x double> %i.l, double %i.n, i64 1
  %i.p = fmul <2 x double> %i.o, splat (double 5.000000e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = phi <2 x double> [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  %i.r = insertelement <2 x double> poison, double %i.f, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.s, %i.q
  %i.u = fdiv <2 x double> %i.t, splat (double f0x41584F6F63E51090) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fdiv double %i.v, f0x3F91DF46A2529D39    ; 2 uses
  %i.x = fadd double %i.d, %i.w                   ; 2 uses
  %i.y = fmul double %i.x, f0x3F91DF46A2529D39
  %i.z = tail call double @cos(double noundef %i.y) #10, !tbaa !9
  %i.aa = fsub double %i.d, %i.w                  ; 2 uses
  %i.ab = fmul double %i.aa, f0x3F91DF46A2529D39
  %i.ac = tail call double @cos(double noundef %i.ab) #10, !tbaa !9
  %i.ad = fcmp olt double %i.d, 0.000000e+00
  %..v.v = select i1 %i.ad, double %i.ac, double %i.z
  %i.ae = extractelement <2 x double> %i.u, i64 1
  %..v = fdiv double %i.ae, %..v.v
  %. = fdiv double %..v, f0x3F91DF46A2529D39      ; 2 uses
  %i.af = fsub double %i.b, %.
  store double %i.af, ptr %1, align 8, !tbaa !15
  %i.ag = fadd double %i.b, %.
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ag, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aa, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.x, ptr %i.aj, align 8, !tbaa !15
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
  %i.g = load double, ptr %i.f, align 8, !tbaa !17 ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !19
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load double, ptr %i.j, align 8, !tbaa !20 ; 3 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.i, label %geohashBoundingBox.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load double, ptr %i.n, align 8, !tbaa !20
  %i.p = insertelement <2 x double> %i.m, double %i.o, i64 1
  %i.q = fmul <2 x double> %i.p, splat (double 5.000000e-01)
  br label %geohashBoundingBox.exit

geohashBoundingBox.exit:                          ; preds = %bb.a, %bb.b
  %i.r = phi <2 x double> [ %i.q, %bb.b ], [ %i.m, %bb.a ]
  %i.s = insertelement <2 x double> poison, double %i.g, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.t, %i.r
  %i.v = fdiv <2 x double> %i.u, splat (double f0x41584F6F63E51090) ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fdiv double %i.w, f0x3F91DF46A2529D39    ; 2 uses
  %i.y = fadd double %i.e, %i.x                   ; 4 uses
  %i.z = fmul double %i.y, f0x3F91DF46A2529D39
  %i.aa = tail call double @cos(double noundef %i.z) #10, !tbaa !9
  %i.ab = fsub double %i.e, %i.x                  ; 4 uses
  %i.ac = fmul double %i.ab, f0x3F91DF46A2529D39
  %i.ad = tail call double @cos(double noundef %i.ac) #10, !tbaa !9
  %i.ae = fcmp olt double %i.e, 0.000000e+00
  %..v.v.i = select i1 %i.ae, double %i.ad, double %i.aa
  %i.af = extractelement <2 x double> %i.v, i64 1
  %..v.i = fdiv double %i.af, %..v.v.i
  %..i = fdiv double %..v.i, f0x3F91DF46A2529D39  ; 2 uses
  %i.ag = fsub double %i.c, %..i                  ; 3 uses
  store double %i.ag, ptr %i.a, align 8, !tbaa !15
  %i.ah = fadd double %i.c, %..i                  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.ah, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.ab, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.y, ptr %i.ak, align 8, !tbaa !15
  %i.al = load i32, ptr %1, align 8, !tbaa !19
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %geohashBoundingBox.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  %i.ap = fmul double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = fmul double %i.k, 5.000000e-01          ; 2 uses
  %i.ar = fmul double %i.aq, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.ar)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.as)
  br label %bb.d

bb.d:                                             ; preds = %geohashBoundingBox.exit, %bb.c
  %i.at = phi double [ %sqrt, %bb.c ], [ %i.k, %geohashBoundingBox.exit ]
  %i.au = fmul double %i.g, %i.at                 ; 3 uses
  %i.av = fcmp oeq double %i.au, 0.000000e+00
  br i1 %i.av, label %geohashEstimateStepsByRadius.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.aw = fcmp olt double %i.au, f0x41731C05E5EB851F
  br i1 %i.aw, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.022.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 1, %.preheader.i ]
  %.01921.i = phi double [ %i.ax, %.lr.ph.i ], [ %i.au, %.preheader.i ]
  %i.ax = fmul nnan double %.01921.i, 2.000000e+00 ; 2 uses
  %i.ay = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %i.az = fcmp olt double %i.ax, f0x41731C05E5EB851F
  br i1 %i.az, label %.lr.ph.i, label %bb.e, !llvm.loop !13

bb.e:                                             ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 1, %.preheader.i ], [ %i.ay, %.lr.ph.i ]
  %11 = tail call double @llvm.fabs.f64(double %i.e) ; 2 uses
  %or.cond.i = fcmp ogt double %11, 6.600000e+01
  %or.cond3.i = fcmp ogt double %11, 8.000000e+01
  %spec.select.v.i = select i1 %or.cond3.i, i32 -4, i32 -3
  %.1.v.i = select i1 %or.cond.i, i32 %spec.select.v.i, i32 -2
  %.1.i = add nsw i32 %.0.lcssa.i, %.1.v.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 1)
  %spec.store.select4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 26)
  %i.ba = trunc nuw nsw i32 %spec.store.select4.i to i8
  br label %geohashEstimateStepsByRadius.exit

geohashEstimateStepsByRadius.exit:                ; preds = %bb.d, %bb.e
  %.018.i = phi i8 [ %i.ba, %bb.e ], [ 26, %bb.d ] ; 3 uses
  %i.bb = zext nneg i8 %.018.i to i32             ; 2 uses
  call void @geohashGetCoordRange(ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %i.bc = call i32 @geohashEncode(ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %i.c, double noundef %i.e, i8 noundef zeroext %.018.i, ptr noundef nonnull %4) #10 ; 0 uses
  call void @geohashNeighbors(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.bd = load double, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = load double, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bi = load double, ptr %i.bh, align 8
  %i.bj = load i64, ptr %4, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = call i32 @geohashDecode(double %i.bd, double %i.bf, double %i.bg, double %i.bi, i64 %i.bj, i8 %i.bl, ptr noundef nonnull %6) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bn = load double, ptr %2, align 8
  %i.bo = load double, ptr %i.be, align 8
  %i.bp = load double, ptr %3, align 8
  %i.bq = load double, ptr %i.bh, align 8
  %i.br = load i64, ptr %5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = call i32 @geohashDecode(double %i.bn, double %i.bo, double %i.bp, double %i.bq, i64 %i.br, i8 %i.bt, ptr noundef nonnull %7) #10 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bw = load double, ptr %2, align 8
  %i.bx = load double, ptr %i.be, align 8
  %i.by = load double, ptr %3, align 8
  %i.bz = load double, ptr %i.bh, align 8
  %i.ca = load i64, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = call i32 @geohashDecode(double %i.bw, double %i.bx, double %i.by, double %i.bz, i64 %i.ca, i8 %i.cc, ptr noundef nonnull %8) #10 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = load double, ptr %2, align 8
  %i.cg = load double, ptr %i.be, align 8
  %i.ch = load double, ptr %3, align 8
  %i.ci = load double, ptr %i.bh, align 8
  %i.cj = load i64, ptr %i.ce, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = call i32 @geohashDecode(double %i.cf, double %i.cg, double %i.ch, double %i.ci, i64 %i.cj, i8 %i.cl, ptr noundef nonnull %9) #10 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.co = load double, ptr %2, align 8
  %i.cp = load double, ptr %i.be, align 8
  %i.cq = load double, ptr %3, align 8
  %i.cr = load double, ptr %i.bh, align 8
  %i.cs = load i64, ptr %i.cn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8
  %i.cv = call i32 @geohashDecode(double %i.co, double %i.cp, double %i.cq, double %i.cr, i64 %i.cs, i8 %i.cu, ptr noundef nonnull %10) #10 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !21
  %i.cy = fcmp olt double %i.cx, %i.y
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.da = load double, ptr %i.cz, align 8, !tbaa !26
  %i.db = fcmp ogt double %i.da, %i.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = fcmp olt double %i.dd, %i.ah
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !28
  %i.dh = fcmp ogt double %i.dg, %i.ag
  %i.di = select i1 %i.dh, i1 true, i1 %i.de
  %i.dj = select i1 %i.di, i1 true, i1 %i.db
  %narrow = select i1 %i.dj, i1 true, i1 %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.dk = icmp samesign ugt i8 %.018.i, 1
  %or.cond = and i1 %i.dk, %narrow
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %geohashEstimateStepsByRadius.exit
  %i.dl = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = call i32 @geohashEncode(ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %i.c, double noundef %i.e, i8 noundef zeroext %i.dm, ptr noundef nonnull %4) #10 ; 0 uses
  call void @geohashNeighbors(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %i.do = load double, ptr %2, align 8
  %i.dp = load double, ptr %i.be, align 8
  %i.dq = load double, ptr %3, align 8
  %i.dr = load double, ptr %i.bh, align 8
  %i.ds = load i64, ptr %4, align 8
  %i.dt = load i8, ptr %i.bk, align 8
  %i.du = call i32 @geohashDecode(double %i.do, double %i.dp, double %i.dq, double %i.dr, i64 %i.ds, i8 %i.dt, ptr noundef nonnull %6) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %geohashEstimateStepsByRadius.exit
  %.036 = phi i32 [ %i.dl, %bb.f ], [ %i.bb, %geohashEstimateStepsByRadius.exit ]
  %i.dv = icmp samesign ugt i32 %.036, 1
  br i1 %i.dv, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !26
  %i.dy = fcmp olt double %i.dx, %i.ab
  br i1 %i.dy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.cb, align 8, !tbaa !29
  store i64 0, ptr %i.bv, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 0, ptr %i.ea, align 8, !tbaa !32
  store i64 0, ptr %i.dz, align 8, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i8 0, ptr %i.ec, align 8, !tbaa !34
  store i64 0, ptr %i.eb, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !21
  %i.ef = fcmp ogt double %i.ee, %i.y
  br i1 %i.ef, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.bs, align 8, !tbaa !36
  store i64 0, ptr %5, align 8, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.eh, align 8, !tbaa !38
  store i64 0, ptr %i.eg, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 0, ptr %i.ej, align 8, !tbaa !40
  store i64 0, ptr %i.ei, align 8, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !28
  %i.em = fcmp olt double %i.el, %i.ag
  br i1 %i.em, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.ct, align 8, !tbaa !42
  store i64 0, ptr %i.cn, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 0, ptr %i.eo, align 8, !tbaa !32
  store i64 0, ptr %i.en, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i8 0, ptr %i.eq, align 8, !tbaa !40
  store i64 0, ptr %i.ep, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.es = load double, ptr %i.er, align 8, !tbaa !27
  %i.et = fcmp ogt double %i.es, %i.ah
  br i1 %i.et, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ck, align 8, !tbaa !44
  store i64 0, ptr %i.ce, align 8, !tbaa !45
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i8 0, ptr %i.ev, align 8, !tbaa !34
  store i64 0, ptr %i.eu, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.ex, align 8, !tbaa !38
  store i64 0, ptr %i.ew, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !46
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ey, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false), !tbaa.struct !48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @geohashGetCoordRange(ptr noundef, ptr noundef) local_unnamed_addr #6

end_hunk_0
