Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_maskedmerge?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"maskedmerge\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Merge first stream with second stream using third stream as mask.\00", align 1
@maskedmerge_inputs = internal constant [3 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }, %struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }, %struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr null }], align 16
@maskedmerge_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.5, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [62 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 151, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 183, i32 175, i32 177, i32 -1], align 16
@ff_vf_maskedmerge = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @maskedmerge_inputs, ptr @maskedmerge_outputs, ptr @maskedmerge_class, i32 131076, [4 x i8] zeroinitializer }, i8 3, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 184, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.6 = private unnamed_addr constant [172 x i8] c"First input link %s parameters (size %dx%d) do not match the corresponding second input link %s parameters (size %dx%d) and/or third input link %s parameters (size %dx%d)\0A\00", align 1
@maskedmerge_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @maskedmerge_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"set planes\00", align 1
@maskedmerge_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 60, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #8
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #8
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 3 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !28
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.i, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !53
  %i.m = zext nneg i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34
  %i.p = sub nsw i32 0, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.r = load i8, ptr %i.q, align 2, !tbaa !54
  %i.s = zext nneg i8 %i.r to i32
  %i.t = ashr i32 %i.p, %i.s
  %i.u = sub nsw i32 0, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.u, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.u, ptr %i.x, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !35
  store i32 %i.z, ptr %i.v, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = ashr i32 %i.ad, %i.m
  %i.af = sub nsw i32 0, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !35
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !57
  %notmask = shl nsw i32 -1, %i.an
  %i.ap = xor i32 %notmask, -1                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !37
  %i.ar = lshr i32 %i.ap, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !38
  %i.at = icmp eq i32 %i.an, 8
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @maskedmerge8, ptr %i.au, align 8, !tbaa !39
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.av = icmp slt i32 %i.an, 17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @maskedmerge16, ptr %i.aw, align 8, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr @maskedmerge32, ptr %i.aw, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmerge8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 %10, i32 %11) #4 {
bb.a:
  %i.a = icmp sgt i32 %9, 0
  %i.b = icmp sgt i32 %8, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %8 to i64      ; 10 uses
  %i.c = add nsw i32 %9, -1
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = mul i64 %7, %i.d
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 %wide.trip.count ; 3 uses
  %i.g = mul i64 %6, %i.d
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %scevgep49 = getelementptr i8, ptr %i.h, i64 %wide.trip.count
  %i.i = mul i64 %4, %i.d
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep50 = getelementptr i8, ptr %i.j, i64 %wide.trip.count
  %i.k = mul i64 %5, %i.d
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  %scevgep51 = getelementptr i8, ptr %i.l, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %8, 4
  %bound0 = icmp ult ptr %3, %scevgep49
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.m = or i64 %6, %7
  %i.n = icmp slt i64 %i.m, 0
  %i.o = or i1 %found.conflict, %i.n
  %bound053 = icmp ult ptr %3, %scevgep50
  %bound154 = icmp ult ptr %0, %scevgep
  %found.conflict55 = and i1 %bound053, %bound154
  %12 = or i64 %4, %7
  %i.p = icmp slt i64 %12, 0
  %i.q = or i1 %found.conflict55, %i.p
  %conflict.rdx = or i1 %i.o, %i.q
  %bound058 = icmp ult ptr %3, %scevgep51
  %bound159 = icmp ult ptr %1, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %13 = or i64 %5, %7
  %i.r = icmp slt i64 %13, 0
  %i.s = or i1 %found.conflict60, %i.r
  %conflict.rdx63 = or i1 %conflict.rdx, %i.s
  %min.iters.check64 = icmp ult i32 %8, 16
  %i.t = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  %n.vec67 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n73 = icmp eq i64 %n.vec67, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03343 = phi i32 [ %i.be, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03442 = phi ptr [ %i.ba, %._crit_edge ], [ %3, %.preheader.preheader ] ; 4 uses
  %.03541 = phi ptr [ %i.bd, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  %.03640 = phi ptr [ %i.bc, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.03739 = phi ptr [ %i.bb, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx63
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03541, i64 %index
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !67, !alias.scope !68 ; 2 uses
  %i.v = zext <16 x i8> %wide.load to <16 x i32>
  %i.w = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.x = getelementptr inbounds nuw i8, ptr %.03739, i64 %index
  %wide.load65 = load <16 x i8>, ptr %i.x, align 1, !tbaa !67, !alias.scope !69
  %i.y = zext <16 x i8> %wide.load65 to <16 x i32>
  %i.z = zext <16 x i8> %i.w to <16 x i32>
  %i.aa = mul nuw nsw <16 x i32> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.03640, i64 %index
  %wide.load66 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !67, !alias.scope !70
  %i.ac = zext <16 x i8> %wide.load66 to <16 x i32>
  %i.ad = mul nuw nsw <16 x i32> %i.ac, %i.v
  %i.ae = add nuw nsw <16 x i32> %i.aa, splat (i32 127)
  %i.af = add nuw nsw <16 x i32> %i.ae, %i.ad
  %i.ag = udiv <16 x i32> %i.af, splat (i32 255)
  %i.ah = trunc <16 x i32> %i.ag to <16 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %.03442, i64 %index
  store <16 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !67, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03541, i64 %index68
  %wide.load69.a = load <4 x i8>, ptr %i.ak, align 1, !tbaa !67, !alias.scope !68 ; 2 uses
  %i.al = zext <4 x i8> %wide.load69.a to <4 x i32>
  %i.am = xor <4 x i8> %wide.load69.a, splat (i8 -1)
  %i.an = getelementptr inbounds nuw i8, ptr %.03739, i64 %index68
  %wide.load70 = load <4 x i8>, ptr %i.an, align 1, !tbaa !67, !alias.scope !69
  %i.ao = zext <4 x i8> %wide.load70 to <4 x i32>
  %i.ap = zext <4 x i8> %i.am to <4 x i32>
  %i.aq = mul nuw nsw <4 x i32> %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.03640, i64 %index68
  %wide.load71 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !67, !alias.scope !70
  %i.as = zext <4 x i8> %wide.load71 to <4 x i32>
  %i.at = mul nuw nsw <4 x i32> %i.as, %i.al
  %i.au = add nuw nsw <4 x i32> %i.aq, splat (i32 127)
  %i.av = add nuw nsw <4 x i32> %i.au, %i.at
  %i.aw = udiv <4 x i32> %i.av, splat (i32 255)
  %i.ax = trunc <4 x i32> %i.aw to <4 x i8>
  %i.ay = getelementptr inbounds nuw i8, ptr %.03442, i64 %index68
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !67, !alias.scope !71, !noalias !72
  %index.next72 = add nuw i64 %index68, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n73, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec67, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ba = getelementptr inbounds i8, ptr %.03442, i64 %7
  %i.bb = getelementptr inbounds i8, ptr %.03739, i64 %4
  %i.bc = getelementptr inbounds i8, ptr %.03640, i64 %5
  %i.bd = getelementptr inbounds i8, ptr %.03541, i64 %6
  %i.be = add nuw nsw i32 %.03343, 1              ; 2 uses
  %exitcond46.not = icmp eq i32 %i.be, %9
  br i1 %exitcond46.not, label %._crit_edge44.split, label %iter.check, !llvm.loop !65

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03541, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !67  ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i8 %i.bg, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %.03739, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !67
  %i.bl = zext i8 %i.bk to i32
  %i.bm = zext i8 %i.bi to i32
  %i.bn = mul nuw nsw i32 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.03640, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !67
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, %i.bh
  %i.bs = add nuw nsw i32 %i.bn, 127
  %i.bt = add nuw nsw i32 %i.bs, %i.br
  %i.bu = udiv i32 %i.bt, 255
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.03442, i64 %indvars.iv
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !66
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmerge16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #4 {
bb.a:
  %i.a = lshr i64 %7, 1
  %i.b = lshr i64 %4, 1
  %i.c = lshr i64 %5, 1
  %i.d = lshr i64 %6, 1
  %i.e = icmp sgt i32 %9, 0
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = icmp sgt i32 %8, 0
  %i.g = trunc i32 %11 to i16
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge47.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03646 = phi i32 [ %i.l, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03745 = phi ptr [ %i.h, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  %.03844 = phi ptr [ %i.k, %._crit_edge ], [ %2, %.preheader.preheader ] ; 2 uses
  %.03943 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader.preheader ] ; 2 uses
  %.04042 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge47.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.03745, i64 %i.a
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.04042, i64 %i.b
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.03943, i64 %i.c
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.03844, i64 %i.d
  %i.l = add nuw nsw i32 %.03646, 1               ; 2 uses
  %exitcond49.not = icmp eq i32 %i.l, %9
  br i1 %exitcond49.not, label %._crit_edge47.split, label %.preheader, !llvm.loop !74

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.03844, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2, !tbaa !77   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = sub i16 %i.g, %i.n
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.04042, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !77
  %i.s = zext i16 %i.r to i32
  %i.t = zext i16 %i.p to i32
  %i.u = mul nuw nsw i32 %i.s, %i.t
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.03943, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !77
  %i.x = zext i16 %i.w to i32
  %i.y = mul nuw nsw i32 %i.x, %i.o
  %i.z = add i32 %i.u, %10
  %i.aa = add i32 %i.z, %i.y
  %i.ab = udiv i32 %i.aa, %11
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.03745, i64 %indvars.iv
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !75
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @maskedmerge32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 %10, i32 %11) #4 {
bb.a:
  %i.a = lshr i64 %7, 2                           ; 2 uses
  %i.b = lshr i64 %4, 2                           ; 2 uses
  %i.c = lshr i64 %5, 2                           ; 2 uses
  %i.d = lshr i64 %6, 2                           ; 2 uses
  %i.e = icmp sgt i32 %9, 0
  %i.f = icmp sgt i32 %8, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %8 to i64      ; 9 uses
  %i.g = add nsw i32 %9, -1
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %i.i = mul i64 %i.a, %i.h
  %i.j = add i64 %i.i, %wide.trip.count
  %i.k = shl i64 %i.j, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.k   ; 3 uses
  %i.l = mul i64 %i.d, %i.h
  %i.m = add i64 %i.l, %wide.trip.count
  %i.n = shl i64 %i.m, 2
  %scevgep49 = getelementptr i8, ptr %2, i64 %i.n
  %i.o = mul i64 %i.b, %i.h
  %i.p = add i64 %i.o, %wide.trip.count
  %i.q = shl i64 %i.p, 2
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.q
  %i.r = mul i64 %i.c, %i.h
  %i.s = add i64 %i.r, %wide.trip.count
  %i.t = shl i64 %i.s, 2
  %scevgep51 = getelementptr i8, ptr %1, i64 %i.t
  %min.iters.check = icmp ult i32 %8, 8
  %bound0 = icmp ult ptr %3, %scevgep49
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.u = or i64 %6, %7
  %i.v = icmp slt i64 %i.u, 0
  %i.w = or i1 %found.conflict, %i.v
  %bound053 = icmp ult ptr %3, %scevgep50
  %bound154 = icmp ult ptr %0, %scevgep
  %found.conflict55 = and i1 %bound053, %bound154
  %12 = or i64 %4, %7
  %i.x = icmp slt i64 %12, 0
  %i.y = or i1 %found.conflict55, %i.x
  %conflict.rdx = or i1 %i.w, %i.y
  %bound058 = icmp ult ptr %3, %scevgep51
  %bound159 = icmp ult ptr %1, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %13 = or i64 %5, %7
  %i.z = icmp slt i64 %13, 0
  %i.aa = or i1 %found.conflict60, %i.z
  %conflict.rdx63 = or i1 %conflict.rdx, %i.aa
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ab = add nsw i64 %wide.trip.count, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03343 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03442 = phi ptr [ %i.bc, %._crit_edge ], [ %3, %.preheader.preheader ] ; 5 uses
  %.03541 = phi ptr [ %i.bf, %._crit_edge ], [ %2, %.preheader.preheader ] ; 5 uses
  %.03640 = phi ptr [ %i.be, %._crit_edge ], [ %1, %.preheader.preheader ] ; 5 uses
  %.03739 = phi ptr [ %i.bd, %._crit_edge ], [ %0, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx63
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !87, !alias.scope !88 ; 2 uses
  %wide.load64.a = load <4 x float>, ptr %i.ad, align 4, !tbaa !87, !alias.scope !88 ; 2 uses
  %i.ae = fsub nsz <4 x float> splat (float 1.000000e+00), %wide.load
  %i.af = fsub nsz <4 x float> splat (float 1.000000e+00), %wide.load64.a
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.03739, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load65.a = load <4 x float>, ptr %i.ag, align 4, !tbaa !87, !alias.scope !89
  %wide.load66.a = load <4 x float>, ptr %i.ah, align 4, !tbaa !87, !alias.scope !89
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.03640, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load67 = load <4 x float>, ptr %i.ai, align 4, !tbaa !87, !alias.scope !90
  %wide.load68 = load <4 x float>, ptr %i.aj, align 4, !tbaa !87, !alias.scope !90
  %i.ak = fmul nsz <4 x float> %wide.load, %wide.load67
  %i.al = fmul nsz <4 x float> %wide.load64.a, %wide.load68
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load65.a, <4 x float> %i.ae, <4 x float> %i.ak)
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load66.a, <4 x float> %i.af, <4 x float> %i.al)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.03442, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %i.am, ptr %i.ao, align 4, !tbaa !87, !alias.scope !91, !noalias !92
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !87, !alias.scope !91, !noalias !92
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %indvars.iv.ph
  %i.as = load float, ptr %i.ar, align 4, !tbaa !87 ; 2 uses
  %i.at = fsub nsz float 1.000000e+00, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.03739, i64 %indvars.iv.ph
  %i.av = load float, ptr %i.au, align 4, !tbaa !87
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.03640, i64 %indvars.iv.ph
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !87
  %i.ay = fmul nsz float %i.as, %i.ax
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.at, float %i.ay)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.03442, i64 %indvars.iv.ph
  store float %i.az, ptr %i.ba, align 4, !tbaa !87
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.bb, label %._crit_edge, label %scalar.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.03442, i64 %i.a
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03739, i64 %i.b
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.03640, i64 %i.c
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %i.d
  %i.bg = add nuw nsw i32 %.03343, 1              ; 2 uses
  %exitcond46.not = icmp eq i32 %i.bg, %9
  br i1 %exitcond46.not, label %._crit_edge44.split, label %.preheader, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %indvars.iv
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !87 ; 2 uses
  %i.bj = fsub nsz float 1.000000e+00, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03739, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.03640, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !87
  %i.bo = fmul nsz float %i.bi, %i.bn
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bj, float %i.bo)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.03442, i64 %indvars.iv
  store float %i.bp, ptr %i.bq, align 4, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.03541, i64 %indvars.iv.next
  %i.bs = load float, ptr %i.br, align 4, !tbaa !87 ; 2 uses
  %i.bt = fsub nsz float 1.000000e+00, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03739, i64 %indvars.iv.next
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !87
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.03640, i64 %indvars.iv.next
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !87
  %i.by = fmul nsz float %i.bs, %i.bx
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.bt, float %i.by)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.03442, i64 %indvars.iv.next
  store float %i.bz, ptr %i.ca, align 4, !tbaa !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !85
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define internal i32 @config_output(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq i32 %i.l, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34   ; 2 uses
  %.not67 = icmp eq i32 %i.p, %i.r
  %or.cond = select i1 %.not, i1 %.not67, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.not68 = icmp eq i32 %i.l, %i.t
  br i1 %.not68, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  %.not69 = icmp eq i32 %i.p, %i.v
  br i1 %.not69, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.b
  %i.w = phi i32 [ %i.r, %bb.a ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %i.z, i32 noundef %i.l, i32 noundef %i.p, ptr noundef %i.ab, i32 noundef %i.n, i32 noundef %i.w, ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah) #8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.p, ptr %i.aj, align 4, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !35
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !35
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.aq, i32 noundef %i.as, i32 noundef %i.l) #8 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.aw = tail call i32 @ff_framesync_init(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a, i32 noundef 3) #8 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.f
end_hunk_0
