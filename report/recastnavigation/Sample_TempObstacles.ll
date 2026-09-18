Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Sample_TempObstacles?download=true
inline.NumInlined: 189
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
$_ZN15LinearAllocatorD2Ev = comdat any

$_ZN15LinearAllocatorD0Ev = comdat any

$_ZN15LinearAllocator5resetEv = comdat any

$_ZN15LinearAllocator5allocEm = comdat any

$_ZN15LinearAllocator4freeEPv = comdat any

$_ZN11MeshProcessD0Ev = comdat any

$_ZN11MeshProcess7processEP21dtNavMeshCreateParamsPhPt = comdat any

$_ZN22TempObstacleCreateToolD0Ev = comdat any

$_ZN22TempObstacleCreateTool4typeEv = comdat any

$_ZN22TempObstacleCreateTool4initEP6Sample = comdat any

$_ZN22TempObstacleCreateTool5resetEv = comdat any

$_ZN22TempObstacleCreateTool10singleStepEv = comdat any

$_ZN22TempObstacleCreateTool6updateEf = comdat any

$_ZN22TempObstacleCreateTool6renderEv = comdat any

$_ZN22TempObstacleCreateTool10drawMenuUIEv = comdat any

$_ZN22TempObstacleCreateTool13drawOverlayUIEv = comdat any

$_ZN22TempObstacleCreateTool7onClickEPKfS1_b = comdat any

$_ZN22TempObstacleCreateTool8onToggleEv = comdat any

$_ZN10SampleToolD2Ev = comdat any

$_ZN25TempObstacleHighlightToolD0Ev = comdat any

$_ZN25TempObstacleHighlightTool4typeEv = comdat any

$_ZN25TempObstacleHighlightTool4initEP6Sample = comdat any

$_ZN25TempObstacleHighlightTool5resetEv = comdat any

$_ZN25TempObstacleHighlightTool10singleStepEv = comdat any

$_ZN25TempObstacleHighlightTool6updateEf = comdat any

$_ZN25TempObstacleHighlightTool6renderEv = comdat any

$_ZN25TempObstacleHighlightTool10drawMenuUIEv = comdat any

$_ZN25TempObstacleHighlightTool13drawOverlayUIEv = comdat any

$_ZN25TempObstacleHighlightTool7onClickEPKfS1_b = comdat any

$_ZN25TempObstacleHighlightTool8onToggleEv = comdat any

$_ZTV16FastLZCompressor = comdat any

$_ZTV15LinearAllocator = comdat any

$_ZTV11MeshProcess = comdat any

$_ZTV22TempObstacleCreateTool = comdat any

$_ZTV25TempObstacleHighlightTool = comdat any

@.str = private unnamed_addr constant [40 x i8] c"buildTile: Input mesh is not specified.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"buildNavigation: Out of memory 'solid'.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"buildNavigation: Could not create solid heightfield.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"buildNavigation: Out of memory 'chf'.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"buildNavigation: Could not build compact data.\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"buildNavigation: Could not erode.\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"buildNavigation: Out of memory 'lset'.\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"buildNavigation: Could not build heighfield layers.\00", align 1
@_ZTV20Sample_TempObstacles = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr null, ptr @_ZN20Sample_TempObstaclesD2Ev, ptr @_ZN20Sample_TempObstaclesD0Ev, ptr @_ZN20Sample_TempObstacles14drawSettingsUIEv, ptr @_ZN20Sample_TempObstacles11drawToolsUIEv, ptr @_ZN20Sample_TempObstacles11drawDebugUIEv, ptr @_ZN6Sample7onClickEPKfS1_b, ptr @_ZN6Sample8onToggleEv, ptr @_ZN6Sample10singleStepEv, ptr @_ZN20Sample_TempObstacles6renderEv, ptr @_ZN20Sample_TempObstacles13renderOverlayEv, ptr @_ZN20Sample_TempObstacles13onMeshChangedEP9InputGeom, ptr @_ZN20Sample_TempObstacles5buildEv, ptr @_ZN20Sample_TempObstacles6updateEf, ptr @_ZN6Sample15collectSettingsER13BuildSettings] }, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Keep Itermediate Results\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Tiling\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TileSize\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Tiles  %d x %d\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Max Tiles  %d\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Max Polys  %d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Tile Cache\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Layers  %d\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Layers (per tile)  %.1f\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Memory  %.1f kB / %.1f kB (%.1f%%)\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Navmesh Build Time  %.1f ms\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Build Peak Mem Usage  %.1f kB\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"all_tiles_tilecache.bin\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@toolNames = external local_unnamed_addr global [0 x ptr], align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Input Mesh\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Navmesh\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Navmesh Invis\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Navmesh Trans\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Navmesh BVTree\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Navmesh Nodes\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Navmesh Portals\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Cache Bounds\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Tick 'Keep Itermediate Results'\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"rebuild some tiles to see\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"more debug mode options.\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"buildTiledNavigation: No vertices and triangles.\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"buildTiledNavigation: Could not allocate tile cache.\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"buildTiledNavigation: Could not init tile cache.\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"buildTiledNavigation: Could not allocate navmesh.\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"buildTiledNavigation: Could not init navmesh.\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"buildTiledNavigation: Could not init Detour navmesh query\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"navmeshMemUsage = %.1f kB\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@_ZTV16FastLZCompressor = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN21dtTileCacheCompressorD2Ev, ptr @_ZN16FastLZCompressorD0Ev, ptr @_ZN16FastLZCompressor17maxCompressedSizeEi, ptr @_ZN16FastLZCompressor8compressEPKhiPhiPi, ptr @_ZN16FastLZCompressor10decompressEPKhiPhiPi] }, comdat, align 8
@_ZTV15LinearAllocator = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN15LinearAllocatorD2Ev, ptr @_ZN15LinearAllocatorD0Ev, ptr @_ZN15LinearAllocator5resetEv, ptr @_ZN15LinearAllocator5allocEm, ptr @_ZN15LinearAllocator4freeEPv] }, comdat, align 8
@_ZTV11MeshProcess = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN22dtTileCacheMeshProcessD2Ev, ptr @_ZN11MeshProcessD0Ev, ptr @_ZN11MeshProcess7processEP21dtNavMeshCreateParamsPhPt] }, comdat, align 8
@_ZTV22TempObstacleCreateTool = linkonce_odr dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN10SampleToolD2Ev, ptr @_ZN22TempObstacleCreateToolD0Ev, ptr @_ZN22TempObstacleCreateTool4typeEv, ptr @_ZN22TempObstacleCreateTool4initEP6Sample, ptr @_ZN22TempObstacleCreateTool5resetEv, ptr @_ZN22TempObstacleCreateTool10singleStepEv, ptr @_ZN22TempObstacleCreateTool6updateEf, ptr @_ZN22TempObstacleCreateTool6renderEv, ptr @_ZN22TempObstacleCreateTool10drawMenuUIEv, ptr @_ZN22TempObstacleCreateTool13drawOverlayUIEv, ptr @_ZN22TempObstacleCreateTool7onClickEPKfS1_b, ptr @_ZN22TempObstacleCreateTool8onToggleEv] }, comdat, align 8
@.str.46 = private unnamed_addr constant [22 x i8] c"Create Temp Obstacles\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Remove All\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"Click LMB to create an obstacle.\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Shift+LMB to remove an obstacle.\00", align 1
@_ZTV25TempObstacleHighlightTool = linkonce_odr dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN10SampleToolD2Ev, ptr @_ZN25TempObstacleHighlightToolD0Ev, ptr @_ZN25TempObstacleHighlightTool4typeEv, ptr @_ZN25TempObstacleHighlightTool4initEP6Sample, ptr @_ZN25TempObstacleHighlightTool5resetEv, ptr @_ZN25TempObstacleHighlightTool10singleStepEv, ptr @_ZN25TempObstacleHighlightTool6updateEf, ptr @_ZN25TempObstacleHighlightTool6renderEv, ptr @_ZN25TempObstacleHighlightTool10drawMenuUIEv, ptr @_ZN25TempObstacleHighlightTool13drawOverlayUIEv, ptr @_ZN25TempObstacleHighlightTool7onClickEPKfS1_b, ptr @_ZN25TempObstacleHighlightTool8onToggleEv] }, comdat, align 8
@.str.50 = private unnamed_addr constant [21 x i8] c"Highlight Tile Cache\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Click LMB to highlight a tile.\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Draw Areas\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Draw Regions\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Draw Contours\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Draw Mesh\00", align 1
@_ZTV21OffMeshConnectionTool = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZTV16ConvexVolumeTool = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZTV9CrowdTool = external unnamed_addr constant { [14 x ptr] }, align 8
@.str.56 = private unnamed_addr constant [11 x i8] c"(%d,%d)/%d\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Compressed: %.1f kB\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"Raw:%.1fkB\00", align 1
@app = external global %struct.AppState, align 8
@switch.table._ZN20Sample_TempObstacles6renderEv = private unnamed_addr constant [3 x i32] [i32 -2147418113, i32 -1073692417, i32 -2147483428], align 4

@_ZN20Sample_TempObstaclesC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20Sample_TempObstaclesC2Ev
@_ZN20Sample_TempObstaclesD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20Sample_TempObstaclesD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK20Sample_TempObstacles19rasterizeTileLayersEiiRK8rcConfigP13TileCacheDatai(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(276) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(92) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %struct.FastLZCompressor, align 8   ; 5 uses
  %7 = alloca %struct.RasterizationContext, align 8 ; 16 uses
  %8 = alloca %struct.rcConfig, align 4           ; 20 uses
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = alloca [2 x float], align 4              ; 5 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 8 uses
  %10 = alloca %struct.dtTileCacheLayerHeader, align 4 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.off = add i32 %i.m, 2
  %i.n = icmp ult i32 %.off, 5
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !231
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.u, i32 noundef 3, ptr noundef nonnull @.str) #12
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16FastLZCompressor, i64 16), ptr %6, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(540) %i.v, i8 0, i64 540, i1 false)
  %i.w = sdiv i32 %i.m, 3                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = sitofp i32 %i.z to float
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !232
  %i.ad = fmul float %i.ac, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %8, ptr noundef nonnull align 4 dereferenceable(92) %3, i64 92, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !41 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 28
  store float %i.ai, ptr %i.aj, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load float, ptr %i.ak, align 4, !tbaa !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 40
  store float %i.ap, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %i.au = sitofp i32 %i.at to float               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !232 ; 2 uses
  %i.ax = fneg float %i.au
  %i.ay = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.az = insertelement <2 x i32> %i.ay, i32 %1, i64 1
  %i.ba = add nsw <2 x i32> %i.az, <i32 0, i32 1>
  %i.bb = sitofp <2 x i32> %i.ba to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.af, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.bf)
  %i.bh = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.au, i64 1 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bg)
  store <2 x float> %11, ptr %i.am, align 4, !tbaa !41
  %12 = insertelement <2 x i32> poison, i32 %1, i64 0
  %13 = insertelement <2 x i32> %12, i32 %2, i64 1
  %14 = add nsw <2 x i32> %13, <i32 0, i32 1>
  %15 = sitofp <2 x i32> %14 to <2 x float>
  %16 = insertelement <2 x float> poison, float %i.af, i64 0
  %17 = insertelement <2 x float> %16, float %i.al, i64 1
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.bd, <2 x float> %17)
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %18) ; 2 uses
  %19 = extractelement <2 x float> %i.bl, i64 0
  store float %19, ptr %i.ag, align 4, !tbaa !41
  %20 = extractelement <2 x float> %i.bl, i64 1
  store float %20, ptr %i.ar, align 4, !tbaa !41
  %i.bm = tail call noundef ptr @_Z18rcAllocHeightfieldv() #12 ; 3 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !48
  %.not95 = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 13 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  br i1 %.not95, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, i32 noundef 3, ptr noundef nonnull @.str.1) #12
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %8, align 4, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !233
  %i.bu = call noundef zeroext i1 @_Z19rcCreateHeightfieldP9rcContextR13rcHeightfieldiiPKfS4_ff(ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.an, float noundef %i.aw, float noundef %i.bt) #12
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.bv, i32 noundef 3, ptr noundef nonnull @.str.2) #12
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !234
  %i.by = sext i32 %i.bx to i64
  %i.bz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cb = load float, ptr %i.ag, align 4, !tbaa !41
  store float %i.cb, ptr %i.a, align 4, !tbaa !41
  %i.cc = load float, ptr %i.am, align 4, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !41
  %i.ce = load float, ptr %i.an, align 4, !tbaa !41
  store float %i.ce, ptr %i.b, align 4, !tbaa !41
  %i.cf = load float, ptr %i.ar, align 4, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.cf, ptr %i.cg, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZNK15PartitionedMesh23GetNodesOverlappingRectEPfS0_RSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(60) %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  %i.ch = load ptr, ptr %9, align 8, !tbaa !231   ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !231 ; 2 uses
  %i.ck = icmp eq ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0105.0110, i64 4 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cj
  br i1 %i.co, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %.sroa.0105.0110 = phi ptr [ %i.ch, %.preheader ], [ %i.cn, %bb.j ] ; 2 uses
  %i.cp = load i32, ptr %.sroa.0105.0110, align 4, !tbaa !62
  %i.cq = sext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !235
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !237
  %i.cv = mul nsw i32 %i.cu, 3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !238 ; 3 uses
  %i.db = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.dc = sext i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.db, i8 0, i64 %i.dc, i1 false)
  %i.dd = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.de = load float, ptr %i.cl, align 4, !tbaa !64
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !61
  call void @_Z23rcMarkWalkableTrianglesP9rcContextfPKfiPKiiPh(ptr noundef %i.dd, float noundef %i.de, ptr noundef %i.h, i32 noundef %i.w, ptr noundef nonnull %i.cy, i32 noundef %i.da, ptr noundef %i.df) #12
  %i.dg = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.dh = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.di = load ptr, ptr %7, align 8, !tbaa !48
  %i.dj = load i32, ptr %i.cm, align 4, !tbaa !239
  %i.dk = call noundef zeroext i1 @_Z20rcRasterizeTrianglesP9rcContextPKfiPKiPKhiR13rcHeightfieldi(ptr noundef %i.dg, ptr noundef %i.h, i32 noundef %i.w, ptr noundef nonnull %i.cy, ptr noundef %i.dh, i32 noundef %i.da, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i32 noundef %i.dj) #12
  br i1 %i.dk, label %bb.j, label %thread-pre-split

.critedge:                                        ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !240, !range !65, !noundef !66
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.do = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.dp = load i32, ptr %i.cm, align 4, !tbaa !239
  %i.dq = load ptr, ptr %7, align 8, !tbaa !48
  call void @_Z35rcFilterLowHangingWalkableObstaclesP9rcContextiR13rcHeightfield(ptr noundef %i.do, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(64) %i.dq) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !241, !range !65, !noundef !66
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.du = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !242
  %i.dx = load i32, ptr %i.cm, align 4, !tbaa !239
  %i.dy = load ptr, ptr %7, align 8, !tbaa !48
  call void @_Z18rcFilterLedgeSpansP9rcContextiiR13rcHeightfield(ptr noundef %i.du, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(64) %i.dy) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !243, !range !65, !noundef !66
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !242
  %i.ef = load ptr, ptr %7, align 8, !tbaa !48
  call void @_Z30rcFilterWalkableLowHeightSpansP9rcContextiR13rcHeightfield(ptr noundef %i.ec, i32 noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(64) %i.ef) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eg = call noundef ptr @_Z25rcAllocCompactHeightfieldv() #12 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !67
  %.not96 = icmp eq ptr %i.eg, null
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  br i1 %.not96, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ei, i32 noundef 3, ptr noundef nonnull @.str.4) #12
  br label %thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 52 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !242
  %i.el = load i32, ptr %i.cm, align 4, !tbaa !239
  %i.em = load ptr, ptr %7, align 8, !tbaa !48
  %i.en = call noundef zeroext i1 @_Z25rcBuildCompactHeightfieldP9rcContextiiRK13rcHeightfieldR20rcCompactHeightfield(ptr noundef %i.ei, i32 noundef %i.ek, i32 noundef %i.el, ptr noundef nonnull align 8 dereferenceable(64) %i.em, ptr noundef nonnull align 8 dereferenceable(96) %i.eg) #12
  %i.eo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  br i1 %i.en, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.eo, i32 noundef 3, ptr noundef nonnull @.str.5) #12
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !244
  %i.er = load ptr, ptr %i.eh, align 8, !tbaa !67
  %i.es = call noundef zeroext i1 @_Z19rcErodeWalkableAreaP9rcContextiR20rcCompactHeightfield(ptr noundef %i.eo, i32 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(96) %i.er) #12
  br i1 %i.es, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = load ptr, ptr %i.bn, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.et, i32 noundef 3, ptr noundef nonnull @.str.6) #12
  br label %thread-pre-split

bb.w:                                             ; preds = %bb.u
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 424
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !245 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 432
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !245 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.w
  %i.fa = call noundef ptr @_Z26rcAllocHeightfieldLayerSetv() #12 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !69
  %.not97 = icmp eq ptr %i.fa, null
  %i.fc = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  br i1 %.not97, label %bb.x, label %bb.y

.lr.ph:                                           ; preds = %bb.w, %.lr.ph
  %.sroa.0101.0111 = phi ptr [ %i.fo, %.lr.ph ], [ %i.ew, %bb.w ] ; 6 uses
  %i.fd = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0101.0111, i64 144
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !247
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0101.0111, i64 148
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !248
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0101.0111, i64 152
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !249
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0101.0111, i64 156
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !250
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = load ptr, ptr %i.eh, align 8, !tbaa !67
end_hunk_0
