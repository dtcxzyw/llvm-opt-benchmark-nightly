Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_framerate?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Upsamples or downsamples progressive source between specified frame rates.\00", align 1
@framerate_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }], align 16
@framerate_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [21 x i32] [i32 6, i32 7, i32 138, i32 0, i32 12, i32 4, i32 13, i32 31, i32 32, i32 5, i32 14, i32 60, i32 62, i32 123, i32 70, i32 64, i32 127, i32 66, i32 68, i32 131, i32 -1], align 16
@ff_vf_framerate = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @framerate_inputs, ptr @framerate_outputs, ptr @framerate_class, i32 4, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 208, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"config_output()\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"config_output() input time base:%u/%u (%f)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"time base:%u/%u -> %u/%u exact:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Timebase conversion is not exact\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"config_output() output time base:%u/%u (%f) w:%d h:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"fps -> fps:%u/%u scene score:%f interpolate start:%d end:%d\0A\00", align 1
@framerate_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @framerate_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"required output frames per second rate\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"interp_start\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"point to start linear interpolation\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"interp_end\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"point to end linear interpolation\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"scene change level\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"set flags\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"scene_change_detect\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"enable scene change detection\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"scd\00", align 1
@framerate_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 8, i32 15, { ptr } { ptr @.str.12 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 32, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 2.550000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 36, i32 2, %union.anon.2 { i64 240 }, double 0.000000e+00, double 2.550000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 24, i32 4, { double } { double f0x4020666666666666 }, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 16, i32 1, %union.anon.2 { i64 1 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.22, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.25 = private unnamed_addr constant [58 x i8] c"Interlaced frame found - the output will not be correct.\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Ignoring frame without PTS.\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Ignoring frame with same PTS.\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"PTS discontinuity.\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"process_work_frame() interpolate: %ld/256\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"blend_frames() interpolate scene score:%f\0A\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"blend_frames() INTERPOLATE to create work frame\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"get_scene_score()\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"get_scene_score() process\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"get_scene_score() result is:%f\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_framerate_init(ptr nofree noundef captures(none) initializes((112, 116), (200, 208)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = icmp eq i32 %i.b, 8                      ; 2 uses
  %spec.select = select i1 %i.c, i32 128, i32 32768
  %spec.select5 = select i1 %i.c, ptr @blend_frames8_c, ptr @blend_frames16_c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %spec.select, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %spec.select5, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_frames8_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #1 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  %i.b = icmp sgt i64 %6, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = add nsw i64 %7, -1                       ; 3 uses
  %i.d = mul i64 %5, %i.c
  %i.e = getelementptr i8, ptr %4, i64 %6
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.f = mul i64 %1, %i.c
  %i.g = getelementptr i8, ptr %0, i64 %6
  %scevgep48 = getelementptr i8, ptr %i.g, i64 %i.f
  %i.h = mul i64 %3, %i.c
  %i.i = getelementptr i8, ptr %2, i64 %6
  %scevgep49 = getelementptr i8, ptr %i.i, i64 %i.h
  %min.iters.check = icmp ult i64 %6, 4
  %bound0 = icmp ult ptr %4, %scevgep48
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.j = or i64 %1, %5
  %i.k = icmp slt i64 %i.j, 0
  %i.l = or i1 %found.conflict, %i.k
  %bound051 = icmp ult ptr %4, %scevgep49
  %bound152 = icmp ult ptr %2, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %i.m = icmp slt i64 %3, 0
  %i.n = or i1 %found.conflict53, %i.m
  %conflict.rdx = or i1 %i.l, %i.n
  %min.iters.check56 = icmp ult i64 %6, 16
  %i.o = and i64 %6, 12
  %n.vec = and i64 %6, 9223372036854775792        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <16 x i32> poison, i32 %9, i64 0
  %broadcast.splat58 = shufflevector <16 x i32> %broadcast.splatinsert57, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <16 x i32> poison, i32 %10, i64 0
  %broadcast.splat60 = shufflevector <16 x i32> %broadcast.splatinsert59, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  %n.vec62 = and i64 %6, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat66 = shufflevector <4 x i32> %broadcast.splatinsert65, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat68 = shufflevector <4 x i32> %broadcast.splatinsert67, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n73 = icmp eq i64 %6, %n.vec62
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.040 = phi ptr [ %i.cc, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %.03139 = phi ptr [ %i.cb, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %.03238 = phi ptr [ %i.cd, %._crit_edge ], [ %4, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03139, i64 %index
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !63, !alias.scope !64
  %i.q = zext <16 x i8> %wide.load to <16 x i32>
  %i.r = mul nsw <16 x i32> %broadcast.splat, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.040, i64 %index
  %wide.load61 = load <16 x i8>, ptr %i.s, align 1, !tbaa !63, !alias.scope !65
  %i.t = zext <16 x i8> %wide.load61 to <16 x i32>
  %i.u = mul nsw <16 x i32> %broadcast.splat58, %i.t
  %i.v = add <16 x i32> %i.r, %broadcast.splat60
  %i.w = add <16 x i32> %i.v, %i.u
  %i.x = lshr <16 x i32> %i.w, splat (i32 7)
  %i.y = trunc <16 x i32> %i.x to <16 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %.03238, i64 %index
  store <16 x i8> %i.y, ptr %i.z, align 1, !tbaa !63, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03139, i64 %index69
  %wide.load70.a = load <4 x i8>, ptr %i.ab, align 1, !tbaa !63, !alias.scope !64
  %i.ac = zext <4 x i8> %wide.load70.a to <4 x i32>
  %i.ad = mul nsw <4 x i32> %broadcast.splat64, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.040, i64 %index69
  %wide.load71 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !63, !alias.scope !65
  %i.af = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.ag = mul nsw <4 x i32> %broadcast.splat66, %i.af
  %i.ah = add <4 x i32> %i.ad, %broadcast.splat68
  %i.ai = add <4 x i32> %i.ah, %i.ag
  %i.aj = lshr <4 x i32> %i.ai, splat (i32 7)
  %i.ak = trunc <4 x i32> %i.aj to <4 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %.03238, i64 %index69
  store <4 x i8> %i.ak, ptr %i.al, align 1, !tbaa !63, !alias.scope !66, !noalias !67
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next72, %n.vec62
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n73, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec62, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.03139, i64 %indvars.iv.ph
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !63
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %8, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.040, i64 %indvars.iv.ph
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !63
  %i.at = zext i8 %i.as to i32
  %i.au = mul nsw i32 %9, %i.at
  %i.av = add i32 %i.aq, %10
  %i.aw = add i32 %i.av, %i.au
  %i.ax = lshr i32 %i.aw, 7
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.03238, i64 %indvars.iv.ph
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !63
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ba = icmp eq i64 %6, %.neg
  br i1 %i.ba, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03139, i64 %indvars.iv
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !63
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nsw i32 %8, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.040, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !63
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nsw i32 %9, %i.bh
  %i.bj = add i32 %i.be, %10
  %i.bk = add i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 7
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.03238, i64 %indvars.iv
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.03139, i64 %indvars.iv.next
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !63
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nsw i32 %8, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.040, i64 %indvars.iv.next
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !63
  %i.bu = zext i8 %i.bt to i32
  %i.bv = mul nsw i32 %9, %i.bu
  %i.bw = add i32 %i.br, %10
  %i.bx = add i32 %i.bw, %i.bv
  %i.by = lshr i32 %i.bx, 7
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.03238, i64 %indvars.iv.next
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !63
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %6
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cb = getelementptr inbounds i8, ptr %.03139, i64 %1
  %i.cc = getelementptr inbounds i8, ptr %.040, i64 %3
  %i.cd = getelementptr inbounds i8, ptr %.03238, i64 %5
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %iter.check, !llvm.loop !62

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @blend_frames16_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #1 {
bb.a:
  %i.a = sdiv i64 %6, 2                           ; 8 uses
  %i.b = sdiv i64 %1, 2                           ; 2 uses
  %i.c = sdiv i64 %3, 2                           ; 2 uses
  %i.d = sdiv i64 %5, 2                           ; 2 uses
  %i.e = icmp sgt i64 %7, 0
  %i.f = icmp sgt i64 %6, 1
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = add nsw i64 %7, -1                       ; 3 uses
  %i.h = mul i64 %i.d, %i.g
  %i.i = add i64 %i.h, %i.a
  %i.j = shl i64 %i.i, 1
  %scevgep = getelementptr i8, ptr %4, i64 %i.j   ; 2 uses
  %i.k = mul i64 %i.b, %i.g
  %i.l = add i64 %i.k, %i.a
  %i.m = shl i64 %i.l, 1
  %scevgep47 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = mul i64 %i.c, %i.g
  %i.o = add i64 %i.n, %i.a
  %i.p = shl i64 %i.o, 1
  %scevgep48 = getelementptr i8, ptr %2, i64 %i.p
  %min.iters.check = icmp ult i64 %6, 16
  %bound0 = icmp ult ptr %4, %scevgep47
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %5, -1
  %i.q = or i1 %found.conflict, %stride.check
  %stride.check49 = icmp slt i64 %1, -1
  %i.r = or i1 %i.q, %stride.check49
  %bound050 = icmp ult ptr %4, %scevgep48
  %bound151 = icmp ult ptr %2, %scevgep
  %found.conflict52 = and i1 %bound050, %bound151
  %stride.check54 = icmp slt i64 %3, -1
  %i.s = or i1 %found.conflict52, %stride.check54
  %conflict.rdx = or i1 %i.r, %i.s
  %n.vec = and i64 %i.a, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat56 = shufflevector <8 x i32> %broadcast.splatinsert55, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat58 = shufflevector <8 x i32> %broadcast.splatinsert57, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.a, %n.vec
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.040 = phi ptr [ %i.bu, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.03139 = phi ptr [ %i.bt, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %.03238 = phi ptr [ %i.bv, %._crit_edge ], [ %4, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %index
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !76, !alias.scope !77
  %i.u = zext <8 x i16> %wide.load to <8 x i32>
  %i.v = mul nsw <8 x i32> %broadcast.splat, %i.u
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.040, i64 %index
  %wide.load59 = load <8 x i16>, ptr %i.w, align 2, !tbaa !76, !alias.scope !78
  %i.x = zext <8 x i16> %wide.load59 to <8 x i32>
  %i.y = mul nsw <8 x i32> %broadcast.splat56, %i.x
  %i.z = add <8 x i32> %i.v, %broadcast.splat58
  %i.aa = add <8 x i32> %i.z, %i.y
  %i.ab = lshr <8 x i32> %i.aa, splat (i32 15)
  %i.ac = trunc <8 x i32> %i.ab to <8 x i16>
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %index
  store <8 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !76, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv.ph
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !76
  %i.ah = zext i16 %i.ag to i32
  %i.ai = mul nsw i32 %8, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.040, i64 %indvars.iv.ph
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !76
  %i.al = zext i16 %i.ak to i32
  %i.am = mul nsw i32 %9, %i.al
  %i.an = add i32 %i.ai, %10
  %i.ao = add i32 %i.an, %i.am
  %i.ap = lshr i32 %i.ao, 15
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv.ph
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp eq i64 %i.a, %.neg
  br i1 %i.as, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !76
  %i.av = zext i16 %i.au to i32
  %i.aw = mul nsw i32 %8, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.040, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !76
  %i.az = zext i16 %i.ay to i32
  %i.ba = mul nsw i32 %9, %i.az
  %i.bb = add i32 %i.aw, %10
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = lshr i32 %i.bc, 15
  %i.be = trunc i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.03139, i64 %indvars.iv.next
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !76
  %i.bi = zext i16 %i.bh to i32
  %i.bj = mul nsw i32 %8, %i.bi
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.040, i64 %indvars.iv.next
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !76
  %i.bm = zext i16 %i.bl to i32
  %i.bn = mul nsw i32 %9, %i.bm
  %i.bo = add i32 %i.bj, %10
  %i.bp = add i32 %i.bo, %i.bn
  %i.bq = lshr i32 %i.bp, 15
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.03238, i64 %indvars.iv.next
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.a
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = getelementptr inbounds [2 x i8], ptr %.03139, i64 %i.b
  %i.bu = getelementptr inbounds [2 x i8], ptr %.040, i64 %i.c
  %i.bv = getelementptr inbounds [2 x i8], ptr %.03238, i64 %i.d
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %7
  br i1 %exitcond46.not, label %._crit_edge41.split, label %.preheader, !llvm.loop !75

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i64 -9223372036854775808, ptr %i.c, align 8, !tbaa !32
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.ThreadData, align 16        ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge.preheader, label %bb.b

.critedge.preheader:                              ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #10
  br label %process_work_frame.exit

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !31   ; 25 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83  ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  %.not57.i = icmp eq ptr %i.ac, null             ; 2 uses
  br i1 %.not57.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !85
  %.not58.i = icmp eq i32 %i.ae, 0
  br i1 %.not58.i, label %bb.aa, label %bb.e
end_hunk_0
