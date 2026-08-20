inline.NumInlined: 54
inline.NumDeleted: 26
begin_hunk_0_@time_ctime:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.a) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parse_time_t_args.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp eq ptr %i.d, @_Py_NoneStruct
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @time(ptr noundef null) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = call i32 @_PyTime_ObjectToTime_t(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 0) #11
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %parse_time_t_args.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !24
  br label %bb.e

parse_time_t_args.exit.thread:                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %.03 = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.j = call i32 @_PyTime_localtime(i64 noundef %.03, ptr noundef nonnull %2) #11
  %.not2 = icmp eq i32 %i.j, 0
  br i1 %.not2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr @_asctime.wday_name, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr @_asctime.mon_name, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36
  %i.y = load i32, ptr %2, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %i.ab = add i32 %i.aa, 1900
  %i.ac = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.47, ptr noundef %i.n, ptr noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.ab) #11
  br label %bb.g

bb.g:                                             ; preds = %parse_time_t_args.exit.thread, %bb.e, %bb.f
  %.0 = phi ptr [ null, %parse_time_t_args.exit.thread ], [ %i.ac, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_mktime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = call fastcc i32 @gettmarg(ptr noundef %.val, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.49)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 -1, ptr %i.c, align 8, !tbaa !30
  %i.d = call i64 @mktime(ptr noundef nonnull %2) #11 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = load i32, ptr %i.c, align 8
  %i.g = icmp eq i32 %i.f, -1
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.50) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = sitofp i64 %i.d to double
  %i.j = call ptr @PyFloat_FromDouble(double noundef %i.i) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.j, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_strftime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.tm, align 8                 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i64 @time(ptr noundef null) #11
  %i.g = call i32 @_PyTime_localtime(i64 noundef %i.f, ptr noundef nonnull %2) #11
  %.not68 = icmp eq i32 %i.g, 0
  br i1 %.not68, label %bb.f, label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.i = call fastcc i32 @gettmarg(ptr noundef %.val, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull @.str.52)
  %.not66 = icmp eq i32 %i.i, 0
  br i1 %.not66, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call fastcc i32 @checktm(ptr noundef %2)
  %.not67 = icmp eq i32 %i.j, 0
  br i1 %.not67, label %bb.an, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.m = icmp slt i32 %i.l, -1
  br i1 %i.m, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp sgt i32 %i.l, 1
  br i1 %i.n, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ 1, %bb.g ]
  store i32 %.sink, ptr %i.k, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val72 = load i64, ptr %i.p, align 8, !tbaa !40 ; 18 uses
  %i.q = icmp ugt i64 %.val72, 2305843009213693950
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @PyErr_NoMemory() #11           ; 0 uses
  br label %bb.an

bb.j:                                             ; preds = %bb.h
  %i.s = shl nuw nsw i64 %.val72, 2
  %i.t = add nuw nsw i64 %i.s, 4
  %i.u = call ptr @PyMem_Malloc(i64 noundef %i.t) #11 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = call ptr @PyErr_NoMemory() #11           ; 0 uses
  br label %bb.an

bb.l:                                             ; preds = %bb.j
  %i.x = call ptr @PyUnicodeWriter_Create(i64 noundef 0) #11 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread116, label %.preheader121

.preheader121:                                    ; preds = %bb.l, %PyUnicode_READ_CHAR.exit94._crit_edge
  %.0103 = phi ptr [ %.1104, %PyUnicode_READ_CHAR.exit94._crit_edge ], [ null, %bb.l ] ; 4 uses
  %.0100 = phi i64 [ %.1101, %PyUnicode_READ_CHAR.exit94._crit_edge ], [ 1024, %bb.l ] ; 3 uses
  %.0 = phi i64 [ %.2.lcssa, %PyUnicode_READ_CHAR.exit94._crit_edge ], [ 0, %bb.l ] ; 3 uses
  %i.z = icmp slt i64 %.0, %.val72
  br i1 %i.z, label %.preheader, label %bb.am

.preheader:                                       ; preds = %.preheader121
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !25  ; 6 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = getelementptr i8, ptr %i.aa, i64 56     ; 3 uses
  %i.ad = sub i64 %.val72, %.0                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.w
  %.1134 = phi i64 [ %.0, %.preheader ], [ %i.aw, %bb.w ] ; 6 uses
  %.051133 = phi i64 [ 0, %.preheader ], [ %i.au, %bb.w ] ; 4 uses
  %i.ae = load i32, ptr %i.ab, align 8            ; 5 uses
  %i.af = lshr i32 %i.ae, 2
  %i.ag = and i32 %i.af, 7
  %i.ah = and i32 %i.ae, 32
  %.not.i19.i = icmp eq i32 %i.ah, 0              ; 3 uses
  switch i32 %i.ag, label %bb.t [
    i32 1, label %bb.n
    i32 2, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = and i32 %i.ae, 64
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.aa, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.p:                                             ; preds = %bb.n
  %.val4.i.i = load ptr, ptr %i.ac, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.p, %bb.o
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.o ], [ %.val4.i.i, %bb.p ]
  %i.aj = getelementptr i8, ptr %.0.i.i, i64 %.1134
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = zext i8 %i.ak to i32
  br label %PyUnicode_READ_CHAR.exit

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = and i32 %i.ae, 64
  %.not.i.i12.i = icmp eq i32 %i.am, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.aa, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.s:                                             ; preds = %bb.q
  %.val4.i16.i = load ptr, ptr %i.ac, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.s, %bb.r
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.r ], [ %.val4.i16.i, %bb.s ]
  %i.an = getelementptr [2 x i8], ptr %.0.i15.i, i64 %.1134
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !43
  %i.ap = zext i16 %i.ao to i32
  br label %PyUnicode_READ_CHAR.exit

bb.t:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = and i32 %i.ae, 64
  %.not.i.i20.i = icmp eq i32 %i.aq, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.aa, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.v:                                             ; preds = %bb.t
  %.val4.i24.i = load ptr, ptr %i.ac, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.v, %bb.u
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.u ], [ %.val4.i24.i, %bb.v ]
  %i.ar = getelementptr [4 x i8], ptr %.0.i23.i, i64 %.1134
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.al, %_PyUnicode_DATA.exit.i ], [ %i.ap, %_PyUnicode_DATA.exit17.i ], [ %i.as, %_PyUnicode_DATA.exit25.i ] ; 2 uses
  %i.at = add i32 %.0.i, -128
  %or.cond = icmp ult i32 %i.at, -127
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.au = add nuw i64 %.051133, 1                 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.u, i64 %.051133
  store i32 %.0.i, ptr %i.av, align 4, !tbaa !7
  %i.aw = add nsw i64 %.1134, 1
  %exitcond.not = icmp eq i64 %i.au, %i.ad
  br i1 %exitcond.not, label %bb.y, label %bb.m, !llvm.loop !45

bb.x:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %.not69 = icmp eq i64 %.051133, 0
  br i1 %.not69, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1.lcssa202 = phi i64 [ %.1134, %bb.x ], [ %.val72, %bb.w ]
  %.051.lcssa201 = phi i64 [ %.051133, %bb.x ], [ %i.ad, %bb.w ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.u, i64 %.051.lcssa201
  store i32 0, ptr %i.ax, align 4, !tbaa !7
  %i.ay = icmp ugt i64 %.0100, 2305843009213693951
  br i1 %i.ay, label %.thread116.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.az = shl i64 %.051.lcssa201, 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i
  %.3106 = phi ptr [ %.0103, %.lr.ph.i ], [ %i.bb, %bb.ab ]
  %.2102 = phi i64 [ %.0100, %.lr.ph.i ], [ %i.bg, %bb.ab ] ; 6 uses
  %i.ba = shl nuw nsw i64 %.2102, 2
  %i.bb = call ptr @PyMem_Realloc(ptr noundef %.3106, i64 noundef %i.ba) #11 ; 8 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread116.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = call i64 @wcsftime(ptr noundef nonnull %i.bb, i64 noundef %.2102, ptr noundef nonnull %i.u, ptr noundef nonnull %2) #11 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = icmp ult i64 %.2102, %i.az
  %or.cond120 = and i1 %i.be, %i.bf
  br i1 %or.cond120, label %bb.ab, label %time_strftime1.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bg = shl nuw nsw i64 %.2102, 1
  %i.bh = icmp ugt i64 %.2102, 1152921504606846975
  br i1 %i.bh, label %.thread116.sink.split, label %bb.z

time_strftime1.exit:                              ; preds = %bb.aa
  %i.bi = call ptr @PyUnicode_FromWideChar(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #11 ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.thread116, label %bb.ac

bb.ac:                                            ; preds = %time_strftime1.exit
  %i.bk = call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.x, ptr noundef nonnull %i.bi) #11
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = load i32, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bi, align 8, !tbaa !23
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ac, %bb.ad, %bb.ae
  br i1 %i.bl, label %.thread116, label %Py_DECREF.exit._crit_edge

Py_DECREF.exit._crit_edge:                        ; preds = %Py_DECREF.exit
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit._crit_edge, %bb.x
  %.1.lcssa203 = phi i64 [ %.1134, %bb.x ], [ %.1.lcssa202, %Py_DECREF.exit._crit_edge ] ; 9 uses
  %.pre = phi ptr [ %i.aa, %bb.x ], [ %.pre.pre, %Py_DECREF.exit._crit_edge ] ; 4 uses
  %.1104 = phi ptr [ %.0103, %bb.x ], [ %i.bb, %Py_DECREF.exit._crit_edge ] ; 2 uses
  %.1101 = phi i64 [ %.0100, %bb.x ], [ %.2102, %Py_DECREF.exit._crit_edge ]
  %i.bp = icmp slt i64 %.1.lcssa203, %.val72
  br i1 %i.bp, label %.lr.ph, label %PyUnicode_READ_CHAR.exit94._crit_edge

.lr.ph:                                           ; preds = %bb.af
  %i.bq = getelementptr i8, ptr %.pre, i64 32
  %i.br = load i32, ptr %i.bq, align 8            ; 3 uses
  %i.bs = lshr i32 %i.br, 2
  %i.bt = and i32 %i.bs, 7
  %i.bu = and i32 %i.br, 32
  %.not.i19.i74 = icmp eq i32 %i.bu, 0            ; 3 uses
  %i.bv = and i32 %i.br, 64
  %.not.i.i12.i75 = icmp eq i32 %i.bv, 0
  %.0.v.i.i13.i76 = select i1 %.not.i.i12.i75, i64 56, i64 40
  %.0.i.i14.i77 = getelementptr i8, ptr %.pre, i64 %.0.v.i.i13.i76 ; 3 uses
  %i.bw = getelementptr i8, ptr %.pre, i64 56     ; 3 uses
  switch i32 %i.bt, label %.lr.ph.split [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us138
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i19.i74, label %.lr.ph.split.us.split.us, label %_PyUnicode_DATA.exit.i85.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %.val4.i.i87.us.us = load ptr, ptr %i.bw, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i85.us.us

_PyUnicode_DATA.exit.i85.us.us:                   ; preds = %bb.ag, %.lr.ph.split.us.split.us
  %.2135.us.us = phi i64 [ %.1.lcssa203, %.lr.ph.split.us.split.us ], [ %i.ca, %bb.ag ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.val4.i.i87.us.us, i64 %.2135.us.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  %i.bz = icmp eq i8 %i.by, 37
  br i1 %i.bz, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %_PyUnicode_DATA.exit.i85.us.us
  %i.ca = add i64 %.2135.us.us, 1                 ; 2 uses
  %exitcond179.not = icmp eq i64 %i.ca, %.val72
  br i1 %exitcond179.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit.i85.us.us, !llvm.loop !47

_PyUnicode_DATA.exit.i85.us:                      ; preds = %.lr.ph.split.us, %bb.ah
  %.2135.us = phi i64 [ %i.ce, %bb.ah ], [ %.1.lcssa203, %.lr.ph.split.us ] ; 3 uses
  %i.cb = getelementptr i8, ptr %.0.i.i14.i77, i64 %.2135.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %i.cd = icmp eq i8 %i.cc, 37
  br i1 %i.cd, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %_PyUnicode_DATA.exit.i85.us
  %i.ce = add i64 %.2135.us, 1                    ; 2 uses
  %exitcond178.not = icmp eq i64 %i.ce, %.val72
  br i1 %exitcond178.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit.i85.us, !llvm.loop !47

.lr.ph.split.us138:                               ; preds = %.lr.ph
  br i1 %.not.i19.i74, label %.lr.ph.split.us138.split.us, label %_PyUnicode_DATA.exit17.i78.us

.lr.ph.split.us138.split.us:                      ; preds = %.lr.ph.split.us138
  %.val4.i16.i81.us.us = load ptr, ptr %i.bw, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit17.i78.us.us

_PyUnicode_DATA.exit17.i78.us.us:                 ; preds = %bb.ai, %.lr.ph.split.us138.split.us
  %.2135.us139.us = phi i64 [ %.1.lcssa203, %.lr.ph.split.us138.split.us ], [ %i.ci, %bb.ai ] ; 3 uses
  %i.cf = getelementptr [2 x i8], ptr %.val4.i16.i81.us.us, i64 %.2135.us139.us
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !43
  %i.ch = icmp eq i16 %i.cg, 37
  br i1 %i.ch, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %_PyUnicode_DATA.exit17.i78.us.us
  %i.ci = add i64 %.2135.us139.us, 1              ; 2 uses
  %exitcond177.not = icmp eq i64 %i.ci, %.val72
  br i1 %exitcond177.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit17.i78.us.us, !llvm.loop !47

_PyUnicode_DATA.exit17.i78.us:                    ; preds = %.lr.ph.split.us138, %bb.aj
  %.2135.us139 = phi i64 [ %i.cm, %bb.aj ], [ %.1.lcssa203, %.lr.ph.split.us138 ] ; 3 uses
  %i.cj = getelementptr [2 x i8], ptr %.0.i.i14.i77, i64 %.2135.us139
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !43
  %i.cl = icmp eq i16 %i.ck, 37
  br i1 %i.cl, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit17.i78.us
  %i.cm = add i64 %.2135.us139, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.cm, %.val72
  br i1 %exitcond176.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit17.i78.us, !llvm.loop !47

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i19.i74, label %.lr.ph.split.split.us, label %_PyUnicode_DATA.exit25.i91

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.val4.i24.i93.us = load ptr, ptr %i.bw, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit25.i91.us

_PyUnicode_DATA.exit25.i91.us:                    ; preds = %bb.ak, %.lr.ph.split.split.us
  %.2135.us146 = phi i64 [ %.1.lcssa203, %.lr.ph.split.split.us ], [ %i.cq, %bb.ak ] ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %.val4.i24.i93.us, i64 %.2135.us146
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = icmp eq i32 %i.co, 37
  br i1 %i.cp, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.ak

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit25.i91.us
  %i.cq = add i64 %.2135.us146, 1                 ; 2 uses
  %exitcond181.not = icmp eq i64 %i.cq, %.val72
  br i1 %exitcond181.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit25.i91.us, !llvm.loop !47

_PyUnicode_DATA.exit25.i91:                       ; preds = %.lr.ph.split, %bb.al
  %.2135 = phi i64 [ %i.cu, %bb.al ], [ %.1.lcssa203, %.lr.ph.split ] ; 3 uses
  %i.cr = getelementptr [4 x i8], ptr %.0.i.i14.i77, i64 %.2135
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = icmp eq i32 %i.cs, 37
  br i1 %i.ct, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %bb.al

bb.al:                                            ; preds = %_PyUnicode_DATA.exit25.i91
  %i.cu = add i64 %.2135, 1                       ; 2 uses
  %exitcond180.not = icmp eq i64 %i.cu, %.val72
  br i1 %exitcond180.not, label %PyUnicode_READ_CHAR.exit94._crit_edge, label %_PyUnicode_DATA.exit25.i91, !llvm.loop !47

PyUnicode_READ_CHAR.exit94._crit_edge:            ; preds = %bb.aj, %_PyUnicode_DATA.exit17.i78.us, %bb.ai, %_PyUnicode_DATA.exit17.i78.us.us, %bb.ah, %_PyUnicode_DATA.exit.i85.us, %bb.ag, %_PyUnicode_DATA.exit.i85.us.us, %bb.al, %_PyUnicode_DATA.exit25.i91, %bb.ak, %_PyUnicode_DATA.exit25.i91.us, %bb.af
  %.2.lcssa = phi i64 [ %.1.lcssa203, %bb.af ], [ %.2135.us139.us, %_PyUnicode_DATA.exit17.i78.us.us ], [ %.2135.us, %_PyUnicode_DATA.exit.i85.us ], [ %.2135.us.us, %_PyUnicode_DATA.exit.i85.us.us ], [ %.2135.us146, %_PyUnicode_DATA.exit25.i91.us ], [ %.2135, %_PyUnicode_DATA.exit25.i91 ], [ %.val72, %bb.ak ], [ %.val72, %bb.al ], [ %.val72, %bb.ag ], [ %.val72, %bb.ah ], [ %.val72, %bb.ai ], [ %.val72, %bb.aj ], [ %.2135.us139, %_PyUnicode_DATA.exit17.i78.us ] ; 2 uses
  %i.cv = call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.x, ptr noundef %.pre, i64 noundef %.1.lcssa203, i64 noundef %.2.lcssa) #11
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.thread116, label %.preheader121

bb.am:                                            ; preds = %.preheader121
  call void @PyMem_Free(ptr noundef %.0103) #11
  call void @PyMem_Free(ptr noundef nonnull %i.u) #11
  %i.cx = call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.x) #11
  br label %bb.an

.thread116.sink.split:                            ; preds = %bb.y, %bb.z, %bb.ab
  %.2105.ph = phi ptr [ %i.bb, %bb.ab ], [ null, %bb.z ], [ %.0103, %bb.y ]
  %i.cy = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %.thread116

.thread116:                                       ; preds = %Py_DECREF.exit, %time_strftime1.exit, %PyUnicode_READ_CHAR.exit94._crit_edge, %.thread116.sink.split, %bb.l
  %.2105 = phi ptr [ null, %bb.l ], [ %.2105.ph, %.thread116.sink.split ], [ %i.bb, %time_strftime1.exit ], [ %.1104, %PyUnicode_READ_CHAR.exit94._crit_edge ], [ %i.bb, %Py_DECREF.exit ]
  call void @PyMem_Free(ptr noundef %.2105) #11
  call void @PyMem_Free(ptr noundef nonnull %i.u) #11
  call void @PyUnicodeWriter_Discard(ptr noundef %i.x) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.i, %bb.k, %bb.c, %bb.e, %bb.d, %.thread116, %bb.am, %bb.a
  %.458 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.thread116 ], [ %i.cx, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.458
}

; Function Attrs: nounwind uwtable
define internal ptr @time_strptime(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyObject_Call(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null) #11 ; 3 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_tzset(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str) #11 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit7, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @tzset() #11
  %i.c = tail call fastcc i32 @init_timezone(ptr noundef nonnull %i.a)
  %i.d = icmp slt i32 %i.c, 0
  %i.e = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i6 = icmp sgt i32 %i.e, -1                ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i6, label %bb.d, label %Py_DECREF.exit7

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit7

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_DECREF.exit7

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i6, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.g, %bb.h
  %i.j = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.j, null
  %_Py_NoneStruct. = select i1 %.not, ptr @_Py_NoneStruct, ptr null
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %bb.e, %bb.d, %bb.c, %Py_DECREF.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %_Py_NoneStruct., %Py_DECREF.exit ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_monotonic(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i32 @PyTime_Monotonic(ptr noundef nonnull %i.a) #11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !24
  %i.e = call double @PyTime_AsSecondsDouble(i64 noundef %i.d) #11
  %i.f = call ptr @PyFloat_FromDouble(double noundef %i.e) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_monotonic_ns(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i32 @PyTime_Monotonic(ptr noundef nonnull %i.a) #11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !24
  %i.e = call ptr @PyLong_FromInt64(i64 noundef %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_process_time(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = call fastcc i32 @py_process_time(ptr noundef %.val, ptr noundef %i.a, ptr noundef null)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !24
  %i.f = call double @PyTime_AsSecondsDouble(i64 noundef %i.e) #11
  %i.g = call ptr @PyFloat_FromDouble(double noundef %i.f) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_process_time_ns(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = call fastcc i32 @py_process_time(ptr noundef %.val, ptr noundef %i.a, ptr noundef null)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !24
  %i.f = call ptr @PyLong_FromInt64(i64 noundef %i.e) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_thread_time(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_0
