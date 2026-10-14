Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_maskedminmax?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"maskedmin\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Apply filtering with minimum difference of two streams.\00", align 1
@maskedminmax_inputs = internal constant [3 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }, %struct.AVFilterPad { ptr @.str.5, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }, %struct.AVFilterPad { ptr @.str.6, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }], align 16
@maskedminmax_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.7, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [61 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 183, i32 175, i32 177, i32 -1], align 16
@ff_vf_maskedmin = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @maskedminmax_inputs, ptr @maskedminmax_outputs, ptr @maskedminmax_class, i32 131076, [4 x i8] zeroinitializer }, i8 3, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @maskedmin_init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 176, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"maskedmax\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Apply filtering with maximum difference of two streams.\00", align 1
@ff_vf_maskedmax = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @maskedminmax_inputs, ptr @maskedminmax_outputs, ptr @maskedminmax_class, i32 131076, [4 x i8] zeroinitializer }, i8 3, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 176, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"filter1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"filter2\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.8 = private unnamed_addr constant [167 x i8] c"First input link %s parameters (size %dx%d) do not match the corresponding second input link %s parameters (%dx%d) and/or third input link %s parameters (size %dx%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"masked(min|max)\00", align 1
@maskedminmax_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.9, ptr @av_default_item_name, ptr @maskedminmax_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"set planes\00", align 1
@maskedminmax_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 8, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @maskedmin_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !26
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #10
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #10
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #10 ; 3 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !56
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.i, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i32, ptr %i.e, align 4, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.k, i32 noundef %i.l, i32 noundef %i.n) #10 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !58
  %i.s = zext nneg i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = sub nsw i32 0, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.x = load i8, ptr %i.w, align 2, !tbaa !59
  %i.y = zext nneg i8 %i.x to i32
  %i.z = ashr i32 %i.v, %i.y
  %i.aa = sub nsw i32 0, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !36
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !36
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !34
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = ashr i32 %i.ai, %i.s
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !36
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !34  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !36
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !61 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !62
  %i.at = icmp eq i32 %i.ar, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %.not46 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not46, ptr @maskedmax8, ptr @maskedmin8
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp slt i32 %i.ar, 17
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %.not45 = icmp eq i32 %i.ba, 0                  ; 2 uses
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = select i1 %.not45, ptr @maskedmax16, ptr @maskedmin16
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.bc = select i1 %.not45, ptr @maskedmax32, ptr @maskedmin32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi ptr [ %i.ax, %bb.c ], [ %i.bc, %bb.f ], [ %i.bb, %bb.e ]
  store ptr %.sink, ptr %i.au, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.o, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #2

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmin8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %2 to i64
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.a, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.c
  %diff.check42 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check42
  %i.h = sub i64 %i.d, %i.c
  %diff.check43 = icmp ugt i64 %i.h, -16
  %conflict.rdx44 = or i1 %conflict.rdx, %diff.check43
  br i1 %conflict.rdx44, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i32 %4, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !38
  %i.k = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load46 = load <16 x i8>, ptr %i.l, align 1, !tbaa !38 ; 2 uses
  %i.m = zext <16 x i8> %wide.load46 to <16 x i32>
  %i.n = sub nsw <16 x i32> %i.k, %i.m
  %i.o = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.n, i1 true)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load47 = load <16 x i8>, ptr %i.p, align 1, !tbaa !38 ; 2 uses
  %i.q = zext <16 x i8> %wide.load47 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.k, %i.q
  %i.s = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.r, i1 true)
  %i.t = icmp samesign ult <16 x i32> %i.o, %i.s
  %i.u = select <16 x i1> %i.t, <16 x i8> %wide.load46, <16 x i8> %wide.load47
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %i.u, ptr %i.v, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  %wide.load50 = load <4 x i8>, ptr %i.x, align 1, !tbaa !38
  %i.y = zext <4 x i8> %wide.load50 to <4 x i32>  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %index49
  %wide.load51 = load <4 x i8>, ptr %i.z, align 1, !tbaa !38 ; 2 uses
  %i.aa = zext <4 x i8> %wide.load51 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.y, %i.aa
  %i.ac = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ab, i1 true)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %index49
  %wide.load52 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !38 ; 2 uses
  %i.ae = zext <4 x i8> %wide.load52 to <4 x i32>
  %i.af = sub nsw <4 x i32> %i.y, %i.ae
  %i.ag = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.af, i1 true)
  %i.ah = icmp samesign ult <4 x i32> %i.ac, %i.ag
  %i.ai = select <4 x i1> %i.ah, <4 x i8> %wide.load51, <4 x i8> %wide.load52
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %index49
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !38
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !38
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !38  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38  ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = sub nsw i32 %i.an, %i.av
  %i.ax = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.ay = icmp samesign ult i32 %i.as, %i.ax
  %.in = select i1 %i.ay, i8 %i.ap, i8 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %.in, ptr %i.az, align 1, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmax8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.d = ptrtoaddr ptr %2 to i64
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.a, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.c
  %diff.check42 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check42
  %i.h = sub i64 %i.d, %i.c
  %diff.check43 = icmp ugt i64 %i.h, -16
  %conflict.rdx44 = or i1 %conflict.rdx, %diff.check43
  br i1 %conflict.rdx44, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i32 %4, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !38
  %i.k = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load46 = load <16 x i8>, ptr %i.l, align 1, !tbaa !38 ; 2 uses
  %i.m = zext <16 x i8> %wide.load46 to <16 x i32>
  %i.n = sub nsw <16 x i32> %i.k, %i.m
  %i.o = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.n, i1 true)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load47 = load <16 x i8>, ptr %i.p, align 1, !tbaa !38 ; 2 uses
  %i.q = zext <16 x i8> %wide.load47 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.k, %i.q
  %i.s = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.r, i1 true)
  %i.t = icmp samesign ugt <16 x i32> %i.o, %i.s
  %i.u = select <16 x i1> %i.t, <16 x i8> %wide.load46, <16 x i8> %wide.load47
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %i.u, ptr %i.v, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  %wide.load50 = load <4 x i8>, ptr %i.x, align 1, !tbaa !38
  %i.y = zext <4 x i8> %wide.load50 to <4 x i32>  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %index49
  %wide.load51 = load <4 x i8>, ptr %i.z, align 1, !tbaa !38 ; 2 uses
  %i.aa = zext <4 x i8> %wide.load51 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.y, %i.aa
  %i.ac = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ab, i1 true)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %index49
  %wide.load52 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !38 ; 2 uses
  %i.ae = zext <4 x i8> %wide.load52 to <4 x i32>
  %i.af = sub nsw <4 x i32> %i.y, %i.ae
  %i.ag = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.af, i1 true)
  %i.ah = icmp samesign ugt <4 x i32> %i.ac, %i.ag
  %i.ai = select <4 x i1> %i.ah, <4 x i8> %wide.load51, <4 x i8> %wide.load52
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %index49
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !38
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !38
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !38  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38  ; 2 uses
  %i.av = zext i8 %i.au to i32
  %i.aw = sub nsw i32 %i.an, %i.av
  %i.ax = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.ay = icmp samesign ugt i32 %i.as, %i.ax
  %.in = select i1 %i.ay, i8 %i.ap, i8 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %.in, ptr %i.az, align 1, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmin16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 16
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.d
  %diff.check42 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check42
  %i.h = sub i64 %i.a, %i.d
  %diff.check43 = icmp ugt i64 %i.h, -16
  %conflict.rdx44 = or i1 %conflict.rdx, %diff.check43
  br i1 %conflict.rdx44, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !44
  %i.j = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load45 = load <8 x i16>, ptr %i.k, align 2, !tbaa !44 ; 2 uses
  %i.l = zext <8 x i16> %wide.load45 to <8 x i32>
  %i.m = sub nsw <8 x i32> %i.j, %i.l
  %i.n = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.m, i1 true)
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load46 = load <8 x i16>, ptr %i.o, align 2, !tbaa !44 ; 2 uses
  %i.p = zext <8 x i16> %wide.load46 to <8 x i32>
  %i.q = sub nsw <8 x i32> %i.j, %i.p
  %i.r = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.q, i1 true)
  %i.s = icmp samesign ult <8 x i32> %i.n, %i.r
  %i.t = select <8 x i1> %i.s, <8 x i16> %wide.load45, <8 x i16> %wide.load46
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.t, ptr %i.u, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader47

.lr.ph.preheader47:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader47, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader47 ] ; 5 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !44
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !44  ; 2 uses
  %i.ab = zext i16 %i.aa to i32
  %i.ac = sub nsw i32 %i.y, %i.ab
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !44 ; 2 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.y, %i.ag
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = icmp samesign ult i32 %i.ad, %i.ai
  %.in = select i1 %i.aj, i16 %i.aa, i16 %i.af
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %.in, ptr %i.ak, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmax16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64
end_hunk_0
