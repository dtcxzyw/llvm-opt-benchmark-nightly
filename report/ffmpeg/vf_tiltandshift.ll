inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"tiltandshift\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Generate a tilt-and-shift'd video.\00", align 1
@tiltandshift_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@tiltandshift_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.7, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr @request_frame, ptr @config_props }], align 16
@pix_fmts = internal constant [9 x i32] [i32 0, i32 4, i32 5, i32 6, i32 12, i32 13, i32 14, i32 32, i32 -1], align 16
@ff_vf_tiltandshift = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @tiltandshift_inputs, ptr @tiltandshift_outputs, ptr @tiltandshift_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 104, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Not enough frames in the list (%zu/%d), waiting for more.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nb_buffered\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"libavfilter/vf_tiltandshift.c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Emptying buffers (%zu/%d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Padding buffers initialized.\0A\00", align 1
@tiltandshift_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @tiltandshift_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Tilt the video horizontally while shifting\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Action at the start of input\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Start immediately (default)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Use the first frames\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Fill with black\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Action at the end of input\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Do not pad at the end (default)\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Use the last frame\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"hold\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"Number of columns to hold at the start of the video\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"Number of columns to pad at the end of the video\00", align 1
@tiltandshift_options = internal constant [12 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 12, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 16, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 16, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 16, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 16, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.23, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.24, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 24, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.25 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 28, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 16, [4 x i8] zeroinitializer, ptr @.str.27 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call ptr @av_fifo_alloc2(i64 noundef 32, i64 noundef 8, i32 noundef 1) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.c, ptr %i.d, align 8, !tbaa !20
  %.not = icmp eq ptr %i.c, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = call i32 @av_fifo_read(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.i = call i32 @av_fifo_read(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @av_fifo_freep2(ptr noundef nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @av_freep(ptr noundef nonnull %i.k) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = call i32 @av_fifo_write(ptr noundef %i.k, ptr noundef nonnull %i.a, i64 noundef 1) #6 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.q = call i64 @av_fifo_can_read(ptr noundef %i.p) #6
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sub nsw i32 %i.s, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.z = call i64 @av_fifo_can_read(ptr noundef %i.y) #6
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !42
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !43
  %i.ac = sub nsw i32 %i.aa, %i.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.g, i32 noundef 48, ptr noundef nonnull @.str.3, i64 noundef %i.z, i32 noundef %i.ac) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ad = call fastcc i32 @output_frame(ptr noundef nonnull %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.ad, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_fifo_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i64 @av_fifo_can_read(ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @output_frame(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 6 uses
  %i.b = alloca [4 x ptr], align 16               ; 5 uses
  %i.c = alloca [4 x ptr], align 16               ; 6 uses
  %i.d = alloca [4 x ptr], align 16               ; 6 uses
  %i.e = alloca [4 x ptr], align 16               ; 6 uses
  %i.f = alloca [4 x ptr], align 16               ; 6 uses
  %i.g = alloca [4 x ptr], align 16               ; 6 uses
  %i.h = alloca [4 x ptr], align 16               ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %i.s = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.r) #6 ; 20 uses
  store ptr %i.s, ptr %i.j, align 8, !tbaa !27
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit59

.lr.ph:                                           ; preds = %.preheader58
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  store ptr %i.an, ptr %i.g, align 16, !tbaa !47
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !49
  %i.at = zext nneg i8 %i.as to i32
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = lshr i32 %i.au, %i.at
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !47
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.az, ptr %i.ac, align 16, !tbaa !47
  %i.ba = load <2 x ptr>, ptr %i.z, align 8, !tbaa !47
  store <2 x ptr> %i.ba, ptr %i.h, align 16, !tbaa !47
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !47
  store ptr %i.bb, ptr %i.ae, align 16, !tbaa !47
  %i.bc = load i32, ptr %i.af, align 4, !tbaa !52
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !44
  call void @av_image_copy(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.h, ptr noundef nonnull %i.aa, i32 noundef %i.bc, i32 noundef 1, i32 noundef %i.bd) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = load i32, ptr %i.w, align 8, !tbaa !46
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.c, label %.loopexit59.loopexit, !llvm.loop !53

.loopexit59.loopexit:                             ; preds = %bb.c
  %i.bh = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %.preheader58, %bb.b
  %.147 = phi i32 [ 0, %bb.b ], [ 0, %.preheader58 ], [ %i.bh, %.loopexit59.loopexit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.bk = call i64 @av_fifo_can_read(ptr noundef %i.bj) #6
  %i.bl = trunc i64 %i.bk to i32                  ; 3 uses
  %.not51 = icmp eq i32 %i.bl, 0
  br i1 %.not51, label %bb.d, label %.preheader57

.preheader57:                                     ; preds = %.loopexit59
  %i.bm = icmp slt i32 %.147, %i.bl
  br i1 %i.bm, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %.preheader57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bv = zext nneg i32 %.147 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.loopexit59
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 207) #6
  call void @abort() #7
  unreachable

._crit_edge:                                      ; preds = %bb.e, %.preheader57
  %.2.lcssa = phi i32 [ %.147, %.preheader57 ], [ %i.em, %bb.e ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !54
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = load i32, ptr %i.o, align 8, !tbaa !42
  %i.cd = icmp slt i32 %.2.lcssa, %i.cc           ; 2 uses
  br i1 %i.cb, label %.preheader, label %.preheader55

.preheader55:                                     ; preds = %._crit_edge
  br i1 %i.cd, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cl = zext nneg i32 %.2.lcssa to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.g

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.cd, label %.lr.ph68, label %.loopexit

.lr.ph68:                                         ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cv = zext nneg i32 %.2.lcssa to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph63, %bb.e
  %indvars.iv72 = phi i64 [ %i.bv, %.lr.ph63 ], [ %indvars.iv.next73, %bb.e ] ; 3 uses
  %.062 = phi i32 [ 0, %.lr.ph63 ], [ %spec.select, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.cz = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.da = zext nneg i32 %.062 to i64
  %i.db = call i32 @av_fifo_peek(ptr noundef %i.cz, ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef %i.da) #6 ; 0 uses
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !27  ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load i32, ptr %i.bn, align 4, !tbaa !55
  %i.df = load ptr, ptr %0, align 8, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv72
  store ptr %i.dj, ptr %i.e, align 16, !tbaa !47
  %i.dk = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 9
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !49
  %i.dp = zext nneg i8 %i.do to i32               ; 2 uses
  %i.dq = trunc nuw i64 %indvars.iv72 to i32      ; 3 uses
  %i.dr = lshr i32 %i.dq, %i.dp
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ds
  store ptr %i.dt, ptr %i.bo, align 8, !tbaa !47
  %i.du = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store ptr %i.dv, ptr %i.bp, align 16, !tbaa !47
  %.not.i = icmp eq i32 %i.de, 0
  %spec.select.i = select i1 %.not.i, i32 0, i32 %i.dq ; 2 uses
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !47
  %i.dx = zext nneg i32 %spec.select.i to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store ptr %i.dy, ptr %i.f, align 16, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47
  %i.eb = lshr i32 %spec.select.i, %i.dp
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  store ptr %i.ed, ptr %i.bq, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ec
  store ptr %i.eg, ptr %i.br, align 16, !tbaa !47
  %i.eh = load i32, ptr %i.bs, align 4, !tbaa !52
  %i.ei = load i32, ptr %i.q, align 4, !tbaa !44
  call void @av_image_copy(ptr noundef nonnull %i.e, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.f, ptr noundef nonnull %i.dd, i32 noundef %i.eh, i32 noundef 1, i32 noundef %i.ei) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.ej = load ptr, ptr %i.k, align 8, !tbaa !27
  store ptr %i.ej, ptr %i.bt, align 8, !tbaa !56
  %i.ek = load i32, ptr %i.bu, align 8, !tbaa !46
  %.not52 = icmp sle i32 %i.ek, %i.dq
  %i.el = zext i1 %.not52 to i32
  %spec.select = add nuw nsw i32 %.062, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.em = trunc nuw i64 %indvars.iv.next73 to i32 ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.bl
  br i1 %i.en, label %bb.e, label %._crit_edge, !llvm.loop !57

bb.f:                                             ; preds = %.lr.ph68, %bb.f
  %indvars.iv78 = phi i64 [ %i.cv, %.lr.ph68 ], [ %indvars.iv.next79, %bb.f ] ; 4 uses
  %i.eo = load ptr, ptr %i.cp, align 8, !tbaa !56 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %0, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.et = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv78
  store ptr %i.eu, ptr %i.c, align 16, !tbaa !47
  %i.ev = load ptr, ptr %i.cx, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !49
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = trunc nuw i64 %indvars.iv78 to i32
  %i.fc = lshr i32 %i.fb, %i.fa
  %i.fd = zext nneg i32 %i.fc to i64              ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fd
  store ptr %i.fe, ptr %i.cq, align 8, !tbaa !47
  %i.ff = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store ptr %i.fg, ptr %i.cr, align 16, !tbaa !47
  %i.fh = load ptr, ptr %i.eo, align 8, !tbaa !47
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv78
  store ptr %i.fi, ptr %i.d, align 16, !tbaa !47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fd
  store ptr %i.fl, ptr %i.cs, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !47
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fd
  store ptr %i.fo, ptr %i.ct, align 16, !tbaa !47
  %i.fp = load i32, ptr %i.cu, align 4, !tbaa !52
  %i.fq = load i32, ptr %i.q, align 4, !tbaa !44
  call void @av_image_copy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ep, i32 noundef %i.fp, i32 noundef 1, i32 noundef %i.fq) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.fr = load i32, ptr %i.o, align 8, !tbaa !42
  %i.fs = trunc nuw i64 %indvars.iv.next79 to i32
  %i.ft = icmp sgt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.f, label %.loopexit, !llvm.loop !58

bb.g:                                             ; preds = %.lr.ph66, %bb.g
  %indvars.iv75 = phi i64 [ %i.cl, %.lr.ph66 ], [ %indvars.iv.next76, %bb.g ] ; 3 uses
  %i.fu = load ptr, ptr %0, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv75
  store ptr %i.fy, ptr %i.a, align 16, !tbaa !47
  %i.fz = load ptr, ptr %i.cn, align 8, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !48
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 9
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !49
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = trunc nuw i64 %indvars.iv75 to i32
  %i.gg = lshr i32 %i.gf, %i.ge
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gh
  store ptr %i.gi, ptr %i.cg, align 8, !tbaa !47
  %i.gj = load ptr, ptr %i.co, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gh
  store ptr %i.gk, ptr %i.ch, align 16, !tbaa !47
  %i.gl = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !47
  store <2 x ptr> %i.gl, ptr %i.b, align 16, !tbaa !47
  %i.gm = load ptr, ptr %i.ci, align 8, !tbaa !47
  store ptr %i.gm, ptr %i.cj, align 16, !tbaa !47
  %i.gn = load i32, ptr %i.ck, align 4, !tbaa !52
  %i.go = load i32, ptr %i.q, align 4, !tbaa !44
  call void @av_image_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cf, i32 noundef %i.gn, i32 noundef 1, i32 noundef %i.go) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.gp = load i32, ptr %i.o, align 8, !tbaa !42
  %i.gq = trunc nuw i64 %indvars.iv.next76 to i32
  %i.gr = icmp sgt i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.g, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %bb.g, %bb.f, %.preheader55, %.preheader
  %i.gs = load ptr, ptr %i.bi, align 8, !tbaa !20
  %i.gt = call i32 @av_fifo_read(ptr noundef %i.gs, ptr noundef nonnull %i.i, i64 noundef 1) #6 ; 0 uses
  %i.gu = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.gv = call i32 @av_frame_copy_props(ptr noundef nonnull %i.s, ptr noundef %i.gu) #6 ; 2 uses
  call void @av_frame_free(ptr noundef nonnull %i.i) #6
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  call void @av_frame_free(ptr noundef nonnull %i.j) #6
  br label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !46
  %i.gz = add nsw i32 %i.gy, -1
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !46
  %i.ha = call i32 @ff_filter_frame(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h
  %.048 = phi i32 [ %i.gv, %bb.h ], [ %i.ha, %bb.i ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  ret i32 %.048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare i32 @av_fifo_peek(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @av_fifo_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_image_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @request_frame(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = tail call i64 @av_fifo_can_read(ptr noundef %i.e) #6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43
  %i.l = sub nsw i32 %i.i, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i64 %i.f, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = tail call i32 @ff_request_frame(ptr noundef %i.v) #6 ; 3 uses
  %i.x = icmp eq i32 %i.w, -541478725
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !41
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.w, 0
  br i1 %i.z, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  %i.aa = icmp eq i32 %.pre, 0
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.thread, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.ae = tail call i64 @av_fifo_can_read(ptr noundef %i.ad) #6
  %.not27 = icmp eq i64 %i.ae, 0
  br i1 %.not27, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.ag = tail call i64 @av_fifo_can_read(ptr noundef %i.af) #6
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !42
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.aj = sub nsw i32 %i.ah, %i.ai
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.a, i32 noundef 48, ptr noundef nonnull @.str.8, i64 noundef %i.ag, i32 noundef %i.aj) #6
  %i.ak = tail call fastcc i32 @output_frame(ptr noundef nonnull %0) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.h, !llvm.loop !61

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ -541478725, %bb.d ], [ %i.w, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ak, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_props(ptr nofree noundef captures(none) initializes((36, 48)) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.j = load <2 x i32>, ptr %i.g, align 8, !tbaa !62
  %i.k = load i32, ptr %i.g, align 8, !tbaa !42
  store <2 x i32> %i.j, ptr %i.h, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.q, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = icmp eq i32 %i.p, 2
  br i1 %i.s, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %.not56 = icmp eq i32 %i.u, 1
  br i1 %.not56, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.v = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.m) #6 ; 3 uses
  %.not57 = icmp eq ptr %i.v, null
  br i1 %.not57, label %.thread60, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
  switch i32 %i.w, label %bb.g [
    i32 12, label %bb.h
    i32 13, label %bb.h
    i32 14, label %bb.h
    i32 32, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !63
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i8 [ 0, %bb.h ], [ 16, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !44
  %i.ad = tail call i32 @av_image_alloc(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i32 noundef 1, i32 noundef %i.ac, i32 noundef %i.w, i32 noundef 1) #6 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread60, label %.preheader63

.preheader63:                                     ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !64
  %.not70 = icmp eq i8 %i.ag, 0
  br i1 %.not70, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !44
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph66, label %.split.us

.lr.ph66:                                         ; preds = %.preheader.lr.ph, %.lr.ph66
  %.048.us65 = phi i32 [ %i.ap, %.lr.ph66 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.am = mul nsw i32 %i.al, %.048.us65
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i8 %.sroa.0.0, i64 1, i1 false)
  %i.ap = add nuw nsw i32 %.048.us65, 1           ; 2 uses
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !44
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph66, label %.split.us, !llvm.loop !65

.split.us:                                        ; preds = %.lr.ph66, %.preheader.lr.ph
  %i.as = load i8, ptr %i.af, align 8, !tbaa !64
  %i.at = icmp ugt i8 %i.as, 1
  br i1 %i.at, label %.preheader.1, label %._crit_edge

.preheader.1:                                     ; preds = %.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.aw = load i32, ptr %i.i, align 4, !tbaa !44
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.1, label %.split.us.1

.lr.ph.1:                                         ; preds = %.preheader.1, %.lr.ph.1
  %.04864.1 = phi i32 [ %i.bd, %.lr.ph.1 ], [ 0, %.preheader.1 ] ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.az = load i32, ptr %i.av, align 4, !tbaa !62
  %i.ba = mul nsw i32 %i.az, %.04864.1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store i8 -128, ptr %i.bc, align 1
  %i.bd = add nuw nsw i32 %.04864.1, 1            ; 2 uses
  %i.be = load i32, ptr %i.i, align 4, !tbaa !44
  %i.bf = sub nsw i32 0, %i.be
  %i.bg = load i8, ptr %i.ah, align 2, !tbaa !66
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = ashr i32 %i.bf, %i.bh
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = icmp slt i32 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph.1, label %.split.us.1, !llvm.loop !65

.split.us.1:                                      ; preds = %.lr.ph.1, %.preheader.1
  %i.bl = load i8, ptr %i.af, align 8, !tbaa !64
  %i.bm = icmp ugt i8 %i.bl, 2
  br i1 %i.bm, label %.preheader.2, label %._crit_edge

.preheader.2:                                     ; preds = %.split.us.1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bp = load i32, ptr %i.i, align 4, !tbaa !44
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.2, label %.split.us.2

.lr.ph.2:                                         ; preds = %.preheader.2, %.lr.ph.2
  %.04864.2 = phi i32 [ %i.bw, %.lr.ph.2 ], [ 0, %.preheader.2 ] ; 2 uses
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bs = load i32, ptr %i.bo, align 8, !tbaa !62
  %i.bt = mul nsw i32 %i.bs, %.04864.2
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  store i8 -128, ptr %i.bv, align 1
  %i.bw = add nuw nsw i32 %.04864.2, 1            ; 2 uses
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !44
  %i.by = sub nsw i32 0, %i.bx
  %i.bz = load i8, ptr %i.ah, align 2, !tbaa !66
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = ashr i32 %i.by, %i.ca
  %i.cc = sub nsw i32 0, %i.cb
  %i.cd = icmp slt i32 %i.bw, %i.cc
  br i1 %i.cd, label %.lr.ph.2, label %.split.us.2, !llvm.loop !65

.split.us.2:                                      ; preds = %.lr.ph.2, %.preheader.2
  %i.ce = load i8, ptr %i.af, align 8, !tbaa !64
  %i.cf = icmp ugt i8 %i.ce, 3
  br i1 %i.cf, label %.preheader.3, label %._crit_edge

.preheader.3:                                     ; preds = %.split.us.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !44
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.preheader.3, %.lr.ph.3
  %.04864.3 = phi i32 [ %i.cp, %.lr.ph.3 ], [ 0, %.preheader.3 ] ; 2 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.cl = load i32, ptr %i.ch, align 4, !tbaa !62
  %i.cm = mul nsw i32 %i.cl, %.04864.3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.co, i8 %.sroa.0.0, i64 1, i1 false)
  %i.cp = add nuw nsw i32 %.04864.3, 1            ; 2 uses
  %i.cq = load i32, ptr %i.i, align 4, !tbaa !44
  %i.cr = sub nsw i32 0, %i.cq
  %i.cs = load i8, ptr %i.ah, align 2, !tbaa !66
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = ashr i32 %i.cr, %i.ct
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = icmp slt i32 %i.cp, %i.cv
  br i1 %i.cw, label %.lr.ph.3, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.split.us, %.split.us.1, %.split.us.2, %.lr.ph.3, %.preheader.3, %.preheader63
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.a, i32 noundef 40, ptr noundef nonnull @.str.9) #6
  %.pre = load i32, ptr %i.n, align 4, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %.thread
  %i.cx = phi i32 [ %.pre, %._crit_edge ], [ %i.m, %.thread ]
  %i.cy = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.cx) #6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !48
  %.not59 = icmp eq ptr %i.cy, null
  %. = select i1 %.not59, i32 -558323010, i32 0
  br label %.thread60

.thread60:                                        ; preds = %bb.i, %bb.e, %bb.j
  %.1 = phi i32 [ %., %bb.j ], [ %i.ad, %bb.i ], [ -558323010, %bb.e ]
  ret i32 %.1
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_image_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @av_default_item_name(ptr noundef) #3

declare ptr @av_fifo_alloc2(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_fifo_freep2(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !22, i64 80}
!21 = !{!"TiltandshiftContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 64, !22, i64 80, !23, i64 88, !24, i64 96}
!22 = !{!"p1 _ZTS6AVFifo", !12, i64 0}
!23 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!24 = !{!"p1 _ZTS18AVPixFmtDescriptor", !12, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!23, !23, i64 0}
!28 = !{!29, !30, i64 16}
!29 = !{!"AVFilterLink", !30, i64 0, !15, i64 8, !30, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !31, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !32, i64 72, !31, i64 96, !33, i64 104, !6, i64 112, !6, i64 116, !34, i64 120, !34, i64 168}
!30 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!31 = !{!"AVRational", !6, i64 0, !6, i64 4}
!32 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!33 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!34 = !{!"AVFilterFormatsConfig", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!35 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!36 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!37 = !{!10, !16, i64 56}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!40 = !{!29, !30, i64 0}
!41 = !{!21, !6, i64 8}
!42 = !{!29, !6, i64 40}
!43 = !{!21, !6, i64 28}
!44 = !{!29, !6, i64 44}
!45 = !{!21, !6, i64 16}
!46 = !{!21, !6, i64 24}
!47 = !{!14, !14, i64 0}
!48 = !{!21, !24, i64 96}
!49 = !{!50, !7, i64 9}
!50 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !51, i64 16, !7, i64 24, !14, i64 104}
!51 = !{!"long", !7, i64 0}
!52 = !{!29, !6, i64 36}
!53 = distinct !{!53, !26}
!54 = !{!21, !6, i64 20}
!55 = !{!21, !6, i64 12}
!56 = !{!21, !23, i64 88}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = !{!10, !16, i64 32}
!61 = distinct !{!61, !26}
!62 = !{!6, !6, i64 0}
!63 = !{!29, !6, i64 60}
!64 = !{!50, !7, i64 8}
!65 = distinct !{!65, !26}
!66 = !{!50, !7, i64 10}
end_hunk_0
