begin_hunk_0_@jpeg_consume_input:bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56
  tail call void %i.ad(ptr noundef nonnull %0, i32 noundef -1) #3, !inline_history !57
  br label %default_decompress_parms.exit

bb.j:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !59 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !59 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !59 ; 3 uses
  %i.al = icmp eq i32 %i.ag, 1
  %i.am = icmp eq i32 %i.ai, 2
  %or.cond.i = select i1 %i.al, i1 %i.am, i1 false
end_hunk_0
begin_hunk_1_@jpeg_consume_input:bb.a
  store i32 107, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  tail call void %i.ax(ptr noundef nonnull %0, i32 noundef 1) #3, !inline_history !57
  br label %default_decompress_parms.exit

bb.m:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@jpeg_consume_input:bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef -1) #3, !inline_history !57
  br label %default_decompress_parms.exit

bb.q:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@jpeg_consume_input:bb.a
  %.sink81.i = phi i32 [ 0, %bb.q ], [ 2, %bb.k ], [ %i.q, %bb.d ], [ 2, %bb.g ], [ 3, %bb.l ], [ 3, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ], [ 3, %bb.e ], [ 4, %bb.n ], [ 5, %bb.o ], [ 5, %bb.p ], [ 4, %bb.m ]
  %.sink79.i = phi i32 [ 0, %bb.q ], [ 2, %bb.k ], [ %i.q, %bb.d ], [ 2, %bb.g ], [ 2, %bb.l ], [ 2, %bb.j ], [ 2, %bb.i ], [ 2, %bb.h ], [ 2, %bb.e ], [ 4, %bb.n ], [ 4, %bb.o ], [ 4, %bb.p ], [ 4, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sink81.i, ptr %i.bj, align 4, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink79.i, ptr %i.bk, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1, ptr %i.bl, align 4, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.bo, align 8, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1, i32 0, i32 2, i32 1>, ptr %i.bp, align 8, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.br, align 8, !tbaa !66
  store <4 x i32> <i32 256, i32 0, i32 0, i32 0>, ptr %i.bq, align 8, !tbaa !4
  store i32 202, ptr %i.a, align 4, !tbaa !41
  br label %bb.t
end_hunk_3
begin_hunk_4_@jpeg_input_complete:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  ret i32 %i.l
}

end_hunk_4
begin_hunk_5_@jpeg_has_multiple_scans:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
  ret i32 %i.l
}

end_hunk_5
begin_hunk_6_@jpeg_finish_decompress:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_6
begin_hunk_7_@jpeg_finish_decompress:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  tail call void %i.p(ptr noundef nonnull %0) #3
  store i32 210, ptr %i.a, align 4, !tbaa !41
  br label %bb.i
end_hunk_7
begin_hunk_8_@jpeg_finish_decompress:bb.a
bb.j:                                             ; preds = %bb.k, %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.k, label %bb.l

end_hunk_8
begin_hunk_9_@jpeg_finish_decompress:bb.a
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0) #3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.j, !llvm.loop !75

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  tail call void %i.af(ptr noundef nonnull %0) #3
  tail call void @jpeg_abort(ptr noundef nonnull %0) #3
  br label %.loopexit
end_hunk_9
begin_hunk_10_@jpeg_finish_decompress:bb.a
!54 = !{!9, !5, i64 376}
!55 = !{!9, !6, i64 380}
!56 = !{!34, !11, i64 8}
!57 = distinct !{null}
!58 = !{!9, !11, i64 296}
!59 = !{!60, !5, i64 0}
!60 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !11, i64 88}
!61 = !{!9, !5, i64 52}
!62 = !{!9, !5, i64 56}
!63 = !{!9, !5, i64 60}
!64 = !{!9, !5, i64 64}
!65 = !{!9, !15, i64 72}
!66 = !{!9, !16, i64 152}
!67 = !{!48, !5, i64 36}
!68 = !{!48, !5, i64 32}
!69 = !{!9, !5, i64 80}
!70 = !{!9, !5, i64 160}
!71 = !{!9, !5, i64 132}
!72 = !{!9, !21, i64 528}
!73 = !{!74, !11, i64 8}
!74 = !{!"jpeg_decomp_master", !11, i64 0, !11, i64 8, !5, i64 16}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!50, !11, i64 48}
end_hunk_10
