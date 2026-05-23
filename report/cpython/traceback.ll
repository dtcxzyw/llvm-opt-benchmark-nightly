inline.NumInlined: 123
inline.NumDeleted: 46
begin_hunk_0_@PyTraceBack_Here:bb.a
  %.not.i.i14 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i14, label %bb.o, label %Py_XDECREF.exit15

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %.0.i.i, align 8, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %Py_XDECREF.exit15

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #10
  br label %Py_XDECREF.exit15

Py_XDECREF.exit15:                                ; preds = %bb.n, %bb.o, %bb.p
  tail call void @PyErr_SetRaisedException(ptr noundef %i.a) #10
  br label %bb.q

bb.q:                                             ; preds = %Py_XDECREF.exit15, %bb.m
  %.0 = phi i32 [ -1, %bb.m ], [ 0, %Py_XDECREF.exit15 ]
  ret i32 %.0
}

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #1

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_ChainExceptions1(ptr noundef) local_unnamed_addr #1

declare i32 @PyException_SetTraceback(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_PyTraceback_Add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = tail call ptr @_PyErr_GetRaisedException(ptr noundef %i.b) #10 ; 2 uses
  %i.d = tail call ptr @PyDict_New() #10          ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyCode_NewEmpty(ptr noundef %1, ptr noundef %0, i32 noundef %2) #10 ; 5 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.f, -1
  br i1 %.not.i27, label %bb.d, label %Py_DECREF.exit28

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit28

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_DECREF.exit28

bb.f:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyFrame_New(ptr noundef %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef null) #10 ; 6 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not.i25 = icmp sgt i32 %i.j, -1
  br i1 %.not.i25, label %bb.g, label %Py_DECREF.exit26

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !18
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %Py_DECREF.exit26

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.m = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not.i23 = icmp sgt i32 %i.m, -1
  br i1 %.not.i23, label %bb.i, label %Py_DECREF.exit24

bb.i:                                             ; preds = %Py_DECREF.exit26
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit24

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %Py_DECREF.exit26, %bb.i, %bb.j
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %Py_DECREF.exit28, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit24
  %i.p = getelementptr i8, ptr %i.i, i64 40
  store i32 %2, ptr %i.p, align 8, !tbaa !46
  tail call void @_PyErr_SetRaisedException(ptr noundef %i.b, ptr noundef %i.c) #10
  %i.q = tail call i32 @PyTraceBack_Here(ptr noundef nonnull %i.i) ; 0 uses
  %i.r = load i32, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.i, align 8, !tbaa !18
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit

Py_DECREF.exit28:                                 ; preds = %bb.e, %bb.d, %bb.c, %Py_DECREF.exit24, %bb.a
  tail call void @_PyErr_ChainExceptions1(ptr noundef %i.c) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit28
  ret void
}

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

declare ptr @PyCode_NewEmpty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyFrame_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyErr_SetRaisedException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_WriteIndent(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @__const._Py_WriteIndent.buf, i64 11, i1 false)
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -10
  %i.d = icmp sgt i64 %indvars.iv, 10
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !47

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.e = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 0, ptr %i.f, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.g = call i32 @PyFile_WriteString(ptr noundef nonnull %i.a, ptr noundef %1) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @PyFile_WriteString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_DisplaySourceLine(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @display_source_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @display_source_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [4097 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %Py_DECREF.exit146, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 8 uses
  %6 = lshr i32 %i.h, 2
  %i.i = and i32 %6, 7                            ; 2 uses
  %i.j = and i32 %i.h, 32
  %.not.i19.i = icmp eq i32 %i.j, 0               ; 6 uses
  switch i32 %i.i, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, 64
  %.not.i.i.i = icmp eq i32 %i.k, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 56
  %.val4.i.i = load ptr, ptr %i.l, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %.val4.i.i, %bb.e ]
  %i.m = load i8, ptr %.0.i.i, align 1, !tbaa !18
  %i.n = zext i8 %i.m to i32
  br label %PyUnicode_READ_CHAR.exit

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %i.h, 64
  %.not.i.i12.i = icmp eq i32 %i.o, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i = load ptr, ptr %i.p, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.h, %bb.g
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.g ], [ %.val4.i16.i, %bb.h ]
  %i.q = load i16, ptr %.0.i15.i, align 2, !tbaa !49
  %i.r = zext i16 %i.q to i32
  br label %PyUnicode_READ_CHAR.exit

bb.i:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i32 %i.h, 64
  %.not.i.i20.i = icmp eq i32 %i.s, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.t, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.k, %bb.j
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.j ], [ %.val4.i24.i, %bb.k ]
  %i.u = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.n, %_PyUnicode_DATA.exit.i ], [ %i.r, %_PyUnicode_DATA.exit17.i ], [ %i.u, %_PyUnicode_DATA.exit25.i ]
  %i.v = icmp eq i32 %.0.i, 60
  br i1 %i.v, label %bb.l, label %.critedge

bb.l:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.w = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %i.x = icmp sgt i64 %.val, 0
  br i1 %i.x, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i64 %.val, -1                    ; 3 uses
  switch i32 %i.i, label %bb.t [
    i32 1, label %bb.n
    i32 2, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = and i32 %i.h, 64
  %.not.i.i.i171 = icmp eq i32 %i.z, 0
  %.0.v.i.i.i172 = select i1 %.not.i.i.i171, i64 56, i64 40
  %.0.i.i.i173 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i172
  br label %_PyUnicode_DATA.exit.i174

bb.p:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i.i176 = load ptr, ptr %i.aa, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit.i174

_PyUnicode_DATA.exit.i174:                        ; preds = %bb.p, %bb.o
  %.0.i.i175 = phi ptr [ %.0.i.i.i173, %bb.o ], [ %.val4.i.i176, %bb.p ]
  %i.ab = getelementptr i8, ptr %.0.i.i175, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.ad = zext i8 %i.ac to i32
  br label %PyUnicode_READ_CHAR.exit183

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = and i32 %i.h, 64
  %.not.i.i12.i164 = icmp eq i32 %i.ae, 0
  %.0.v.i.i13.i165 = select i1 %.not.i.i12.i164, i64 56, i64 40
  %.0.i.i14.i166 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i165
  br label %_PyUnicode_DATA.exit17.i167

bb.s:                                             ; preds = %bb.q
  %i.af = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i170 = load ptr, ptr %i.af, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit17.i167

_PyUnicode_DATA.exit17.i167:                      ; preds = %bb.s, %bb.r
  %.0.i15.i168 = phi ptr [ %.0.i.i14.i166, %bb.r ], [ %.val4.i16.i170, %bb.s ]
  %i.ag = getelementptr [2 x i8], ptr %.0.i15.i168, i64 %i.y
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !49
  %i.ai = zext i16 %i.ah to i32
  br label %PyUnicode_READ_CHAR.exit183

bb.t:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = and i32 %i.h, 64
  %.not.i.i20.i177 = icmp eq i32 %i.aj, 0
  %.0.v.i.i21.i178 = select i1 %.not.i.i20.i177, i64 56, i64 40
  %.0.i.i22.i179 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i178
  br label %_PyUnicode_DATA.exit25.i180

bb.v:                                             ; preds = %bb.t
  %i.ak = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i182 = load ptr, ptr %i.ak, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit25.i180

_PyUnicode_DATA.exit25.i180:                      ; preds = %bb.v, %bb.u
  %.0.i23.i181 = phi ptr [ %.0.i.i22.i179, %bb.u ], [ %.val4.i24.i182, %bb.v ]
  %i.al = getelementptr [4 x i8], ptr %.0.i23.i181, i64 %i.y
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit183

PyUnicode_READ_CHAR.exit183:                      ; preds = %_PyUnicode_DATA.exit.i174, %_PyUnicode_DATA.exit17.i167, %_PyUnicode_DATA.exit25.i180
  %.0.i169 = phi i32 [ %i.ad, %_PyUnicode_DATA.exit.i174 ], [ %i.ai, %_PyUnicode_DATA.exit17.i167 ], [ %i.am, %_PyUnicode_DATA.exit25.i180 ]
  %i.an = icmp eq i32 %.0.i169, 62
  br i1 %i.an, label %Py_DECREF.exit146, label %.critedge

.critedge:                                        ; preds = %bb.l, %PyUnicode_READ_CHAR.exit183, %PyUnicode_READ_CHAR.exit
  %i.ao = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.40) #10 ; 16 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %Py_DECREF.exit146, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.aq = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %i.ao, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 94264), ptr noundef nonnull @.str.41, ptr noundef nonnull %1, ptr noundef nonnull @.str.42) #10 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.x, label %bb.bd

bb.x:                                             ; preds = %bb.w
  tail call void @PyErr_Clear() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.as = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %1) #10 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_Py_FindSourceFile.exit.thread, label %bb.y

_Py_FindSourceFile.exit.thread:                   ; preds = %bb.x
  tail call void @PyErr_Clear() #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.ba

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  %i.av = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.au, i32 noundef 47) #11 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr i8, ptr %i.av, i64 1
  %.048.i = select i1 %i.aw, ptr %i.au, ptr %i.ax ; 2 uses
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.048.i) #11
  %i.az = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = call i32 @PySys_GetOptionalAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 95176), ptr noundef nonnull %i.d) #10
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @PyErr_Clear() #10
  br label %Py_XDECREF.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !25  ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %Py_XDECREF.exit75.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val68.i = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bg = getelementptr i8, ptr %.val68.i, i64 168
  %.val70.i = load i64, ptr %i.bg, align 8, !tbaa !53
  %i.bh = and i64 %.val70.i, 33554432
  %.not.i184 = icmp eq i64 %i.bh, 0
  br i1 %.not.i184, label %Py_XDECREF.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = call i64 @PyList_Size(ptr noundef nonnull %i.bd) #10 ; 2 uses
  %i.bj = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.ao, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 94264)) #10 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %Py_XDECREF.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ac
  %i.bl = icmp sgt i64 %i.bi, 0
  br i1 %i.bl, label %.lr.ph.i, label %.thread80.i

.lr.ph.i:                                         ; preds = %.preheader.i, %Py_DECREF.exit65.i
  %.04789.i = phi i64 [ %i.co, %Py_DECREF.exit65.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.bn = call ptr @PyList_GetItem(ptr noundef %i.bm, i64 noundef %.04789.i) #10 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i
  call void @PyErr_Clear() #10
  br label %.thread80.i

bb.ae:                                            ; preds = %.lr.ph.i
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val.i = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.bq = getelementptr i8, ptr %.val.i, i64 168
  %.val69.i = load i64, ptr %i.bq, align 8, !tbaa !53
  %i.br = and i64 %.val69.i, 268435456
  %.not58.i = icmp eq i64 %i.br, 0
  br i1 %.not58.i, label %Py_DECREF.exit65.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bs = call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %i.bn) #10 ; 9 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @PyErr_Clear() #10
  br label %Py_DECREF.exit65.i

bb.ah:                                            ; preds = %bb.af
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val71.i = load i64, ptr %i.bu, align 8, !tbaa !22 ; 6 uses
  %i.bv = add i64 %.val71.i, 1                    ; 2 uses
  %i.bw = add i64 %i.bv, %i.ay
  %i.bx = icmp sgt i64 %i.bw, 4095
  br i1 %i.bx, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %.not.i64.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i64.i, label %bb.aj, label %Py_DECREF.exit65.i

bb.aj:                                            ; preds = %bb.ai
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bs, align 8, !tbaa !18
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ak, label %Py_DECREF.exit65.i

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #10
  br label %Py_DECREF.exit65.i

bb.al:                                            ; preds = %bb.ah
  %i.cb = getelementptr i8, ptr %i.bs, i64 32
  %i.cc = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.cb) #10 ; 0 uses
  %i.cd = load i32, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.cd, -1
  br i1 %.not.i62.i, label %bb.am, label %Py_DECREF.exit63.i

bb.am:                                            ; preds = %bb.al
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !18
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.an, label %Py_DECREF.exit63.i

end_hunk_0
begin_hunk_1_@display_source_line:bb.a
  br i1 %i.dy, label %bb.bt, label %Py_DECREF.exit136

bb.bt:                                            ; preds = %bb.bs
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #10
  br label %Py_DECREF.exit136

Py_DECREF.exit136:                                ; preds = %bb.br, %bb.bs, %bb.bt
  call void @PyMem_Free(ptr noundef %i.dk) #10
  %i.dz = icmp eq ptr %i.dv, null
  br i1 %i.dz, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %Py_DECREF.exit136
  call void @PyErr_Clear() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.078, ptr %i.c, align 8, !tbaa !25
  %i.ea = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864), ptr noundef nonnull %i.c, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eb = load i32, ptr %.078, align 8, !tbaa !18 ; 2 uses
  %.not.i133 = icmp sgt i32 %i.eb, -1
  br i1 %.not.i133, label %bb.bv, label %Py_DECREF.exit134

bb.bv:                                            ; preds = %bb.bu
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %.078, align 8, !tbaa !18
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.bw, label %Py_DECREF.exit134

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %.078) #10
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.bu, %bb.bv, %bb.bw
  %.not120 = icmp eq ptr %i.ea, null
  br i1 %.not120, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %Py_DECREF.exit134
  %i.ee = load i32, ptr %i.ea, align 8, !tbaa !18 ; 2 uses
  %.not.i131 = icmp sgt i32 %i.ee, -1
  br i1 %.not.i131, label %bb.by, label %Py_DECREF.exit146

bb.by:                                            ; preds = %bb.bx
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.ea, align 8, !tbaa !18
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bz, label %Py_DECREF.exit146

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.ea) #10
  br label %Py_DECREF.exit146

bb.ca:                                            ; preds = %Py_DECREF.exit134
  call void @PyErr_Clear() #10
  br label %Py_DECREF.exit146

bb.cb:                                            ; preds = %Py_DECREF.exit136
  %i.eh = load i32, ptr %.078, align 8, !tbaa !18 ; 2 uses
  %.not.i129 = icmp sgt i32 %i.eh, -1
  br i1 %.not.i129, label %bb.cc, label %Py_DECREF.exit130

bb.cc:                                            ; preds = %bb.cb
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %.078, align 8, !tbaa !18
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.cd, label %Py_DECREF.exit130

bb.cd:                                            ; preds = %bb.cc
  call void @_Py_Dealloc(ptr noundef nonnull %.078) #10
  br label %Py_DECREF.exit130

Py_DECREF.exit130:                                ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.ek = icmp sgt i32 %2, 0
  br i1 %i.ek, label %.lr.ph, label %.loopexit203

bb.ce:                                            ; preds = %Py_XDECREF.exit
  %i.el = add nuw nsw i32 %.076206, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.el, %2
  br i1 %exitcond.not, label %.loopexit203, label %.lr.ph, !llvm.loop !55

.lr.ph:                                           ; preds = %Py_DECREF.exit130, %bb.ce
  %.076206 = phi i32 [ %i.el, %bb.ce ], [ 0, %Py_DECREF.exit130 ]
  %.0205 = phi ptr [ %i.ep, %bb.ce ], [ null, %Py_DECREF.exit130 ] ; 4 uses
  %.not.i187 = icmp eq ptr %.0205, null
  br i1 %.not.i187, label %Py_XDECREF.exit, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph
  %i.em = load i32, ptr %.0205, align 8, !tbaa !18 ; 2 uses
  %.not.i.i188 = icmp sgt i32 %i.em, -1
  br i1 %.not.i.i188, label %bb.cg, label %Py_XDECREF.exit

bb.cg:                                            ; preds = %bb.cf
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %.0205, align 8, !tbaa !18
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ch, label %Py_XDECREF.exit

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %.0205) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.lr.ph, %bb.cf, %bb.cg, %bb.ch
  %i.ep = call ptr @PyFile_GetLine(ptr noundef nonnull %i.dv, i32 noundef -1) #10 ; 3 uses
  %.not112 = icmp eq ptr %i.ep, null
  br i1 %.not112, label %bb.ci, label %bb.ce

bb.ci:                                            ; preds = %Py_XDECREF.exit
  call void @PyErr_Clear() #10
  br label %.loopexit203

.loopexit203:                                     ; preds = %bb.ce, %Py_DECREF.exit130, %bb.ci
  %.195 = phi ptr [ null, %bb.ci ], [ null, %Py_DECREF.exit130 ], [ %i.ep, %bb.ce ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !25
  %i.eq = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not113 = icmp eq ptr %i.eq, null
  br i1 %.not113, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %.loopexit203
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !18 ; 2 uses
  %.not.i127 = icmp sgt i32 %i.er, -1
  br i1 %.not.i127, label %bb.ck, label %Py_DECREF.exit128

bb.ck:                                            ; preds = %bb.cj
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !18
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.cl, label %Py_DECREF.exit128

bb.cl:                                            ; preds = %bb.ck
  call void @_Py_Dealloc(ptr noundef nonnull %i.eq) #10
  br label %Py_DECREF.exit128

bb.cm:                                            ; preds = %.loopexit203
  call void @PyErr_Clear() #10
  br label %Py_DECREF.exit128

Py_DECREF.exit128:                                ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.cm
  %i.eu = load i32, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.not.i125 = icmp sgt i32 %i.eu, -1
  br i1 %.not.i125, label %bb.cn, label %Py_DECREF.exit126

bb.cn:                                            ; preds = %Py_DECREF.exit128
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.dv, align 8, !tbaa !18
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.co, label %Py_DECREF.exit126

bb.co:                                            ; preds = %bb.cn
  call void @_Py_Dealloc(ptr noundef nonnull %i.dv) #10
  br label %Py_DECREF.exit126

Py_DECREF.exit126:                                ; preds = %Py_DECREF.exit128, %bb.cn, %bb.co
  %.not114 = icmp eq ptr %.195, null
  br i1 %.not114, label %Py_DECREF.exit146, label %bb.cp

bb.cp:                                            ; preds = %Py_DECREF.exit126
  %i.ex = getelementptr i8, ptr %.195, i64 8
  %.195.val = load ptr, ptr %i.ex, align 8, !tbaa !27
  %i.ey = getelementptr i8, ptr %.195.val, i64 168
  %.val162 = load i64, ptr %i.ey, align 8, !tbaa !53
  %i.ez = and i64 %.val162, 268435456
  %.not115 = icmp eq i64 %i.ez, 0
  br i1 %.not115, label %.split96, label %bb.cs

.split96:                                         ; preds = %bb.cp
  %i.fa = load i32, ptr %.195, align 8, !tbaa !18 ; 2 uses
  %.not.i.i190 = icmp sgt i32 %i.fa, -1
  br i1 %.not.i.i190, label %bb.cq, label %Py_DECREF.exit146

bb.cq:                                            ; preds = %.split96
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %.195, align 8, !tbaa !18
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.cr, label %Py_DECREF.exit146

bb.cr:                                            ; preds = %bb.cq
  call void @_Py_Dealloc(ptr noundef nonnull %.195) #10
  br label %Py_DECREF.exit146

bb.cs:                                            ; preds = %bb.cp
  %.not116 = icmp eq ptr %5, null
  br i1 %.not116, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fd = load i32, ptr %.195, align 8, !tbaa !18 ; 2 uses
  %i.fe = icmp ugt i32 %i.fd, -1073741825
  br i1 %i.fe, label %_Py_NewRef.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ff = add nuw i32 %i.fd, 1
  store i32 %i.ff, ptr %.195, align 8, !tbaa !18
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.ct, %bb.cu
  store ptr %.195, ptr %5, align 8, !tbaa !25
  br label %bb.cv

bb.cv:                                            ; preds = %_Py_NewRef.exit, %bb.cs
  %i.fg = getelementptr i8, ptr %.195, i64 32
  %i.fh = load i32, ptr %i.fg, align 8            ; 3 uses
  %7 = lshr i32 %i.fh, 2
  %8 = and i32 %7, 7
  %i.fi = and i32 %i.fh, 32
  %.not.i193 = icmp eq i32 %i.fi, 0
  br i1 %.not.i193, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fj = and i32 %i.fh, 64
  %.not.i.i194 = icmp eq i32 %i.fj, 0
  %.0.v.i.i = select i1 %.not.i.i194, i64 56, i64 40
  %.0.i.i195 = getelementptr i8, ptr %.195, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.cx:                                            ; preds = %bb.cv
  %i.fk = getelementptr i8, ptr %.195, i64 56
  %.val4.i = load ptr, ptr %i.fk, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.cw, %bb.cx
  %.0.i196 = phi ptr [ %.0.i.i195, %bb.cw ], [ %.val4.i, %bb.cx ] ; 3 uses
  %i.fl = getelementptr i8, ptr %.195, i64 16
  %.195.val161 = load i64, ptr %i.fl, align 8, !tbaa !50 ; 5 uses
  %i.fm = icmp sgt i64 %.195.val161, 0
  br i1 %i.fm, label %.lr.ph208, label %Py_DECREF.exit124

.lr.ph208:                                        ; preds = %_PyUnicode_DATA.exit
  switch i32 %8, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us222
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph208, %bb.cy
  %i.fn = phi i64 [ %i.fr, %bb.cy ], [ 0, %.lr.ph208 ] ; 2 uses
  %.177207.us = phi i32 [ %i.fq, %bb.cy ], [ 0, %.lr.ph208 ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.0.i196, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18
  switch i8 %i.fp, label %PyUnicode_READ.exit._crit_edge [
    i8 32, label %bb.cy
    i8 12, label %bb.cy
    i8 9, label %bb.cy
  ]

bb.cy:                                            ; preds = %PyUnicode_READ.exit.us, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit.us
  %i.fq = add i32 %.177207.us, 1                  ; 3 uses
  %i.fr = sext i32 %i.fq to i64                   ; 3 uses
  %i.fs = icmp sgt i64 %.195.val161, %i.fr
  br i1 %i.fs, label %PyUnicode_READ.exit.us, label %PyUnicode_READ.exit._crit_edge, !llvm.loop !56

PyUnicode_READ.exit.us222:                        ; preds = %.lr.ph208, %bb.cz
  %i.ft = phi i64 [ %i.fx, %bb.cz ], [ 0, %.lr.ph208 ] ; 2 uses
  %.177207.us221 = phi i32 [ %i.fw, %bb.cz ], [ 0, %.lr.ph208 ] ; 2 uses
  %i.fu = getelementptr [2 x i8], ptr %.0.i196, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !49
  switch i16 %i.fv, label %PyUnicode_READ.exit._crit_edge [
    i16 32, label %bb.cz
    i16 12, label %bb.cz
    i16 9, label %bb.cz
  ]

bb.cz:                                            ; preds = %PyUnicode_READ.exit.us222, %PyUnicode_READ.exit.us222, %PyUnicode_READ.exit.us222
  %i.fw = add i32 %.177207.us221, 1               ; 3 uses
  %i.fx = sext i32 %i.fw to i64                   ; 3 uses
  %i.fy = icmp sgt i64 %.195.val161, %i.fx
  br i1 %i.fy, label %PyUnicode_READ.exit.us222, label %PyUnicode_READ.exit._crit_edge, !llvm.loop !56

PyUnicode_READ.exit:                              ; preds = %.lr.ph208, %bb.da
  %i.fz = phi i64 [ %i.gd, %bb.da ], [ 0, %.lr.ph208 ] ; 2 uses
  %.177207 = phi i32 [ %i.gc, %bb.da ], [ 0, %.lr.ph208 ] ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %.0.i196, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  switch i32 %i.gb, label %PyUnicode_READ.exit._crit_edge [
    i32 32, label %bb.da
    i32 12, label %bb.da
    i32 9, label %bb.da
  ]

bb.da:                                            ; preds = %PyUnicode_READ.exit, %PyUnicode_READ.exit, %PyUnicode_READ.exit
  %i.gc = add i32 %.177207, 1                     ; 3 uses
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = icmp sgt i64 %.195.val161, %i.gd
  br i1 %i.ge, label %PyUnicode_READ.exit, label %PyUnicode_READ.exit._crit_edge, !llvm.loop !56

PyUnicode_READ.exit._crit_edge:                   ; preds = %bb.cz, %PyUnicode_READ.exit.us222, %bb.cy, %PyUnicode_READ.exit.us, %bb.da, %PyUnicode_READ.exit
  %.177.lcssa = phi i32 [ %i.fq, %bb.cy ], [ %.177207, %PyUnicode_READ.exit ], [ %i.gc, %bb.da ], [ %.177207.us, %PyUnicode_READ.exit.us ], [ %.177207.us221, %PyUnicode_READ.exit.us222 ], [ %i.fw, %bb.cz ] ; 5 uses
  %.lcssa = phi i64 [ %i.fr, %bb.cy ], [ %i.fz, %PyUnicode_READ.exit ], [ %i.gd, %bb.da ], [ %i.fn, %PyUnicode_READ.exit.us ], [ %i.ft, %PyUnicode_READ.exit.us222 ], [ %i.fx, %bb.cz ]
  %.not117 = icmp eq i32 %.177.lcssa, 0
  br i1 %.not117, label %Py_DECREF.exit124, label %bb.db

bb.db:                                            ; preds = %PyUnicode_READ.exit._crit_edge
  %i.gf = call ptr @PyUnicode_Substring(ptr noundef nonnull %.195, i64 noundef %.lcssa, i64 noundef %.195.val161) #10 ; 4 uses
  %.not118 = icmp eq ptr %i.gf, null
  br i1 %.not118, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gg = load i32, ptr %.195, align 8, !tbaa !18 ; 2 uses
  %.not.i123 = icmp sgt i32 %i.gg, -1
  br i1 %.not.i123, label %bb.dd, label %Py_DECREF.exit124

bb.dd:                                            ; preds = %bb.dc
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %.195, align 8, !tbaa !18
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.de, label %Py_DECREF.exit124

bb.de:                                            ; preds = %bb.dd
  call void @_Py_Dealloc(ptr noundef nonnull %.195) #10
  br label %Py_DECREF.exit124

bb.df:                                            ; preds = %bb.db
  call void @PyErr_Clear() #10
  br label %Py_DECREF.exit124

Py_DECREF.exit124:                                ; preds = %_PyUnicode_DATA.exit, %bb.de, %bb.dd, %bb.dc, %bb.df, %PyUnicode_READ.exit._crit_edge
  %.177.lcssa296 = phi i32 [ 0, %PyUnicode_READ.exit._crit_edge ], [ %.177.lcssa, %bb.df ], [ %.177.lcssa, %bb.dc ], [ %.177.lcssa, %bb.dd ], [ %.177.lcssa, %bb.de ], [ 0, %_PyUnicode_DATA.exit ]
  %.3 = phi ptr [ %.195, %PyUnicode_READ.exit._crit_edge ], [ %.195, %bb.df ], [ %i.gf, %bb.dc ], [ %i.gf, %bb.dd ], [ %i.gf, %bb.de ], [ %.195, %_PyUnicode_DATA.exit ] ; 7 uses
  %.not119 = icmp eq ptr %4, null
  br i1 %.not119, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %Py_DECREF.exit124
  %i.gj = sub i32 %.177.lcssa296, %3
  store i32 %i.gj, ptr %4, align 4, !tbaa !7
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %Py_DECREF.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @__const._Py_WriteIndent.buf, i64 11, i1 false)
  %i.gk = icmp sgt i32 %3, 0
  br i1 %i.gk, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.dh
  %i.gl = zext nneg i32 %3 to i64
  br label %.lr.ph.i199

bb.di:                                            ; preds = %bb.dk
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -10
  %i.gm = icmp sgt i64 %indvars.iv.i, 10
  br i1 %i.gm, label %.lr.ph.i199, label %.loopexit, !llvm.loop !47

.lr.ph.i199:                                      ; preds = %bb.di, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.gl, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.di ] ; 4 uses
  %i.gn = icmp samesign ult i64 %indvars.iv.i, 10
  br i1 %i.gn, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.lr.ph.i199
  %i.go = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  store i8 0, ptr %i.go, align 1, !tbaa !18
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.i199
  %i.gp = call i32 @PyFile_WriteString(ptr noundef nonnull %i.a, ptr noundef %0) #10
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %_Py_WriteIndent.exit, label %bb.di

_Py_WriteIndent.exit:                             ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.dp

.loopexit:                                        ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.gr = call i32 @PyFile_WriteObject(ptr noundef nonnull %.3, ptr noundef %0, i32 noundef 1) #10
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %.loopexit
  %i.gt = call i32 @PyFile_WriteString(ptr noundef nonnull @.str.12, ptr noundef %0) #10
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gv = load i32, ptr %.3, align 8, !tbaa !18   ; 2 uses
  %.not.i121 = icmp sgt i32 %i.gv, -1
  br i1 %.not.i121, label %bb.dn, label %Py_DECREF.exit146

bb.dn:                                            ; preds = %bb.dm
  %i.gw = add nsw i32 %i.gv, -1                   ; 2 uses
  store i32 %i.gw, ptr %.3, align 8, !tbaa !18
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.do, label %Py_DECREF.exit146

bb.do:                                            ; preds = %bb.dn
  call void @_Py_Dealloc(ptr noundef nonnull %.3) #10
  br label %Py_DECREF.exit146

bb.dp:                                            ; preds = %_Py_WriteIndent.exit, %bb.dl, %.loopexit
  %i.gy = load i32, ptr %.3, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.gy, -1
  br i1 %.not.i, label %bb.dq, label %Py_DECREF.exit146

bb.dq:                                            ; preds = %bb.dp
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.gz, ptr %.3, align 8, !tbaa !18
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.dr, label %Py_DECREF.exit146

bb.dr:                                            ; preds = %bb.dq
  call void @_Py_Dealloc(ptr noundef nonnull %.3) #10
  br label %Py_DECREF.exit146

Py_DECREF.exit146:                                ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.cr, %bb.cq, %.split96, %Py_DECREF.exit126, %bb.bz, %bb.by, %bb.bx, %bb.bi, %bb.bh, %Py_DECREF.exit144, %bb.bc, %bb.bb, %bb.ba, %bb.ca, %.critedge, %PyUnicode_READ_CHAR.exit183, %bb.a, %Py_DECREF.exit138
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %PyUnicode_READ_CHAR.exit183 ], [ 0, %bb.bz ], [ -1, %bb.bc ], [ 0, %Py_DECREF.exit138 ], [ -1, %.critedge ], [ 0, %bb.do ], [ -1, %bb.cr ], [ 0, %bb.bi ], [ 0, %bb.ca ], [ -1, %Py_DECREF.exit126 ], [ -1, %bb.ba ], [ -1, %bb.bb ], [ 0, %Py_DECREF.exit144 ], [ 0, %bb.bh ], [ 0, %bb.bx ], [ 0, %bb.by ], [ -1, %.split96 ], [ -1, %bb.cq ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ -1, %bb.dp ], [ -1, %bb.dq ], [ -1, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyTraceBack_Print(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %tb_printinternal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !27
  %.not = icmp eq ptr %.val18, @PyTraceBack_Type
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 786) #10
  br label %tb_printinternal.exit

bb.d:                                             ; preds = %bb.b
  %i.g = call i32 @PySys_GetOptionalAttrString(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %tb_printinternal.exit, label %bb.e
end_hunk_1
begin_hunk_2_@_PyTraceBack_Print:bb.a
bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.ch) #10
  br label %tb_displayline.exit.i

tb_displayline.exit.i:                            ; preds = %bb.ai, %bb.ah, %ignore_source_errors.exit.thread.i.i, %ignore_source_errors.exit.i.i
  %.0184.i.i = phi i32 [ %.018.i.i, %ignore_source_errors.exit.i.i ], [ %.0183.i.i, %ignore_source_errors.exit.thread.i.i ], [ %.0183.i.i, %bb.ah ], [ %.0183.i.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.cp = icmp slt i32 %.0184.i.i, 0
  br i1 %i.cp, label %.thread114.i, label %bb.aj

bb.aj:                                            ; preds = %tb_displayline.exit.i
  %i.cq = call i32 @PyErr_CheckSignals() #10
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.thread114.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %i.cs = phi i64 [ %i.br, %bb.x ], [ %i.bv, %bb.aj ] ; 4 uses
  %.15197.i = phi ptr [ %.050129.i, %bb.x ], [ %.15198.i, %bb.aj ]
  %.15495.i = phi i32 [ %.053128.i, %bb.x ], [ %.15496.i, %bb.aj ]
  %.15793.i = phi ptr [ %.056127.i, %bb.x ], [ %.15794.i, %bb.aj ]
  %i.ct = load i32, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i.i22, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.al, align 8, !tbaa !18
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.cw = getelementptr i8, ptr %.1131.i, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %.not75.i = icmp eq ptr %i.cx, null
  br i1 %.not75.i, label %._crit_edge.i, label %.lr.ph132.i

._crit_edge.i:                                    ; preds = %bb.an
  %i.cy = icmp sgt i64 %i.cs, 3
  br i1 %i.cy, label %bb.ao, label %tb_printinternal.exit

bb.ao:                                            ; preds = %._crit_edge.i
  %i.cz = add nsw i64 %i.cs, -3
  %.not117.i = icmp eq i64 %i.cs, 4
  %i.da = select i1 %.not117.i, ptr @.str.46, ptr @.str.45
  %i.db = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull %i.da, i64 noundef %i.cz) #10 ; 5 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.thread110.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dd = call i32 @PyFile_WriteObject(ptr noundef nonnull %i.db, ptr noundef %2, i32 noundef 1) #10
  %i.de = load i32, ptr %i.db, align 8, !tbaa !18 ; 2 uses
  %.not.i.i81.i = icmp sgt i32 %i.de, -1
  br i1 %.not.i.i81.i, label %bb.aq, label %tb_print_line_repeated.exit84.i

bb.aq:                                            ; preds = %bb.ap
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.db, align 8, !tbaa !18
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ar, label %tb_print_line_repeated.exit84.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.db) #10
  br label %tb_print_line_repeated.exit84.i

tb_print_line_repeated.exit84.i:                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.dh = icmp slt i32 %i.dd, 0
  br i1 %i.dh, label %.thread110.i, label %tb_printinternal.exit

.thread110.i:                                     ; preds = %tb_print_line_repeated.exit84.i, %bb.ao
  br label %tb_printinternal.exit

tb_print_line_repeated.exit.thread.i:             ; preds = %tb_print_line_repeated.exit.i, %bb.t
  %.not.i85.i = icmp eq ptr %i.al, null
  br i1 %.not.i85.i, label %tb_printinternal.exit, label %.thread114.i

.thread114.i:                                     ; preds = %bb.aj, %tb_displayline.exit.i, %Py_DECREF.exit.i.i, %bb.z, %bb.y, %tb_print_line_repeated.exit.thread.i
  %i.di = load i32, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not.i.i86.i = icmp sgt i32 %i.di, -1
  br i1 %.not.i.i86.i, label %bb.as, label %tb_printinternal.exit

bb.as:                                            ; preds = %.thread114.i
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr %i.al, align 8, !tbaa !18
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.at, label %tb_printinternal.exit

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #10
  br label %tb_printinternal.exit

tb_printinternal.exit:                            ; preds = %.preheader.i, %._crit_edge.i, %tb_print_line_repeated.exit84.i, %.thread110.i, %tb_print_line_repeated.exit.thread.i, %.thread114.i, %bb.as, %bb.at, %Py_XDECREF.exit, %Py_DECREF.exit, %bb.d, %bb.a, %bb.c
  %.111 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ -1, %bb.d ], [ 0, %Py_DECREF.exit ], [ -1, %Py_XDECREF.exit ], [ 0, %tb_print_line_repeated.exit84.i ], [ 0, %.preheader.i ], [ 0, %._crit_edge.i ], [ -1, %.thread110.i ], [ -1, %tb_print_line_repeated.exit.thread.i ], [ -1, %.thread114.i ], [ -1, %bb.as ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret i32 %.111
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PySys_GetOptionalAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyTraceBack_Print(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_PyTraceBack_Print(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_DumpDecimal(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.010 = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ]
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.b ]    ; 3 uses
  %i.c = getelementptr i8, ptr %.010, i64 -1      ; 4 uses
  %i.d = urem i64 %.0, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  store i8 %i.f, ptr %i.c, align 1, !tbaa !18
  %i.g = udiv i64 %.0, 10
  %.not = icmp ult i64 %.0, 10
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !63

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.j) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i64 @_Py_write_noraise(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_Py_DumpHexadecimal(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %2, i64 16)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i8 0, ptr %i.b, align 16, !tbaa !18
  %i.c = load ptr, ptr @Py_hexdigits, align 8, !tbaa !64
  %i.d = ptrtoint ptr %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ]
  %.023.i = phi i64 [ %1, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %.024.i, i64 -1    ; 4 uses
  %i.f = and i64 %.023.i, 15
  %i.g = getelementptr i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  store i8 %i.h, ptr %i.e, align 1, !tbaa !18
  %i.i = lshr i64 %.023.i, 4                      ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.d, %i.j                       ; 2 uses
  %i.l = icmp slt i64 %i.k, %spec.select.i
  %i.m = icmp ne i64 %i.i, 0
  %i.n = or i1 %i.m, %i.l
  br i1 %i.n, label %bb.b, label %dump_hexadecimal.exit, !llvm.loop !65

dump_hexadecimal.exit:                            ; preds = %bb.b
  %i.o = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.k) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_DumpASCII(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 3 uses
  %i.b = alloca [17 x i8], align 16               ; 3 uses
  %i.c = alloca [17 x i8], align 16               ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val65 = load i64, ptr %i.f, align 8, !tbaa !53
  %i.g = and i64 %.val65, 268435456
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %2 = lshr i32 %i.k, 2
  %3 = and i32 %2, 7
  %i.l = and i32 %i.k, 32
  %.not58 = icmp eq i32 %i.l, 0
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 64
  %.not59 = icmp eq i32 %i.m, 0
  %i.n = icmp slt i64 %i.i, 501                   ; 2 uses
  br i1 %.not59, label %.thread95, label %.thread101

.thread101:                                       ; preds = %bb.c
  %i.o = getelementptr i8, ptr %1, i64 40         ; 2 uses
  br i1 %i.n, label %.preheader, label %.lr.ph.preheader

.thread95:                                        ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 56         ; 2 uses
  br i1 %i.n, label %.thread, label %.lr.ph81

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pre = and i32 %i.k, 64
  %i.t = icmp eq i32 %.pre, 0
  %i.u = icmp slt i64 %i.i, 501                   ; 3 uses
  %. = select i1 %i.u, i64 %i.i, i64 500          ; 2 uses
  br i1 %i.t, label %.thread, label %.preheader

.preheader:                                       ; preds = %.thread101, %bb.e
  %.106 = phi i64 [ %., %bb.e ], [ %i.i, %.thread101 ] ; 3 uses
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %.thread101 ] ; 2 uses
  %.052105 = phi ptr [ %i.r, %bb.e ], [ %i.o, %.thread101 ] ; 2 uses
  %.not6278 = icmp sgt i64 %.106, 0
  br i1 %.not6278, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread101, %.preheader
  %.052105112 = phi ptr [ %.052105, %.preheader ], [ %i.o, %.thread101 ] ; 3 uses
  %i.w = phi i1 [ %i.v, %.preheader ], [ false, %.thread101 ] ; 2 uses
  %.106111 = phi i64 [ %.106, %.preheader ], [ 500, %.thread101 ] ; 3 uses
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.05079, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %.106111
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.05079 = phi i64 [ %i.x, %bb.f ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr i8, ptr %.052105112, i64 %.05079
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = add i8 %i.z, -32
  %or.cond = icmp ult i8 %i.aa, 95
  br i1 %or.cond, label %bb.f, label %.lr.ph81

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.052105113 = phi ptr [ %.052105, %.preheader ], [ %.052105112, %bb.f ]
  %i.ab = phi i1 [ %i.v, %.preheader ], [ %i.w, %bb.f ]
  %.106110 = phi i64 [ %.106, %.preheader ], [ %.106111, %bb.f ]
  %i.ac = tail call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef %.052105113, i64 noundef %.106110) #10 ; 0 uses
  br i1 %i.ab, label %bb.v, label %bb.u

.thread:                                          ; preds = %.thread95, %bb.e
  %.100 = phi i64 [ %., %bb.e ], [ %i.i, %.thread95 ] ; 2 uses
  %i.ad = phi i1 [ %i.u, %bb.e ], [ true, %.thread95 ] ; 2 uses
  %.05299 = phi ptr [ %i.r, %bb.e ], [ %i.p, %.thread95 ]
  %i.ae = icmp sgt i64 %.100, 0
  br i1 %i.ae, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %.lr.ph, %.thread95, %.thread
  %.05299118 = phi ptr [ %.05299, %.thread ], [ %i.p, %.thread95 ], [ %.052105112, %.lr.ph ] ; 3 uses
  %i.af = phi i1 [ %i.ad, %.thread ], [ false, %.thread95 ], [ %i.w, %.lr.ph ]
  %.100117 = phi i64 [ %.100, %.thread ], [ 500, %.thread95 ], [ %.106111, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph81, %bb.t
  %.180 = phi i64 [ 0, %.lr.ph81 ], [ %i.cn, %bb.t ] ; 4 uses
  switch i32 %3, label %bb.j [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.05299118, i64 %.180
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = zext i8 %i.an to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr [2 x i8], ptr %.05299118, i64 %.180
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !49
  %i.ar = zext i16 %i.aq to i32
  br label %PyUnicode_READ.exit

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr [4 x i8], ptr %.05299118, i64 %.180
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ao, %bb.h ], [ %i.ar, %bb.i ], [ %i.at, %bb.j ] ; 5 uses
  %i.au = add i32 %.0.i, -32
  %or.cond3 = icmp ult i32 %i.au, 95
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %PyUnicode_READ.exit
  %i.av = trunc nuw nsw i32 %.0.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i8 %i.av, ptr %i.d, align 1, !tbaa !18
  %i.aw = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.d, i64 noundef 1) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.t

bb.l:                                             ; preds = %PyUnicode_READ.exit
  %i.ax = icmp ult i32 %.0.i, 256
  %i.ay = zext i32 %.0.i to i64                   ; 3 uses
  br i1 %i.ax, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.az = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.4, i64 noundef 2) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i8 0, ptr %i.ak, align 16, !tbaa !18
  %i.ba = load ptr, ptr @Py_hexdigits, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.024.i.i = phi ptr [ %i.ak, %bb.m ], [ %i.bb, %bb.n ]
  %.023.i.i = phi i64 [ %i.ay, %bb.m ], [ %i.bf, %bb.n ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.024.i.i, i64 -1 ; 4 uses
  %i.bc = and i64 %.023.i.i, 15
  %i.bd = getelementptr i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !18
  %i.bf = lshr i64 %.023.i.i, 4                   ; 2 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = sub i64 %i.al, %i.bg                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bf, 0
  %i.bk = or i1 %i.bj, %i.bi
  br i1 %i.bk, label %bb.n, label %_Py_DumpHexadecimal.exit, !llvm.loop !65

_Py_DumpHexadecimal.exit:                         ; preds = %bb.n
  %i.bl = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.bb, i64 noundef %i.bh) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.bm = icmp ult i32 %.0.i, 65536
  br i1 %i.bm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bn = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.5, i64 noundef 2) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 0, ptr %i.ai, align 16, !tbaa !18
  %i.bo = load ptr, ptr @Py_hexdigits, align 8, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.024.i.i66 = phi ptr [ %i.ai, %bb.p ], [ %i.bp, %bb.q ]
  %.023.i.i67 = phi i64 [ %i.ay, %bb.p ], [ %i.bt, %bb.q ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.024.i.i66, i64 -1 ; 4 uses
  %i.bq = and i64 %.023.i.i67, 15
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !18
  %i.bt = lshr i64 %.023.i.i67, 4                 ; 2 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.aj, %i.bu                    ; 2 uses
  %i.bw = icmp slt i64 %i.bv, 4
  %i.bx = icmp ne i64 %i.bt, 0
  %i.by = or i1 %i.bx, %i.bw
  br i1 %i.by, label %bb.q, label %_Py_DumpHexadecimal.exit68, !llvm.loop !65

_Py_DumpHexadecimal.exit68:                       ; preds = %bb.q
  %i.bz = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.bp, i64 noundef %i.bv) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ca = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.6, i64 noundef 2) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.ag, align 16, !tbaa !18
  %i.cb = load ptr, ptr @Py_hexdigits, align 8, !tbaa !64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.024.i.i69 = phi ptr [ %i.ag, %bb.r ], [ %i.cc, %bb.s ]
  %.023.i.i70 = phi i64 [ %i.ay, %bb.r ], [ %i.cg, %bb.s ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.024.i.i69, i64 -1 ; 4 uses
  %i.cd = and i64 %.023.i.i70, 15
  %i.ce = getelementptr i8, ptr %i.cb, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !18
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !18
  %i.cg = lshr i64 %.023.i.i70, 4                 ; 2 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = sub i64 %i.ah, %i.ch                    ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 8
  %i.ck = icmp ne i64 %i.cg, 0
  %i.cl = or i1 %i.ck, %i.cj
  br i1 %i.cl, label %bb.s, label %_Py_DumpHexadecimal.exit71, !llvm.loop !65

_Py_DumpHexadecimal.exit71:                       ; preds = %bb.s
  %i.cm = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull %i.cc, i64 noundef %i.ci) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %_Py_DumpHexadecimal.exit68, %_Py_DumpHexadecimal.exit71, %_Py_DumpHexadecimal.exit
  %i.cn = add nuw nsw i64 %.180, 1                ; 2 uses
  %exitcond87.not = icmp eq i64 %i.cn, %.100117
  br i1 %exitcond87.not, label %.loopexit, label %bb.g, !llvm.loop !67

.loopexit:                                        ; preds = %bb.t, %.thread
  %i.co = phi i1 [ %i.ad, %.thread ], [ %i.af, %bb.t ]
  br i1 %i.co, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge, %.loopexit
  %i.cp = call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.7, i64 noundef 3) #10 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit, %bb.u, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_DumpTraceback(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @dump_traceback(i32 noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_traceback(i32 noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_Py_write_noraise(i32 noundef %0, ptr noundef nonnull @.str.48, i64 noundef 32) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult ptr %1, inttoptr (i64 256 to ptr)
  br i1 %i.c, label %tstate_is_freed.exit.thread, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  %magicptr.i.i = ptrtoint ptr %1 to i64
  switch i64 %magicptr.i.i, label %_PyMem_IsPtrFreed.exit.i [
    i64 -144680345676153347, label %tstate_is_freed.exit.thread
    i64 -2459565876494606883, label %tstate_is_freed.exit.thread
    i64 -3617008641903833651, label %tstate_is_freed.exit.thread
  ]

_PyMem_IsPtrFreed.exit.i:                         ; preds = %switch.early.test.i.i
  %.not.i = icmp ugt ptr %1, inttoptr (i64 -257 to ptr)
  br i1 %.not.i, label %tstate_is_freed.exit.thread, label %bb.d

bb.d:                                             ; preds = %_PyMem_IsPtrFreed.exit.i
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 256 to ptr)
  br i1 %i.f, label %tstate_is_freed.exit.thread, label %switch.early.test.i5.i

switch.early.test.i5.i:                           ; preds = %bb.d
  %magicptr.i6.i = ptrtoint ptr %i.e to i64
  switch i64 %magicptr.i6.i, label %_PyMem_IsPtrFreed.exit7.i [
    i64 -144680345676153347, label %tstate_is_freed.exit.thread
    i64 -2459565876494606883, label %tstate_is_freed.exit.thread
    i64 -3617008641903833651, label %tstate_is_freed.exit.thread
  ]

_PyMem_IsPtrFreed.exit7.i:                        ; preds = %switch.early.test.i5.i
  %.not11.i = icmp ugt ptr %i.e, inttoptr (i64 -257 to ptr)
  br i1 %.not11.i, label %tstate_is_freed.exit.thread, label %bb.e

bb.e:                                             ; preds = %_PyMem_IsPtrFreed.exit7.i
  %i.g = getelementptr i8, ptr %1, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  switch i64 %i.h, label %bb.f [
    i64 -144680345676153347, label %tstate_is_freed.exit.thread
end_hunk_2
