begin_hunk_0
  br i1 %.not57, label %os_statx_impl.exit, label %bb.p

bb.p:                                             ; preds = %dir_fd_converter.exit.thread68, %dir_fd_converter.exit
  %.not58 = icmp eq i64 %.039, 1
  br i1 %.not58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.al = getelementptr i8, ptr %i.l, i64 32
end_hunk_0
begin_hunk_1
  br i1 %i.af, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not56 = icmp eq i64 %.038, 1
  br i1 %.not56, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.036 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ]
end_hunk_1
begin_hunk_2
  br i1 %.not48, label %os_link_impl.exit, label %bb.n

bb.n:                                             ; preds = %dir_fd_converter.exit56.thread74, %dir_fd_converter.exit56
  %.not49 = icmp eq i64 %.030, 1
  br i1 %.not49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ak = getelementptr i8, ptr %i.l, i64 32
end_hunk_2
begin_hunk_3
  %.4 = phi i64 [ %i.ai, %bb.q ], [ %.3, %bb.p ]
  %i.aj = getelementptr i8, ptr %i.j, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108 ; 3 uses
  %.not96 = icmp ne ptr %i.ak, null
  %.not97 = icmp eq i64 %.4, 1
  %or.cond = select i1 %.not96, i1 %.not97, i1 false
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %i.j, i64 72
end_hunk_3
begin_hunk_4
  %.4 = phi i64 [ %i.ai, %bb.q ], [ %.3, %bb.p ]
  %i.aj = getelementptr i8, ptr %i.j, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !108 ; 3 uses
  %.not96 = icmp ne ptr %i.ak, null
  %.not97 = icmp eq i64 %.4, 1
  %or.cond = select i1 %.not96, i1 %.not97, i1 false
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %i.j, i64 72
end_hunk_4
begin_hunk_5
  br i1 %.not68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not69 = icmp eq i64 %.051, 1
  br i1 %.not69, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.046 = phi ptr [ %i.am, %bb.q ], [ @_Py_NoneStruct, %bb.p ]
end_hunk_5
begin_hunk_6
  br i1 %.not58, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %dir_fd_converter.exit.thread78, %dir_fd_converter.exit
  %.not59 = icmp eq i64 %.138, 1
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ah = getelementptr i8, ptr %i.p, i64 32
end_hunk_6
begin_hunk_7
  %.032 = phi i64 [ %i.i, %bb.e ], [ %i.f, %bb.d ]
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 3 uses
  %.not45 = icmp ne ptr %i.k, null
  %.not46 = icmp eq i64 %.032, 1
  %or.cond = and i1 %.not46, %.not45
  br i1 %or.cond, label %.thread53, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.g, i64 16
end_hunk_7
begin_hunk_8

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.039 = phi double [ %.val69.a, %bb.k ], [ -1.000000e+00, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %.not64 = icmp eq i64 %.042, 1
  br i1 %.not64, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.1 = phi double [ %.039, %bb.n ], [ 0.000000e+00, %bb.i ] ; 3 uses
end_hunk_8
begin_hunk_9
  br i1 %.not56, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not57 = icmp eq i64 %.038, 1
  br i1 %.not57, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.035 = phi i64 [ %i.y, %bb.l ], [ 0, %bb.i ]   ; 2 uses
end_hunk_9
