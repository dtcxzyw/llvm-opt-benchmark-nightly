inline.NumInlined: 123
inline.NumDeleted: 46
begin_hunk_0_@_PyTraceback_Add:bb.a
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
define dso_local range(i32 -1, 1) i32 @_Py_DisplaySourceLine(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @display_source_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @display_source_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
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
  %i.i = lshr i32 %i.h, 2
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %i.k = and i32 %i.h, 32
  %.not.i19.i = icmp eq i32 %i.k, 0               ; 6 uses
  switch i32 %i.j, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.h, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %.val4.i.i, %bb.e ]
  %i.n = load i8, ptr %.0.i.i, align 1, !tbaa !18
  %i.o = zext i8 %i.n to i32
  br label %PyUnicode_READ_CHAR.exit

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.h, 64
  %.not.i.i12.i = icmp eq i32 %i.p, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i = load ptr, ptr %i.q, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.h, %bb.g
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.g ], [ %.val4.i16.i, %bb.h ]
  %i.r = load i16, ptr %.0.i15.i, align 2, !tbaa !49
  %i.s = zext i16 %i.r to i32
  br label %PyUnicode_READ_CHAR.exit

bb.i:                                             ; preds = %bb.b
  br i1 %.not.i19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.h, 64
  %.not.i.i20.i = icmp eq i32 %i.t, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.u, align 8, !tbaa !18
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.k, %bb.j
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.j ], [ %.val4.i24.i, %bb.k ]
  %i.v = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.o, %_PyUnicode_DATA.exit.i ], [ %i.s, %_PyUnicode_DATA.exit17.i ], [ %i.v, %_PyUnicode_DATA.exit25.i ]
  %i.w = icmp eq i32 %.0.i, 60
  br i1 %i.w, label %bb.l, label %.critedge

bb.l:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.x = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.x, align 8, !tbaa !50  ; 4 uses
  %i.y = icmp sgt i64 %.val, 0
  br i1 %i.y, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  switch i32 %i.j, label %bb.t [
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
  %6 = getelementptr i8, ptr %.0.i.i175, i64 %.val
  %i.ab = getelementptr i8, ptr %6, i64 -1
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
  %i.ag = getelementptr [2 x i8], ptr %.0.i15.i168, i64 %.val
  %7 = getelementptr i8, ptr %i.ag, i64 -2
  %i.ah = load i16, ptr %7, align 2, !tbaa !49
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
  %i.al = getelementptr [4 x i8], ptr %.0.i23.i181, i64 %.val
  %8 = getelementptr i8, ptr %i.al, i64 -4
  %i.am = load i32, ptr %8, align 4, !tbaa !7
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

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #10
  br label %Py_DECREF.exit63.i

Py_DECREF.exit63.i:                               ; preds = %bb.an, %bb.am, %bb.al
  %i.cg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #11
  %.not59.i = icmp eq i64 %i.cg, %.val71.i
  br i1 %.not59.i, label %bb.ao, label %Py_DECREF.exit65.i

bb.ao:                                            ; preds = %Py_DECREF.exit63.i
  %i.ch = icmp sgt i64 %.val71.i, 0
  br i1 %i.ch, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ci = getelementptr i8, ptr %i.e, i64 %.val71.i ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %.not60.i = icmp eq i8 %i.ck, 47
  br i1 %.not60.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 47, ptr %i.ci, align 1, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.046.i = phi i64 [ %i.bv, %bb.aq ], [ %.val71.i, %bb.ap ], [ %.val71.i, %bb.ao ]
  %i.cl = getelementptr i8, ptr %i.e, i64 %.046.i
  %i.cm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(1) %.048.i) #10 ; 0 uses
  %i.cn = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethodFormat(ptr noundef %i.ba, ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.42) #10 ; 2 uses
  %.not61.i = icmp eq ptr %i.cn, null
  br i1 %.not61.i, label %bb.as, label %.thread80.i

bb.as:                                            ; preds = %bb.ar
  call void @PyErr_Clear() #10
  br label %Py_DECREF.exit65.i

Py_DECREF.exit65.i:                               ; preds = %bb.as, %Py_DECREF.exit63.i, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %i.co = add nuw nsw i64 %.04789.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.co, %i.bi
  br i1 %exitcond.not.i, label %.thread80.i, label %.lr.ph.i, !llvm.loop !54

.thread80.i:                                      ; preds = %Py_DECREF.exit65.i, %bb.ar, %bb.ad, %.preheader.i
  %.04584.i = phi ptr [ null, %bb.ad ], [ null, %.preheader.i ], [ null, %Py_DECREF.exit65.i ], [ %i.cn, %bb.ar ] ; 3 uses
  %i.cp = load i32, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i185 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i.i185, label %bb.at, label %Py_XDECREF.exit.i

bb.at:                                            ; preds = %.thread80.i
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.bj, align 8, !tbaa !18
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.au, label %Py_XDECREF.exit.i

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.bj) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.au, %bb.at, %.thread80.i, %bb.ac, %bb.ab, %bb.z
  %.04579.ph.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.z ], [ %.04584.i, %bb.at ], [ %.04584.i, %.thread80.i ], [ %.04584.i, %bb.au ] ; 4 uses
  %.pr.i = load ptr, ptr %i.d, align 8, !tbaa !25 ; 4 uses
  %.not.i73.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i73.i, label %Py_XDECREF.exit75.i, label %bb.av

bb.av:                                            ; preds = %Py_XDECREF.exit.i
  %i.cs = load i32, ptr %.pr.i, align 8, !tbaa !18 ; 2 uses
end_hunk_0
