begin_hunk_0_@IDecode:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !84
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.hd = call i32 %i.hb(ptr noundef nonnull %i.hc) #7, !inline_history !86
  %.not54.i = icmp eq i32 %i.hd, 0
  br i1 %.not54.i, label %bb.au, label %bb.aw

end_hunk_0
begin_hunk_1_@IDecode:bb.a
  store i32 %i.hv, ptr %i.fh, align 8, !tbaa !77
  %i.hw = load i32, ptr %i.fi, align 8, !tbaa !78
  %i.hx = icmp slt i32 %i.hv, %i.hw
  br i1 %i.hx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %bb.az, %bb.an
  call void @VP8InitScanline(ptr noundef nonnull %i.ew) #7
end_hunk_1
begin_hunk_2_@IDecode:bb.a
  store i32 %i.ie, ptr %i.fa, align 4, !tbaa !75
  %i.if = load i32, ptr %i.fb, align 4, !tbaa !76
  %i.ig = icmp slt i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.ai, label %._crit_edge70.i, !llvm.loop !89

._crit_edge70.i:                                  ; preds = %bb.bc, %.preheader.i
  %i.ih = call i32 @VP8ExitCritical(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ex) #7
end_hunk_2
begin_hunk_3_@IDecode:bb.a

bb.be:                                            ; preds = %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.in = load i32, ptr %i.im, align 4, !tbaa !90
  %.not24.i.i = icmp eq i32 %i.in, 0
  br i1 %.not24.i.i, label %bb.bg, label %bb.bf

end_hunk_3
begin_hunk_4_@IDecode:bb.a

.thread.i.i:                                      ; preds = %bb.bh
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.il, ptr noundef nonnull align 8 dereferenceable(120) %i.it, i64 120, i1 false), !tbaa.struct !92
  store ptr null, ptr %i.ip, align 8, !tbaa !23
  br label %DecodeRemaining.exit.thread

end_hunk_4
begin_hunk_5_@IDecode:bb.a
  br i1 %.not.i27, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.jj = load i32, ptr %i.iy, align 8, !tbaa !93 ; 3 uses
  %i.jk = icmp eq i32 %i.jj, 3
  br i1 %i.jk, label %bb.bm, label %bb.bn

end_hunk_5
begin_hunk_6_@IDecode:bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !70
  %i.jx = call i32 @WebPAllocateDecBuffer(i32 noundef %i.js, i32 noundef %i.ju, ptr noundef %i.jw, ptr noundef %i.ja) #7 ; 3 uses
  store i32 %i.jx, ptr %i.iy, align 8, !tbaa !93
  %.not29.i = icmp eq i32 %i.jx, 0
  br i1 %.not29.i, label %DecodeVP8LHeader.exit.thread50, label %bb.bq

end_hunk_6
begin_hunk_7_@IDecode:bb.a
  br label %bb.bs

DecodeVP8LHeader.exit.sink.split:                 ; preds = %bb.bm, %bb.bj
  store i32 5, ptr %i.iy, align 8, !tbaa !93
  br label %DecodeVP8LHeader.exit

DecodeVP8LHeader.exit:                            ; preds = %DecodeVP8LHeader.exit.sink.split, %bb.r, %bb.bn, %bb.bi
end_hunk_7
begin_hunk_8_@IDecode:bb.a
  %i.kk = icmp ult i64 %i.kh, %i.kj
  %i.kl = zext i1 %i.kk to i32
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !104
  %i.kn = call i32 @VP8LDecodeImage(ptr noundef %i.ke) #7
  %.not.i32 = icmp eq i32 %i.kn, 0
  %i.ko = load i32, ptr %i.ke, align 8, !tbaa !93 ; 3 uses
  br i1 %.not.i32, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
end_hunk_8
begin_hunk_9_@IDecode:bb.a

bb.by:                                            ; preds = %bb.bx
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !90
  %.not24.i.i34 = icmp eq i32 %i.lb, 0
  br i1 %.not24.i.i34, label %bb.ca, label %bb.bz

end_hunk_9
begin_hunk_10_@IDecode:bb.a

.thread.i.i39:                                    ; preds = %bb.cb
  %i.lh = load ptr, ptr %i.ld, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.kz, ptr noundef nonnull align 8 dereferenceable(120) %i.lh, i64 120, i1 false), !tbaa.struct !92
  store ptr null, ptr %i.ld, align 8, !tbaa !23
  br label %DecodeRemaining.exit

end_hunk_10
begin_hunk_11_@WebPIDecodedArea:bb.a

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !105
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

end_hunk_11
begin_hunk_12_@WebPIDecodedArea:bb.a

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !106
  br label %.sink.split

bb.n:                                             ; preds = %bb.i
end_hunk_12
begin_hunk_13_@WebPIDecGetRGB:bb.a

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !106
  store i32 %i.o, ptr %1, align 4, !tbaa !3
  br label %bb.h

end_hunk_13
begin_hunk_14_@WebPIDecGetRGB:bb.a

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !105
  store i32 %i.q, ptr %2, align 4, !tbaa !3
  br label %bb.j

end_hunk_14
begin_hunk_15_@WebPIDecGetRGB:bb.a

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !107
  store i32 %i.s, ptr %3, align 4, !tbaa !3
  br label %bb.l

end_hunk_15
begin_hunk_16_@WebPIDecGetYUVA:bb.a

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !106
  store i32 %i.o, ptr %1, align 4, !tbaa !3
  br label %bb.h

end_hunk_16
begin_hunk_17_@WebPIDecGetYUVA:bb.a

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !105
  store i32 %i.w, ptr %5, align 4, !tbaa !3
  br label %bb.p

end_hunk_17
begin_hunk_18_@WebPIDecGetYUVA:bb.a

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !107
  store i32 %i.y, ptr %6, align 4, !tbaa !3
  br label %bb.r

end_hunk_18
begin_hunk_19_@WebPISetIOHooks:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.d, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %3, ptr %i.e, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %4, ptr %i.f, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
end_hunk_19
begin_hunk_20_@DoRemap:bb.a
  tail call void @VP8RemapBitReader(ptr noundef nonnull %i.s, i64 noundef %1) #7
  %i.t = add i32 %.061, 1                         ; 2 uses
  %.not51 = icmp ugt i32 %i.t, %i.p
  br i1 %.not51, label %bb.e, label %bb.d, !llvm.loop !112

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.a, align 8, !tbaa !21
end_hunk_20
begin_hunk_21_@DoRemap:bb.a

bb.l:                                             ; preds = %NeedCompressedAlpha.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 2960
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 2968 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %1 ; 2 uses
end_hunk_21
begin_hunk_22_@DoRemap:bb.a

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %.not55 = icmp eq ptr %i.aw, null
  br i1 %.not55, label %NeedCompressedAlpha.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !117
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.o, label %NeedCompressedAlpha.exit.thread

end_hunk_22
begin_hunk_23_@VP8LDecodeImage
!83 = !{!12, !12, i64 0}
!84 = !{!85, !11, i64 16}
!85 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!86 = distinct !{null}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = distinct !{!89, !88}
!90 = !{!91, !4, i64 48}
!91 = !{!"WebPDecoderOptions", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !5, i64 56}
!92 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 80, !32, i64 96, i64 16, !32, i64 112, i64 8, !83}
!93 = !{!94, !4, i64 0}
!94 = !{!"VP8LDecoder", !4, i64 0, !4, i64 4, !95, i64 8, !10, i64 16, !96, i64 24, !96, i64 32, !97, i64 40, !4, i64 80, !97, i64 88, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !98, i64 152, !4, i64 272, !5, i64 280, !4, i64 376, !12, i64 384, !14, i64 392}
!95 = !{!"p1 _ZTS5VP8Io", !11, i64 0}
!96 = !{!"p1 int", !11, i64 0}
!97 = !{!"", !16, i64 0, !12, i64 8, !16, i64 16, !16, i64 24, !4, i64 32, !4, i64 36}
!98 = !{!"", !4, i64 0, !99, i64 8, !99, i64 24, !4, i64 40, !4, i64 44, !4, i64 48, !96, i64 56, !4, i64 64, !100, i64 72, !101, i64 80}
!99 = !{!"", !96, i64 0, !4, i64 8, !4, i64 12}
!100 = !{!"p1 _ZTS10HTreeGroup", !11, i64 0}
!101 = !{!"HuffmanTables", !102, i64 0, !103, i64 32}
!102 = !{!"HuffmanTablesSegment", !11, i64 0, !11, i64 8, !103, i64 16, !4, i64 24}
!103 = !{!"p1 _ZTS20HuffmanTablesSegment", !11, i64 0}
!104 = !{!94, !4, i64 80}
!105 = !{!18, !4, i64 4}
!106 = !{!8, !4, i64 40}
!107 = !{!18, !4, i64 8}
!108 = !{!8, !11, i64 200}
!109 = !{!8, !11, i64 208}
!110 = !{!8, !11, i64 216}
!111 = !{!8, !11, i64 192}
!112 = distinct !{!112, !88}
!113 = !{!34, !45, i64 2960}
!114 = !{!115, !116, i64 24}
!115 = !{!"ALPHDecoder", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !116, i64 24, !15, i64 32, !4, i64 192, !12, i64 200, !12, i64 208}
!116 = !{!"p1 _ZTS11VP8LDecoder", !11, i64 0}
!117 = !{!115, !4, i64 8}
end_hunk_23
