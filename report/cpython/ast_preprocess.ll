inline.NumInlined: 55
inline.NumDeleted: 26
begin_hunk_0_@PyNumber_Negative
declare ptr @PyNumber_Negative(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @make_const(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_KeyboardInterrupt, align 8, !tbaa !109
  %i.c = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.b) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_Clear() #5
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArena_AddPyObject(ptr noundef %2, ptr noundef nonnull %1) #5
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %1, align 8, !tbaa !24
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #5
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.d
  store i32 22, ptr %0, align 8, !tbaa !68
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = getelementptr i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !24
  store ptr %1, ptr %i.i, align 8, !tbaa !24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.h, %bb.c
  %.0 = phi i32 [ 1, %bb.h ], [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyNumber_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

declare i32 @_PyArena_AddPyObject(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @fold_binop(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %.24.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %.24.val, 0
  br i1 %.not, label %bb.b, label %has_starred.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !68
  %.not13 = icmp eq i32 %i.e, 22
  br i1 %.not13, label %bb.c, label %has_starred.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.d, label %has_starred.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8, !tbaa !68
  %i.l = icmp eq i32 %i.k, 28
  br i1 %i.l, label %bb.e, label %has_starred.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.n = getelementptr i8, ptr %.val, i64 168
  %.val16 = load i64, ptr %i.n, align 8, !tbaa !113
  %i.o = and i64 %.val16, 268435456
  %.not14 = icmp eq i64 %i.o, 0
  br i1 %.not14, label %has_starred.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 16
  %.not1516.i = icmp sgt i64 %i.s, 0
  br i1 %.not1516.i, label %.lr.ph.i, label %.loopexit

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.01317.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.s
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !121

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01317.i = phi i64 [ %i.u, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.01317.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = load i32, ptr %i.w, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.x, 25
  br i1 %.not.i, label %has_starred.exit, label %bb.h

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.f
  %i.y = tail call fastcc i32 @optimize_format(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.q, ptr noundef %1)
  br label %has_starred.exit

has_starred.exit:                                 ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.d, %bb.e, %.loopexit, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.y, %.loopexit ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %.lr.ph.i ]
  ret i32 %.2
}

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @optimize_format(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = icmp eq ptr %2, null                     ; 3 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !25
  %i.d = shl i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %i.g = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.f, ptr noundef %3) #5 ; 8 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 56         ; 19 uses
  %i.k = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.cf, %bb.d
  %.063 = phi i64 [ 0, %bb.d ], [ %.6.i.i, %bb.cf ] ; 8 uses
  %.037 = phi i64 [ 0, %bb.d ], [ %i.gw, %bb.cf ] ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 8         ; 3 uses
  %i.n = and i32 %.val.i.i, 32
  %.not.i49.i = icmp eq i32 %i.n, 0
  br i1 %.not.i49.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.o, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.g:                                             ; preds = %bb.e
  %.val4.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.f ], [ %.val4.i.i, %bb.g ] ; 6 uses
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !122 ; 7 uses
  %i.p = icmp slt i64 %.063, %.val.i
  br i1 %i.p, label %.lr.ph.i, label %parse_literal.exit.thread

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.q = lshr i32 %.val.i.i, 2
  %i.r = and i32 %i.q, 7
  switch i32 %i.r, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us.i
    i32 2, label %PyUnicode_READ.exit.us69.i
  ]

PyUnicode_READ.exit.us.i:                         ; preds = %.lr.ph.i, %bb.j
  %.03054.us.i = phi i64 [ %.131.us.i, %bb.j ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us.i = phi i1 [ %.133.us.i, %bb.j ], [ false, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i.i, i64 %.03054.us.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %.not.us.i = icmp eq i8 %i.t, 37
  %i.u = add nsw i64 %.03054.us.i, 1              ; 3 uses
  br i1 %.not.us.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.v = icmp slt i64 %i.u, %.val.i
  br i1 %i.v, label %PyUnicode_READ.exit52.us.i, label %._crit_edge.i

PyUnicode_READ.exit52.us.i:                       ; preds = %bb.h
  %i.w = getelementptr i8, ptr %.0.i.i, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = icmp eq i8 %i.x, 37
  br i1 %i.y, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %PyUnicode_READ.exit52.us.i
  %i.z = add nsw i64 %.03054.us.i, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %PyUnicode_READ.exit.us.i
  %.133.us.i = phi i1 [ true, %bb.i ], [ %.03253.us.i, %PyUnicode_READ.exit.us.i ] ; 2 uses
  %.131.us.i = phi i64 [ %i.z, %bb.i ], [ %i.u, %PyUnicode_READ.exit.us.i ] ; 3 uses
  %i.aa = icmp slt i64 %.131.us.i, %.val.i
  br i1 %i.aa, label %PyUnicode_READ.exit.us.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.us69.i:                       ; preds = %.lr.ph.i, %bb.m
  %.03054.us67.i = phi i64 [ %.131.us75.i, %bb.m ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us68.i = phi i1 [ %.133.us74.i, %bb.m ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i.i, i64 %.03054.us67.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !126
  %.not.us71.i = icmp eq i16 %i.ac, 37
  %i.ad = add nsw i64 %.03054.us67.i, 1           ; 3 uses
  br i1 %.not.us71.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %PyUnicode_READ.exit.us69.i
  %i.ae = icmp slt i64 %i.ad, %.val.i
  br i1 %i.ae, label %PyUnicode_READ.exit52.us72.i, label %._crit_edge.i

PyUnicode_READ.exit52.us72.i:                     ; preds = %bb.k
  %i.af = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.ad
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !126
  %i.ah = icmp eq i16 %i.ag, 37
  br i1 %i.ah, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %PyUnicode_READ.exit52.us72.i
  %i.ai = add nsw i64 %.03054.us67.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %PyUnicode_READ.exit.us69.i
  %.133.us74.i = phi i1 [ true, %bb.l ], [ %.03253.us68.i, %PyUnicode_READ.exit.us69.i ] ; 2 uses
  %.131.us75.i = phi i64 [ %i.ai, %bb.l ], [ %i.ad, %PyUnicode_READ.exit.us69.i ] ; 3 uses
  %i.aj = icmp slt i64 %.131.us75.i, %.val.i
  br i1 %i.aj, label %PyUnicode_READ.exit.us69.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i, %bb.p
  %.03054.i = phi i64 [ %.131.i, %bb.p ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.i = phi i1 [ %.133.i, %bb.p ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %.0.i.i, i64 %.03054.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.al, 37
  %i.am = add nsw i64 %.03054.i, 1                ; 3 uses
  br i1 %.not.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %PyUnicode_READ.exit.i
  %i.an = icmp slt i64 %i.am, %.val.i
  br i1 %i.an, label %PyUnicode_READ.exit52.i, label %._crit_edge.i

PyUnicode_READ.exit52.i:                          ; preds = %bb.n
  %i.ao = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = icmp eq i32 %i.ap, 37
  br i1 %i.aq, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %PyUnicode_READ.exit52.i
  %i.ar = add nsw i64 %.03054.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %PyUnicode_READ.exit.i
  %.133.i = phi i1 [ true, %bb.o ], [ %.03253.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.131.i = phi i64 [ %i.ar, %bb.o ], [ %i.am, %PyUnicode_READ.exit.i ] ; 3 uses
  %i.as = icmp slt i64 %.131.i, %.val.i
  br i1 %i.as, label %PyUnicode_READ.exit.i, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.m, %PyUnicode_READ.exit52.us72.i, %bb.k, %bb.j, %PyUnicode_READ.exit52.us.i, %bb.h, %bb.p, %PyUnicode_READ.exit52.i, %bb.n
  %.032.lcssa.i = phi i1 [ %.03253.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03253.i, %bb.n ], [ %.133.i, %bb.p ], [ %.03253.i, %PyUnicode_READ.exit52.i ], [ %.03253.us.i, %bb.h ], [ %.133.us.i, %bb.j ], [ %.03253.us68.i, %PyUnicode_READ.exit52.us72.i ], [ %.133.us74.i, %bb.m ], [ %.03253.us68.i, %bb.k ]
  %.030.lcssa.i = phi i64 [ %.03054.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03054.i, %bb.n ], [ %.131.i, %bb.p ], [ %.03054.i, %PyUnicode_READ.exit52.i ], [ %.03054.us.i, %bb.h ], [ %.131.us.i, %bb.j ], [ %.03054.us67.i, %PyUnicode_READ.exit52.us72.i ], [ %.131.us75.i, %bb.m ], [ %.03054.us67.i, %bb.k ] ; 8 uses
  %i.at = icmp eq i64 %.030.lcssa.i, %.063
  br i1 %i.at, label %parse_literal.exit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.au = call ptr @PyUnicode_Substring(ptr noundef %1, i64 noundef %.063, i64 noundef %.030.lcssa.i) #5 ; 6 uses
  %i.av = icmp ne ptr %i.au, null
  %or.cond.i = select i1 %i.av, i1 %.032.lcssa.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %Py_DECREF.exit47.i

bb.r:                                             ; preds = %bb.q
  %i.aw = call ptr @PyUnicode_Replace(ptr noundef nonnull %i.au, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60016), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 106864), i64 noundef -1) #5 ; 3 uses
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i46.i, label %bb.s, label %Py_DECREF.exit47.i

bb.s:                                             ; preds = %bb.r
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.au, align 8, !tbaa !24
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %Py_DECREF.exit47.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #5
  br label %Py_DECREF.exit47.i

Py_DECREF.exit47.i:                               ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.040.i = phi ptr [ %i.au, %bb.q ], [ %i.aw, %bb.r ], [ %i.aw, %bb.s ], [ %i.aw, %bb.t ] ; 6 uses
  %.not45.i = icmp eq ptr %.040.i, null
  br i1 %.not45.i, label %parse_literal.exit.thread, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit47.i
  %i.ba = call i32 @_PyArena_AddPyObject(ptr noundef %3, ptr noundef nonnull %.040.i) #5
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %parse_literal.exit

bb.v:                                             ; preds = %bb.u
  %i.bc = load i32, ptr %.040.i, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i, label %bb.w, label %parse_literal.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.040.i, align 8, !tbaa !24
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %parse_literal.exit.thread

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %.040.i) #5
  br label %parse_literal.exit.thread

parse_literal.exit:                               ; preds = %bb.u
  %i.bf = call ptr @_PyAST_Constant(ptr noundef nonnull %.040.i, ptr noundef null, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef %3) #5 ; 2 uses
  %.not48 = icmp eq ptr %i.bf, null
  br i1 %.not48, label %parse_literal.exit.thread, label %bb.y

bb.y:                                             ; preds = %parse_literal.exit
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.g, align 8, !tbaa !25
  %i.bi = getelementptr [8 x i8], ptr %i.k, i64 %i.bg
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !33
  br label %bb.z

parse_literal.exit.thread:                        ; preds = %_PyUnicode_DATA.exit.i, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit47.i, %._crit_edge.i, %parse_literal.exit
  %.26469 = phi i64 [ %.030.lcssa.i, %parse_literal.exit ], [ %.063, %_PyUnicode_DATA.exit.i ], [ %.030.lcssa.i, %bb.v ], [ %.030.lcssa.i, %bb.w ], [ %.030.lcssa.i, %bb.x ], [ %.030.lcssa.i, %Py_DECREF.exit47.i ], [ %.063, %._crit_edge.i ]
  %i.bj = call ptr @PyErr_Occurred() #5
  %.not49 = icmp eq ptr %i.bj, null
  br i1 %.not49, label %bb.z, label %.thread

bb.z:                                             ; preds = %parse_literal.exit.thread, %bb.y
  %.26468 = phi i64 [ %.26469, %parse_literal.exit.thread ], [ %.030.lcssa.i, %bb.y ] ; 2 uses
  %.val = load i64, ptr %i.i, align 8, !tbaa !122 ; 13 uses
  %.not50 = icmp slt i64 %.26468, %.val
  br i1 %.not50, label %bb.aa, label %bb.cg

bb.aa:                                            ; preds = %bb.z
  br i1 %i.b, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i64, ptr %2, align 8, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bl = phi i64 [ %i.bk, %bb.ab ], [ 0, %bb.aa ]
  %.not51 = icmp slt i64 %.037, %i.bl
  br i1 %.not51, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bm = add nsw i64 %.26468, 1                  ; 7 uses
  %i.bn = getelementptr [8 x i8], ptr %i.l, i64 %.037
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 5 uses
  %.not157.i.i = icmp slt i64 %i.bm, %.val
  br i1 %.not157.i.i, label %.lr.ph.i.i, label %parse_format.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.bp = load i32, ptr %i.h, align 8             ; 3 uses
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 7                        ; 6 uses
  %i.bs = and i32 %i.bp, 32
  %.not.i19.i.i.i = icmp eq i32 %i.bs, 0          ; 3 uses
  %i.bt = and i32 %i.bp, 64
  %.not.i.i12.i.i.i = icmp eq i32 %i.bt, 0
  %.0.v.i.i13.i.i.i = select i1 %.not.i.i12.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i.i.i ; 18 uses
  switch i32 %i.br, label %.lr.ph.i.split.i [
    i32 1, label %.lr.ph.i.split.us.i
    i32 2, label %.lr.ph.i.split.us75.i
  ]

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %.lr.ph.i.split.us.split.us.i, label %_PyUnicode_DATA.exit.i.i.us.i

.lr.ph.i.split.us.split.us.i:                     ; preds = %.lr.ph.i.split.us.i
  %.val4.i.i.i.us.us.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i.i.us.us.i

_PyUnicode_DATA.exit.i.i.us.us.i:                 ; preds = %switch.lookup, %.lr.ph.i.split.us.split.us.i
  %.049.us.us.i = phi i32 [ 0, %.lr.ph.i.split.us.split.us.i ], [ %i.bz, %switch.lookup ] ; 2 uses
  %.066158.i.us.us.i = phi i64 [ %i.bm, %.lr.ph.i.split.us.split.us.i ], [ %i.bw, %switch.lookup ] ; 3 uses
  %i.bu = getelementptr i8, ptr %.val4.i.i.i.us.us.i, i64 %.066158.i.us.us.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24  ; 2 uses
  %i.bw = add i64 %.066158.i.us.us.i, 1           ; 3 uses
  %switch.tableidx = add i8 %i.bv, -32            ; 3 uses
  %i.bx = icmp ult i8 %switch.tableidx, 17
  br i1 %i.bx, label %switch.hole_check, label %.split.us.loopexit132.i

switch.hole_check:                                ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 75785, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.split.us.loopexit132.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.by = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.optimize_format.16, i64 %i.by
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bz = or i32 %.049.us.us.i, %switch.ext
  %exitcond.not.i.us.us.i = icmp eq i64 %i.bw, %.val
  br i1 %exitcond.not.i.us.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit.i.i.us.us.i

_PyUnicode_DATA.exit.i.i.us.i:                    ; preds = %.lr.ph.i.split.us.i, %switch.lookup357
  %.049.us.i = phi i32 [ %i.cf, %switch.lookup357 ], [ 0, %.lr.ph.i.split.us.i ] ; 2 uses
  %.066158.i.us.i = phi i64 [ %i.cc, %switch.lookup357 ], [ %i.bm, %.lr.ph.i.split.us.i ] ; 3 uses
  %i.ca = getelementptr i8, ptr %.0.i.i14.i.i.i, i64 %.066158.i.us.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24  ; 2 uses
  %i.cc = add i64 %.066158.i.us.i, 1              ; 3 uses
  %switch.tableidx354 = add i8 %i.cb, -32         ; 3 uses
  %i.cd = icmp ult i8 %switch.tableidx354, 17
  br i1 %i.cd, label %switch.hole_check356, label %.split.us.loopexit134.i

switch.hole_check356:                             ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  %switch.maskindex358 = zext nneg i8 %switch.tableidx354 to i32
  %switch.shifted359 = lshr i32 75785, %switch.maskindex358
  %switch.lobit360 = trunc i32 %switch.shifted359 to i1
  br i1 %switch.lobit360, label %switch.lookup357, label %.split.us.loopexit134.i

switch.lookup357:                                 ; preds = %switch.hole_check356
  %i.ce = zext nneg i8 %switch.tableidx354 to i64
  %switch.gep361 = getelementptr inbounds nuw i8, ptr @switch.table.optimize_format.16, i64 %i.ce
  %switch.load362 = load i8, ptr %switch.gep361, align 1
  %switch.ext363 = zext i8 %switch.load362 to i32
  %i.cf = or i32 %.049.us.i, %switch.ext363
  %exitcond.not.i.us.i = icmp eq i64 %i.cc, %.val
  br i1 %exitcond.not.i.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit.i.i.us.i

.lr.ph.i.split.us75.i:                            ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %.lr.ph.i.split.us75.split.us.i, label %_PyUnicode_DATA.exit17.i.i.us.i

.lr.ph.i.split.us75.split.us.i:                   ; preds = %.lr.ph.i.split.us75.i
  %.val4.i16.i.i.us.us.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i.i.us.us.i

_PyUnicode_DATA.exit17.i.i.us.us.i:               ; preds = %switch.lookup367, %.lr.ph.i.split.us75.split.us.i
  %.049.us76.us.i = phi i32 [ 0, %.lr.ph.i.split.us75.split.us.i ], [ %i.cl, %switch.lookup367 ] ; 2 uses
  %.066158.i.us77.us.i = phi i64 [ %i.bm, %.lr.ph.i.split.us75.split.us.i ], [ %i.ci, %switch.lookup367 ] ; 3 uses
  %i.cg = getelementptr [2 x i8], ptr %.val4.i16.i.i.us.us.i, i64 %.066158.i.us77.us.i
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !126 ; 2 uses
  %i.ci = add i64 %.066158.i.us77.us.i, 1         ; 3 uses
  %switch.tableidx364 = add i16 %i.ch, -32        ; 3 uses
  %i.cj = icmp ult i16 %switch.tableidx364, 17
  br i1 %i.cj, label %switch.hole_check366, label %.split.us.loopexit136.i

switch.hole_check366:                             ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  %switch.maskindex368 = zext nneg i16 %switch.tableidx364 to i32
  %switch.shifted369 = lshr i32 75785, %switch.maskindex368
  %switch.lobit370 = trunc i32 %switch.shifted369 to i1
  br i1 %switch.lobit370, label %switch.lookup367, label %.split.us.loopexit136.i

switch.lookup367:                                 ; preds = %switch.hole_check366
  %i.ck = zext nneg i16 %switch.tableidx364 to i64
  %switch.gep371 = getelementptr inbounds nuw i8, ptr @switch.table.optimize_format.16, i64 %i.ck
  %switch.load372 = load i8, ptr %switch.gep371, align 1
  %switch.ext373 = zext i8 %switch.load372 to i32
  %i.cl = or i32 %.049.us76.us.i, %switch.ext373
  %exitcond.not.i.us82.us.i = icmp eq i64 %i.ci, %.val
  br i1 %exitcond.not.i.us82.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit17.i.i.us.us.i

_PyUnicode_DATA.exit17.i.i.us.i:                  ; preds = %.lr.ph.i.split.us75.i, %switch.lookup377
  %.049.us76.i = phi i32 [ %i.cr, %switch.lookup377 ], [ 0, %.lr.ph.i.split.us75.i ] ; 2 uses
  %.066158.i.us77.i = phi i64 [ %i.co, %switch.lookup377 ], [ %i.bm, %.lr.ph.i.split.us75.i ] ; 3 uses
  %i.cm = getelementptr [2 x i8], ptr %.0.i.i14.i.i.i, i64 %.066158.i.us77.i
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !126 ; 2 uses
  %i.co = add i64 %.066158.i.us77.i, 1            ; 3 uses
  %switch.tableidx374 = add i16 %i.cn, -32        ; 3 uses
  %i.cp = icmp ult i16 %switch.tableidx374, 17
  br i1 %i.cp, label %switch.hole_check376, label %.split.us.loopexit138.i
end_hunk_0
