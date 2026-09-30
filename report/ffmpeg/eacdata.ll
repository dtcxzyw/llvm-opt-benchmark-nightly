Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/eacdata?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ea_cdata\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Electronic Arts cdata\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@ff_ea_cdata_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr @.str.2, ptr null, ptr null, ptr null }, i32 0, i32 8, i32 0, [4 x i8] zeroinitializer, ptr @cdata_probe, ptr @cdata_read_header, ptr @cdata_read_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"unknown header 0x%04x\0A\00", align 1
@switch.table.cdata_probe = private unnamed_addr constant [21 x i8] c"\0C\00\00\00\0C\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\0C", align 4
@switch.table.cdata_read_header = private unnamed_addr constant [21 x i8] [i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1], align 4
@switch.table.cdata_read_header.1 = private unnamed_addr constant [21 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 6], align 4
@switch.table.cdata_read_header.2 = private unnamed_addr constant [21 x i8] [i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 51, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 63], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 13) i32 @cdata_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11    ; 2 uses
  %i.g = icmp ult i8 %i.f, 21
  br i1 %i.g, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.h = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cdata_probe, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @cdata_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = tail call i32 @avio_rb16(ptr noundef %i.d) #3 ; 2 uses
  %switch.tableidx = add i32 %i.e, -1024          ; 5 uses
  %i.f = icmp ult i32 %switch.tableidx, 21
  %switch.shifted = lshr i32 1052689, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.e) #3
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.cdata_read_header, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep37 = getelementptr inbounds nuw i8, ptr @switch.table.cdata_read_header.1, i64 %i.h
  %switch.load38 = load i8, ptr %switch.gep37, align 1
  %switch.ext39 = zext i8 %switch.load38 to i32   ; 2 uses
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep40 = getelementptr inbounds nuw i8, ptr @switch.table.cdata_read_header.2, i64 %i.i
  %switch.load41 = load i8, ptr %switch.gep40, align 1
  store i32 %switch.ext39, ptr %i.b, align 4, !tbaa !29
  %i.j = tail call i32 @avio_rb16(ptr noundef %i.d) #3 ; 2 uses
  %i.k = tail call i32 @avio_r8(ptr noundef %i.d) #3
  %i.l = and i32 %i.k, 32
  %.not = icmp eq i32 %i.l, 0
  %1 = select i1 %.not, i64 11, i64 15
  %i.m = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef %1) #3 ; 0 uses
  %i.n = tail call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #3 ; 3 uses
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %switch.ext42 = zext i8 %switch.load41 to i64
  %switch.ext = zext i8 %switch.load to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 7 uses
  store i32 1, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 69657, ptr %i.r, align 4, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store i32 %switch.ext, ptr %i.s, align 8, !tbaa !45
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  store i32 %switch.ext39, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !45
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store i64 %switch.ext42, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !11
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  store ptr null, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !46
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store i32 %i.j, ptr %i.u, align 8, !tbaa !47
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.n, i32 noundef 64, i32 noundef 1, i32 noundef %i.j) #3
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -12, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @cdata_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29
  %i.d = mul i32 %i.c, 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = tail call i32 @av_get_packet(ptr noundef %i.f, ptr noundef %1, i32 noundef %i.d) #3 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 2 uses
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !34
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.g, %bb.a ]
  ret i32 %.0
}

declare i32 @avio_rb16(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!16 = !{!"any p2 pointer", !9, i64 0}
!17 = !{!"p2 _ZTS8AVStream", !16, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !16, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !16, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p2 _ZTS9AVProgram", !16, i64 0}
!22 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!23 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!24 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!25 = !{!"AVFormatContext", !12, i64 0, !13, i64 8, !14, i64 16, !9, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !17, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !10, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !20, i64 136, !20, i64 144, !10, i64 152, !6, i64 160, !6, i64 164, !21, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !22, i64 192, !20, i64 200, !6, i64 208, !6, i64 212, !23, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !20, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !24, i64 376, !24, i64 384, !24, i64 392, !24, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !20, i64 432, !10, i64 440, !9, i64 448, !9, i64 456, !20, i64 464, !10, i64 472}
!26 = !{!25, !9, i64 24}
!27 = !{!25, !15, i64 32}
!28 = !{!"CdataDemuxContext", !6, i64 0, !6, i64 4}
!29 = !{!28, !6, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!32 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!33 = !{!"AVPacket", !31, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !32, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !9, i64 80, !31, i64 88, !30, i64 96}
!34 = !{!28, !6, i64 4}
!35 = !{!"AVProbeData", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!36 = !{!35, !10, i64 8}
!37 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!38 = !{!"AVStream", !12, i64 0, !6, i64 8, !6, i64 12, !37, i64 16, !9, i64 24, !30, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !30, i64 72, !22, i64 80, !30, i64 88, !33, i64 96, !6, i64 200, !30, i64 204, !6, i64 212}
!39 = !{!38, !37, i64 16}
!40 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!41 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !6, i64 24, !32, i64 32, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !30, i64 80, !30, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !40, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!42 = !{!41, !6, i64 0}
!43 = !{!41, !6, i64 8}
!44 = !{!41, !6, i64 4}
!45 = !{!6, !6, i64 0}
!46 = !{!9, !9, i64 0}
!47 = !{!41, !6, i64 152}
!48 = !{!33, !20, i64 8}
end_hunk_0
