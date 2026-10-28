Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_maskedthreshold?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"maskedthreshold\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Pick pixels comparing absolute difference of two streams with threshold.\00", align 1
@maskedthreshold_inputs = internal constant [2 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }, %struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }], align 16
@maskedthreshold_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [58 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 -1], align 16
@ff_vf_maskedthreshold = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @maskedthreshold_inputs, ptr @maskedthreshold_outputs, ptr @maskedthreshold_class, i32 131076, [4 x i8] zeroinitializer }, i8 2, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 184, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [116 x i8] c"First input link %s parameters (size %dx%d) do not match the corresponding second input link %s parameters (%dx%d)\0A\00", align 1
@maskedthreshold_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @maskedthreshold_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"set threshold\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"set planes\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"set mode\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@maskedthreshold_options = internal constant [6 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 6.553500e+04, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 12, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 16, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.14, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #9
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #9
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 3 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !52
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.i, ptr %i.j, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.l = load i32, ptr %i.e, align 4, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %i.o = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.k, i32 noundef %i.l, i32 noundef %i.n) #9 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !54
  %i.s = zext nneg i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  %i.v = sub nsw i32 0, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !55
  %i.y = zext nneg i8 %i.x to i32
  %i.z = ashr i32 %i.v, %i.y
  %i.aa = sub nsw i32 0, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !35
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !35
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = ashr i32 %i.ai, %i.s
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !35
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !35
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !57 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !58
  %i.at = icmp eq i32 %i.ar, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !59
  %.not41 = icmp eq i32 %i.av, 0                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.ax = select i1 %.not41, ptr @threshold8_abs, ptr @threshold8_diff
  %i.ay = select i1 %.not41, ptr @threshold16_abs, ptr @threshold16_diff
  %.sink = select i1 %i.at, ptr %i.ax, ptr %i.ay
  store ptr %.sink, ptr %i.aw, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.o, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @threshold8_diff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.c, %i.b
  %diff.check23 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check23
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i32 %4, 16
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !37
  %i.i = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load25 = load <16 x i8>, ptr %i.j, align 1, !tbaa !37 ; 2 uses
  %i.k = zext <16 x i8> %wide.load25 to <16 x i32>
  %i.l = sub nsw <16 x i32> %i.i, %i.k
  %i.m = icmp sgt <16 x i32> %i.l, %broadcast.splat
  %i.n = sub nsw <16 x i32> %i.i, %broadcast.splat
  %i.o = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.n, <16 x i32> zeroinitializer)
  %i.p = trunc <16 x i32> %i.o to <16 x i8>
  %i.q = select <16 x i1> %i.m, <16 x i8> %wide.load25, <16 x i8> %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %index
  store <16 x i8> %i.q, ptr %i.r, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.t, align 1, !tbaa !37
  %i.u = zext <4 x i8> %wide.load30 to <4 x i32>  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index29
  %wide.load31 = load <4 x i8>, ptr %i.v, align 1, !tbaa !37 ; 2 uses
  %i.w = zext <4 x i8> %wide.load31 to <4 x i32>
  %i.x = sub nsw <4 x i32> %i.u, %i.w
  %i.y = icmp sgt <4 x i32> %i.x, %broadcast.splat28
  %i.z = sub nsw <4 x i32> %i.u, %broadcast.splat28
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> zeroinitializer)
  %i.ab = trunc <4 x i32> %i.aa to <4 x i8>
  %i.ac = select <4 x i1> %i.y, <4 x i8> %wide.load31, <4 x i8> %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %index29
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !tbaa !37
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %n.vec26, %wide.trip.count
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37  ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = sub nsw i32 %i.ah, %i.ak
  %.not.prol = icmp sgt i32 %i.al, %3
  %i.am = sub nsw i32 %i.ah, %3
  %spec.select19.prol = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %spec.select.prol = trunc i32 %spec.select19.prol to i8
  %i.an = select i1 %.not.prol, i8 %i.aj, i8 %spec.select.prol
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !37
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = add nsw i64 %wide.trip.count, -1
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37  ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = sub nsw i32 %i.at, %i.aw
  %.not = icmp sgt i32 %i.ax, %3
  %i.ay = sub nsw i32 %i.at, %3
  %spec.select19 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %spec.select = trunc i32 %spec.select19 to i8
  %i.az = select i1 %.not, i8 %i.av, i8 %spec.select
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37  ; 2 uses
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg
  %.not.1 = icmp sgt i32 %i.bh, %3
  %i.bi = sub nsw i32 %i.bd, %3
  %spec.select19.1 = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %spec.select.1 = trunc i32 %spec.select19.1 to i8
  %i.bj = select i1 %.not.1, i8 %i.bf, i8 %spec.select.1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !62
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @threshold8_abs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.c, %i.b
  %diff.check26 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i32 %4, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !37 ; 2 uses
  %i.i = zext <16 x i8> %wide.load to <16 x i32>
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load28 = load <16 x i8>, ptr %i.j, align 1, !tbaa !37 ; 2 uses
  %i.k = zext <16 x i8> %wide.load28 to <16 x i32>
  %i.l = sub nsw <16 x i32> %i.i, %i.k
  %i.m = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.l, i1 true)
  %i.n = icmp sgt <16 x i32> %i.m, %broadcast.splat
  %i.o = select <16 x i1> %i.n, <16 x i8> %wide.load28, <16 x i8> %wide.load
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index
  store <16 x i8> %i.o, ptr %i.p, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.r, align 1, !tbaa !37 ; 2 uses
  %i.s = zext <4 x i8> %wide.load33 to <4 x i32>
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index32
  %wide.load34 = load <4 x i8>, ptr %i.t, align 1, !tbaa !37 ; 2 uses
  %i.u = zext <4 x i8> %wide.load34 to <4 x i32>
  %i.v = sub nsw <4 x i32> %i.s, %i.u
  %i.w = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.v, i1 true)
  %i.x = icmp sgt <4 x i32> %i.w, %broadcast.splat31
  %i.y = select <4 x i1> %i.x, <4 x i8> %wide.load34, <4 x i8> %wide.load33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  store <4 x i8> %i.y, ptr %i.z, align 1, !tbaa !37
  %index.next35 = add nuw i64 %index32, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %n.vec29, %wide.trip.count
  br i1 %cmp.n36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37  ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37  ; 2 uses
  %i.ag = zext i8 %i.af to i32
  %i.ah = sub nsw i32 %i.ad, %i.ag
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %.not.prol = icmp sgt i32 %i.ai, %3
  %.in.prol = select i1 %.not.prol, i8 %i.af, i8 %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  store i8 %.in.prol, ptr %i.aj, align 1, !tbaa !37
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ak = add nsw i64 %wide.trip.count, -1
  %i.al = icmp eq i64 %indvars.iv.ph, %i.ak
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37  ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37  ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 %i.ao, %i.ar
  %i.at = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %.not = icmp sgt i32 %i.at, %3
  %.in = select i1 %.not, i8 %i.aq, i8 %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %.in, ptr %i.au, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37  ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 %i.ax, %i.ba
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %.not.1 = icmp sgt i32 %i.bc, %3
  %.in.1 = select i1 %.not.1, i8 %i.az, i8 %i.aw
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store i8 %.in.1, ptr %i.bd, align 1, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !65
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @threshold16_diff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.a, %i.c
  %diff.check26 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br i1 %conflict.rdx, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !43
  %i.h = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load27 = load <8 x i16>, ptr %i.i, align 2, !tbaa !43 ; 2 uses
  %i.j = zext <8 x i16> %wide.load27 to <8 x i32>
  %i.k = sub nsw <8 x i32> %i.h, %i.j
  %i.l = icmp sgt <8 x i32> %i.k, %broadcast.splat
  %i.m = sub nsw <8 x i32> %i.h, %broadcast.splat
  %i.n = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.m, <8 x i32> zeroinitializer)
  %i.o = trunc <8 x i32> %i.n to <8 x i16>
  %i.p = select <8 x i1> %i.l, <8 x i16> %wide.load27, <8 x i16> %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  store <8 x i16> %i.p, ptr %i.q, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader28
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  %i.t = load i16, ptr %i.s, align 2, !tbaa !43
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.w = load i16, ptr %i.v, align 2, !tbaa !43   ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = sub nsw i32 %i.u, %i.x
  %.not.prol = icmp sgt i32 %i.y, %3
  %i.z = sub nsw i32 %i.u, %3
  %spec.select22.prol = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %spec.select.prol = trunc i32 %spec.select22.prol to i16
  %i.aa = select i1 %.not.prol, i16 %i.w, i16 %spec.select.prol
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.ph
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !43
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader28
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader28 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ac = add nsw i64 %wide.trip.count, -1
  %i.ad = icmp eq i64 %indvars.iv.ph, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !43
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !43 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sub nsw i32 %i.ag, %i.aj
  %.not = icmp sgt i32 %i.ak, %3
  %i.al = sub nsw i32 %i.ag, %3
  %spec.select22 = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %spec.select = trunc i32 %spec.select22 to i16
  %i.am = select i1 %.not, i16 %i.ai, i16 %spec.select
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.am, ptr %i.an, align 2, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !43
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !43 ; 2 uses
  %i.at = zext i16 %i.as to i32
  %i.au = sub nsw i32 %i.aq, %i.at
  %.not.1 = icmp sgt i32 %i.au, %3
  %i.av = sub nsw i32 %i.aq, %3
  %spec.select22.1 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %spec.select.1 = trunc i32 %spec.select22.1 to i16
  %i.aw = select i1 %.not.1, i16 %i.as, i16 %spec.select.1
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !67
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @threshold16_abs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %i.f = sub i64 %i.c, %i.b
  %diff.check29 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i32 %4, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !43 ; 2 uses
  %wide.load31 = load <8 x i16>, ptr %i.i, align 2, !tbaa !43 ; 2 uses
  %i.j = zext <8 x i16> %wide.load to <8 x i32>
  %i.k = zext <8 x i16> %wide.load31 to <8 x i32>
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load32 = load <8 x i16>, ptr %i.l, align 2, !tbaa !43 ; 2 uses
  %wide.load33 = load <8 x i16>, ptr %i.m, align 2, !tbaa !43 ; 2 uses
  %i.n = zext <8 x i16> %wide.load32 to <8 x i32>
  %i.o = zext <8 x i16> %wide.load33 to <8 x i32>
  %i.p = sub nsw <8 x i32> %i.j, %i.n
  %i.q = sub nsw <8 x i32> %i.k, %i.o
  %i.r = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.p, i1 true)
  %i.s = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.q, i1 true)
  %i.t = icmp sgt <8 x i32> %i.r, %broadcast.splat
  %i.u = icmp sgt <8 x i32> %i.s, %broadcast.splat
  %i.v = select <8 x i1> %i.t, <8 x i16> %wide.load32, <8 x i16> %wide.load
  %i.w = select <8 x i1> %i.u, <8 x i16> %wide.load33, <8 x i16> %wide.load31
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !43
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index37
  %wide.load38 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !43 ; 2 uses
  %i.ab = zext <4 x i16> %wide.load38 to <4 x i32>
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index37
  %wide.load39 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !43 ; 2 uses
  %i.ad = zext <4 x i16> %wide.load39 to <4 x i32>
  %i.ae = sub nsw <4 x i32> %i.ab, %i.ad
  %i.af = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ae, i1 true)
  %i.ag = icmp sgt <4 x i32> %i.af, %broadcast.splat36
  %i.ah = select <4 x i1> %i.ag, <4 x i16> %wide.load39, <4 x i16> %wide.load38
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index37
  store <4 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !43
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %n.vec34, %wide.trip.count
  br i1 %cmp.n41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !43 ; 2 uses
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !43 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = sub nsw i32 %i.am, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %.not.prol = icmp sgt i32 %i.ar, %3
  %.in.prol = select i1 %.not.prol, i16 %i.ao, i16 %i.al
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.ph
  store i16 %.in.prol, ptr %i.as, align 2, !tbaa !43
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.at = add nsw i64 %wide.trip.count, -1
  %i.au = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !43 ; 2 uses
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !43 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.ax, %i.ba
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %.not = icmp sgt i32 %i.bc, %3
  %.in = select i1 %.not, i16 %i.az, i16 %i.aw
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %.in, ptr %i.bd, align 2, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !43 ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !43 ; 2 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true)
  %.not.1 = icmp sgt i32 %i.bl, %3
  %.in.1 = select i1 %.not.1, i16 %i.bi, i16 %i.bf
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  store i16 %.in.1, ptr %i.bm, align 2, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal i32 @config_output(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !33   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  %.not48 = icmp eq i32 %i.n, %i.p
  %or.cond = select i1 %.not, i1 %.not48, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %i.s, i32 noundef %i.j, i32 noundef %i.n, ptr noundef %i.u, i32 noundef %i.l, i32 noundef %i.p) #9
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.n, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  store i64 %i.z, ptr %i.x, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ae = tail call i32 @ff_framesync_init(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.a, i32 noundef 2) #9 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
