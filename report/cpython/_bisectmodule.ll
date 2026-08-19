inline.NumInlined: 26
inline.NumDeleted: 11
begin_hunk_0_@_bisect_insort_left:bb.a
  br i1 %i.au, label %_bisect_insort_left_impl.exit, label %Py_DECREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.av = call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %i.m, ptr noundef %i.aw, ptr noundef nonnull @.str.15, i64 noundef %.028.i, ptr noundef %i.o) #4 ; 4 uses
  %.not34.i = icmp eq ptr %i.ax, null
  br i1 %.not34.i, label %_bisect_insort_left_impl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.w, label %Py_DECREF.exit.i

bb.w:                                             ; preds = %bb.v
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !13
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br label %_bisect_insort_left_impl.exit

_bisect_insort_left_impl.exit:                    ; preds = %.thread72, %Py_DECREF.exit.thread, %Py_DECREF.exit.i, %bb.u, %bb.t, %Py_DECREF.exit36.i, %bb.o, %bb.d, %bb.m
  %.046 = phi ptr [ null, %bb.d ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.o ], [ null, %Py_DECREF.exit36.i ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ], [ null, %bb.u ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @internal_bisect_right(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PySequence_Size(ptr noundef %0) #4 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi i64 [ %i.b, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 3 uses
  %i.e = getelementptr i8, ptr %.val110, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i111 = icmp eq ptr %i.f, null
  br i1 %.not.i111, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %.not14.i = icmp eq ptr %i.h, null
  br i1 %.not14.i, label %bb.e, label %get_sq_item.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %.val110, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %bb.g, label %get_sq_item.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %get_sq_item.exit.thread

get_sq_item.exit.thread:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @.str.14, %bb.g ], [ @.str.13, %bb.f ]
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %.val110, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull %.0.i, ptr noundef %i.o) #4 ; 0 uses
  br label %Py_XDECREF.exit

get_sq_item.exit:                                 ; preds = %bb.d
  %i.q = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.12) #4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %get_sq_item.exit
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.s = icmp slt i64 %2, %.058
  br i1 %i.s, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.h
  %i.t = getelementptr i8, ptr %.val, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %.not84 = icmp eq ptr %4, @_Py_NoneStruct       ; 2 uses
  %.fr = freeze ptr %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %Py_DECREF.exit
  %.045.ph164 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.3, %Py_DECREF.exit ] ; 6 uses
  %.048.ph163 = phi ptr [ %.fr, %.lr.ph.lr.ph ], [ %.351, %Py_DECREF.exit ] ; 6 uses
  %.159.ph162 = phi i64 [ %.058, %.lr.ph.lr.ph ], [ %.4, %Py_DECREF.exit ] ; 6 uses
  %.not85 = icmp eq ptr %.048.ph163, null
  br i1 %.not85, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = add i64 %.045.ph164, %.159.ph162
  %i.w = lshr i64 %i.v, 1                         ; 5 uses
  %i.x = tail call ptr %i.h(ptr noundef %0, i64 noundef %i.w) #4 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit102, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  br i1 %.not84, label %Py_DECREF.exit102.thread.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @PyObject_CallOneArg(ptr noundef %4, ptr noundef nonnull %i.x) #4 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %Py_DECREF.exit98.thread121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !13  ; 2 uses
  %.not.i101.us = icmp sgt i32 %i.ab, -1
  br i1 %.not.i101.us, label %bb.l, label %Py_DECREF.exit102.thread.us

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.x, align 8, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %Py_DECREF.exit102.thread.us

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #4
  br label %Py_DECREF.exit102.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph, %Py_DECREF.exit98
  %.045156 = phi i64 [ %.146, %Py_DECREF.exit98 ], [ %.045.ph164, %.lr.ph ] ; 9 uses
  %.159155 = phi i64 [ %.260, %Py_DECREF.exit98 ], [ %.159.ph162, %.lr.ph ] ; 7 uses
  %i.ae = add i64 %.045156, %.159155
  %i.af = lshr i64 %i.ae, 1                       ; 10 uses
  %i.ag = tail call ptr %i.h(ptr noundef %0, i64 noundef %i.af) #4 ; 7 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %Py_DECREF.exit102, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  br i1 %.not84, label %Py_DECREF.exit102.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @PyObject_CallOneArg(ptr noundef %4, ptr noundef nonnull %i.ag) #4 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %Py_DECREF.exit98.thread121, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %.not.i101 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i101, label %bb.q, label %Py_DECREF.exit102.thread

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.r, label %Py_DECREF.exit102.thread

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #4
  br label %Py_DECREF.exit102.thread

Py_DECREF.exit102.thread:                         ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.173 = phi ptr [ %i.ag, %bb.n ], [ %i.ai, %bb.p ], [ %i.ai, %bb.q ], [ %i.ai, %bb.r ] ; 15 uses
  %i.an = getelementptr i8, ptr %.173, i64 8
  %.173.val = load ptr, ptr %i.an, align 8, !tbaa !20
  %.not132 = icmp eq ptr %.173.val, %.val
  br i1 %.not132, label %bb.s, label %Py_DECREF.exit102.thread.us

bb.s:                                             ; preds = %Py_DECREF.exit102.thread
  %i.ao = tail call ptr %.048.ph163(ptr noundef %1, ptr noundef nonnull %.173, i32 noundef 0) #4 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, @_Py_TrueStruct
  br i1 %i.ap, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i99 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i99, label %bb.u, label %Py_DECREF.exit100

bb.u:                                             ; preds = %bb.t
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr @_Py_TrueStruct, align 8, !tbaa !13
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %Py_DECREF.exit100

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_TrueStruct) #4
  br label %Py_DECREF.exit100

Py_DECREF.exit100:                                ; preds = %bb.t, %bb.u, %bb.v
  %i.at = load i32, ptr %.173, align 8, !tbaa !13 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.at, -1
  br i1 %.not.i97, label %bb.w, label %Py_DECREF.exit98, !llvm.loop !37

bb.w:                                             ; preds = %Py_DECREF.exit100
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.173, align 8, !tbaa !13
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.x, label %Py_DECREF.exit98, !llvm.loop !37

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173) #4
  br label %Py_DECREF.exit98, !llvm.loop !37

bb.y:                                             ; preds = %bb.s
  %i.aw = icmp eq ptr %i.ao, @_Py_FalseStruct
  br i1 %i.aw, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ax = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i95, label %bb.aa, label %Py_DECREF.exit96

bb.aa:                                            ; preds = %bb.z
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr @_Py_FalseStruct, align 8, !tbaa !13
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.ab, label %Py_DECREF.exit96

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_FalseStruct) #4
  br label %Py_DECREF.exit96

Py_DECREF.exit96:                                 ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ba = load i32, ptr %.173, align 8, !tbaa !13 ; 2 uses
  %.not.i93 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i93, label %bb.ac, label %Py_DECREF.exit94

bb.ac:                                            ; preds = %Py_DECREF.exit96
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.173, align 8, !tbaa !13
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ad, label %Py_DECREF.exit94

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173) #4
  br label %Py_DECREF.exit94

Py_DECREF.exit94:                                 ; preds = %Py_DECREF.exit96, %bb.ac, %bb.ad
  %i.bd = add nuw i64 %i.af, 1
  br label %Py_DECREF.exit98, !llvm.loop !37

bb.ae:                                            ; preds = %bb.y
  %i.be = icmp eq ptr %i.ao, null
  br i1 %i.be, label %Py_DECREF.exit98.thread121, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bf = icmp eq ptr %i.ao, @_Py_NotImplementedStruct
  br i1 %i.bf, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bg = load i32, ptr @_Py_NotImplementedStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i91 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i91, label %bb.ah, label %Py_DECREF.exit92

bb.ah:                                            ; preds = %bb.ag
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr @_Py_NotImplementedStruct, align 8, !tbaa !13
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ai, label %Py_DECREF.exit92

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NotImplementedStruct) #4
  br label %Py_DECREF.exit92

Py_DECREF.exit92:                                 ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bj = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef nonnull %.173, i32 noundef 0) #4
  br label %Py_DECREF.exit98.thread

bb.aj:                                            ; preds = %bb.af
  %i.bk = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ao) #4 ; 3 uses
  %i.bl = load i32, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %.not.i89 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i89, label %bb.ak, label %Py_DECREF.exit98.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.ao, align 8, !tbaa !13
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.al, label %Py_DECREF.exit98.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #4
  br label %Py_DECREF.exit98.thread

Py_DECREF.exit98:                                 ; preds = %bb.x, %bb.w, %Py_DECREF.exit100, %Py_DECREF.exit94
  %.260 = phi i64 [ %i.af, %bb.w ], [ %.159155, %Py_DECREF.exit94 ], [ %i.af, %Py_DECREF.exit100 ], [ %i.af, %bb.x ] ; 2 uses
  %.146 = phi i64 [ %.045156, %bb.w ], [ %i.bd, %Py_DECREF.exit94 ], [ %.045156, %Py_DECREF.exit100 ], [ %.045156, %bb.x ] ; 3 uses
  %i.bo = icmp slt i64 %.146, %.260
  br i1 %i.bo, label %.lr.ph.split, label %.outer._crit_edge

Py_DECREF.exit102.thread.us:                      ; preds = %Py_DECREF.exit102.thread, %bb.i, %bb.k, %bb.l, %bb.m
  %.us-phi158 = phi ptr [ %i.z, %bb.m ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %.173, %Py_DECREF.exit102.thread ] ; 2 uses
  %.us-phi159 = phi i64 [ %i.w, %bb.m ], [ %i.w, %bb.i ], [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %i.af, %Py_DECREF.exit102.thread ]
  %.us-phi160 = phi i64 [ %.159.ph162, %bb.m ], [ %.159.ph162, %bb.i ], [ %.159.ph162, %bb.k ], [ %.159.ph162, %bb.l ], [ %.159155, %Py_DECREF.exit102.thread ]
  %.us-phi161 = phi i64 [ %.045.ph164, %bb.m ], [ %.045.ph164, %bb.i ], [ %.045.ph164, %bb.k ], [ %.045.ph164, %bb.l ], [ %.045156, %Py_DECREF.exit102.thread ]
  %i.bp = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef nonnull %.us-phi158, i32 noundef 0) #4
  br label %Py_DECREF.exit98.thread

Py_DECREF.exit98.thread:                          ; preds = %bb.al, %bb.ak, %bb.aj, %Py_DECREF.exit92, %Py_DECREF.exit102.thread.us
  %.173152 = phi ptr [ %.us-phi158, %Py_DECREF.exit102.thread.us ], [ %.173, %bb.al ], [ %.173, %bb.ak ], [ %.173, %bb.aj ], [ %.173, %Py_DECREF.exit92 ] ; 4 uses
  %i.bq = phi i64 [ %.us-phi159, %Py_DECREF.exit102.thread.us ], [ %i.af, %bb.al ], [ %i.af, %bb.ak ], [ %i.af, %bb.aj ], [ %i.af, %Py_DECREF.exit92 ] ; 2 uses
  %.159143 = phi i64 [ %.us-phi160, %Py_DECREF.exit102.thread.us ], [ %.159155, %bb.al ], [ %.159155, %bb.ak ], [ %.159155, %bb.aj ], [ %.159155, %Py_DECREF.exit92 ]
  %.045138 = phi i64 [ %.us-phi161, %Py_DECREF.exit102.thread.us ], [ %.045156, %bb.al ], [ %.045156, %bb.ak ], [ %.045156, %bb.aj ], [ %.045156, %Py_DECREF.exit92 ]
  %.357 = phi i32 [ %i.bp, %Py_DECREF.exit102.thread.us ], [ %i.bk, %bb.al ], [ %i.bk, %bb.ak ], [ %i.bk, %bb.aj ], [ %i.bj, %Py_DECREF.exit92 ] ; 2 uses
  %.351 = phi ptr [ %.048.ph163, %Py_DECREF.exit102.thread.us ], [ %.048.ph163, %bb.al ], [ %.048.ph163, %bb.ak ], [ %.048.ph163, %bb.aj ], [ null, %Py_DECREF.exit92 ]
  %i.br = icmp slt i32 %.357, 0
  br i1 %i.br, label %Py_DECREF.exit98.thread121, label %bb.am

bb.am:                                            ; preds = %Py_DECREF.exit98.thread
  %i.bs = load i32, ptr %.173152, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i, label %bb.an, label %Py_DECREF.exit

bb.an:                                            ; preds = %bb.am
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %.173152, align 8, !tbaa !13
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173152) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.am, %bb.an, %bb.ao
  %.not87 = icmp eq i32 %.357, 0                  ; 2 uses
  %i.bv = add nuw i64 %i.bq, 1
  %.4 = select i1 %.not87, i64 %.159143, i64 %i.bq ; 2 uses
  %.3 = select i1 %.not87, i64 %i.bv, i64 %.045138 ; 3 uses
  %i.bw = icmp slt i64 %.3, %.4
  br i1 %i.bw, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !37

.outer._crit_edge:                                ; preds = %Py_DECREF.exit, %Py_DECREF.exit98, %bb.h
  %.045.lcssa = phi i64 [ %.146, %Py_DECREF.exit98 ], [ %2, %bb.h ], [ %.3, %Py_DECREF.exit ]
  tail call void @Py_LeaveRecursiveCall() #4
  br label %Py_XDECREF.exit

Py_DECREF.exit102:                                ; preds = %.lr.ph.split.us, %.lr.ph.split
  tail call void @Py_LeaveRecursiveCall() #4
  br label %Py_XDECREF.exit

Py_DECREF.exit98.thread121:                       ; preds = %bb.ae, %Py_DECREF.exit98.thread, %bb.j, %bb.o
  %.274.ph = phi ptr [ %i.ag, %bb.o ], [ %i.x, %bb.j ], [ %.173152, %Py_DECREF.exit98.thread ], [ %.173, %bb.ae ] ; 3 uses
  tail call void @Py_LeaveRecursiveCall() #4
  %i.bx = load i32, ptr %.274.ph, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i.i, label %bb.ap, label %Py_XDECREF.exit

bb.ap:                                            ; preds = %Py_DECREF.exit98.thread121
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %.274.ph, align 8, !tbaa !13
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aq, label %Py_XDECREF.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.274.ph) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aq, %bb.ap, %Py_DECREF.exit98.thread121, %Py_DECREF.exit102, %get_sq_item.exit.thread, %get_sq_item.exit, %.outer._crit_edge, %bb.b
  %.2 = phi i64 [ -1, %bb.b ], [ -1, %get_sq_item.exit ], [ -1, %get_sq_item.exit.thread ], [ %.045.lcssa, %.outer._crit_edge ], [ -1, %Py_DECREF.exit102 ], [ -1, %Py_DECREF.exit98.thread121 ], [ -1, %bb.ap ], [ -1, %bb.aq ]
  ret i64 %.2
}

declare i64 @PySequence_Size(ptr noundef) local_unnamed_addr #1

declare i32 @Py_EnterRecursiveCall(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare void @Py_LeaveRecursiveCall() local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyList_Insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @internal_bisect_left(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PySequence_Size(ptr noundef %0) #4 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi i64 [ %i.b, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !20 ; 3 uses
  %i.e = getelementptr i8, ptr %.val110, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i111 = icmp eq ptr %i.f, null
  br i1 %.not.i111, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %.not14.i = icmp eq ptr %i.h, null
  br i1 %.not14.i, label %bb.e, label %get_sq_item.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %.val110, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %bb.g, label %get_sq_item.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %get_sq_item.exit.thread

get_sq_item.exit.thread:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @.str.14, %bb.g ], [ @.str.13, %bb.f ]
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %.val110, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull %.0.i, ptr noundef %i.o) #4 ; 0 uses
  br label %Py_XDECREF.exit

get_sq_item.exit:                                 ; preds = %bb.d
  %i.q = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.16) #4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %get_sq_item.exit
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.s = icmp slt i64 %2, %.058
  br i1 %i.s, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.h
  %i.t = getelementptr i8, ptr %.val, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %.not84 = icmp eq ptr %4, @_Py_NoneStruct       ; 2 uses
  %.fr = freeze ptr %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %Py_DECREF.exit
  %.045.ph164 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.3, %Py_DECREF.exit ] ; 6 uses
  %.048.ph163 = phi ptr [ %.fr, %.lr.ph.lr.ph ], [ %.351, %Py_DECREF.exit ] ; 6 uses
  %.159.ph162 = phi i64 [ %.058, %.lr.ph.lr.ph ], [ %.4, %Py_DECREF.exit ] ; 6 uses
  %.not85 = icmp eq ptr %.048.ph163, null
  br i1 %.not85, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = add i64 %.045.ph164, %.159.ph162
  %i.w = lshr i64 %i.v, 1                         ; 5 uses
  %i.x = tail call ptr %i.h(ptr noundef %0, i64 noundef %i.w) #4 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit102, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  br i1 %.not84, label %Py_DECREF.exit102.thread.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @PyObject_CallOneArg(ptr noundef %4, ptr noundef nonnull %i.x) #4 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %Py_DECREF.exit94.thread121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !13  ; 2 uses
  %.not.i101.us = icmp sgt i32 %i.ab, -1
  br i1 %.not.i101.us, label %bb.l, label %Py_DECREF.exit102.thread.us

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.x, align 8, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %Py_DECREF.exit102.thread.us

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #4
  br label %Py_DECREF.exit102.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph, %Py_DECREF.exit94
  %.045156 = phi i64 [ %.146, %Py_DECREF.exit94 ], [ %.045.ph164, %.lr.ph ] ; 9 uses
  %.159155 = phi i64 [ %.260, %Py_DECREF.exit94 ], [ %.159.ph162, %.lr.ph ] ; 7 uses
  %i.ae = add i64 %.045156, %.159155
  %i.af = lshr i64 %i.ae, 1                       ; 10 uses
  %i.ag = tail call ptr %i.h(ptr noundef %0, i64 noundef %i.af) #4 ; 7 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %Py_DECREF.exit102, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  br i1 %.not84, label %Py_DECREF.exit102.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @PyObject_CallOneArg(ptr noundef %4, ptr noundef nonnull %i.ag) #4 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %Py_DECREF.exit94.thread121, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %.not.i101 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i101, label %bb.q, label %Py_DECREF.exit102.thread

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.r, label %Py_DECREF.exit102.thread

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #4
  br label %Py_DECREF.exit102.thread

Py_DECREF.exit102.thread:                         ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.173 = phi ptr [ %i.ag, %bb.n ], [ %i.ai, %bb.p ], [ %i.ai, %bb.q ], [ %i.ai, %bb.r ] ; 15 uses
  %i.an = getelementptr i8, ptr %.173, i64 8
  %.173.val = load ptr, ptr %i.an, align 8, !tbaa !20
  %.not132 = icmp eq ptr %.173.val, %.val
  br i1 %.not132, label %bb.s, label %Py_DECREF.exit102.thread.us

bb.s:                                             ; preds = %Py_DECREF.exit102.thread
  %i.ao = tail call ptr %.048.ph163(ptr noundef nonnull %.173, ptr noundef %1, i32 noundef 0) #4 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, @_Py_TrueStruct
  br i1 %i.ap, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.aq = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i99 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i99, label %bb.u, label %Py_DECREF.exit100

bb.u:                                             ; preds = %bb.t
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr @_Py_TrueStruct, align 8, !tbaa !13
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %Py_DECREF.exit100

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_TrueStruct) #4
  br label %Py_DECREF.exit100

Py_DECREF.exit100:                                ; preds = %bb.t, %bb.u, %bb.v
  %i.at = load i32, ptr %.173, align 8, !tbaa !13 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.at, -1
  br i1 %.not.i97, label %bb.w, label %Py_DECREF.exit98

bb.w:                                             ; preds = %Py_DECREF.exit100
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.173, align 8, !tbaa !13
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.x, label %Py_DECREF.exit98

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173) #4
  br label %Py_DECREF.exit98

Py_DECREF.exit98:                                 ; preds = %Py_DECREF.exit100, %bb.w, %bb.x
  %i.aw = add nuw i64 %i.af, 1
  br label %Py_DECREF.exit94, !llvm.loop !39

bb.y:                                             ; preds = %bb.s
  %i.ax = icmp eq ptr %i.ao, @_Py_FalseStruct
  br i1 %i.ax, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ay = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.ay, -1
  br i1 %.not.i95, label %bb.aa, label %Py_DECREF.exit96

bb.aa:                                            ; preds = %bb.z
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr @_Py_FalseStruct, align 8, !tbaa !13
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ab, label %Py_DECREF.exit96

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_FalseStruct) #4
  br label %Py_DECREF.exit96

Py_DECREF.exit96:                                 ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bb = load i32, ptr %.173, align 8, !tbaa !13 ; 2 uses
  %.not.i93 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i93, label %bb.ac, label %Py_DECREF.exit94, !llvm.loop !39

bb.ac:                                            ; preds = %Py_DECREF.exit96
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %.173, align 8, !tbaa !13
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ad, label %Py_DECREF.exit94, !llvm.loop !39

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173) #4
  br label %Py_DECREF.exit94, !llvm.loop !39

bb.ae:                                            ; preds = %bb.y
  %i.be = icmp eq ptr %i.ao, null
  br i1 %i.be, label %Py_DECREF.exit94.thread121, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bf = icmp eq ptr %i.ao, @_Py_NotImplementedStruct
  br i1 %i.bf, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bg = load i32, ptr @_Py_NotImplementedStruct, align 8, !tbaa !13 ; 2 uses
  %.not.i91 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i91, label %bb.ah, label %Py_DECREF.exit92

bb.ah:                                            ; preds = %bb.ag
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr @_Py_NotImplementedStruct, align 8, !tbaa !13
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ai, label %Py_DECREF.exit92

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NotImplementedStruct) #4
  br label %Py_DECREF.exit92

Py_DECREF.exit92:                                 ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bj = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %.173, ptr noundef %1, i32 noundef 0) #4
  br label %Py_DECREF.exit94.thread

bb.aj:                                            ; preds = %bb.af
  %i.bk = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ao) #4 ; 3 uses
  %i.bl = load i32, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %.not.i89 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i89, label %bb.ak, label %Py_DECREF.exit94.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.ao, align 8, !tbaa !13
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.al, label %Py_DECREF.exit94.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #4
  br label %Py_DECREF.exit94.thread

Py_DECREF.exit94:                                 ; preds = %bb.ad, %bb.ac, %Py_DECREF.exit96, %Py_DECREF.exit98
  %.260 = phi i64 [ %.159155, %Py_DECREF.exit98 ], [ %i.af, %bb.ac ], [ %i.af, %Py_DECREF.exit96 ], [ %i.af, %bb.ad ] ; 2 uses
  %.146 = phi i64 [ %i.aw, %Py_DECREF.exit98 ], [ %.045156, %bb.ac ], [ %.045156, %Py_DECREF.exit96 ], [ %.045156, %bb.ad ] ; 3 uses
  %i.bo = icmp slt i64 %.146, %.260
  br i1 %i.bo, label %.lr.ph.split, label %.outer._crit_edge

Py_DECREF.exit102.thread.us:                      ; preds = %Py_DECREF.exit102.thread, %bb.i, %bb.k, %bb.l, %bb.m
  %.us-phi158 = phi ptr [ %i.z, %bb.m ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %.173, %Py_DECREF.exit102.thread ] ; 2 uses
  %.us-phi159 = phi i64 [ %i.w, %bb.m ], [ %i.w, %bb.i ], [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %i.af, %Py_DECREF.exit102.thread ]
  %.us-phi160 = phi i64 [ %.159.ph162, %bb.m ], [ %.159.ph162, %bb.i ], [ %.159.ph162, %bb.k ], [ %.159.ph162, %bb.l ], [ %.159155, %Py_DECREF.exit102.thread ]
  %.us-phi161 = phi i64 [ %.045.ph164, %bb.m ], [ %.045.ph164, %bb.i ], [ %.045.ph164, %bb.k ], [ %.045.ph164, %bb.l ], [ %.045156, %Py_DECREF.exit102.thread ]
  %i.bp = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %.us-phi158, ptr noundef %1, i32 noundef 0) #4
  br label %Py_DECREF.exit94.thread

Py_DECREF.exit94.thread:                          ; preds = %bb.al, %bb.ak, %bb.aj, %Py_DECREF.exit92, %Py_DECREF.exit102.thread.us
  %.173152 = phi ptr [ %.us-phi158, %Py_DECREF.exit102.thread.us ], [ %.173, %bb.al ], [ %.173, %bb.ak ], [ %.173, %bb.aj ], [ %.173, %Py_DECREF.exit92 ] ; 4 uses
  %i.bq = phi i64 [ %.us-phi159, %Py_DECREF.exit102.thread.us ], [ %i.af, %bb.al ], [ %i.af, %bb.ak ], [ %i.af, %bb.aj ], [ %i.af, %Py_DECREF.exit92 ] ; 2 uses
  %.159143 = phi i64 [ %.us-phi160, %Py_DECREF.exit102.thread.us ], [ %.159155, %bb.al ], [ %.159155, %bb.ak ], [ %.159155, %bb.aj ], [ %.159155, %Py_DECREF.exit92 ]
  %.045138 = phi i64 [ %.us-phi161, %Py_DECREF.exit102.thread.us ], [ %.045156, %bb.al ], [ %.045156, %bb.ak ], [ %.045156, %bb.aj ], [ %.045156, %Py_DECREF.exit92 ]
  %.357 = phi i32 [ %i.bp, %Py_DECREF.exit102.thread.us ], [ %i.bk, %bb.al ], [ %i.bk, %bb.ak ], [ %i.bk, %bb.aj ], [ %i.bj, %Py_DECREF.exit92 ] ; 2 uses
  %.351 = phi ptr [ %.048.ph163, %Py_DECREF.exit102.thread.us ], [ %.048.ph163, %bb.al ], [ %.048.ph163, %bb.ak ], [ %.048.ph163, %bb.aj ], [ null, %Py_DECREF.exit92 ]
  %i.br = icmp slt i32 %.357, 0
  br i1 %i.br, label %Py_DECREF.exit94.thread121, label %bb.am

bb.am:                                            ; preds = %Py_DECREF.exit94.thread
  %i.bs = load i32, ptr %.173152, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i, label %bb.an, label %Py_DECREF.exit

bb.an:                                            ; preds = %bb.am
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %.173152, align 8, !tbaa !13
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.173152) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.am, %bb.an, %bb.ao
  %.not87 = icmp eq i32 %.357, 0                  ; 2 uses
  %i.bv = add nuw i64 %i.bq, 1
  %.4 = select i1 %.not87, i64 %i.bq, i64 %.159143 ; 2 uses
  %.3 = select i1 %.not87, i64 %.045138, i64 %i.bv ; 3 uses
  %i.bw = icmp slt i64 %.3, %.4
  br i1 %i.bw, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !39

.outer._crit_edge:                                ; preds = %Py_DECREF.exit, %Py_DECREF.exit94, %bb.h
  %.045.lcssa = phi i64 [ %.146, %Py_DECREF.exit94 ], [ %2, %bb.h ], [ %.3, %Py_DECREF.exit ]
  tail call void @Py_LeaveRecursiveCall() #4
  br label %Py_XDECREF.exit

Py_DECREF.exit102:                                ; preds = %.lr.ph.split.us, %.lr.ph.split
  tail call void @Py_LeaveRecursiveCall() #4
  br label %Py_XDECREF.exit

Py_DECREF.exit94.thread121:                       ; preds = %bb.ae, %Py_DECREF.exit94.thread, %bb.j, %bb.o
  %.274.ph = phi ptr [ %i.ag, %bb.o ], [ %i.x, %bb.j ], [ %.173152, %Py_DECREF.exit94.thread ], [ %.173, %bb.ae ] ; 3 uses
  tail call void @Py_LeaveRecursiveCall() #4
  %i.bx = load i32, ptr %.274.ph, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i.i, label %bb.ap, label %Py_XDECREF.exit

bb.ap:                                            ; preds = %Py_DECREF.exit94.thread121
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %.274.ph, align 8, !tbaa !13
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aq, label %Py_XDECREF.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.274.ph) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aq, %bb.ap, %Py_DECREF.exit94.thread121, %Py_DECREF.exit102, %get_sq_item.exit.thread, %get_sq_item.exit, %.outer._crit_edge, %bb.b
  %.2 = phi i64 [ -1, %bb.b ], [ -1, %get_sq_item.exit ], [ -1, %get_sq_item.exit.thread ], [ %.045.lcssa, %.outer._crit_edge ], [ -1, %Py_DECREF.exit102 ], [ -1, %Py_DECREF.exit94.thread121 ], [ -1, %bb.ap ], [ -1, %bb.aq ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @bisect_modexec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.b = tail call ptr @PyUnicode_InternFromString(ptr noundef nonnull @.str.18) #4 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp eq ptr %i.b, null
  %. = sext i1 %i.c to i32
  ret i32 %.
}

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS7_object", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !18, i64 16}
!15 = !{!"PyVarObject", !16, i64 0, !18, i64 16}
!16 = !{!"_object", !8, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS11_typeobject", !12, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!16, !17, i64 8}
!21 = !{!22, !11, i64 0}
!22 = !{!"", !11, i64 0}
!23 = !{!24, !12, i64 104}
!24 = !{!"_typeobject", !15, i64 0, !25, i64 24, !18, i64 32, !18, i64 40, !12, i64 48, !18, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !18, i64 168, !25, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !18, i64 208, !12, i64 216, !12, i64 224, !26, i64 232, !27, i64 240, !28, i64 248, !17, i64 256, !11, i64 264, !12, i64 272, !12, i64 280, !18, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !12, i64 360, !11, i64 368, !12, i64 376, !7, i64 384, !12, i64 392, !12, i64 400, !8, i64 408, !29, i64 410}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = !{!"p1 _ZTS11PyMethodDef", !12, i64 0}
!27 = !{!"p1 _ZTS11PyMemberDef", !12, i64 0}
!28 = !{!"p1 _ZTS11PyGetSetDef", !12, i64 0}
!29 = !{!"short", !8, i64 0}
!30 = !{!31, !12, i64 24}
!31 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!32 = !{!24, !12, i64 112}
!33 = !{!34, !12, i64 8}
!34 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!35 = !{!24, !25, i64 24}
!36 = !{!24, !12, i64 200}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
end_hunk_0
