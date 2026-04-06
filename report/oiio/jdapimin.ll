begin_hunk_0_@jpeg_consume_input:bb.a
  %i.af = load ptr, ptr %0, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  tail call void %i.ah(ptr noundef nonnull %0, i32 noundef -1) #3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %i.ai, align 4, !tbaa !55
  br label %default_decompress_parms.exit

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !61 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.an = load i32, ptr %i.am, align 8, !tbaa !61 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %i.aq = icmp eq i32 %i.al, 1
  %i.ar = icmp eq i32 %i.an, 2
  %or.cond.i = select i1 %i.aq, i1 %i.ar, i1 false
end_hunk_0
begin_hunk_1_@jpeg_consume_input:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !63
  %.not81.i = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br i1 %.not81.i, label %bb.p, label %bb.o
end_hunk_1
begin_hunk_2_@jpeg_consume_input:bb.a
  store i32 113, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef 1) #3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !63
  %.not80.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br i1 %.not80.i, label %bb.u, label %bb.t
end_hunk_2
begin_hunk_3_@jpeg_consume_input:bb.a
  %i.bw = load ptr, ptr %0, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  tail call void %i.by(ptr noundef nonnull %0, i32 noundef -1) #3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
end_hunk_3
begin_hunk_4_@jpeg_consume_input:bb.a
default_decompress_parms.exit:                    ; preds = %bb.e, %bb.g, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.t, %bb.u, %bb.z, %bb.aa
  %.sink83.i = phi i32 [ 0, %bb.aa ], [ 4, %bb.z ], [ 1, %bb.e ], [ 2, %bb.p ], [ 2, %bb.o ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.k ], [ 2, %bb.j ], [ 2, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink83.i, ptr %i.cb, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.cc, align 4, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.cd, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !68
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.cf, align 8, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i32> <i32 1, i32 0, i32 2, i32 1>, ptr %i.cg, align 8, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ci, align 8, !tbaa !69
  store <4 x i32> <i32 256, i32 0, i32 0, i32 0>, ptr %i.ch, align 8, !tbaa !3
  store i32 202, ptr %i.a, align 4, !tbaa !44
  br label %bb.ad
end_hunk_4
begin_hunk_5_@jpeg_input_complete:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  ret i32 %i.l
}

end_hunk_5
begin_hunk_6_@jpeg_has_multiple_scans:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !71
  ret i32 %i.l
}

end_hunk_6
begin_hunk_7_@jpeg_finish_decompress:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !74
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_7
begin_hunk_8_@jpeg_finish_decompress:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  tail call void %i.p(ptr noundef nonnull %0) #3
  store i32 210, ptr %i.a, align 4, !tbaa !44
  br label %bb.i
end_hunk_8
begin_hunk_9_@jpeg_finish_decompress:bb.a
bb.j:                                             ; preds = %bb.k, %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !70
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.k, label %bb.l

end_hunk_9
begin_hunk_10_@jpeg_finish_decompress:bb.a
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0) #3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.j, !llvm.loop !76

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !78
  tail call void %i.af(ptr noundef nonnull %0) #3
  tail call void @jpeg_abort(ptr noundef nonnull %0) #3
  br label %.loopexit
end_hunk_10
begin_hunk_11_@jpeg_finish_decompress:bb.a
!57 = !{!8, !4, i64 388}
!58 = !{!8, !5, i64 392}
!59 = !{!34, !10, i64 8}
!60 = !{!8, !10, i64 304}
!61 = !{!62, !4, i64 0}
!62 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!63 = !{!64, !4, i64 20}
!64 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!65 = !{!8, !4, i64 64}
!66 = !{!8, !4, i64 68}
!67 = !{!8, !4, i64 72}
!68 = !{!8, !14, i64 80}
!69 = !{!8, !15, i64 160}
!70 = !{!50, !4, i64 36}
!71 = !{!50, !4, i64 32}
!72 = !{!8, !4, i64 88}
!73 = !{!8, !4, i64 168}
!74 = !{!8, !4, i64 140}
!75 = !{!64, !10, i64 8}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!52, !10, i64 48}
end_hunk_11
