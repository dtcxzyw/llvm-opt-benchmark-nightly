Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_random?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Return random frames.\00", align 1
@random_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@random_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr @request_frame, ptr null }], align 16
@ff_vf_random = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @random_inputs, ptr @random_outputs, ptr @random_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 zeroinitializer, i32 12584, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@random_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @random_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"set number of frames in cache\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"set the seed\00", align 1
@random_options = internal constant [3 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 268, i32 2, %union.anon.2 { i64 30 }, double 2.000000e+00, double 5.120000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 272, i32 3, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41EFFFFFFFE00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @av_get_random_seed() #4
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.g, %bb.b ], [ %i.d, %bb.a ]
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_lfg_init(ptr noundef nonnull %i.j, i32 noundef %i.i) #4
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 268 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !24
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !25
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24   ; 4 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.k = sext i32 %i.f to i64                     ; 3 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  store ptr %1, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8480
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.k
  store i64 %i.n, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4384
  %i.t = add nsw i32 %i.f, 1
  store i32 %i.t, ptr %i.e, align 8, !tbaa !36
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.k
  store i64 %i.r, ptr %i.u, align 8, !tbaa !44
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49  ; 4 uses
  %i.ab = add i32 %i.aa, 40
  %i.ac = and i32 %i.ab, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = add i32 %i.aa, 9
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !50
  %i.al = add i32 %i.ak, %i.af                    ; 2 uses
  %i.am = and i32 %i.aa, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !50
  %i.ap = add i32 %i.aa, 1
  store i32 %i.ap, ptr %i.z, align 8, !tbaa !49
  %i.aq = urem i32 %i.al, %i.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 4384 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8480 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 408
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 4392
  %i.bc = add nsw i32 %i.h, -1
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.bb, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8488
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.bf, i64 %i.be, i1 false)
  store ptr %1, ptr %i.at, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bi = sext i32 %i.h to i64                    ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.av, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bn = getelementptr [8 x i8], ptr %i.ay, i64 %i.bi
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !44
  %i.bp = tail call i32 @ff_filter_frame(ptr noundef %i.x, ptr noundef %i.au) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.bp, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #4 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 268 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us, label %.loopexit

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %.promoted = load i32, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.m = icmp sgt i32 %.promoted, 0
  br i1 %i.m, label %.lr.ph41.preheader, label %.loopexit

.lr.ph41.preheader:                               ; preds = %.lr.ph.split.split.us
  %1 = zext nneg i32 %.promoted to i64
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.b
  %indvars.iv = phi i64 [ %1, %.lr.ph41.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37   ; 4 uses
  %.not25.us = icmp eq ptr %i.p, null
  br i1 %.not25.us, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph41
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %2, ptr %i.k, align 4, !tbaa !24
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.lr.ph41, label %.loopexit

.thread:                                          ; preds = %.lr.ph41
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8480
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 12576 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  store i64 %i.w, ptr %i.x, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4384
  %i.z = add nsw i32 %i.t, 1
  store i32 %i.z, ptr %i.s, align 8, !tbaa !54
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.u
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !45
  %i.ad = tail call i32 @ff_filter_frame(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #4
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !24  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  store ptr null, ptr %i.ah, align 8, !tbaa !37
  %storemerge29 = add nsw i32 %i.ae, -1
  store i32 %storemerge29, ptr %i.k, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.lr.ph, %.lr.ph.split.split.us, %.thread
  %.2 = phi i32 [ %i.ad, %.thread ], [ -541478725, %.lr.ph.split.split.us ], [ -541478725, %.lr.ph ], [ %i.g, %bb.a ], [ -541478725, %bb.b ]
  ret i32 %.2
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @av_get_random_seed() local_unnamed_addr #3

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!20 = !{!21, !23, i64 272}
!21 = !{!"RandomContext", !11, i64 0, !22, i64 8, !6, i64 268, !23, i64 272, !6, i64 280, !7, i64 288, !7, i64 4384, !7, i64 8480, !6, i64 12576}
!22 = !{!"AVLFG", !7, i64 0, !6, i64 256}
!23 = !{!"long", !7, i64 0}
!24 = !{!21, !6, i64 268}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !29, i64 16}
!28 = !{!"AVFilterLink", !29, i64 0, !15, i64 8, !29, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!29 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!33 = !{!"AVFilterFormatsConfig", !34, i64 0, !34, i64 8, !35, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!35 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!36 = !{!21, !6, i64 280}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!39 = !{!40, !23, i64 408}
!40 = !{!"AVFrame", !7, i64 0, !7, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !23, i64 136, !23, i64 144, !30, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !23, i64 304, !43, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !23, i64 344, !23, i64 352, !23, i64 360, !23, i64 368, !12, i64 376, !31, i64 384, !23, i64 408, !6, i64 416}
!41 = !{!"p2 omnipotent char", !17, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!23, !23, i64 0}
!45 = !{!40, !23, i64 136}
!46 = !{!10, !16, i64 56}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!49 = !{!22, !6, i64 256}
!50 = !{!6, !6, i64 0}
!51 = !{!28, !29, i64 0}
!52 = !{!10, !16, i64 32}
!53 = !{!10, !6, i64 104}
!54 = !{!21, !6, i64 12576}
end_hunk_0
