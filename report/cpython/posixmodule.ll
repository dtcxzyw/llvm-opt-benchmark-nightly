begin_hunk_0
  br i1 %.not57, label %os_statx_impl.exit, label %bb.p

bb.p:                                             ; preds = %dir_fd_converter.exit.thread68, %dir_fd_converter.exit
  %5 = icmp ugt i64 %.039, 1
  br i1 %5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.al = getelementptr i8, ptr %i.l, i64 32
end_hunk_0
begin_hunk_1
  br i1 %i.af, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = icmp ugt i64 %.038, 1
  br i1 %5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.036 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ]
end_hunk_1
begin_hunk_2
  br i1 %.not48, label %os_link_impl.exit, label %bb.n

bb.n:                                             ; preds = %dir_fd_converter.exit56.thread74, %dir_fd_converter.exit56
  %6 = icmp ugt i64 %.030, 1
  br i1 %6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ak = getelementptr i8, ptr %i.l, i64 32
end_hunk_2
begin_hunk_3
  %.4 = phi i64 [ %i.ai, %bb.q ], [ %.3, %bb.p ]
  %i.aj = getelementptr i8, ptr %i.j, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108 ; 3 uses
  %.not96 = icmp eq ptr %i.ak, null
  %5 = icmp ugt i64 %.4, 1
  %or.cond = select i1 %.not96, i1 true, i1 %5
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %i.j, i64 72
end_hunk_3
begin_hunk_4
  %.4 = phi i64 [ %i.ai, %bb.q ], [ %.3, %bb.p ]
  %i.aj = getelementptr i8, ptr %i.j, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108 ; 3 uses
  %.not96 = icmp eq ptr %i.ak, null
  %5 = icmp ugt i64 %.4, 1
  %or.cond = select i1 %.not96, i1 true, i1 %5
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %i.j, i64 72
end_hunk_4
begin_hunk_5
  br i1 %.not68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %4 = icmp ugt i64 %.051, 1
  br i1 %4, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.046 = phi ptr [ %i.am, %bb.q ], [ @_Py_NoneStruct, %bb.p ]
end_hunk_5
begin_hunk_6
  br i1 %.not58, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %dir_fd_converter.exit.thread78, %dir_fd_converter.exit
  %7 = icmp ugt i64 %.138, 1
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ah = getelementptr i8, ptr %i.p, i64 32
end_hunk_6
begin_hunk_7
  %.032 = phi i64 [ %i.i, %bb.e ], [ %i.f, %bb.d ]
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 3 uses
  %.not45 = icmp eq ptr %i.k, null
  %4 = icmp ugt i64 %.032, 1
  %or.cond = or i1 %4, %.not45
  br i1 %or.cond, label %bb.g, label %.thread53

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.g, i64 16
end_hunk_7
begin_hunk_8

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.039 = phi double [ %.val69.a, %bb.k ], [ -1.000000e+00, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %6 = icmp ugt i64 %.042, 1
  br i1 %6, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.i
  %.1 = phi double [ %.039, %bb.n ], [ 0.000000e+00, %bb.i ] ; 3 uses
end_hunk_8
begin_hunk_9
  br i1 %.not56, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k, %bb.j
  %6 = icmp ugt i64 %.038, 1
  br i1 %6, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.i
  %.035 = phi i64 [ %i.y, %bb.l ], [ 0, %bb.i ]   ; 2 uses
end_hunk_9
