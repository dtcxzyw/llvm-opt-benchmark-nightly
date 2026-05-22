inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@jpeg_consume_input:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !64
  %.not81.i = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br i1 %.not81.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.ax, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.p:                                             ; preds = %bb.n
  store i32 3, ptr %i.ax, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.q:                                             ; preds = %bb.m
  %i.ay = icmp eq i32 %i.al, 82
  %i.az = icmp eq i32 %i.an, 71
  %or.cond5.i = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = icmp eq i32 %i.ap, 66
  %or.cond7.i = select i1 %or.cond5.i, i1 %i.ba, i1 false
  br i1 %or.cond7.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2, ptr %i.bb, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.s:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32    ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  store i32 %i.al, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i32 %i.an, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  store i32 %i.ap, ptr %i.bf, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i32 113, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef 1) #3, !inline_history !60
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !64
  %.not80.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br i1 %.not80.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.bn, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.u:                                             ; preds = %bb.s
  store i32 3, ptr %i.bn, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.v:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !58  ; 2 uses
  switch i8 %i.br, label %bb.y [
    i8 0, label %bb.z
    i8 2, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bs = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 116, ptr %i.bt, align 8, !tbaa !33
  %i.bu = zext i8 %i.br to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !36
  %i.bw = load ptr, ptr %0, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  tail call void %i.by(ptr noundef nonnull %0, i32 noundef -1) #3, !inline_history !60
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sink.i = phi i32 [ 4, %bb.w ], [ 5, %bb.x ], [ 5, %bb.y ], [ 4, %bb.v ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sink.i, ptr %i.bz, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.aa:                                            ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ca, align 4, !tbaa !55
  br label %default_decompress_parms.exit

default_decompress_parms.exit:                    ; preds = %bb.e, %bb.g, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.t, %bb.u, %bb.z, %bb.aa
  %.sink83.i = phi i32 [ 0, %bb.aa ], [ 4, %bb.z ], [ 1, %bb.e ], [ 2, %bb.p ], [ 2, %bb.o ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.k ], [ 2, %bb.j ], [ 2, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink83.i, ptr %i.cb, align 8, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.cc, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.cd, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.cf, align 8, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i32> <i32 1, i32 0, i32 2, i32 1>, ptr %i.cg, align 8, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ci, align 8, !tbaa !70
  store <4 x i32> <i32 256, i32 0, i32 0, i32 0>, ptr %i.ch, align 8, !tbaa !3
  store i32 202, ptr %i.a, align 4, !tbaa !44
  br label %bb.ad

bb.ab:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cm = tail call i32 %i.cl(ptr noundef nonnull %0) #3
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.cn = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 21, ptr %i.co, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  store i32 %i.b, ptr %i.cp, align 4, !tbaa !36
  %i.cq = load ptr, ptr %0, align 8, !tbaa !32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !37
  tail call void %i.cr(ptr noundef nonnull %0) #3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.c, %default_decompress_parms.exit, %bb.ac, %bb.ab
  %.0 = phi i32 [ 0, %bb.ac ], [ 1, %default_decompress_parms.exit ], [ %i.n, %bb.c ], [ %i.cm, %bb.ab ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_input_complete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = add i32 %i.b, -211
  %or.cond = icmp ult i32 %i.c, -11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 21, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.b, ptr %i.f, align 4, !tbaa !36
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.h(ptr noundef nonnull %0) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !71
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_has_multiple_scans(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = add i32 %i.b, -211
  %or.cond = icmp ult i32 %i.c, -9
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 21, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.b, ptr %i.f, align 4, !tbaa !36
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.h(ptr noundef nonnull %0) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !72
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @jpeg_finish_decompress(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.off = add i32 %i.b, -205
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !75
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 69, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !37
  tail call void %i.l(ptr noundef nonnull %0) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  tail call void %i.p(ptr noundef nonnull %0) #3
  store i32 210, ptr %i.a, align 4, !tbaa !44
  br label %bb.h

bb.f:                                             ; preds = %bb.a, %bb.b
  switch i32 %i.b, label %bb.g [
    i32 207, label %1
    i32 210, label %bb.h
  ]

1:                                                ; preds = %bb.f
  store i32 210, ptr %i.a, align 4, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 21, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 %i.b, ptr %i.s, align 4, !tbaa !36
  %i.t = load ptr, ptr %0, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  tail call void %i.u(ptr noundef nonnull %0) #3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %1, %bb.g, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !71
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0) #3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.i, !llvm.loop !77

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79
  tail call void %i.af(ptr noundef nonnull %0) #3
  tail call void @jpeg_abort(ptr noundef nonnull %0) #3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!8, !9, i64 0}
!33 = !{!34, !4, i64 40}
!34 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !35, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!35 = !{!"long", !5, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!34, !10, i64 0}
!38 = !{!8, !10, i64 24}
!39 = !{!8, !4, i64 32}
!40 = !{!8, !12, i64 16}
!41 = !{!8, !13, i64 40}
!42 = !{!8, !19, i64 400}
!43 = !{!8, !4, i64 296}
!44 = !{!8, !4, i64 36}
!45 = !{!46, !10, i64 0}
!46 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !35, i64 88, !35, i64 96}
!47 = !{!8, !21, i64 568}
!48 = !{!8, !25, i64 600}
!49 = !{!50, !10, i64 8}
!50 = !{!"jpeg_input_controller", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32, !4, i64 36}
!51 = !{!52, !10, i64 16}
!52 = !{!"jpeg_source_mgr", !20, i64 0, !35, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!53 = !{!50, !10, i64 0}
!54 = !{!8, !4, i64 56}
!55 = !{!8, !4, i64 60}
!56 = !{!8, !4, i64 376}
!57 = !{!8, !4, i64 388}
!58 = !{!8, !5, i64 392}
!59 = !{!34, !10, i64 8}
!60 = distinct !{null}
!61 = !{!8, !10, i64 304}
!62 = !{!63, !4, i64 0}
!63 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!64 = !{!65, !4, i64 20}
!65 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!66 = !{!8, !4, i64 64}
!67 = !{!8, !4, i64 68}
!68 = !{!8, !4, i64 72}
!69 = !{!8, !14, i64 80}
!70 = !{!8, !15, i64 160}
!71 = !{!50, !4, i64 36}
!72 = !{!50, !4, i64 32}
!73 = !{!8, !4, i64 88}
!74 = !{!8, !4, i64 168}
!75 = !{!8, !4, i64 140}
!76 = !{!65, !10, i64 8}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!52, !10, i64 48}
end_hunk_0
