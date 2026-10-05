Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aac_ac3_parser?download=true
begin_hunk_0_@ff_aac_ac3_parse:bb.a
  br i1 %i.ad, label %.lr.ph, label %.thread, !llvm.loop !9

bb.f:                                             ; preds = %.lr.ph
  %i.ae = icmp slt i32 %i.ac, 1
  br i1 %i.ae, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = trunc nsw i64 %indvars.iv to i32
  store i64 0, ptr %i.m, align 8, !tbaa !25
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !29
  %.neg151 = add i32 %i.af, 1
  %i.ah = sub i32 %.neg151, %i.ag                 ; 6 uses
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !23
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !13
  %.not111 = icmp eq i32 %i.ai, 0
  br i1 %.not111, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !30
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = add nsw i32 %i.ah, %i.ac                ; 3 uses
  store i32 %i.am, ptr %i.j, align 8, !tbaa !23
  %.not107 = icmp sgt i32 %i.am, %5
  br i1 %.not107, label %.thread, label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.an = icmp slt i32 %i.ah, 0
  br i1 %i.an, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.ah, %i.ac
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.c, %bb.k
  %.sink = phi i32 [ %i.ao, %bb.k ], [ 0, %bb.c ]
  %.187.ph = phi i32 [ %i.ah, %bb.k ], [ %i.r, %bb.c ]
  %.184.ph = phi i32 [ 1, %bb.k ], [ %.083173, %bb.c ]
  store i32 %.sink, ptr %i.j, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.f, %bb.d, %bb.e, %.thread.sink.split, %.preheader, %bb.j
  %.187 = phi i32 [ %.187.ph, %.thread.sink.split ], [ -100, %.preheader ], [ %i.ah, %bb.j ], [ -100, %bb.e ], [ -100, %bb.d ], [ -100, %bb.f ], [ -100, %bb.i ] ; 3 uses
  %.184 = phi i32 [ %.184.ph, %.thread.sink.split ], [ 0, %.preheader ], [ 1, %bb.j ], [ %.083173, %bb.e ], [ %.083173, %bb.f ], [ %.083173, %bb.d ], [ 1, %bb.i ]
  %i.ap = call i32 @ff_combine_frame(ptr noundef nonnull %i.e, i32 noundef %.187, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !13  ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.as)
  %i.at = sub nsw i32 %i.ar, %.
  store i32 %i.at, ptr %i.j, align 8, !tbaa !23
  store ptr null, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %3, align 4, !tbaa !13
  br label %.thread148

bb.m:                                             ; preds = %.thread
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !12
  %i.av = load i32, ptr %i.b, align 4, !tbaa !13  ; 2 uses
  store i32 %i.av, ptr %3, align 4, !tbaa !13
  %.not112 = icmp eq i32 %.184, 0
  br i1 %.not112, label %.thread148, label %bb.n

bb.n:                                             ; preds = %.thread120, %bb.m
  %i.aw = phi i32 [ %5, %.thread120 ], [ %i.av, %bb.m ] ; 2 uses
  %i.ax = phi ptr [ %4, %.thread120 ], [ %i.au, %bb.m ] ; 2 uses
  %.288124 = phi i32 [ %5, %.thread120 ], [ %.187, %bb.m ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !46
  %.not113 = icmp eq i32 %i.az, 86018
  br i1 %.not113, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr %6, ptr %i.d, align 8, !tbaa !48
  %i.ba = call i32 @ff_ac3_find_syncword(ptr noundef %i.ax, i32 noundef %i.aw) #5 ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.thread138, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd ; 2 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !12
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !13
  %i.bg = sub nsw i32 %i.bf, %i.ba                ; 3 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !13
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph180, label %.loopexit

.lr.ph180:                                        ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 46
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = call i32 @avpriv_ac3_parse_header(ptr noundef nonnull %i.d, ptr noundef %i.be, i64 noundef %i.bj) #5
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.thread138, label %.lr.ph236

thread-pre-split:                                 ; preds = %bb.q
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bn = zext i16 %i.bt to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn ; 2 uses
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !12
  %i.bp = sub nuw nsw i32 %i.bv, %i.bu            ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !13
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = call i32 @avpriv_ac3_parse_header(ptr noundef nonnull %i.d, ptr noundef %i.bo, i64 noundef %i.bq) #5
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread138, label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph180, %thread-pre-split
  %i.bt = load i16, ptr %i.bi, align 2, !tbaa !51 ; 2 uses
  %i.bu = zext i16 %i.bt to i32                   ; 4 uses
  %i.bv = load i32, ptr %i.b, align 4, !tbaa !13  ; 3 uses
  %i.bw = icmp slt i32 %i.bv, %i.bu
  br i1 %i.bw, label %.thread138, label %bb.q

bb.q:                                             ; preds = %.lr.ph236
  %i.bx = icmp samesign ugt i32 %i.bv, %i.bu
  br i1 %i.bx, label %thread-pre-split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = add nsw i32 %i.bu, -2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = call i32 @av_crc(ptr noundef %i.bz, i32 noundef 0, ptr noundef nonnull %i.cb, i64 noundef %i.cd) #6
  %.not114 = icmp eq i32 %i.ce, 0
  br i1 %.not114, label %.loopexit, label %.thread138

.loopexit:                                        ; preds = %bb.p, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 38
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !53
  %i.ch = zext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !55
  %i.cl = icmp ugt i8 %i.ck, 10
  br i1 %i.cl, label %.thread135, label %bb.s

.thread135:                                       ; preds = %.loopexit
  store i32 86056, ptr %i.ay, align 8, !tbaa !46
  br label %bb.w

bb.s:                                             ; preds = %.loopexit
  %.pr134 = load i32, ptr %i.ay, align 8, !tbaa !46
  %.not115 = icmp eq i32 %.pr134, 86056
  br i1 %.not115, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.cm) #5
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !56 ; 2 uses
  %.not116 = icmp eq i64 %i.co, 0
  br i1 %.not116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.cm, i64 noundef %i.co) #5 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 0, ptr %i.cm, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !58
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !59
  br label %bb.w

.thread138:                                       ; preds = %.lr.ph236, %thread-pre-split, %.lr.ph180, %bb.o, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %.thread148

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u, %.thread135
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !60
  %i.cw = shl nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !62  ; 2 uses
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.dc = icmp eq i8 %i.cz, 7
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.de = load i8, ptr %i.dd, align 4
  %i.df = icmp ugt i8 %i.de, 1
  %or.cond = select i1 %i.dc, i1 %i.df, i1 false
  %spec.store.select = select i1 %or.cond, i32 8, i32 %i.da
  store i32 %spec.store.select, ptr %i.db, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.ac

bb.x:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.di = icmp slt i32 %i.aw, 7
  br i1 %i.di, label %.thread143, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = call i32 @ff_adts_header_parse_buf(ptr noundef %i.ax, ptr noundef nonnull %7) #5
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.thread143, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !64
  %i.dn = icmp eq i32 %i.dm, -99
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 13
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !66
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dl, align 8, !tbaa !64
  br label %bb.ab

.thread143:                                       ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %.thread148

bb.ab:                                            ; preds = %bb.z, %bb.aa
  store i32 1, ptr %i.f, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.2 = phi i32 [ %i.dh, %bb.w ], [ %i.dt, %bb.ab ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !68
  %i.dw = add nsw i32 %i.dv, 1                    ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !68
  %i.dx = load i32, ptr %i.ay, align 8, !tbaa !46
  %.not117 = icmp eq i32 %i.dx, 86056
  br i1 %.not117, label %.thread148, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = sext i32 %.2 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !69 ; 2 uses
  %i.eb = sub nsw i64 %i.dy, %i.ea
  %i.ec = sext i32 %i.dw to i64
  %i.ed = sdiv i64 %i.eb, %i.ec
  %i.ee = add nsw i64 %i.ed, %i.ea
  store i64 %i.ee, ptr %i.dz, align 8, !tbaa !69
  br label %.thread148

.thread148:                                       ; preds = %bb.ac, %bb.ad, %bb.m, %.thread138, %.thread143, %bb.l
  %.7 = phi i32 [ %.288124, %.thread138 ], [ %i.as, %bb.l ], [ %.288124, %.thread143 ], [ %.187, %bb.m ], [ %.288124, %bb.ad ], [ %.288124, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_ac3_find_syncword(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avpriv_ac3_parse_header(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_adts_header_parse_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !28}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"p1 _ZTS13AVCodecParser", !10, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"AVCodecParserContext", !10, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 120, !5, i64 152, !6, i64 184, !15, i64 192, !5, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !5, i64 248, !15, i64 280, !15, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!17 = !{!16, !10, i64 0}
!18 = !{!16, !6, i64 232}
!19 = !{!16, !6, i64 184}
!20 = !{!"ParseContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !15, i64 40}
!21 = !{!"p1 int", !10, i64 0}
!22 = !{!"AACAC3ParseContext", !20, i64 0, !6, i64 48, !10, i64 56, !21, i64 64, !6, i64 72, !15, i64 80, !6, i64 88, !6, i64 92}
!23 = !{!22, !6, i64 72}
!24 = !{!22, !6, i64 88}
!25 = !{!22, !15, i64 80}
!26 = !{!5, !5, i64 0}
!27 = !{!22, !10, i64 56}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!22, !6, i64 48}
!30 = !{!20, !6, i64 8}
!31 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!32 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!33 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!34 = !{!"AVRational", !6, i64 0, !6, i64 4}
!35 = !{!"float", !5, i64 0}
!36 = !{!"p1 short", !10, i64 0}
!37 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !10, i64 16}
!38 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!39 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!40 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!41 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!43 = !{!"any p2 pointer", !10, i64 0}
!44 = !{!"p2 _ZTS15AVFrameSideData", !43, i64 0}
!45 = !{!"AVCodecContext", !31, i64 0, !6, i64 8, !6, i64 12, !32, i64 16, !6, i64 24, !6, i64 28, !10, i64 32, !33, i64 40, !10, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !34, i64 84, !34, i64 92, !34, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !34, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !10, i64 184, !10, i64 192, !6, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !36, i64 288, !36, i64 296, !36, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !37, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !10, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !35, i64 428, !35, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !38, i64 456, !15, i64 464, !15, i64 472, !35, i64 480, !35, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !39, i64 536, !10, i64 544, !40, i64 552, !40, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !10, i64 672, !10, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !41, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !42, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !10, i64 816, !15, i64 824, !21, i64 832, !6, i64 840, !44, i64 848, !6, i64 856, !6, i64 860}
!46 = !{!45, !6, i64 24}
!47 = !{!"p1 _ZTS13AC3HeaderInfo", !10, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"short", !5, i64 0}
!50 = !{!"AC3HeaderInfo", !49, i64 0, !49, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !49, i64 26, !6, i64 28, !6, i64 32, !5, i64 36, !49, i64 38, !6, i64 40, !5, i64 44, !49, i64 46, !15, i64 48, !5, i64 56, !5, i64 57, !5, i64 59, !5, i64 61, !5, i64 63, !5, i64 64, !5, i64 65, !5, i64 66, !5, i64 67, !5, i64 68, !5, i64 69, !5, i64 70, !5, i64 71}
!51 = !{!50, !49, i64 46}
!52 = !{!22, !21, i64 64}
!53 = !{!50, !49, i64 38}
!54 = !{!45, !6, i64 344}
!55 = !{!50, !5, i64 5}
!56 = !{!50, !15, i64 48}
!57 = !{!45, !6, i64 352}
!58 = !{!50, !5, i64 44}
!59 = !{!45, !6, i64 356}
!60 = !{!50, !6, i64 28}
!61 = !{!16, !6, i64 296}
!62 = !{!50, !5, i64 6}
!63 = !{!50, !6, i64 40}
!64 = !{!45, !6, i64 688}
!65 = !{!"AACADTSHeaderInfo", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !6, i64 20}
!66 = !{!65, !5, i64 13}
!67 = !{!65, !6, i64 8}
!68 = !{!22, !6, i64 92}
!69 = !{!45, !15, i64 56}
end_hunk_0
