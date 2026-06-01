inline.NumInlined: 446
inline.NumDeleted: 84
begin_hunk_0_@_elementtree_Element___setstate__:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #11
  br label %element_setstate_from_Python.exit.i

element_setstate_from_Python.exit.i:              ; preds = %bb.aq, %bb.ap, %element_setstate_from_attributes.exit.i.i, %bb.d
  %.08.i.i = phi ptr [ null, %bb.d ], [ %.0.i.i, %element_setstate_from_attributes.exit.i.i ], [ %.0.i.i, %bb.ap ], [ %.0.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_elementtree_Element___setstate___impl.exit

_elementtree_Element___setstate___impl.exit:      ; preds = %element_setstate_from_Python.exit.i, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.08.i.i, %element_setstate_from_Python.exit.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  ret ptr %.0
}

declare ptr @PyDict_GetItemWithError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @checkpath(ptr noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val75 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr i8, ptr %.val75, i64 168
  %.val77 = load i64, ptr %i.b, align 8, !tbaa !48 ; 2 uses
  %i.c = and i64 %.val77, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val79 = load i64, ptr %i.d, align 8, !tbaa !143 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.e, align 8           ; 3 uses
  %i.f = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !26
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 15 uses
  %i.i = lshr i32 %.val.i, 2
  %i.j = and i32 %i.i, 7                          ; 6 uses
  %i.k = icmp sgt i64 %.val79, 2
  br i1 %i.k, label %bb.e, label %bb.u

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.j, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %.0.i, align 1, !tbaa !26
  %i.m = zext i8 %i.l to i32
  br label %PyUnicode_READ.exit

bb.g:                                             ; preds = %bb.e
  %i.n = load i16, ptr %.0.i, align 2, !tbaa !146
  %i.o = zext i16 %i.n to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %bb.e
  %i.p = load i32, ptr %.0.i, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.f, %bb.g, %bb.h
  %.0.i80 = phi i32 [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i80, 123
  br i1 %i.q, label %bb.i, label %.lr.ph

bb.i:                                             ; preds = %PyUnicode_READ.exit
  switch i32 %i.j, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %.0.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32
  br label %PyUnicode_READ.exit82

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %.0.i, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !146
  %i.w = zext i16 %i.v to i32
  br label %PyUnicode_READ.exit82

bb.l:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.0.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6
  br label %PyUnicode_READ.exit82

PyUnicode_READ.exit82:                            ; preds = %bb.j, %bb.k, %bb.l
  %.0.i81 = phi i32 [ %i.t, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ]
  %i.z = icmp eq i32 %.0.i81, 125
  br i1 %i.z, label %.critedge, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit82
  switch i32 %i.j, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %.0.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = zext i8 %i.ab to i32
  br label %PyUnicode_READ.exit84

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %.0.i, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !146
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ.exit84

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %.0.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6
  br label %PyUnicode_READ.exit84

PyUnicode_READ.exit84:                            ; preds = %bb.n, %bb.o, %bb.p
  %.0.i83 = phi i32 [ %i.ac, %bb.n ], [ %i.af, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i83, 42
  br i1 %i.ai, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %PyUnicode_READ.exit84
  switch i32 %i.j, label %bb.t [
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %.0.i, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i32
  br label %PyUnicode_READ.exit86

bb.s:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.0.i, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !146
  %i.ao = zext i16 %i.an to i32
  br label %PyUnicode_READ.exit86

bb.t:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %.0.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !6
  br label %PyUnicode_READ.exit86

PyUnicode_READ.exit86:                            ; preds = %bb.r, %bb.s, %bb.t
  %.0.i85 = phi i32 [ %i.al, %bb.r ], [ %i.ao, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = icmp eq i32 %.0.i85, 125
  br i1 %i.ar, label %.critedge, label %.lr.ph

bb.u:                                             ; preds = %_PyUnicode_DATA.exit
  %i.as = icmp sgt i64 %.val79, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %PyUnicode_READ.exit, %PyUnicode_READ.exit84, %PyUnicode_READ.exit86, %bb.u
  switch i32 %i.j, label %PyUnicode_READ.exit88 [
    i32 1, label %PyUnicode_READ.exit88.us
    i32 2, label %PyUnicode_READ.exit88.us111
  ]

PyUnicode_READ.exit88.us:                         ; preds = %.lr.ph, %bb.y
  %.06192.us = phi i64 [ %i.av, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  %.06391.us = phi i32 [ %.164.us, %bb.y ], [ %i.j, %.lr.ph ]
  %i.at = getelementptr i8, ptr %.0.i, i64 %.06192.us
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26  ; 2 uses
  switch i8 %i.au, label %bb.w [
    i8 123, label %bb.y
    i8 125, label %bb.v
  ]

bb.v:                                             ; preds = %PyUnicode_READ.exit88.us
  br label %bb.y

bb.w:                                             ; preds = %PyUnicode_READ.exit88.us
  %.not74.us = icmp eq i32 %.06391.us, 0
  br i1 %.not74.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %switch.tableidx = add i8 %i.au, -42            ; 2 uses
  %1 = icmp ult i8 %switch.tableidx, 50
  br i1 %1, label %switch.hole_check, label %bb.y

bb.y:                                             ; preds = %switch.hole_check, %bb.x, %bb.w, %bb.v, %PyUnicode_READ.exit88.us
  %.164.us = phi i32 [ 0, %bb.w ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %PyUnicode_READ.exit88.us ], [ 1, %switch.hole_check ]
  %i.av = add nuw nsw i64 %.06192.us, 1           ; 2 uses
  %exitcond147.not = icmp eq i64 %i.av, %.val79
  br i1 %exitcond147.not, label %.critedge, label %PyUnicode_READ.exit88.us, !llvm.loop !151

PyUnicode_READ.exit88.us111:                      ; preds = %.lr.ph, %bb.ac
  %.06192.us109 = phi i64 [ %i.ay, %bb.ac ], [ 0, %.lr.ph ] ; 2 uses
  %.06391.us110 = phi i32 [ %.164.us114, %bb.ac ], [ 1, %.lr.ph ]
  %i.aw = getelementptr [2 x i8], ptr %.0.i, i64 %.06192.us109
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !146 ; 2 uses
  switch i16 %i.ax, label %bb.aa [
    i16 123, label %bb.ac
    i16 125, label %bb.z
  ]

bb.z:                                             ; preds = %PyUnicode_READ.exit88.us111
  br label %bb.ac

bb.aa:                                            ; preds = %PyUnicode_READ.exit88.us111
  %.not74.us113 = icmp eq i32 %.06391.us110, 0
  br i1 %.not74.us113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %switch.tableidx167 = add i16 %i.ax, -42        ; 2 uses
  %2 = icmp ult i16 %switch.tableidx167, 50
  br i1 %2, label %switch.hole_check169, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check169, %bb.ab, %bb.aa, %bb.z, %PyUnicode_READ.exit88.us111
  %.164.us114 = phi i32 [ 0, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %PyUnicode_READ.exit88.us111 ], [ 1, %switch.hole_check169 ]
  %i.ay = add nuw nsw i64 %.06192.us109, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.val79
  br i1 %exitcond.not, label %.critedge, label %PyUnicode_READ.exit88.us111, !llvm.loop !151

PyUnicode_READ.exit88:                            ; preds = %.lr.ph, %bb.ag
  %.06192 = phi i64 [ %i.bb, %bb.ag ], [ 0, %.lr.ph ] ; 2 uses
  %.06391 = phi i32 [ %.164, %bb.ag ], [ 1, %.lr.ph ]
  %i.az = getelementptr [4 x i8], ptr %.0.i, i64 %.06192
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !6  ; 2 uses
  switch i32 %i.ba, label %bb.ae [
    i32 123, label %bb.ag
    i32 125, label %bb.ad
  ]

bb.ad:                                            ; preds = %PyUnicode_READ.exit88
  br label %bb.ag

bb.ae:                                            ; preds = %PyUnicode_READ.exit88
  %.not74 = icmp eq i32 %.06391, 0
  br i1 %.not74, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %switch.tableidx174 = add i32 %i.ba, -42        ; 2 uses
  %3 = icmp ult i32 %switch.tableidx174, 50
  %switch.maskindex178 = zext nneg i32 %switch.tableidx174 to i64
  %switch.shifted179 = lshr i64 562949957615665, %switch.maskindex178
  %switch.lobit180 = trunc i64 %switch.shifted179 to i1
  %or.cond = select i1 %3, i1 %switch.lobit180, i1 false
  br i1 %or.cond, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %PyUnicode_READ.exit88, %bb.ad, %bb.ae
  %.164 = phi i32 [ 0, %bb.ae ], [ 1, %bb.ad ], [ 1, %bb.af ], [ 0, %PyUnicode_READ.exit88 ]
  %i.bb = add nuw nsw i64 %.06192, 1              ; 2 uses
  %exitcond148.not = icmp eq i64 %i.bb, %.val79
  br i1 %exitcond148.not, label %.critedge, label %PyUnicode_READ.exit88, !llvm.loop !151

bb.ah:                                            ; preds = %bb.a
  %i.bc = and i64 %.val77, 134217728
  %.not72 = icmp eq i64 %i.bc, 0
  br i1 %.not72, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bd = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 16
  %.val78 = load i64, ptr %i.be, align 8, !tbaa !105 ; 3 uses
  %i.bf = icmp sgt i64 %.val78, 2
  br i1 %i.bf, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.bg = load i8, ptr %i.bd, align 8, !tbaa !26
  %i.bh = icmp eq i8 %i.bg, 123
  br i1 %i.bh, label %bb.ak, label %.lr.ph129.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.bi = getelementptr i8, ptr %0, i64 33
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26
  switch i8 %i.bj, label %.lr.ph129.preheader [
    i8 125, label %.critedge
    i8 42, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr i8, ptr %0, i64 34
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !26
  %i.bm = icmp eq i8 %i.bl, 125
  br i1 %i.bm, label %.critedge, label %.lr.ph129.preheader

bb.am:                                            ; preds = %bb.ai
  %i.bn = icmp sgt i64 %.val78, 0
  br i1 %i.bn, label %.lr.ph129.preheader, label %.critedge

.lr.ph129.preheader:                              ; preds = %bb.aj, %bb.al, %bb.ak, %bb.am
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.aq
  %.162128 = phi i64 [ %i.bq, %bb.aq ], [ 0, %.lr.ph129.preheader ] ; 2 uses
  %.366127 = phi i32 [ %.467, %bb.aq ], [ 1, %.lr.ph129.preheader ]
  %i.bo = getelementptr i8, ptr %i.bd, i64 %.162128
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26  ; 2 uses
  switch i8 %i.bp, label %bb.ao [
    i8 123, label %bb.aq
    i8 125, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph129
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph129
  %.not73 = icmp eq i32 %.366127, 0
  br i1 %.not73, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %switch.tableidx181 = add i8 %i.bp, -42         ; 2 uses
  %4 = icmp ult i8 %switch.tableidx181, 50
  br i1 %4, label %switch.hole_check183, label %bb.aq

bb.aq:                                            ; preds = %switch.hole_check183, %bb.ap, %.lr.ph129, %bb.ao, %bb.an
  %.467 = phi i32 [ 0, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ap ], [ 0, %.lr.ph129 ], [ 1, %switch.hole_check183 ]
  %i.bq = add nuw nsw i64 %.162128, 1             ; 2 uses
  %exitcond149.not = icmp eq i64 %i.bq, %.val78
  br i1 %exitcond149.not, label %.critedge, label %.lr.ph129, !llvm.loop !152

switch.hole_check183:                             ; preds = %bb.ap
  %switch.maskindex185 = zext nneg i8 %switch.tableidx181 to i64
  %switch.shifted186 = lshr i64 562949957615665, %switch.maskindex185
  %switch.lobit187 = trunc i64 %switch.shifted186 to i1
  br i1 %switch.lobit187, label %.critedge, label %bb.aq

switch.hole_check:                                ; preds = %bb.x
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 562949957615665, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %.critedge, label %bb.y

switch.hole_check169:                             ; preds = %bb.ab
  %switch.maskindex171 = zext nneg i16 %switch.tableidx167 to i64
  %switch.shifted172 = lshr i64 562949957615665, %switch.maskindex171
  %switch.lobit173 = trunc i64 %switch.shifted172 to i1
  br i1 %switch.lobit173, label %.critedge, label %bb.ac

.critedge:                                        ; preds = %bb.ac, %switch.hole_check169, %bb.y, %switch.hole_check, %bb.ag, %bb.af, %bb.aq, %switch.hole_check183, %bb.u, %bb.am, %bb.ah, %bb.ak, %bb.al, %PyUnicode_READ.exit86, %PyUnicode_READ.exit82
  %.4 = phi i32 [ 1, %bb.ak ], [ 1, %bb.ah ], [ 1, %PyUnicode_READ.exit82 ], [ 1, %bb.al ], [ 1, %PyUnicode_READ.exit86 ], [ 1, %switch.hole_check ], [ 0, %bb.am ], [ 0, %bb.u ], [ 1, %switch.hole_check183 ], [ 1, %bb.af ], [ 0, %bb.aq ], [ 0, %bb.ag ], [ 0, %bb.y ], [ 1, %switch.hole_check169 ], [ 0, %bb.ac ]
  ret i32 %.4
}

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyType_GetModuleState(ptr noundef) local_unnamed_addr #1

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_elementiter(ptr %.112.val, ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef %.112.val) #11 ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %1, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.e = getelementptr i8, ptr %i.a, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr i8, ptr %i.a, i64 56
  store i32 %2, ptr %i.f, align 8, !tbaa !86
  %i.g = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit16, label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !26
  br label %_Py_NewRef.exit16

_Py_NewRef.exit16:                                ; preds = %_Py_NewRef.exit, %bb.d
  %i.j = getelementptr i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.j, align 8, !tbaa !82
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 128) #11 ; 2 uses
  %i.l = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !76
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_Py_NewRef.exit16
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.q = tail call ptr @PyErr_NoMemory() #11      ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_Py_NewRef.exit16
  %i.r = getelementptr i8, ptr %i.a, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %i.a, i64 32
  store i64 8, ptr %i.s, align 8, !tbaa !87
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %Py_DECREF.exit
  %.0 = phi ptr [ null, %Py_DECREF.exit ], [ %i.a, %bb.h ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @PyDict_Items(ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_Keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_elementtree_Element___deepcopy___impl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.b = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @elementtreemodule) #11, !inline_history !111
  %i.c = tail call ptr @PyModule_GetState(ptr noundef %i.b) #11, !inline_history !111 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call fastcc ptr @deepcopy(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %1) ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %Py_DECREF.exit122, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not97 = icmp eq ptr %i.h, null
  br i1 %.not97, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not98 = icmp eq ptr %i.i, null
  br i1 %.not98, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc ptr @deepcopy(ptr noundef %i.c, ptr noundef nonnull %i.i, ptr noundef %1) ; 2 uses
  %.not99 = icmp eq ptr %i.j, null
  br i1 %.not99, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i121 = icmp sgt i32 %i.k, -1
  br i1 %.not.i121, label %bb.f, label %Py_DECREF.exit122

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit122.sink.split, label %Py_DECREF.exit122

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.082 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.n = getelementptr i8, ptr %i.c, i64 104      ; 2 uses
  %.val129 = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.o = tail call fastcc ptr @create_new_element(ptr %.val129, ptr noundef nonnull %i.f, ptr noundef %.082) ; 12 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i119 = icmp sgt i32 %i.p, -1
  br i1 %.not.i119, label %bb.h, label %Py_DECREF.exit120

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit120

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #11
  br label %Py_DECREF.exit120

Py_DECREF.exit120:                                ; preds = %bb.g, %bb.h, %bb.i
  %.not.i131 = icmp eq ptr %.082, null
  br i1 %.not.i131, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit120
  %i.s = load i32, ptr %.082, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.082, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.082) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit120, %bb.j, %bb.k, %bb.l
  %.not100 = icmp eq ptr %i.o, null
  br i1 %.not100, label %Py_DECREF.exit122, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit
  %i.v = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call fastcc ptr @deepcopy(ptr noundef nonnull %i.c, ptr noundef %i.z, ptr noundef %1) ; 2 uses
  %.not101 = icmp eq ptr %i.aa, null
  br i1 %.not101, label %.thread141, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr i8, ptr %i.o, i64 24      ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = and i64 %i.ac, -2
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, %i.ad
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr               ; 3 uses
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !25
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.not.i.i132 = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i132, label %bb.o, label %_set_joined_ptr.exit

bb.o:                                             ; preds = %bb.n
end_hunk_0
