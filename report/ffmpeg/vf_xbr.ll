Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xbr?download=true
inline.NumInlined: 274
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"xbr\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Scale the input using xBR algorithm.\00", align 1
@xbr_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@xbr_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_vf_xbr = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @xbr_inputs, ptr @xbr_outputs, ptr @xbr_class, i32 4, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr null, { i32, [4 x i8] } { i32 121, [4 x i8] zeroinitializer }, i32 67108888, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@xbr_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @xbr_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"set scale factor\00", align 1
@xbr_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 2, %union.anon.2 { i64 3 }, double 2.000000e+00, double 4.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@init.xbrfuncs = internal unnamed_addr constant [3 x ptr] [ptr @xbr2x, ptr @xbr3x, ptr @xbr4x], align 16

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.04453 = phi i32 [ -255, %bb.a ], [ %i.ag, %bb.d ] ; 7 uses
  %i.d = mul nsw i32 %.04453, 500
  %.neg = mul nsw i32 %.04453, -81
  %i.e = sub nsw i32 255, %.04453
  %i.f = mul nsw i32 %.04453, 114
  %1 = insertelement <2 x i32> poison, i32 %.neg, i64 0
  %2 = insertelement <2 x i32> %1, i32 %i.d, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.04352 = phi i32 [ -255, %.preheader ], [ %i.af, %._crit_edge ] ; 7 uses
  %i.g = tail call i32 @llvm.smin.i32(i32 %.04453, i32 %.04352)
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.g, i32 0) ; 3 uses
  %spec.select = sub nsw i32 0, %i.h              ; 2 uses
  %i.i = sub nsw i32 255, %.04352
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.i)
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.j, i32 255) ; 2 uses
  %.not48 = icmp slt i32 %i.k, %spec.select
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = shl nsw i32 %.04352, 16
  %i.m = add nsw i32 %i.l, %.04453
  %i.n = mul i32 %i.h, -65793
  %i.o = add nsw i32 %i.m, %i.n
  %i.p = mul nsw i32 %.04352, 299
  %i.q = add nsw i32 %i.p, %i.f
  %i.r = mul i32 %i.h, -1000
  %i.s = add i32 %i.q, %i.r
  %i.t = sdiv i32 %i.s, 1000
  %i.u = mul nsw i32 %.04352, 500
  %3 = mul nsw i32 %.04352, -169
  %4 = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %5 = insertelement <2 x i32> %4, i32 %3, i64 1
  %6 = add nsw <2 x i32> %5, %2
  %7 = sdiv <2 x i32> %6, splat (i32 1000)        ; 2 uses
  %8 = extractelement <2 x i32> %7, i64 1
  %i.v = shl nsw i32 %8, 8
  %9 = extractelement <2 x i32> %7, i64 0
  %i.w = add nsw i32 %9, 32896
  %i.x = add nsw i32 %i.w, %i.v
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.051 = phi i32 [ %i.t, %.lr.ph ], [ %i.y, %bb.c ] ; 2 uses
  %.04250 = phi i32 [ %spec.select, %.lr.ph ], [ %i.ae, %bb.c ] ; 2 uses
  %.04549 = phi i32 [ %i.o, %.lr.ph ], [ %i.ad, %bb.c ] ; 2 uses
  %i.y = add nsw i32 %.051, 1
  %i.z = shl i32 %.051, 16
  %i.aa = add i32 %i.x, %i.z
  %i.ab = zext i32 %.04549 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !20
  %i.ad = add nsw i32 %.04549, 65793
  %i.ae = add nuw nsw i32 %.04250, 1
  %.not.not = icmp samesign ult i32 %.04250, %i.k
  br i1 %.not.not, label %bb.c, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.af = add nsw i32 %.04352, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, 256
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !23

bb.d:                                             ; preds = %._crit_edge
  %i.ag = add nsw i32 %.04453, 1                  ; 2 uses
  %exitcond54.not = icmp eq i32 %i.ag, 256
  br i1 %exitcond54.not, label %bb.e, label %.preheader, !llvm.loop !24

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr @init.xbrfuncs, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.ThreadData, align 8         ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.f, i32 noundef %i.j, i32 noundef %i.l) #9 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #9 ; 0 uses
  store ptr %1, ptr %2, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.v)
  %i.w = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.s, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #9 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.y = load <2 x i32>, ptr %i.i, align 8, !tbaa !20
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !20
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  %i.z = call i32 @ff_filter_frame(ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.z, %bb.c ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((40, 48)) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = mul nsw i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.p, align 4, !tbaa !44
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @xbr2x(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 48 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.h, %i.o
  %i.q = sdiv i64 %i.p, %i.k
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.t = icmp slt i32 %i.m, %i.r
  br i1 %i.t, label %.lr.ph46, label %xbr_filter.exit

.lr.ph46:                                         ; preds = %bb.a
  %i.u = load i32, ptr %i.s, align 8, !tbaa !20
  %i.v = ashr i32 %i.u, 2
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph46.split, label %xbr_filter.exit

.lr.ph46.split:                                   ; preds = %.lr.ph46, %._crit_edge
  %i.ad = phi i32 [ %i.beb, %._crit_edge ], [ %i.ab, %.lr.ph46 ] ; 3 uses
  %.02683.i44 = phi i32 [ %i.bec, %._crit_edge ], [ %i.m, %.lr.ph46 ] ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph46.split
  %i.af = load i32, ptr %i.f, align 4, !tbaa !52  ; 2 uses
  %i.ag = add nsw i32 %i.af, -2
  %.not.i = icmp slt i32 %.02683.i44, %i.ag       ; 2 uses
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !20  ; 2 uses
  %i.ai = mul nsw i32 %i.ah, %.02683.i44
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 5 uses
  %i.am = ashr i32 %i.ah, 2
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = add nsw i32 %i.af, -1
  %i.ar = icmp eq i32 %.02683.i44, %i.aq
  %spec.select2855.i = select i1 %i.ar, ptr %i.al, ptr %i.ao ; 2 uses
  %.0.i = select i1 %.not.i, ptr %i.ap, ptr %spec.select2855.i
  %.02675.i = select i1 %.not.i, ptr %i.ao, ptr %spec.select2855.i
end_hunk_0
