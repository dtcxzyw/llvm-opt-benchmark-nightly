Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/lstopo-draw?download=true
inline.NumInlined: 79
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lstopo_color_palette = type { %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color, %struct.lstopo_color }
%struct.lstopo_color = type { i32, i32, i32, i32, %union.lstopo_color_private_u, ptr }
%union.lstopo_color_private_u = type { %struct.lstopo_color_private_ascii_s }
%struct.lstopo_color_private_ascii_s = type { i32 }
%struct.lstopo_style = type { ptr, ptr, ptr }

@lstopo_main_palette = hidden global %struct.lstopo_color_palette zeroinitializer, align 8
@lstopo_grey_palette = hidden global %struct.lstopo_color_palette zeroinitializer, align 8
@lstopo_white_palette = hidden global %struct.lstopo_color_palette zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Unrecognized palette name `%s', ignoring\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"group_in_package\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"pu\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"numanode\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"memories\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pcidev\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"osdev\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Unrecognized palette color name `%s', ignoring\0A\00", align 1
@color_list = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"HostName\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Host: %s\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Indexes: %s\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Date: %c\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"lstopoLegend\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"lstopoStyle\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Background=#%02x%02x%02x\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Text=#%02x%02x%02x\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Text2=#%02x%02x%02x\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"%d x { %s %s }\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"P#%u\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"CUDA\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"CUDAGlobalMemorySize\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"%llu GB\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%llu MB\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"CUDAL2CacheSize\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"L2 (%llu MB)\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"L2 (%llu kB)\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"CUDAMultiProcessors\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"CUDACoresPerMP\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"CUDASharedMemorySizePerMP\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s MP x (%s cores + %s kB)\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"OpenCL\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"OpenCLComputeUnits\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"%llu compute units\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"OpenCLGlobalMemorySize\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"VectorEngine\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"VectorEngineCores\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"%llu cores\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"VectorEngineMemorySize\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"LevelZero\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"LevelZeroHBMSize\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"%llu GB (HBM)\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"%llu MB (HBM)\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"LevelZeroDDRSize\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"LevelZeroMemorySize\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"%llu GB HBM\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"LevelZeroNumSlices\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"LevelZeroNumSubslicesPerSlice\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"LevelZeroNumEUsPerSubslice\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"LevelZeroNumThreadsPerEU\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"%s Slice%s x %s x %s x %s Threads\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.69 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"%llu TB\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c" L#\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c" P#\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c" P#%u\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c" (%lu%s total)\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"%s%s%s (%s)%s\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"%04x:\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"%s%02x:%02x.%01x\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"%s%02x:%02x.%01x-%01x\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"%s%02x:%02x.%01x-%02x.%01x\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"lstopo-draw.c\00", align 1
@__PRETTY_FUNCTION__.get_type_fun = private unnamed_addr constant [40 x i8] c"foo_draw get_type_fun(hwloc_obj_type_t)\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"%ux total\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"plud->above_children.kinds == LSTOPO_CHILD_KIND_MEMORY\00", align 1
@__PRETTY_FUNCTION__.place_children = private unnamed_addr constant [85 x i8] c"void place_children(struct lstopo_output *, hwloc_obj_t, unsigned int, unsigned int)\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"Process\00", align 1
@__PRETTY_FUNCTION__.lstopo_set_object_color = private unnamed_addr constant [89 x i8] c"void lstopo_set_object_color(struct lstopo_output *, hwloc_obj_t, struct lstopo_style *)\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"%0.1f\00", align 1
@switch.table.draw__children = private unnamed_addr constant [20 x ptr] [ptr @normal_draw, ptr @normal_draw, ptr @normal_draw, ptr @normal_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @cache_draw, ptr @normal_draw, ptr @normal_draw, ptr @bridge_draw, ptr @pci_device_draw, ptr @normal_draw, ptr @normal_draw, ptr @cache_draw, ptr @normal_draw], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lstopo_palette_init(ptr nofree noundef writeonly captures(none) initializes((1440, 1448)) %0) local_unnamed_addr #0 {
bb.a:
  store i32 255, ptr @lstopo_main_palette, align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 4), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 8), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 12), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 32), i8 0, i64 32, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 64), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 68), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 72), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 76), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 96), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 100), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 104), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 108), i8 0, i64 20, i1 false)
  store i32 210, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 128), align 8, !tbaa !12
  store i32 231, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 132), align 4, !tbaa !12
  store i32 164, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 136), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 140), i8 0, i64 20, i1 false)
  store i32 231, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 160), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 164), align 4, !tbaa !12
  store i32 181, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 168), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 172), i8 0, i64 20, i1 false)
  store i32 231, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 192), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 196), align 4, !tbaa !12
  store i32 181, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 200), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 204), i8 0, i64 20, i1 false)
  store i32 190, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 224), align 8, !tbaa !12
  store i32 190, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 228), align 4, !tbaa !12
  store i32 190, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 232), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 236), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 256), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 260), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 264), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 268), i8 0, i64 20, i1 false)
  store i32 239, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 288), align 8, !tbaa !12
  store i32 223, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 292), align 4, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 296), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 300), i8 0, i64 20, i1 false)
  store i32 242, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 320), align 8, !tbaa !12
  store i32 232, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 324), align 4, !tbaa !12
  store i32 232, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 328), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 332), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 352), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 356), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 360), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 364), i8 0, i64 20, i1 false)
  store i32 190, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 384), align 8, !tbaa !12
  store i32 210, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 388), align 4, !tbaa !12
  store i32 149, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 392), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 396), i8 0, i64 20, i1 false)
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 416), align 8, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 420), align 4, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 424), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 428), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 448), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 452), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 456), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 460), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 480), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 484), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 488), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 492), i8 0, i64 20, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 512), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 516), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 520), i8 0, i64 24, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 544), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 548), i8 0, i64 28, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 576), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 580), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @lstopo_main_palette, i64 584), i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) @lstopo_grey_palette, ptr noundef nonnull align 8 dereferenceable(608) @lstopo_main_palette, i64 512, i1 false)
  store i32 201, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 128), align 8, !tbaa !12
  store i32 201, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 132), align 4, !tbaa !12
  store i32 201, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 136), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 140), i8 0, i64 20, i1 false)
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 160), align 8, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 164), align 4, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 168), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 172), i8 0, i64 20, i1 false)
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 192), align 8, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 196), align 4, !tbaa !12
  store i32 222, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 200), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 204), i8 0, i64 20, i1 false)
  store i32 228, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 288), align 8, !tbaa !12
  store i32 228, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 292), align 4, !tbaa !12
  store i32 228, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 296), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 300), i8 0, i64 20, i1 false)
  store i32 232, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 320), align 8, !tbaa !12
  store i32 232, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 324), align 4, !tbaa !12
  store i32 232, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 328), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 332), i8 0, i64 20, i1 false)
  store i32 182, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 384), align 8, !tbaa !12
  store i32 182, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 388), align 4, !tbaa !12
  store i32 182, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 392), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 396), i8 0, i64 20, i1 false)
  store i32 187, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 512), align 8, !tbaa !12
  store i32 187, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 516), align 4, !tbaa !12
  store i32 187, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 520), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 524), i8 0, i64 20, i1 false)
  store i32 119, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 544), align 8, !tbaa !12
  store i32 119, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 548), align 4, !tbaa !12
  store i32 119, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 552), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 556), i8 0, i64 20, i1 false)
  store i32 153, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 576), align 8, !tbaa !12
  store i32 153, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 580), align 4, !tbaa !12
  store i32 153, ptr getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 584), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_grey_palette, i64 588), i8 0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) @lstopo_white_palette, ptr noundef nonnull align 8 dereferenceable(608) @lstopo_main_palette, i64 64, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 64), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 68), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 72), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 76), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 96), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 100), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 104), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 108), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 128), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 132), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 136), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 140), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 160), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 164), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 168), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 172), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 192), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 196), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 200), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 204), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 224), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 228), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 232), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 236), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 256), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 260), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 264), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 268), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 288), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 292), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 296), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 300), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 320), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 324), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 328), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 332), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 352), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 356), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 360), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 364), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 384), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 388), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 392), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 396), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 416), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 420), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 424), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 428), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 448), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 452), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 456), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 460), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 480), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 484), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 488), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 492), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 512), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 516), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 520), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 524), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 544), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 548), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 552), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 556), i8 0, i64 20, i1 false)
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 576), align 8, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 580), align 4, !tbaa !12
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 584), align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @lstopo_white_palette, i64 588), i8 0, i64 20, i1 false)
  store ptr @lstopo_main_palette, ptr %i.a, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind uwtable
define hidden void @lstopo_palette_select(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.1) #21
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store ptr @lstopo_grey_palette, ptr %i.c, align 8, !tbaa !13
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.2) #21
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.3) #21
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store ptr @lstopo_main_palette, ptr %i.f, align 8, !tbaa !13
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.4) #21
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.5) #21
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store ptr @lstopo_white_palette, ptr %i.i, align 8, !tbaa !13
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #22 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @lstopo_palette_set_color(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 255
  store i32 %i.b, ptr %0, align 8, !tbaa !26
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !29
  %i.f = and i32 %1, 255
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !30
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden void @lstopo_palette_set_color_by_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7) #21
  %.not = icmp eq i32 %i.a, 0
end_hunk_0
