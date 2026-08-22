Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iss?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"iss\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Funcom ISS\00", align 1
@ff_iss_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 8, i32 0, [4 x i8] zeroinitializer, ptr @iss_probe, ptr @iss_read_header, ptr @iss_read_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"IMA_ADPCM_Sound\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed parsing packet size\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed parsing stereo flag\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed parsing rate_divisor\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"packet_size %d is invalid\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @iss_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(16) @.str.2, i64 noundef 15) #7
  %.not = icmp eq i32 %i.c, 0
  %. = select i1 %.not, i32 100, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @iss_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 15 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  %i.h = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef %i.e) #8
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) #8
  %.not45 = icmp eq i32 %i.i, 1
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) #8
  %.not46 = icmp eq i32 %i.j, 1
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  call fastcc void @get_token(ptr noundef %i.g, ptr noundef %i.a)
  %i.k = load i32, ptr %i.e, align 4, !tbaa !29   ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.k) #8
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.m = call i64 @avio_seek(ptr noundef %i.g, i64 noundef 0, i32 noundef 1) #8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !31
  %i.p = call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #8 ; 3 uses
  %.not47 = icmp eq ptr %i.p, null
  br i1 %.not47, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 5 uses
  store <2 x i32> <i32 1, i32 69659>, ptr %i.r, align 8, !tbaa !39
  %i.s = load i32, ptr %i.b, align 4, !tbaa !39
  %.not48 = icmp eq i32 %i.s, 0                   ; 2 uses
  %spec.select = select i1 %.not48, i32 1, i32 2
  %spec.select53 = select i1 %.not48, i64 4, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store i32 1, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  store i32 %spec.select, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %spec.select53, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr null, ptr %i.w, align 8, !tbaa !41
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !32   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152 ; 2 uses
  store i32 44100, ptr %i.y, align 8, !tbaa !42
  %i.z = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = udiv i32 44100, %i.z                    ; 2 uses
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi i32 [ %i.ab, %bb.k ], [ 44100, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 4, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.ag = shl i32 %i.af, 2
  %i.ah = mul i32 %i.ag, %i.ac
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 156
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !48
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.p, i32 noundef 32, i32 noundef 1, i32 noundef %i.ac) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ -1094995529, %bb.f ], [ -1094995529, %bb.h ], [ 0, %bb.l ], [ -12, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @iss_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = load i32, ptr %i.b, align 4, !tbaa !29
  %i.f = tail call i32 @av_get_packet(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.e) #8
  %i.g = load i32, ptr %i.b, align 4, !tbaa !29
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !49
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.j = tail call i64 @avio_seek(ptr noundef %i.i, i64 noundef 0, i32 noundef 1) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = shl nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sdiv i64 %i.n, %i.y
  store i64 %i.z, ptr %i.o, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -1094995529, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @get_token(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @avio_r8(ptr noundef %0) #8 ; 2 uses
  %i.b = trunc i32 %i.a to i8                     ; 2 uses
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %sext.mask13 = and i32 %i.a, 255
  %i.d = icmp eq i32 %sext.mask13, 32
  %or.cond14 = or i1 %i.c, %i.d
  br i1 %or.cond14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi i8 [ %i.k, %bb.c ], [ %i.b, %bb.a ]
  %.015 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 4 uses
  %i.f = icmp slt i32 %.015, 19
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nsw i32 %.015, 1
  %i.h = sext i32 %.015 to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  store i8 %i.e, ptr %i.i, align 1, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.015, %.lr.ph ] ; 2 uses
  %i.j = tail call i32 @avio_r8(ptr noundef %0) #8 ; 2 uses
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = icmp eq i8 %i.k, 0                       ; 2 uses
  %sext.mask = and i32 %i.j, 255
  %i.m = icmp eq i32 %sext.mask, 32
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.n = sext i32 %.1 to i64                      ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.loopexit, %._crit_edge
  %.0.lcssa20 = phi i64 [ %i.n, %._crit_edge.loopexit ], [ 0, %._crit_edge ]
  %i.o = tail call i32 @avio_r8(ptr noundef %0) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.loopexit, %bb.d, %._crit_edge
  %.0.lcssa19 = phi i64 [ %i.n, %._crit_edge.loopexit ], [ %.0.lcssa20, %bb.d ], [ 0, %._crit_edge ]
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.0.lcssa19
  store i8 0, ptr %i.p, align 1, !tbaa !40
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #6

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !12, i64 24}
!14 = !{!"AVFormatContext", !15, i64 0, !16, i64 8, !17, i64 16, !12, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !6, i64 56, !21, i64 64, !6, i64 72, !22, i64 80, !11, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !23, i64 136, !23, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !24, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !25, i64 192, !23, i64 200, !6, i64 208, !6, i64 212, !26, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !23, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !23, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !27, i64 376, !27, i64 384, !27, i64 392, !27, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !23, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !23, i64 464, !11, i64 472}
!15 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!16 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!17 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!18 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!19 = !{!"p2 _ZTS8AVStream", !20, i64 0}
!20 = !{!"any p2 pointer", !12, i64 0}
!21 = !{!"p2 _ZTS13AVStreamGroup", !20, i64 0}
!22 = !{!"p2 _ZTS9AVChapter", !20, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p2 _ZTS9AVProgram", !20, i64 0}
!25 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!26 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!27 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!28 = !{!14, !18, i64 32}
!29 = !{!30, !6, i64 0}
!30 = !{!"IssDemuxContext", !6, i64 0, !6, i64 4}
!31 = !{!30, !6, i64 4}
!32 = !{!33, !34, i64 16}
!33 = !{!"AVStream", !15, i64 0, !6, i64 8, !6, i64 12, !34, i64 16, !12, i64 24, !35, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !6, i64 64, !6, i64 68, !35, i64 72, !25, i64 80, !35, i64 88, !36, i64 96, !6, i64 200, !35, i64 204, !6, i64 212}
!34 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!35 = !{!"AVRational", !6, i64 0, !6, i64 4}
!36 = !{!"AVPacket", !37, i64 0, !23, i64 8, !23, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !38, i64 48, !6, i64 56, !23, i64 64, !23, i64 72, !12, i64 80, !37, i64 88, !35, i64 96}
!37 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!38 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!43, !6, i64 152}
!43 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !38, i64 32, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !35, i64 80, !35, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !44, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!44 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!45 = !{!43, !6, i64 56}
!46 = !{!43, !6, i64 132}
!47 = !{!43, !23, i64 48}
!48 = !{!43, !6, i64 156}
!49 = !{!36, !6, i64 36}
!50 = !{!36, !23, i64 8}
!51 = !{!14, !19, i64 48}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
end_hunk_0
