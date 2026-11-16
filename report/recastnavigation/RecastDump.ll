Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDump?download=true
inline.NumInlined: 26
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str.2 = private unnamed_addr constant [18 x i8] c"# Recast Navmesh\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"o NavMesh\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"v %f %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"f %d %d %d\0A\00", align 1
@_ZL10CSET_MAGIC = internal constant i32 1668506996, align 4
@_ZL12CSET_VERSION = internal constant i32 2, align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"duReadContourSet: Could not alloc contours (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"duReadContourSet: Could not alloc contour verts (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"duReadContourSet: Could not alloc contour rverts (%d)\0A\00", align 1
@_ZL9CHF_MAGIC = internal constant i32 1919117414, align 4
@_ZL11CHF_VERSION = internal constant i32 3, align 4
@.str.24 = private unnamed_addr constant [54 x i8] c"duReadCompactHeightfield: Could not alloc cells (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"duReadCompactHeightfield: Could not alloc spans (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"duReadCompactHeightfield: Could not alloc dist (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"duReadCompactHeightfield: Could not alloc areas (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Build Times\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"- Rasterize\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"- Build Compact\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"- Filter Border\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"- Filter Walkable\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"- Erode Area\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"- Median Area\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"- Mark Box Area\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"- Mark Convex Area\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"- Mark Cylinder Area\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"- Build Distance Field\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"    - Distance\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"    - Blur\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"- Build Regions\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"    - Watershed\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"      - Expand\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"      - Find Basins\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"    - Filter\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"- Build Layers\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"- Build Contours\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"    - Trace\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"    - Simplify\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"- Build Polymesh\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"- Build Polymesh Detail\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"- Merge Polymeshes\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"- Merge Polymesh Details\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"=== TOTAL:\09%.2fms\00", align 1
@_ZTV8duFileIO = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN8duFileIOD1Ev, ptr @_ZN8duFileIOD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str.55 = private unnamed_addr constant [20 x i8] c"%s:\09%.2fms\09(%.1f%%)\00", align 1
@str = private unnamed_addr constant [39 x i8] c"duDumpPolyMeshToObj: input IO is null.\00", align 1
@str.1 = private unnamed_addr constant [43 x i8] c"duDumpPolyMeshToObj: input IO not writing.\00", align 1
@str.2 = private unnamed_addr constant [45 x i8] c"duDumpPolyMeshDetailToObj: input IO is null.\00", align 1
@str.3 = private unnamed_addr constant [49 x i8] c"duDumpPolyMeshDetailToObj: input IO not writing.\00", align 1
@str.4 = private unnamed_addr constant [36 x i8] c"duDumpContourSet: input IO is null.\00", align 1
@str.5 = private unnamed_addr constant [40 x i8] c"duDumpContourSet: input IO not writing.\00", align 1
@str.6 = private unnamed_addr constant [36 x i8] c"duReadContourSet: input IO is null.\00", align 1
@str.7 = private unnamed_addr constant [40 x i8] c"duReadContourSet: input IO not reading.\00", align 1
@str.8 = private unnamed_addr constant [31 x i8] c"duReadContourSet: Bad version.\00", align 1
@str.9 = private unnamed_addr constant [30 x i8] c"duReadContourSet: Bad voodoo.\00", align 1
@str.10 = private unnamed_addr constant [44 x i8] c"duDumpCompactHeightfield: input IO is null.\00", align 1
@str.11 = private unnamed_addr constant [48 x i8] c"duDumpCompactHeightfield: input IO not writing.\00", align 1
@str.12 = private unnamed_addr constant [44 x i8] c"duReadCompactHeightfield: input IO is null.\00", align 1
@str.13 = private unnamed_addr constant [48 x i8] c"duReadCompactHeightfield: input IO not reading.\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"duReadCompactHeightfield: Bad version.\00", align 1
@str.15 = private unnamed_addr constant [38 x i8] c"duReadCompactHeightfield: Bad voodoo.\00", align 1

@_ZN8duFileIOD1Ev = unnamed_addr alias void (ptr), ptr @_ZN8duFileIOD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN8duFileIOD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN8duFileIOD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z19duDumpPolyMeshToObjR10rcPolyMeshP8duFileIO(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) #12, !call_target !20
  br i1 %i.d, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !75
  %i.i = load <2 x float>, ptr %i.g, align 8, !tbaa !50
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.2)
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.3)
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.4)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !77
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = shl i32 %i.f, 1
  %i.u = icmp sgt i32 %i.f, 2
  br i1 %i.u, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph54

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !78
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx ; 3 uses
  %i.x = load float, ptr %i.k, align 8, !tbaa !50
  %i.y = load i16, ptr %i.w, align 2, !tbaa !79
  %i.z = uitofp i16 %i.y to float
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.h, float %i.x)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !79
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !79
  %i.ai = uitofp i16 %i.ah to float
  %i.aj = load <2 x float>, ptr %i.o, align 4, !tbaa !50
  %i.ak = insertelement <2 x float> poison, float %i.af, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ai, i64 1
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.j, <2 x float> %i.aj)
  %2 = fpext float %i.aa to double
  %3 = fadd <2 x float> %i.am, <float 1.000000e-01, float -0.000000e+00>
  %4 = fpext <2 x float> %3 to <2 x double>       ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0
  %6 = extractelement <2 x double> %4, i64 1
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.5, double noundef %2, double noundef %5, double noundef %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.l, align 8, !tbaa !76
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.d, label %._crit_edge

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %._crit_edge55
  %indvars.iv64 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next65, %._crit_edge55 ] ; 2 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !80
  %i.ar = trunc nuw nsw i64 %indvars.iv64 to i32
  %i.as = mul i32 %i.t, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %bb.f
  %indvars.iv61 = phi i64 [ 2, %.lr.ph54 ], [ %indvars.iv.next62, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv61 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !79 ; 2 uses
  %i.ax = icmp eq i16 %i.aw, -1
  br i1 %i.ax, label %._crit_edge55, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = zext i16 %i.aw to i32
  %i.az = load i16, ptr %i.au, align 2, !tbaa !79
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = getelementptr i8, ptr %i.av, i64 -2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !79
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.be, 1
  %i.bg = add nuw nsw i32 %i.ay, 1
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %i.bb, i32 noundef %i.bf, i32 noundef %i.bg)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %bb.e

._crit_edge55:                                    ; preds = %bb.f, %bb.e
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !77
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next65, %i.bi
  br i1 %i.bj, label %.lr.ph54, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a
  %str.1.sink = phi ptr [ @str, %bb.a ], [ @str.1, %bb.b ]
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge55, %.loopexit.sink.split, %._crit_edge, %.lr.ph59
  %.046 = phi i1 [ true, %._crit_edge ], [ false, %.loopexit.sink.split ], [ true, %.lr.ph59 ], [ true, %._crit_edge55 ]
  ret i1 %.046
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define internal void @_ZL8ioprintfP8duFileIOPKcz(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #3 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #12 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef %i.d) #12, !call_target !40 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z25duDumpPolyMeshDetailToObjR16rcPolyMeshDetailP8duFileIO(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) #12, !call_target !20
  br i1 %i.d, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.2)
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.3)
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph50, label %.loopexit

.lr.ph50:                                         ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !85
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !50
  %i.p = fpext float %i.o to double
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !50
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  tail call void (ptr, ptr, ...) @_ZL8ioprintfP8duFileIOPKcz(ptr noundef %1, ptr noundef nonnull @.str.5, double noundef %i.p, double noundef %i.t, double noundef %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.e, align 4, !tbaa !83
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.d, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph50, %._crit_edge47
  %i.y = phi i32 [ %i.j, %.lr.ph50 ], [ %i.al, %._crit_edge47 ]
  %indvars.iv56 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next57, %._crit_edge47 ] ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !86
  %.idx61 = shl nuw nsw i64 %indvars.iv56, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx61 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !53 ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.ag = shl i32 %i.ac, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 3 uses
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.e
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ak = add i32 %i.aj, 1                        ; 3 uses
  %wide.trip.count = zext i32 %i.ae to i64
  br label %bb.f

._crit_edge47.loopexit:                           ; preds = %bb.f
  %.pre = load i32, ptr %i.i, align 8, !tbaa !84
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %._crit_edge47.loopexit, %bb.e
  %i.al = phi i32 [ %.pre, %._crit_edge47.loopexit ], [ %i.y, %bb.e ] ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next57, %i.am
  br i1 %i.an, label %bb.e, label %.loopexit

bb.f:                                             ; preds = %.lr.ph46, %bb.f
  %indvars.iv53 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next54, %bb.f ] ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv53 to i32
  %i.ap = shl i32 %i.ao, 2                        ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !88
  %i.at = zext i8 %i.as to i32
  %i.au = add i32 %i.ak, %i.at
  %i.av = or disjoint i32 %i.ap, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !88
  %i.az = zext i8 %i.ay to i32
  %i.ba = add i32 %i.ak, %i.az
  %i.bb = or disjoint i32 %i.ap, 2
  %i.bc = zext i32 %i.bb to i64
end_hunk_0
