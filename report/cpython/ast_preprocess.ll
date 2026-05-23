inline.NumInlined: 55
inline.NumDeleted: 26
begin_hunk_0_@fold_const_match_patterns:bb.a
  %i.ao = phi ptr [ %i.am, %bb.r ], [ %i.an, %bb.s ]
  %i.ap = tail call fastcc i32 @make_const(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef %1)
  br label %make_const.exit

make_const.exit:                                  ; preds = %bb.n, %bb.m, %bb.p, %bb.d, %bb.c, %bb.b, %bb.t, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.k ], [ 0, %bb.o ], [ 1, %bb.a ], [ 1, %bb.l ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ], [ %i.ap, %bb.t ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.n ]
  ret i32 %.1
}

declare ptr @PyNumber_Negative(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @make_const(ptr noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
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
define internal fastcc range(i32 0, 2) i32 @fold_binop(ptr noundef captures(none) %0, ptr noundef %1, i32 %.24.val) unnamed_addr #0 {
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
define internal fastcc range(i32 0, 2) i32 @optimize_format(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 {
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

bb.e:                                             ; preds = %bb.dd, %bb.d
  %.063 = phi i64 [ 0, %bb.d ], [ %.6.i.i, %bb.dd ] ; 8 uses
  %.037 = phi i64 [ 0, %bb.d ], [ %i.gj, %bb.dd ] ; 4 uses
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
  %i.q = and i32 %.val.i.i, 28
  switch i32 %i.q, label %PyUnicode_READ.exit.i [
    i32 4, label %PyUnicode_READ.exit.us.i
    i32 8, label %PyUnicode_READ.exit.us69.i
  ]

PyUnicode_READ.exit.us.i:                         ; preds = %.lr.ph.i, %bb.j
  %.03054.us.i = phi i64 [ %.131.us.i, %bb.j ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us.i = phi i32 [ %.133.us.i, %bb.j ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.r = getelementptr i8, ptr %.0.i.i, i64 %.03054.us.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %.not.us.i = icmp eq i8 %i.s, 37
  %i.t = add nsw i64 %.03054.us.i, 1              ; 3 uses
  br i1 %.not.us.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.u = icmp slt i64 %i.t, %.val.i
  br i1 %i.u, label %PyUnicode_READ.exit52.us.i, label %._crit_edge.i

PyUnicode_READ.exit52.us.i:                       ; preds = %bb.h
  %i.v = getelementptr i8, ptr %.0.i.i, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = icmp eq i8 %i.w, 37
  br i1 %i.x, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %PyUnicode_READ.exit52.us.i
  %i.y = add nsw i64 %.03054.us.i, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %PyUnicode_READ.exit.us.i
  %.133.us.i = phi i32 [ 1, %bb.i ], [ %.03253.us.i, %PyUnicode_READ.exit.us.i ] ; 2 uses
  %.131.us.i = phi i64 [ %i.y, %bb.i ], [ %i.t, %PyUnicode_READ.exit.us.i ] ; 3 uses
  %i.z = icmp slt i64 %.131.us.i, %.val.i
  br i1 %i.z, label %PyUnicode_READ.exit.us.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.us69.i:                       ; preds = %.lr.ph.i, %bb.m
  %.03054.us67.i = phi i64 [ %.131.us75.i, %bb.m ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us68.i = phi i32 [ %.133.us74.i, %bb.m ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr [2 x i8], ptr %.0.i.i, i64 %.03054.us67.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !126
  %.not.us71.i = icmp eq i16 %i.ab, 37
  %i.ac = add nsw i64 %.03054.us67.i, 1           ; 3 uses
  br i1 %.not.us71.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %PyUnicode_READ.exit.us69.i
  %i.ad = icmp slt i64 %i.ac, %.val.i
  br i1 %i.ad, label %PyUnicode_READ.exit52.us72.i, label %._crit_edge.i

PyUnicode_READ.exit52.us72.i:                     ; preds = %bb.k
  %i.ae = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.ac
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !126
  %i.ag = icmp eq i16 %i.af, 37
  br i1 %i.ag, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %PyUnicode_READ.exit52.us72.i
  %i.ah = add nsw i64 %.03054.us67.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %PyUnicode_READ.exit.us69.i
  %.133.us74.i = phi i32 [ 1, %bb.l ], [ %.03253.us68.i, %PyUnicode_READ.exit.us69.i ] ; 2 uses
  %.131.us75.i = phi i64 [ %i.ah, %bb.l ], [ %i.ac, %PyUnicode_READ.exit.us69.i ] ; 3 uses
  %i.ai = icmp slt i64 %.131.us75.i, %.val.i
  br i1 %i.ai, label %PyUnicode_READ.exit.us69.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i, %bb.p
  %.03054.i = phi i64 [ %.131.i, %bb.p ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.i = phi i32 [ %.133.i, %bb.p ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %.0.i.i, i64 %.03054.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.ak, 37
  %i.al = add nsw i64 %.03054.i, 1                ; 3 uses
  br i1 %.not.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %PyUnicode_READ.exit.i
  %i.am = icmp slt i64 %i.al, %.val.i
  br i1 %i.am, label %PyUnicode_READ.exit52.i, label %._crit_edge.i

PyUnicode_READ.exit52.i:                          ; preds = %bb.n
  %i.an = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = icmp eq i32 %i.ao, 37
  br i1 %i.ap, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %PyUnicode_READ.exit52.i
  %i.aq = add nsw i64 %.03054.i, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %PyUnicode_READ.exit.i
  %.133.i = phi i32 [ 1, %bb.o ], [ %.03253.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.131.i = phi i64 [ %i.aq, %bb.o ], [ %i.al, %PyUnicode_READ.exit.i ] ; 3 uses
  %i.ar = icmp slt i64 %.131.i, %.val.i
  br i1 %i.ar, label %PyUnicode_READ.exit.i, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.m, %PyUnicode_READ.exit52.us72.i, %bb.k, %bb.j, %PyUnicode_READ.exit52.us.i, %bb.h, %bb.p, %PyUnicode_READ.exit52.i, %bb.n
  %.032.lcssa.i = phi i32 [ %.03253.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03253.i, %bb.n ], [ %.133.i, %bb.p ], [ %.03253.i, %PyUnicode_READ.exit52.i ], [ %.03253.us.i, %bb.h ], [ %.133.us.i, %bb.j ], [ %.03253.us68.i, %PyUnicode_READ.exit52.us72.i ], [ %.133.us74.i, %bb.m ], [ %.03253.us68.i, %bb.k ]
  %.030.lcssa.i = phi i64 [ %.03054.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03054.i, %bb.n ], [ %.131.i, %bb.p ], [ %.03054.i, %PyUnicode_READ.exit52.i ], [ %.03054.us.i, %bb.h ], [ %.131.us.i, %bb.j ], [ %.03054.us67.i, %PyUnicode_READ.exit52.us72.i ], [ %.131.us75.i, %bb.m ], [ %.03054.us67.i, %bb.k ] ; 8 uses
  %i.as = icmp eq i64 %.030.lcssa.i, %.063
  br i1 %i.as, label %parse_literal.exit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.at = call ptr @PyUnicode_Substring(ptr noundef %1, i64 noundef %.063, i64 noundef %.030.lcssa.i) #5 ; 6 uses
  %i.au = icmp ne ptr %i.at, null
  %i.av = icmp ne i32 %.032.lcssa.i, 0
  %or.cond.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i, label %bb.r, label %Py_DECREF.exit47.i

bb.r:                                             ; preds = %bb.q
  %i.aw = call ptr @PyUnicode_Replace(ptr noundef nonnull %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60016), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 106864), i64 noundef -1) #5 ; 3 uses
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i46.i, label %bb.s, label %Py_DECREF.exit47.i

bb.s:                                             ; preds = %bb.r
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.at, align 8, !tbaa !24
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %Py_DECREF.exit47.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #5
  br label %Py_DECREF.exit47.i

Py_DECREF.exit47.i:                               ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.040.i = phi ptr [ %i.at, %bb.q ], [ %i.aw, %bb.r ], [ %i.aw, %bb.s ], [ %i.aw, %bb.t ] ; 6 uses
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
  br i1 %.not50, label %bb.aa, label %bb.de

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
  %i.bq = and i32 %i.bp, 28                       ; 6 uses
  %i.br = and i32 %i.bp, 32
  %.not.i19.i.i.i = icmp eq i32 %i.br, 0          ; 3 uses
  %i.bs = and i32 %i.bp, 64
  %.not.i.i12.i.i.i = icmp eq i32 %i.bs, 0
  %.0.v.i.i13.i.i.i = select i1 %.not.i.i12.i.i.i, i64 56, i64 40
  %.0.i.i14.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i.i.i ; 18 uses
  switch i32 %i.bq, label %.lr.ph.i.split.i [
    i32 4, label %.lr.ph.i.split.us.i
    i32 8, label %.lr.ph.i.split.us75.i
  ]

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %.lr.ph.i.split.us.split.us.i, label %_PyUnicode_DATA.exit.i.i.us.i

.lr.ph.i.split.us.split.us.i:                     ; preds = %.lr.ph.i.split.us.i
  %.val4.i.i.i.us.us.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i.i.us.us.i

_PyUnicode_DATA.exit.i.i.us.us.i:                 ; preds = %.backedge.i.us.us.i, %.lr.ph.i.split.us.split.us.i
  %.049.us.us.i = phi i32 [ 0, %.lr.ph.i.split.us.split.us.i ], [ %i.bw, %.backedge.i.us.us.i ] ; 2 uses
  %.066158.i.us.us.i = phi i64 [ %i.bm, %.lr.ph.i.split.us.split.us.i ], [ %i.bv, %.backedge.i.us.us.i ] ; 3 uses
  %i.bt = getelementptr i8, ptr %.val4.i.i.i.us.us.i, i64 %.066158.i.us.us.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24  ; 2 uses
  %i.bv = add i64 %.066158.i.us.us.i, 1           ; 3 uses
  switch i8 %i.bu, label %.split.us.loopexit132.i [
    i8 45, label %bb.ah
    i8 43, label %.backedge.i.us.us.i
    i8 32, label %bb.ag
    i8 35, label %bb.af
    i8 48, label %bb.ae
  ]

bb.ae:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  br label %.backedge.i.us.us.i

bb.af:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  br label %.backedge.i.us.us.i

bb.ag:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  br label %.backedge.i.us.us.i

bb.ah:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  br label %.backedge.i.us.us.i

.backedge.i.us.us.i:                              ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %_PyUnicode_DATA.exit.i.i.us.us.i
  %.sink178.i.us.us.i = phi i32 [ 1, %bb.ah ], [ 16, %bb.ae ], [ 4, %bb.ag ], [ 8, %bb.af ], [ 2, %_PyUnicode_DATA.exit.i.i.us.us.i ]
  %i.bw = or i32 %.sink178.i.us.us.i, %.049.us.us.i
  %exitcond.not.i.us.us.i = icmp eq i64 %i.bv, %.val
  br i1 %exitcond.not.i.us.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit.i.i.us.us.i

_PyUnicode_DATA.exit.i.i.us.i:                    ; preds = %.lr.ph.i.split.us.i, %.backedge.i.us.i
  %.049.us.i = phi i32 [ %i.ca, %.backedge.i.us.i ], [ 0, %.lr.ph.i.split.us.i ] ; 2 uses
  %.066158.i.us.i = phi i64 [ %i.bz, %.backedge.i.us.i ], [ %i.bm, %.lr.ph.i.split.us.i ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.0.i.i14.i.i.i, i64 %.066158.i.us.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24  ; 2 uses
  %i.bz = add i64 %.066158.i.us.i, 1              ; 3 uses
  switch i8 %i.by, label %.split.us.loopexit134.i [
    i8 45, label %bb.al
    i8 43, label %.backedge.i.us.i
    i8 32, label %bb.ak
    i8 35, label %bb.aj
    i8 48, label %bb.ai
  ]

bb.ai:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  br label %.backedge.i.us.i

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  br label %.backedge.i.us.i

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  br label %.backedge.i.us.i

bb.al:                                            ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  br label %.backedge.i.us.i

.backedge.i.us.i:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %_PyUnicode_DATA.exit.i.i.us.i
  %.sink178.i.us.i = phi i32 [ 1, %bb.al ], [ 16, %bb.ai ], [ 4, %bb.ak ], [ 8, %bb.aj ], [ 2, %_PyUnicode_DATA.exit.i.i.us.i ]
  %i.ca = or i32 %.sink178.i.us.i, %.049.us.i
  %exitcond.not.i.us.i = icmp eq i64 %i.bz, %.val
  br i1 %exitcond.not.i.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit.i.i.us.i

.lr.ph.i.split.us75.i:                            ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %.lr.ph.i.split.us75.split.us.i, label %_PyUnicode_DATA.exit17.i.i.us.i

.lr.ph.i.split.us75.split.us.i:                   ; preds = %.lr.ph.i.split.us75.i
  %.val4.i16.i.i.us.us.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i.i.us.us.i

_PyUnicode_DATA.exit17.i.i.us.us.i:               ; preds = %.backedge.i.us80.us.i, %.lr.ph.i.split.us75.split.us.i
  %.049.us76.us.i = phi i32 [ 0, %.lr.ph.i.split.us75.split.us.i ], [ %i.ce, %.backedge.i.us80.us.i ] ; 2 uses
  %.066158.i.us77.us.i = phi i64 [ %i.bm, %.lr.ph.i.split.us75.split.us.i ], [ %i.cd, %.backedge.i.us80.us.i ] ; 3 uses
  %i.cb = getelementptr [2 x i8], ptr %.val4.i16.i.i.us.us.i, i64 %.066158.i.us77.us.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !126 ; 2 uses
  %i.cd = add i64 %.066158.i.us77.us.i, 1         ; 3 uses
  switch i16 %i.cc, label %.split.us.loopexit136.i [
    i16 45, label %bb.ap
    i16 43, label %.backedge.i.us80.us.i
    i16 32, label %bb.ao
    i16 35, label %bb.an
    i16 48, label %bb.am
  ]

bb.am:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  br label %.backedge.i.us80.us.i

bb.an:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  br label %.backedge.i.us80.us.i

bb.ao:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  br label %.backedge.i.us80.us.i

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  br label %.backedge.i.us80.us.i

.backedge.i.us80.us.i:                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %_PyUnicode_DATA.exit17.i.i.us.us.i
  %.sink178.i.us81.us.i = phi i32 [ 1, %bb.ap ], [ 16, %bb.am ], [ 4, %bb.ao ], [ 8, %bb.an ], [ 2, %_PyUnicode_DATA.exit17.i.i.us.us.i ]
  %i.ce = or i32 %.sink178.i.us81.us.i, %.049.us76.us.i
  %exitcond.not.i.us82.us.i = icmp eq i64 %i.cd, %.val
  br i1 %exitcond.not.i.us82.us.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit17.i.i.us.us.i

_PyUnicode_DATA.exit17.i.i.us.i:                  ; preds = %.lr.ph.i.split.us75.i, %.backedge.i.us80.i
  %.049.us76.i = phi i32 [ %i.ci, %.backedge.i.us80.i ], [ 0, %.lr.ph.i.split.us75.i ] ; 2 uses
  %.066158.i.us77.i = phi i64 [ %i.ch, %.backedge.i.us80.i ], [ %i.bm, %.lr.ph.i.split.us75.i ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr %.0.i.i14.i.i.i, i64 %.066158.i.us77.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !126 ; 2 uses
  %i.ch = add i64 %.066158.i.us77.i, 1            ; 3 uses
  switch i16 %i.cg, label %.split.us.loopexit138.i [
    i16 45, label %bb.at
    i16 43, label %.backedge.i.us80.i
    i16 32, label %bb.as
    i16 35, label %bb.ar
    i16 48, label %bb.aq
  ]

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.i
  br label %.backedge.i.us80.i

bb.ar:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.i
  br label %.backedge.i.us80.i

bb.as:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.i
  br label %.backedge.i.us80.i

bb.at:                                            ; preds = %_PyUnicode_DATA.exit17.i.i.us.i
  br label %.backedge.i.us80.i

.backedge.i.us80.i:                               ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %_PyUnicode_DATA.exit17.i.i.us.i
  %.sink178.i.us81.i = phi i32 [ 1, %bb.at ], [ 16, %bb.aq ], [ 4, %bb.as ], [ 8, %bb.ar ], [ 2, %_PyUnicode_DATA.exit17.i.i.us.i ]
  %i.ci = or i32 %.sink178.i.us81.i, %.049.us76.i
  %exitcond.not.i.us82.i = icmp eq i64 %i.ch, %.val
  br i1 %exitcond.not.i.us82.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit17.i.i.us.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i19.i.i.i, label %.lr.ph.i.split.split.us.i, label %_PyUnicode_DATA.exit25.i.i.i

.lr.ph.i.split.split.us.i:                        ; preds = %.lr.ph.i.split.i
  %.val4.i24.i.i.us.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i.i.us.i

_PyUnicode_DATA.exit25.i.i.us.i:                  ; preds = %.backedge.i.us99.i, %.lr.ph.i.split.split.us.i
  %.049.us97.i = phi i32 [ 0, %.lr.ph.i.split.split.us.i ], [ %i.cm, %.backedge.i.us99.i ] ; 2 uses
  %.066158.i.us98.i = phi i64 [ %i.bm, %.lr.ph.i.split.split.us.i ], [ %i.cl, %.backedge.i.us99.i ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %.val4.i24.i.i.us.i, i64 %.066158.i.us98.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7  ; 2 uses
  %i.cl = add i64 %.066158.i.us98.i, 1            ; 3 uses
  switch i32 %i.ck, label %.split.us.i [
    i32 45, label %bb.ax
    i32 43, label %.backedge.i.us99.i
    i32 32, label %bb.aw
    i32 35, label %bb.av
    i32 48, label %bb.au
  ]

bb.au:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.us.i
  br label %.backedge.i.us99.i

bb.av:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.us.i
  br label %.backedge.i.us99.i

bb.aw:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.us.i
  br label %.backedge.i.us99.i

bb.ax:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.us.i
  br label %.backedge.i.us99.i

.backedge.i.us99.i:                               ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %_PyUnicode_DATA.exit25.i.i.us.i
  %.sink178.i.us100.i = phi i32 [ 1, %bb.ax ], [ 16, %bb.au ], [ 4, %bb.aw ], [ 8, %bb.av ], [ 2, %_PyUnicode_DATA.exit25.i.i.us.i ]
  %i.cm = or i32 %.sink178.i.us100.i, %.049.us97.i
  %exitcond.not.i.us101.i = icmp eq i64 %i.cl, %.val
  br i1 %exitcond.not.i.us101.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit25.i.i.us.i

_PyUnicode_DATA.exit25.i.i.i:                     ; preds = %.lr.ph.i.split.i, %.backedge.i.i
  %.049.i = phi i32 [ %i.cq, %.backedge.i.i ], [ 0, %.lr.ph.i.split.i ] ; 2 uses
  %.066158.i.i = phi i64 [ %i.cp, %.backedge.i.i ], [ %i.bm, %.lr.ph.i.split.i ] ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %.0.i.i14.i.i.i, i64 %.066158.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7  ; 2 uses
  %i.cp = add i64 %.066158.i.i, 1                 ; 3 uses
  switch i32 %i.co, label %.split.us.i [
    i32 45, label %bb.ay
    i32 43, label %.backedge.i.i
    i32 32, label %bb.az
    i32 35, label %bb.ba
    i32 48, label %bb.bb
  ]

bb.ay:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.i
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %_PyUnicode_DATA.exit25.i.i.i
  %.sink178.i.i = phi i32 [ 1, %bb.ay ], [ 16, %bb.bb ], [ 4, %bb.az ], [ 8, %bb.ba ], [ 2, %_PyUnicode_DATA.exit25.i.i.i ]
  %i.cq = or i32 %.sink178.i.i, %.049.i
  %exitcond.not.i.i = icmp eq i64 %i.cp, %.val
  br i1 %exitcond.not.i.i, label %parse_format.exit.thread, label %_PyUnicode_DATA.exit25.i.i.i

bb.az:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.i
  br label %.backedge.i.i

bb.ba:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.i
  br label %.backedge.i.i

bb.bb:                                            ; preds = %_PyUnicode_DATA.exit25.i.i.i
  br label %.backedge.i.i

.split.us.loopexit132.i:                          ; preds = %_PyUnicode_DATA.exit.i.i.us.us.i
  %i.cr = zext i8 %i.bu to i32
  br label %.split.us.i

.split.us.loopexit134.i:                          ; preds = %_PyUnicode_DATA.exit.i.i.us.i
  %i.cs = zext i8 %i.by to i32
  br label %.split.us.i

.split.us.loopexit136.i:                          ; preds = %_PyUnicode_DATA.exit17.i.i.us.us.i
  %i.ct = zext i16 %i.cc to i32
  br label %.split.us.i

.split.us.loopexit138.i:                          ; preds = %_PyUnicode_DATA.exit17.i.i.us.i
  %i.cu = zext i16 %i.cg to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %_PyUnicode_DATA.exit25.i.i.i, %_PyUnicode_DATA.exit25.i.i.us.i, %.split.us.loopexit138.i, %.split.us.loopexit136.i, %.split.us.loopexit134.i, %.split.us.loopexit132.i
  %.us-phi.i = phi i32 [ %i.cr, %.split.us.loopexit132.i ], [ %i.ck, %_PyUnicode_DATA.exit25.i.i.us.i ], [ %i.ct, %.split.us.loopexit136.i ], [ %i.cs, %.split.us.loopexit134.i ], [ %i.cu, %.split.us.loopexit138.i ], [ %i.co, %_PyUnicode_DATA.exit25.i.i.i ] ; 2 uses
  %.us-phi69.i = phi i64 [ %i.bv, %.split.us.loopexit132.i ], [ %i.cl, %_PyUnicode_DATA.exit25.i.i.us.i ], [ %i.cd, %.split.us.loopexit136.i ], [ %i.bz, %.split.us.loopexit134.i ], [ %i.ch, %.split.us.loopexit138.i ], [ %i.cp, %_PyUnicode_DATA.exit25.i.i.i ] ; 5 uses
  %.us-phi70.i = phi i32 [ %.049.us.us.i, %.split.us.loopexit132.i ], [ %.049.us97.i, %_PyUnicode_DATA.exit25.i.i.us.i ], [ %.049.us76.us.i, %.split.us.loopexit136.i ], [ %.049.us.i, %.split.us.loopexit134.i ], [ %.049.us76.i, %.split.us.loopexit138.i ], [ %.049.i, %_PyUnicode_DATA.exit25.i.i.i ]
  %.us-phi71.i = phi i64 [ %.066158.i.us.us.i, %.split.us.loopexit132.i ], [ %.066158.i.us98.i, %_PyUnicode_DATA.exit25.i.i.us.i ], [ %.066158.i.us77.us.i, %.split.us.loopexit136.i ], [ %.066158.i.us.i, %.split.us.loopexit134.i ], [ %.066158.i.us77.i, %.split.us.loopexit138.i ], [ %.066158.i.i, %_PyUnicode_DATA.exit25.i.i.i ] ; 2 uses
  %.us-phi74.i = phi i1 [ true, %.split.us.loopexit132.i ], [ true, %_PyUnicode_DATA.exit25.i.i.us.i ], [ true, %.split.us.loopexit136.i ], [ false, %.split.us.loopexit134.i ], [ false, %.split.us.loopexit138.i ], [ false, %_PyUnicode_DATA.exit25.i.i.i ] ; 15 uses
  %i.cv = add i32 %.us-phi.i, -48                 ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.cv, 10
  br i1 %or.cond.i.i, label %bb.bc, label %.loopexit149.i.i

bb.bc:                                            ; preds = %.split.us.i
  %.not77.i.i = icmp slt i64 %.us-phi69.i, %.val
  br i1 %.not77.i.i, label %bb.bd, label %parse_format.exit.thread

bb.bd:                                            ; preds = %bb.bc
  switch i32 %i.bq, label %bb.bi [
    i32 4, label %bb.be
    i32 8, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  br i1 %.us-phi74.i, label %bb.bf, label %_PyUnicode_DATA.exit.i91.i.i

bb.bf:                                            ; preds = %bb.be
  %.val4.i.i93.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i91.i.i

_PyUnicode_DATA.exit.i91.i.i:                     ; preds = %bb.bf, %bb.be
  %.0.i.i92.i.i = phi ptr [ %.val4.i.i93.i.i, %bb.bf ], [ %.0.i.i14.i.i.i, %bb.be ]
  %i.cw = getelementptr i8, ptr %.0.i.i92.i.i, i64 %.us-phi69.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !24
  %i.cy = zext i8 %i.cx to i32
  br label %PyUnicode_READ_CHAR.exit100.i.i

bb.bg:                                            ; preds = %bb.bd
  br i1 %.us-phi74.i, label %bb.bh, label %_PyUnicode_DATA.exit17.i84.i.i

bb.bh:                                            ; preds = %bb.bg
  %.val4.i16.i87.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i84.i.i

_PyUnicode_DATA.exit17.i84.i.i:                   ; preds = %bb.bh, %bb.bg
  %.0.i15.i85.i.i = phi ptr [ %.val4.i16.i87.i.i, %bb.bh ], [ %.0.i.i14.i.i.i, %bb.bg ]
  %i.cz = getelementptr [2 x i8], ptr %.0.i15.i85.i.i, i64 %.us-phi69.i
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !126
  %i.db = zext i16 %i.da to i32
  br label %PyUnicode_READ_CHAR.exit100.i.i

bb.bi:                                            ; preds = %bb.bd
  br i1 %.us-phi74.i, label %bb.bj, label %_PyUnicode_DATA.exit25.i97.i.i

bb.bj:                                            ; preds = %bb.bi
  %.val4.i24.i99.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i97.i.i

_PyUnicode_DATA.exit25.i97.i.i:                   ; preds = %bb.bj, %bb.bi
  %.0.i23.i98.i.i = phi ptr [ %.val4.i24.i99.i.i, %bb.bj ], [ %.0.i.i14.i.i.i, %bb.bi ]
  %i.dc = getelementptr [4 x i8], ptr %.0.i23.i98.i.i, i64 %.us-phi69.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit100.i.i

PyUnicode_READ_CHAR.exit100.i.i:                  ; preds = %_PyUnicode_DATA.exit25.i97.i.i, %_PyUnicode_DATA.exit17.i84.i.i, %_PyUnicode_DATA.exit.i91.i.i
  %.0.i86.i.i = phi i32 [ %i.cy, %_PyUnicode_DATA.exit.i91.i.i ], [ %i.db, %_PyUnicode_DATA.exit17.i84.i.i ], [ %i.dd, %_PyUnicode_DATA.exit25.i97.i.i ] ; 3 uses
  %i.de = add i64 %.us-phi71.i, 2                 ; 5 uses
  %i.df = add i32 %.0.i86.i.i, -58
  %i.dg = icmp ult i32 %i.df, -10
  br i1 %i.dg, label %.loopexit149.i.i, label %bb.bk

bb.bk:                                            ; preds = %PyUnicode_READ_CHAR.exit100.i.i
  %i.dh = mul nuw nsw i32 %i.cv, 10
  %i.di = add nsw i32 %i.dh, -48
  %i.dj = add nsw i32 %i.di, %.0.i86.i.i
  %.not77.1.i.i = icmp slt i64 %i.de, %.val
  br i1 %.not77.1.i.i, label %bb.bl, label %parse_format.exit.thread

bb.bl:                                            ; preds = %bb.bk
  switch i32 %i.bq, label %bb.bq [
    i32 4, label %bb.bo
    i32 8, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  br i1 %.us-phi74.i, label %bb.bn, label %_PyUnicode_DATA.exit17.i84.1.i.i

bb.bn:                                            ; preds = %bb.bm
  %.val4.i16.i87.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i84.1.i.i

_PyUnicode_DATA.exit17.i84.1.i.i:                 ; preds = %bb.bn, %bb.bm
  %.0.i15.i85.1.i.i = phi ptr [ %.val4.i16.i87.1.i.i, %bb.bn ], [ %.0.i.i14.i.i.i, %bb.bm ]
  %i.dk = getelementptr [2 x i8], ptr %.0.i15.i85.1.i.i, i64 %i.de
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !126
  %i.dm = zext i16 %i.dl to i32
  br label %PyUnicode_READ_CHAR.exit100.1.i.i

bb.bo:                                            ; preds = %bb.bl
  br i1 %.us-phi74.i, label %bb.bp, label %_PyUnicode_DATA.exit.i91.1.i.i

bb.bp:                                            ; preds = %bb.bo
  %.val4.i.i93.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i91.1.i.i

_PyUnicode_DATA.exit.i91.1.i.i:                   ; preds = %bb.bp, %bb.bo
  %.0.i.i92.1.i.i = phi ptr [ %.val4.i.i93.1.i.i, %bb.bp ], [ %.0.i.i14.i.i.i, %bb.bo ]
  %i.dn = getelementptr i8, ptr %.0.i.i92.1.i.i, i64 %i.de
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !24
  %i.dp = zext i8 %i.do to i32
  br label %PyUnicode_READ_CHAR.exit100.1.i.i

bb.bq:                                            ; preds = %bb.bl
  br i1 %.us-phi74.i, label %bb.br, label %_PyUnicode_DATA.exit25.i97.1.i.i

bb.br:                                            ; preds = %bb.bq
  %.val4.i24.i99.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i97.1.i.i

_PyUnicode_DATA.exit25.i97.1.i.i:                 ; preds = %bb.br, %bb.bq
  %.0.i23.i98.1.i.i = phi ptr [ %.val4.i24.i99.1.i.i, %bb.br ], [ %.0.i.i14.i.i.i, %bb.bq ]
  %i.dq = getelementptr [4 x i8], ptr %.0.i23.i98.1.i.i, i64 %i.de
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit100.1.i.i

PyUnicode_READ_CHAR.exit100.1.i.i:                ; preds = %_PyUnicode_DATA.exit25.i97.1.i.i, %_PyUnicode_DATA.exit.i91.1.i.i, %_PyUnicode_DATA.exit17.i84.1.i.i
  %.0.i86.1.i.i = phi i32 [ %i.dp, %_PyUnicode_DATA.exit.i91.1.i.i ], [ %i.dm, %_PyUnicode_DATA.exit17.i84.1.i.i ], [ %i.dr, %_PyUnicode_DATA.exit25.i97.1.i.i ] ; 2 uses
  %i.ds = add i64 %.us-phi71.i, 3
  %i.dt = add i32 %.0.i86.1.i.i, -58
  %i.du = icmp ult i32 %i.dt, -10
  br i1 %i.du, label %.loopexit149.i.i, label %parse_format.exit.thread

.loopexit149.i.i:                                 ; preds = %PyUnicode_READ_CHAR.exit100.1.i.i, %PyUnicode_READ_CHAR.exit100.i.i, %.split.us.i
  %.047.i = phi i32 [ %i.cv, %PyUnicode_READ_CHAR.exit100.i.i ], [ %i.dj, %PyUnicode_READ_CHAR.exit100.1.i.i ], [ -1, %.split.us.i ] ; 3 uses
  %.369.i.i = phi i64 [ %i.de, %PyUnicode_READ_CHAR.exit100.i.i ], [ %i.ds, %PyUnicode_READ_CHAR.exit100.1.i.i ], [ %.us-phi69.i, %.split.us.i ] ; 8 uses
  %.2.i.i = phi i32 [ %.0.i86.i.i, %PyUnicode_READ_CHAR.exit100.i.i ], [ %.0.i86.1.i.i, %PyUnicode_READ_CHAR.exit100.1.i.i ], [ %.us-phi.i, %.split.us.i ] ; 2 uses
  %i.dv = icmp eq i32 %.2.i.i, 46
  br i1 %i.dv, label %bb.bs, label %bb.cq

bb.bs:                                            ; preds = %.loopexit149.i.i
  %.not78.i.i = icmp slt i64 %.369.i.i, %.val
  br i1 %.not78.i.i, label %bb.bt, label %parse_format.exit.thread

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.bq, label %bb.by [
    i32 4, label %bb.bu
    i32 8, label %bb.bw
  ]

bb.bu:                                            ; preds = %bb.bt
  br i1 %.us-phi74.i, label %bb.bv, label %_PyUnicode_DATA.exit.i112.i.i

bb.bv:                                            ; preds = %bb.bu
  %.val4.i.i114.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i112.i.i

_PyUnicode_DATA.exit.i112.i.i:                    ; preds = %bb.bv, %bb.bu
  %.0.i.i113.i.i = phi ptr [ %.val4.i.i114.i.i, %bb.bv ], [ %.0.i.i14.i.i.i, %bb.bu ]
  %i.dw = getelementptr i8, ptr %.0.i.i113.i.i, i64 %.369.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !24
  %i.dy = zext i8 %i.dx to i32
  br label %PyUnicode_READ_CHAR.exit121.i.i

bb.bw:                                            ; preds = %bb.bt
  br i1 %.us-phi74.i, label %bb.bx, label %_PyUnicode_DATA.exit17.i105.i.i

bb.bx:                                            ; preds = %bb.bw
  %.val4.i16.i108.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i105.i.i

_PyUnicode_DATA.exit17.i105.i.i:                  ; preds = %bb.bx, %bb.bw
  %.0.i15.i106.i.i = phi ptr [ %.val4.i16.i108.i.i, %bb.bx ], [ %.0.i.i14.i.i.i, %bb.bw ]
  %i.dz = getelementptr [2 x i8], ptr %.0.i15.i106.i.i, i64 %.369.i.i
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !126
  %i.eb = zext i16 %i.ea to i32
  br label %PyUnicode_READ_CHAR.exit121.i.i

bb.by:                                            ; preds = %bb.bt
  br i1 %.us-phi74.i, label %bb.bz, label %_PyUnicode_DATA.exit25.i118.i.i

bb.bz:                                            ; preds = %bb.by
  %.val4.i24.i120.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i118.i.i

_PyUnicode_DATA.exit25.i118.i.i:                  ; preds = %bb.bz, %bb.by
  %.0.i23.i119.i.i = phi ptr [ %.val4.i24.i120.i.i, %bb.bz ], [ %.0.i.i14.i.i.i, %bb.by ]
  %i.ec = getelementptr [4 x i8], ptr %.0.i23.i119.i.i, i64 %.369.i.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit121.i.i

PyUnicode_READ_CHAR.exit121.i.i:                  ; preds = %_PyUnicode_DATA.exit25.i118.i.i, %_PyUnicode_DATA.exit17.i105.i.i, %_PyUnicode_DATA.exit.i112.i.i
  %.0.i107.i.i = phi i32 [ %i.dy, %_PyUnicode_DATA.exit.i112.i.i ], [ %i.eb, %_PyUnicode_DATA.exit17.i105.i.i ], [ %i.ed, %_PyUnicode_DATA.exit25.i118.i.i ] ; 2 uses
  %i.ee = add nsw i64 %.369.i.i, 1                ; 5 uses
  %i.ef = add i32 %.0.i107.i.i, -48               ; 3 uses
  %or.cond4.i.i = icmp ult i32 %i.ef, 10
  br i1 %or.cond4.i.i, label %bb.ca, label %bb.cq

bb.ca:                                            ; preds = %PyUnicode_READ_CHAR.exit121.i.i
  %.not79.i.i = icmp slt i64 %i.ee, %.val
  br i1 %.not79.i.i, label %bb.cb, label %parse_format.exit.thread

bb.cb:                                            ; preds = %bb.ca
  switch i32 %i.bq, label %bb.cg [
    i32 4, label %bb.cc
    i32 8, label %bb.ce
  ]

bb.cc:                                            ; preds = %bb.cb
  br i1 %.us-phi74.i, label %bb.cd, label %_PyUnicode_DATA.exit.i133.i.i

bb.cd:                                            ; preds = %bb.cc
  %.val4.i.i135.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i133.i.i

_PyUnicode_DATA.exit.i133.i.i:                    ; preds = %bb.cd, %bb.cc
  %.0.i.i134.i.i = phi ptr [ %.val4.i.i135.i.i, %bb.cd ], [ %.0.i.i14.i.i.i, %bb.cc ]
  %i.eg = getelementptr i8, ptr %.0.i.i134.i.i, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !24
  %i.ei = zext i8 %i.eh to i32
  br label %PyUnicode_READ_CHAR.exit142.i.i

bb.ce:                                            ; preds = %bb.cb
  br i1 %.us-phi74.i, label %bb.cf, label %_PyUnicode_DATA.exit17.i126.i.i

bb.cf:                                            ; preds = %bb.ce
  %.val4.i16.i129.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i126.i.i

_PyUnicode_DATA.exit17.i126.i.i:                  ; preds = %bb.cf, %bb.ce
  %.0.i15.i127.i.i = phi ptr [ %.val4.i16.i129.i.i, %bb.cf ], [ %.0.i.i14.i.i.i, %bb.ce ]
  %i.ej = getelementptr [2 x i8], ptr %.0.i15.i127.i.i, i64 %i.ee
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !126
  %i.el = zext i16 %i.ek to i32
  br label %PyUnicode_READ_CHAR.exit142.i.i

bb.cg:                                            ; preds = %bb.cb
  br i1 %.us-phi74.i, label %bb.ch, label %_PyUnicode_DATA.exit25.i139.i.i

bb.ch:                                            ; preds = %bb.cg
  %.val4.i24.i141.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i139.i.i

_PyUnicode_DATA.exit25.i139.i.i:                  ; preds = %bb.ch, %bb.cg
  %.0.i23.i140.i.i = phi ptr [ %.val4.i24.i141.i.i, %bb.ch ], [ %.0.i.i14.i.i.i, %bb.cg ]
  %i.em = getelementptr [4 x i8], ptr %.0.i23.i140.i.i, i64 %i.ee
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit142.i.i

PyUnicode_READ_CHAR.exit142.i.i:                  ; preds = %_PyUnicode_DATA.exit25.i139.i.i, %_PyUnicode_DATA.exit17.i126.i.i, %_PyUnicode_DATA.exit.i133.i.i
  %.0.i128.i.i = phi i32 [ %i.ei, %_PyUnicode_DATA.exit.i133.i.i ], [ %i.el, %_PyUnicode_DATA.exit17.i126.i.i ], [ %i.en, %_PyUnicode_DATA.exit25.i139.i.i ] ; 3 uses
  %i.eo = add nsw i64 %.369.i.i, 2                ; 5 uses
  %i.ep = add i32 %.0.i128.i.i, -58
  %i.eq = icmp ult i32 %i.ep, -10
  br i1 %i.eq, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %PyUnicode_READ_CHAR.exit142.i.i
  %i.er = mul nuw nsw i32 %i.ef, 10
  %i.es = add nsw i32 %i.er, -48
  %i.et = add nsw i32 %i.es, %.0.i128.i.i
  %.not79.1.i.i = icmp slt i64 %i.eo, %.val
  br i1 %.not79.1.i.i, label %bb.cj, label %parse_format.exit.thread

bb.cj:                                            ; preds = %bb.ci
  switch i32 %i.bq, label %bb.co [
    i32 4, label %bb.cm
    i32 8, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  br i1 %.us-phi74.i, label %bb.cl, label %_PyUnicode_DATA.exit17.i126.1.i.i

bb.cl:                                            ; preds = %bb.ck
  %.val4.i16.i129.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit17.i126.1.i.i

_PyUnicode_DATA.exit17.i126.1.i.i:                ; preds = %bb.cl, %bb.ck
  %.0.i15.i127.1.i.i = phi ptr [ %.val4.i16.i129.1.i.i, %bb.cl ], [ %.0.i.i14.i.i.i, %bb.ck ]
  %i.eu = getelementptr [2 x i8], ptr %.0.i15.i127.1.i.i, i64 %i.eo
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !126
  %i.ew = zext i16 %i.ev to i32
  br label %PyUnicode_READ_CHAR.exit142.1.i.i

bb.cm:                                            ; preds = %bb.cj
  br i1 %.us-phi74.i, label %bb.cn, label %_PyUnicode_DATA.exit.i133.1.i.i

bb.cn:                                            ; preds = %bb.cm
  %.val4.i.i135.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i133.1.i.i

_PyUnicode_DATA.exit.i133.1.i.i:                  ; preds = %bb.cn, %bb.cm
  %.0.i.i134.1.i.i = phi ptr [ %.val4.i.i135.1.i.i, %bb.cn ], [ %.0.i.i14.i.i.i, %bb.cm ]
  %i.ex = getelementptr i8, ptr %.0.i.i134.1.i.i, i64 %i.eo
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !24
  %i.ez = zext i8 %i.ey to i32
  br label %PyUnicode_READ_CHAR.exit142.1.i.i

bb.co:                                            ; preds = %bb.cj
  br i1 %.us-phi74.i, label %bb.cp, label %_PyUnicode_DATA.exit25.i139.1.i.i

bb.cp:                                            ; preds = %bb.co
  %.val4.i24.i141.1.i.i = load ptr, ptr %i.j, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit25.i139.1.i.i

_PyUnicode_DATA.exit25.i139.1.i.i:                ; preds = %bb.cp, %bb.co
  %.0.i23.i140.1.i.i = phi ptr [ %.val4.i24.i141.1.i.i, %bb.cp ], [ %.0.i.i14.i.i.i, %bb.co ]
  %i.fa = getelementptr [4 x i8], ptr %.0.i23.i140.1.i.i, i64 %i.eo
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit142.1.i.i

PyUnicode_READ_CHAR.exit142.1.i.i:                ; preds = %_PyUnicode_DATA.exit25.i139.1.i.i, %_PyUnicode_DATA.exit.i133.1.i.i, %_PyUnicode_DATA.exit17.i126.1.i.i
  %.0.i128.1.i.i = phi i32 [ %i.ez, %_PyUnicode_DATA.exit.i133.1.i.i ], [ %i.ew, %_PyUnicode_DATA.exit17.i126.1.i.i ], [ %i.fb, %_PyUnicode_DATA.exit25.i139.1.i.i ] ; 2 uses
  %i.fc = add nsw i64 %.369.i.i, 3
  %i.fd = add i32 %.0.i128.1.i.i, -58
  %i.fe = icmp ult i32 %i.fd, -10
  br i1 %i.fe, label %bb.cq, label %parse_format.exit.thread

bb.cq:                                            ; preds = %PyUnicode_READ_CHAR.exit142.1.i.i, %PyUnicode_READ_CHAR.exit142.i.i, %PyUnicode_READ_CHAR.exit121.i.i, %.loopexit149.i.i
  %.0.i = phi i32 [ %i.ef, %PyUnicode_READ_CHAR.exit142.i.i ], [ %i.et, %PyUnicode_READ_CHAR.exit142.1.i.i ], [ 0, %PyUnicode_READ_CHAR.exit121.i.i ], [ -1, %.loopexit149.i.i ] ; 2 uses
  %.6.i.i = phi i64 [ %i.eo, %PyUnicode_READ_CHAR.exit142.i.i ], [ %i.fc, %PyUnicode_READ_CHAR.exit142.1.i.i ], [ %i.ee, %PyUnicode_READ_CHAR.exit121.i.i ], [ %.369.i.i, %.loopexit149.i.i ]
  %.5.i.i = phi i32 [ %.0.i128.i.i, %PyUnicode_READ_CHAR.exit142.i.i ], [ %.0.i128.1.i.i, %PyUnicode_READ_CHAR.exit142.1.i.i ], [ %.0.i107.i.i, %PyUnicode_READ_CHAR.exit121.i.i ], [ %.2.i.i, %.loopexit149.i.i ] ; 2 uses
  switch i32 %.5.i.i, label %parse_format.exit.thread [
    i32 115, label %bb.cr
    i32 114, label %bb.cr
    i32 97, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ff = and i32 %.us-phi70.i, 1
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = icmp sgt i32 %.047.i, 0
  %or.cond5.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond5.i, label %.thread.i, label %bb.cs

.thread.i:                                        ; preds = %bb.cr
  store i8 62, ptr %i.a, align 1, !tbaa !24
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.fi = icmp sgt i32 %.047.i, -1
  br i1 %i.fi, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %.thread.i
  %.03059.i = phi ptr [ %i.m, %.thread.i ], [ %i.a, %bb.cs ] ; 2 uses
  %i.fj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.03059.i, i64 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %.047.i) #5
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %.03059.i, i64 %i.fk
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.131.i56 = phi ptr [ %i.fl, %bb.ct ], [ %i.a, %bb.cs ] ; 3 uses
  %i.fm = icmp sgt i32 %.0.i, -1
  br i1 %i.fm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.fn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.131.i56, i64 noundef 5, ptr noundef nonnull @.str.7, i32 noundef %.0.i) #5
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr i8, ptr %.131.i56, i64 %i.fo
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.232.i = phi ptr [ %i.fp, %bb.cv ], [ %.131.i56, %bb.cu ]
  %.not39.i = icmp eq ptr %.232.i, %i.a
  br i1 %.not39.i, label %parse_format.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fq = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.a) #5 ; 6 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %parse_format.exit.thread75, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fs = call i32 @_PyArena_AddPyObject(ptr noundef %3, ptr noundef nonnull %i.fq) #5
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.fu = load i32, ptr %i.fq, align 8, !tbaa !24 ; 2 uses
  %.not.i.i59 = icmp sgt i32 %i.fu, -1
  br i1 %.not.i.i59, label %bb.da, label %parse_format.exit.thread75

bb.da:                                            ; preds = %bb.cz
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.fq, align 8, !tbaa !24
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.db, label %parse_format.exit.thread75

bb.db:                                            ; preds = %bb.da
  call void @_Py_Dealloc(ptr noundef nonnull %i.fq) #5
  br label %parse_format.exit.thread75

bb.dc:                                            ; preds = %bb.cy
  %i.fx = call ptr @_PyAST_Constant(ptr noundef nonnull %i.fq, ptr noundef null, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef %3) #5 ; 2 uses
  %.not.i57 = icmp eq ptr %i.fx, null
  br i1 %.not.i57, label %parse_format.exit.thread75, label %parse_format.exit

parse_format.exit.thread75:                       ; preds = %bb.dc, %bb.cx, %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %parse_format.exit.thread

parse_format.exit:                                ; preds = %bb.cw, %bb.dc
  %.129.i = phi ptr [ %i.fx, %bb.dc ], [ null, %bb.cw ]
  %i.fy = getelementptr i8, ptr %i.bo, i64 40
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !127
  %i.ga = getelementptr i8, ptr %i.bo, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !128
  %i.gc = getelementptr i8, ptr %i.bo, i64 48
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !129
  %i.ge = getelementptr i8, ptr %i.bo, i64 52
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !130
  %i.gg = call ptr @_PyAST_FormattedValue(ptr noundef %i.bo, i32 noundef %.5.i.i, ptr noundef %.129.i, i32 noundef %i.fz, i32 noundef %i.gb, i32 noundef %i.gd, i32 noundef %i.gf, ptr noundef %3) #5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.not52 = icmp eq ptr %i.gg, null
  br i1 %.not52, label %parse_format.exit.thread, label %bb.dd

parse_format.exit.thread:                         ; preds = %bb.bk, %bb.ci, %PyUnicode_READ_CHAR.exit100.1.i.i, %PyUnicode_READ_CHAR.exit142.1.i.i, %bb.ad, %bb.bc, %bb.ca, %bb.bs, %bb.cq, %parse_format.exit, %.backedge.i.us80.i, %.backedge.i.us80.us.i, %.backedge.i.us.i, %.backedge.i.us.us.i, %.backedge.i.i, %.backedge.i.us99.i, %parse_format.exit.thread75
  %i.gh = call ptr @PyErr_Occurred() #5
  %.not53 = icmp eq ptr %i.gh, null
  %i.gi = zext i1 %.not53 to i32
  br label %.thread

bb.dd:                                            ; preds = %parse_format.exit
  %i.gj = add nuw i64 %.037, 1
  %i.gk = load i64, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.g, align 8, !tbaa !25
  %i.gm = getelementptr [8 x i8], ptr %i.k, i64 %i.gk
  store ptr %i.gg, ptr %i.gm, align 8, !tbaa !33
  br label %bb.e

bb.de:                                            ; preds = %bb.z
  br i1 %i.b, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.gn = load i64, ptr %2, align 8, !tbaa !25
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %i.go = phi i64 [ %i.gn, %bb.df ], [ 0, %bb.de ]
  %i.gp = icmp slt i64 %.037, %i.go
  br i1 %i.gp, label %.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.gq = getelementptr i8, ptr %0, i64 40
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !127
  %i.gs = getelementptr i8, ptr %0, i64 44
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !128
  %i.gu = getelementptr i8, ptr %0, i64 48
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !129
  %i.gw = getelementptr i8, ptr %0, i64 52
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !130
  %i.gy = call ptr @_PyAST_JoinedStr(ptr noundef nonnull %i.g, i32 noundef %i.gr, i32 noundef %i.gt, i32 noundef %i.gv, i32 noundef %i.gx, ptr noundef %3) #5 ; 2 uses
  %.not54 = icmp eq ptr %i.gy, null
  br i1 %.not54, label %.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.gy, i64 56, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.ac, %parse_literal.exit.thread, %parse_format.exit.thread, %bb.di, %bb.dh, %bb.dg, %bb.c
  %.4 = phi i32 [ 0, %bb.dh ], [ 0, %bb.c ], [ 1, %bb.dg ], [ 1, %bb.di ], [ %i.gi, %parse_format.exit.thread ], [ 0, %parse_literal.exit.thread ], [ 1, %bb.ac ]
  ret i32 %.4
}

declare ptr @PyErr_Occurred() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
