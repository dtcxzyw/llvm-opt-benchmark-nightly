Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flvenc?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVClass = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%union.anon.2 = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"FLV / Sorenson Spark / Sorenson H.263 (Flash Video)\00", align 1
@ff_mpv_enc_class = external constant %struct.AVClass, align 8
@.compoundliteral = internal constant [2 x i32] [i32 0, i32 -1], align 4
@ff_flv_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 21, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr @ff_mpv_enc_class, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 98, i32 10992, ptr null, ptr null, ptr null, ptr @ff_mpv_encode_init, %union.anon.2 { ptr @ff_mpv_encode_picture }, ptr @ff_mpv_encode_end, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @ff_flv_encode_picture_header(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
put_bits.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 4388       ; 3 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !12
  %i.d = shl i32 %i.c, 30
  %1 = or disjoint i32 %i.d, 8448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.h, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61
  %i.q = sext i32 %i.p to i64
  %i.r = sdiv i64 %i.n, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 255
  %i.u = or disjoint i32 %i.t, %1                 ; 4 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !12
  store i32 2, ptr %i.b, align 4, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.w = load i32, ptr %i.v, align 16, !tbaa !63  ; 2 uses
  %i.x = add i32 %i.w, -128                       ; 2 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 28)
  switch i32 %i.y, label %.thread94 [
    i32 14, label %bb.a
    i32 3, label %bb.b
    i32 0, label %bb.c
    i32 12, label %bb.d
    i32 2, label %bb.e
  ]

bb.a:                                             ; preds = %put_bits.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %i.ab = icmp eq i32 %i.aa, 288
  br i1 %i.ab, label %.critedge38, label %.thread94.thread97

bb.b:                                             ; preds = %put_bits.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !64 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 144
  br i1 %i.ae, label %.critedge38, label %.thread95

bb.c:                                             ; preds = %put_bits.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !64 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 96
  br i1 %i.ah, label %.critedge38, label %.thread95

bb.d:                                             ; preds = %put_bits.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64
  %i.ak = icmp eq i32 %i.aj, 240
  br i1 %i.ak, label %.critedge38, label %.thread94.thread97

bb.e:                                             ; preds = %put_bits.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64 ; 2 uses
  %i.an = icmp eq i32 %i.am, 120
  br i1 %i.an, label %.critedge38, label %.thread95

.thread94:                                        ; preds = %put_bits.exit
  %i.ao = icmp slt i32 %i.w, 256
  br i1 %i.ao, label %.thread94..thread95_crit_edge, label %.thread94.thread97

.thread94..thread95_crit_edge:                    ; preds = %.thread94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %.thread95

.thread95:                                        ; preds = %.thread94..thread95_crit_edge, %bb.b, %bb.c, %bb.e
  %i.ap = phi i32 [ %.pre, %.thread94..thread95_crit_edge ], [ %i.ad, %bb.b ], [ %i.ag, %bb.c ], [ %i.am, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ar = icmp slt i32 %i.ap, 256
  br i1 %i.ar, label %.critedge, label %.thread94.thread97

.thread94.thread97:                               ; preds = %.thread95, %.thread94, %bb.d, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 6 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !66 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.ay, 3
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread94.thread97
  %i.ba = shl i32 %i.u, 2
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bb, ptr %i.av, align 1, !tbaa !67
  %i.bc = load ptr, ptr %i.au, align 16, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  store ptr %i.bd, ptr %i.au, align 16, !tbaa !66
  br label %put_bits.exit50

bb.g:                                             ; preds = %.thread94.thread97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #3
  %.pre100 = load ptr, ptr %i.au, align 16, !tbaa !66
  br label %put_bits.exit50

put_bits.exit50:                                  ; preds = %bb.f, %bb.g
  %i.be = phi ptr [ %i.bd, %bb.f ], [ %.pre100, %bb.g ] ; 2 uses
  %i.bf = load i32, ptr %i.v, align 16, !tbaa !63
  %i.bg = or i32 %i.bf, 65536                     ; 2 uses
  store i32 %i.bg, ptr %i.a, align 16, !tbaa !12
  store i32 15, ptr %i.b, align 4, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 3 uses
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ugt i64 %i.bm, 3
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %put_bits.exit50
  %i.bo = shl i32 %i.bg, 15
  %i.bp = lshr i32 %i.bi, 1
  %i.bq = or i32 %i.bp, %i.bo
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  store i32 %i.br, ptr %i.be, align 1, !tbaa !67
  %i.bs = load ptr, ptr %i.au, align 16, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store ptr %i.bt, ptr %i.au, align 16, !tbaa !66
  br label %put_bits.exit90

bb.i:                                             ; preds = %put_bits.exit50
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #3
  br label %put_bits.exit90

.critedge:                                        ; preds = %.thread95
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !66 ; 2 uses
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ugt i64 %i.ca, 3
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.cc = shl i32 %i.u, 2
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  store i32 %i.cd, ptr %i.bx, align 1, !tbaa !67
  %i.ce = load ptr, ptr %i.bw, align 16, !tbaa !66
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.bw, align 16, !tbaa !66
  br label %put_bits.exit62

bb.k:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #3
  br label %put_bits.exit62

put_bits.exit62:                                  ; preds = %bb.j, %bb.k
  %i.cg = load i32, ptr %i.v, align 16, !tbaa !63
  %i.ch = load i32, ptr %i.aq, align 4, !tbaa !64
  %i.ci = shl i32 %i.cg, 8
  %i.cj = or i32 %i.ch, %i.ci
  br label %put_bits.exit90

.critedge38:                                      ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.0.ph = phi i32 [ 5, %bb.d ], [ 4, %bb.c ], [ 3, %bb.b ], [ 2, %bb.a ], [ 6, %bb.e ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !66 ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge38
  %i.cs = shl i32 %i.u, 2
  %i.ct = lshr i32 %.0.ph, 1
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  store i32 %i.cv, ptr %i.cn, align 1, !tbaa !67
  %i.cw = load ptr, ptr %i.cm, align 16, !tbaa !66
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store ptr %i.cx, ptr %i.cm, align 16, !tbaa !66
  br label %put_bits.exit90

bb.m:                                             ; preds = %.critedge38
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #3
  br label %put_bits.exit90

put_bits.exit90:                                  ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %put_bits.exit62
  %i.cy = phi i32 [ 22, %bb.i ], [ 6, %put_bits.exit62 ], [ 22, %bb.h ], [ 22, %bb.l ], [ 22, %bb.m ]
  %i.cz = phi i32 [ %i.bi, %bb.i ], [ %i.cj, %put_bits.exit62 ], [ %i.bi, %bb.h ], [ %.0.ph, %bb.l ], [ %.0.ph, %bb.m ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.db = load i32, ptr %i.da, align 16, !tbaa !68
  %i.dc = icmp eq i32 %i.db, 2
  %i.dd = shl i32 %i.cz, 8
  %i.de = select i1 %i.dc, i32 64, i32 0
  %2 = or disjoint i32 %i.dd, %i.de
  %i.df = or disjoint i32 %2, 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !69
  %i.di = or i32 %i.dh, %i.df
  %i.dj = shl i32 %i.di, 1
  store i32 %i.dj, ptr %i.a, align 16, !tbaa !12
  store i32 %i.cy, ptr %i.b, align 4, !tbaa !62
  ret i32 0
}

declare i32 @ff_mpv_encode_init(ptr noundef) #1

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ff_mpv_encode_end(ptr noundef) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!11, !6, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!14 = !{!"ScanTable", !10, i64 0, !5, i64 8, !5, i64 72}
!15 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!18 = !{!"BufferPoolContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!19 = !{!"p1 _ZTS10MPVPicture", !9, i64 0}
!20 = !{!"p1 int", !9, i64 0}
!21 = !{!"MPVWorkPicture", !5, i64 0, !5, i64 24, !19, i64 48, !10, i64 56, !5, i64 64, !20, i64 80, !10, i64 88, !5, i64 96, !6, i64 112}
!22 = !{!"p1 short", !9, i64 0}
!23 = !{!"ScratchpadContext", !10, i64 0, !10, i64 8, !5, i64 16, !6, i64 24}
!24 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!25 = !{!"H264ChromaContext", !5, i64 0, !5, i64 32}
!26 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!27 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!28 = !{!"QpelDSPContext", !5, i64 0, !5, i64 256, !5, i64 512}
!29 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!30 = !{!"H263DSPContext", !9, i64 0, !9, i64 8}
!31 = !{!"short", !5, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!33 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!34 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!35 = !{!"ERPicture", !32, i64 0, !33, i64 8, !34, i64 16, !5, i64 24, !5, i64 40, !20, i64 56, !6, i64 64}
!36 = !{!"ERContext", !15, i64 0, !9, i64 8, !20, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !16, i64 48, !5, i64 56, !6, i64 60, !10, i64 64, !10, i64 72, !5, i64 80, !10, i64 104, !10, i64 112, !5, i64 120, !35, i64 184, !35, i64 256, !35, i64 328, !5, i64 400, !5, i64 416, !31, i64 432, !31, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!37 = !{!"MpegEncContext", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !6, i64 68, !14, i64 72, !14, i64 208, !15, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !16, i64 416, !16, i64 424, !17, i64 432, !18, i64 440, !6, i64 496, !6, i64 500, !5, i64 504, !6, i64 760, !21, i64 768, !21, i64 888, !21, i64 1008, !22, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !22, i64 1176, !22, i64 1184, !22, i64 1192, !6, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !10, i64 1232, !23, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !24, i64 1288, !25, i64 1320, !26, i64 1384, !27, i64 1768, !28, i64 1888, !29, i64 2656, !30, i64 2672, !22, i64 2688, !5, i64 2696, !6, i64 2728, !6, i64 2732, !5, i64 2736, !5, i64 2800, !5, i64 2816, !5, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !5, i64 3120, !5, i64 3144, !5, i64 3168, !20, i64 3192, !5, i64 3200, !5, i64 3328, !5, i64 3456, !5, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !16, i64 3744, !16, i64 3752, !31, i64 3760, !31, i64 3762, !31, i64 3764, !31, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !5, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !5, i64 3872, !6, i64 3880, !6, i64 3884, !9, i64 3888, !9, i64 3896, !6, i64 3904, !6, i64 3908, !36, i64 3912}
!38 = !{!"p1 _ZTS17MPVMainEncContext", !9, i64 0}
!39 = !{!"FDCTDSPContext", !9, i64 0, !9, i64 8}
!40 = !{!"MpegvideoEncDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !9, i64 72}
!41 = !{!"PixblockDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!42 = !{!"any p2 pointer", !9, i64 0}
!43 = !{!"MotionEstContext", !15, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 48, !10, i64 80, !10, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !5, i64 168, !5, i64 296, !6, i64 424, !6, i64 428, !16, i64 432, !16, i64 440, !6, i64 448, !5, i64 456, !5, i64 504, !5, i64 552, !5, i64 600, !5, i64 648, !9, i64 712, !42, i64 720, !42, i64 728, !42, i64 736, !42, i64 744, !10, i64 752, !10, i64 760, !9, i64 768, !5, i64 776, !5, i64 1032}
!44 = !{!"p1 _ZTS12MJpegContext", !9, i64 0}
!45 = !{!"MPVEncContext", !37, i64 0, !11, i64 4384, !6, i64 4416, !6, i64 4420, !20, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !32, i64 4464, !38, i64 4472, !39, i64 4480, !40, i64 4496, !41, i64 4576, !43, i64 4608, !6, i64 5896, !6, i64 5900, !22, i64 5904, !22, i64 5912, !22, i64 5920, !22, i64 5928, !22, i64 5936, !22, i64 5944, !5, i64 5952, !5, i64 6016, !5, i64 6032, !22, i64 6064, !22, i64 6072, !22, i64 6080, !10, i64 6088, !5, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !10, i64 6144, !10, i64 6152, !10, i64 6160, !10, i64 6168, !10, i64 6176, !10, i64 6184, !10, i64 6192, !5, i64 6200, !22, i64 6248, !20, i64 6256, !20, i64 6264, !20, i64 6272, !22, i64 6280, !22, i64 6288, !22, i64 6296, !20, i64 6304, !5, i64 6312, !22, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !5, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !10, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !44, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !11, i64 6456, !11, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !10, i64 6544, !9, i64 6552, !9, i64 6560, !5, i64 6568, !5, i64 6584, !5, i64 6600, !5, i64 6616, !9, i64 6632, !6, i64 6640, !5, i64 6644, !5, i64 6708, !5, i64 6784}
!46 = !{!45, !6, i64 6328}
!47 = !{!45, !15, i64 344}
!48 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!49 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!50 = !{!"AVRational", !6, i64 0, !6, i64 4}
!51 = !{!"float", !5, i64 0}
!52 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!53 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!54 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!55 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!56 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!57 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!58 = !{!"p2 _ZTS15AVFrameSideData", !42, i64 0}
!59 = !{!"AVCodecContext", !13, i64 0, !6, i64 8, !6, i64 12, !48, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !49, i64 40, !9, i64 48, !16, i64 56, !6, i64 64, !6, i64 68, !10, i64 72, !6, i64 80, !50, i64 84, !50, i64 92, !50, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !50, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !22, i64 288, !22, i64 296, !22, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !52, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !51, i64 428, !51, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !53, i64 456, !16, i64 464, !16, i64 472, !51, i64 480, !51, i64 484, !6, i64 488, !6, i64 492, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !54, i64 536, !9, i64 544, !55, i64 552, !55, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !56, i64 728, !10, i64 736, !6, i64 744, !6, i64 748, !10, i64 752, !10, i64 760, !10, i64 768, !57, i64 776, !6, i64 784, !6, i64 788, !16, i64 792, !6, i64 800, !6, i64 804, !16, i64 808, !9, i64 816, !16, i64 824, !20, i64 832, !6, i64 840, !58, i64 848, !6, i64 856, !6, i64 860}
!60 = !{!59, !6, i64 84}
!61 = !{!59, !6, i64 88}
!62 = !{!11, !6, i64 4}
!63 = !{!45, !6, i64 352}
!64 = !{!45, !6, i64 356}
!65 = !{!11, !10, i64 24}
!66 = !{!11, !10, i64 16}
!67 = !{!5, !5, i64 0}
!68 = !{!45, !6, i64 1280}
!69 = !{!45, !6, i64 1272}
end_hunk_0
