Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_paletteuse?download=true
inline.NumInlined: 41
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }
%struct.color_rect = type { [3 x i32], [3 x i32] }
%struct.color = type { %struct.Lab, i8 }
%struct.Lab = type { i32, i32, i32 }
%struct.nearest_color = type { i32, i64 }
%struct.color_info = type { i32, [3 x i32] }

@.str = private unnamed_addr constant [11 x i8] c"paletteuse\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Use a palette to downsample an input video stream.\00", align 1
@paletteuse_inputs = internal constant [2 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }, %struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input_palette }], align 16
@paletteuse_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_vf_paletteuse = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @paletteuse_inputs, ptr @paletteuse_outputs, ptr @paletteuse_class, i32 0, [4 x i8] zeroinitializer }, i8 2, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 533944, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"Palette input must contain exactly %d pixels. Specified input has %dx%d=%d pixels\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Cannot open file '%s' for writing: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"digraph {\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"    node [style=filled fontsize=10 shape=box]\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"%*cnode%d [label=\22%c%d%c%d%c%d%c\22 fillcolor=\22#%06X\22 fontcolor=\22#%06X\22]\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"[  \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"][ \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" ][\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"  ]\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"%*cnode%d -> node%d\0A\00", align 1
@paletteuse_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @paletteuse_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"select dithering mode\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"dithering_mode\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"bayer\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"ordered 8x8 bayer dithering (deterministic)\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"heckbert\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"dithering as defined by Paul Heckbert in 1982 (simple error diffusion)\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"floyd_steinberg\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"Floyd and Steingberg dithering (error diffusion)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"sierra2\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Frankie Sierra dithering v2 (error diffusion)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"sierra2_4a\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"Frankie Sierra dithering v2 \22Lite\22 (error diffusion)\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"sierra3\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"Frankie Sierra dithering v3 (error diffusion)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"burkes\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Burkes dithering (error diffusion)\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"atkinson\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"Atkinson dithering by Bill Atkinson at Apple Computer (error diffusion)\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"bayer_scale\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"set scale for bayer dithering\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"diff_mode\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"set frame difference mode\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"rectangle\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"process smallest different rectangle\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"take new palette for each output frame\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"alpha_threshold\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"set the alpha threshold for transparency\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"debug_kdtree\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"save Graphviz graph of the kdtree in specified file\00", align 1
@paletteuse_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 533620, i32 2, %union.anon.2 { i64 5 }, double 0.000000e+00, double 8.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 0, i32 11, %union.anon.2 { i64 3 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 0, i32 11, %union.anon.2 { i64 4 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 0, i32 11, %union.anon.2 { i64 5 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.31, i32 0, i32 11, %union.anon.2 { i64 6 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.32, ptr @.str.33, i32 0, i32 11, %union.anon.2 { i64 7 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.34, ptr @.str.35, i32 0, i32 11, %union.anon.2 { i64 8 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.36, ptr @.str.37, i32 533640, i32 2, %union.anon.2 { i64 2 }, double 0.000000e+00, double 5.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 533900, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.40, ptr @.str.41, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 533624, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.44, ptr @.str.45, i32 533612, i32 2, %union.anon.2 { i64 128 }, double 0.000000e+00, double 2.550000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 533920, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@set_frame_lut = internal unnamed_addr constant [9 x ptr] [ptr @set_frame_none, ptr @set_frame_bayer, ptr @set_frame_heckbert, ptr @set_frame_floyd_steinberg, ptr @set_frame_sierra2, ptr @set_frame_sierra2_4a, ptr @set_frame_sierra3, ptr @set_frame_burkes, ptr @set_frame_atkinson], align 16
@__const.colormap_nearest.res = private unnamed_addr constant { i32, [4 x i8], i64 } { i32 -1, [4 x i8] zeroinitializer, i64 2147483647 }, align 8
@query_formats.in_fmts = internal constant [2 x i32] [i32 28, i32 -1], align 4
@query_formats.inpal_fmts = internal constant [2 x i32] [i32 28, i32 -1], align 4
@query_formats.out_fmts = internal constant [2 x i32] [i32 11, i32 -1], align 4

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 6 uses
  %i.c = tail call ptr @av_frame_alloc() #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 533904 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  %i.e = tail call ptr @av_frame_alloc() #12      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 533912
  store ptr %i.e, ptr %i.f, align 8, !tbaa !31
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !30
  %.not = icmp eq ptr %i.g, null
  %.not18 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not, i1 true, i1 %.not18
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 533620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr @set_frame_lut, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 533632
  store ptr %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = icmp eq i32 %i.i, 1
  br i1 %i.n, label %vector.ph, label %.loopexit

vector.ph:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 533644
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 533640
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %i.r = sub nsw i32 5, %i.q
  %.neg = shl nsw i32 -1, %i.r
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind25 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next27, %vector.body ] ; 6 uses
  %i.s = lshr <4 x i32> %vec.ind25, splat (i32 3)
  %i.t = xor <4 x i32> %i.s, %vec.ind25           ; 3 uses
  %i.u = lshr <4 x i32> %vec.ind25, splat (i32 2)
  %i.v = and <4 x i32> %i.u, splat (i32 1)
  %i.w = lshr <4 x i32> %i.t, splat (i32 1)
  %i.x = and <4 x i32> %i.w, splat (i32 2)
  %i.y = shl nuw nsw <4 x i32> %vec.ind25, splat (i32 1)
  %i.z = and <4 x i32> %i.y, splat (i32 4)
  %i.aa = shl nuw nsw <4 x i32> %i.t, splat (i32 2)
  %i.ab = and <4 x i32> %i.aa, splat (i32 8)
  %i.ac = shl nuw nsw <4 x i32> %vec.ind25, splat (i32 4)
  %i.ad = and <4 x i32> %i.ac, splat (i32 16)
  %i.ae = shl nuw nsw <4 x i32> %i.t, splat (i32 5)
  %i.af = and <4 x i32> %i.ae, splat (i32 32)
  %i.ag = or disjoint <4 x i32> %i.z, %i.v
  %i.ah = or disjoint <4 x i32> %i.ag, %i.ad
  %i.ai = or disjoint <4 x i32> %i.ah, %i.x
  %i.aj = or disjoint <4 x i32> %i.ai, %i.ab
  %i.ak = or disjoint <4 x i32> %i.aj, %i.af
  %i.al = lshr <4 x i32> %i.ak, %broadcast.splat
  %i.am = add nsw <4 x i32> %i.al, %broadcast.splat23
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  store <4 x i32> %i.am, ptr %i.an, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next27 = add <4 x i32> %vec.ind25, splat (i32 4)
  %i.ao = icmp eq i64 %index.next, 64
  br i1 %i.ao, label %.loopexit, label %vector.body, !llvm.loop !67

.loopexit:                                        ; preds = %vector.body, %bb.b, %bb.a
  %.016 = phi i32 [ -12, %bb.a ], [ 0, %bb.b ], [ 0, %vector.body ]
  ret i32 %.016
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 533904
  tail call void @av_frame_free(ptr noundef nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 533912
  tail call void @av_frame_free(ptr noundef nonnull %i.f) #12
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.g) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !72
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.in_fmts) #12
  %i.b = load ptr, ptr %1, align 8, !tbaa !74
  %i.c = tail call i32 @ff_formats_ref(ptr noundef %i.a, ptr noundef %i.b) #12 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.inpal_fmts) #12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call i32 @ff_formats_ref(ptr noundef %i.e, ptr noundef %i.g) #12 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.out_fmts) #12
  %i.k = load ptr, ptr %2, align 8, !tbaa !74
  %i.l = tail call i32 @ff_formats_ref(ptr noundef %i.j, ptr noundef %i.k) #12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.l, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.04 = phi i32 [ %spec.select, %bb.c ], [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #12
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input_palette(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 2 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 2 uses
  %.not = icmp eq i32 %i.e, 256
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef 256, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.e) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.d, ptr noundef %i.a) #12 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store i32 2, ptr %i.j, align 4, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i32 2, ptr %i.k, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @load_apply_palette, ptr %i.l, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load <2 x i32>, ptr %i.p, align 8, !tbaa !34
  store <2 x i32> %i.r, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  store i64 %i.u, ptr %i.s, align 8, !tbaa !34
  %i.v = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.d) #12
  %. = tail call i32 @llvm.smin.i32(i32 %i.v, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @ff_framesync_init_dualinput(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @load_apply_palette(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.AVBPrint, align 8           ; 10 uses
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [256 x i8], align 16              ; 7 uses
  %2 = alloca %struct.color_rect, align 16        ; 6 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.n = call i32 @ff_framesync_dualinput_get_writable(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.q = icmp ne ptr %i.p, null
  %i.r = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.e) #12
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 533616 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %load_palette.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %i.y = ashr i32 %i.x, 2
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 533608 ; 4 uses
  store i32 -1, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 533624 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95
end_hunk_0
