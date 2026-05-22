inline.NumInlined: 41
inline.NumDeleted: 21
begin_hunk_0_@_PyUnicodeWriter_WriteStr:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.b = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1)
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %.val, @PyLong_Type
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10, i32 noundef 0) #9
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyObject_Str(ptr noundef nonnull %1) #9 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.f) ; 3 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.f, align 8, !tbaa !23
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ -1, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %bb.h ]
  ret i32 %.1
}

declare i32 @_PyLong_FormatWriter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_WriteRepr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = icmp eq ptr %.val, @PyLong_Type
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10, i32 noundef 0) #9
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyObject_Repr(ptr noundef nonnull %1) #9 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.d) ; 3 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ]
  ret i32 %.1
}

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val36 = load i64, ptr %i.b, align 8, !tbaa !32
  %i.c = icmp eq i64 %3, %.val36
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = sub i64 %3, %2                           ; 4 uses
  %i.f = icmp eq i64 %3, %2
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 32
  %.val = load i32, ptr %i.g, align 8             ; 2 uses
  %i.h = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %.val, 2
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.j, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.j, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %switch.select6.i, %bb.f ], [ 127, %bb.e ]
  %i.k = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29   ; 2 uses
  %i.m = icmp ugt i32 %.0.i, %i.l
  br i1 %i.m, label %bb.g, label %.thread

bb.g:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.n = tail call i32 @_PyUnicode_FindMaxChar(ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3) #9 ; 3 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !29
  %i.o = icmp ugt i32 %i.n, %.pre
  br i1 %i.o, label %bb.h, label %.thread

.thread:                                          ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.g
  %.043 = phi i32 [ %i.n, %bb.g ], [ %i.l, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %.not35 = icmp sgt i64 %i.e, %i.t
  br i1 %.not35, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %.thread
  %.044 = phi i32 [ %i.n, %bb.g ], [ %.043, %.thread ]
  %i.u = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.e, i32 noundef %.044)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre37 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.w = phi i64 [ %.pre37, %..critedge_crit_edge ], [ %i.s, %.thread ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %0, i64 32         ; 2 uses
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.x, i64 noundef %i.w, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %i.e) #9
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = add i64 %i.z, %i.e
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %.critedge, %bb.c
  %.2 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.d ], [ 0, %.critedge ], [ -1, %bb.h ]
  ret i32 %.2
}

declare i32 @_PyUnicode_FindMaxChar(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteSubstring(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr i8, ptr %.val13, i64 168
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !41
  %i.c = and i64 %.val14, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #9 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %2, 0
  %i.g = icmp sgt i64 %2, %3
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !32
  %i.i = icmp sgt i64 %3, %.val
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = tail call i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.str.4.sink = phi ptr [ @.str.3, %bb.c ], [ @.str.4, %bb.d ]
  %5 = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %6 = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %5, ptr noundef nonnull %.str.4.sink) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %4, %bb.e ], [ -1, %bb.b ], [ -1, %bb.f ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = icmp eq i64 %2, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 52
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_PyUnicode_FromASCII(ptr noundef %1, i64 noundef %.081) #9 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 53
  store i8 1, ptr %i.j, align 1, !tbaa !30
  store ptr %i.h, ptr %0, align 8, !tbaa !26
  %i.k = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %.val.i = load i32, ptr %i.k, align 8           ; 2 uses
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %.val.i, 2
  %i.n = and i32 %i.m, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.n, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.n, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.g ], [ 127, %bb.f ]
  %i.o = getelementptr i8, ptr %0, i64 20
  store i32 %.0.i.i, ptr %i.o, align 4, !tbaa !29
  %.val.i.i = load i32, ptr %i.k, align 8         ; 2 uses
  %i.p = and i32 %.val.i.i, 32
  %.not.i12.i = icmp eq i32 %i.p, 0
  br i1 %.not.i12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.q = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i.i
  br label %_PyUnicodeWriter_Update.exit

bb.i:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.r = getelementptr i8, ptr %i.h, i64 56
  %.val4.i.i = load ptr, ptr %i.r, align 8, !tbaa !23
  br label %_PyUnicodeWriter_Update.exit

_PyUnicodeWriter_Update.exit:                     ; preds = %bb.h, %bb.i
  %.0.i13.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  %i.s = getelementptr i8, ptr %0, i64 8
  store ptr %.0.i13.i, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr i8, ptr %0, i64 24
  store i64 0, ptr %i.u, align 8, !tbaa !28
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %i.x = add i64 %i.w, %.081
  store i64 %i.x, ptr %i.v, align 8, !tbaa !25
  br label %bb.q

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = icmp ugt i32 %i.z, 126
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp sle i64 %.081, %i.af
  %i.ah = icmp eq i64 %.081, 0
  %or.cond = or i1 %i.ah, %i.ag
  br i1 %or.cond, label %.critedge, label %.split90

bb.l:                                             ; preds = %bb.j
  %.old1 = icmp eq i64 %.081, 0
  br i1 %.old1, label %.critedge, label %.split90

.split90:                                         ; preds = %bb.l, %bb.k
  %i.ai = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.081, i32 noundef 127)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.q, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %.split90
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ao = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25 ; 10 uses
  switch i32 %i.al, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
  ]

bb.m:                                             ; preds = %.critedge
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %1, i64 %.081, i1 false)
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !25
  br label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %.081
  %i.at = and i64 %.081, -4
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  %i.av = icmp ult ptr %1, %i.au
  br i1 %i.av, label %.lr.ph103, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph103
  %.pre117 = ptrtoint ptr %i.ce to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.n
  %.088.lcssa114.pre-phi = phi i64 [ %.pre117, %.preheader.loopexit ], [ %i.a, %bb.n ] ; 2 uses
  %.088.lcssa = phi ptr [ %i.ce, %.preheader.loopexit ], [ %1, %bb.n ] ; 9 uses
  %.086.lcssa = phi ptr [ %i.cf, %.preheader.loopexit ], [ %i.ar, %bb.n ] ; 8 uses
  %i.aw = icmp ult ptr %.088.lcssa, %i.as
  br i1 %i.aw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ax = add i64 %.081, %i.a                     ; 2 uses
  %i.ay = sub i64 %i.ax, %.088.lcssa114.pre-phi   ; 8 uses
  %scevgep115 = getelementptr i8, ptr %.088.lcssa, i64 %i.ay ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check144, label %.lr.ph108.preheader, label %vector.memcheck138

vector.memcheck138:                               ; preds = %iter.check
  %i.az = sub i64 %i.ax, %.088.lcssa114.pre-phi
  %i.ba = shl i64 %i.az, 1
  %scevgep139 = getelementptr i8, ptr %.086.lcssa, i64 %i.ba
  %bound0140 = icmp ult ptr %.086.lcssa, %scevgep115
  %bound1141 = icmp ult ptr %.088.lcssa, %scevgep139
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck138
  %min.iters.check145 = icmp ult i64 %i.ay, 16
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf147 = and i64 %i.ay, 12
  %n.vec148 = and i64 %i.ay, -16                  ; 5 uses
  %i.bb = shl i64 %n.vec148, 1
  %i.bc = getelementptr i8, ptr %.086.lcssa, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.088.lcssa, i64 %n.vec148
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body149 ] ; 3 uses
  %i.be = shl i64 %index150, 1
  %next.gep151 = getelementptr i8, ptr %.086.lcssa, i64 %i.be ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.088.lcssa, i64 %index150 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <8 x i8>, ptr %next.gep152, align 1, !tbaa !23, !alias.scope !48
  %wide.load154 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !23, !alias.scope !48
  %i.bg = zext <8 x i8> %wide.load153 to <8 x i16>
  %i.bh = zext <8 x i8> %wide.load154 to <8 x i16>
  %i.bi = getelementptr i8, ptr %next.gep151, i64 16
  store <8 x i16> %i.bg, ptr %next.gep151, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  store <8 x i16> %i.bh, ptr %i.bi, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  %index.next155 = add nuw i64 %index150, 16      ; 2 uses
  %i.bj = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.bj, label %middle.block156, label %vector.body149, !llvm.loop !53

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.ay, %n.vec148
  br i1 %cmp.n157, label %.loopexit, label %vec.epilog.iter.check

end_hunk_0
