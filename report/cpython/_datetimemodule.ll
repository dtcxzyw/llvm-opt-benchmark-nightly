inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@datetime_time_fromisoformat:bb.a
  %i.j = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull %1) #16
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.k = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16, !inline_history !116 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !35
  %i.n = icmp eq i8 %i.m, 84
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !94 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.k, i64 1
  %i.p = add i64 %.pre.i, -1                      ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i64 [ %i.p, %bb.e ], [ %.pre.i, %bb.d ]
  %.020.i = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ]
  store i32 0, ptr %i.b, align 4, !tbaa !7
  store i32 0, ptr %i.c, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.f, align 4, !tbaa !7
  store i32 0, ptr %i.g, align 4, !tbaa !7
  %i.r = call fastcc i32 @parse_isoformat_time(ptr noundef %.020.i, i64 noundef %i.q, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g), !inline_history !116 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.r, -6
  br i1 %i.t, label %datetime_time_fromisoformat_impl.exit, label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %i.v = icmp eq i32 %i.u, 24
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.c, align 4, !tbaa !7
  %i.x = icmp eq i32 %i.w, 0
  %i.y = load i32, ptr %i.d, align 4
  %i.z = icmp eq i32 %i.y, 0
  %or.cond.i = select i1 %i.x, i1 %i.z, i1 false
  %i.aa = load i32, ptr %i.e, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ab, i1 false
  br i1 %or.cond3.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi i32 [ %i.u, %bb.h ], [ 0, %bb.i ]   ; 2 uses
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !7
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !7
  %i.af = call fastcc ptr @tzinfo_from_isoformat_results(i32 noundef %i.r, i32 noundef %i.ad, i32 noundef %i.ae), !inline_history !116 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %datetime_time_fromisoformat_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq ptr %0, @PyDateTime_TimeType
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !7   ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call ptr @new_time_ex2(i32 noundef %i.ac, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.af, i32 noundef 0, ptr noundef nonnull @PyDateTime_TimeType), !inline_history !116
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.175, i32 noundef %i.ac, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.af) #16, !inline_history !116
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi ptr [ %i.al, %bb.l ], [ %i.am, %bb.m ] ; 3 uses
  %i.an = load i32, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i, label %bb.o, label %datetime_time_fromisoformat_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.af, align 8, !tbaa !35
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %datetime_time_fromisoformat_impl.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.af) #16, !inline_history !116
  br label %datetime_time_fromisoformat_impl.exit

bb.q:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.176) #16, !inline_history !116
  br label %datetime_time_fromisoformat_impl.exit

bb.r:                                             ; preds = %bb.g, %bb.c
  %i.ar = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.as = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.105, ptr noundef nonnull %1) #16, !inline_history !116 ; 0 uses
  br label %datetime_time_fromisoformat_impl.exit

datetime_time_fromisoformat_impl.exit:            ; preds = %bb.g, %bb.j, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.019.i = phi ptr [ null, %bb.r ], [ null, %bb.j ], [ null, %bb.q ], [ null, %bb.g ], [ %.0.i, %bb.n ], [ %.0.i, %bb.o ], [ %.0.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %datetime_time_fromisoformat_impl.exit, %bb.b
  %.0 = phi ptr [ %.019.i, %datetime_time_fromisoformat_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_time_strptime(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.80, i64 noundef %2, i64 noundef 2, i64 noundef 2) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %datetime_time_strptime_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr i8, ptr %.val15, i64 168
  %.val17 = load i64, ptr %i.d, align 8, !tbaa !81
  %i.e = and i64 %.val17, 268435456
  %.not13 = icmp eq i64 %i.e, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.b) #16
  br label %datetime_time_strptime_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val16 = load i64, ptr %i.i, align 8, !tbaa !81
  %i.j = and i64 %.val16, 268435456
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.g) #16
  br label %datetime_time_strptime_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73512)) #16 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %datetime_time_strptime_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %i.k, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73704), ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, ptr noundef null) #16 ; 3 uses
  %i.n = load i32, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.i, label %datetime_time_strptime_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.k, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %datetime_time_strptime_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #16
  br label %datetime_time_strptime_impl.exit

datetime_time_strptime_impl.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_time_isoformat(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val34 = load i64, ptr %i.e, align 8, !tbaa !63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, 2
  %i.g = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.g, %i.f
  br i1 %or.cond5, label %.thread38, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = phi i64 [ %.val34, %.thread ], [ 0, %bb.b ]
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_time_isoformat._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not30 = icmp eq ptr %i.i, null
  br i1 %.not30, label %bb.u, label %.thread38

.thread38:                                        ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ]
  %i.k = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.l = sub i64 0, %i.k
  %.not31 = icmp eq i64 %2, %i.l
  br i1 %.not31, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.thread38
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !43   ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %.val, i64 168
  %.val35 = load i64, ptr %i.o, align 8, !tbaa !81
  %i.p = and i64 %.val35, 268435456
  %.not32 = icmp eq i64 %i.p, 0
  br i1 %.not32, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.m) #16
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.q = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.m, ptr noundef nonnull %i.d) #16 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #17
  %i.t = load i64, ptr %i.d, align 8, !tbaa !94
  %.not33 = icmp eq i64 %i.s, %i.t
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.184) #16
  br label %bb.u

bb.i:                                             ; preds = %bb.g, %.thread38
  %.0 = phi ptr [ %i.q, %bb.g ], [ null, %.thread38 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr i8, ptr %0, i64 25
  %i.w = getelementptr i8, ptr %0, i64 28
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 16
  %i.aa = getelementptr i8, ptr %0, i64 29
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %0, i64 30
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 7 uses
  %i.aj = icmp eq ptr %.0, null
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(5) @.str.190) #17
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.am = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(6) @.str.67) #17
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread.i, label %.preheader.1.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = icmp eq i32 %i.ai, 0
  %.27.i = select i1 %i.ao, i64 2, i64 4
  br label %.thread.i

bb.l:                                             ; preds = %.preheader.3.i
  %i.ap = udiv i32 %i.ai, 1000
  br label %.thread.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.aq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.66) #17
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.thread.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.as = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.60) #17
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.au = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.65) #17
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.aw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.62) #17
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %.preheader.4.i
  %i.ay = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.az = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ay, ptr noundef nonnull @.str.191) #16 ; 0 uses
  br label %datetime_time_isoformat_impl.exit

.thread.i:                                        ; preds = %.preheader.4.i, %.preheader.2.i, %.preheader.1.i, %bb.l, %bb.k, %.preheader.preheader.i
  %.131.i = phi i64 [ %.27.i, %bb.k ], [ 3, %bb.l ], [ 4, %.preheader.4.i ], [ 2, %.preheader.2.i ], [ 1, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  %.02130.i = phi i32 [ %i.ai, %bb.k ], [ %i.ap, %bb.l ], [ %i.ai, %.preheader.4.i ], [ %i.ai, %.preheader.2.i ], [ %i.ai, %.preheader.1.i ], [ %i.ai, %.preheader.preheader.i ]
  %i.ba = getelementptr [16 x i8], ptr @datetime_time_isoformat_impl.specs, i64 %.131.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !102
  %i.bd = load i8, ptr %i.v, align 1, !tbaa !35
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr i8, ptr %0, i64 26
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr i8, ptr %0, i64 27
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef %.02130.i) #16 ; 7 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !43
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %datetime_time_isoformat_impl.exit, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.bn = getelementptr i8, ptr %0, i64 24
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !57
  %.not.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i, label %datetime_time_isoformat_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47 ; 2 uses
  %i.br = icmp eq ptr %i.bq, @_Py_NoneStruct
  br i1 %i.br, label %datetime_time_isoformat_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = call fastcc i32 @format_utcoffset(ptr noundef %i.a, ptr noundef nonnull @.str.137, ptr noundef %i.bq, ptr noundef nonnull @_Py_NoneStruct)
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i, label %bb.r, label %datetime_time_isoformat_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bl, align 8, !tbaa !35
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %datetime_time_isoformat_impl.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #16
  br label %datetime_time_isoformat_impl.exit

bb.t:                                             ; preds = %bb.p
  %i.bx = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.a) #16
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.b, ptr noundef %i.bx) #16
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %datetime_time_isoformat_impl.exit

datetime_time_isoformat_impl.exit:                ; preds = %bb.m, %.thread.i, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t
  %.022.i = phi ptr [ null, %bb.m ], [ %i.by, %bb.t ], [ null, %.thread.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.c, %datetime_time_isoformat_impl.exit, %bb.h, %bb.e
  %.025 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %.022.i, %datetime_time_isoformat_impl.exit ], [ null, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_time_strftime(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_time_strftime._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %datetime_time_strftime_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val22 = load i64, ptr %i.i, align 8, !tbaa !81
  %i.j = and i64 %.val22, 268435456
  %.not21 = icmp eq i64 %i.j, 0
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.g) #16
  br label %datetime_time_strftime_impl.exit

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr i8, ptr %0, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr i8, ptr %0, i64 26
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 27
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.192, i32 noundef 1900, i32 noundef 1, i32 noundef 1, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef 0, i32 noundef 1, i32 noundef -1) #16, !inline_history !117 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %datetime_time_strftime_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call fastcc ptr @wrap_strftime(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.g, ptr noundef %i.t, ptr noundef nonnull @_Py_NoneStruct), !inline_history !117 ; 3 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i, label %bb.f, label %datetime_time_strftime_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.t, align 8, !tbaa !35
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %datetime_time_strftime_impl.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #16, !inline_history !117
  br label %datetime_time_strftime_impl.exit

datetime_time_strftime_impl.exit:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_time___format__(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.c, align 8, !tbaa !81
  %i.d = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull %1) #16
  br label %datetime_time___format___impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @PyUnicode_GetLength(ptr noundef nonnull %1) #16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyObject_Str(ptr noundef %0) #16
  br label %datetime_time___format___impl.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 16, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !43
  %i.i = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 101152), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %datetime_time___format___impl.exit

datetime_time___format___impl.exit:               ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_tzname(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %call_tzname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.f, label %call_tzname.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %i.e, ptr %i.a, align 16, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_Py_NoneStruct, ptr %i.g, align 8, !tbaa !43
  %i.h = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.i = icmp eq ptr %i.h, null
  %i.j = icmp eq ptr %i.h, @_Py_NoneStruct
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %call_tzname.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val17.i = load ptr, ptr %i.k, align 8, !tbaa !44 ; 2 uses
  %i.l = getelementptr i8, ptr %.val17.i, i64 168
  %.val18.i = load i64, ptr %i.l, align 8, !tbaa !81
  %i.m = and i64 %.val18.i, 268435456
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %call_tzname.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %.val17.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.149, ptr noundef %i.p) #16 ; 0 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %call_tzname.exit

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.h, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %call_tzname.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #16
  br label %call_tzname.exit

call_tzname.exit:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @_Py_NoneStruct, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @time_dst(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  br label %bb.c

end_hunk_0
begin_hunk_1_@datetime_timestamp:bb.a
  store i32 %i.s, ptr %i.m, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #16
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr i8, ptr %0, i64 26
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 27
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 30
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 35
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i8 %i.as to i32
  %i.au = tail call fastcc i64 @local_to_seconds(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at) ; 2 uses
  %.not32 = icmp eq i64 %i.au, -1
  br i1 %.not32, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i64 %i.au, -62135683200
  %i.aw = sitofp i64 %i.av to double
  %i.ax = getelementptr i8, ptr %0, i64 32
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 16
  %i.bb = getelementptr i8, ptr %0, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.be, %i.ba
  %i.bg = getelementptr i8, ptr %0, i64 34
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %i.bk = uitofp nneg i32 %i.bj to double
  %i.bl = fdiv double %i.bk, 1.000000e+06
  %i.bm = fadd double %i.bl, %i.aw
  %i.bn = tail call ptr @PyFloat_FromDouble(double noundef %i.bm) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.k, %Py_DECREF.exit35
  %.2 = phi ptr [ null, %Py_DECREF.exit35 ], [ %i.q, %bb.g ], [ %i.bn, %bb.k ], [ %i.q, %bb.i ], [ %i.q, %bb.h ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_utctimetuple(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_Py_NewRef.exit44.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i40 = icmp sgt i32 %i.l, -1
  br i1 %.not.i40, label %bb.g, label %Py_DECREF.exit41

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit41

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit41

Py_DECREF.exit41:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit41
  %i.q = add nuw i32 %i.o, 1                      ; 2 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.e
  %i.r = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef -1) ; 3 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not.i38 = icmp sgt i32 %i.s, -1
  br i1 %.not.i38, label %bb.k, label %_Py_NewRef.exit44

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.i, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %_Py_NewRef.exit44

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #16
  br label %_Py_NewRef.exit44

_Py_NewRef.exit44:                                ; preds = %bb.l, %bb.k, %bb.j
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %_Py_NewRef.exit44.thread47, label %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge

_Py_NewRef.exit44._Py_NewRef.exit_crit_edge:      ; preds = %_Py_NewRef.exit44
  %.pre = load i32, ptr %i.r, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge, %bb.i, %Py_DECREF.exit41, %bb.c, %.thread
  %i.v = phi i32 [ %.pre, %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge ], [ %i.f, %.thread ], [ %i.h, %bb.c ], [ %i.o, %Py_DECREF.exit41 ], [ %i.q, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %i.r, %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge ], [ %0, %.thread ], [ %0, %bb.c ], [ %0, %Py_DECREF.exit41 ], [ %0, %bb.i ] ; 9 uses
  %i.w = getelementptr i8, ptr %.2, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr i8, ptr %.2, i64 26
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = getelementptr i8, ptr %.2, i64 27
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %.2, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr i8, ptr %.2, i64 29
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr i8, ptr %.2, i64 30
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.2, i64 31
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %_Py_NewRef.exit
  %i.at = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.at, ptr %.2, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.m, %bb.n
  %i.av = tail call fastcc ptr @build_struct_time(i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef 0)
  br label %_Py_NewRef.exit44.thread47

_Py_NewRef.exit44.thread47:                       ; preds = %bb.d, %_Py_NewRef.exit44, %Py_DECREF.exit
  %.1 = phi ptr [ %i.av, %Py_DECREF.exit ], [ null, %_Py_NewRef.exit44 ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_isoformat(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val50 = load i64, ptr %i.e, align 8, !tbaa !63
  %i.f = add i64 %.val50, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %2, 3
  %i.h = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i64 [ %i.f, %.thread ], [ %2, %bb.b ]
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_isoformat._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.ai, label %.thread57

.thread57:                                        ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.l = phi i64 [ %i.i, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not42 = icmp eq i64 %i.l, 0
  br i1 %.not42, label %bb.x, label %bb.d

bb.d:                                             ; preds = %.thread57
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !43   ; 11 uses
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %.val49, i64 168
  %.val52 = load i64, ptr %i.o, align 8, !tbaa !81
  %i.p = and i64 %.val52, 268435456
  %.not44 = icmp eq i64 %i.p, 0
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.m) #16
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.m, i64 16
  %.val54 = load i64, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  %.not45 = icmp eq i64 %.val54, 1
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.232, i64 noundef %.val54) #16 ; 0 uses
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.m, i64 32
  %i.u = load i32, ptr %i.t, align 8              ; 5 uses
  %i.v = lshr i32 %i.u, 2
  %i.w = and i32 %i.v, 7
  %i.x = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.x, 0               ; 3 uses
  switch i32 %i.w, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.m, i64 56
  %.val4.i.i = load ptr, ptr %i.z, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.aa = load i8, ptr %.0.i.i, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.m, i64 56
  %.val4.i16.i = load ptr, ptr %i.ad, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.ae = load i16, ptr %.0.i15.i, align 2, !tbaa !88
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = and i32 %i.u, 64
  %.not.i.i20.i = icmp eq i32 %i.ag, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.m, i64 56
  %.val4.i24.i = load ptr, ptr %i.ah, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.ai = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ab, %_PyUnicode_DATA.exit.i ], [ %i.af, %_PyUnicode_DATA.exit17.i ], [ %i.ai, %_PyUnicode_DATA.exit25.i ] ; 2 uses
  %.not46 = icmp eq i64 %i.l, 1
  br i1 %.not46, label %bb.x, label %bb.s

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit, %bb.d
  %.033 = phi i32 [ %.0.i, %PyUnicode_READ_CHAR.exit ], [ 84, %bb.d ]
  %i.aj = getelementptr i8, ptr %i.k, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr i8, ptr %.val, i64 168
  %.val51 = load i64, ptr %i.am, align 8, !tbaa !81
  %i.an = and i64 %.val51, 268435456
  %.not47 = icmp eq i64 %i.an, 0
  br i1 %.not47, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.ak) #16
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.ao = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.d) #16 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #17
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !94
  %.not48 = icmp eq i64 %i.aq, %i.ar
  br i1 %.not48, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.184) #16
  br label %bb.ai

bb.x:                                             ; preds = %bb.v, %PyUnicode_READ_CHAR.exit, %.thread57
  %.1 = phi i32 [ %.033, %bb.v ], [ %.0.i, %PyUnicode_READ_CHAR.exit ], [ 84, %.thread57 ]
  %.0 = phi ptr [ %i.ao, %bb.v ], [ null, %PyUnicode_READ_CHAR.exit ], [ null, %.thread57 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.at = getelementptr i8, ptr %0, i64 25
  %i.au = getelementptr i8, ptr %0, i64 32
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = getelementptr i8, ptr %0, i64 33
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = getelementptr i8, ptr %0, i64 34
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf            ; 7 uses
  %i.bh = icmp eq ptr %.0, null
  br i1 %i.bh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(5) @.str.190) #17
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.y
  %i.bk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(6) @.str.67) #17
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.thread.i, label %.preheader.1.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bm = icmp eq i32 %i.bg, 0
  %.32.i = select i1 %i.bm, i64 2, i64 4
  br label %.thread.i

bb.aa:                                            ; preds = %.preheader.3.i
  %i.bn = udiv i32 %i.bg, 1000
  br label %.thread.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bo = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.66) #17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.thread.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.60) #17
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.thread.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bs = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.65) #17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.62) #17
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.4.i
  %i.bw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.bx = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bw, ptr noundef nonnull @.str.191) #16 ; 0 uses
  br label %datetime_datetime_isoformat_impl.exit

.thread.i:                                        ; preds = %.preheader.4.i, %.preheader.2.i, %.preheader.1.i, %bb.aa, %bb.z, %.preheader.preheader.i
  %.136.i = phi i64 [ %.32.i, %bb.z ], [ 3, %bb.aa ], [ 4, %.preheader.4.i ], [ 2, %.preheader.2.i ], [ 1, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  %.02635.i = phi i32 [ %i.bg, %bb.z ], [ %i.bn, %bb.aa ], [ %i.bg, %.preheader.4.i ], [ %i.bg, %.preheader.2.i ], [ %i.bg, %.preheader.1.i ], [ %i.bg, %.preheader.preheader.i ]
  %i.by = getelementptr [16 x i8], ptr @datetime_datetime_isoformat_impl.specs, i64 %.136.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  %i.cb = load i8, ptr %i.at, align 1, !tbaa !35
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = getelementptr i8, ptr %0, i64 26
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !35
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  %i.ci = getelementptr i8, ptr %0, i64 27
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr i8, ptr %0, i64 28
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr i8, ptr %0, i64 29
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !35
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr i8, ptr %0, i64 30
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = zext i8 %i.cs to i32
  %i.cu = getelementptr i8, ptr %0, i64 31
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35
  %i.cw = zext i8 %i.cv to i32
  %i.cx = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef %i.ca, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %.1, i32 noundef %i.cq, i32 noundef %i.ct, i32 noundef %i.cw, i32 noundef %.02635.i) #16 ; 6 uses
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %datetime_datetime_isoformat_impl.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread.i
  %i.cy = getelementptr i8, ptr %0, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !57
  %.not31.i = icmp eq i8 %i.cz, 0
  br i1 %.not31.i, label %datetime_datetime_isoformat_impl.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr i8, ptr %0, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !51
  %i.dc = call fastcc i32 @format_utcoffset(ptr noundef %i.a, ptr noundef nonnull @.str.137, ptr noundef %i.db, ptr noundef nonnull %0)
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.de = load i32, ptr %i.cx, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.de, -1
  br i1 %.not.i.i, label %bb.af, label %datetime_datetime_isoformat_impl.exit

bb.af:                                            ; preds = %bb.ae
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.cx, align 8, !tbaa !35
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %datetime_datetime_isoformat_impl.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #16
  br label %datetime_datetime_isoformat_impl.exit

bb.ah:                                            ; preds = %bb.ad
  %i.dh = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.a) #16
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.b, ptr noundef %i.dh) #16
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !43
  br label %datetime_datetime_isoformat_impl.exit

datetime_datetime_isoformat_impl.exit:            ; preds = %bb.ab, %.thread.i, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.027.i = phi ptr [ null, %bb.ab ], [ null, %.thread.i ], [ %i.di, %bb.ah ], [ %i.cx, %bb.ac ], [ null, %bb.ae ], [ null, %bb.af ], [ null, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.u, %bb.c, %datetime_datetime_isoformat_impl.exit, %bb.w, %bb.t, %bb.h, %bb.f
  %.034 = phi ptr [ null, %bb.h ], [ null, %bb.u ], [ null, %bb.w ], [ %.027.i, %datetime_datetime_isoformat_impl.exit ], [ null, %bb.t ], [ null, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_tzname(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !57
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %call_tzname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %i.f, label %call_tzname.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %i.e, ptr %i.a, align 16, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !43
  %i.h = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.i = icmp eq ptr %i.h, null
  %i.j = icmp eq ptr %i.h, @_Py_NoneStruct
  %or.cond.i = or i1 %i.i, %i.j
  br i1 %or.cond.i, label %call_tzname.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val17.i = load ptr, ptr %i.k, align 8, !tbaa !44 ; 2 uses
  %i.l = getelementptr i8, ptr %.val17.i, i64 168
  %.val18.i = load i64, ptr %i.l, align 8, !tbaa !81
  %i.m = and i64 %.val18.i, 268435456
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %call_tzname.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %.val17.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.149, ptr noundef %i.p) #16 ; 0 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %call_tzname.exit

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.h, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %call_tzname.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #16
  br label %call_tzname.exit

call_tzname.exit:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @_Py_NoneStruct, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_replace(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [9 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2                         ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 27
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 28
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = zext i8 %i.q to i32                      ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 29
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32                      ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 30
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  %i.x = zext i8 %i.w to i32                      ; 6 uses
  %i.y = getelementptr i8, ptr %0, i64 31
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32                     ; 7 uses
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 16
  %i.af = getelementptr i8, ptr %0, i64 33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = or disjoint i32 %i.ai, %i.ae
  %i.ak = getelementptr i8, ptr %0, i64 34
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 8 uses
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !57
  %.not121 = icmp eq i8 %i.ap, 0
  br i1 %.not121, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.as = phi ptr [ %i.ar, %bb.d ], [ @_Py_NoneStruct, %bb.c ] ; 9 uses
  %i.at = getelementptr i8, ptr %0, i64 35
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %i.av = zext i8 %i.au to i32                    ; 9 uses
  %i.aw = icmp ult i64 %2, 9
  %i.ax = icmp ne ptr %1, null
  %i.ay = and i1 %i.ax, %i.aw
  %or.cond5 = and i1 %i.ay, %.not
  br i1 %or.cond5, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_replace._parser, i32 noundef 0, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not122 = icmp eq ptr %i.az, null
  br i1 %.not122, label %datetime_datetime_replace_impl.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ba = phi ptr [ %i.az, %bb.f ], [ %1, %bb.e ] ; 9 uses
  %.not123 = icmp eq i64 %i.d, 0
  br i1 %.not123, label %.thread151, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %.not124 = icmp eq ptr %i.bb, null
  br i1 %.not124, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bb) #16 ; 3 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = call ptr @PyErr_Occurred() #16
  %.not125 = icmp eq ptr %i.be, null
  br i1 %.not125, label %bb.j, label %datetime_datetime_replace_impl.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = add i64 %i.d, -1                        ; 2 uses
  %.not126 = icmp eq i64 %i.bf, 0
  br i1 %.not126, label %.thread151, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.089 = phi i64 [ %i.bf, %bb.j ], [ %i.d, %bb.g ] ; 2 uses
  %.087 = phi i32 [ %i.bc, %bb.j ], [ %i.l, %bb.g ] ; 9 uses
  %i.bg = getelementptr i8, ptr %i.ba, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %.not127 = icmp eq ptr %i.bh, null
  br i1 %.not127, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bh) #16 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = call ptr @PyErr_Occurred() #16
  %.not128 = icmp eq ptr %i.bk, null
  br i1 %.not128, label %bb.n, label %datetime_datetime_replace_impl.exit
end_hunk_1
