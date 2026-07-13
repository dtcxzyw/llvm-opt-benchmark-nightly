inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicodeWriter_WriteStr:bb.a

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
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteSubstring(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteSubstring(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
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
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %2, 0
  %i.g = icmp sgt i64 %2, %3
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !32
  %i.k = icmp sgt i64 %3, %.val
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.n, %bb.g ], [ -1, %bb.b ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteASCIIString(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %i.a = icmp eq i64 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.081 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 14 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 52
  %i.f = load i8, ptr %i.e, align 4, !tbaa !24
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @_PyUnicode_FromASCII(ptr noundef %1, i64 noundef %.081) #9 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 53
  store i8 1, ptr %i.i, align 1, !tbaa !30
  store ptr %i.g, ptr %0, align 8, !tbaa !26
  %i.j = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i32 %.val.i, 2
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.m, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.m, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.g ], [ 127, %bb.f ]
  %i.n = getelementptr i8, ptr %0, i64 20
  store i32 %.0.i.i, ptr %i.n, align 4, !tbaa !29
  %.val.i.i = load i32, ptr %i.j, align 8         ; 2 uses
  %i.o = and i32 %.val.i.i, 32
  %.not.i12.i = icmp eq i32 %i.o, 0
  br i1 %.not.i12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.p = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.g, i64 %.0.v.i.i.i
  br label %_PyUnicodeWriter_Update.exit

bb.i:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.q = getelementptr i8, ptr %i.g, i64 56
  %.val4.i.i = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %_PyUnicodeWriter_Update.exit

_PyUnicodeWriter_Update.exit:                     ; preds = %bb.h, %bb.i
  %.0.i13.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  %i.r = getelementptr i8, ptr %0, i64 8
  store ptr %.0.i13.i, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %0, i64 24
  store i64 0, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = add i64 %i.v, %.081
  store i64 %i.w, ptr %i.u, align 8, !tbaa !25
  br label %bb.q

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %i.z = icmp ugt i32 %i.y, 126
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp sle i64 %.081, %i.ae
  %i.ag = icmp eq i64 %.081, 0
  %or.cond = or i1 %i.ag, %i.af
  br i1 %or.cond, label %.critedge, label %.split90

bb.l:                                             ; preds = %bb.j
  %.old1 = icmp eq i64 %.081, 0
  br i1 %.old1, label %.critedge, label %.split90

.split90:                                         ; preds = %bb.l, %bb.k
  %i.ah = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.081, i32 noundef 127)
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.q, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %.split90
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25 ; 10 uses
  switch i32 %i.ak, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
  ]

bb.m:                                             ; preds = %.critedge
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %1, i64 %.081, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !25
  br label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.aq = getelementptr [2 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %.081
  %i.as = and i64 %.081, -4
  %i.at = getelementptr i8, ptr %1, i64 %i.as     ; 2 uses
  %i.au = icmp ult ptr %1, %i.at
  br i1 %i.au, label %.lr.ph103, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph103
  %.pre117 = ptrtoaddr ptr %i.cd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.n
  %.088.lcssa114.pre-phi = phi i64 [ %.pre117, %.preheader.loopexit ], [ %3, %bb.n ] ; 2 uses
  %.088.lcssa = phi ptr [ %i.cd, %.preheader.loopexit ], [ %1, %bb.n ] ; 9 uses
  %.086.lcssa = phi ptr [ %i.ce, %.preheader.loopexit ], [ %i.aq, %bb.n ] ; 8 uses
  %i.av = icmp ult ptr %.088.lcssa, %i.ar
  br i1 %i.av, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.aw = add i64 %.081, %3                       ; 2 uses
  %i.ax = sub i64 %i.aw, %.088.lcssa114.pre-phi   ; 8 uses
  %scevgep115 = getelementptr i8, ptr %.088.lcssa, i64 %i.ax ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check144, label %.lr.ph108.preheader, label %vector.memcheck138

vector.memcheck138:                               ; preds = %iter.check
  %i.ay = sub i64 %i.aw, %.088.lcssa114.pre-phi
  %i.az = shl i64 %i.ay, 1
  %scevgep139 = getelementptr i8, ptr %.086.lcssa, i64 %i.az
  %bound0140 = icmp ult ptr %.086.lcssa, %scevgep115
  %bound1141 = icmp ult ptr %.088.lcssa, %scevgep139
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck138
  %min.iters.check145 = icmp ult i64 %i.ax, 16
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf147 = and i64 %i.ax, 12
  %n.vec148 = and i64 %i.ax, -16                  ; 5 uses
  %i.ba = shl i64 %n.vec148, 1
  %i.bb = getelementptr i8, ptr %.086.lcssa, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.088.lcssa, i64 %n.vec148
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body149 ] ; 3 uses
  %i.bd = shl i64 %index150, 1
  %next.gep151 = getelementptr i8, ptr %.086.lcssa, i64 %i.bd ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.088.lcssa, i64 %index150 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep152, i64 8
  %wide.load153 = load <8 x i8>, ptr %next.gep152, align 1, !tbaa !23, !alias.scope !48
  %wide.load154 = load <8 x i8>, ptr %i.be, align 1, !tbaa !23, !alias.scope !48
  %i.bf = zext <8 x i8> %wide.load153 to <8 x i16>
  %i.bg = zext <8 x i8> %wide.load154 to <8 x i16>
  %i.bh = getelementptr i8, ptr %next.gep151, i64 16
  store <8 x i16> %i.bf, ptr %next.gep151, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  store <8 x i16> %i.bg, ptr %i.bh, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  %index.next155 = add nuw i64 %index150, 16      ; 2 uses
  %i.bi = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.bi, label %middle.block156, label %vector.body149, !llvm.loop !53

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.ax, %n.vec148
  br i1 %cmp.n157, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block156
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf147, 0
  br i1 %min.epilog.iters.check, label %.lr.ph108.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec148, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ax, -4                   ; 4 uses
  %i.bj = shl i64 %n.vec161, 1
  %i.bk = getelementptr i8, ptr %.086.lcssa, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.088.lcssa, i64 %n.vec161
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next166, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = shl i64 %index162, 1
  %next.gep163 = getelementptr i8, ptr %.086.lcssa, i64 %i.bm
  %next.gep164 = getelementptr i8, ptr %.088.lcssa, i64 %index162
  %wide.load165 = load <4 x i8>, ptr %next.gep164, align 1, !tbaa !23, !alias.scope !48
  %i.bn = zext <4 x i8> %wide.load165 to <4 x i16>
  store <4 x i16> %i.bn, ptr %next.gep163, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  %index.next166 = add nuw i64 %index162, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n167 = icmp eq i64 %i.ax, %n.vec161
  br i1 %cmp.n167, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck138, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.187107.ph = phi ptr [ %.086.lcssa, %iter.check ], [ %.086.lcssa, %vector.memcheck138 ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.189106.ph = phi ptr [ %.088.lcssa, %iter.check ], [ %.088.lcssa, %vector.memcheck138 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.n, %.lr.ph103
  %.086102 = phi ptr [ %i.ce, %.lr.ph103 ], [ %i.aq, %bb.n ] ; 5 uses
  %.088101 = phi ptr [ %i.cd, %.lr.ph103 ], [ %1, %bb.n ] ; 5 uses
  %i.bp = load i8, ptr %.088101, align 1, !tbaa !23
  %i.bq = zext i8 %i.bp to i16
  store i16 %i.bq, ptr %.086102, align 2, !tbaa !38
  %i.br = getelementptr i8, ptr %.088101, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = zext i8 %i.bs to i16
  %i.bu = getelementptr i8, ptr %.086102, i64 2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !38
  %i.bv = getelementptr i8, ptr %.088101, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = zext i8 %i.bw to i16
  %i.by = getelementptr i8, ptr %.086102, i64 4
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !38
  %i.bz = getelementptr i8, ptr %.088101, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr i8, ptr %.086102, i64 6
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !38
  %i.cd = getelementptr i8, ptr %.088101, i64 4   ; 4 uses
  %i.ce = getelementptr i8, ptr %.086102, i64 8   ; 2 uses
  %i.cf = icmp ult ptr %i.cd, %i.at
  br i1 %i.cf, label %.lr.ph103, label %.preheader.loopexit, !llvm.loop !59

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.187107 = phi ptr [ %i.cj, %.lr.ph108 ], [ %.187107.ph, %.lr.ph108.preheader ] ; 2 uses
  %.189106 = phi ptr [ %i.cg, %.lr.ph108 ], [ %.189106.ph, %.lr.ph108.preheader ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.189106, i64 1   ; 2 uses
  %i.ch = load i8, ptr %.189106, align 1, !tbaa !23
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr i8, ptr %.187107, i64 2
  store i16 %i.ci, ptr %.187107, align 2, !tbaa !38
  %exitcond116.not = icmp eq ptr %i.cg, %scevgep115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph108, !llvm.loop !60

bb.o:                                             ; preds = %.critedge
  %i.ck = getelementptr [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.cl = getelementptr i8, ptr %1, i64 %.081
  %i.cm = and i64 %.081, -4
  %i.cn = getelementptr i8, ptr %1, i64 %i.cm     ; 2 uses
  %i.co = icmp ult ptr %1, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader93

.preheader93.loopexit:                            ; preds = %.lr.ph
  %.pre118 = ptrtoaddr ptr %i.dr to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.loopexit, %bb.o
  %.082.lcssa113.pre-phi = phi i64 [ %.pre118, %.preheader93.loopexit ], [ %3, %bb.o ] ; 2 uses
  %.084.lcssa = phi ptr [ %i.ds, %.preheader93.loopexit ], [ %i.ck, %bb.o ] ; 6 uses
  %.082.lcssa = phi ptr [ %i.dr, %.preheader93.loopexit ], [ %1, %bb.o ] ; 7 uses
  %i.cp = icmp ult ptr %.082.lcssa, %i.cl
  br i1 %i.cp, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader93
  %i.cq = add i64 %.081, %3                       ; 2 uses
  %i.cr = sub i64 %i.cq, %.082.lcssa113.pre-phi   ; 4 uses
  %scevgep = getelementptr i8, ptr %.082.lcssa, i64 %i.cr ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 20
  br i1 %min.iters.check, label %.lr.ph100.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.cs = sub i64 %i.cq, %.082.lcssa113.pre-phi
  %i.ct = shl i64 %i.cs, 2
  %scevgep134 = getelementptr i8, ptr %.084.lcssa, i64 %i.ct
  %bound0 = icmp ult ptr %.084.lcssa, %scevgep
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -8                      ; 4 uses
  %i.cu = getelementptr i8, ptr %.082.lcssa, i64 %n.vec
  %i.cv = shl i64 %n.vec, 2
  %i.cw = getelementptr i8, ptr %.084.lcssa, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa, i64 %index ; 2 uses
  %i.cx = shl i64 %index, 2
  %next.gep135 = getelementptr i8, ptr %.084.lcssa, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !23, !alias.scope !61
  %wide.load136 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !23, !alias.scope !61
  %i.cz = zext <4 x i8> %wide.load to <4 x i32>
  %i.da = zext <4 x i8> %wide.load136 to <4 x i32>
  %i.db = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %i.cz, ptr %next.gep135, align 4, !tbaa !7, !alias.scope !64, !noalias !61
  store <4 x i32> %i.da, ptr %i.db, align 4, !tbaa !7, !alias.scope !64, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader171

.lr.ph100.preheader171:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.18399.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph100.preheader ], [ %i.cu, %middle.block ]
  %.18598.ph = phi ptr [ %.084.lcssa, %vector.memcheck ], [ %.084.lcssa, %.lr.ph100.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.08296 = phi ptr [ %i.dr, %.lr.ph ], [ %1, %bb.o ] ; 5 uses
  %.08495 = phi ptr [ %i.ds, %.lr.ph ], [ %i.ck, %bb.o ] ; 5 uses
  %i.dd = load i8, ptr %.08296, align 1, !tbaa !23
  %i.de = zext i8 %i.dd to i32
  store i32 %i.de, ptr %.08495, align 4, !tbaa !7
  %i.df = getelementptr i8, ptr %.08296, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr i8, ptr %.08495, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  %i.dj = getelementptr i8, ptr %.08296, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr i8, ptr %.08495, i64 8
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %i.dn = getelementptr i8, ptr %.08296, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr i8, ptr %.08495, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !7
  %i.dr = getelementptr i8, ptr %.08296, i64 4    ; 4 uses
  %i.ds = getelementptr i8, ptr %.08495, i64 16   ; 2 uses
  %i.dt = icmp ult ptr %i.dr, %i.cn
  br i1 %i.dt, label %.lr.ph, label %.preheader93.loopexit, !llvm.loop !67

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.18399 = phi ptr [ %i.du, %.lr.ph100 ], [ %.18399.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %.18598 = phi ptr [ %i.dx, %.lr.ph100 ], [ %.18598.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %i.du = getelementptr i8, ptr %.18399, i64 1    ; 2 uses
  %i.dv = load i8, ptr %.18399, align 1, !tbaa !23
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr i8, ptr %.18598, i64 4
  store i32 %i.dw, ptr %.18598, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.du, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph100, !llvm.loop !68

bb.p:                                             ; preds = %.critedge
  unreachable

.loopexit:                                        ; preds = %.lr.ph100, %.lr.ph108, %middle.block, %middle.block156, %vec.epilog.middle.block, %.preheader93, %.preheader, %bb.m
  %i.dy = phi i64 [ %i.ao, %middle.block156 ], [ %.pre, %bb.m ], [ %i.ao, %.preheader93 ], [ %i.ao, %.preheader ], [ %i.ao, %middle.block ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ao, %.lr.ph108 ], [ %i.ao, %.lr.ph100 ]
  %i.dz = getelementptr i8, ptr %0, i64 32
  %i.ea = add i64 %i.dy, %.081
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %.split90, %_PyUnicodeWriter_Update.exit, %bb.e, %.loopexit
  %.1 = phi i32 [ -1, %bb.e ], [ 0, %.loopexit ], [ 0, %_PyUnicodeWriter_Update.exit ], [ -1, %.split90 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteASCII(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_WriteUTF8(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %.0, i32 noundef 1, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.c, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.e
}

declare i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_DecodeUTF8Stateful(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %.0, i32 noundef 0, ptr noundef %3, ptr noundef %4) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %4, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteLatin1String(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %1, %bb.a ], [ %i.i, %.thread31.i ] ; 4 uses
  %i.b = icmp ult ptr %.021.i, %i.a
  br i1 %i.b, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %.021.i to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.e, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.e = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.e, %i.a
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.f = load i64, ptr %.019.i, align 8, !tbaa !69
  %i.g = and i64 %i.f, -9187201950435737472
  %.not27.i = icmp eq i64 %i.g, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !70

bb.e:                                             ; preds = %.preheader.i
  %i.h = icmp eq ptr %.019.i, %i.a
  br i1 %i.h, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.i = getelementptr i8, ptr %.223.i, i64 1
  %i.j = load i8, ptr %.223.i, align 1, !tbaa !23
  %.not28.i = icmp sgt i8 %i.j, -1
  br i1 %.not28.i, label %bb.b, label %ucs1lib_find_max_char.exit, !llvm.loop !71

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e, %.thread31.i, %bb.d
  %.5.i = phi i32 [ 255, %bb.d ], [ 127, %bb.b ], [ 127, %bb.e ], [ 255, %.thread31.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.not = icmp ugt i32 %.5.i, %i.l
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ucs1lib_find_max_char.exit
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp sle i64 %2, %i.q
  %i.s = icmp eq i64 %2, 0
  %or.cond = or i1 %i.s, %i.r
  br i1 %or.cond, label %.critedge, label %.split20

bb.g:                                             ; preds = %ucs1lib_find_max_char.exit
  %.old1 = icmp eq i64 %2, 0
  br i1 %.old1, label %.critedge, label %.split20

.split20:                                         ; preds = %bb.g, %bb.f
  %i.t = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.5.i)
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %.split20
  %i.v = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 14 uses
  %i.y = getelementptr i8, ptr %i.v, i64 32
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = and i32 %i.aa, 7
  %i.ac = and i32 %i.z, 32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ad = and i32 %i.z, 64
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.v, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %.critedge
  %i.ae = getelementptr i8, ptr %i.v, i64 56
  %.val4.i.i = load ptr, ptr %i.ae, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ] ; 5 uses
  switch i32 %i.ab, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 4, label %bb.l
  ]

bb.j:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.af = getelementptr i8, ptr %.0.i.i, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 1 %1, i64 %2, i1 false)
  %.pre = load i64, ptr %i.w, align 8, !tbaa !25
  br label %unicode_write_cstr.exit

bb.k:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ag = icmp ult ptr %1, %i.a
  br i1 %i.ag, label %iter.check, label %unicode_write_cstr.exit

iter.check:                                       ; preds = %bb.k
  %i.ah = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.x ; 7 uses
  %min.iters.check49 = icmp ult i64 %2, 4
  br i1 %min.iters.check49, label %.lr.ph33.i.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check
  %i.ai = add i64 %i.x, %2
  %i.aj = shl i64 %i.ai, 1
  %scevgep44 = getelementptr i8, ptr %.0.i.i, i64 %i.aj
  %bound045 = icmp ult ptr %i.ah, %i.a
  %bound146 = icmp ult ptr %1, %scevgep44
  %found.conflict47 = and i1 %bound045, %bound146
  br i1 %found.conflict47, label %.lr.ph33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck43
  %min.iters.check50 = icmp ult i64 %2, 16
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf52 = and i64 %2, 12
  %n.vec53 = and i64 %2, -16                      ; 5 uses
  %i.ak = getelementptr i8, ptr %1, i64 %n.vec53
  %i.al = shl i64 %n.vec53, 1
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %1, i64 %index55 ; 2 uses
  %i.an = shl i64 %index55, 1
  %next.gep57 = getelementptr i8, ptr %i.ah, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep56, i64 8
  %wide.load58 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !23, !alias.scope !72
  %wide.load59 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !23, !alias.scope !72
  %i.ap = sext <8 x i8> %wide.load58 to <8 x i16>
  %i.aq = sext <8 x i8> %wide.load59 to <8 x i16>
  %i.ar = getelementptr i8, ptr %next.gep57, i64 16
  store <8 x i16> %i.ap, ptr %next.gep57, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  %index.next60 = add nuw i64 %index55, 16        ; 2 uses
  %i.as = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.as, label %middle.block61, label %vector.body54, !llvm.loop !77

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %2, %n.vec53
  br i1 %cmp.n62, label %unicode_write_cstr.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block61
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf52, 0
  br i1 %min.epilog.iters.check, label %.lr.ph33.i.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec53, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec66 = and i64 %2, -4                       ; 4 uses
  %i.at = getelementptr i8, ptr %1, i64 %n.vec66
  %i.au = shl i64 %n.vec66, 1
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 3 uses
  %next.gep68 = getelementptr i8, ptr %1, i64 %index67
  %i.aw = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.ah, i64 %i.aw
  %wide.load70 = load <4 x i8>, ptr %next.gep68, align 1, !tbaa !23, !alias.scope !72
  %i.ax = sext <4 x i8> %wide.load70 to <4 x i16>
  store <4 x i16> %i.ax, ptr %next.gep69, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %2, %n.vec66
  br i1 %cmp.n72, label %unicode_write_cstr.exit, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %vector.memcheck43, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02632.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck43 ], [ %i.ak, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 3 uses
  %.02731.i.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck43 ], [ %i.am, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %i.az = add i64 %2, %3                          ; 2 uses
  %.02632.i.ph79 = ptrtoaddr ptr %.02632.i.ph to i64 ; 2 uses
  %i.ba = sub i64 %i.az, %.02632.i.ph79
  %xtraiter80 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol

.lr.ph33.i.prol:                                  ; preds = %.lr.ph33.i.preheader, %.lr.ph33.i.prol
  %.02632.i.prol = phi ptr [ %i.be, %.lr.ph33.i.prol ], [ %.02632.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %.02731.i.prol = phi ptr [ %i.bd, %.lr.ph33.i.prol ], [ %.02731.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %prol.iter82 = phi i64 [ %prol.iter82.next, %.lr.ph33.i.prol ], [ 0, %.lr.ph33.i.preheader ]
  %i.bb = load i8, ptr %.02632.i.prol, align 1, !tbaa !23
  %i.bc = sext i8 %i.bb to i16
  store i16 %i.bc, ptr %.02731.i.prol, align 2, !tbaa !38
  %i.bd = getelementptr i8, ptr %.02731.i.prol, i64 2 ; 2 uses
  %i.be = getelementptr i8, ptr %.02632.i.prol, i64 1 ; 2 uses
  %prol.iter82.next = add i64 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i64 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol, !llvm.loop !79

.lr.ph33.i.prol.loopexit:                         ; preds = %.lr.ph33.i.prol, %.lr.ph33.i.preheader
  %.02632.i.unr = phi ptr [ %.02632.i.ph, %.lr.ph33.i.preheader ], [ %i.be, %.lr.ph33.i.prol ]
  %.02731.i.unr = phi ptr [ %.02731.i.ph, %.lr.ph33.i.preheader ], [ %i.bd, %.lr.ph33.i.prol ]
  %i.bf = sub i64 %.02632.i.ph79, %i.az
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %unicode_write_cstr.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.prol.loopexit, %.lr.ph33.i
  %.02632.i = phi ptr [ %i.cm, %.lr.ph33.i ], [ %.02632.i.unr, %.lr.ph33.i.prol.loopexit ] ; 9 uses
  %.02731.i = phi ptr [ %i.cl, %.lr.ph33.i ], [ %.02731.i.unr, %.lr.ph33.i.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.02632.i, align 1, !tbaa !23
  %i.bi = sext i8 %i.bh to i16
  store i16 %i.bi, ptr %.02731.i, align 2, !tbaa !38
  %i.bj = getelementptr i8, ptr %.02731.i, i64 2
  %i.bk = getelementptr i8, ptr %.02632.i, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.bm = sext i8 %i.bl to i16
  store i16 %i.bm, ptr %i.bj, align 2, !tbaa !38
  %i.bn = getelementptr i8, ptr %.02731.i, i64 4
  %i.bo = getelementptr i8, ptr %.02632.i, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !23
  %i.bq = sext i8 %i.bp to i16
  store i16 %i.bq, ptr %i.bn, align 2, !tbaa !38
  %i.br = getelementptr i8, ptr %.02731.i, i64 6
  %i.bs = getelementptr i8, ptr %.02632.i, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bu = sext i8 %i.bt to i16
  store i16 %i.bu, ptr %i.br, align 2, !tbaa !38
  %i.bv = getelementptr i8, ptr %.02731.i, i64 8
  %i.bw = getelementptr i8, ptr %.02632.i, i64 4
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !23
  %i.by = sext i8 %i.bx to i16
  store i16 %i.by, ptr %i.bv, align 2, !tbaa !38
  %i.bz = getelementptr i8, ptr %.02731.i, i64 10
  %i.ca = getelementptr i8, ptr %.02632.i, i64 5
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !23
  %i.cc = sext i8 %i.cb to i16
  store i16 %i.cc, ptr %i.bz, align 2, !tbaa !38
  %i.cd = getelementptr i8, ptr %.02731.i, i64 12
  %i.ce = getelementptr i8, ptr %.02632.i, i64 6
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %i.cg = sext i8 %i.cf to i16
  store i16 %i.cg, ptr %i.cd, align 2, !tbaa !38
  %i.ch = getelementptr i8, ptr %.02731.i, i64 14
  %i.ci = getelementptr i8, ptr %.02632.i, i64 7
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.ck = sext i8 %i.cj to i16
  store i16 %i.ck, ptr %i.ch, align 2, !tbaa !38
  %i.cl = getelementptr i8, ptr %.02731.i, i64 16
  %i.cm = getelementptr i8, ptr %.02632.i, i64 8  ; 2 uses
  %exitcond35.not.i.7 = icmp eq ptr %i.cm, %i.a
  br i1 %exitcond35.not.i.7, label %unicode_write_cstr.exit, label %.lr.ph33.i, !llvm.loop !81

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.cn = icmp ult ptr %1, %i.a
  br i1 %i.cn, label %.lr.ph.preheader.i, label %unicode_write_cstr.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.co = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.x ; 5 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cp = add i64 %i.x, %2
  %i.cq = shl i64 %i.cp, 2
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.cq
  %bound0 = icmp ult ptr %i.co, %i.a
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.cu ; 2 uses
  %next.gep40 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep40, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep40, align 1, !tbaa !23, !alias.scope !82
  %wide.load41 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !23, !alias.scope !82
  %i.cw = sext <4 x i8> %wide.load to <4 x i32>
  %i.cx = sext <4 x i8> %wide.load41 to <4 x i32>
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.cw, ptr %next.gep, align 4, !tbaa !7, !alias.scope !85, !noalias !82
  store <4 x i32> %i.cx, ptr %i.cy, align 4, !tbaa !7, !alias.scope !85, !noalias !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %unicode_write_cstr.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.030.i.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.preheader.i ], [ %i.cs, %middle.block ] ; 2 uses
  %.129.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader.i ], [ %i.ct, %middle.block ] ; 3 uses
  %i.da = add i64 %2, %3                          ; 2 uses
  %.129.i.ph78 = ptrtoaddr ptr %.129.i.ph to i64  ; 2 uses
  %i.db = sub i64 %i.da, %.129.i.ph78
  %xtraiter = and i64 %i.db, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi ptr [ %i.de, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.129.i.prol = phi ptr [ %i.df, %.lr.ph.i.prol ], [ %.129.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dc = load i8, ptr %.129.i.prol, align 1, !tbaa !23
  %i.dd = sext i8 %i.dc to i32
  store i32 %i.dd, ptr %.030.i.prol, align 4, !tbaa !7
  %i.de = getelementptr i8, ptr %.030.i.prol, i64 4 ; 2 uses
  %i.df = getelementptr i8, ptr %.129.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !88

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi ptr [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.de, %.lr.ph.i.prol ]
  %.129.i.unr = phi ptr [ %.129.i.ph, %.lr.ph.i.preheader ], [ %i.df, %.lr.ph.i.prol ]
  %i.dg = sub i64 %.129.i.ph78, %i.da
  %i.dh = icmp ugt i64 %i.dg, -8
  br i1 %i.dh, label %unicode_write_cstr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi ptr [ %i.em, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.129.i = phi ptr [ %i.en, %.lr.ph.i ], [ %.129.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.di = load i8, ptr %.129.i, align 1, !tbaa !23
  %i.dj = sext i8 %i.di to i32
  store i32 %i.dj, ptr %.030.i, align 4, !tbaa !7
  %i.dk = getelementptr i8, ptr %.030.i, i64 4
  %i.dl = getelementptr i8, ptr %.129.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !23
  %i.dn = sext i8 %i.dm to i32
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !7
  %i.do = getelementptr i8, ptr %.030.i, i64 8
  %i.dp = getelementptr i8, ptr %.129.i, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  %i.dr = sext i8 %i.dq to i32
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !7
  %i.ds = getelementptr i8, ptr %.030.i, i64 12
  %i.dt = getelementptr i8, ptr %.129.i, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = sext i8 %i.du to i32
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !7
  %i.dw = getelementptr i8, ptr %.030.i, i64 16
  %i.dx = getelementptr i8, ptr %.129.i, i64 4
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !23
  %i.dz = sext i8 %i.dy to i32
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !7
  %i.ea = getelementptr i8, ptr %.030.i, i64 20
  %i.eb = getelementptr i8, ptr %.129.i, i64 5
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !23
  %i.ed = sext i8 %i.ec to i32
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !7
  %i.ee = getelementptr i8, ptr %.030.i, i64 24
  %i.ef = getelementptr i8, ptr %.129.i, i64 6
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !23
  %i.eh = sext i8 %i.eg to i32
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !7
  %i.ei = getelementptr i8, ptr %.030.i, i64 28
  %i.ej = getelementptr i8, ptr %.129.i, i64 7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !23
  %i.el = sext i8 %i.ek to i32
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !7
  %i.em = getelementptr i8, ptr %.030.i, i64 32
  %i.en = getelementptr i8, ptr %.129.i, i64 8    ; 2 uses
  %exitcond.not.i.7 = icmp eq ptr %i.en, %i.a
  br i1 %exitcond.not.i.7, label %unicode_write_cstr.exit, label %.lr.ph.i, !llvm.loop !89

bb.m:                                             ; preds = %_PyUnicode_DATA.exit.i
  unreachable

unicode_write_cstr.exit:                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph33.i.prol.loopexit, %.lr.ph33.i, %middle.block, %middle.block61, %vec.epilog.middle.block, %bb.j, %bb.k, %bb.l
  %i.eo = phi i64 [ %i.x, %middle.block61 ], [ %i.x, %bb.l ], [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %middle.block ], [ %i.x, %vec.epilog.middle.block ], [ %i.x, %.lr.ph33.i.prol.loopexit ], [ %i.x, %.lr.ph33.i ], [ %i.x, %.lr.ph.i ], [ %i.x, %.lr.ph.i.prol.loopexit ]
  %i.ep = add i64 %i.eo, %2
  store i64 %i.ep, ptr %i.w, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %.split20, %unicode_write_cstr.exit
  %.0 = phi i32 [ 0, %unicode_write_cstr.exit ], [ -1, %.split20 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicodeWriter_Finish(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 11 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %Py_DECREF.exit28, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.e, -1
  br i1 %.not.i27, label %bb.d, label %Py_DECREF.exit28

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit28

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.h = tail call ptr @_PyUnicode_GetEmpty() #9
  br label %Py_DECREF.exit.thread

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %0, i64 53
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.g, label %Py_DECREF.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %i.d, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !32
  %.not24 = icmp eq i64 %.val, %i.b
  br i1 %.not24, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @_PyUnicode_ResizeCompact(ptr noundef nonnull %i.d, i64 noundef %i.b) #9 ; 2 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %Py_DECREF.exit.thread

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit.thread

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g
  %.121 = phi ptr [ %i.d, %bb.g ], [ %i.l, %bb.h ]
  %i.p = tail call ptr @_PyUnicode_Result(ptr noundef nonnull %.121) #9
  br label %Py_DECREF.exit.thread

Py_DECREF.exit.thread:                            ; preds = %bb.i, %bb.j, %bb.k, %bb.f, %Py_DECREF.exit, %Py_DECREF.exit28
  %.1 = phi ptr [ %i.h, %Py_DECREF.exit28 ], [ %i.d, %bb.f ], [ %i.p, %Py_DECREF.exit ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.1
}

declare ptr @_PyUnicode_GetEmpty() local_unnamed_addr #3

declare ptr @_PyUnicode_Result(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicodeWriter_Finish(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyUnicodeWriter_Finish(ptr noundef %0)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11752    ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %or.cond.i.i = icmp eq i64 %i.e, 0
  br i1 %or.cond.i.i, label %_PyFreeList_Push.exit.i, label %bb.b

_PyFreeList_Push.exit.i:                          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 11744    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  store ptr %i.g, ptr %0, align 8, !tbaa !21
  store ptr %0, ptr %i.f, align 8, !tbaa !19
  store i64 1, ptr %i.d, align 8, !tbaa !22
  br label %_PyFreeList_Free.exit

bb.b:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef %0) #9
  br label %_PyFreeList_Free.exit

_PyFreeList_Free.exit:                            ; preds = %_PyFreeList_Push.exit.i, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

end_hunk_0
