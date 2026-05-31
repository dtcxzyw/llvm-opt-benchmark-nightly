inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@datetime_date_fromisocalendar_impl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = call fastcc i32 @iso_to_ymd(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  switch i32 %i.d, label %bb.e [
    i32 -4, label %bb.b
    i32 -2, label %bb.c
    i32 -3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.f) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.110, i32 noundef %2) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.111, i32 noundef %i.k) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.p = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @new_date_ex(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.0
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyImport_Import(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wrap_strftime(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [28 x i8], align 16               ; 5 uses
  %i.e = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.84) #16 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit227, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #16 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread240, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !60  ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = getelementptr i8, ptr %1, i64 56         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.bw, %bb.c
  %.0138.ph.ph = phi ptr [ %.2140, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0132.ph.ph = phi ptr [ %.2134, %bb.bw ], [ null, %bb.c ] ; 24 uses
  %.0124.ph.ph = phi i64 [ %.1130, %bb.bw ], [ 0, %bb.c ] ; 2 uses
  %.0118.ph.ph = phi ptr [ %.2120, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0114.ph.ph = phi ptr [ %.2116, %bb.bw ], [ null, %bb.c ] ; 32 uses
  br label %.outer

.outer.loopexit:                                  ; preds = %normalize_century.exit, %bb.bf, %bb.bl
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.outer.loopexit
  %.0129.ph = phi i64 [ %i.aj, %.outer.loopexit ], [ %.0124.ph.ph, %.outer.outer ]
  %.0124.ph = phi i64 [ %.0124, %.outer.loopexit ], [ %.0124.ph.ph, %.outer.outer ]
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.bv
  %.0129 = phi i64 [ %i.aj, %bb.bv ], [ %.0129.ph, %.outer ] ; 2 uses
  %.0124 = phi i64 [ %i.aj, %bb.bv ], [ %.0124.ph, %.outer ] ; 5 uses
  %.not = icmp eq i64 %.0129, %.val
  br i1 %.not, label %bb.bx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @PyUnicode_FindChar(ptr noundef nonnull %1, i32 noundef 37, i64 noundef %.0129, i64 noundef %.val, i32 noundef 1) #16 ; 6 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.bx, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i64 %i.q, 1                      ; 4 uses
  %i.t = icmp eq i64 %i.s, %.val
  br i1 %i.t, label %bb.bx, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.j, align 8              ; 8 uses
  %i.v = lshr i32 %i.u, 2
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.x, 0               ; 6 uses
  switch i32 %i.w, label %bb.n [
    i32 1, label %bb.h
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %i.z = getelementptr i8, ptr %.0.i.i, i64 %i.s
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  br label %PyUnicode_READ_CHAR.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.m:                                             ; preds = %bb.k
  %.val4.i16.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.m, %bb.l
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.l ], [ %.val4.i16.i, %bb.m ]
  %i.ad = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.s
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !88
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = and i32 %i.u, 64
  %.not.i.i20.i = icmp eq i32 %i.ag, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.p:                                             ; preds = %bb.n
  %.val4.i24.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.p, %bb.o
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.o ], [ %.val4.i24.i, %bb.p ]
  %i.ah = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.s
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ab, %_PyUnicode_DATA.exit.i ], [ %i.af, %_PyUnicode_DATA.exit17.i ], [ %i.ai, %_PyUnicode_DATA.exit25.i ] ; 6 uses
  %i.aj = add nuw i64 %i.q, 2                     ; 17 uses
  %5 = add i32 %.0.i, -58                         ; 2 uses
  %6 = call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30)
  switch i32 %6, label %bb.bb [
    i32 16, label %bb.q
    i32 0, label %bb.s
    i32 8, label %bb.af
    i32 11, label %bb.ay
  ]

bb.q:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.ak = icmp eq ptr %.0114.ph.ph, null
  br i1 %i.ak, label %bb.r, label %make_Zreplacement.exit.thread230

bb.r:                                             ; preds = %bb.q
  %i.al = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %3) ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread240, label %make_Zreplacement.exit.thread230

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.an = icmp slt i64 %i.aj, %.val
  br i1 %i.an, label %bb.t, label %7

bb.t:                                             ; preds = %bb.s
  switch i32 %i.w, label %bb.aa [
    i32 1, label %bb.u
    i32 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = and i32 %i.u, 64
  %.not.i.i.i193 = icmp eq i32 %i.ao, 0
  %.0.v.i.i.i194 = select i1 %.not.i.i.i193, i64 56, i64 40
  %.0.i.i.i195 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i194
  br label %_PyUnicode_DATA.exit.i196

bb.w:                                             ; preds = %bb.u
  %.val4.i.i198 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i196

_PyUnicode_DATA.exit.i196:                        ; preds = %bb.w, %bb.v
  %.0.i.i197 = phi ptr [ %.0.i.i.i195, %bb.v ], [ %.val4.i.i198, %bb.w ]
  %i.ap = getelementptr i8, ptr %.0.i.i197, i64 %i.aj
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  br label %PyUnicode_READ_CHAR.exit205

bb.x:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = and i32 %i.u, 64
  %.not.i.i12.i186 = icmp eq i32 %i.as, 0
  %.0.v.i.i13.i187 = select i1 %.not.i.i12.i186, i64 56, i64 40
  %.0.i.i14.i188 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i187
  br label %_PyUnicode_DATA.exit17.i189

bb.z:                                             ; preds = %bb.x
  %.val4.i16.i192 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i189

_PyUnicode_DATA.exit17.i189:                      ; preds = %bb.z, %bb.y
  %.0.i15.i190 = phi ptr [ %.0.i.i14.i188, %bb.y ], [ %.val4.i16.i192, %bb.z ]
  %i.at = getelementptr [2 x i8], ptr %.0.i15.i190, i64 %i.aj
  %i.au = load i16, ptr %i.at, align 2, !tbaa !88
  %i.av = zext i16 %i.au to i32
  br label %PyUnicode_READ_CHAR.exit205

bb.aa:                                            ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = and i32 %i.u, 64
  %.not.i.i20.i199 = icmp eq i32 %i.aw, 0
  %.0.v.i.i21.i200 = select i1 %.not.i.i20.i199, i64 56, i64 40
  %.0.i.i22.i201 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i200
  br label %_PyUnicode_DATA.exit25.i202

bb.ac:                                            ; preds = %bb.aa
  %.val4.i24.i204 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i202

_PyUnicode_DATA.exit25.i202:                      ; preds = %bb.ac, %bb.ab
  %.0.i23.i203 = phi ptr [ %.0.i.i22.i201, %bb.ab ], [ %.val4.i24.i204, %bb.ac ]
  %i.ax = getelementptr [4 x i8], ptr %.0.i23.i203, i64 %i.aj
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit205

PyUnicode_READ_CHAR.exit205:                      ; preds = %_PyUnicode_DATA.exit.i196, %_PyUnicode_DATA.exit17.i189, %_PyUnicode_DATA.exit25.i202
  %.0.i191 = phi i32 [ %i.ar, %_PyUnicode_DATA.exit.i196 ], [ %i.av, %_PyUnicode_DATA.exit17.i189 ], [ %i.ay, %_PyUnicode_DATA.exit25.i202 ]
  %i.az = icmp eq i32 %.0.i191, 122
  br i1 %i.az, label %bb.ad, label %7

bb.ad:                                            ; preds = %PyUnicode_READ_CHAR.exit205
  %i.ba = add nuw i64 %i.q, 3                     ; 2 uses
  %i.bb = icmp eq ptr %.0118.ph.ph, null
  br i1 %i.bb, label %bb.ae, label %make_Zreplacement.exit.thread230

bb.ae:                                            ; preds = %bb.ad
  %i.bc = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.137, ptr noundef %3) ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread240, label %make_Zreplacement.exit.thread230

7:                                                ; preds = %PyUnicode_READ_CHAR.exit205, %bb.s
  switch i32 %.0.i, label %bb.bb [
    i32 90, label %bb.af
    i32 102, label %bb.ay
  ]

bb.af:                                            ; preds = %PyUnicode_READ_CHAR.exit, %7
  %i.be = icmp eq ptr %.0132.ph.ph, null
  br i1 %i.be, label %bb.ag, label %make_Zreplacement.exit.thread230

bb.ag:                                            ; preds = %bb.af
  %.val10.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %.val10.i.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i.i206, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.ag
  %i.bf = call i32 @PyType_IsSubtype(ptr noundef %.val10.i.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !107
  %.not15.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not15.i.i, label %bb.ah, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.ag
  %i.bg = load i8, ptr %i.m, align 8, !tbaa !57
  %.not7.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not7.i.i, label %bb.ah, label %.sink.split.i.i

bb.ah:                                            ; preds = %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.i.i
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %.val.i.i, @PyDateTime_TimeType
  br i1 %.not.i11.i.i, label %PyObject_TypeCheck.exit12.thread.i.i, label %PyObject_TypeCheck.exit12.i.i

PyObject_TypeCheck.exit12.i.i:                    ; preds = %bb.ah
  %i.bh = call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !107
  %.not.i35.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i35.i, label %get_tzinfo_member.exit.i, label %PyObject_TypeCheck.exit12.thread.i.i

PyObject_TypeCheck.exit12.thread.i.i:             ; preds = %PyObject_TypeCheck.exit12.i.i, %bb.ah
  %i.bi = load i8, ptr %i.m, align 8, !tbaa !57
  %.not9.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not9.i.i, label %get_tzinfo_member.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit.thread.i.i
  %.sink16.i.i = phi i64 [ 40, %PyObject_TypeCheck.exit.thread.i.i ], [ 32, %PyObject_TypeCheck.exit12.thread.i.i ]
  %i.bj = getelementptr i8, ptr %0, i64 %.sink16.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  br label %get_tzinfo_member.exit.i

get_tzinfo_member.exit.i:                         ; preds = %.sink.split.i.i, %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit12.i.i
  %.0.i.i207 = phi ptr [ null, %PyObject_TypeCheck.exit12.thread.i.i ], [ null, %PyObject_TypeCheck.exit12.i.i ], [ %i.bk, %.sink.split.i.i ] ; 3 uses
  %i.bl = call ptr @Py_GetConstant(i32 noundef 7) #16, !inline_history !108 ; 16 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread240, label %bb.ai

bb.ai:                                            ; preds = %get_tzinfo_member.exit.i
  %i.bn = icmp eq ptr %.0.i.i207, @_Py_NoneStruct
  %i.bo = icmp eq ptr %.0.i.i207, null
  %or.cond.i = or i1 %i.bn, %i.bo
  br i1 %or.cond.i, label %make_Zreplacement.exit.thread230, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %.0.i.i207, ptr %i.c, align 16, !tbaa !43
  store ptr %3, ptr %i.n, align 8, !tbaa !43
  %i.bp = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.c, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !108 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.bq = icmp eq ptr %i.bp, null                 ; 2 uses
  %i.br = icmp eq ptr %i.bp, @_Py_NoneStruct      ; 2 uses
  %or.cond.i.i = or i1 %i.bq, %i.br
  br i1 %or.cond.i.i, label %call_tzname.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val17.i.i = load ptr, ptr %i.bs, align 8, !tbaa !44 ; 2 uses
  %i.bt = getelementptr i8, ptr %.val17.i.i, i64 168
  %.val18.i.i = load i64, ptr %i.bt, align 8, !tbaa !81
  %i.bu = and i64 %.val18.i.i, 268435456
  %.not.i36.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i36.i, label %bb.al, label %call_tzname.exit.thread40.i

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.bw = getelementptr i8, ptr %.val17.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bv, ptr noundef nonnull @.str.149, ptr noundef %i.bx) #16, !inline_history !108 ; 0 uses
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !35 ; 2 uses
  %.not.i.i38.i = icmp sgt i32 %i.bz, -1
  br i1 %.not.i.i38.i, label %bb.am, label %call_tzname.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bp, align 8, !tbaa !35
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.an, label %call_tzname.exit.thread.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #16, !inline_history !108
  br label %call_tzname.exit.thread.i

call_tzname.exit.i:                               ; preds = %bb.aj
  br i1 %i.bq, label %call_tzname.exit.thread.i, label %call_tzname.exit.thread40.i

call_tzname.exit.thread40.i:                      ; preds = %call_tzname.exit.i, %bb.ak
  br i1 %i.br, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %call_tzname.exit.thread40.i
  %i.cc = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.cc, -1
  br i1 %.not.i29.i, label %bb.ap, label %make_Zreplacement.exit.thread230

bb.ap:                                            ; preds = %bb.ao
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %make_Zreplacement.exit, label %make_Zreplacement.exit.thread230

bb.aq:                                            ; preds = %call_tzname.exit.thread40.i
  %i.cf = load i32, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i27.i, label %bb.ar, label %Py_DECREF.exit28.i

bb.ar:                                            ; preds = %bb.aq
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %i.bl, align 8, !tbaa !35
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.as, label %Py_DECREF.exit28.i

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #16, !inline_history !108
  br label %Py_DECREF.exit28.i

Py_DECREF.exit28.i:                               ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ci = call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #16, !inline_history !108 ; 5 uses
  %i.cj = load i32, ptr %i.bp, align 8, !tbaa !35 ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i25.i, label %bb.at, label %Py_DECREF.exit26.i

bb.at:                                            ; preds = %Py_DECREF.exit28.i
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.bp, align 8, !tbaa !35
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.au, label %Py_DECREF.exit26.i

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #16, !inline_history !108
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.au, %bb.at, %Py_DECREF.exit28.i
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %.thread240, label %bb.av

bb.av:                                            ; preds = %Py_DECREF.exit26.i
  %i.cn = getelementptr i8, ptr %i.ci, i64 8
  %.val.i = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.co = getelementptr i8, ptr %.val.i, i64 168
  %.val34.i = load i64, ptr %i.co, align 8, !tbaa !81
  %i.cp = and i64 %.val34.i, 268435456
  %.not.i208 = icmp eq i64 %i.cp, 0
  br i1 %.not.i208, label %bb.aw, label %make_Zreplacement.exit.thread230

bb.aw:                                            ; preds = %bb.av
  %i.cq = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.cq, ptr noundef nonnull @.str.148) #16, !inline_history !108
  br label %call_tzname.exit.thread.i

call_tzname.exit.thread.i:                        ; preds = %call_tzname.exit.i, %bb.aw, %bb.an, %bb.am, %bb.al
  %.0.i209 = phi ptr [ %i.bl, %bb.am ], [ %i.ci, %bb.aw ], [ %i.bl, %bb.an ], [ %i.bl, %bb.al ], [ %i.bl, %call_tzname.exit.i ] ; 3 uses
  %i.cr = load i32, ptr %.0.i209, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cr, -1
  br i1 %.not.i.i, label %bb.ax, label %.thread240

bb.ax:                                            ; preds = %call_tzname.exit.thread.i
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %.0.i209, align 8, !tbaa !35
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %make_Zreplacement.exit.thread232, label %.thread240

make_Zreplacement.exit.thread232:                 ; preds = %bb.ax
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i209) #16, !inline_history !108
  br label %.thread240

make_Zreplacement.exit:                           ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16, !inline_history !108
  br label %make_Zreplacement.exit.thread230

bb.ay:                                            ; preds = %PyUnicode_READ_CHAR.exit, %7
  %i.cu = icmp eq ptr %.0138.ph.ph, null
  br i1 %i.cu, label %bb.az, label %make_Zreplacement.exit.thread230

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.val9.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i.i210 = icmp eq ptr %.val9.i, @PyDateTime_TimeType
  br i1 %.not.i.i210, label %.sink.split.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.az
  %i.cv = call i32 @PyType_IsSubtype(ptr noundef %.val9.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !109
  %.not14.i = icmp eq i32 %i.cv, 0
  br i1 %.not14.i, label %bb.ba, label %.sink.split.i

bb.ba:                                            ; preds = %PyObject_TypeCheck.exit.i
  %.val.i211 = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i10.i = icmp eq ptr %.val.i211, @PyDateTime_DateTimeType
  br i1 %.not.i10.i, label %.sink.split.i, label %PyObject_TypeCheck.exit11.i

PyObject_TypeCheck.exit11.i:                      ; preds = %bb.ba
  %i.cw = call i32 @PyType_IsSubtype(ptr noundef %.val.i211, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !109
  %.not.i212 = icmp eq i32 %i.cw, 0
  br i1 %.not.i212, label %make_freplacement.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %PyObject_TypeCheck.exit11.i, %bb.ba, %PyObject_TypeCheck.exit.i, %bb.az
  %.sink29.i = phi i64 [ 28, %PyObject_TypeCheck.exit.i ], [ 28, %bb.az ], [ 32, %bb.ba ], [ 32, %PyObject_TypeCheck.exit11.i ]
  %.sink25.i = phi i64 [ 29, %PyObject_TypeCheck.exit.i ], [ 29, %bb.az ], [ 33, %bb.ba ], [ 33, %PyObject_TypeCheck.exit11.i ]
  %.sink19.i = phi i64 [ 30, %PyObject_TypeCheck.exit.i ], [ 30, %bb.az ], [ 34, %bb.ba ], [ 34, %PyObject_TypeCheck.exit11.i ]
  %i.cx = getelementptr i8, ptr %0, i64 %.sink29.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 16
  %i.db = getelementptr i8, ptr %0, i64 %.sink25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 8
  %i.df = or disjoint i32 %i.de, %i.da
  %i.dg = getelementptr i8, ptr %0, i64 %.sink19.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.df, %i.di
  br label %make_freplacement.exit

make_freplacement.exit:                           ; preds = %PyObject_TypeCheck.exit11.i, %.sink.split.i
  %.sink.i = phi i32 [ 0, %PyObject_TypeCheck.exit11.i ], [ %i.dj, %.sink.split.i ]
  %i.dk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %.sink.i) #16, !inline_history !109 ; 0 uses
  %i.dl = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.b) #16, !inline_history !109 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread240, label %make_Zreplacement.exit.thread230

bb.bb:                                            ; preds = %PyUnicode_READ_CHAR.exit, %7
  %i.dn = load i32, ptr @normalize_century.cache, align 4, !tbaa !7 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %normalize_century.exit

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.o, align 4
  store i32 -1801, ptr %i.p, align 4
  %i.dp = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.151, ptr noundef nonnull %4) #16
  %.not.i213 = icmp eq i64 %i.dp, 0
  br i1 %.not.i213, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dq = load i32, ptr %i.a, align 1
  %i.dr = xor i32 %i.dq, 960049200
  %i.ds = getelementptr i8, ptr %i.a, i64 4
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = or i32 %i.dr, %i.du
  %i.dw = icmp ne i32 %i.dv, 0                    ; 2 uses
  %i.dx = zext i1 %i.dw to i32                    ; 0 uses
  %i.dy = zext i1 %i.dw to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.dz = phi i32 [ 0, %bb.bc ], [ %i.dy, %bb.bd ] ; 2 uses
  store i32 %i.dz, ptr @normalize_century.cache, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %normalize_century.exit

normalize_century.exit:                           ; preds = %bb.bb, %bb.be
  %i.ea = phi i32 [ %i.dz, %bb.be ], [ %i.dn, %bb.bb ]
  %.not171 = icmp eq i32 %i.ea, 0
  br i1 %.not171, label %.outer.loopexit, label %bb.bf, !llvm.loop !110

bb.bf:                                            ; preds = %normalize_century.exit
  %i.eb = icmp eq i32 %.0.i, 71
  %i.ec = icmp eq i32 %.0.i, 70
  %i.ed = icmp eq i32 %.0.i, 67
  switch i32 %.0.i, label %.outer.loopexit [
    i32 89, label %bb.bg
    i32 71, label %bb.bg
    i32 70, label %bb.bg
    i32 67, label %bb.bg
  ], !llvm.loop !110

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %i.ee = call ptr @PySequence_GetItem(ptr noundef nonnull %2, i64 noundef 0) #16 ; 5 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.thread240, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eg = call i64 @PyLong_AsLong(ptr noundef nonnull %i.ee) #16 ; 3 uses
  %i.eh = load i32, ptr %i.ee, align 8, !tbaa !35 ; 2 uses
  %.not.i180 = icmp sgt i32 %i.eh, -1
  br i1 %.not.i180, label %bb.bi, label %Py_DECREF.exit181

bb.bi:                                            ; preds = %bb.bh
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.ee, align 8, !tbaa !35
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bj, label %Py_DECREF.exit181

bb.bj:                                            ; preds = %bb.bi
  call void @_Py_Dealloc(ptr noundef nonnull %i.ee) #16
  br label %Py_DECREF.exit181

Py_DECREF.exit181:                                ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.ek = icmp eq i64 %i.eg, -1
  br i1 %i.ek, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %Py_DECREF.exit181
  %i.el = call ptr @PyErr_Occurred() #16
  %.not172 = icmp eq ptr %i.el, null
  br i1 %.not172, label %.thread, label %.thread240

bb.bl:                                            ; preds = %Py_DECREF.exit181
  %i.em = icmp sgt i64 %i.eg, 999
  br i1 %i.em, label %.outer.loopexit, label %.thread, !llvm.loop !110

.thread:                                          ; preds = %bb.bk, %bb.bl
  br i1 %i.eb, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %.thread
  %i.en = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull %2) #16 ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.thread240, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ep = call ptr @PyNumber_Long(ptr noundef nonnull %i.en) #16 ; 5 uses
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !35 ; 2 uses
  %.not.i178 = icmp sgt i32 %i.eq, -1
  br i1 %.not.i178, label %bb.bo, label %Py_DECREF.exit179

bb.bo:                                            ; preds = %bb.bn
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.en, align 8, !tbaa !35
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bp, label %Py_DECREF.exit179

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %i.en) #16
  br label %Py_DECREF.exit179

Py_DECREF.exit179:                                ; preds = %bb.bn, %bb.bo, %bb.bp
  %i.et = icmp eq ptr %i.ep, null
  br i1 %i.et, label %.thread240, label %bb.bq

bb.bq:                                            ; preds = %Py_DECREF.exit179
  %i.eu = call i64 @PyLong_AsLong(ptr noundef nonnull %i.ep) #16 ; 2 uses
  %i.ev = load i32, ptr %i.ep, align 8, !tbaa !35 ; 2 uses
  %.not.i176 = icmp sgt i32 %i.ev, -1
  br i1 %.not.i176, label %bb.br, label %Py_DECREF.exit177

bb.br:                                            ; preds = %bb.bq
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.ep, align 8, !tbaa !35
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bs, label %Py_DECREF.exit177

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %i.ep) #16
  br label %Py_DECREF.exit177

Py_DECREF.exit177:                                ; preds = %bb.bq, %bb.br, %bb.bs
  %i.ey = icmp eq i64 %i.eu, -1
  br i1 %i.ey, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %Py_DECREF.exit177
  %i.ez = call ptr @PyErr_Occurred() #16
  %.not173 = icmp eq ptr %i.ez, null
  br i1 %.not173, label %bb.bu, label %.thread240

bb.bu:                                            ; preds = %bb.bt, %Py_DECREF.exit177, %.thread
  %.2 = phi i64 [ %i.eg, %.thread ], [ %i.eu, %Py_DECREF.exit177 ], [ -1, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.fa = select i1 %i.ec, ptr @.str.140, ptr @.str.141
  %i.fb = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.d, i64 noundef 28, ptr noundef nonnull %i.fa, i64 noundef %.2) #16
  %i.fc = call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %.0124, i64 noundef %i.q) #16
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %.thread340, label %bb.bv

.thread340:                                       ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.thread240

bb.bv:                                            ; preds = %bb.bu
  %i.fe = sext i32 %i.fb to i64                   ; 2 uses
  %i.ff = add nsw i64 %i.fe, -2
  %spec.select = select i1 %i.ed, i64 %i.ff, i64 %i.fe
  %i.fg = call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, i64 noundef %spec.select) #16
  %i.fh = icmp slt i32 %i.fg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %i.fh, label %.thread240, label %bb.d

make_Zreplacement.exit.thread230:                 ; preds = %bb.ai, %bb.av, %bb.ap, %bb.ao, %make_Zreplacement.exit, %bb.ay, %make_freplacement.exit, %bb.af, %bb.ad, %bb.ae, %bb.q, %bb.r
  %.2140 = phi ptr [ %.0138.ph.ph, %bb.af ], [ %.0138.ph.ph, %bb.q ], [ %.0138.ph.ph, %bb.ad ], [ %.0138.ph.ph, %bb.r ], [ %.0138.ph.ph, %bb.ae ], [ %.0138.ph.ph, %make_Zreplacement.exit ], [ %i.dl, %make_freplacement.exit ], [ %.0138.ph.ph, %bb.ay ], [ %.0138.ph.ph, %bb.ao ], [ %.0138.ph.ph, %bb.ap ], [ %.0138.ph.ph, %bb.av ], [ %.0138.ph.ph, %bb.ai ] ; 3 uses
  %.2134 = phi ptr [ %.0132.ph.ph, %bb.af ], [ %.0132.ph.ph, %bb.q ], [ %.0132.ph.ph, %bb.ad ], [ %.0132.ph.ph, %bb.r ], [ %.0132.ph.ph, %bb.ae ], [ %i.bl, %make_Zreplacement.exit ], [ %.0132.ph.ph, %make_freplacement.exit ], [ %.0132.ph.ph, %bb.ay ], [ %i.bl, %bb.ao ], [ %i.bl, %bb.ap ], [ %i.ci, %bb.av ], [ %i.bl, %bb.ai ] ; 3 uses
  %.1130 = phi i64 [ %i.aj, %bb.af ], [ %i.aj, %bb.q ], [ %i.ba, %bb.ad ], [ %i.aj, %bb.r ], [ %i.ba, %bb.ae ], [ %i.aj, %make_Zreplacement.exit ], [ %i.aj, %make_freplacement.exit ], [ %i.aj, %bb.ay ], [ %i.aj, %bb.ao ], [ %i.aj, %bb.ap ], [ %i.aj, %bb.av ], [ %i.aj, %bb.ai ]
  %.2120 = phi ptr [ %.0118.ph.ph, %bb.af ], [ %.0118.ph.ph, %bb.q ], [ %.0118.ph.ph, %bb.ad ], [ %.0118.ph.ph, %bb.r ], [ %i.bc, %bb.ae ], [ %.0118.ph.ph, %make_Zreplacement.exit ], [ %.0118.ph.ph, %make_freplacement.exit ], [ %.0118.ph.ph, %bb.ay ], [ %.0118.ph.ph, %bb.ao ], [ %.0118.ph.ph, %bb.ap ], [ %.0118.ph.ph, %bb.av ], [ %.0118.ph.ph, %bb.ai ] ; 3 uses
  %.0117 = phi ptr [ %.0132.ph.ph, %bb.af ], [ %.0114.ph.ph, %bb.q ], [ %.0118.ph.ph, %bb.ad ], [ %i.al, %bb.r ], [ %i.bc, %bb.ae ], [ %i.bl, %make_Zreplacement.exit ], [ %i.dl, %make_freplacement.exit ], [ %.0138.ph.ph, %bb.ay ], [ %i.bl, %bb.ao ], [ %i.bl, %bb.ap ], [ %i.ci, %bb.av ], [ %i.bl, %bb.ai ]
  %.2116 = phi ptr [ %.0114.ph.ph, %bb.af ], [ %.0114.ph.ph, %bb.q ], [ %.0114.ph.ph, %bb.ad ], [ %i.al, %bb.r ], [ %.0114.ph.ph, %bb.ae ], [ %.0114.ph.ph, %make_Zreplacement.exit ], [ %.0114.ph.ph, %make_freplacement.exit ], [ %.0114.ph.ph, %bb.ay ], [ %.0114.ph.ph, %bb.ao ], [ %.0114.ph.ph, %bb.ap ], [ %.0114.ph.ph, %bb.av ], [ %.0114.ph.ph, %bb.ai ] ; 3 uses
  %i.fi = call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %.0124, i64 noundef %i.q) #16
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %.thread240, label %bb.bw

bb.bw:                                            ; preds = %make_Zreplacement.exit.thread230
  %i.fk = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.g, ptr noundef nonnull %.0117) #16
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %.thread240, label %.outer.outer

bb.bx:                                            ; preds = %bb.f, %bb.e, %bb.d
  %i.fm = icmp eq i64 %.0124, 0
  br i1 %i.fm, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.g) #16
  %i.fn = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.fo = icmp ugt i32 %i.fn, -1073741825
  br i1 %i.fo, label %_Py_NewRef.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fp = add nuw i32 %i.fn, 1
  store i32 %i.fp, ptr %1, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.ca:                                            ; preds = %bb.bx
  %i.fq = call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %.0124, i64 noundef %.val) #16
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.thread240, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fs = call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.g) #16 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %Py_DECREF.exit, label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.bz, %bb.by, %bb.cb
end_hunk_0
begin_hunk_1_@iso_calendar_date_new:bb.a

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ %i.w, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @iso_calendar_date_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 48), align 8, !tbaa !160
  tail call void %i.b(ptr noundef %0) #16
  %i.c = load i32, ptr %.val, align 8, !tbaa !35  ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %.val, align 8, !tbaa !35
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iso_calendar_date_traverse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %.val12, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val12, ptr noundef %2) #16 ; 2 uses
  %.not11.not = icmp eq i32 %i.b, 0
  br i1 %.not11.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 184), align 8, !tbaa !161
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  ret i32 %.1
}

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_reduce(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.274, ptr noundef nonnull @PyTuple_Type, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #16
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_year(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 0) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_week(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 1) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_weekday(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 2) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @new_time_ex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @new_time_ex2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_fromtimestamp_capi(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr @_Py_NoneStruct, ptr %i.b, align 8, !tbaa !43
  %i.c = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.276, ptr noundef nonnull @datetime_datetime_fromtimestamp_capi.keywords, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.f = call fastcc ptr @datetime_datetime_fromtimestamp_impl(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromtimestamp_capi(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.76, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.a) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.d = call fastcc ptr @date_fromtimestamp(ptr noundef %0, ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare ptr @PyWeakref_NewRef(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !16, i64 304}
!12 = !{!"_typeobject", !13, i64 0, !18, i64 24, !17, i64 32, !17, i64 40, !16, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !17, i64 168, !18, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !17, i64 208, !16, i64 216, !16, i64 224, !19, i64 232, !20, i64 240, !21, i64 248, !15, i64 256, !22, i64 264, !16, i64 272, !16, i64 280, !17, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 368, !16, i64 376, !8, i64 384, !16, i64 392, !16, i64 400, !9, i64 408, !23, i64 410}
!13 = !{!"PyVarObject", !14, i64 0, !17, i64 16}
!14 = !{!"_object", !9, i64 0, !15, i64 8}
!15 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"p1 _ZTS11PyMethodDef", !16, i64 0}
!20 = !{!"p1 _ZTS11PyMemberDef", !16, i64 0}
!21 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!22 = !{!"p1 _ZTS7_object", !16, i64 0}
!23 = !{!"short", !9, i64 0}
!24 = !{ptr @new_delta_ex}
!25 = !{!26, !8, i64 0}
!26 = !{!"", !8, i64 0, !18, i64 8, !18, i64 16, !8, i64 24}
!27 = !{!26, !18, i64 8}
!28 = !{!26, !18, i64 16}
!29 = !{!26, !8, i64 24}
!30 = !{!31, !17, i64 16}
!31 = !{!"", !14, i64 0, !17, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!32 = !{!31, !8, i64 24}
!33 = !{!31, !8, i64 28}
!34 = !{!31, !8, i64 32}
!35 = !{!9, !9, i64 0}
!36 = !{ptr @new_date_ex}
!37 = !{!38, !17, i64 16}
!38 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25}
!39 = !{ptr @new_time_ex2}
!40 = !{!41, !9, i64 24}
!41 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25, !9, i64 31, !22, i64 32}
!42 = !{!41, !17, i64 16}
!43 = !{!22, !22, i64 0}
!44 = !{!14, !15, i64 8}
!45 = distinct !{null}
!46 = !{!12, !18, i64 24}
!47 = !{!41, !22, i64 32}
!48 = !{!41, !9, i64 31}
!49 = !{!50, !9, i64 24}
!50 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25, !9, i64 35, !22, i64 40}
!51 = !{!50, !22, i64 40}
!52 = !{!50, !9, i64 35}
!53 = !{!54, !22, i64 16}
!54 = !{!"", !14, i64 0, !22, i64 16, !22, i64 24}
!55 = distinct !{null}
!56 = !{!54, !22, i64 24}
!57 = !{!58, !9, i64 24}
!58 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24}
!59 = distinct !{null, null}
!60 = !{!61, !17, i64 16}
!61 = !{!"", !14, i64 0, !17, i64 16, !17, i64 24, !62, i64 32}
!62 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!63 = !{!13, !17, i64 16}
!64 = !{!65, !17, i64 16}
!65 = !{!"", !14, i64 0, !17, i64 16, !17, i64 24, !66, i64 32, !67, i64 40}
!66 = !{!"p1 _ZTS15_dictkeysobject", !16, i64 0}
!67 = !{!"p1 _ZTS11_dictvalues", !16, i64 0}
!68 = distinct !{null}
!69 = !{!70, !16, i64 24}
!70 = !{!"", !14, i64 0, !22, i64 16, !16, i64 24, !22, i64 32, !22, i64 40, !71, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96}
!71 = !{!"_Bool", !9, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !9, i64 0}
!74 = !{!75, !22, i64 8}
!75 = !{!"", !15, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64}
!76 = !{!75, !22, i64 16}
!77 = !{!75, !22, i64 24}
!78 = !{!75, !22, i64 32}
!79 = !{!75, !22, i64 40}
!80 = !{!75, !22, i64 48}
!81 = !{!12, !17, i64 168}
!82 = distinct !{null}
!83 = !{ptr @delta_positive, ptr @new_delta_ex}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = !{!75, !22, i64 56}
!87 = distinct !{null}
!88 = !{!23, !23, i64 0}
!89 = distinct !{null}
!90 = distinct !{null, ptr @new_datetime_ex}
!91 = distinct !{null}
!92 = !{ptr @datetime_date_fromordinal_impl}
!93 = distinct !{null}
!94 = !{!17, !17, i64 0}
!95 = distinct !{null, null}
!96 = distinct !{null, null, ptr @new_datetime_ex}
!97 = distinct !{null}
!98 = !{!99, !8, i64 20}
!99 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !17, i64 40, !18, i64 48}
!100 = !{!99, !8, i64 16}
!101 = !{!99, !8, i64 12}
!102 = !{!18, !18, i64 0}
!103 = distinct !{null}
!104 = !{!75, !15, i64 0}
!105 = distinct !{null, null}
!106 = distinct !{null, null, ptr @new_datetime_ex}
!107 = distinct !{null, null}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = distinct !{null}
!113 = !{!12, !16, i64 320}
!114 = distinct !{null}
!115 = distinct !{null, null}
!116 = distinct !{null}
!117 = distinct !{null}
!118 = distinct !{null, null}
!119 = distinct !{!119, !111}
!120 = !{ptr @new_timezone}
!121 = distinct !{ptr @new_timezone, null}
!122 = distinct !{!122, !111}
!123 = !{!50, !17, i64 16}
!124 = distinct !{null}
!125 = distinct !{null, null}
!126 = distinct !{null}
!127 = distinct !{null, null}
!128 = distinct !{null, null}
!129 = distinct !{null}
!130 = distinct !{null}
!131 = distinct !{null, null}
!132 = !{ptr @_PyTime_gmtime, ptr @_PyTime_localtime}
!133 = distinct !{null, ptr @datetime_from_timet_and_us, null}
!134 = !{!99, !8, i64 8}
!135 = !{!99, !8, i64 4}
!136 = !{!99, !8, i64 0}
!137 = distinct !{null, ptr @datetime_from_timet_and_us, null, null}
!138 = distinct !{null}
!139 = distinct !{null, null}
!140 = distinct !{null, ptr @datetime_from_timet_and_us, null}
!141 = distinct !{null, ptr @datetime_from_timet_and_us, null, null}
!142 = distinct !{null, null}
!143 = distinct !{null}
!144 = distinct !{!144, !111}
!145 = distinct !{null, null, null}
!146 = !{!75, !22, i64 64}
!147 = distinct !{null, null}
!148 = distinct !{null, null}
!149 = distinct !{null, null}
!150 = distinct !{null}
end_hunk_1
