inline.NumInlined: 136
inline.NumDeleted: 45
begin_hunk_0_@r_byte:bb.a
  br i1 %.not15.not, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = tail call fastcc ptr @r_string(i64 noundef 1, ptr noundef %0) ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.p = load ptr, ptr @PyExc_EOFError, align 8, !tbaa !33
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.8) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.h, %bb.c
  %.2 = phi i32 [ %i.h, %bb.c ], [ -1, %bb.h ], [ %i.l, %bb.e ], [ %i.o, %bb.g ], [ -1, %bb.f ]
  ret i32 %.2
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @r_ref(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = tail call i32 @PyList_Append(ptr noundef %i.c, ptr noundef nonnull %0) #10
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %0, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @r_long64(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @r_string(i64 noundef 8, ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 1, i32 noundef 1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @r_PyLong(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call fastcc ptr @r_string(i64 noundef 4, ptr noundef nonnull %0) ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %r_long.exit.thread, label %r_long.exit

r_long.exit:                                      ; preds = %bb.a
  %i.c = load i16, ptr %i.b, align 1
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr i8, ptr %i.b, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 16
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr i8, ptr %i.b, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.n = and i64 %i.m, 2147483648
  %i.o = sub nsw i64 %i.i, %i.n
  %i.p = or i64 %i.o, %i.m                        ; 3 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %r_long.exit.thread, label %bb.b

r_long.exit.thread:                               ; preds = %bb.a, %r_long.exit
  %i.r = tail call ptr @PyErr_Occurred() #10
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread, label %bb.q

bb.b:                                             ; preds = %r_long.exit
  %i.s = add nsw i64 %i.p, -2147483648
  %or.cond = icmp ult i64 %i.s, -4294967295
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !33
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.28) #10
  br label %bb.q

.thread:                                          ; preds = %r_long.exit.thread, %bb.b
  %.0.i6165 = phi i64 [ %i.p, %bb.b ], [ -1, %r_long.exit.thread ] ; 2 uses
  %i.u = tail call ptr @PyLong_GetNativeLayout() #10 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !105
  %i.w = udiv i8 %i.v, 15                         ; 2 uses
  %i.x = zext nneg i8 %i.w to i64                 ; 2 uses
  %i.y = tail call i64 @llvm.abs.i64(i64 %.0.i6165, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %.lhs.trunc = add nsw i32 %i.z, -1              ; 2 uses
  %.rhs.trunc = zext nneg i8 %i.w to i32          ; 2 uses
  %i.aa = sdiv i32 %.lhs.trunc, %.rhs.trunc       ; 2 uses
  %.sext = sext i32 %i.aa to i64                  ; 5 uses
  %i.ab = add nsw i64 %.sext, 1
  %i.ac = srem i32 %.lhs.trunc, %.rhs.trunc       ; 5 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.lobit = lshr i64 %.0.i6165, 63
  %i.ae = trunc nuw nsw i64 %.lobit to i32
  %i.af = call ptr @PyLongWriter_Create(i32 noundef %i.ae, i64 noundef %i.ab, ptr noundef nonnull %i.a) #10 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.ah = getelementptr i8, ptr %i.u, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !107
  %i.aj = icmp eq i8 %i.ai, 4
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !143 ; 4 uses
  %.not7686.i = icmp sgt i32 %i.aa, 0             ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not7686.i, label %.preheader.us.i, label %.critedge.preheader.i

.preheader.us.i:                                  ; preds = %bb.e, %._crit_edge.us.i
  %.05187.us.i = phi i64 [ %i.av, %._crit_edge.us.i ], [ 0, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.us.i
  %.04185.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.as, %bb.g ]
  %.04584.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.al = call fastcc ptr @r_string(i64 noundef 2, ptr noundef nonnull %0) ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.al, null
  br i1 %.not.i.us.i, label %.thread72.i, label %r_short.exit.us.i

r_short.exit.us.i:                                ; preds = %bb.f
  %i.am = load i16, ptr %i.al, align 1            ; 2 uses
  %i.an = icmp sgt i16 %i.am, -1
  br i1 %i.an, label %bb.g, label %.thread72.i

bb.g:                                             ; preds = %r_short.exit.us.i
  %i.ao = zext nneg i16 %i.am to i32
  %i.ap = trunc i64 %.04584.us.i to i32
  %i.aq = mul i32 %i.ap, 15
  %i.ar = shl i32 %i.ao, %i.aq
  %i.as = add i32 %i.ar, %.04185.us.i             ; 2 uses
  %i.at = add nuw nsw i64 %.04584.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, %i.x
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.f, !llvm.loop !144

._crit_edge.us.i:                                 ; preds = %bb.g
  %i.au = getelementptr [4 x i8], ptr %i.ak, i64 %.05187.us.i
  store i32 %i.as, ptr %i.au, align 4, !tbaa !7
  %i.av = add nuw nsw i64 %.05187.us.i, 1         ; 2 uses
  %exitcond96.not.i = icmp eq i64 %i.av, %.sext
  br i1 %exitcond96.not.i, label %.critedge.preheader.i, label %.preheader.us.i, !llvm.loop !145

.critedge.preheader.i:                            ; preds = %._crit_edge.us.i, %bb.e
  %i.aw = sext i32 %i.ad to i64
  %i.ax = icmp sgt i32 %i.ac, -1
  br i1 %i.ax, label %.lr.ph.i, label %.critedge._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge.preheader.i
  %i.ay = zext nneg i32 %i.ac to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.04091.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %.critedge.i ] ; 3 uses
  %.34490.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %.critedge.i ]
  %i.az = call fastcc ptr @r_string(i64 noundef 2, ptr noundef nonnull %0) ; 2 uses
  %.not.i54.i = icmp eq ptr %i.az, null
  br i1 %.not.i54.i, label %.thread72.i, label %r_short.exit56.i

r_short.exit56.i:                                 ; preds = %bb.h
  %i.ba = load i16, ptr %i.az, align 1            ; 3 uses
  %1 = sext i16 %i.ba to i32
  %i.bb = icmp slt i16 %i.ba, 0
  br i1 %i.bb, label %.thread72.i, label %bb.i

bb.i:                                             ; preds = %r_short.exit56.i
  %i.bc = icmp eq i16 %i.ba, 0
  %i.bd = icmp eq i64 %.04091.i, %i.ay
  %or.cond.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond.i, label %.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i
  %i.be = trunc i64 %.04091.i to i32
  %i.bf = mul i32 %i.be, 15
  %i.bg = shl i32 %1, %i.bf
  %i.bh = add i32 %i.bg, %.34490.i                ; 2 uses
  %i.bi = add nuw nsw i64 %.04091.i, 1            ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.bi, %i.aw
  br i1 %exitcond97.not.i, label %.critedge._crit_edge.i, label %bb.h, !llvm.loop !146

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  %.344.lcssa.i = phi i32 [ 0, %.critedge.preheader.i ], [ %i.bh, %.critedge.i ]
  %i.bj = getelementptr [4 x i8], ptr %i.ak, i64 %.sext
  store i32 %.344.lcssa.i, ptr %i.bj, align 4, !tbaa !7
  br label %_w_digits32.exit

.thread72.i:                                      ; preds = %r_short.exit.us.i, %bb.f, %r_short.exit56.i, %bb.h
  %i.bk = call ptr @PyErr_Occurred() #10
  %.not.i32 = icmp eq ptr %i.bk, null
  br i1 %.not.i32, label %.sink.split, label %bb.o

bb.j:                                             ; preds = %bb.d
  br i1 %.not7686.i, label %.preheader.us.i50, label %.critedge.preheader.i34

.preheader.us.i50:                                ; preds = %bb.j, %._crit_edge.us.i57
  %.05187.us.i51 = phi i64 [ %i.bw, %._crit_edge.us.i57 ], [ 0, %bb.j ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.us.i50
  %.04185.us.i52 = phi i16 [ 0, %.preheader.us.i50 ], [ %i.bt, %bb.l ]
  %.04584.us.i53 = phi i64 [ 0, %.preheader.us.i50 ], [ %i.bu, %bb.l ] ; 2 uses
  %i.bl = call fastcc ptr @r_string(i64 noundef 2, ptr noundef nonnull %0) ; 2 uses
  %.not.i.us.i54 = icmp eq ptr %i.bl, null
  br i1 %.not.i.us.i54, label %.thread72.i46, label %r_short.exit.us.i55

r_short.exit.us.i55:                              ; preds = %bb.k
  %i.bm = load i16, ptr %i.bl, align 1            ; 2 uses
  %i.bn = icmp sgt i16 %i.bm, -1
  br i1 %i.bn, label %bb.l, label %.thread72.i46

bb.l:                                             ; preds = %r_short.exit.us.i55
  %i.bo = zext nneg i16 %i.bm to i32
  %i.bp = trunc i64 %.04584.us.i53 to i32
  %i.bq = mul i32 %i.bp, 15
  %i.br = shl i32 %i.bo, %i.bq
  %i.bs = trunc i32 %i.br to i16
  %i.bt = add i16 %.04185.us.i52, %i.bs           ; 2 uses
  %i.bu = add nuw nsw i64 %.04584.us.i53, 1       ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.bu, %i.x
  br i1 %exitcond.not.i56, label %._crit_edge.us.i57, label %bb.k, !llvm.loop !147

._crit_edge.us.i57:                               ; preds = %bb.l
  %i.bv = getelementptr [2 x i8], ptr %i.ak, i64 %.05187.us.i51
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !114
  %i.bw = add nuw nsw i64 %.05187.us.i51, 1       ; 2 uses
  %exitcond96.not.i58 = icmp eq i64 %i.bw, %.sext
  br i1 %exitcond96.not.i58, label %.critedge.preheader.i34, label %.preheader.us.i50, !llvm.loop !148

.critedge.preheader.i34:                          ; preds = %._crit_edge.us.i57, %bb.j
  %i.bx = sext i32 %i.ad to i64
  %i.by = icmp sgt i32 %i.ac, -1
  br i1 %i.by, label %.lr.ph.i38, label %.critedge._crit_edge.i35

.lr.ph.i38:                                       ; preds = %.critedge.preheader.i34
  %i.bz = zext nneg i32 %i.ac to i64
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i44, %.lr.ph.i38
  %.04091.i39 = phi i64 [ 0, %.lr.ph.i38 ], [ %i.cl, %.critedge.i44 ] ; 3 uses
  %.34490.i40 = phi i16 [ 0, %.lr.ph.i38 ], [ %i.ck, %.critedge.i44 ]
  %i.ca = call fastcc ptr @r_string(i64 noundef 2, ptr noundef nonnull %0) ; 2 uses
  %.not.i54.i41 = icmp eq ptr %i.ca, null
  br i1 %.not.i54.i41, label %.thread72.i46, label %r_short.exit56.i42

r_short.exit56.i42:                               ; preds = %bb.m
  %i.cb = load i16, ptr %i.ca, align 1            ; 3 uses
  %i.cc = zext i16 %i.cb to i32
  %i.cd = icmp slt i16 %i.cb, 0
  br i1 %i.cd, label %.thread72.i46, label %bb.n

bb.n:                                             ; preds = %r_short.exit56.i42
  %i.ce = icmp eq i16 %i.cb, 0
  %i.cf = icmp eq i64 %.04091.i39, %i.bz
  %or.cond.i43 = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond.i43, label %.sink.split, label %.critedge.i44

.critedge.i44:                                    ; preds = %bb.n
  %i.cg = trunc i64 %.04091.i39 to i32
  %i.ch = mul i32 %i.cg, 15
  %i.ci = shl i32 %i.cc, %i.ch
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %.34490.i40, %i.cj              ; 2 uses
  %i.cl = add nuw nsw i64 %.04091.i39, 1          ; 2 uses
  %exitcond97.not.i45 = icmp eq i64 %i.cl, %i.bx
  br i1 %exitcond97.not.i45, label %.critedge._crit_edge.i35, label %bb.m, !llvm.loop !149

.critedge._crit_edge.i35:                         ; preds = %.critedge.i44, %.critedge.preheader.i34
  %.344.lcssa.i36 = phi i16 [ 0, %.critedge.preheader.i34 ], [ %i.ck, %.critedge.i44 ]
  %i.cm = getelementptr [2 x i8], ptr %i.ak, i64 %.sext
  store i16 %.344.lcssa.i36, ptr %i.cm, align 2, !tbaa !114
  br label %_w_digits32.exit

.thread72.i46:                                    ; preds = %r_short.exit.us.i55, %bb.k, %r_short.exit56.i42, %bb.m
  %i.cn = call ptr @PyErr_Occurred() #10
  %.not.i47 = icmp eq ptr %i.cn, null
  br i1 %.not.i47, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %bb.i, %.thread72.i46, %.thread72.i
  %.str.30.sink = phi ptr [ @.str.30, %.thread72.i46 ], [ @.str.29, %bb.i ], [ @.str.30, %.thread72.i ], [ @.str.29, %bb.n ]
  %i.co = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !33
  call void @PyErr_SetString(ptr noundef %i.co, ptr noundef nonnull %.str.30.sink) #10
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread72.i, %.thread72.i46
  call void @PyLongWriter_Discard(ptr noundef nonnull %i.af) #10
  br label %bb.p

_w_digits32.exit:                                 ; preds = %.critedge._crit_edge.i, %.critedge._crit_edge.i35
  %i.cp = call ptr @PyLongWriter_Finish(ptr noundef nonnull %i.af) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_w_digits32.exit, %.thread
  %.1 = phi ptr [ null, %.thread ], [ null, %bb.o ], [ %i.cp, %_w_digits32.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.q:                                             ; preds = %r_long.exit.thread, %bb.p, %bb.c
  %.2 = phi ptr [ %.1, %bb.p ], [ null, %bb.c ], [ null, %r_long.exit.thread ]
  ret ptr %.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc double @r_float_str(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !39
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %.not14.i = icmp eq ptr %i.i, null
  br i1 %.not14.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !36
  %i.k = tail call i32 @getc(ptr noundef %i.j)    ; 2 uses
  %.not15.not.i = icmp eq i32 %i.k, -1
  br i1 %.not15.not.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = tail call fastcc ptr @r_string(i64 noundef 1, ptr noundef nonnull %0) ; 2 uses
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %r_byte.exit, label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.m = load ptr, ptr @PyExc_EOFError, align 8, !tbaa !33
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.8) #10
  br label %r_byte.exit

.sink.split:                                      ; preds = %bb.f, %bb.c
  %.sink16 = phi ptr [ %i.c, %bb.c ], [ %i.l, %bb.f ]
  %i.n = load i8, ptr %.sink16, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i32
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e
  %.2.i.ph = phi i32 [ %i.k, %bb.e ], [ %i.o, %.sink.split ]
  %i.p = sext i32 %.2.i.ph to i64                 ; 3 uses
  %i.q = tail call fastcc ptr @r_string(i64 noundef %i.p, ptr noundef %0) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %r_byte.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.q, i64 %i.p, i1 false)
  %i.s = getelementptr i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !29
  %i.t = call double @PyOS_string_to_double(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #10
  br label %r_byte.exit

r_byte.exit:                                      ; preds = %bb.g, %bb.f, %bb.h, %bb.i
  %.0 = phi double [ %i.t, %bb.i ], [ -1.000000e+00, %bb.h ], [ -1.000000e+00, %bb.f ], [ -1.000000e+00, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret double %.0
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc double @r_float_bin(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @r_string(i64 noundef 8, ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @PyFloat_Unpack8(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.c, %bb.b ], [ -1.000000e+00, %bb.a ]
  ret double %.0
}

declare ptr @PyComplex_FromCComplex(double, double) local_unnamed_addr #3

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_PyUnicode_InternImmortal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #3

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #3

declare ptr @PyDict_New() local_unnamed_addr #3

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyFrozenDict_New(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_PyObject_CallNoArgs() unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %PyFrozenSet_Type.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyFrozenSet_Type, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.c = getelementptr i8, ptr %PyFrozenSet_Type.val.i.i, i64 168
  %.val.i.i = load i64, ptr %i.c, align 8, !tbaa !152
  %i.d = and i64 %.val.i.i, 2048
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %bb.a
  %i.e = getelementptr i8, ptr %PyFrozenSet_Type.val.i.i, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !157
  %i.g = getelementptr i8, ptr @PyFrozenSet_Type, i64 %i.f
  %.0.copyload.i.i = load ptr, ptr %i.g, align 1  ; 2 uses
  %i.h = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.h, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.b

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %bb.a
  %i.i = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.b, ptr noundef nonnull @PyFrozenSet_Type, ptr noundef null, i64 noundef 0, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

bb.b:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.j = tail call ptr %.0.copyload.i.i(ptr noundef nonnull @PyFrozenSet_Type, ptr noundef null, i64 noundef 0, ptr noundef null) #10, !inline_history !158
  %i.k = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.b, ptr noundef nonnull @PyFrozenSet_Type, ptr noundef %i.j, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

_PyObject_VectorcallTstate.exit:                  ; preds = %_PyVectorcall_FunctionInline.exit.thread.i, %bb.b
  %.0.i = phi ptr [ %i.i, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %i.k, %bb.b ]
  ret ptr %.0.i
}

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #3

declare ptr @PyFrozenSet_New(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
