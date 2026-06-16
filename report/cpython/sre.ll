inline.NumInlined: 358
inline.NumDeleted: 87
begin_hunk_0_@state_init:bb.a
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.j, %bb.k
  %i.au = getelementptr i8, ptr %0, i64 32
  store ptr %2, ptr %i.au, align 8, !tbaa !103
  %i.av = getelementptr i8, ptr %0, i64 120
  store i64 %.045, ptr %i.av, align 8, !tbaa !104
  %i.aw = getelementptr i8, ptr %0, i64 128
  store i64 %.044, ptr %i.aw, align 8, !tbaa !97
  br label %bb.n

bb.l:                                             ; preds = %bb.d, %bb.i, %bb.g, %bb.c
  %i.ax = phi ptr [ %i.j, %bb.d ], [ %i.j, %bb.i ], [ %i.j, %bb.g ], [ %i.k, %bb.c ] ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94
  tail call void @PyMem_Free(ptr noundef %i.ay) #13
  store ptr null, ptr %i.ax, align 8, !tbaa !94
  %i.az = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101
  %.not56 = icmp eq ptr %i.ba, null
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @PyBuffer_Release(ptr noundef nonnull %i.az) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_Py_NewRef.exit
  %.0 = phi ptr [ %2, %_Py_NewRef.exit ], [ null, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @state_fini(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyBuffer_Release(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #13
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.h = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %.not.i7 = icmp eq ptr %i.i, null
  br i1 %.not.i7, label %data_stack_dealloc.exit, label %bb.g

bb.g:                                             ; preds = %Py_XDECREF.exit
  tail call void @PyMem_Free(ptr noundef nonnull %i.i) #13
  store ptr null, ptr %i.h, align 8, !tbaa !88
  br label %data_stack_dealloc.exit

data_stack_dealloc.exit:                          ; preds = %Py_XDECREF.exit, %bb.g
  %i.j = getelementptr i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  tail call void @PyMem_Free(ptr noundef %i.l) #13
  store ptr null, ptr %i.k, align 8, !tbaa !94
  %i.m = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !105
  %.not13.i = icmp eq ptr %i.n, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %data_stack_dealloc.exit, %.lr.ph.i
  %.014.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.n, %data_stack_dealloc.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.014.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106  ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.014.i) #13
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i, %data_stack_dealloc.exit
  %i.q = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !110
  %.not1215.i = icmp eq ptr %i.r, null
  br i1 %.not1215.i, label %repeat_pool_clear.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %._crit_edge.i, %.lr.ph18.i
  %.116.i = phi ptr [ %i.t, %.lr.ph18.i ], [ %i.r, %._crit_edge.i ] ; 2 uses
  %i.s = getelementptr i8, ptr %.116.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106  ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.116.i) #13
  %.not12.i = icmp eq ptr %i.t, null
  br i1 %.not12.i, label %repeat_pool_clear.exit, label %.lr.ph18.i, !llvm.loop !111

repeat_pool_clear.exit:                           ; preds = %.lr.ph18.i, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pattern_new_match(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  %i.h = tail call ptr @_PyObject_GC_NewVar(ptr noundef %i.c, i64 noundef %i.g) #13 ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %1, align 8, !tbaa !26
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.c, %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 40
  store ptr %1, ptr %i.l, align 8, !tbaa !112
  %i.m = getelementptr i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103  ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_INCREF.exit, %bb.e
  %i.r = getelementptr i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr i8, ptr %i.h, i64 32
  store ptr null, ptr %i.s, align 8, !tbaa !115
  %i.t = load i64, ptr %i.d, align 8, !tbaa !53
  %i.u = add i64 %i.t, 1
  %i.v = getelementptr i8, ptr %i.h, i64 72
  store i64 %i.u, ptr %i.v, align 8, !tbaa !116
  %i.w = getelementptr i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.y = getelementptr i8, ptr %2, i64 140
  %i.z = load i32, ptr %i.y, align 4, !tbaa !82
  %i.aa = getelementptr i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.x to i64                ; 4 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sext i32 %i.z to i64                    ; 4 uses
  %i.ag = sdiv i64 %i.ae, %i.af
  %i.ah = getelementptr i8, ptr %i.h, i64 80      ; 3 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !70
  %i.ai = load ptr, ptr %2, align 8, !tbaa !81
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ad
  %i.al = sdiv i64 %i.ak, %i.af
  %i.am = getelementptr i8, ptr %i.h, i64 88
  store i64 %i.al, ptr %i.am, align 8, !tbaa !70
  %i.an = load i64, ptr %i.d, align 8, !tbaa !53
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Py_NewRef.exit
  %i.ap = getelementptr i8, ptr %2, i64 156
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !85
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %2, i64 168
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %.06373 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.n ]
  %.06472 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.n ] ; 5 uses
  %.not69.not = icmp slt i64 %.06472, %i.ar
  br i1 %.not69.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.06472 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %.not70 = icmp eq ptr %i.av, null
  br i1 %.not70, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %.not71 = icmp eq ptr %i.aw, null
  br i1 %.not71, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.ax, %i.ad
  %i.az = sdiv i64 %i.ay, %i.af                   ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ah, i64 %.06472 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !70
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = sub i64 %i.bc, %i.ad
  %i.be = sdiv i64 %i.bd, %i.af                   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ba, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !70
  %i.bg = icmp sgt i64 %i.az, %i.be
  br i1 %i.bg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.bh, ptr noundef nonnull @.str.68) #13
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.h, align 8, !tbaa !26
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #13
  br label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bl = getelementptr [8 x i8], ptr %i.ah, i64 %.06472
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 -1, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.bn = add nuw nsw i64 %.06373, 1              ; 2 uses
  %i.bo = add nuw i64 %.06472, 2
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !53
  %i.bq = icmp slt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.f, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.n, %_Py_NewRef.exit
  %i.br = getelementptr i8, ptr %2, i64 120
  %i.bs = getelementptr i8, ptr %i.h, i64 48
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !tbaa !70
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !tbaa !70
  %i.bu = getelementptr i8, ptr %2, i64 160
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !86
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr %i.h, i64 64
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !118
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.h) #13
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.a
  switch i64 %3, label %bb.r [
    i64 0, label %Py_DECREF.exit
    i64 -3, label %bb.p
    i64 -9, label %bb.q
    i64 -10, label %Py_DECREF.exit.fold.split
  ]

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.by, ptr noundef nonnull @.str.69) #13
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = tail call ptr @PyErr_NoMemory() #13     ; 0 uses
  br label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.ca, ptr noundef nonnull @.str.70) #13
  br label %Py_DECREF.exit

Py_DECREF.exit.fold.split:                        ; preds = %bb.o
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.o, %Py_DECREF.exit.fold.split, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.j, %bb.b, %._crit_edge
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.o ], [ %i.h, %._crit_edge ], [ null, %bb.l ], [ null, %bb.b ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.q ], [ null, %Py_DECREF.exit.fold.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2) i64 @sre_ucs1_match(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 24 uses
  %i.c = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %i.e = getelementptr i8, ptr %0, i64 192        ; 108 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 184        ; 38 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.i, 56
  br i1 %i.j, label %bb.b, label %data_stack_grow.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.f, 56                         ; 2 uses
  %i.l = icmp slt i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %data_stack_grow.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 %i.k, 4
  %i.n = add i64 %i.f, 1080
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = tail call ptr @PyMem_Realloc(ptr noundef %i.q, i64 noundef %i.o) #13 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !88   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMem_Free(ptr noundef nonnull %i.s) #13
  store ptr null, ptr %i.p, align 8, !tbaa !88
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.p, align 8, !tbaa !88
  store i64 %i.o, ptr %i.g, align 8, !tbaa !121
  %.pre = load i64, ptr %i.e, align 8, !tbaa !120
  br label %data_stack_grow.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

data_stack_grow.exit.thread:                      ; preds = %bb.b, %bb.f, %bb.a
  %i.t = phi i64 [ %i.f, %bb.b ], [ %.pre, %bb.f ], [ %i.f, %bb.a ]
  %i.u = getelementptr i8, ptr %0, i64 176        ; 68 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f     ; 4 uses
  %i.x = add i64 %i.t, 56
  store i64 %i.x, ptr %i.e, align 8, !tbaa !120
  %i.y = getelementptr i8, ptr %i.w, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !122
  %i.z = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.z, align 4, !tbaa !124
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  store i32 %2, ptr %i.aa, align 8, !tbaa !125
  %i.ab = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 200       ; 27 uses
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 26 uses
  %i.ae = getelementptr i8, ptr %0, i64 156       ; 29 uses
  %i.af = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 208       ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 216       ; 6 uses
  %i.ai = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.al = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %.backedge1905

.backedge1905:                                    ; preds = %.backedge1905.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1905.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1905.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1905.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1905.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.backedge1905
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp ne i32 %i.aq, 0
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = zext i32 %i.aq to i64
  %i.au = icmp ult i64 %i.as, %i.at
  %or.cond1803 = select i1 %.not, i1 %i.au, i1 false
  br i1 %or.cond1803, label %.critedge1899, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %.01478, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@sre_ucs1_match:bb.a
  %i.uw = add nuw i32 %i.uu, 1
  %i.ux = sext i32 %i.uw to i64
  %i.uy = shl nsw i64 %i.ux, 3                    ; 2 uses
  %i.uz = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.va = getelementptr i8, ptr %i.bph, i64 %i.bpf
  %i.vb = sub nsw i64 0, %i.uy
  %i.vc = getelementptr i8, ptr %i.va, i64 %i.vb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uz, ptr noundef nonnull align 1 dereferenceable(1) %i.vc, i64 %i.uy, i1 false)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gg, %bb.gh, %bb.gi
  %i.vd = getelementptr i8, ptr %i.bpi, i64 16
  %i.ve = load <2 x i32>, ptr %i.vd, align 8, !tbaa !7
  store <2 x i32> %i.ve, ptr %i.ae, align 4, !tbaa !7
  br label %bb.gk

bb.gk:                                            ; preds = %bb.ft, %bb.fu, %bb.fr, %bb.fs, %bb.gj
  %.11521 = phi ptr [ %i.bqt, %bb.gj ], [ %.01520, %bb.fr ], [ %.01520, %bb.fs ], [ %.01520, %bb.fu ], [ %.01520, %bb.ft ]
  %.41509 = phi ptr [ %i.bpi, %bb.gj ], [ %.21507, %bb.fr ], [ %.21507, %bb.fs ], [ %.21507, %bb.fu ], [ %.21507, %bb.ft ]
  %.21494 = phi i32 [ %.13, %bb.gj ], [ %.11493, %bb.fr ], [ %.11493, %bb.fs ], [ %.11493, %bb.fu ], [ %.11493, %bb.ft ]
  %.21481 = phi i64 [ %i.bpb, %bb.gj ], [ %.11480, %bb.fr ], [ %.11480, %bb.fs ], [ %.11480, %bb.fu ], [ %.11480, %bb.ft ]
  %.3 = phi ptr [ %i.bqr, %bb.gj ], [ %.2, %bb.fr ], [ %.2, %bb.fs ], [ %.2, %bb.fu ], [ %.2, %bb.ft ] ; 2 uses
  %i.vf = load i32, ptr %.3, align 4, !tbaa !7
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr [4 x i8], ptr %.3, i64 %i.vg
  br label %bb.fp, !llvm.loop !136

bb.gl:                                            ; preds = %bb.fp
  %i.vi = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.vi, null
  br i1 %.not1784, label %.critedge1899, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vj = getelementptr i8, ptr %.21507, i64 16
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !135 ; 2 uses
  %i.vl = icmp sgt i32 %i.vk, -1
  br i1 %i.vl, label %bb.gn, label %.critedge1899

bb.gn:                                            ; preds = %bb.gm
  %i.vm = add nuw i32 %i.vk, 1
  %i.vn = sext i32 %i.vm to i64
  %i.vo = shl nsw i64 %i.vn, 3
  %i.vp = load i64, ptr %i.e, align 8, !tbaa !120
  %i.vq = sub i64 %i.vp, %i.vo
  store i64 %i.vq, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1899

bb.go:                                            ; preds = %.backedge
  %i.vr = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !7
  %i.vt = zext i32 %i.vs to i64
  %i.vu = ptrtoint ptr %.151535 to i64
  %i.vv = sub i64 %i.ab, %i.vu
  %i.vw = icmp slt i64 %i.vv, %i.vt
  br i1 %i.vw, label %.critedge1899, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.vx = getelementptr i8, ptr %.12, i64 12
  %i.vy = getelementptr i8, ptr %.12, i64 8
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !7
  %i.wa = zext i32 %i.vz to i64
  %i.wb = tail call fastcc i64 @sre_ucs1_count(ptr noundef %0, ptr noundef %i.vx, i64 noundef %i.wa) ; 5 uses
  %i.wc = icmp slt i64 %i.wb, 0
  br i1 %i.wc, label %.loopexit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.wd = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 %.111490.ph ; 8 uses
  store i64 %i.wb, ptr %i.we, align 8, !tbaa !137
  %i.wf = getelementptr i8, ptr %.151535, i64 %i.wb ; 5 uses
  %i.wg = load i32, ptr %i.vr, align 4, !tbaa !7
  %i.wh = zext i32 %i.wg to i64
  %i.wi = icmp samesign ult i64 %i.wb, %i.wh
  br i1 %i.wi, label %.critedge1899, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.wj = load i32, ptr %.12, align 4, !tbaa !7
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr [4 x i8], ptr %.12, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !7
  %i.wn = icmp eq i32 %i.wm, 1
  br i1 %i.wn, label %bb.gs, label %bb.gx

bb.gs:                                            ; preds = %bb.gr
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.wp = icmp eq ptr %i.wf, %i.wo
  br i1 %i.wp, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  %i.wq = getelementptr i8, ptr %i.we, i64 40
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !125
  %.not1699 = icmp eq i32 %i.wr, 0
  br i1 %.not1699, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ws = load i32, ptr %i.ai, align 4, !tbaa !92
  %.not1700 = icmp eq i32 %i.ws, 0
  br i1 %.not1700, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.wt = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.wu = icmp eq ptr %i.wf, %i.wt
  br i1 %i.wu, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %bb.gt
  store ptr %i.wf, ptr %0, align 8, !tbaa !81
  br label %.critedge1899

bb.gx:                                            ; preds = %bb.gr, %bb.gs, %bb.gv
  %i.wv = getelementptr i8, ptr %i.we, i64 16
  %i.ww = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.wx = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.ww, ptr %i.wv, align 8, !tbaa !7
  %i.wy = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1701 = icmp ne ptr %i.wy, null
  %i.wz = icmp sgt i32 %i.wx, -1
  %or.cond1873 = select i1 %.not1701, i1 %i.wz, i1 false
  br i1 %or.cond1873, label %bb.gy, label %bb.hd

bb.gy:                                            ; preds = %bb.gx
  %i.xa = add nuw i32 %i.wx, 1
  %i.xb = sext i32 %i.xa to i64
  %i.xc = shl nsw i64 %i.xb, 3                    ; 4 uses
  %i.xd = load i64, ptr %i.g, align 8, !tbaa !121
  %i.xe = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xf = sub i64 %i.xd, %i.xe
  %i.xg = icmp ugt i64 %i.xc, %i.xf
  br i1 %i.xg, label %bb.gz, label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.xh = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.xc) ; 2 uses
  %i.xi = icmp slt i32 %i.xh, 0
  br i1 %i.xi, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.xj = sext i32 %i.xh to i64
  br label %.loopexit

bb.hb:                                            ; preds = %bb.gz
  %.not1702 = icmp eq i64 %.111490.ph, -1
  %.pre2457 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.xk = getelementptr i8, ptr %.pre2457, i64 %.111490.ph
  %spec.select2913 = select i1 %.not1702, ptr %i.we, ptr %i.xk
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gy
  %i.xl = phi ptr [ %i.wd, %bb.gy ], [ %.pre2457, %bb.hb ]
  %.51510 = phi ptr [ %i.we, %bb.gy ], [ %spec.select2913, %bb.hb ]
  %i.xm = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xn = getelementptr i8, ptr %i.xl, i64 %i.xm
  %i.xo = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xn, ptr noundef nonnull align 8 dereferenceable(1) %i.xo, i64 %i.xc, i1 false)
  %i.xp = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xq = add i64 %i.xp, %i.xc
  store i64 %i.xq, ptr %i.e, align 8, !tbaa !120
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gx
  %.61511 = phi ptr [ %.51510, %bb.hc ], [ %i.we, %bb.gx ] ; 5 uses
  %i.xr = load i32, ptr %.12, align 4, !tbaa !7   ; 2 uses
  %i.xs = zext i32 %i.xr to i64
  %i.xt = getelementptr [4 x i8], ptr %.12, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !7
  %i.xv = icmp eq i32 %i.xu, 16
  br i1 %i.xv, label %bb.he, label %._crit_edge2458

._crit_edge2458:                                  ; preds = %bb.hd
  %.pre2459 = load i64, ptr %.61511, align 8, !tbaa !137
  br label %bb.hu

bb.he:                                            ; preds = %bb.hd
  %i.xw = add i32 %i.xr, 1
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr [4 x i8], ptr %.12, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !7
  %i.ya = getelementptr i8, ptr %.61511, i64 8
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !26
  %.71512.promoted.pre = load i64, ptr %.61511, align 8, !tbaa !137
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hs, %bb.he
  %.71512.promoted = phi i64 [ %.71512.promoted.pre, %bb.he ], [ %i.aag, %bb.hs ] ; 2 uses
  %.21522 = phi ptr [ %i.wf, %bb.he ], [ %i.aae, %bb.hs ]
  %.71512 = phi ptr [ %.61511, %bb.he ], [ %i.bpi, %bb.hs ] ; 10 uses
  %.31495 = phi i32 [ %.14, %bb.he ], [ %.13, %bb.hs ] ; 4 uses
  %.31482 = phi i64 [ %.111490.ph, %bb.he ], [ %i.bpb, %bb.hs ] ; 3 uses
  %.4 = phi ptr [ %.12, %bb.he ], [ %i.brr, %bb.hs ] ; 6 uses
  %i.yb = getelementptr i8, ptr %.4, i64 4
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !7
  %i.yd = zext i32 %i.yc to i64                   ; 2 uses
  %.not17062176 = icmp slt i64 %.71512.promoted, %i.yd
  br i1 %.not17062176, label %._crit_edge2180, label %.lr.ph2179

.lr.ph2179:                                       ; preds = %bb.hf
  %i.ye = getelementptr i8, ptr %.71512, i64 8
  br label %bb.hg

bb.hg:                                            ; preds = %.lr.ph2179, %.critedge2
  %.315232177 = phi ptr [ %.21522, %.lr.ph2179 ], [ %i.yj, %.critedge2 ] ; 5 uses
  %i.yf = phi i64 [ %.71512.promoted, %.lr.ph2179 ], [ %i.yk, %.critedge2 ] ; 2 uses
  %.not1707 = icmp ult ptr %.315232177, %i.b
  br i1 %.not1707, label %bb.hh, label %.critedge2

bb.hh:                                            ; preds = %bb.hg
  %i.yg = load i8, ptr %.315232177, align 1, !tbaa !26
  %i.yh = zext i8 %i.yg to i32
  %i.yi = load i32, ptr %i.ye, align 8, !tbaa !26
  %.not1708 = icmp eq i32 %i.yi, %i.yh
  br i1 %.not1708, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.hg, %bb.hh
  %i.yj = getelementptr i8, ptr %.315232177, i64 -1
  %i.yk = add nsw i64 %i.yf, -1                   ; 2 uses
  store i64 %i.yk, ptr %.71512, align 8, !tbaa !137
  %.not1706.not = icmp sgt i64 %i.yf, %i.yd
  br i1 %.not1706.not, label %bb.hg, label %._crit_edge2180, !llvm.loop !138

.critedge:                                        ; preds = %bb.hh
  store ptr %.315232177, ptr %0, align 8, !tbaa !81
  %i.yl = getelementptr i8, ptr %.71512, i64 24
  store ptr %.4, ptr %i.yl, align 8, !tbaa !133
  %i.ym = getelementptr i8, ptr %.71512, i64 32
  store ptr %.315232177, ptr %i.ym, align 8, !tbaa !134
  %i.yn = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.yo = load i64, ptr %i.g, align 8, !tbaa !121
  %i.yp = sub i64 %i.yo, %i.yn
  %i.yq = icmp ult i64 %i.yp, 56
  br i1 %i.yq, label %bb.hi, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre2464 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.hl

bb.hi:                                            ; preds = %.critedge
  %i.yr = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.ys = icmp slt i32 %i.yr, 0
  br i1 %i.ys, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.yt = sext i32 %i.yr to i64
  br label %.loopexit

bb.hk:                                            ; preds = %bb.hi
  %.not1709 = icmp eq i64 %.31482, -1
  %.pre2465 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.yu = getelementptr i8, ptr %.pre2465, i64 %.31482
  %spec.select2914 = select i1 %.not1709, ptr %.71512, ptr %i.yu
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.critedge._crit_edge
  %i.yv = phi ptr [ %.pre2464, %.critedge._crit_edge ], [ %.pre2465, %bb.hk ]
  %.81513 = phi ptr [ %.71512, %.critedge._crit_edge ], [ %spec.select2914, %bb.hk ]
  %i.yw = getelementptr i8, ptr %i.yv, i64 %i.yn  ; 5 uses
  %i.yx = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yy = add i64 %i.yx, 56
  store i64 %i.yy, ptr %i.e, align 8, !tbaa !120
  %i.yz = load i32, ptr %.4, align 4, !tbaa !7
  %i.za = zext i32 %i.yz to i64
  %i.zb = getelementptr [4 x i8], ptr %.4, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.yw, i64 24
  store ptr %i.zb, ptr %i.zc, align 8, !tbaa !133
  %i.zd = getelementptr i8, ptr %.81513, i64 40
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !125
  %i.zf = getelementptr i8, ptr %i.yw, i64 40
  store i32 %i.ze, ptr %i.zf, align 8, !tbaa !125
  %i.zg = getelementptr i8, ptr %i.yw, i64 44
  store i32 8, ptr %i.zg, align 4, !tbaa !124
  %i.zh = getelementptr i8, ptr %i.yw, i64 48
  store i64 %.31482, ptr %i.zh, align 8, !tbaa !122
  %i.zi = load i32, ptr %.4, align 4, !tbaa !7
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr [4 x i8], ptr %.4, i64 %i.zj
  br label %.backedge1905.backedge

bb.hm:                                            ; preds = %bb.sp
  br i1 %.not1653, label %.critedge1899, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.zl = getelementptr i8, ptr %i.bpi, i64 16
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !135 ; 2 uses
  %i.zn = icmp sgt i32 %i.zm, -1
  br i1 %i.zn, label %bb.ho, label %.critedge1899

bb.ho:                                            ; preds = %bb.hn
  %i.zo = add nuw i32 %i.zm, 1
  %i.zp = sext i32 %i.zo to i64
  %i.zq = shl nsw i64 %i.zp, 3
  %i.zr = sub i64 %i.bpf, %i.zq
  store i64 %i.zr, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1899

bb.hp:                                            ; preds = %bb.sp
  br i1 %.not1653, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.zs = getelementptr i8, ptr %i.bpi, i64 16
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !135 ; 2 uses
  %i.zu = icmp sgt i32 %i.zt, -1
  br i1 %i.zu, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.zv = add nuw i32 %i.zt, 1
  %i.zw = sext i32 %i.zv to i64
  %i.zx = shl nsw i64 %i.zw, 3                    ; 2 uses
  %i.zy = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.zz = getelementptr i8, ptr %i.bph, i64 %i.bpf
  %i.aaa = sub nsw i64 0, %i.zx
  %i.aab = getelementptr i8, ptr %i.zz, i64 %i.aaa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zy, ptr noundef nonnull align 1 dereferenceable(1) %i.aab, i64 %i.zx, i1 false)
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hp, %bb.hq, %bb.hr
  %i.aac = getelementptr i8, ptr %i.bpi, i64 16
  %i.aad = load <2 x i32>, ptr %i.aac, align 8, !tbaa !7
  store <2 x i32> %i.aad, ptr %i.ae, align 4, !tbaa !7
  %i.aae = getelementptr i8, ptr %i.brt, i64 -1
  %i.aaf = load i64, ptr %i.bpi, align 8, !tbaa !137
  %i.aag = add i64 %i.aaf, -1                     ; 2 uses
  store i64 %i.aag, ptr %i.bpi, align 8, !tbaa !137
  br label %bb.hf

._crit_edge2180:                                  ; preds = %.critedge2, %bb.hf
  %i.aah = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1710 = icmp eq ptr %i.aah, null
  br i1 %.not1710, label %.critedge1899, label %bb.ht

bb.ht:                                            ; preds = %._crit_edge2180
  %i.aai = getelementptr i8, ptr %.71512, i64 16
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !135 ; 2 uses
  %i.aak = icmp sgt i32 %i.aaj, -1
  br i1 %i.aak, label %.sink.split, label %.critedge1899

bb.hu:                                            ; preds = %._crit_edge2458, %bb.ig
  %i.aal = phi i64 [ %.pre2459, %._crit_edge2458 ], [ %i.ack, %bb.ig ]
  %.41524 = phi ptr [ %i.wf, %._crit_edge2458 ], [ %i.aci, %bb.ig ] ; 2 uses
  %.91514 = phi ptr [ %.61511, %._crit_edge2458 ], [ %i.bpi, %bb.ig ] ; 8 uses
  %.41496 = phi i32 [ %.14, %._crit_edge2458 ], [ %.13, %bb.ig ] ; 4 uses
  %.41483 = phi i64 [ %.111490.ph, %._crit_edge2458 ], [ %i.bpb, %bb.ig ] ; 3 uses
  %.5 = phi ptr [ %.12, %._crit_edge2458 ], [ %i.brw, %bb.ig ] ; 6 uses
  %i.aam = getelementptr i8, ptr %.5, i64 4
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !7
  %i.aao = zext i32 %i.aan to i64
  %.not1703 = icmp slt i64 %i.aal, %i.aao
  br i1 %.not1703, label %bb.ih, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  store ptr %.41524, ptr %0, align 8, !tbaa !81
  %i.aap = getelementptr i8, ptr %.91514, i64 24
  store ptr %.5, ptr %i.aap, align 8, !tbaa !133
  %i.aaq = getelementptr i8, ptr %.91514, i64 32
  store ptr %.41524, ptr %i.aaq, align 8, !tbaa !134
  %i.aar = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.aas = load i64, ptr %i.g, align 8, !tbaa !121
  %i.aat = sub i64 %i.aas, %i.aar
  %i.aau = icmp ult i64 %i.aat, 56
  br i1 %i.aau, label %bb.hw, label %._crit_edge2460

._crit_edge2460:                                  ; preds = %bb.hv
  %.pre2461 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.hz

bb.hw:                                            ; preds = %bb.hv
  %i.aav = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.aaw = icmp slt i32 %i.aav, 0
  br i1 %i.aaw, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.aax = sext i32 %i.aav to i64
  br label %.loopexit

bb.hy:                                            ; preds = %bb.hw
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2462 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aay = getelementptr i8, ptr %.pre2462, i64 %.41483
  %spec.select2915 = select i1 %.not1705, ptr %.91514, ptr %i.aay
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %._crit_edge2460
  %i.aaz = phi ptr [ %.pre2461, %._crit_edge2460 ], [ %.pre2462, %bb.hy ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2460 ], [ %spec.select2915, %bb.hy ]
  %i.aba = getelementptr i8, ptr %i.aaz, i64 %i.aar ; 5 uses
  %i.abb = load i64, ptr %i.e, align 8, !tbaa !120
  %i.abc = add i64 %i.abb, 56
  store i64 %i.abc, ptr %i.e, align 8, !tbaa !120
  %i.abd = load i32, ptr %.5, align 4, !tbaa !7
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr [4 x i8], ptr %.5, i64 %i.abe
  %i.abg = getelementptr i8, ptr %i.aba, i64 24
  store ptr %i.abf, ptr %i.abg, align 8, !tbaa !133
  %i.abh = getelementptr i8, ptr %.101515, i64 40
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !125
  %i.abj = getelementptr i8, ptr %i.aba, i64 40
  store i32 %i.abi, ptr %i.abj, align 8, !tbaa !125
  %i.abk = getelementptr i8, ptr %i.aba, i64 44
  store i32 9, ptr %i.abk, align 4, !tbaa !124
  %i.abl = getelementptr i8, ptr %i.aba, i64 48
  store i64 %.41483, ptr %i.abl, align 8, !tbaa !122
  %i.abm = load i32, ptr %.5, align 4, !tbaa !7
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr [4 x i8], ptr %.5, i64 %i.abn
  br label %.backedge1905.backedge

bb.ia:                                            ; preds = %bb.sq
  br i1 %.not1650, label %.critedge1899, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.abp = getelementptr i8, ptr %i.bpi, i64 16
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !135 ; 2 uses
  %i.abr = icmp sgt i32 %i.abq, -1
  br i1 %i.abr, label %bb.ic, label %.critedge1899

bb.ic:                                            ; preds = %bb.ib
  %i.abs = add nuw i32 %i.abq, 1
  %i.abt = sext i32 %i.abs to i64
  %i.abu = shl nsw i64 %i.abt, 3
  %i.abv = sub i64 %i.bpf, %i.abu
end_hunk_1
begin_hunk_2_@sre_ucs2_match:bb.a
  %i.vm = sext i32 %i.vl to i64
  %i.vn = shl nsw i64 %i.vm, 3                    ; 2 uses
  %i.vo = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.vp = getelementptr i8, ptr %i.bpx, i64 %i.bpv
  %i.vq = sub nsw i64 0, %i.vn
  %i.vr = getelementptr i8, ptr %i.vp, i64 %i.vq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vo, ptr noundef nonnull align 1 dereferenceable(1) %i.vr, i64 %i.vn, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gj, %bb.gk, %bb.gl
  %i.vs = getelementptr i8, ptr %i.bpy, i64 16
  %i.vt = load <2 x i32>, ptr %i.vs, align 8, !tbaa !7
  store <2 x i32> %i.vt, ptr %i.ac, align 4, !tbaa !7
  br label %bb.gn

bb.gn:                                            ; preds = %bb.fw, %bb.fx, %bb.fu, %bb.fv, %bb.gm
  %.11521 = phi ptr [ %i.brj, %bb.gm ], [ %.01520, %bb.fu ], [ %.01520, %bb.fv ], [ %.01520, %bb.fx ], [ %.01520, %bb.fw ]
  %.41509 = phi ptr [ %i.bpy, %bb.gm ], [ %.21507, %bb.fu ], [ %.21507, %bb.fv ], [ %.21507, %bb.fx ], [ %.21507, %bb.fw ]
  %.21494 = phi i32 [ %.13, %bb.gm ], [ %.11493, %bb.fu ], [ %.11493, %bb.fv ], [ %.11493, %bb.fx ], [ %.11493, %bb.fw ]
  %.21481 = phi i64 [ %i.bpr, %bb.gm ], [ %.11480, %bb.fu ], [ %.11480, %bb.fv ], [ %.11480, %bb.fx ], [ %.11480, %bb.fw ]
  %.3 = phi ptr [ %i.brh, %bb.gm ], [ %.2, %bb.fu ], [ %.2, %bb.fv ], [ %.2, %bb.fx ], [ %.2, %bb.fw ] ; 2 uses
  %i.vu = load i32, ptr %.3, align 4, !tbaa !7
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr [4 x i8], ptr %.3, i64 %i.vv
  br label %bb.fs, !llvm.loop !162

bb.go:                                            ; preds = %bb.fs
  %i.vx = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.vx, null
  br i1 %.not1784, label %.critedge1878, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vy = getelementptr i8, ptr %.21507, i64 16
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !161 ; 2 uses
  %i.wa = icmp sgt i32 %i.vz, -1
  br i1 %i.wa, label %bb.gq, label %.critedge1878

bb.gq:                                            ; preds = %bb.gp
  %i.wb = add nuw i32 %i.vz, 1
  %i.wc = sext i32 %i.wb to i64
  %i.wd = shl nsw i64 %i.wc, 3
  %i.we = load i64, ptr %i.e, align 8, !tbaa !120
  %i.wf = sub i64 %i.we, %i.wd
  store i64 %i.wf, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.gr:                                            ; preds = %.backedge
  %i.wg = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !7
  %i.wi = zext i32 %i.wh to i64
  %i.wj = ptrtoint ptr %.151535 to i64
  %i.wk = sub i64 %i.ab, %i.wj
  %i.wl = ashr exact i64 %i.wk, 1
  %i.wm = icmp slt i64 %i.wl, %i.wi
  br i1 %i.wm, label %.critedge1878, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.wn = getelementptr i8, ptr %.12, i64 12
  %i.wo = getelementptr i8, ptr %.12, i64 8
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !7
  %i.wq = zext i32 %i.wp to i64
  %i.wr = tail call fastcc i64 @sre_ucs2_count(ptr noundef %0, ptr noundef %i.wn, i64 noundef %i.wq) ; 5 uses
  %i.ws = icmp slt i64 %i.wr, 0
  br i1 %i.ws, label %.loopexit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.wt = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 %.111490.ph ; 8 uses
  store i64 %i.wr, ptr %i.wu, align 8, !tbaa !163
  %i.wv = getelementptr [2 x i8], ptr %.151535, i64 %i.wr ; 5 uses
  %i.ww = load i32, ptr %i.wg, align 4, !tbaa !7
  %i.wx = zext i32 %i.ww to i64
  %i.wy = icmp samesign ult i64 %i.wr, %i.wx
  br i1 %i.wy, label %.critedge1878, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.wz = load i32, ptr %.12, align 4, !tbaa !7
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr [4 x i8], ptr %.12, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !7
  %i.xd = icmp eq i32 %i.xc, 1
  br i1 %i.xd, label %bb.gv, label %bb.ha

bb.gv:                                            ; preds = %bb.gu
  %i.xe = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.xf = icmp eq ptr %i.wv, %i.xe
  br i1 %i.xf, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.xg = getelementptr i8, ptr %i.wu, i64 40
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !156
  %.not1699 = icmp eq i32 %i.xh, 0
  br i1 %.not1699, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.xi = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1700 = icmp eq i32 %i.xi, 0
  br i1 %.not1700, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.xj = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.xk = icmp eq ptr %i.wv, %i.xj
  br i1 %i.xk, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %bb.gw
  store ptr %i.wv, ptr %0, align 8, !tbaa !81
  br label %.critedge1878

bb.ha:                                            ; preds = %bb.gu, %bb.gv, %bb.gy
  %i.xl = getelementptr i8, ptr %i.wu, i64 16
  %i.xm = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.xn = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.xm, ptr %i.xl, align 8, !tbaa !7
  %i.xo = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1701 = icmp ne ptr %i.xo, null
  %i.xp = icmp sgt i32 %i.xn, -1
  %or.cond1857 = select i1 %.not1701, i1 %i.xp, i1 false
  br i1 %or.cond1857, label %bb.hb, label %bb.hg

bb.hb:                                            ; preds = %bb.ha
  %i.xq = add nuw i32 %i.xn, 1
  %i.xr = sext i32 %i.xq to i64
  %i.xs = shl nsw i64 %i.xr, 3                    ; 4 uses
  %i.xt = load i64, ptr %i.g, align 8, !tbaa !121
  %i.xu = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xv = sub i64 %i.xt, %i.xu
  %i.xw = icmp ugt i64 %i.xs, %i.xv
  br i1 %i.xw, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.xx = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.xs) ; 2 uses
  %i.xy = icmp slt i32 %i.xx, 0
  br i1 %i.xy, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.xz = sext i32 %i.xx to i64
  br label %.loopexit

bb.he:                                            ; preds = %bb.hc
  %.not1702 = icmp eq i64 %.111490.ph, -1
  %.pre2421 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.ya = getelementptr i8, ptr %.pre2421, i64 %.111490.ph
  %spec.select2890 = select i1 %.not1702, ptr %i.wu, ptr %i.ya
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hb
  %i.yb = phi ptr [ %i.wt, %bb.hb ], [ %.pre2421, %bb.he ]
  %.51510 = phi ptr [ %i.wu, %bb.hb ], [ %spec.select2890, %bb.he ]
  %i.yc = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yd = getelementptr i8, ptr %i.yb, i64 %i.yc
  %i.ye = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.yd, ptr noundef nonnull align 8 dereferenceable(1) %i.ye, i64 %i.xs, i1 false)
  %i.yf = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yg = add i64 %i.yf, %i.xs
  store i64 %i.yg, ptr %i.e, align 8, !tbaa !120
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.ha
  %.61511 = phi ptr [ %.51510, %bb.hf ], [ %i.wu, %bb.ha ] ; 5 uses
  %i.yh = load i32, ptr %.12, align 4, !tbaa !7   ; 2 uses
  %i.yi = zext i32 %i.yh to i64
  %i.yj = getelementptr [4 x i8], ptr %.12, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !7
  %i.yl = icmp eq i32 %i.yk, 16
  br i1 %i.yl, label %bb.hh, label %._crit_edge2461

._crit_edge2461:                                  ; preds = %bb.hg
  %.pre2462 = load i64, ptr %.61511, align 8, !tbaa !163
  br label %bb.hx

bb.hh:                                            ; preds = %bb.hg
  %i.ym = add i32 %i.yh, 1
  %i.yn = zext i32 %i.ym to i64
  %i.yo = getelementptr [4 x i8], ptr %.12, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !7
  %i.yq = getelementptr i8, ptr %.61511, i64 8
  store i32 %i.yp, ptr %i.yq, align 8, !tbaa !26
  %.71512.promoted.pre = load i64, ptr %.61511, align 8, !tbaa !163
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hv, %bb.hh
  %.71512.promoted = phi i64 [ %.71512.promoted.pre, %bb.hh ], [ %i.aaw, %bb.hv ] ; 2 uses
  %.21522 = phi ptr [ %i.wv, %bb.hh ], [ %i.aau, %bb.hv ]
  %.71512 = phi ptr [ %.61511, %bb.hh ], [ %i.bpy, %bb.hv ] ; 10 uses
  %.31495 = phi i32 [ %.14, %bb.hh ], [ %.13, %bb.hv ] ; 4 uses
  %.31482 = phi i64 [ %.111490.ph, %bb.hh ], [ %i.bpr, %bb.hv ] ; 3 uses
  %.4 = phi ptr [ %.12, %bb.hh ], [ %i.bsh, %bb.hv ] ; 6 uses
  %i.yr = getelementptr i8, ptr %.4, i64 4
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !7
  %i.yt = zext i32 %i.ys to i64                   ; 2 uses
  %.not17062158 = icmp slt i64 %.71512.promoted, %i.yt
  br i1 %.not17062158, label %._crit_edge2162, label %.lr.ph2161

.lr.ph2161:                                       ; preds = %bb.hi
  %i.yu = getelementptr i8, ptr %.71512, i64 8
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph2161, %.critedge2
  %.315232159 = phi ptr [ %.21522, %.lr.ph2161 ], [ %i.yz, %.critedge2 ] ; 5 uses
  %i.yv = phi i64 [ %.71512.promoted, %.lr.ph2161 ], [ %i.za, %.critedge2 ] ; 2 uses
  %.not1707 = icmp ult ptr %.315232159, %i.b
  br i1 %.not1707, label %bb.hk, label %.critedge2

bb.hk:                                            ; preds = %bb.hj
  %i.yw = load i16, ptr %.315232159, align 2, !tbaa !131
  %i.yx = zext i16 %i.yw to i32
  %i.yy = load i32, ptr %i.yu, align 8, !tbaa !26
  %.not1708 = icmp eq i32 %i.yy, %i.yx
  br i1 %.not1708, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.hj, %bb.hk
  %i.yz = getelementptr i8, ptr %.315232159, i64 -2
  %i.za = add nsw i64 %i.yv, -1                   ; 2 uses
  store i64 %i.za, ptr %.71512, align 8, !tbaa !163
  %.not1706.not = icmp sgt i64 %i.yv, %i.yt
  br i1 %.not1706.not, label %bb.hj, label %._crit_edge2162, !llvm.loop !164

.critedge:                                        ; preds = %bb.hk
  store ptr %.315232159, ptr %0, align 8, !tbaa !81
  %i.zb = getelementptr i8, ptr %.71512, i64 24
  store ptr %.4, ptr %i.zb, align 8, !tbaa !159
  %i.zc = getelementptr i8, ptr %.71512, i64 32
  store ptr %.315232159, ptr %i.zc, align 8, !tbaa !160
  %i.zd = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.ze = load i64, ptr %i.g, align 8, !tbaa !121
  %i.zf = sub i64 %i.ze, %i.zd
  %i.zg = icmp ult i64 %i.zf, 56
  br i1 %i.zg, label %bb.hl, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre2467 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ho

bb.hl:                                            ; preds = %.critedge
  %i.zh = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.zi = icmp slt i32 %i.zh, 0
  br i1 %i.zi, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.zj = sext i32 %i.zh to i64
  br label %.loopexit

bb.hn:                                            ; preds = %bb.hl
  %.not1709 = icmp eq i64 %.31482, -1
  %.pre2468 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.zk = getelementptr i8, ptr %.pre2468, i64 %.31482
  %spec.select2891 = select i1 %.not1709, ptr %.71512, ptr %i.zk
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.critedge._crit_edge
  %i.zl = phi ptr [ %.pre2467, %.critedge._crit_edge ], [ %.pre2468, %bb.hn ]
  %.81513 = phi ptr [ %.71512, %.critedge._crit_edge ], [ %spec.select2891, %bb.hn ]
  %i.zm = getelementptr i8, ptr %i.zl, i64 %i.zd  ; 5 uses
  %i.zn = load i64, ptr %i.e, align 8, !tbaa !120
  %i.zo = add i64 %i.zn, 56
  store i64 %i.zo, ptr %i.e, align 8, !tbaa !120
  %i.zp = load i32, ptr %.4, align 4, !tbaa !7
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr [4 x i8], ptr %.4, i64 %i.zq
  %i.zs = getelementptr i8, ptr %i.zm, i64 24
  store ptr %i.zr, ptr %i.zs, align 8, !tbaa !159
  %i.zt = getelementptr i8, ptr %.81513, i64 40
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !156
  %i.zv = getelementptr i8, ptr %i.zm, i64 40
  store i32 %i.zu, ptr %i.zv, align 8, !tbaa !156
  %i.zw = getelementptr i8, ptr %i.zm, i64 44
  store i32 8, ptr %i.zw, align 4, !tbaa !155
  %i.zx = getelementptr i8, ptr %i.zm, i64 48
  store i64 %.31482, ptr %i.zx, align 8, !tbaa !153
  %i.zy = load i32, ptr %.4, align 4, !tbaa !7
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr [4 x i8], ptr %.4, i64 %i.zz
  br label %.backedge1884.backedge

bb.hp:                                            ; preds = %bb.sk
  br i1 %.not1653, label %.critedge1878, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aab = getelementptr i8, ptr %i.bpy, i64 16
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !161 ; 2 uses
  %i.aad = icmp sgt i32 %i.aac, -1
  br i1 %i.aad, label %bb.hr, label %.critedge1878

bb.hr:                                            ; preds = %bb.hq
  %i.aae = add nuw i32 %i.aac, 1
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = shl nsw i64 %i.aaf, 3
  %i.aah = sub i64 %i.bpv, %i.aag
  store i64 %i.aah, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.hs:                                            ; preds = %bb.sk
  br i1 %.not1653, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aai = getelementptr i8, ptr %i.bpy, i64 16
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !161 ; 2 uses
  %i.aak = icmp sgt i32 %i.aaj, -1
  br i1 %i.aak, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aal = add nuw i32 %i.aaj, 1
  %i.aam = sext i32 %i.aal to i64
  %i.aan = shl nsw i64 %i.aam, 3                  ; 2 uses
  %i.aao = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.aap = getelementptr i8, ptr %i.bpx, i64 %i.bpv
  %i.aaq = sub nsw i64 0, %i.aan
  %i.aar = getelementptr i8, ptr %i.aap, i64 %i.aaq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aao, ptr noundef nonnull align 1 dereferenceable(1) %i.aar, i64 %i.aan, i1 false)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hs, %bb.ht, %bb.hu
  %i.aas = getelementptr i8, ptr %i.bpy, i64 16
  %i.aat = load <2 x i32>, ptr %i.aas, align 8, !tbaa !7
  store <2 x i32> %i.aat, ptr %i.ac, align 4, !tbaa !7
  %i.aau = getelementptr i8, ptr %i.bsj, i64 -2
  %i.aav = load i64, ptr %i.bpy, align 8, !tbaa !163
  %i.aaw = add i64 %i.aav, -1                     ; 2 uses
  store i64 %i.aaw, ptr %i.bpy, align 8, !tbaa !163
  br label %bb.hi

._crit_edge2162:                                  ; preds = %.critedge2, %bb.hi
  %i.aax = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1710 = icmp eq ptr %i.aax, null
  br i1 %.not1710, label %.critedge1878, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge2162
  %i.aay = getelementptr i8, ptr %.71512, i64 16
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !161 ; 2 uses
  %i.aba = icmp sgt i32 %i.aaz, -1
  br i1 %i.aba, label %.sink.split, label %.critedge1878

bb.hx:                                            ; preds = %._crit_edge2461, %bb.ij
  %i.abb = phi i64 [ %.pre2462, %._crit_edge2461 ], [ %i.ada, %bb.ij ]
  %.41524 = phi ptr [ %i.wv, %._crit_edge2461 ], [ %i.acy, %bb.ij ] ; 2 uses
  %.91514 = phi ptr [ %.61511, %._crit_edge2461 ], [ %i.bpy, %bb.ij ] ; 8 uses
  %.41496 = phi i32 [ %.14, %._crit_edge2461 ], [ %.13, %bb.ij ] ; 4 uses
  %.41483 = phi i64 [ %.111490.ph, %._crit_edge2461 ], [ %i.bpr, %bb.ij ] ; 3 uses
  %.5 = phi ptr [ %.12, %._crit_edge2461 ], [ %i.bsm, %bb.ij ] ; 6 uses
  %i.abc = getelementptr i8, ptr %.5, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !7
  %i.abe = zext i32 %i.abd to i64
  %.not1703 = icmp slt i64 %i.abb, %i.abe
  br i1 %.not1703, label %bb.ik, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  store ptr %.41524, ptr %0, align 8, !tbaa !81
  %i.abf = getelementptr i8, ptr %.91514, i64 24
  store ptr %.5, ptr %i.abf, align 8, !tbaa !159
  %i.abg = getelementptr i8, ptr %.91514, i64 32
  store ptr %.41524, ptr %i.abg, align 8, !tbaa !160
  %i.abh = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.abi = load i64, ptr %i.g, align 8, !tbaa !121
  %i.abj = sub i64 %i.abi, %i.abh
  %i.abk = icmp ult i64 %i.abj, 56
  br i1 %i.abk, label %bb.hz, label %._crit_edge2463

._crit_edge2463:                                  ; preds = %bb.hy
  %.pre2464 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.abl = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.abm = icmp slt i32 %i.abl, 0
  br i1 %i.abm, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.abn = sext i32 %i.abl to i64
  br label %.loopexit

bb.ib:                                            ; preds = %bb.hz
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2465 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.abo = getelementptr i8, ptr %.pre2465, i64 %.41483
  %spec.select2892 = select i1 %.not1705, ptr %.91514, ptr %i.abo
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %._crit_edge2463
  %i.abp = phi ptr [ %.pre2464, %._crit_edge2463 ], [ %.pre2465, %bb.ib ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2463 ], [ %spec.select2892, %bb.ib ]
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.abh ; 5 uses
  %i.abr = load i64, ptr %i.e, align 8, !tbaa !120
  %i.abs = add i64 %i.abr, 56
  store i64 %i.abs, ptr %i.e, align 8, !tbaa !120
  %i.abt = load i32, ptr %.5, align 4, !tbaa !7
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr [4 x i8], ptr %.5, i64 %i.abu
  %i.abw = getelementptr i8, ptr %i.abq, i64 24
  store ptr %i.abv, ptr %i.abw, align 8, !tbaa !159
  %i.abx = getelementptr i8, ptr %.101515, i64 40
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !156
  %i.abz = getelementptr i8, ptr %i.abq, i64 40
  store i32 %i.aby, ptr %i.abz, align 8, !tbaa !156
  %i.aca = getelementptr i8, ptr %i.abq, i64 44
  store i32 9, ptr %i.aca, align 4, !tbaa !155
  %i.acb = getelementptr i8, ptr %i.abq, i64 48
  store i64 %.41483, ptr %i.acb, align 8, !tbaa !153
  %i.acc = load i32, ptr %.5, align 4, !tbaa !7
  %i.acd = zext i32 %i.acc to i64
  %i.ace = getelementptr [4 x i8], ptr %.5, i64 %i.acd
  br label %.backedge1884.backedge

bb.id:                                            ; preds = %bb.sl
  br i1 %.not1650, label %.critedge1878, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.acf = getelementptr i8, ptr %i.bpy, i64 16
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !161 ; 2 uses
  %i.ach = icmp sgt i32 %i.acg, -1
  br i1 %i.ach, label %bb.if, label %.critedge1878

bb.if:                                            ; preds = %bb.ie
  %i.aci = add nuw i32 %i.acg, 1
  %i.acj = sext i32 %i.aci to i64
  %i.ack = shl nsw i64 %i.acj, 3
  %i.acl = sub i64 %i.bpv, %i.ack
end_hunk_2
begin_hunk_3_@sre_ucs4_match:bb.a
  %i.ut = sext i32 %i.us to i64
  %i.uu = shl nsw i64 %i.ut, 3                    ; 2 uses
  %i.uv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.uw = getelementptr i8, ptr %i.box, i64 %i.bov
  %i.ux = sub nsw i64 0, %i.uu
  %i.uy = getelementptr i8, ptr %i.uw, i64 %i.ux
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uv, ptr noundef nonnull align 1 dereferenceable(1) %i.uy, i64 %i.uu, i1 false)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gj, %bb.gk, %bb.gl
  %i.uz = getelementptr i8, ptr %i.boy, i64 16
  %i.va = load <2 x i32>, ptr %i.uz, align 8, !tbaa !7
  store <2 x i32> %i.va, ptr %i.ac, align 4, !tbaa !7
  br label %bb.gn

bb.gn:                                            ; preds = %bb.fw, %bb.fx, %bb.fu, %bb.fv, %bb.gm
  %.11521 = phi ptr [ %i.bqj, %bb.gm ], [ %.01520, %bb.fu ], [ %.01520, %bb.fv ], [ %.01520, %bb.fx ], [ %.01520, %bb.fw ]
  %.41509 = phi ptr [ %i.boy, %bb.gm ], [ %.21507, %bb.fu ], [ %.21507, %bb.fv ], [ %.21507, %bb.fx ], [ %.21507, %bb.fw ]
  %.21494 = phi i32 [ %.13, %bb.gm ], [ %.11493, %bb.fu ], [ %.11493, %bb.fv ], [ %.11493, %bb.fx ], [ %.11493, %bb.fw ]
  %.21481 = phi i64 [ %i.bor, %bb.gm ], [ %.11480, %bb.fu ], [ %.11480, %bb.fv ], [ %.11480, %bb.fx ], [ %.11480, %bb.fw ]
  %.3 = phi ptr [ %i.bqh, %bb.gm ], [ %.2, %bb.fu ], [ %.2, %bb.fv ], [ %.2, %bb.fx ], [ %.2, %bb.fw ] ; 2 uses
  %i.vb = load i32, ptr %.3, align 4, !tbaa !7
  %i.vc = zext i32 %i.vb to i64
  %i.vd = getelementptr [4 x i8], ptr %.3, i64 %i.vc
  br label %bb.fs, !llvm.loop !183

bb.go:                                            ; preds = %bb.fs
  %i.ve = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.ve, null
  br i1 %.not1784, label %.critedge1878, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vf = getelementptr i8, ptr %.21507, i64 16
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !182 ; 2 uses
  %i.vh = icmp sgt i32 %i.vg, -1
  br i1 %i.vh, label %bb.gq, label %.critedge1878

bb.gq:                                            ; preds = %bb.gp
  %i.vi = add nuw i32 %i.vg, 1
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i64 %i.vj, 3
  %i.vl = load i64, ptr %i.e, align 8, !tbaa !120
  %i.vm = sub i64 %i.vl, %i.vk
  store i64 %i.vm, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.gr:                                            ; preds = %.backedge
  %i.vn = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !7
  %i.vp = zext i32 %i.vo to i64
  %i.vq = ptrtoint ptr %.151535 to i64
  %i.vr = sub i64 %i.ab, %i.vq
  %i.vs = ashr exact i64 %i.vr, 2
  %i.vt = icmp slt i64 %i.vs, %i.vp
  br i1 %i.vt, label %.critedge1878, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.vu = getelementptr i8, ptr %.12, i64 12
  %i.vv = getelementptr i8, ptr %.12, i64 8
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !7
  %i.vx = zext i32 %i.vw to i64
  %i.vy = tail call fastcc i64 @sre_ucs4_count(ptr noundef %0, ptr noundef %i.vu, i64 noundef %i.vx) ; 5 uses
  %i.vz = icmp slt i64 %i.vy, 0
  br i1 %i.vz, label %.loopexit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.wa = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %i.wb = getelementptr i8, ptr %i.wa, i64 %.111490.ph ; 8 uses
  store i64 %i.vy, ptr %i.wb, align 8, !tbaa !184
  %i.wc = getelementptr [4 x i8], ptr %.151535, i64 %i.vy ; 5 uses
  %i.wd = load i32, ptr %i.vn, align 4, !tbaa !7
  %i.we = zext i32 %i.wd to i64
  %i.wf = icmp samesign ult i64 %i.vy, %i.we
  br i1 %i.wf, label %.critedge1878, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.wg = load i32, ptr %.12, align 4, !tbaa !7
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr [4 x i8], ptr %.12, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !7
  %i.wk = icmp eq i32 %i.wj, 1
  br i1 %i.wk, label %bb.gv, label %bb.ha

bb.gv:                                            ; preds = %bb.gu
  %i.wl = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.wm = icmp eq ptr %i.wc, %i.wl
  br i1 %i.wm, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.wn = getelementptr i8, ptr %i.wb, i64 40
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !177
  %.not1699 = icmp eq i32 %i.wo, 0
  br i1 %.not1699, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wp = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1700 = icmp eq i32 %i.wp, 0
  br i1 %.not1700, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.wq = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.wr = icmp eq ptr %i.wc, %i.wq
  br i1 %i.wr, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %bb.gw
  store ptr %i.wc, ptr %0, align 8, !tbaa !81
  br label %.critedge1878

bb.ha:                                            ; preds = %bb.gu, %bb.gv, %bb.gy
  %i.ws = getelementptr i8, ptr %i.wb, i64 16
  %i.wt = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.wu = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.wt, ptr %i.ws, align 8, !tbaa !7
  %i.wv = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1701 = icmp ne ptr %i.wv, null
  %i.ww = icmp sgt i32 %i.wu, -1
  %or.cond1857 = select i1 %.not1701, i1 %i.ww, i1 false
  br i1 %or.cond1857, label %bb.hb, label %bb.hg

bb.hb:                                            ; preds = %bb.ha
  %i.wx = add nuw i32 %i.wu, 1
  %i.wy = sext i32 %i.wx to i64
  %i.wz = shl nsw i64 %i.wy, 3                    ; 4 uses
  %i.xa = load i64, ptr %i.g, align 8, !tbaa !121
  %i.xb = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = icmp ugt i64 %i.wz, %i.xc
  br i1 %i.xd, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.xe = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.wz) ; 2 uses
  %i.xf = icmp slt i32 %i.xe, 0
  br i1 %i.xf, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.xg = sext i32 %i.xe to i64
  br label %.loopexit

bb.he:                                            ; preds = %bb.hc
  %.not1702 = icmp eq i64 %.111490.ph, -1
  %.pre2421 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.xh = getelementptr i8, ptr %.pre2421, i64 %.111490.ph
  %spec.select2898 = select i1 %.not1702, ptr %i.wb, ptr %i.xh
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hb
  %i.xi = phi ptr [ %i.wa, %bb.hb ], [ %.pre2421, %bb.he ]
  %.51510 = phi ptr [ %i.wb, %bb.hb ], [ %spec.select2898, %bb.he ]
  %i.xj = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xk = getelementptr i8, ptr %i.xi, i64 %i.xj
  %i.xl = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xk, ptr noundef nonnull align 8 dereferenceable(1) %i.xl, i64 %i.wz, i1 false)
  %i.xm = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xn = add i64 %i.xm, %i.wz
  store i64 %i.xn, ptr %i.e, align 8, !tbaa !120
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.ha
  %.61511 = phi ptr [ %.51510, %bb.hf ], [ %i.wb, %bb.ha ] ; 5 uses
  %i.xo = load i32, ptr %.12, align 4, !tbaa !7   ; 2 uses
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr [4 x i8], ptr %.12, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !7
  %i.xs = icmp eq i32 %i.xr, 16
  br i1 %i.xs, label %bb.hh, label %._crit_edge2461

._crit_edge2461:                                  ; preds = %bb.hg
  %.pre2462 = load i64, ptr %.61511, align 8, !tbaa !184
  br label %bb.hx

bb.hh:                                            ; preds = %bb.hg
  %i.xt = add i32 %i.xo, 1
  %i.xu = zext i32 %i.xt to i64
  %i.xv = getelementptr [4 x i8], ptr %.12, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !7
  %i.xx = getelementptr i8, ptr %.61511, i64 8
  store i32 %i.xw, ptr %i.xx, align 8, !tbaa !26
  %.71512.promoted.pre = load i64, ptr %.61511, align 8, !tbaa !184
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hv, %bb.hh
  %.71512.promoted = phi i64 [ %.71512.promoted.pre, %bb.hh ], [ %i.aac, %bb.hv ] ; 2 uses
  %.21522 = phi ptr [ %i.wc, %bb.hh ], [ %i.aaa, %bb.hv ]
  %.71512 = phi ptr [ %.61511, %bb.hh ], [ %i.boy, %bb.hv ] ; 10 uses
  %.31495 = phi i32 [ %.14, %bb.hh ], [ %.13, %bb.hv ] ; 4 uses
  %.31482 = phi i64 [ %.111490.ph, %bb.hh ], [ %i.bor, %bb.hv ] ; 3 uses
  %.4 = phi ptr [ %.12, %bb.hh ], [ %i.brh, %bb.hv ] ; 6 uses
  %i.xy = getelementptr i8, ptr %.4, i64 4
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !7
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %.not17062158 = icmp slt i64 %.71512.promoted, %i.ya
  br i1 %.not17062158, label %._crit_edge2162, label %.lr.ph2161

.lr.ph2161:                                       ; preds = %bb.hi
  %i.yb = getelementptr i8, ptr %.71512, i64 8
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph2161, %.critedge2
  %.315232159 = phi ptr [ %.21522, %.lr.ph2161 ], [ %i.yf, %.critedge2 ] ; 5 uses
  %i.yc = phi i64 [ %.71512.promoted, %.lr.ph2161 ], [ %i.yg, %.critedge2 ] ; 2 uses
  %.not1707 = icmp ult ptr %.315232159, %i.b
  br i1 %.not1707, label %bb.hk, label %.critedge2

bb.hk:                                            ; preds = %bb.hj
  %i.yd = load i32, ptr %.315232159, align 4, !tbaa !7
  %i.ye = load i32, ptr %i.yb, align 8, !tbaa !26
  %.not1708 = icmp eq i32 %i.yd, %i.ye
  br i1 %.not1708, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.hj, %bb.hk
  %i.yf = getelementptr i8, ptr %.315232159, i64 -4
  %i.yg = add nsw i64 %i.yc, -1                   ; 2 uses
  store i64 %i.yg, ptr %.71512, align 8, !tbaa !184
  %.not1706.not = icmp sgt i64 %i.yc, %i.ya
  br i1 %.not1706.not, label %bb.hj, label %._crit_edge2162, !llvm.loop !185

.critedge:                                        ; preds = %bb.hk
  store ptr %.315232159, ptr %0, align 8, !tbaa !81
  %i.yh = getelementptr i8, ptr %.71512, i64 24
  store ptr %.4, ptr %i.yh, align 8, !tbaa !180
  %i.yi = getelementptr i8, ptr %.71512, i64 32
  store ptr %.315232159, ptr %i.yi, align 8, !tbaa !181
  %i.yj = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.yk = load i64, ptr %i.g, align 8, !tbaa !121
  %i.yl = sub i64 %i.yk, %i.yj
  %i.ym = icmp ult i64 %i.yl, 56
  br i1 %i.ym, label %bb.hl, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre2467 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ho

bb.hl:                                            ; preds = %.critedge
  %i.yn = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.yo = icmp slt i32 %i.yn, 0
  br i1 %i.yo, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.yp = sext i32 %i.yn to i64
  br label %.loopexit

bb.hn:                                            ; preds = %bb.hl
  %.not1709 = icmp eq i64 %.31482, -1
  %.pre2468 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.yq = getelementptr i8, ptr %.pre2468, i64 %.31482
  %spec.select2899 = select i1 %.not1709, ptr %.71512, ptr %i.yq
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %.critedge._crit_edge
  %i.yr = phi ptr [ %.pre2467, %.critedge._crit_edge ], [ %.pre2468, %bb.hn ]
  %.81513 = phi ptr [ %.71512, %.critedge._crit_edge ], [ %spec.select2899, %bb.hn ]
  %i.ys = getelementptr i8, ptr %i.yr, i64 %i.yj  ; 5 uses
  %i.yt = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yu = add i64 %i.yt, 56
  store i64 %i.yu, ptr %i.e, align 8, !tbaa !120
  %i.yv = load i32, ptr %.4, align 4, !tbaa !7
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr [4 x i8], ptr %.4, i64 %i.yw
  %i.yy = getelementptr i8, ptr %i.ys, i64 24
  store ptr %i.yx, ptr %i.yy, align 8, !tbaa !180
  %i.yz = getelementptr i8, ptr %.81513, i64 40
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !177
  %i.zb = getelementptr i8, ptr %i.ys, i64 40
  store i32 %i.za, ptr %i.zb, align 8, !tbaa !177
  %i.zc = getelementptr i8, ptr %i.ys, i64 44
  store i32 8, ptr %i.zc, align 4, !tbaa !176
  %i.zd = getelementptr i8, ptr %i.ys, i64 48
  store i64 %.31482, ptr %i.zd, align 8, !tbaa !174
  %i.ze = load i32, ptr %.4, align 4, !tbaa !7
  %i.zf = zext i32 %i.ze to i64
  %i.zg = getelementptr [4 x i8], ptr %.4, i64 %i.zf
  br label %.backedge1884.backedge

bb.hp:                                            ; preds = %bb.sk
  br i1 %.not1653, label %.critedge1878, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.zh = getelementptr i8, ptr %i.boy, i64 16
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !182 ; 2 uses
  %i.zj = icmp sgt i32 %i.zi, -1
  br i1 %i.zj, label %bb.hr, label %.critedge1878

bb.hr:                                            ; preds = %bb.hq
  %i.zk = add nuw i32 %i.zi, 1
  %i.zl = sext i32 %i.zk to i64
  %i.zm = shl nsw i64 %i.zl, 3
  %i.zn = sub i64 %i.bov, %i.zm
  store i64 %i.zn, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.hs:                                            ; preds = %bb.sk
  br i1 %.not1653, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.zo = getelementptr i8, ptr %i.boy, i64 16
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !182 ; 2 uses
  %i.zq = icmp sgt i32 %i.zp, -1
  br i1 %i.zq, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.zr = add nuw i32 %i.zp, 1
  %i.zs = sext i32 %i.zr to i64
  %i.zt = shl nsw i64 %i.zs, 3                    ; 2 uses
  %i.zu = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.zv = getelementptr i8, ptr %i.box, i64 %i.bov
  %i.zw = sub nsw i64 0, %i.zt
  %i.zx = getelementptr i8, ptr %i.zv, i64 %i.zw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zu, ptr noundef nonnull align 1 dereferenceable(1) %i.zx, i64 %i.zt, i1 false)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hs, %bb.ht, %bb.hu
  %i.zy = getelementptr i8, ptr %i.boy, i64 16
  %i.zz = load <2 x i32>, ptr %i.zy, align 8, !tbaa !7
  store <2 x i32> %i.zz, ptr %i.ac, align 4, !tbaa !7
  %i.aaa = getelementptr i8, ptr %i.brj, i64 -4
  %i.aab = load i64, ptr %i.boy, align 8, !tbaa !184
  %i.aac = add i64 %i.aab, -1                     ; 2 uses
  store i64 %i.aac, ptr %i.boy, align 8, !tbaa !184
  br label %bb.hi

._crit_edge2162:                                  ; preds = %.critedge2, %bb.hi
  %i.aad = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1710 = icmp eq ptr %i.aad, null
  br i1 %.not1710, label %.critedge1878, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge2162
  %i.aae = getelementptr i8, ptr %.71512, i64 16
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !182 ; 2 uses
  %i.aag = icmp sgt i32 %i.aaf, -1
  br i1 %i.aag, label %.sink.split, label %.critedge1878

bb.hx:                                            ; preds = %._crit_edge2461, %bb.ij
  %i.aah = phi i64 [ %.pre2462, %._crit_edge2461 ], [ %i.acg, %bb.ij ]
  %.41524 = phi ptr [ %i.wc, %._crit_edge2461 ], [ %i.ace, %bb.ij ] ; 2 uses
  %.91514 = phi ptr [ %.61511, %._crit_edge2461 ], [ %i.boy, %bb.ij ] ; 8 uses
  %.41496 = phi i32 [ %.14, %._crit_edge2461 ], [ %.13, %bb.ij ] ; 4 uses
  %.41483 = phi i64 [ %.111490.ph, %._crit_edge2461 ], [ %i.bor, %bb.ij ] ; 3 uses
  %.5 = phi ptr [ %.12, %._crit_edge2461 ], [ %i.brm, %bb.ij ] ; 6 uses
  %i.aai = getelementptr i8, ptr %.5, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !7
  %i.aak = zext i32 %i.aaj to i64
  %.not1703 = icmp slt i64 %i.aah, %i.aak
  br i1 %.not1703, label %bb.ik, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  store ptr %.41524, ptr %0, align 8, !tbaa !81
  %i.aal = getelementptr i8, ptr %.91514, i64 24
  store ptr %.5, ptr %i.aal, align 8, !tbaa !180
  %i.aam = getelementptr i8, ptr %.91514, i64 32
  store ptr %.41524, ptr %i.aam, align 8, !tbaa !181
  %i.aan = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.aao = load i64, ptr %i.g, align 8, !tbaa !121
  %i.aap = sub i64 %i.aao, %i.aan
  %i.aaq = icmp ult i64 %i.aap, 56
  br i1 %i.aaq, label %bb.hz, label %._crit_edge2463

._crit_edge2463:                                  ; preds = %bb.hy
  %.pre2464 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.aar = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.aas = icmp slt i32 %i.aar, 0
  br i1 %i.aas, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.aat = sext i32 %i.aar to i64
  br label %.loopexit

bb.ib:                                            ; preds = %bb.hz
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2465 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aau = getelementptr i8, ptr %.pre2465, i64 %.41483
  %spec.select2900 = select i1 %.not1705, ptr %.91514, ptr %i.aau
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %._crit_edge2463
  %i.aav = phi ptr [ %.pre2464, %._crit_edge2463 ], [ %.pre2465, %bb.ib ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2463 ], [ %spec.select2900, %bb.ib ]
  %i.aaw = getelementptr i8, ptr %i.aav, i64 %i.aan ; 5 uses
  %i.aax = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aay = add i64 %i.aax, 56
  store i64 %i.aay, ptr %i.e, align 8, !tbaa !120
  %i.aaz = load i32, ptr %.5, align 4, !tbaa !7
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr [4 x i8], ptr %.5, i64 %i.aba
  %i.abc = getelementptr i8, ptr %i.aaw, i64 24
  store ptr %i.abb, ptr %i.abc, align 8, !tbaa !180
  %i.abd = getelementptr i8, ptr %.101515, i64 40
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !177
  %i.abf = getelementptr i8, ptr %i.aaw, i64 40
  store i32 %i.abe, ptr %i.abf, align 8, !tbaa !177
  %i.abg = getelementptr i8, ptr %i.aaw, i64 44
  store i32 9, ptr %i.abg, align 4, !tbaa !176
  %i.abh = getelementptr i8, ptr %i.aaw, i64 48
  store i64 %.41483, ptr %i.abh, align 8, !tbaa !174
  %i.abi = load i32, ptr %.5, align 4, !tbaa !7
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr [4 x i8], ptr %.5, i64 %i.abj
  br label %.backedge1884.backedge

bb.id:                                            ; preds = %bb.sl
  br i1 %.not1650, label %.critedge1878, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.abl = getelementptr i8, ptr %i.boy, i64 16
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !182 ; 2 uses
  %i.abn = icmp sgt i32 %i.abm, -1
  br i1 %i.abn, label %bb.if, label %.critedge1878

bb.if:                                            ; preds = %bb.ie
  %i.abo = add nuw i32 %i.abm, 1
  %i.abp = sext i32 %i.abo to i64
  %i.abq = shl nsw i64 %i.abp, 3
  %i.abr = sub i64 %i.bov, %i.abq
end_hunk_3
