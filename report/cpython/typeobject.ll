inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@slot_tp_new:bb.a
  %i.h = and i64 %i.c, 1
  %.not.not.i.i13 = icmp eq i64 %i.h, 0
  br i1 %.not.not.i.i13, label %bb.c, label %_PyThreadState_PopCStackRef.exit

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !112
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !112
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_PyThreadState_PopCStackRef.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #24
  br label %_PyThreadState_PopCStackRef.exit

_PyThreadState_PopCStackRef.exit:                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  ret ptr %.0
}

declare ptr @PyTuple_FromArray(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_PyStack_AsDict(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_PyObject_GetAttrStackRef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyObject_Call_Prepend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyObject_Call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #20

declare void @PyDict_Clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @type_mro(ptr noundef %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call fastcc ptr @mro_implementation_unlocked(ptr noundef %0), !inline_history !418 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %type_mro_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val10.i = load i64, ptr %i.c, align 8, !tbaa !118
  %i.d = and i64 %.val10.i, 33554432
  %.not9.i = icmp eq i64 %i.d, 0
  br i1 %.not9.i, label %bb.c, label %type_mro_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PySequence_List(ptr noundef nonnull %i.a) #24, !inline_history !419 ; 3 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.d, label %type_mro_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !112
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %type_mro_impl.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #24, !inline_history !419
  br label %type_mro_impl.exit

type_mro_impl.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @type___subclasses__(ptr noundef readonly captures(address) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call ptr @_PyType_GetSubclasses(ptr noundef readonly %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @type_prepare(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call ptr @PyDict_New() #24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @type___instancecheck__(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @_PyObject_RealIsInstance(ptr noundef %1, ptr noundef %0) #24 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #24
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @type___subclasscheck__(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @_PyObject_RealIsSubclass(ptr noundef %1, ptr noundef %0) #24 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #24
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sext i32 %i.a to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @type___dir__(ptr noundef %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call ptr @PyDict_New() #24          ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %type___dir___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @merge_class_dict(ptr noundef nonnull %i.a, ptr noundef %0)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @PyDict_Keys(ptr noundef nonnull %i.a) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.ph.i = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i.i, label %bb.e, label %type___dir___impl.exit

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !112
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %type___dir___impl.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #24
  br label %type___dir___impl.exit

type___dir___impl.exit:                           ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.09.i = phi ptr [ %.0.ph.i, %bb.f ], [ %.0.ph.i, %bb.d ], [ %.0.ph.i, %bb.e ], [ null, %bb.a ]
  ret ptr %.09.i
}

; Function Attrs: nounwind uwtable
define internal ptr @type___sizeof__(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %i.c = and i64 %i.b, 512
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %type___sizeof___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %type___sizeof___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @_PyDict_KeysSize(ptr noundef nonnull %i.e) #24
  %i.g = add i64 %i.f, 936
  br label %type___sizeof___impl.exit

type___sizeof___impl.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi i64 [ 936, %bb.b ], [ %i.g, %bb.c ], [ 416, %bb.a ]
  %i.h = tail call ptr @PyLong_FromSize_t(i64 noundef %.1.i) #24
  ret ptr %i.h
}

declare ptr @PySequence_List(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mro_implementation_unlocked(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [1000 x i8], align 16             ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118  ; 5 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.m = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.n = add i64 %i.m, -1                         ; 3 uses
  %i.o = getelementptr i8, ptr %i.k, i64 180328
  %i.p = getelementptr [48 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = icmp eq ptr %i.q, %0
  %i.s = icmp ugt i64 %i.n, 10
  %or.cond.i.i.i.i.i = or i1 %i.r, %i.s
  %i.t = getelementptr i8, ptr %i.k, i64 190040
  %i.u = getelementptr [48 x i8], ptr %i.t, i64 %i.n
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, ptr %i.p, ptr %i.u
  %i.v = getelementptr i8, ptr %.0.i.i.i.i.i, i64 24
  br label %_PyType_IsReady.exit

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 264
  br label %_PyType_IsReady.exit

_PyType_IsReady.exit:                             ; preds = %bb.b, %bb.c
  %.0.in.i.i.i = phi ptr [ %i.v, %bb.b ], [ %i.w, %bb.c ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !115
  %.not98 = icmp eq ptr %.0.i.i.i, null
  %i.x = and i64 %i.h, 4096
  %.not.i82 = icmp eq i64 %i.x, 0
  %or.cond = and i1 %.not.i82, %.not98
  br i1 %or.cond, label %bb.d, label %PyType_Ready.exit.thread

bb.d:                                             ; preds = %_PyType_IsReady.exit
  %i.y = and i64 %i.h, 512
  %.not8.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or i64 %i.h, 256
  store i64 %i.z, ptr %i.g, align 8, !tbaa !118
  tail call void @_Py_SetImmortalUntracked(ptr noundef nonnull %0) #24, !inline_history !217
  %.pre = load i64, ptr %i.g, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %.pre, %bb.e ], [ %i.h, %bb.d ]
  %i.ab = and i64 %i.aa, 4096
  %.not9.i = icmp eq i64 %i.ab, 0
  br i1 %.not9.i, label %PyType_Ready.exit, label %PyType_Ready.exit.thread

PyType_Ready.exit:                                ; preds = %bb.f
  %i.ac = tail call fastcc i32 @type_ready(ptr noundef nonnull %0, i32 noundef 1), !inline_history !217
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %check_duplicates.exit.thread, label %PyType_Ready.exit.thread

PyType_Ready.exit.thread:                         ; preds = %bb.f, %PyType_Ready.exit, %_PyType_IsReady.exit
  %i.ae = getelementptr i8, ptr %0, i64 336
  %.val76 = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 5 uses
  %i.af = getelementptr i8, ptr %.val76, i64 16
  %.val78 = load i64, ptr %i.af, align 8, !tbaa !140 ; 16 uses
  %.not73104 = icmp sgt i64 %.val78, 0            ; 2 uses
  br i1 %.not73104, label %.critedge.lr.ph, label %check_duplicates.exit

.critedge.lr.ph:                                  ; preds = %PyType_Ready.exit.thread
  %i.ag = getelementptr i8, ptr %.val76, i64 32
  br label %.critedge

bb.g:                                             ; preds = %.critedge
  %i.ah = add nuw nsw i64 %.056105, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %.val78
  br i1 %exitcond.not, label %.critedge75, label %.critedge, !llvm.loop !420

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.g
  %.056105 = phi i64 [ 0, %.critedge.lr.ph ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %.056105
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 344
  %.val81 = load ptr, ptr %i.ak, align 8, !tbaa !165
  %.not72 = icmp eq ptr %.val81, null
  br i1 %.not72, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.critedge
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.am = getelementptr i8, ptr %i.aj, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !153
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.87, ptr noundef %i.an) #24 ; 0 uses
  br label %check_duplicates.exit.thread

.critedge75:                                      ; preds = %bb.g
  %i.ap = icmp eq i64 %.val78, 1
  %i.aq = getelementptr i8, ptr %.val76, i64 32   ; 3 uses
  br i1 %i.ap, label %bb.i, label %.lr.ph32.i

bb.i:                                             ; preds = %.critedge75
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.as = getelementptr i8, ptr %i.ar, i64 344
  %.val80 = load ptr, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.at = getelementptr i8, ptr %.val80, i64 16
  %.val77 = load i64, ptr %i.at, align 8, !tbaa !140 ; 6 uses
  %i.au = add i64 %.val77, 1
  %i.av = tail call ptr @PyTuple_New(i64 noundef %i.au) #24 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %check_duplicates.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %0, align 8, !tbaa !112   ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, -1073741825
  br i1 %i.ay, label %_Py_NewRef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !112
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.j, %bb.k
  %i.ba = getelementptr i8, ptr %i.av, i64 32     ; 4 uses
  store ptr %0, ptr %i.ba, align 8, !tbaa !115
  %i.bb = icmp sgt i64 %.val77, 0
  br i1 %i.bb, label %.lr.ph108, label %check_duplicates.exit.thread

.lr.ph108:                                        ; preds = %_Py_NewRef.exit
  %i.bc = getelementptr i8, ptr %.val80, i64 32   ; 3 uses
  %xtraiter176 = and i64 %.val77, 1
  %i.bd = icmp eq i64 %.val77, 1
  br i1 %i.bd, label %.epil.preheader175, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter180 = and i64 %.val77, 9223372036854775806
  br label %bb.l

bb.l:                                             ; preds = %_Py_NewRef.exit83.1, %.lr.ph108.new
  %.060107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.bn, %_Py_NewRef.exit83.1 ] ; 3 uses
  %niter181 = phi i64 [ 0, %.lr.ph108.new ], [ %niter181.next.1, %_Py_NewRef.exit83.1 ]
  %i.be = getelementptr [8 x i8], ptr %i.bc, i64 %.060107
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !115 ; 3 uses
  %i.bg = or disjoint i64 %.060107, 1             ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !112 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, -1073741825
  br i1 %i.bi, label %_Py_NewRef.exit83, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = add nuw i32 %i.bh, 1
  store i32 %i.bj, ptr %i.bf, align 8, !tbaa !112
  br label %_Py_NewRef.exit83

_Py_NewRef.exit83:                                ; preds = %bb.l, %bb.m
  %i.bk = getelementptr [8 x i8], ptr %i.ba, i64 %i.bg
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !115
  %i.bl = getelementptr [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !115 ; 3 uses
  %i.bn = add nuw nsw i64 %.060107, 2             ; 3 uses
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !112 ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, -1073741825
  br i1 %i.bp, label %_Py_NewRef.exit83.1, label %bb.n

bb.n:                                             ; preds = %_Py_NewRef.exit83
  %i.bq = add nuw i32 %i.bo, 1
  store i32 %i.bq, ptr %i.bm, align 8, !tbaa !112
  br label %_Py_NewRef.exit83.1

_Py_NewRef.exit83.1:                              ; preds = %bb.n, %_Py_NewRef.exit83
  %i.br = getelementptr [8 x i8], ptr %i.ba, i64 %i.bn
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !115
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %check_duplicates.exit.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !421

.critedge.loopexit.i:                             ; preds = %bb.o, %.lr.ph32.i
  %exitcond34.not.i = icmp eq i64 %i.bu, %.val78
  br i1 %exitcond34.not.i, label %check_duplicates.exit, label %.lr.ph32.i, !llvm.loop !422

.lr.ph32.i:                                       ; preds = %.critedge75, %.critedge.loopexit.i
  %.02131.i = phi i64 [ %i.bu, %.critedge.loopexit.i ], [ 0, %.critedge75 ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.aq, i64 %.02131.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !115 ; 3 uses
  %i.bu = add nuw nsw i64 %.02131.i, 1            ; 4 uses
  %.not2629.i = icmp slt i64 %i.bu, %.val78
  br i1 %.not2629.i, label %.lr.ph.i, label %.critedge.loopexit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.bv = add nuw i64 %.02030.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %.val78
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !423

.lr.ph.i:                                         ; preds = %.lr.ph32.i, %bb.o
  %.02030.i = phi i64 [ %i.bv, %bb.o ], [ %i.bu, %.lr.ph32.i ] ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %i.aq, i64 %.02030.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115
  %i.by = icmp eq ptr %i.bx, %i.bt
  br i1 %i.by, label %bb.p, label %bb.o
end_hunk_0
begin_hunk_1_@mro_implementation_unlocked:bb.a

.lr.ph99.i.loopexit.unr-lcssa:                    ; preds = %bb.am
  br i1 %lcmp.mod171.not.not, label %.lr.ph112.i.epil.preheader, label %.lr.ph99.i.backedge

.lr.ph112.i.epil.preheader:                       ; preds = %.lr.ph99.i.loopexit.unr-lcssa, %.lr.ph112.i.preheader
  %.159111.i.epil.init = phi i64 [ 0, %.lr.ph112.i.preheader ], [ %i.gk, %.lr.ph99.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.ee = getelementptr [8 x i8], ptr %i.co, i64 %.159111.i.epil.init
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !115 ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.dz, i64 %.159111.i.epil.init ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !122 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.ef, i64 16
  %.val.i90.epil = load i64, ptr %i.ei, align 8, !tbaa !140
  %i.ej = icmp slt i64 %i.eh, %.val.i90.epil
  br i1 %i.ej, label %bb.ad, label %.lr.ph99.i.backedge

bb.ad:                                            ; preds = %.lr.ph112.i.epil.preheader
  %i.ek = getelementptr i8, ptr %i.ef, i64 32
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.eh
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !115
  %i.en = icmp eq ptr %i.em, %i.ex
  br i1 %i.en, label %bb.ae, label %.lr.ph99.i.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.eo = add nsw i64 %i.eh, 1
  store i64 %i.eo, ptr %i.eg, align 8, !tbaa !122
  br label %.lr.ph99.i.backedge

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.backedge, %.lr.ph99.lr.ph.i
  %.15798.us.i = phi i64 [ 0, %.lr.ph99.lr.ph.i ], [ %.15798.us.i.be, %.lr.ph99.i.backedge ] ; 4 uses
  %.06297.us.i = phi i64 [ 0, %.lr.ph99.lr.ph.i ], [ %.06297.us.i.be, %.lr.ph99.i.backedge ] ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.co, i64 %.15798.us.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !115 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.dz, i64 %.15798.us.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !122 ; 2 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 16
  %.val71.us.i = load i64, ptr %i.et, align 8, !tbaa !140
  %.not69.us.i = icmp slt i64 %i.es, %.val71.us.i
  br i1 %.not69.us.i, label %.lr.ph94.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph99.i
  %i.eu = add i64 %.06297.us.i, 1
  br label %.loopexit.us.i

.lr.ph94.us.i:                                    ; preds = %.lr.ph99.i
  %i.ev = getelementptr i8, ptr %i.eq, i64 32
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %i.es
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !115 ; 5 uses
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge162, %.lr.ph94.us.i
  %.05893.us.i = phi i64 [ 0, %.lr.ph94.us.i ], [ %i.fg, %._crit_edge162 ] ; 4 uses
  %i.ey = getelementptr [8 x i8], ptr %i.co, i64 %.05893.us.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !115 ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.dz, i64 %.05893.us.i
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !122
  %i.fc = getelementptr i8, ptr %i.ez, i64 16
  %.val.i.us.i = load i64, ptr %i.fc, align 8, !tbaa !140 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ez, i64 32
  %.08.i.us.i158 = add i64 %i.fb, 1               ; 2 uses
  %i.fe = icmp slt i64 %.08.i.us.i158, %.val.i.us.i
  br i1 %i.fe, label %.lr.ph161, label %._crit_edge162

bb.ah:                                            ; preds = %.lr.ph161
  %.08.i.us.i = add i64 %.08.i.us.i159, 1         ; 2 uses
  %i.ff = icmp slt i64 %.08.i.us.i, %.val.i.us.i
  br i1 %i.ff, label %.lr.ph161, label %._crit_edge162, !llvm.loop !426

._crit_edge162:                                   ; preds = %bb.ah, %bb.ag
  %i.fg = add nuw nsw i64 %.05893.us.i, 1
  %exitcond.not.i89 = icmp eq i64 %.05893.us.i, %.val78
  br i1 %exitcond.not.i89, label %._crit_edge95.split.us.i, label %bb.ag, !llvm.loop !427

.lr.ph161:                                        ; preds = %bb.ag, %bb.ah
  %.08.i.us.i159 = phi i64 [ %.08.i.us.i, %bb.ah ], [ %.08.i.us.i158, %bb.ag ] ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.fd, i64 %.08.i.us.i159
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !115
  %i.fj = icmp eq ptr %i.fi, %i.ex
  br i1 %i.fj, label %.loopexit.us.i, label %bb.ah, !llvm.loop !426

.loopexit.us.i:                                   ; preds = %.lr.ph161, %bb.af
  %.163.ph.us.i = phi i64 [ %i.eu, %bb.af ], [ %.06297.us.i, %.lr.ph161 ] ; 2 uses
  %i.fk = add nuw nsw i64 %.15798.us.i, 1
  %exitcond124.not.i = icmp eq i64 %.15798.us.i, %.val78
  br i1 %exitcond124.not.i, label %tail_contains.exit._crit_edge.i, label %.lr.ph99.i.backedge

.lr.ph99.i.backedge:                              ; preds = %.lr.ph99.i.loopexit.unr-lcssa, %bb.ae, %bb.ad, %.lr.ph112.i.epil.preheader, %.loopexit.us.i
  %.15798.us.i.be = phi i64 [ %i.fk, %.loopexit.us.i ], [ 0, %.lr.ph112.i.epil.preheader ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %.lr.ph99.i.loopexit.unr-lcssa ]
  %.06297.us.i.be = phi i64 [ %.163.ph.us.i, %.loopexit.us.i ], [ 0, %.lr.ph112.i.epil.preheader ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %.lr.ph99.i.loopexit.unr-lcssa ]
  br label %.lr.ph99.i, !llvm.loop !428

._crit_edge95.split.us.i:                         ; preds = %._crit_edge162
  %i.fl = tail call i32 @PyList_Append(ptr noundef nonnull %i.cz, ptr noundef %i.ex) #24
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %pmerge.exit.thread94, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %._crit_edge95.split.us.i
  br i1 %i.ec, label %.lr.ph112.i.epil.preheader, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %bb.am
  %.159111.i = phi i64 [ %i.gk, %bb.am ], [ 0, %.lr.ph112.i.preheader ] ; 4 uses
  %niter174 = phi i64 [ %niter174.next.1, %bb.am ], [ 0, %.lr.ph112.i.preheader ]
  %i.fn = getelementptr [8 x i8], ptr %i.co, i64 %.159111.i
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !115 ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %i.dz, i64 %.159111.i ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !122 ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fo, i64 16
  %.val.i90 = load i64, ptr %i.fr, align 8, !tbaa !140
  %i.fs = icmp slt i64 %i.fq, %.val.i90
  br i1 %i.fs, label %bb.ai, label %.lr.ph112.i.1

bb.ai:                                            ; preds = %.lr.ph112.i
  %i.ft = getelementptr i8, ptr %i.fo, i64 32
  %i.fu = getelementptr [8 x i8], ptr %i.ft, i64 %i.fq
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !115
  %i.fw = icmp eq ptr %i.fv, %i.ex
  br i1 %i.fw, label %bb.aj, label %.lr.ph112.i.1

bb.aj:                                            ; preds = %bb.ai
  %i.fx = add nsw i64 %i.fq, 1
  store i64 %i.fx, ptr %i.fp, align 8, !tbaa !122
  br label %.lr.ph112.i.1

.lr.ph112.i.1:                                    ; preds = %bb.aj, %bb.ai, %.lr.ph112.i
  %i.fy = or disjoint i64 %.159111.i, 1           ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.co, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !115 ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %i.dz, i64 %i.fy ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !122 ; 3 uses
  %i.gd = getelementptr i8, ptr %i.ga, i64 16
  %.val.i90.1 = load i64, ptr %i.gd, align 8, !tbaa !140
  %i.ge = icmp slt i64 %i.gc, %.val.i90.1
  br i1 %i.ge, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.lr.ph112.i.1
  %i.gf = getelementptr i8, ptr %i.ga, i64 32
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %i.gc
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !115
  %i.gi = icmp eq ptr %i.gh, %i.ex
  br i1 %i.gi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gj = add nsw i64 %i.gc, 1
  store i64 %i.gj, ptr %i.gb, align 8, !tbaa !122
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph112.i.1
  %i.gk = add nuw nsw i64 %.159111.i, 2           ; 2 uses
  %niter174.next.1 = add i64 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i64 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %.lr.ph99.i.loopexit.unr-lcssa, label %.lr.ph112.i, !llvm.loop !428

tail_contains.exit._crit_edge.i:                  ; preds = %.loopexit.us.i
  %i.gl = icmp eq i64 %.163.ph.us.i, %i.cl
  br i1 %i.gl, label %pmerge.exit, label %bb.an

bb.an:                                            ; preds = %tail_contains.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.gm = tail call ptr @PyDict_New() #24         ; 14 uses
  %.not.i.i86 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i86, label %set_mro_error.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.an, %.critedge48.i.i
  %storemerge78.i.i = phi i64 [ %i.hb, %.critedge48.i.i ], [ 0, %bb.an ] ; 4 uses
  %i.gn = getelementptr [8 x i8], ptr %i.co, i64 %storemerge78.i.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !115 ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.dz, i64 %storemerge78.i.i
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !122 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.go, i64 16
  %.val56.i.i = load i64, ptr %i.gr, align 8, !tbaa !140
  %i.gs = icmp slt i64 %i.gq, %.val56.i.i
  br i1 %i.gs, label %bb.ao, label %.critedge48.i.i

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.gt = getelementptr i8, ptr %i.go, i64 32
  %i.gu = getelementptr [8 x i8], ptr %i.gt, i64 %i.gq
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !115
  %i.gw = tail call i32 @PyDict_SetItem(ptr noundef nonnull %i.gm, ptr noundef %i.gv, ptr noundef nonnull @_Py_NoneStruct) #24
  %i.gx = icmp sgt i32 %i.gw, -1
  br i1 %i.gx, label %.critedge48.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = load i32, ptr %i.gm, align 8, !tbaa !112 ; 2 uses
  %.not.i51.i.i = icmp sgt i32 %i.gy, -1
  br i1 %.not.i51.i.i, label %bb.aq, label %set_mro_error.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.gz, ptr %i.gm, align 8, !tbaa !112
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.ar, label %set_mro_error.exit.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.gm) #24
  br label %set_mro_error.exit.i

.critedge48.i.i:                                  ; preds = %bb.ao, %.lr.ph.i.i
  %i.hb = add nuw nsw i64 %storemerge78.i.i, 1    ; 2 uses
  store i64 %i.hb, ptr %i.b, align 8, !tbaa !122
  %exitcond.not.i.i = icmp eq i64 %storemerge78.i.i, %.val78
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i87, label %.lr.ph.i.i, !llvm.loop !429

._crit_edge.i.i87:                                ; preds = %.critedge48.i.i
  %i.hc = getelementptr i8, ptr %i.gm, i64 16
  %.val57.i.i = load i64, ptr %i.hc, align 8, !tbaa !249
  %i.hd = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.c, i64 noundef 1000, ptr noundef nonnull @.str.90) #24 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %i.he = call i32 @PyDict_Next(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #24
  %i.hf = icmp ne i32 %i.he, 0
  %i.hg = icmp ult i32 %i.hd, 1000
  %i.hh = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %i.hh, label %.lr.ph82.preheader.i.i, label %._crit_edge83.i.i

.lr.ph82.preheader.i.i:                           ; preds = %._crit_edge.i.i87
  %i.hi = zext nneg i32 %i.hd to i64
  br label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %Py_DECREF.exit50.i.i, %.lr.ph82.preheader.i.i
  %.03380.i.i = phi i64 [ %i.ig, %Py_DECREF.exit50.i.i ], [ %.val57.i.i, %.lr.ph82.preheader.i.i ]
  %.03479.i.i = phi i64 [ %.2.i.i, %Py_DECREF.exit50.i.i ], [ %i.hi, %.lr.ph82.preheader.i.i ] ; 3 uses
  %i.hj = load ptr, ptr %i.d, align 8, !tbaa !115 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.hk = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.hj, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67864), ptr noundef nonnull %i.a) #24
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.as, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph82.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %class_name.exit.i.i

bb.as:                                            ; preds = %.lr.ph82.i.i
  %i.hm = call ptr @PyObject_Repr(ptr noundef %i.hj) #24
  br label %class_name.exit.i.i

class_name.exit.i.i:                              ; preds = %bb.as, %._crit_edge.i.i.i
  %i.hn = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hm, %bb.as ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not43.i.i = icmp eq ptr %i.hn, null
  br i1 %.not43.i.i, label %Py_XDECREF.exit.i.i, label %bb.at

bb.at:                                            ; preds = %class_name.exit.i.i
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %.val.i72.i = load ptr, ptr %i.ho, align 8, !tbaa !126
  %i.hp = getelementptr i8, ptr %.val.i72.i, i64 168
  %.val55.i.i = load i64, ptr %i.hp, align 8, !tbaa !118
  %i.hq = and i64 %.val55.i.i, 268435456
  %.not44.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not44.i.i, label %.thread66.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %i.hn) #24 ; 2 uses
  %.not46.i.i = icmp eq ptr %i.hr, null
  br i1 %.not46.i.i, label %bb.av, label %.thread66.i.i

bb.av:                                            ; preds = %bb.au
  %i.hs = load i32, ptr %i.hn, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.hs, -1
  br i1 %.not.i.i.i.i, label %bb.aw, label %Py_XDECREF.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %i.hn, align 8, !tbaa !112
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ax, label %Py_XDECREF.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_Py_Dealloc(ptr noundef nonnull %i.hn) #24
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %class_name.exit.i.i, %bb.ax, %bb.aw, %bb.av
  %i.hv = load i32, ptr %i.gm, align 8, !tbaa !112 ; 2 uses
  %.not.i49.i.i = icmp sgt i32 %i.hv, -1
  br i1 %.not.i49.i.i, label %bb.ay, label %set_mro_error.exit.i

bb.ay:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %i.gm, align 8, !tbaa !112
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.az, label %set_mro_error.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.gm) #24
  br label %set_mro_error.exit.i

.thread66.i.i:                                    ; preds = %bb.au, %bb.at
  %.069.i.i = phi ptr [ %i.hr, %bb.au ], [ @.str.91, %bb.at ]
  %i.hy = getelementptr i8, ptr %i.c, i64 %.03479.i.i
  %i.hz = sub nuw nsw i64 1000, %.03479.i.i
  %i.ia = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef %i.hy, i64 noundef %i.hz, ptr noundef nonnull @.str.92, ptr noundef nonnull %.069.i.i) #24
  %i.ib = sext i32 %i.ia to i64
  %i.ic = add nsw i64 %.03479.i.i, %i.ib          ; 4 uses
  %i.id = load i32, ptr %i.hn, align 8, !tbaa !112 ; 2 uses
  %.not.i.i60.i.i = icmp sgt i32 %i.id, -1
  br i1 %.not.i.i60.i.i, label %bb.ba, label %Py_XDECREF.exit61.i.i

bb.ba:                                            ; preds = %.thread66.i.i
  %i.ie = add nsw i32 %i.id, -1                   ; 2 uses
  store i32 %i.ie, ptr %i.hn, align 8, !tbaa !112
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bb, label %Py_XDECREF.exit61.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %i.hn) #24
  br label %Py_XDECREF.exit61.i.i

Py_XDECREF.exit61.i.i:                            ; preds = %bb.bb, %bb.ba, %.thread66.i.i
  %i.ig = add i64 %.03380.i.i, -1                 ; 2 uses
  %.not45.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not45.i.i, label %Py_DECREF.exit50.i.i, label %bb.bc

bb.bc:                                            ; preds = %Py_XDECREF.exit61.i.i
  %i.ih = add nsw i64 %i.ic, 1                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 1000
  br i1 %i.ii, label %bb.bd, label %Py_DECREF.exit50.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ij = getelementptr i8, ptr %i.c, i64 %i.ic
  store i8 44, ptr %i.ij, align 1, !tbaa !112
  %i.ik = getelementptr i8, ptr %i.c, i64 %i.ih
  store i8 0, ptr %i.ik, align 1, !tbaa !112
  br label %Py_DECREF.exit50.i.i

Py_DECREF.exit50.i.i:                             ; preds = %bb.bd, %bb.bc, %Py_XDECREF.exit61.i.i
  %.2.i.i = phi i64 [ %i.ic, %Py_XDECREF.exit61.i.i ], [ %i.ih, %bb.bd ], [ %i.ic, %bb.bc ] ; 2 uses
  %i.il = call i32 @PyDict_Next(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #24
  %i.im = icmp ne i32 %i.il, 0
  %i.in = icmp ult i64 %.2.i.i, 1000
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  br i1 %i.io, label %.lr.ph82.i.i, label %._crit_edge83.i.i

._crit_edge83.i.i:                                ; preds = %Py_DECREF.exit50.i.i, %._crit_edge.i.i87
  %i.ip = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  call void @PyErr_SetString(ptr noundef %i.ip, ptr noundef nonnull %i.c) #24
  %i.iq = load i32, ptr %i.gm, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i88 = icmp sgt i32 %i.iq, -1
  br i1 %.not.i.i.i88, label %bb.be, label %set_mro_error.exit.i

bb.be:                                            ; preds = %._crit_edge83.i.i
  %i.ir = add nsw i32 %i.iq, -1                   ; 2 uses
  store i32 %i.ir, ptr %i.gm, align 8, !tbaa !112
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bf, label %set_mro_error.exit.i

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %i.gm) #24
  br label %set_mro_error.exit.i

set_mro_error.exit.i:                             ; preds = %bb.bf, %bb.be, %._crit_edge83.i.i, %bb.az, %bb.ay, %Py_XDECREF.exit.i.i, %bb.ar, %bb.aq, %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %pmerge.exit.thread94

pmerge.exit.thread94:                             ; preds = %._crit_edge95.split.us.i, %set_mro_error.exit.i
  call void @PyMem_Free(ptr noundef nonnull %i.dz) #24
  br label %bb.bg

pmerge.exit:                                      ; preds = %tail_contains.exit._crit_edge.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.dz) #24
  br label %Py_DECREF.exit

bb.bg:                                            ; preds = %pmerge.exit.thread94, %pmerge.exit.thread
  %i.it = load i32, ptr %i.cz, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.it, -1
  br i1 %.not.i, label %bb.bh, label %Py_DECREF.exit

bb.bh:                                            ; preds = %bb.bg
  %i.iu = add nsw i32 %i.it, -1                   ; 2 uses
  store i32 %i.iu, ptr %i.cz, align 8, !tbaa !112
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bi, label %Py_DECREF.exit

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #24
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %pmerge.exit, %bb.bi, %bb.bh, %bb.bg, %pmerge.exit.thread96
  %.166 = phi ptr [ %i.cz, %pmerge.exit.thread96 ], [ %i.cz, %pmerge.exit ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.bi ]
  call void @PyMem_Free(ptr noundef nonnull %i.co) #24
  br label %check_duplicates.exit.thread

check_duplicates.exit.thread.loopexit.unr-lcssa:  ; preds = %_Py_NewRef.exit83.1
  %lcmp.mod178.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod178.not, label %check_duplicates.exit.thread, label %.epil.preheader175

.epil.preheader175:                               ; preds = %check_duplicates.exit.thread.loopexit.unr-lcssa, %.lr.ph108
  %.060107.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.bn, %check_duplicates.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i64 %.val77 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.iw = getelementptr [8 x i8], ptr %i.bc, i64 %.060107.epil.init
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !115 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !112 ; 2 uses
  %i.iz = icmp ugt i32 %i.iy, -1073741825
  br i1 %i.iz, label %_Py_NewRef.exit83.epil, label %bb.bj

bb.bj:                                            ; preds = %.epil.preheader175
  %i.ja = add nuw i32 %i.iy, 1
  store i32 %i.ja, ptr %i.ix, align 8, !tbaa !112
end_hunk_1
