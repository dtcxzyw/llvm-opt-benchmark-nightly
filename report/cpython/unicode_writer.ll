Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_writer?download=true
inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicodeWriter_WriteStr:bb.a
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = icmp eq i64 %2, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.089 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 52
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_PyUnicode_FromASCII(ptr noundef %1, i64 noundef %.089) #9 ; 5 uses
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
  %i.x = add i64 %i.w, %.089
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
  %i.ag = icmp sle i64 %.089, %i.af
  %i.ah = icmp eq i64 %.089, 0
  %or.cond = or i1 %i.ah, %i.ag
  br i1 %or.cond, label %.critedge, label %.split90

bb.l:                                             ; preds = %bb.j
  %.old1 = icmp eq i64 %.089, 0
  br i1 %.old1, label %.critedge, label %.split90

.split90:                                         ; preds = %bb.l, %bb.k
  %i.ai = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.089, i32 noundef 127)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %1, i64 %.089, i1 false)
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !25
  br label %.loopexit

bb.n:                                             ; preds = %.critedge
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %.089
  %i.at = and i64 %.089, -4
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  %i.av = icmp ult ptr %1, %i.au
  br i1 %i.av, label %.lr.ph103, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph103
  %.pre117 = ptrtoaddr ptr %i.cf to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.n
  %.083.lcssa114.pre-phi = phi i64 [ %.pre117, %.preheader.loopexit ], [ %i.a, %bb.n ] ; 2 uses
  %.085.lcssa = phi ptr [ %i.cg, %.preheader.loopexit ], [ %i.ar, %bb.n ] ; 8 uses
  %.083.lcssa = phi ptr [ %i.cf, %.preheader.loopexit ], [ %1, %bb.n ] ; 9 uses
  %i.aw = icmp ult ptr %.083.lcssa, %i.as
  br i1 %i.aw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ax = add i64 %.089, %i.a                     ; 2 uses
  %i.ay = sub i64 %i.ax, %.083.lcssa114.pre-phi   ; 8 uses
  %scevgep115 = getelementptr i8, ptr %.083.lcssa, i64 %i.ay ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check143, label %.lr.ph108.preheader, label %vector.memcheck137

vector.memcheck137:                               ; preds = %iter.check
  %i.az = sub i64 %i.ax, %.083.lcssa114.pre-phi
  %i.ba = shl i64 %i.az, 1
  %scevgep138 = getelementptr i8, ptr %.085.lcssa, i64 %i.ba
  %bound0139 = icmp ult ptr %.085.lcssa, %scevgep115
  %bound1140 = icmp ult ptr %.083.lcssa, %scevgep138
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck137
  %min.iters.check144 = icmp ult i64 %i.ay, 16
  br i1 %min.iters.check144, label %vec.epilog.ph, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ay, 12
  %n.vec146 = and i64 %i.ay, -16                  ; 5 uses
  %i.bc = getelementptr i8, ptr %.083.lcssa, i64 %n.vec146
  %i.bd = shl i64 %n.vec146, 1
  %i.be = getelementptr i8, ptr %.085.lcssa, i64 %i.bd
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 3 uses
  %next.gep149 = getelementptr i8, ptr %.083.lcssa, i64 %index148 ; 2 uses
  %i.bf = shl i64 %index148, 1
  %next.gep150 = getelementptr i8, ptr %.085.lcssa, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load151 = load <8 x i8>, ptr %next.gep149, align 1, !tbaa !23, !alias.scope !48
  %wide.load152 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !23, !alias.scope !48
  %i.bh = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.bi = zext <8 x i8> %wide.load152 to <8 x i16>
  %i.bj = getelementptr i8, ptr %next.gep150, i64 16
  store <8 x i16> %i.bh, ptr %next.gep150, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  store <8 x i16> %i.bi, ptr %i.bj, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  %index.next153 = add nuw i64 %index148, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.bk, label %middle.block154, label %vector.body147, !llvm.loop !53

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.ay, %n.vec146
  br i1 %cmp.n155, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block154
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph108.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec146, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec158 = and i64 %i.ay, -4                   ; 4 uses
  %i.bl = getelementptr i8, ptr %.083.lcssa, i64 %n.vec158
  %i.bm = shl i64 %n.vec158, 1
  %i.bn = getelementptr i8, ptr %.085.lcssa, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index159 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next163, %vec.epilog.vector.body ] ; 3 uses
  %next.gep160 = getelementptr i8, ptr %.083.lcssa, i64 %index159
  %i.bo = shl i64 %index159, 1
  %next.gep161 = getelementptr i8, ptr %.085.lcssa, i64 %i.bo
  %wide.load162 = load <4 x i8>, ptr %next.gep160, align 1, !tbaa !23, !alias.scope !48
  %i.bp = zext <4 x i8> %wide.load162 to <4 x i16>
  store <4 x i16> %i.bp, ptr %next.gep161, align 2, !tbaa !38, !alias.scope !51, !noalias !48
  %index.next163 = add nuw i64 %index159, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n164 = icmp eq i64 %i.ay, %n.vec158
  br i1 %cmp.n164, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck137, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.184107.ph = phi ptr [ %.083.lcssa, %iter.check ], [ %.083.lcssa, %vector.memcheck137 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.186106.ph = phi ptr [ %.085.lcssa, %iter.check ], [ %.085.lcssa, %vector.memcheck137 ], [ %i.be, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.n, %.lr.ph103
  %.083102 = phi ptr [ %i.cf, %.lr.ph103 ], [ %1, %bb.n ] ; 5 uses
  %.085101 = phi ptr [ %i.cg, %.lr.ph103 ], [ %i.ar, %bb.n ] ; 5 uses
  %i.br = load i8, ptr %.083102, align 1, !tbaa !23
  %i.bs = zext i8 %i.br to i16
  store i16 %i.bs, ptr %.085101, align 2, !tbaa !38
  %i.bt = getelementptr i8, ptr %.083102, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = zext i8 %i.bu to i16
  %i.bw = getelementptr i8, ptr %.085101, i64 2
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !38
  %i.bx = getelementptr i8, ptr %.083102, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  %i.bz = zext i8 %i.by to i16
  %i.ca = getelementptr i8, ptr %.085101, i64 4
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !38
  %i.cb = getelementptr i8, ptr %.083102, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %i.cd = zext i8 %i.cc to i16
  %i.ce = getelementptr i8, ptr %.085101, i64 6
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !38
  %i.cf = getelementptr i8, ptr %.083102, i64 4   ; 4 uses
  %i.cg = getelementptr i8, ptr %.085101, i64 8   ; 2 uses
  %i.ch = icmp ult ptr %i.cf, %i.au
  br i1 %i.ch, label %.lr.ph103, label %.preheader.loopexit, !llvm.loop !59

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %.184107 = phi ptr [ %i.ci, %.lr.ph108 ], [ %.184107.ph, %.lr.ph108.preheader ] ; 2 uses
  %.186106 = phi ptr [ %i.cl, %.lr.ph108 ], [ %.186106.ph, %.lr.ph108.preheader ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.184107, i64 1   ; 2 uses
  %i.cj = load i8, ptr %.184107, align 1, !tbaa !23
  %i.ck = zext i8 %i.cj to i16
  %i.cl = getelementptr i8, ptr %.186106, i64 2
  store i16 %i.ck, ptr %.186106, align 2, !tbaa !38
  %exitcond116.not = icmp eq ptr %i.ci, %scevgep115
  br i1 %exitcond116.not, label %.loopexit, label %.lr.ph108, !llvm.loop !60

bb.o:                                             ; preds = %.critedge
  %i.cm = getelementptr [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.cn = getelementptr i8, ptr %1, i64 %.089
  %i.co = and i64 %.089, -4
  %i.cp = getelementptr i8, ptr %1, i64 %i.co     ; 2 uses
  %i.cq = icmp ult ptr %1, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader93

.preheader93.loopexit:                            ; preds = %.lr.ph
  %.pre118 = ptrtoaddr ptr %i.dt to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.loopexit, %bb.o
  %.0.lcssa113.pre-phi = phi i64 [ %.pre118, %.preheader93.loopexit ], [ %i.a, %bb.o ] ; 2 uses
  %.081.lcssa = phi ptr [ %i.du, %.preheader93.loopexit ], [ %i.cm, %bb.o ] ; 6 uses
  %.0.lcssa = phi ptr [ %i.dt, %.preheader93.loopexit ], [ %1, %bb.o ] ; 7 uses
  %i.cr = icmp ult ptr %.0.lcssa, %i.cn
  br i1 %i.cr, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader93
  %i.cs = add i64 %.089, %i.a                     ; 2 uses
  %i.ct = sub i64 %i.cs, %.0.lcssa113.pre-phi     ; 4 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa, i64 %i.ct ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 20
  br i1 %min.iters.check, label %.lr.ph100.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.cu = sub i64 %i.cs, %.0.lcssa113.pre-phi
  %i.cv = shl i64 %i.cu, 2
  %scevgep133 = getelementptr i8, ptr %.081.lcssa, i64 %i.cv
  %bound0 = icmp ult ptr %.081.lcssa, %scevgep
  %bound1 = icmp ult ptr %.0.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ct, -8                      ; 4 uses
  %i.cw = getelementptr i8, ptr %.0.lcssa, i64 %n.vec
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %.081.lcssa, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %index ; 2 uses
  %i.cz = shl i64 %index, 2
  %next.gep134 = getelementptr i8, ptr %.081.lcssa, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !23, !alias.scope !61
  %wide.load135 = load <4 x i8>, ptr %i.da, align 1, !tbaa !23, !alias.scope !61
  %i.db = zext <4 x i8> %wide.load to <4 x i32>
  %i.dc = zext <4 x i8> %wide.load135 to <4 x i32>
  %i.dd = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %i.db, ptr %next.gep134, align 4, !tbaa !7, !alias.scope !64, !noalias !61
  store <4 x i32> %i.dc, ptr %i.dd, align 4, !tbaa !7, !alias.scope !64, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader168

.lr.ph100.preheader168:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.199.ph = phi ptr [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph100.preheader ], [ %i.cw, %middle.block ]
  %.18298.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph100.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.096 = phi ptr [ %i.dt, %.lr.ph ], [ %1, %bb.o ] ; 5 uses
  %.08195 = phi ptr [ %i.du, %.lr.ph ], [ %i.cm, %bb.o ] ; 5 uses
  %i.df = load i8, ptr %.096, align 1, !tbaa !23
  %i.dg = zext i8 %i.df to i32
  store i32 %i.dg, ptr %.08195, align 4, !tbaa !7
  %i.dh = getelementptr i8, ptr %.096, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !23
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr i8, ptr %.08195, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !7
  %i.dl = getelementptr i8, ptr %.096, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !23
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr i8, ptr %.08195, i64 8
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !7
  %i.dp = getelementptr i8, ptr %.096, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr i8, ptr %.08195, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !7
  %i.dt = getelementptr i8, ptr %.096, i64 4      ; 4 uses
  %i.du = getelementptr i8, ptr %.08195, i64 16   ; 2 uses
  %i.dv = icmp ult ptr %i.dt, %i.cp
  br i1 %i.dv, label %.lr.ph, label %.preheader93.loopexit, !llvm.loop !67

.lr.ph100:                                        ; preds = %.lr.ph100.preheader168, %.lr.ph100
  %.199 = phi ptr [ %i.dw, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader168 ] ; 2 uses
  %.18298 = phi ptr [ %i.dz, %.lr.ph100 ], [ %.18298.ph, %.lr.ph100.preheader168 ] ; 2 uses
  %i.dw = getelementptr i8, ptr %.199, i64 1      ; 2 uses
  %i.dx = load i8, ptr %.199, align 1, !tbaa !23
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr i8, ptr %.18298, i64 4
  store i32 %i.dy, ptr %.18298, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dw, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph100, !llvm.loop !68

bb.p:                                             ; preds = %.critedge
  unreachable

.loopexit:                                        ; preds = %.lr.ph100, %.lr.ph108, %middle.block, %middle.block154, %vec.epilog.middle.block, %.preheader93, %.preheader, %bb.m
  %i.ea = phi i64 [ %i.ap, %middle.block154 ], [ %.pre, %bb.m ], [ %i.ap, %.preheader93 ], [ %i.ap, %.preheader ], [ %i.ap, %middle.block ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ap, %.lr.ph108 ], [ %i.ap, %.lr.ph100 ]
  %i.eb = getelementptr i8, ptr %0, i64 32
  %i.ec = add i64 %i.ea, %.089
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %.split90, %_PyUnicodeWriter_Update.exit, %bb.e, %.loopexit
  %.188 = phi i32 [ -1, %bb.e ], [ 0, %.loopexit ], [ 0, %_PyUnicodeWriter_Update.exit ], [ -1, %.split90 ]
  ret i32 %.188
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %2         ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.019.i = phi ptr [ %1, %bb.a ], [ %i.j, %.thread31.i ] ; 4 uses
  %i.c = icmp ult ptr %.019.i, %i.b
  br i1 %i.c, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %.019.i to i64
  %i.e = and i64 %i.d, 7
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.017.i = phi ptr [ %i.f, %bb.d ], [ %.019.i, %bb.c ] ; 4 uses
  %i.f = getelementptr i8, ptr %.017.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.f, %i.b
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.g = load i64, ptr %.017.i, align 8, !tbaa !69
  %i.h = and i64 %i.g, -9187201950435737472
  %.not27.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !70

bb.e:                                             ; preds = %.preheader.i
  %i.i = icmp eq ptr %.017.i, %i.b
  br i1 %i.i, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.2.i = phi ptr [ %.019.i, %bb.c ], [ %.017.i, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.2.i, i64 1
  %i.k = load i8, ptr %.2.i, align 1, !tbaa !23
  %.not28.i = icmp sgt i8 %i.k, -1
  br i1 %.not28.i, label %bb.b, label %ucs1lib_find_max_char.exit, !llvm.loop !71

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e, %.thread31.i, %bb.d
  %.5.i = phi i32 [ 255, %bb.d ], [ 127, %bb.b ], [ 127, %bb.e ], [ 255, %.thread31.i ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29
  %.not = icmp ugt i32 %.5.i, %i.m
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ucs1lib_find_max_char.exit
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp sle i64 %2, %i.r
  %i.t = icmp eq i64 %2, 0
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.critedge, label %.split20

bb.g:                                             ; preds = %ucs1lib_find_max_char.exit
  %.old1 = icmp eq i64 %2, 0
  br i1 %.old1, label %.critedge, label %.split20

.split20:                                         ; preds = %bb.g, %bb.f
  %i.u = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.5.i)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %.split20
  %i.w = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25   ; 14 uses
  %i.z = getelementptr i8, ptr %i.w, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = and i32 %i.aa, 32
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ae = and i32 %i.aa, 64
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %.critedge
  %i.af = getelementptr i8, ptr %i.w, i64 56
  %.val4.i.i = load ptr, ptr %i.af, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ] ; 5 uses
  switch i32 %i.ac, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
end_hunk_0
