inline.NumInlined: 130
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Py_make_parameters:bb.a
  %i.cq = add nuw nsw i64 %.0811.i.i130, 1        ; 2 uses
  %exitcond.not.i.i131 = icmp eq i64 %i.cq, %.172176
  br i1 %exitcond.not.i.i131, label %.loopexit.i126, label %.lr.ph.i.i129, !llvm.loop !28

.loopexit.i126:                                   ; preds = %bb.ar, %.lr.ph
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, -1073741825
  br i1 %i.cs, label %_Py_NewRef.exit.i127, label %bb.as

bb.as:                                            ; preds = %.loopexit.i126
  %i.ct = add nuw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.ck, align 8, !tbaa !27
  br label %_Py_NewRef.exit.i127

_Py_NewRef.exit.i127:                             ; preds = %bb.as, %.loopexit.i126
  %i.cu = getelementptr [8 x i8], ptr %i.cl, i64 %.172176
  store ptr %i.ck, ptr %i.cu, align 8, !tbaa !26
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !26
  %.pre189 = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %tuple_add.exit132

tuple_add.exit132:                                ; preds = %.lr.ph.i.i129, %_Py_NewRef.exit.i127
  %i.cv = phi ptr [ %.pre189, %_Py_NewRef.exit.i127 ], [ %i.cg, %.lr.ph.i.i129 ]
  %i.cw = phi ptr [ %.pre, %_Py_NewRef.exit.i127 ], [ %i.ch, %.lr.ph.i.i129 ] ; 2 uses
  %.0.i128 = phi i64 [ 1, %_Py_NewRef.exit.i127 ], [ 0, %.lr.ph.i.i129 ]
  %i.cx = add i64 %.0.i128, %.172176              ; 2 uses
  %i.cy = add nuw nsw i64 %.053177, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %.val111
  br i1 %exitcond.not, label %Py_XDECREF.exit125, label %.lr.ph, !llvm.loop !30

Py_XDECREF.exit125:                               ; preds = %tuple_add.exit132, %bb.aq
  %.pr149 = phi ptr [ %.pr149.pre, %bb.aq ], [ %i.cw, %tuple_add.exit132 ] ; 2 uses
  %.374.ph = phi i64 [ %.071179, %bb.aq ], [ %i.cx, %tuple_add.exit132 ] ; 2 uses
  %.not.i133 = icmp eq ptr %.pr149, null
  br i1 %.not.i133, label %Py_XDECREF.exit125.thread150, label %Py_XDECREF.exit125.thread

Py_XDECREF.exit125.thread:                        ; preds = %.thread, %Py_XDECREF.exit125
  %.364.ph226 = phi i64 [ %.162, %Py_XDECREF.exit125 ], [ %.061183, %.thread ] ; 3 uses
  %.374.ph225 = phi i64 [ %.374.ph, %Py_XDECREF.exit125 ], [ %.071179, %.thread ] ; 3 uses
  %.pr149224 = phi ptr [ %.pr149, %Py_XDECREF.exit125 ], [ %i.bj, %.thread ] ; 3 uses
  %i.cz = load i32, ptr %.pr149224, align 8, !tbaa !27 ; 2 uses
  %.not.i.i134 = icmp sgt i32 %i.cz, -1
  br i1 %.not.i.i134, label %bb.at, label %Py_XDECREF.exit125.thread150

bb.at:                                            ; preds = %Py_XDECREF.exit125.thread
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %.pr149224, align 8, !tbaa !27
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.au, label %Py_XDECREF.exit125.thread150

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.pr149224) #8
  br label %Py_XDECREF.exit125.thread150

Py_XDECREF.exit119.thread.sink.split:             ; preds = %bb.ap, %bb.ag, %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %.055) #8
  br label %Py_XDECREF.exit119.thread

Py_XDECREF.exit119.thread:                        ; preds = %Py_XDECREF.exit119.thread.sink.split, %Py_DECREF.exit97, %bb.x, %bb.y, %Py_DECREF.exit95, %bb.af, %bb.ag, %Py_DECREF.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit125.thread150:                     ; preds = %bb.aa, %Py_XDECREF.exit125, %Py_XDECREF.exit125.thread, %bb.at, %bb.au
  %.475 = phi i64 [ %.374.ph, %Py_XDECREF.exit125 ], [ %.374.ph225, %Py_XDECREF.exit125.thread ], [ %.374.ph225, %bb.at ], [ %.374.ph225, %bb.au ], [ %.071179, %bb.aa ]
  %.465 = phi i64 [ %.162, %Py_XDECREF.exit125 ], [ %.364.ph226, %Py_XDECREF.exit125.thread ], [ %.364.ph226, %bb.at ], [ %.364.ph226, %bb.au ], [ %.061183, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %Py_XDECREF.exit116

Py_XDECREF.exit116:                               ; preds = %bb.h, %tuple_add.exit, %Py_XDECREF.exit125.thread150
  %.778 = phi i64 [ %.071179, %bb.h ], [ %i.an, %tuple_add.exit ], [ %.475, %Py_XDECREF.exit125.thread150 ] ; 3 uses
  %.768 = phi i64 [ %.061183, %bb.h ], [ %.061183, %tuple_add.exit ], [ %.465, %Py_XDECREF.exit125.thread150 ] ; 2 uses
  %i.dc = add nuw nsw i64 %.070180, 1             ; 2 uses
  %exitcond187.not = icmp eq i64 %i.dc, %.054.val
  br i1 %exitcond187.not, label %._crit_edge, label %bb.h, !llvm.loop !31

._crit_edge:                                      ; preds = %Py_XDECREF.exit116
  %i.dd = icmp slt i64 %.778, %.768
  br i1 %i.dd, label %bb.av, label %._crit_edge.thread

bb.av:                                            ; preds = %._crit_edge
  %i.de = call i32 @_PyTuple_Resize(ptr noundef nonnull %i.a, i64 noundef %.778) #8
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.aw, label %._crit_edge.thread

bb.aw:                                            ; preds = %bb.av
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %.not.i136 = icmp eq ptr %i.dg, null
  br i1 %.not.i136, label %Py_XDECREF.exit138, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !27 ; 2 uses
  %.not.i.i137 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i.i137, label %bb.ay, label %Py_XDECREF.exit138

bb.ay:                                            ; preds = %bb.ax
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !27
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.az, label %Py_XDECREF.exit138

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.dg) #8
  br label %Py_XDECREF.exit138

Py_XDECREF.exit138:                               ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.not.i139 = icmp eq ptr %.055, null
  br i1 %.not.i139, label %Py_XDECREF.exit, label %bb.ba

bb.ba:                                            ; preds = %Py_XDECREF.exit138
  %i.dk = load i32, ptr %.055, align 8, !tbaa !27 ; 2 uses
  %.not.i.i140 = icmp sgt i32 %i.dk, -1
  br i1 %.not.i.i140, label %bb.bb, label %Py_XDECREF.exit

bb.bb:                                            ; preds = %bb.ba
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %.055, align 8, !tbaa !27
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.bc, label %Py_XDECREF.exit

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %.055) #8
  br label %Py_XDECREF.exit

._crit_edge.thread:                               ; preds = %.preheader, %bb.av, %._crit_edge
  %.not.i142 = icmp eq ptr %.055, null
  br i1 %.not.i142, label %Py_XDECREF.exit144, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.thread
  %i.dn = load i32, ptr %.055, align 8, !tbaa !27 ; 2 uses
  %.not.i.i143 = icmp sgt i32 %i.dn, -1
  br i1 %.not.i.i143, label %bb.be, label %Py_XDECREF.exit144

bb.be:                                            ; preds = %bb.bd
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %.055, align 8, !tbaa !27
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.bf, label %Py_XDECREF.exit144

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %.055) #8
  br label %Py_XDECREF.exit144

Py_XDECREF.exit144:                               ; preds = %._crit_edge.thread, %bb.bd, %bb.be, %bb.bf
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.o, %Py_DECREF.exit99, %bb.m, %bb.n, %Py_XDECREF.exit119.thread, %bb.bc, %bb.bb, %bb.ba, %Py_XDECREF.exit138, %bb.g, %bb.f, %bb.e, %bb.d, %Py_XDECREF.exit144
  %.9 = phi ptr [ null, %bb.bc ], [ null, %bb.g ], [ %i.dq, %Py_XDECREF.exit144 ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %Py_XDECREF.exit138 ], [ null, %bb.ba ], [ null, %bb.bb ], [ null, %Py_XDECREF.exit119.thread ], [ null, %bb.n ], [ null, %bb.m ], [ null, %Py_DECREF.exit99 ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.b, %Py_XDECREF.exit
  %.10 = phi ptr [ %.9, %Py_XDECREF.exit ], [ null, %bb.b ]
  ret ptr %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PySequence_Tuple(ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !27
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @PyObject_HasAttrWithError(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyTuple_Resize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_subs_parameters(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 14 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = getelementptr i8, ptr %2, i64 16
  %.val229 = load i64, ptr %i.h, align 8, !tbaa !25 ; 7 uses
  %i.i = icmp eq i64 %.val229, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str, ptr noundef %0) #8
  br label %Py_DECREF.exit183

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8, !tbaa !26
  %i.l = tail call ptr @PyList_New(i64 noundef 0) #8, !inline_history !32 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_unpack_args.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %3, i64 8
  %.val55.i = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr i8, ptr %.val55.i, i64 168
  %.val57.i = load i64, ptr %i.o, align 8, !tbaa !15
  %i.p = and i64 %.val57.i, 67108864
  %.not.i231 = icmp eq i64 %i.p, 0
  br i1 %.not.i231, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %3, i64 16
  %.val60.i = load i64, ptr %i.q, align 8, !tbaa !25 ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 32
  %.not3981.i = icmp sgt i64 %.val60.i, 0
  br i1 %.not3981.i, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.c, %bb.d ]
  %i.t = phi i64 [ %.val60.i, %bb.e ], [ 1, %bb.d ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Py_DECREF.exit47.thread78.i, %.lr.ph.preheader.i
  %.02382.i = phi i64 [ %i.bw, %Py_DECREF.exit47.thread78.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %.02382.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 7 uses
  store ptr %i.v, ptr %i.c, align 8, !tbaa !26
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val61.i = load ptr, ptr %i.w, align 8, !tbaa !11 ; 3 uses
  %i.x = getelementptr i8, ptr %.val61.i, i64 168
  %.val61.val.i = load i64, ptr %i.x, align 8, !tbaa !15
  %i.y = and i64 %.val61.val.i, 2147483648
  %.not80.i = icmp eq i64 %i.y, 0
  br i1 %.not80.i, label %bb.f, label %Py_DECREF.exit47.i

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not.i7.i.i = icmp eq ptr %.val61.i, @Py_GenericAliasType
  br i1 %.not.i7.i.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.f
  %i.z = call i32 @PyType_IsSubtype(ptr noundef %.val61.i, ptr noundef nonnull @Py_GenericAliasType) #8, !inline_history !33
  %.not9.i.i = icmp eq i32 %i.z, 0
  br i1 %.not9.i.i, label %bb.j, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.f
  %i.aa = getelementptr i8, ptr %i.v, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !34, !range !37, !noundef !38
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.ad = getelementptr i8, ptr %i.v, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp eq ptr %i.ae, @PyTuple_Type
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.v, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %_unpacked_tuple_args.exit.thread69.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !27
  br label %_unpacked_tuple_args.exit.thread69.i

bb.j:                                             ; preds = %bb.g, %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.i.i
  %i.al = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.v, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71168), ptr noundef nonnull %i.b) #8, !inline_history !41
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %_unpacked_tuple_args.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.ao = icmp eq ptr %i.an, @_Py_NoneStruct
  br i1 %i.ao, label %bb.l, label %_unpacked_tuple_args.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i.i.i, label %bb.m, label %_unpacked_tuple_args.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr @_Py_NoneStruct, align 8, !tbaa !27
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %_unpacked_tuple_args.exit.thread.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #8, !inline_history !41
  br label %_unpacked_tuple_args.exit.thread.i

_unpacked_tuple_args.exit.thread.i:               ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %Py_XDECREF.exit.i

_unpacked_tuple_args.exit.thread69.i:             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.o

_unpacked_tuple_args.exit.i:                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not35.i = icmp eq ptr %i.an, null
  br i1 %.not35.i, label %Py_XDECREF.exit.i, label %bb.o

bb.o:                                             ; preds = %_unpacked_tuple_args.exit.i, %_unpacked_tuple_args.exit.thread69.i
  %.0.i72.i = phi ptr [ %i.ah, %_unpacked_tuple_args.exit.thread69.i ], [ %i.an, %_unpacked_tuple_args.exit.i ] ; 12 uses
  %i.as = getelementptr i8, ptr %.0.i72.i, i64 8
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !11
  %i.at = getelementptr i8, ptr %.val.i, i64 168
  %.val56.i = load i64, ptr %i.at, align 8, !tbaa !15
  %i.au = and i64 %.val56.i, 67108864
  %.not36.i = icmp eq i64 %i.au, 0
  br i1 %.not36.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr i8, ptr %.0.i72.i, i64 16
  %.val59.i = load i64, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %.not37.i = icmp eq i64 %.val59.i, 0
  br i1 %.not37.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %.0.i72.i, i64 24
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.val59.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = icmp eq ptr %i.ay, @_Py_EllipsisObject
  br i1 %i.az, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ba = call i32 @PyList_SetSlice(ptr noundef nonnull %i.l, i64 noundef 9223372036854775807, i64 noundef 9223372036854775807, ptr noundef nonnull %.0.i72.i) #8, !inline_history !32
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = load i32, ptr %.0.i72.i, align 8, !tbaa !27 ; 3 uses
  %.not.i48.i = icmp sgt i32 %i.bc, -1            ; 2 uses
  br i1 %i.bb, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i48.i, label %bb.t, label %Py_DECREF.exit49.i

bb.t:                                             ; preds = %bb.s
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.0.i72.i, align 8, !tbaa !27
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %Py_DECREF.exit49.i

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i72.i) #8, !inline_history !32
  br label %Py_DECREF.exit49.i

Py_DECREF.exit49.i:                               ; preds = %bb.u, %bb.t, %bb.s
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not.i46.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i46.i, label %bb.v, label %_unpack_args.exit

bb.v:                                             ; preds = %Py_DECREF.exit49.i
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.l, align 8, !tbaa !27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %Py_DECREF.exit41.sink.split.i, label %_unpack_args.exit

bb.w:                                             ; preds = %bb.r
  br i1 %.not.i48.i, label %bb.x, label %Py_DECREF.exit47.thread78.i

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bi, ptr %.0.i72.i, align 8, !tbaa !27
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %Py_DECREF.exit47.thread78.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i72.i) #8, !inline_history !32
  br label %Py_DECREF.exit47.thread78.i

bb.z:                                             ; preds = %bb.q, %bb.o
  %i.bk = load i32, ptr %.0.i72.i, align 8, !tbaa !27 ; 2 uses
  %.not.i.i63.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i63.i, label %bb.aa, label %Py_XDECREF.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.0.i72.i, align 8, !tbaa !27
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ab, label %Py_XDECREF.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i72.i) #8, !inline_history !32
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ab, %bb.aa, %bb.z, %_unpacked_tuple_args.exit.i, %_unpacked_tuple_args.exit.thread.i
  %i.bn = call ptr @PyErr_Occurred() #8, !inline_history !32
  %.not38.i = icmp eq ptr %i.bn, null
  br i1 %.not38.i, label %Py_DECREF.exit47.i, label %bb.ac

bb.ac:                                            ; preds = %Py_XDECREF.exit.i
  %i.bo = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i42.i, label %bb.ad, label %_unpack_args.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.l, align 8, !tbaa !27
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit41.sink.split.i, label %_unpack_args.exit

Py_DECREF.exit47.i:                               ; preds = %Py_XDECREF.exit.i, %.lr.ph.i
  %i.br = call i32 @PyList_Append(ptr noundef nonnull %i.l, ptr noundef nonnull %i.v) #8, !inline_history !32
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.ae, label %Py_DECREF.exit47.thread78.i

bb.ae:                                            ; preds = %Py_DECREF.exit47.i
  %i.bt = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.bt, -1
  br i1 %.not.i40.i, label %bb.af, label %_unpack_args.exit

bb.af:                                            ; preds = %bb.ae
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.l, align 8, !tbaa !27
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %Py_DECREF.exit41.sink.split.i, label %_unpack_args.exit

Py_DECREF.exit47.thread78.i:                      ; preds = %Py_DECREF.exit47.i, %bb.y, %bb.x, %bb.w
  %i.bw = add nuw nsw i64 %.02382.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bw, %i.t
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !42

.critedge.i:                                      ; preds = %Py_DECREF.exit47.thread78.i, %bb.e
  %i.bx = call ptr @PySequence_Tuple(ptr noundef nonnull %i.l) #8, !inline_history !32 ; 3 uses
  %i.by = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i.i, label %bb.ag, label %_unpack_args.exit

bb.ag:                                            ; preds = %.critedge.i
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.l, align 8, !tbaa !27
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %Py_DECREF.exit41.sink.split.i, label %_unpack_args.exit

Py_DECREF.exit41.sink.split.i:                    ; preds = %bb.ag, %bb.af, %bb.ad, %bb.v
  %.6.ph.i = phi ptr [ null, %bb.v ], [ null, %bb.af ], [ null, %bb.ad ], [ %i.bx, %bb.ag ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8, !inline_history !32
  br label %_unpack_args.exit
end_hunk_0
begin_hunk_1_@_Py_subs_parameters:bb.a
  br i1 %i.ci, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  call void @_Py_Dealloc(ptr noundef nonnull %.0110279282) #8
  br label %.critedge

bb.al:                                            ; preds = %bb.ah
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !26  ; 3 uses
  %i.ck = icmp ne ptr %i.cj, null
  %i.cl = icmp ne ptr %i.cj, @_Py_NoneStruct
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.cm = getelementptr i8, ptr %.0110279282, i64 8
  %.val219 = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.cn = getelementptr i8, ptr %.val219, i64 168
  %.val226 = load i64, ptr %i.cn, align 8, !tbaa !15
  %i.co = and i64 %.val226, 67108864
  %.not = icmp eq i64 %i.co, 0
  %.str.2..str.1 = select i1 %.not, ptr @.str.2, ptr @.str.1
  %i.cp = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.cj, ptr noundef nonnull %.str.2..str.1, ptr noundef %0, ptr noundef nonnull %.0110279282) #8 ; 2 uses
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !26  ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !27 ; 2 uses
  %.not.i188 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i188, label %bb.an, label %Py_DECREF.exit189

bb.an:                                            ; preds = %bb.am
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !27
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ao, label %Py_DECREF.exit189

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #8
  br label %Py_DECREF.exit189

Py_DECREF.exit189:                                ; preds = %bb.am, %bb.an, %bb.ao
  %i.cu = load i32, ptr %.0110279282, align 8, !tbaa !27 ; 2 uses
  %.not.i186 = icmp sgt i32 %i.cu, -1
  br i1 %.not.i186, label %bb.ap, label %Py_DECREF.exit187

bb.ap:                                            ; preds = %Py_DECREF.exit189
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %.0110279282, align 8, !tbaa !27
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.aq, label %Py_DECREF.exit187

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %.0110279282) #8
  br label %Py_DECREF.exit187

Py_DECREF.exit187:                                ; preds = %Py_DECREF.exit189, %bb.ap, %bb.aq
  %i.cx = icmp eq ptr %i.cp, null
  br i1 %i.cx, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit187, %bb.al
  %.0110278 = phi ptr [ %i.cp, %Py_DECREF.exit187 ], [ %.0110279282, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.cy = add nuw nsw i64 %.0109283, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %.val229
  br i1 %exitcond.not, label %.critedge143, label %bb.ah, !llvm.loop !43

.critedge:                                        ; preds = %Py_DECREF.exit187, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %Py_DECREF.exit183

.critedge143:                                     ; preds = %bb.ar, %_unpack_args.exit
  %i.cz = phi ptr [ %.6.i, %_unpack_args.exit ], [ %.0110278, %bb.ar ] ; 21 uses
  store ptr %i.cz, ptr %i.d, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %.val218 = load ptr, ptr %i.da, align 8, !tbaa !11
  %i.db = getelementptr i8, ptr %.val218, i64 168
  %.val225 = load i64, ptr %i.db, align 8, !tbaa !15
  %i.dc = and i64 %.val225, 67108864
  %.not130 = icmp eq i64 %i.dc, 0                 ; 2 uses
  br i1 %.not130, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge143
  %i.dd = getelementptr i8, ptr %i.cz, i64 16
  %.val228 = load i64, ptr %i.dd, align 8, !tbaa !25
  br label %bb.at

bb.at:                                            ; preds = %.critedge143, %bb.as
  %i.de = phi i64 [ %.val228, %bb.as ], [ 1, %.critedge143 ] ; 3 uses
  %i.df = getelementptr i8, ptr %i.cz, i64 32
  %i.dg = select i1 %.not130, ptr %i.d, ptr %i.df ; 2 uses
  %.not131 = icmp eq i64 %i.de, %.val229
  br i1 %.not131, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dh = load i32, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %.not.i184 = icmp sgt i32 %i.dh, -1
  br i1 %.not.i184, label %bb.av, label %Py_DECREF.exit185

bb.av:                                            ; preds = %bb.au
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.cz, align 8, !tbaa !27
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.aw, label %Py_DECREF.exit185

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #8
  br label %Py_DECREF.exit185

Py_DECREF.exit185:                                ; preds = %bb.au, %bb.av, %bb.aw
  %i.dk = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.dl = icmp sgt i64 %i.de, %.val229
  %i.dm = select i1 %i.dl, ptr @.str.4, ptr @.str.5
  %i.dn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dk, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.dm, ptr noundef %0, i64 noundef %i.de, i64 noundef %.val229) #8
  br label %Py_DECREF.exit183

bb.ax:                                            ; preds = %bb.at
  %i.do = getelementptr i8, ptr %1, i64 8
  %.val217 = load ptr, ptr %i.do, align 8, !tbaa !11
  %i.dp = getelementptr i8, ptr %.val217, i64 168
  %.val224 = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.dq = and i64 %.val224, 33554432
  %.not132 = icmp eq i64 %i.dq, 0
  br i1 %.not132, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dr = call ptr @PySequence_Tuple(ptr noundef nonnull %1) #8 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.dt = load i32, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %.not.i182 = icmp sgt i32 %i.dt, -1
  br i1 %.not.i182, label %bb.ba, label %Py_DECREF.exit183

bb.ba:                                            ; preds = %bb.az
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.cz, align 8, !tbaa !27
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.bb, label %Py_DECREF.exit183

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #8
  br label %Py_DECREF.exit183

bb.bc:                                            ; preds = %bb.ay, %bb.ax
  %.0119 = phi ptr [ %i.dr, %bb.ay ], [ null, %bb.ax ] ; 27 uses
  %.0100 = phi ptr [ %i.dr, %bb.ay ], [ %1, %bb.ax ] ; 2 uses
  %i.dw = getelementptr i8, ptr %.0100, i64 16
  %.0100.val = load i64, ptr %i.dw, align 8, !tbaa !25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.dx = call ptr @PyTuple_New(i64 noundef %.0100.val) #8 ; 2 uses
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !26
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %bb.bc
  %.not141285 = icmp sgt i64 %.0100.val, 0
  br i1 %.not141285, label %.lr.ph289, label %.critedge145

.lr.ph289:                                        ; preds = %.preheader
  %i.dz = getelementptr i8, ptr %.0100, i64 32    ; 2 uses
  %i.ea = getelementptr i8, ptr %2, i64 32
  br label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.eb = load i32, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %.not.i180 = icmp sgt i32 %i.eb, -1
  br i1 %.not.i180, label %bb.be, label %Py_DECREF.exit181

bb.be:                                            ; preds = %bb.bd
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.cz, align 8, !tbaa !27
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.bf, label %Py_DECREF.exit181

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #8
  br label %Py_DECREF.exit181

Py_DECREF.exit181:                                ; preds = %bb.bd, %bb.be, %bb.bf
  %.not.i232 = icmp eq ptr %.0119, null
  br i1 %.not.i232, label %Py_XDECREF.exit, label %bb.bg

bb.bg:                                            ; preds = %Py_DECREF.exit181
  %i.ee = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i233 = icmp sgt i32 %i.ee, -1
  br i1 %.not.i.i233, label %bb.bh, label %Py_XDECREF.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %.0119, align 8, !tbaa !27
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bi, label %Py_XDECREF.exit

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit

bb.bj:                                            ; preds = %.lr.ph289, %Py_XDECREF.exit236.thread258
  %.0112288 = phi i64 [ 0, %.lr.ph289 ], [ %.5117261, %Py_XDECREF.exit236.thread258 ] ; 7 uses
  %.0118286 = phi i64 [ 0, %.lr.ph289 ], [ %i.jj, %Py_XDECREF.exit236.thread258 ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dz, i64 %.0118286
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26 ; 9 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8      ; 2 uses
  %.val230 = load ptr, ptr %i.ej, align 8, !tbaa !11
  %i.ek = getelementptr i8, ptr %.val230, i64 168
  %.val230.val = load i64, ptr %i.ek, align 8, !tbaa !15 ; 2 uses
  %i.el = and i64 %.val230.val, 2147483648
  %.not266 = icmp eq i64 %i.el, 0
  br i1 %.not266, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.en = load i32, ptr %i.ei, align 8, !tbaa !27 ; 2 uses
  %i.eo = icmp ugt i32 %i.en, -1073741825
  br i1 %i.eo, label %_Py_NewRef.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ep = add nuw i32 %i.en, 1
  store i32 %i.ep, ptr %i.ei, align 8, !tbaa !27
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.bk, %bb.bl
  %i.eq = getelementptr i8, ptr %i.em, i64 32
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %.0112288
  store ptr %i.ei, ptr %i.er, align 8, !tbaa !26
  %i.es = add i64 %.0112288, 1
  br label %Py_XDECREF.exit236.thread258

bb.bm:                                            ; preds = %bb.bj
  %i.et = and i64 %.val230.val, 100663296
  %or.cond267 = icmp eq i64 %i.et, 0
  br i1 %or.cond267, label %bb.cj, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eu = call ptr @_Py_subs_parameters(ptr noundef %0, ptr noundef nonnull %i.ei, ptr noundef %2, ptr noundef %i.cz) ; 6 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.ew = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !27 ; 2 uses
  %.not.i178 = icmp sgt i32 %i.ex, -1
  br i1 %.not.i178, label %bb.bp, label %Py_DECREF.exit179

bb.bp:                                            ; preds = %bb.bo
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !27
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bq, label %Py_DECREF.exit179

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.ew) #8
  br label %Py_DECREF.exit179

Py_DECREF.exit179:                                ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.fa = load i32, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %.not.i176 = icmp sgt i32 %i.fa, -1
  br i1 %.not.i176, label %bb.br, label %Py_DECREF.exit177

bb.br:                                            ; preds = %Py_DECREF.exit179
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.cz, align 8, !tbaa !27
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bs, label %Py_DECREF.exit177

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #8
  br label %Py_DECREF.exit177

Py_DECREF.exit177:                                ; preds = %Py_DECREF.exit179, %bb.br, %bb.bs
  %.not.i234 = icmp eq ptr %.0119, null
  br i1 %.not.i234, label %Py_XDECREF.exit, label %bb.bt

bb.bt:                                            ; preds = %Py_DECREF.exit177
  %i.fd = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i235 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i.i235, label %bb.bu, label %Py_XDECREF.exit

bb.bu:                                            ; preds = %bb.bt
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %.0119, align 8, !tbaa !27
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bv, label %Py_XDECREF.exit

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit

bb.bw:                                            ; preds = %bb.bn
  %.val = load ptr, ptr %i.ej, align 8, !tbaa !11
  %i.fg = getelementptr i8, ptr %.val, i64 168
  %.val221 = load i64, ptr %i.fg, align 8, !tbaa !15
  %i.fh = and i64 %.val221, 67108864
  %.not139 = icmp eq i64 %i.fh, 0
  br i1 %.not139, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %Py_XDECREF.exit239

bb.by:                                            ; preds = %bb.bw
  %i.fj = call ptr @PySequence_List(ptr noundef nonnull %i.eu) #8 ; 2 uses
  %i.fk = load i32, ptr %i.eu, align 8, !tbaa !27 ; 2 uses
  %.not.i174 = icmp sgt i32 %i.fk, -1
  br i1 %.not.i174, label %bb.bz, label %Py_DECREF.exit175

bb.bz:                                            ; preds = %bb.by
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.eu, align 8, !tbaa !27
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ca, label %Py_DECREF.exit175

bb.ca:                                            ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #8
  br label %Py_DECREF.exit175

Py_DECREF.exit175:                                ; preds = %bb.by, %bb.bz, %bb.ca
  %.not140 = icmp eq ptr %i.fj, null
  %i.fn = load ptr, ptr %i.f, align 8, !tbaa !26  ; 4 uses
  br i1 %.not140, label %bb.cb, label %Py_XDECREF.exit239

bb.cb:                                            ; preds = %Py_DECREF.exit175
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !27 ; 2 uses
  %.not.i172 = icmp sgt i32 %i.fo, -1
  br i1 %.not.i172, label %bb.cc, label %Py_DECREF.exit173

bb.cc:                                            ; preds = %bb.cb
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !27
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.cd, label %Py_DECREF.exit173

bb.cd:                                            ; preds = %bb.cc
  call void @_Py_Dealloc(ptr noundef nonnull %i.fn) #8
  br label %Py_DECREF.exit173

Py_DECREF.exit173:                                ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.fr = load i32, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %.not.i170 = icmp sgt i32 %i.fr, -1
  br i1 %.not.i170, label %bb.ce, label %Py_DECREF.exit171

bb.ce:                                            ; preds = %Py_DECREF.exit173
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.cz, align 8, !tbaa !27
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.cf, label %Py_DECREF.exit171

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #8
  br label %Py_DECREF.exit171

Py_DECREF.exit171:                                ; preds = %Py_DECREF.exit173, %bb.ce, %bb.cf
  %.not.i237 = icmp eq ptr %.0119, null
  br i1 %.not.i237, label %Py_XDECREF.exit, label %bb.cg

bb.cg:                                            ; preds = %Py_DECREF.exit171
  %i.fu = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i238 = icmp sgt i32 %i.fu, -1
  br i1 %.not.i.i238, label %bb.ch, label %Py_XDECREF.exit

bb.ch:                                            ; preds = %bb.cg
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %.0119, align 8, !tbaa !27
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ci, label %Py_XDECREF.exit

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit239:                               ; preds = %Py_DECREF.exit175, %bb.bx
  %.sink369 = phi ptr [ %i.fi, %bb.bx ], [ %i.fn, %Py_DECREF.exit175 ]
  %.sink = phi ptr [ %i.eu, %bb.bx ], [ %i.fj, %Py_DECREF.exit175 ]
  %i.fx = getelementptr i8, ptr %.sink369, i64 32
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %.0112288
  store ptr %.sink, ptr %i.fy, align 8, !tbaa !26
  %i.fz = add i64 %.0112288, 1
  br label %Py_XDECREF.exit236.thread258

bb.cj:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %4 = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.ei, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70952), ptr noundef nonnull %i.a) #8 ; 2 uses
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %bb.ck, label %_is_unpacked_typevartuple.exit

bb.ck:                                            ; preds = %bb.cj
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.gb = call i32 @PyObject_IsTrue(ptr noundef %i.ga) #8 ; 3 uses
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !27 ; 2 uses
  %.not.i.i241 = icmp sgt i32 %i.gd, -1
  br i1 %.not.i.i241, label %bb.cl, label %_is_unpacked_typevartuple.exit

bb.cl:                                            ; preds = %bb.ck
  %i.ge = add nsw i32 %i.gd, -1                   ; 2 uses
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !27
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.cm, label %_is_unpacked_typevartuple.exit

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.gc) #8
  br label %_is_unpacked_typevartuple.exit

_is_unpacked_typevartuple.exit:                   ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm
  %.04.i = phi i32 [ %i.gb, %bb.cm ], [ %4, %bb.cj ], [ %i.gb, %bb.ck ], [ %i.gb, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gg = icmp slt i32 %.04.i, 0
  br i1 %i.gg, label %bb.cn, label %bb.cv

bb.cn:                                            ; preds = %_is_unpacked_typevartuple.exit
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !27 ; 2 uses
  %.not.i168 = icmp sgt i32 %i.gi, -1
  br i1 %.not.i168, label %bb.co, label %Py_DECREF.exit169

bb.co:                                            ; preds = %bb.cn
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !27
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.cp, label %Py_DECREF.exit169

bb.cp:                                            ; preds = %bb.co
  call void @_Py_Dealloc(ptr noundef nonnull %i.gh) #8
  br label %Py_DECREF.exit169

Py_DECREF.exit169:                                ; preds = %bb.cn, %bb.co, %bb.cp
  %i.gl = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !27 ; 2 uses
  %.not.i166 = icmp sgt i32 %i.gm, -1
  br i1 %.not.i166, label %bb.cq, label %Py_DECREF.exit167

bb.cq:                                            ; preds = %Py_DECREF.exit169
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !27
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.cr, label %Py_DECREF.exit167

bb.cr:                                            ; preds = %bb.cq
  call void @_Py_Dealloc(ptr noundef nonnull %i.gl) #8
  br label %Py_DECREF.exit167

Py_DECREF.exit167:                                ; preds = %Py_DECREF.exit169, %bb.cq, %bb.cr
  %.not.i242 = icmp eq ptr %.0119, null
  br i1 %.not.i242, label %Py_XDECREF.exit, label %bb.cs

bb.cs:                                            ; preds = %Py_DECREF.exit167
  %i.gp = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i243 = icmp sgt i32 %i.gp, -1
  br i1 %.not.i.i243, label %bb.ct, label %Py_XDECREF.exit

bb.ct:                                            ; preds = %bb.cs
  %i.gq = add nsw i32 %i.gp, -1                   ; 2 uses
  store i32 %i.gq, ptr %.0119, align 8, !tbaa !27
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.cu, label %Py_XDECREF.exit

bb.cu:                                            ; preds = %bb.ct
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit

bb.cv:                                            ; preds = %_is_unpacked_typevartuple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.gs = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.ei, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71104), ptr noundef nonnull %i.g) #8
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %bb.cv
  %i.gu = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %.not.i164 = icmp sgt i32 %i.gv, -1
  br i1 %.not.i164, label %bb.cx, label %Py_DECREF.exit165

bb.cx:                                            ; preds = %bb.cw
  %i.gw = add nsw i32 %i.gv, -1                   ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !27
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.cy, label %Py_DECREF.exit165

bb.cy:                                            ; preds = %bb.cx
  call void @_Py_Dealloc(ptr noundef nonnull %i.gu) #8
  br label %Py_DECREF.exit165

Py_DECREF.exit165:                                ; preds = %bb.cw, %bb.cx, %bb.cy
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !27 ; 2 uses
  %.not.i162 = icmp sgt i32 %i.gz, -1
  br i1 %.not.i162, label %bb.cz, label %Py_DECREF.exit163

bb.cz:                                            ; preds = %Py_DECREF.exit165
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !27
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.da, label %Py_DECREF.exit163

bb.da:                                            ; preds = %bb.cz
  call void @_Py_Dealloc(ptr noundef nonnull %i.gy) #8
  br label %Py_DECREF.exit163

Py_DECREF.exit163:                                ; preds = %Py_DECREF.exit165, %bb.cz, %bb.da
  %.not.i245 = icmp eq ptr %.0119, null
  br i1 %.not.i245, label %Py_XDECREF.exit236.thread263, label %bb.db

bb.db:                                            ; preds = %Py_DECREF.exit163
  %i.hc = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i246 = icmp sgt i32 %i.hc, -1
  br i1 %.not.i.i246, label %bb.dc, label %Py_XDECREF.exit236.thread263

bb.dc:                                            ; preds = %bb.db
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hd, ptr %.0119, align 8, !tbaa !27
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.dd, label %Py_XDECREF.exit236.thread263

bb.dd:                                            ; preds = %bb.dc
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit236.thread263

bb.de:                                            ; preds = %bb.cv
  %i.hf = load ptr, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %.not136 = icmp eq ptr %i.hf, null
  br i1 %.not136, label %bb.dj, label %bb.df

bb.df:                                            ; preds = %bb.de
  br i1 %.not129281, label %.lr.ph.i248, label %tuple_index.exit

.lr.ph.i248:                                      ; preds = %bb.df, %bb.dg
  %.0811.i = phi i64 [ %i.hj, %bb.dg ], [ 0, %bb.df ] ; 3 uses
  %i.hg = getelementptr [8 x i8], ptr %i.ea, i64 %.0811.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !26
  %i.hi = icmp eq ptr %i.hh, %i.ei
  br i1 %i.hi, label %tuple_index.exit, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i248
  %i.hj = add nuw nsw i64 %.0811.i, 1             ; 2 uses
  %exitcond.not.i249 = icmp eq i64 %i.hj, %.val229
  br i1 %exitcond.not.i249, label %tuple_index.exit, label %.lr.ph.i248, !llvm.loop !28

tuple_index.exit:                                 ; preds = %.lr.ph.i248, %bb.dg, %bb.df
  %i.hk = phi i64 [ -1, %bb.df ], [ %.0811.i, %.lr.ph.i248 ], [ -1, %bb.dg ]
  %i.hl = getelementptr [8 x i8], ptr %i.dg, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !26
  %i.hn = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.hf, ptr noundef %i.hm) #8 ; 3 uses
  %i.ho = load ptr, ptr %i.g, align 8, !tbaa !26  ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !27 ; 2 uses
  %.not.i160 = icmp sgt i32 %i.hp, -1
  br i1 %.not.i160, label %bb.dh, label %Py_DECREF.exit161

bb.dh:                                            ; preds = %tuple_index.exit
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !27
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.di, label %Py_DECREF.exit161

bb.di:                                            ; preds = %bb.dh
  call void @_Py_Dealloc(ptr noundef nonnull %i.ho) #8
  br label %Py_DECREF.exit161

bb.dj:                                            ; preds = %bb.de
  %i.hs = call fastcc ptr @subs_tvars(ptr noundef nonnull %i.ei, ptr noundef %2, ptr noundef %i.dg)
  br label %Py_DECREF.exit161

Py_DECREF.exit161:                                ; preds = %bb.di, %bb.dh, %tuple_index.exit, %bb.dj
  %.0111 = phi ptr [ %i.hs, %bb.dj ], [ %i.hn, %tuple_index.exit ], [ %i.hn, %bb.dh ], [ %i.hn, %bb.di ] ; 12 uses
  %i.ht = icmp eq ptr %.0111, null
  br i1 %i.ht, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %Py_DECREF.exit161
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !27 ; 2 uses
  %.not.i158 = icmp sgt i32 %i.hv, -1
  br i1 %.not.i158, label %bb.dl, label %Py_DECREF.exit159

bb.dl:                                            ; preds = %bb.dk
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !27
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.dm, label %Py_DECREF.exit159

bb.dm:                                            ; preds = %bb.dl
  call void @_Py_Dealloc(ptr noundef nonnull %i.hu) #8
  br label %Py_DECREF.exit159

Py_DECREF.exit159:                                ; preds = %bb.dk, %bb.dl, %bb.dm
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !27 ; 2 uses
  %.not.i156 = icmp sgt i32 %i.hz, -1
  br i1 %.not.i156, label %bb.dn, label %Py_DECREF.exit157

bb.dn:                                            ; preds = %Py_DECREF.exit159
  %i.ia = add nsw i32 %i.hz, -1                   ; 2 uses
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !27
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.do, label %Py_DECREF.exit157

bb.do:                                            ; preds = %bb.dn
  call void @_Py_Dealloc(ptr noundef nonnull %i.hy) #8
  br label %Py_DECREF.exit157

Py_DECREF.exit157:                                ; preds = %Py_DECREF.exit159, %bb.dn, %bb.do
  call fastcc void @Py_XDECREF(ptr noundef %.0119)
  br label %Py_XDECREF.exit236.thread263

bb.dp:                                            ; preds = %Py_DECREF.exit161
  %.not137 = icmp eq i32 %.04.i, 0
  br i1 %.not137, label %bb.ee, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ic = getelementptr i8, ptr %.0111, i64 8
  %.0111.val = load ptr, ptr %i.ic, align 8, !tbaa !11
  %i.id = getelementptr i8, ptr %.0111.val, i64 168
  %.val220 = load i64, ptr %i.id, align 8, !tbaa !15
  %i.ie = and i64 %.val220, 67108864
  %.not138 = icmp eq i64 %i.ie, 0
  br i1 %.not138, label %bb.dr, label %bb.dy

bb.dr:                                            ; preds = %bb.dq
  %i.if = getelementptr [8 x i8], ptr %i.dz, i64 %.0118286
  %i.ig = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !27 ; 2 uses
  %.not.i154 = icmp sgt i32 %i.ih, -1
  br i1 %.not.i154, label %bb.ds, label %Py_DECREF.exit155

bb.ds:                                            ; preds = %bb.dr
  %i.ii = add nsw i32 %i.ih, -1                   ; 2 uses
  store i32 %i.ii, ptr %i.ig, align 8, !tbaa !27
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.dt, label %Py_DECREF.exit155

bb.dt:                                            ; preds = %bb.ds
  call void @_Py_Dealloc(ptr noundef nonnull %i.ig) #8
  br label %Py_DECREF.exit155

Py_DECREF.exit155:                                ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.ik = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !27 ; 2 uses
  %.not.i152 = icmp sgt i32 %i.il, -1
  br i1 %.not.i152, label %bb.du, label %Py_DECREF.exit153

bb.du:                                            ; preds = %Py_DECREF.exit155
  %i.im = add nsw i32 %i.il, -1                   ; 2 uses
  store i32 %i.im, ptr %i.ik, align 8, !tbaa !27
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.dv, label %Py_DECREF.exit153

bb.dv:                                            ; preds = %bb.du
  call void @_Py_Dealloc(ptr noundef nonnull %i.ik) #8
  br label %Py_DECREF.exit153

Py_DECREF.exit153:                                ; preds = %Py_DECREF.exit155, %bb.du, %bb.dv
  call fastcc void @Py_XDECREF(ptr noundef %.0119)
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !26
  %i.ip = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  %i.iq = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ip, ptr noundef nonnull @.str.6, ptr noundef %i.io, ptr noundef nonnull %.0111) #8 ; 0 uses
  %i.ir = load i32, ptr %.0111, align 8, !tbaa !27 ; 2 uses
  %.not.i150 = icmp sgt i32 %i.ir, -1
  br i1 %.not.i150, label %bb.dw, label %Py_XDECREF.exit236.thread263

bb.dw:                                            ; preds = %Py_DECREF.exit153
  %i.is = add nsw i32 %i.ir, -1                   ; 2 uses
  store i32 %i.is, ptr %.0111, align 8, !tbaa !27
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.dx, label %Py_XDECREF.exit236.thread263

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %.0111) #8
  br label %Py_XDECREF.exit236.thread263

bb.dy:                                            ; preds = %bb.dq
  %i.iu = getelementptr i8, ptr %.0111, i64 32
  %i.iv = getelementptr i8, ptr %.0111, i64 16
  %.0111.val227 = load i64, ptr %i.iv, align 8, !tbaa !25
  %i.iw = call fastcc i64 @tuple_extend(ptr noundef %i.f, i64 noundef %.0112288, ptr noundef %i.iu, i64 noundef %.0111.val227) ; 2 uses
  %i.ix = load i32, ptr %.0111, align 8, !tbaa !27 ; 2 uses
  %.not.i148 = icmp sgt i32 %i.ix, -1
  br i1 %.not.i148, label %bb.dz, label %Py_DECREF.exit149

bb.dz:                                            ; preds = %bb.dy
  %i.iy = add nsw i32 %i.ix, -1                   ; 2 uses
  store i32 %i.iy, ptr %.0111, align 8, !tbaa !27
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.ea, label %Py_DECREF.exit149

bb.ea:                                            ; preds = %bb.dz
  call void @_Py_Dealloc(ptr noundef nonnull %.0111) #8
  br label %Py_DECREF.exit149

Py_DECREF.exit149:                                ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.ja = icmp slt i64 %i.iw, 0
  br i1 %i.ja, label %bb.eb, label %Py_XDECREF.exit236

bb.eb:                                            ; preds = %Py_DECREF.exit149
  %i.jb = load ptr, ptr %i.d, align 8, !tbaa !26  ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !27 ; 2 uses
  %.not.i146 = icmp sgt i32 %i.jc, -1
  br i1 %.not.i146, label %bb.ec, label %Py_DECREF.exit147

bb.ec:                                            ; preds = %bb.eb
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %i.jb, align 8, !tbaa !27
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.ed, label %Py_DECREF.exit147

bb.ed:                                            ; preds = %bb.ec
  call void @_Py_Dealloc(ptr noundef nonnull %i.jb) #8
  br label %Py_DECREF.exit147

Py_DECREF.exit147:                                ; preds = %bb.eb, %bb.ec, %bb.ed
  call fastcc void @Py_XDECREF(ptr noundef %.0119)
  br label %Py_XDECREF.exit236.thread263

bb.ee:                                            ; preds = %bb.dp
  %i.jf = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.jg = getelementptr i8, ptr %i.jf, i64 32
  %i.jh = getelementptr [8 x i8], ptr %i.jg, i64 %.0112288
  store ptr %.0111, ptr %i.jh, align 8, !tbaa !26
  %i.ji = add i64 %.0112288, 1
  br label %Py_XDECREF.exit236

Py_XDECREF.exit236.thread263:                     ; preds = %Py_DECREF.exit157, %Py_DECREF.exit147, %bb.dd, %Py_DECREF.exit163, %bb.db, %bb.dc, %Py_DECREF.exit153, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit236:                               ; preds = %Py_DECREF.exit149, %bb.ee
  %.3115 = phi i64 [ %i.ji, %bb.ee ], [ %i.iw, %Py_DECREF.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %Py_XDECREF.exit236.thread258

Py_XDECREF.exit236.thread258:                     ; preds = %Py_XDECREF.exit239, %_Py_NewRef.exit, %Py_XDECREF.exit236
  %.5117261 = phi i64 [ %.3115, %Py_XDECREF.exit236 ], [ %i.fz, %Py_XDECREF.exit239 ], [ %i.es, %_Py_NewRef.exit ]
  %i.jj = add nuw nsw i64 %.0118286, 1            ; 2 uses
  %exitcond301.not = icmp eq i64 %i.jj, %.0100.val
  br i1 %exitcond301.not, label %.critedge145.loopexit, label %bb.bj, !llvm.loop !44

.critedge145.loopexit:                            ; preds = %Py_XDECREF.exit236.thread258
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %.critedge145

.critedge145:                                     ; preds = %.critedge145.loopexit, %.preheader
  %i.jk = phi ptr [ %.pre, %.critedge145.loopexit ], [ %i.cz, %.preheader ] ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp sgt i32 %i.jl, -1
  br i1 %.not.i, label %bb.ef, label %Py_DECREF.exit

bb.ef:                                            ; preds = %.critedge145
  %i.jm = add nsw i32 %i.jl, -1                   ; 2 uses
  store i32 %i.jm, ptr %i.jk, align 8, !tbaa !27
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.eg, label %Py_DECREF.exit

bb.eg:                                            ; preds = %bb.ef
  call void @_Py_Dealloc(ptr noundef nonnull %i.jk) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.critedge145, %bb.ef, %bb.eg
  %.not.i250 = icmp eq ptr %.0119, null
  br i1 %.not.i250, label %Py_XDECREF.exit252, label %bb.eh

bb.eh:                                            ; preds = %Py_DECREF.exit
  %i.jo = load i32, ptr %.0119, align 8, !tbaa !27 ; 2 uses
  %.not.i.i251 = icmp sgt i32 %i.jo, -1
  br i1 %.not.i.i251, label %bb.ei, label %Py_XDECREF.exit252

bb.ei:                                            ; preds = %bb.eh
  %i.jp = add nsw i32 %i.jo, -1                   ; 2 uses
  store i32 %i.jp, ptr %.0119, align 8, !tbaa !27
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.ej, label %Py_XDECREF.exit252

bb.ej:                                            ; preds = %bb.ei
  call void @_Py_Dealloc(ptr noundef nonnull %.0119) #8
  br label %Py_XDECREF.exit252

Py_XDECREF.exit252:                               ; preds = %Py_DECREF.exit, %bb.eh, %bb.ei, %bb.ej
  %i.jr = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit171, %bb.cg, %bb.ch, %bb.ci, %bb.cu, %bb.ct, %bb.cs, %Py_DECREF.exit167, %bb.bu, %bb.bt, %Py_DECREF.exit177, %bb.bv, %Py_XDECREF.exit236.thread263, %bb.bi, %bb.bh, %bb.bg, %Py_DECREF.exit181, %Py_XDECREF.exit252
  %.11 = phi ptr [ null, %bb.bi ], [ %i.jr, %Py_XDECREF.exit252 ], [ null, %Py_DECREF.exit181 ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %Py_XDECREF.exit236.thread263 ], [ null, %bb.bv ], [ null, %Py_DECREF.exit177 ], [ null, %bb.bt ], [ null, %bb.bu ], [ null, %Py_DECREF.exit167 ], [ null, %bb.cs ], [ null, %bb.ct ], [ null, %bb.cu ], [ null, %bb.ci ], [ null, %bb.ch ], [ null, %bb.cg ], [ null, %Py_DECREF.exit171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %Py_DECREF.exit183

Py_DECREF.exit183:                                ; preds = %bb.bb, %bb.ba, %bb.az, %.critedge, %Py_DECREF.exit185, %Py_XDECREF.exit, %bb.b
  %.14 = phi ptr [ %i.k, %bb.b ], [ null, %.critedge ], [ %i.dn, %Py_DECREF.exit185 ], [ %.11, %Py_XDECREF.exit ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.bb ]
  ret ptr %.14
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PySequence_List(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @subs_tvars(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68504), ptr noundef nonnull %i.a) #8
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Py_XDECREF.exit, label %bb.b

end_hunk_1
