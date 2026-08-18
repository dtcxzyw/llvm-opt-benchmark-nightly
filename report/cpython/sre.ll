inline.NumInlined: 368
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pattern_new_match:bb.a

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
  %.06373 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.n ]
  %.06472 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.n ] ; 5 uses
  %.not69.not = icmp slt i64 %.06472, %i.ar
  br i1 %.not69.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.06472 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !95 ; 2 uses
  %.not70 = icmp eq ptr %i.av, null
  br i1 %.not70, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %.not71 = icmp eq ptr %i.ax, null
  br i1 %.not71, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ay, %i.ad
  %i.ba = sdiv i64 %i.az, %i.af                   ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ah, i64 %.06472 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !70
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bd, %i.ad
  %i.bf = sdiv i64 %i.be, %i.af                   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 24
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !70
  %i.bh = icmp sgt i64 %i.ba, %i.bf
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.bi, ptr noundef nonnull @.str.68) #13
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %.not.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.h, align 8, !tbaa !26
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #13
  br label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bm = getelementptr [8 x i8], ptr %i.ah, i64 %.06472
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 -1, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.bo = add nuw nsw i64 %.06373, 1              ; 2 uses
  %i.bp = add nuw i64 %.06472, 2
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !53
  %i.br = icmp slt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.f, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.n, %_Py_NewRef.exit
  %i.bs = getelementptr i8, ptr %2, i64 120
  %i.bt = getelementptr i8, ptr %i.h, i64 48
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !tbaa !70
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !tbaa !70
  %i.bv = getelementptr i8, ptr %2, i64 160
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !86
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr i8, ptr %i.h, i64 64
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !118
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
  %i.bz = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.bz, ptr noundef nonnull @.str.69) #13
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.o
  %i.ca = tail call ptr @PyErr_NoMemory() #13     ; 0 uses
  br label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.cb, ptr noundef nonnull @.str.70) #13
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
  %i.g = getelementptr i8, ptr %0, i64 184        ; 40 uses
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
  %i.u = getelementptr i8, ptr %0, i64 176        ; 71 uses
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
  %i.ag = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.ah = getelementptr i8, ptr %0, i64 216       ; 8 uses
  %i.ai = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.al = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %.backedge1915

.backedge1915:                                    ; preds = %.backedge1915.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1915.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1915.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1915.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1915.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.backedge1915
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp ne i32 %i.aq, 0
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = zext i32 %i.aq to i64
  %i.au = icmp ult i64 %i.as, %i.at
  %or.cond1803 = select i1 %.not, i1 %i.au, i1 false
  br i1 %or.cond1803, label %.critedge1909, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr i8, ptr %.01478, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = add i32 %i.aw, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr %.01478, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.backedge1915
  %.1 = phi ptr [ %i.az, %bb.i ], [ %.01478, %.backedge1915 ] ; 2 uses
  %i.ba = add i32 %.01492, 1                      ; 3 uses
  %i.bb = and i32 %i.ba, 4095
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %.preheader1914

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call i32 @PyErr_CheckSignals() #13
  %.not1640 = icmp eq i32 %i.bd, 0
  br i1 %.not1640, label %.preheader1914, label %.loopexit

bb.l:                                             ; preds = %.backedge
  %i.be = load i32, ptr %.12, align 4, !tbaa !7   ; 9 uses
  %i.bf = and i32 %i.be, 1
  %.not1733 = icmp eq i32 %i.bf, 0
  br i1 %.not1733, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = sdiv i32 %i.be, 2
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.af, align 8, !tbaa !86
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = load i32, ptr %i.ae, align 4, !tbaa !85 ; 5 uses
  %i.bj = icmp sgt i32 %i.be, %i.bi
  br i1 %i.bj, label %.preheader1910, label %bb.o

.preheader1910:                                   ; preds = %bb.n
  %.015362176 = add nsw i32 %i.bi, 1
  %i.bk = icmp slt i32 %.015362176, %i.be
  br i1 %i.bk, label %.lr.ph2178.preheader, label %._crit_edge2179

.lr.ph2178.preheader:                             ; preds = %.preheader1910
  %i.bl = sext i32 %i.bi to i64
  %i.bm = add nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = xor i32 %i.bi, -1
  %i.bo = add i32 %i.be, %i.bn
  %i.bp = add i32 %i.be, -2
  %i.bq = sub i32 %i.bp, %i.bi
  %xtraiter = and i32 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2178.prol.loopexit, label %.lr.ph2178.prol

.lr.ph2178.prol:                                  ; preds = %.lr.ph2178.preheader, %.lr.ph2178.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph2178.prol ], [ %i.bm, %.lr.ph2178.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2178.prol ], [ 0, %.lr.ph2178.preheader ]
  %i.br = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv.prol
  store ptr null, ptr %i.bs, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2178.prol.loopexit, label %.lr.ph2178.prol, !llvm.loop !126

.lr.ph2178.prol.loopexit:                         ; preds = %.lr.ph2178.prol, %.lr.ph2178.preheader
  %indvars.iv.unr = phi i64 [ %i.bm, %.lr.ph2178.preheader ], [ %indvars.iv.next.prol, %.lr.ph2178.prol ]
  %i.bt = icmp ult i32 %i.bq, 3
  br i1 %i.bt, label %._crit_edge2179, label %.lr.ph2178

.lr.ph2178:                                       ; preds = %.lr.ph2178.prol.loopexit, %.lr.ph2178
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2178 ], [ %indvars.iv.unr, %.lr.ph2178.prol.loopexit ] ; 5 uses
  %i.bu = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv
  store ptr null, ptr %i.bv, align 8, !tbaa !95
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !95
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store ptr null, ptr %i.cb, align 8, !tbaa !95
  %i.cc = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 24
  store ptr null, ptr %i.ce, align 8, !tbaa !95
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond2443.not.3 = icmp eq i32 %i.be, %lftr.wideiv.3
  br i1 %exitcond2443.not.3, label %._crit_edge2179, label %.lr.ph2178, !llvm.loop !128

._crit_edge2179:                                  ; preds = %.lr.ph2178.prol.loopexit, %.lr.ph2178, %.preheader1910
  store i32 %i.be, ptr %i.ae, align 4, !tbaa !85
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge2179, %bb.n
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cg = sext i32 %i.be to i64
  %i.ch = getelementptr [8 x i8], ptr %i.cf, i64 %i.cg
  store ptr %.151535, ptr %i.ch, align 8, !tbaa !95
  %i.ci = getelementptr i8, ptr %.12, i64 4
  %i.cj = add i32 %.14, 1                         ; 2 uses
  %i.ck = and i32 %i.cj, 4095
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = tail call i32 @PyErr_CheckSignals() #13
  %.not1734 = icmp eq i32 %i.cm, 0
  br i1 %.not1734, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cn = getelementptr i8, ptr %.12, i64 8
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !7
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.v, %bb.aa, %bb.ch, %bb.cm, %bb.cr, %bb.cv, %bb.da, %bb.dg, %bb.dl, %bb.dq, %bb.dw, %bb.eb, %bb.eh, %bb.en, %bb.es, %bb.ex, %bb.fa, %bb.jx, %bb.pa, %bb.pi, %bb.po, %bb.pu, %bb.py, %bb.qc, %bb.qf
  %.sink2930.sink.be = phi i32 [ %i.co, %bb.q ], [ %i.cz, %bb.v ], [ %i.dl, %bb.aa ], [ %i.kn, %bb.ch ], [ %i.kz, %bb.cm ], [ %i.li, %bb.cr ], [ %i.lp, %bb.cv ], [ %i.md, %bb.da ], [ %i.ms, %bb.dg ], [ %i.ne, %bb.dl ], [ %i.ny, %bb.dq ], [ %i.oo, %bb.dw ], [ %i.pb, %bb.eb ], [ %i.pv, %bb.eh ], [ %i.qn, %bb.en ], [ %i.rc, %bb.es ], [ %i.rx, %bb.ex ], [ %i.sg, %bb.fa ], [ %i.ail, %bb.jx ], [ %i.bei, %bb.pa ], [ %i.bfs, %bb.pi ], [ %i.bgv, %bb.po ], [ %i.bid, %bb.pu ], [ %i.biq, %bb.py ], [ %i.bjk, %bb.qc ], [ %i.bjr, %bb.qf ]
  %.151535.be = phi ptr [ %.151535, %bb.q ], [ %i.ct, %bb.v ], [ %i.df, %bb.aa ], [ %.151535, %bb.ch ], [ %i.kt, %bb.cm ], [ %i.lc, %bb.cr ], [ %i.lj, %bb.cv ], [ %i.lx, %bb.da ], [ %i.mm, %bb.dg ], [ %i.my, %bb.dl ], [ %i.ns, %bb.dq ], [ %i.oi, %bb.dw ], [ %i.ov, %bb.eb ], [ %i.pp, %bb.eh ], [ %i.qh, %bb.en ], [ %i.qw, %bb.es ], [ %i.rr, %bb.ex ], [ %.151535, %bb.fa ], [ %i.ahr, %bb.jx ], [ %.101530.lcssa, %bb.pa ], [ %.111531.lcssa, %bb.pi ], [ %.121532.lcssa, %bb.po ], [ %.131533.lcssa, %bb.pu ], [ %.151535, %bb.py ], [ %.151535, %bb.qc ], [ %.151535, %bb.qf ]
  %.40.be = phi ptr [ %.40, %bb.q ], [ %.40, %bb.v ], [ %.40, %bb.aa ], [ %.40, %bb.ch ], [ %.40, %bb.cm ], [ %.40, %bb.cr ], [ %.40, %bb.cv ], [ %.40, %bb.da ], [ %.40, %bb.dg ], [ %.40, %bb.dl ], [ %.40, %bb.dq ], [ %.40, %bb.dw ], [ %.40, %bb.eb ], [ %.40, %bb.eh ], [ %.40, %bb.en ], [ %.40, %bb.es ], [ %.40, %bb.ex ], [ %.40, %bb.fa ], [ %i.ahq, %bb.jx ], [ %.40, %bb.pa ], [ %.40, %bb.pi ], [ %.40, %bb.po ], [ %.40, %bb.pu ], [ %.40, %bb.py ], [ %.40, %bb.qc ], [ %.40, %bb.qf ]
  %.14.be = phi i32 [ %i.cj, %bb.q ], [ %i.cu, %bb.v ], [ %i.dg, %bb.aa ], [ %i.ki, %bb.ch ], [ %i.ku, %bb.cm ], [ %i.ld, %bb.cr ], [ %i.lk, %bb.cv ], [ %i.ly, %bb.da ], [ %i.mn, %bb.dg ], [ %i.mz, %bb.dl ], [ %i.nt, %bb.dq ], [ %i.oj, %bb.dw ], [ %i.ow, %bb.eb ], [ %i.pq, %bb.eh ], [ %i.qi, %bb.en ], [ %i.qx, %bb.es ], [ %i.rs, %bb.ex ], [ %i.sb, %bb.fa ], [ %i.aih, %bb.jx ], [ %i.bed, %bb.pa ], [ %i.bfn, %bb.pi ], [ %i.bgq, %bb.po ], [ %i.bhy, %bb.pu ], [ %i.bil, %bb.py ], [ %i.bjf, %bb.qc ], [ %i.bjm, %bb.qf ]
  %.12.be = phi ptr [ %i.cn, %bb.q ], [ %i.cy, %bb.v ], [ %i.dk, %bb.aa ], [ %i.km, %bb.ch ], [ %i.ky, %bb.cm ], [ %i.lh, %bb.cr ], [ %i.lo, %bb.cv ], [ %i.mc, %bb.da ], [ %i.mr, %bb.dg ], [ %i.nd, %bb.dl ], [ %i.nx, %bb.dq ], [ %i.on, %bb.dw ], [ %i.pa, %bb.eb ], [ %i.pu, %bb.eh ], [ %i.qm, %bb.en ], [ %i.rb, %bb.es ], [ %i.rw, %bb.ex ], [ %i.sf, %bb.fa ], [ %i.aim, %bb.jx ], [ %i.beh, %bb.pa ], [ %i.bfr, %bb.pi ], [ %i.bgu, %bb.po ], [ %i.bic, %bb.pu ], [ %i.bip, %bb.py ], [ %i.bjj, %bb.qc ], [ %i.bjq, %bb.qf ]
  br label %.backedge

bb.r:                                             ; preds = %.backedge
  %.not1735 = icmp ult ptr %.151535, %i.b
  br i1 %.not1735, label %bb.s, label %.critedge1909

bb.s:                                             ; preds = %bb.r
  %i.cp = load i8, ptr %.151535, align 1, !tbaa !26
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i32, ptr %.12, align 4, !tbaa !7
  %.not1736 = icmp eq i32 %i.cr, %i.cq
  br i1 %.not1736, label %bb.t, label %.critedge1909

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %.12, i64 4
  %i.ct = getelementptr i8, ptr %.151535, i64 1
  %i.cu = add i32 %.14, 1                         ; 2 uses
  %i.cv = and i32 %i.cu, 4095
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call i32 @PyErr_CheckSignals() #13
  %.not1737 = icmp eq i32 %i.cx, 0
  br i1 %.not1737, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cy = getelementptr i8, ptr %.12, i64 8
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !7
  br label %.backedge.backedge

bb.w:                                             ; preds = %.backedge
  %.not1720 = icmp ult ptr %.151535, %i.b
  br i1 %.not1720, label %bb.x, label %.critedge1909
end_hunk_0
begin_hunk_1_@sre_ucs1_match:bb.a
  %i.pc = load i32, ptr %.12, align 4, !tbaa !7   ; 3 uses
  %i.pd = load i8, ptr %.151535, align 1, !tbaa !26 ; 2 uses
  %i.pe = zext i8 %i.pd to i32
  %i.pf = icmp eq i32 %i.pc, %i.pe
  br i1 %i.pf, label %.critedge1909, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.pg = tail call ptr @__ctype_tolower_loc() #14
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !132
  %i.pi = zext i8 %i.pd to i64                    ; 2 uses
  %i.pj = getelementptr [4 x i8], ptr %i.ph, i64 %i.pi
  %.0.i.i.i1814 = load i32, ptr %i.pj, align 4, !tbaa !7
  %i.pk = icmp eq i32 %.0.i.i.i1814, %i.pc
  br i1 %i.pk, label %.critedge1909, label %char_loc_ignore.exit1816

char_loc_ignore.exit1816:                         ; preds = %bb.ee
  %i.pl = tail call ptr @__ctype_toupper_loc() #14
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !132
  %i.pn = getelementptr [4 x i8], ptr %i.pm, i64 %i.pi
  %.0.i.i7.i1815 = load i32, ptr %i.pn, align 4, !tbaa !7
  %.not1899 = icmp eq i32 %.0.i.i7.i1815, %i.pc
  br i1 %.not1899, label %.critedge1909, label %bb.ef

bb.ef:                                            ; preds = %char_loc_ignore.exit1816
  %i.po = getelementptr i8, ptr %.12, i64 4
  %i.pp = getelementptr i8, ptr %.151535, i64 1
  %i.pq = add i32 %.14, 1                         ; 2 uses
  %i.pr = and i32 %i.pq, 4095
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.pt = tail call i32 @PyErr_CheckSignals() #13
  %.not1698 = icmp eq i32 %i.pt, 0
  br i1 %.not1698, label %bb.eh, label %.loopexit

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.pu = getelementptr i8, ptr %.12, i64 8
  %i.pv = load i32, ptr %i.po, align 4, !tbaa !7
  br label %.backedge.backedge

bb.ei:                                            ; preds = %.backedge
  %.not1675 = icmp ult ptr %.151535, %i.b
  br i1 %.not1675, label %bb.ej, label %.critedge1909

bb.ej:                                            ; preds = %bb.ei
  %i.pw = getelementptr i8, ptr %.12, i64 4
  %i.px = load i8, ptr %.151535, align 1, !tbaa !26 ; 3 uses
  %i.py = icmp sgt i8 %i.px, -1
  br i1 %i.py, label %bb.ek, label %sre_lower_ascii.exit1817

bb.ek:                                            ; preds = %bb.ej
  %i.pz = zext nneg i8 %i.px to i64
  %i.qa = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !26
  br label %sre_lower_ascii.exit1817

sre_lower_ascii.exit1817:                         ; preds = %bb.ej, %bb.ek
  %.in1893 = phi i8 [ %i.qb, %bb.ek ], [ %i.px, %bb.ej ]
  %i.qc = zext i8 %.in1893 to i32
  %i.qd = tail call fastcc i32 @sre_ucs1_charset(ptr noundef %i.pw, i32 noundef %i.qc)
  %.not1676 = icmp eq i32 %i.qd, 0
  br i1 %.not1676, label %.critedge1909, label %bb.el

bb.el:                                            ; preds = %sre_lower_ascii.exit1817
  %i.qe = load i32, ptr %.12, align 4, !tbaa !7
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr [4 x i8], ptr %.12, i64 %i.qf ; 2 uses
  %i.qh = getelementptr i8, ptr %.151535, i64 1
  %i.qi = add i32 %.14, 1                         ; 2 uses
  %i.qj = and i32 %i.qi, 4095
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ql = tail call i32 @PyErr_CheckSignals() #13
  %.not1677 = icmp eq i32 %i.ql, 0
  br i1 %.not1677, label %bb.en, label %.loopexit

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.qm = getelementptr i8, ptr %i.qg, i64 4
  %i.qn = load i32, ptr %i.qg, align 4, !tbaa !7
  br label %.backedge.backedge

bb.eo:                                            ; preds = %.backedge
  %.not1717 = icmp ult ptr %.151535, %i.b
  br i1 %.not1717, label %bb.ep, label %.critedge1909

bb.ep:                                            ; preds = %bb.eo
  %i.qo = getelementptr i8, ptr %.12, i64 4
  %i.qp = load i8, ptr %.151535, align 1, !tbaa !26
  %i.qq = zext i8 %i.qp to i32
  %i.qr = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.qq) #13
  %i.qs = tail call fastcc i32 @sre_ucs1_charset(ptr noundef %i.qo, i32 noundef %i.qr)
  %.not1718 = icmp eq i32 %i.qs, 0
  br i1 %.not1718, label %.critedge1909, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qt = load i32, ptr %.12, align 4, !tbaa !7
  %i.qu = zext i32 %i.qt to i64
  %i.qv = getelementptr [4 x i8], ptr %.12, i64 %i.qu ; 2 uses
  %i.qw = getelementptr i8, ptr %.151535, i64 1
  %i.qx = add i32 %.14, 1                         ; 2 uses
  %i.qy = and i32 %i.qx, 4095
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ra = tail call i32 @PyErr_CheckSignals() #13
  %.not1719 = icmp eq i32 %i.ra, 0
  br i1 %.not1719, label %bb.es, label %.loopexit

bb.es:                                            ; preds = %bb.eq, %bb.er
  %i.rb = getelementptr i8, ptr %i.qv, i64 4
  %i.rc = load i32, ptr %i.qv, align 4, !tbaa !7
  br label %.backedge.backedge

bb.et:                                            ; preds = %.backedge
  %.not1663 = icmp ult ptr %.151535, %i.b
  br i1 %.not1663, label %bb.eu, label %.critedge1909

bb.eu:                                            ; preds = %bb.et
  %i.rd = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.re = load i8, ptr %.151535, align 1, !tbaa !26
  %i.rf = tail call ptr @__ctype_tolower_loc() #14
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !132
  %i.rh = zext i8 %i.re to i64                    ; 2 uses
  %i.ri = getelementptr [4 x i8], ptr %i.rg, i64 %i.rh
  %.0.i.i.i1818 = load i32, ptr %i.ri, align 4, !tbaa !7 ; 2 uses
  %i.rj = tail call fastcc i32 @sre_ucs1_charset(ptr noundef readonly %i.rd, i32 noundef %.0.i.i.i1818)
  %.not.i1819 = icmp eq i32 %i.rj, 0
  br i1 %.not.i1819, label %bb.ev, label %sre_ucs1_charset_loc_ignore.exit.thread1871

bb.ev:                                            ; preds = %bb.eu
  %i.rk = tail call ptr @__ctype_toupper_loc() #14
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !132
  %i.rm = getelementptr [4 x i8], ptr %i.rl, i64 %i.rh
  %.0.i.i12.i = load i32, ptr %i.rm, align 4, !tbaa !7 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i.i12.i, %.0.i.i.i1818
  br i1 %.not11.i, label %.critedge1909, label %sre_ucs1_charset_loc_ignore.exit

sre_ucs1_charset_loc_ignore.exit:                 ; preds = %bb.ev
  %i.rn = tail call fastcc i32 @sre_ucs1_charset(ptr noundef readonly %i.rd, i32 noundef %.0.i.i12.i)
  %.not1664 = icmp eq i32 %i.rn, 0
  br i1 %.not1664, label %.critedge1909, label %sre_ucs1_charset_loc_ignore.exit.thread1871

sre_ucs1_charset_loc_ignore.exit.thread1871:      ; preds = %bb.eu, %sre_ucs1_charset_loc_ignore.exit
  %i.ro = load i32, ptr %.12, align 4, !tbaa !7
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr [4 x i8], ptr %.12, i64 %i.rp ; 2 uses
  %i.rr = getelementptr i8, ptr %.151535, i64 1
  %i.rs = add i32 %.14, 1                         ; 2 uses
  %i.rt = and i32 %i.rs, 4095
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %sre_ucs1_charset_loc_ignore.exit.thread1871
  %i.rv = tail call i32 @PyErr_CheckSignals() #13
  %.not1665 = icmp eq i32 %i.rv, 0
  br i1 %.not1665, label %bb.ex, label %.loopexit

bb.ex:                                            ; preds = %sre_ucs1_charset_loc_ignore.exit.thread1871, %bb.ew
  %i.rw = getelementptr i8, ptr %i.rq, i64 4
  %i.rx = load i32, ptr %i.rq, align 4, !tbaa !7
  br label %.backedge.backedge

bb.ey:                                            ; preds = %.backedge
  %i.ry = load i32, ptr %.12, align 4, !tbaa !7
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr [4 x i8], ptr %.12, i64 %i.rz ; 2 uses
  %i.sb = add i32 %.14, 1                         ; 2 uses
  %i.sc = and i32 %i.sb, 4095
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.se = tail call i32 @PyErr_CheckSignals() #13
  %.not1741 = icmp eq i32 %i.se, 0
  br i1 %.not1741, label %bb.fa, label %.loopexit

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.sf = getelementptr i8, ptr %i.sa, i64 4
  %i.sg = load i32, ptr %i.sa, align 4, !tbaa !7
  br label %.backedge.backedge

bb.fb:                                            ; preds = %.backedge
  %i.sh = getelementptr i8, ptr %.40, i64 16
  %i.si = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.sj = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.si, ptr %i.sh, align 8, !tbaa !7
  %i.sk = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1758 = icmp ne ptr %i.sk, null
  %i.sl = icmp sgt i32 %i.sj, -1
  %or.cond1882 = select i1 %.not1758, i1 %i.sl, i1 false
  br i1 %or.cond1882, label %bb.fc, label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  %i.sm = add nuw i32 %i.sj, 1
  %i.sn = sext i32 %i.sm to i64
  %i.so = shl nsw i64 %i.sn, 3                    ; 4 uses
  %i.sp = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.sq = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = icmp ugt i64 %i.so, %i.sr
  br i1 %i.ss, label %bb.fd, label %._crit_edge2500

._crit_edge2500:                                  ; preds = %bb.fc
  %.pre2501 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  %3 = add i64 %i.sq, %i.so                       ; 3 uses
  %i.st = icmp slt i64 %i.sp, %3
  %.pre2502.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.st, label %4, label %bb.ff

4:                                                ; preds = %bb.fd
  %5 = sdiv i64 %3, 4
  %6 = add i64 %3, 1024
  %7 = add i64 %6, %5                             ; 2 uses
  %8 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2502.pre, i64 noundef %7) #13 ; 3 uses
  %.not.not.i1822 = icmp eq ptr %8, null
  br i1 %.not.not.i1822, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1823 = icmp eq ptr %10, null
  br i1 %.not.i.i1823, label %bb.fe, label %11

11:                                               ; preds = %9
  tail call void @PyMem_Free(ptr noundef nonnull %10) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fe

12:                                               ; preds = %4
  store ptr %8, ptr %i.u, align 8, !tbaa !88
  store i64 %7, ptr %i.g, align 8, !tbaa !121
  br label %bb.ff

bb.fe:                                            ; preds = %11, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.ff:                                            ; preds = %12, %bb.fd
  %.pre2502 = phi ptr [ %8, %12 ], [ %.pre2502.pre, %bb.fd ] ; 2 uses
  %.not1759 = icmp eq i64 %.111490.ph, -1
  %i.su = getelementptr i8, ptr %.pre2502, i64 %.111490.ph
  %spec.select = select i1 %.not1759, ptr %.40, ptr %i.su
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %._crit_edge2500
  %i.sv = phi ptr [ %.pre2501, %._crit_edge2500 ], [ %.pre2502, %bb.ff ]
  %.11506 = phi ptr [ %.40, %._crit_edge2500 ], [ %spec.select, %bb.ff ]
  %i.sw = load i64, ptr %i.e, align 8, !tbaa !120
  %i.sx = getelementptr i8, ptr %i.sv, i64 %i.sw
  %i.sy = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sx, ptr noundef nonnull align 8 dereferenceable(1) %i.sy, i64 %i.so, i1 false)
  %i.sz = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ta = add i64 %i.sz, %i.so
  store i64 %i.ta, ptr %i.e, align 8, !tbaa !120
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fb, %bb.fg, %bb.gc
  %.01520 = phi ptr [ %.11521, %bb.gc ], [ %.151535, %bb.fg ], [ %.151535, %bb.fb ] ; 10 uses
  %.21507 = phi ptr [ %.41509, %bb.gc ], [ %.11506, %bb.fg ], [ %.40, %bb.fb ] ; 12 uses
  %.11493 = phi i32 [ %.21494, %bb.gc ], [ %.14, %bb.fg ], [ %.14, %bb.fb ] ; 8 uses
  %.11480 = phi i64 [ %.21481, %bb.gc ], [ %.111490.ph, %bb.fg ], [ %.111490.ph, %bb.fb ] ; 7 uses
  %.2 = phi ptr [ %i.vf, %bb.gc ], [ %.12, %bb.fg ], [ %.12, %bb.fb ] ; 9 uses
  %i.tb = load i32, ptr %.2, align 4, !tbaa !7
  %.not1783 = icmp eq i32 %i.tb, 0
  br i1 %.not1783, label %bb.gd, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.tc = getelementptr i8, ptr %.2, i64 4        ; 3 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !7
  switch i32 %i.td, label %.thread [
    i32 16, label %bb.fj
    i32 13, label %bb.fl
  ]

bb.fj:                                            ; preds = %bb.fi
  %.not1785 = icmp ult ptr %.01520, %i.b
  br i1 %.not1785, label %bb.fk, label %bb.gc

bb.fk:                                            ; preds = %bb.fj
  %i.te = load i8, ptr %.01520, align 1, !tbaa !26
  %i.tf = zext i8 %i.te to i32
  %i.tg = getelementptr i8, ptr %.2, i64 8
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !7
  %.not1786 = icmp eq i32 %i.th, %i.tf
  br i1 %.not1786, label %.thread, label %bb.gc

bb.fl:                                            ; preds = %bb.fi
  %.not1787 = icmp ult ptr %.01520, %i.b
  br i1 %.not1787, label %bb.fm, label %bb.gc

bb.fm:                                            ; preds = %bb.fl
  %i.ti = getelementptr i8, ptr %.2, i64 12
  %i.tj = load i8, ptr %.01520, align 1, !tbaa !26
  %i.tk = zext i8 %i.tj to i32
  %i.tl = tail call fastcc i32 @sre_ucs1_charset(ptr noundef %i.ti, i32 noundef %i.tk)
  %.not1788 = icmp eq i32 %i.tl, 0
  br i1 %.not1788, label %bb.gc, label %.thread

.thread:                                          ; preds = %bb.fi, %bb.fk, %bb.fm
  store ptr %.01520, ptr %0, align 8, !tbaa !81
  %i.tm = getelementptr i8, ptr %.21507, i64 24
  store ptr %.2, ptr %i.tm, align 8, !tbaa !133
  %i.tn = getelementptr i8, ptr %.21507, i64 32
  store ptr %.01520, ptr %i.tn, align 8, !tbaa !134
  %i.to = load i64, ptr %i.e, align 8, !tbaa !120 ; 5 uses
  %i.tp = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.tq = sub i64 %i.tp, %i.to
  %i.tr = icmp ult i64 %i.tq, 56
  br i1 %i.tr, label %bb.fn, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.pre2514 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fu

bb.fn:                                            ; preds = %.thread
  %i.ts = add i64 %i.to, 56                       ; 2 uses
  %i.tt = icmp slt i64 %i.tp, %i.ts
  %.pre2515.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.tt, label %bb.fo, label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.tu = sdiv i64 %i.ts, 4
  %i.tv = add i64 %i.to, 1080
  %i.tw = add i64 %i.tv, %i.tu                    ; 2 uses
  %i.tx = tail call ptr @PyMem_Realloc(ptr noundef %.pre2515.pre, i64 noundef %i.tw) #13 ; 3 uses
  %.not.not.i1827.a = icmp eq ptr %i.tx, null
  br i1 %.not.not.i1827.a, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.ty = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i1828.a = icmp eq ptr %i.ty, null
  br i1 %.not.i.i1828.a, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @PyMem_Free(ptr noundef nonnull %i.ty) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  store ptr %i.tx, ptr %i.u, align 8, !tbaa !88
  store i64 %i.tw, ptr %i.g, align 8, !tbaa !121
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq, %bb.fp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.ft:                                            ; preds = %bb.fr, %bb.fn
  %.pre2515 = phi ptr [ %i.tx, %bb.fr ], [ %.pre2515.pre, %bb.fn ] ; 2 uses
  %.not1789 = icmp eq i64 %.11480, -1
  %i.tz = getelementptr i8, ptr %.pre2515, i64 %.11480
  %spec.select2931 = select i1 %.not1789, ptr %.21507, ptr %i.tz
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread._crit_edge
  %i.ua = phi ptr [ %.pre2514, %.thread._crit_edge ], [ %.pre2515, %bb.ft ]
  %.31508 = phi ptr [ %.21507, %.thread._crit_edge ], [ %spec.select2931, %bb.ft ]
  %i.ub = getelementptr i8, ptr %i.ua, i64 %i.to  ; 5 uses
  %i.uc = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ud = add i64 %i.uc, 56
  store i64 %i.ud, ptr %i.e, align 8, !tbaa !120
  %i.ue = getelementptr i8, ptr %i.ub, i64 24
  store ptr %i.tc, ptr %i.ue, align 8, !tbaa !133
  %i.uf = getelementptr i8, ptr %.31508, i64 40
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !125
  %i.uh = getelementptr i8, ptr %i.ub, i64 40
  store i32 %i.ug, ptr %i.uh, align 8, !tbaa !125
  %i.ui = getelementptr i8, ptr %i.ub, i64 44
  store i32 11, ptr %i.ui, align 4, !tbaa !124
  %i.uj = getelementptr i8, ptr %i.ub, i64 48
  store i64 %.11480, ptr %i.uj, align 8, !tbaa !122
  br label %.backedge1915.backedge

.backedge1915.backedge:                           ; preds = %bb.fu, %bb.hd, %bb.hr, %bb.iz, %bb.kd, %bb.kl, %bb.ld, %bb.ln, %bb.lv, %bb.mh, %bb.my, %data_stack_grow.exit1842.thread, %data_stack_grow.exit1853.thread, %bb.or, %bb.qk, %bb.qx
  %.01505.be = phi ptr [ %i.aqc, %bb.ln ], [ %i.awg, %bb.my ], [ %i.ub, %bb.fu ], [ %i.aye, %data_stack_grow.exit1842.thread ], [ %i.bai, %data_stack_grow.exit1853.thread ], [ %i.bkn, %bb.qk ], [ %i.bms, %bb.qx ], [ %i.akt, %bb.kl ], [ %i.anw, %bb.ld ], [ %i.arh, %bb.lv ], [ %i.atm, %bb.mh ], [ %i.aji, %bb.kd ], [ %i.yu, %bb.hd ], [ %i.aay, %bb.hr ], [ %i.afe, %bb.iz ], [ %i.bcn, %bb.or ]
  %.01492.be = phi i32 [ %.81500, %bb.ln ], [ %.13, %bb.my ], [ %.11493, %bb.fu ], [ %.91501, %data_stack_grow.exit1842.thread ], [ %.101502, %data_stack_grow.exit1853.thread ], [ %.14, %bb.qk ], [ %.14, %bb.qx ], [ %.14, %bb.kl ], [ %.14, %bb.ld ], [ %.14, %bb.lv ], [ %.14, %bb.mh ], [ %.14, %bb.kd ], [ %.31495, %bb.hd ], [ %.41496, %bb.hr ], [ %.61498, %bb.iz ], [ %.14, %bb.or ]
  %.01479.be = phi i64 [ %i.apq, %bb.ln ], [ %i.avr, %bb.my ], [ %i.to, %bb.fu ], [ %i.axz, %data_stack_grow.exit1842.thread ], [ %i.baa, %data_stack_grow.exit1853.thread ], [ %i.bke, %bb.qk ], [ %i.bmh, %bb.qx ], [ %i.akk, %bb.kl ], [ %i.ani, %bb.ld ], [ %i.aqy, %bb.lv ], [ %i.atb, %bb.mh ], [ %i.aiz, %bb.kd ], [ %i.yl, %bb.hd ], [ %i.aap, %bb.hr ], [ %i.aev, %bb.iz ], [ %i.bce, %bb.or ]
  %.01478.be = phi ptr [ %.7, %bb.ln ], [ %i.aww, %bb.my ], [ %i.tc, %bb.fu ], [ %i.ayg, %data_stack_grow.exit1842.thread ], [ %i.bak, %data_stack_grow.exit1853.thread ], [ %i.bkp, %bb.qk ], [ %i.bmu, %bb.qx ], [ %i.alk, %bb.kl ], [ %i.aon, %bb.ld ], [ %i.ary, %bb.lv ], [ %.12, %bb.mh ], [ %i.ajw, %bb.kd ], [ %i.zi, %bb.hd ], [ %i.abm, %bb.hr ], [ %i.afs, %bb.iz ], [ %i.bcp, %bb.or ]
  br label %.backedge1915

bb.fv:                                            ; preds = %bb.rn
  br i1 %.not1782, label %.critedge1909, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.uk = getelementptr i8, ptr %i.bok, i64 16
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !135 ; 2 uses
  %i.um = icmp sgt i32 %i.ul, -1
  br i1 %i.um, label %bb.fx, label %.critedge1909

bb.fx:                                            ; preds = %bb.fw
  %i.un = add nuw i32 %i.ul, 1
  %i.uo = sext i32 %i.un to i64
  %i.up = shl nsw i64 %i.uo, 3
  %i.uq = sub i64 %i.boh, %i.up
  store i64 %i.uq, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.fy:                                            ; preds = %bb.rn
  br i1 %.not1782, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ur = getelementptr i8, ptr %i.bok, i64 16
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !135 ; 2 uses
  %i.ut = icmp sgt i32 %i.us, -1
  br i1 %i.ut, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.uu = add nuw i32 %i.us, 1
  %i.uv = sext i32 %i.uu to i64
  %i.uw = shl nsw i64 %i.uv, 3                    ; 2 uses
  %i.ux = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.uy = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.uz = sub nsw i64 0, %i.uw
  %i.va = getelementptr i8, ptr %i.uy, i64 %i.uz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ux, ptr noundef nonnull align 1 dereferenceable(1) %i.va, i64 %i.uw, i1 false)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fy, %bb.fz, %bb.ga
  %i.vb = getelementptr i8, ptr %i.bok, i64 16
  %i.vc = load <2 x i32>, ptr %i.vb, align 8, !tbaa !7
  store <2 x i32> %i.vc, ptr %i.ae, align 4, !tbaa !7
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fl, %bb.fm, %bb.fj, %bb.fk, %bb.gb
  %.11521 = phi ptr [ %i.bpv, %bb.gb ], [ %.01520, %bb.fj ], [ %.01520, %bb.fk ], [ %.01520, %bb.fm ], [ %.01520, %bb.fl ]
  %.41509 = phi ptr [ %i.bok, %bb.gb ], [ %.21507, %bb.fj ], [ %.21507, %bb.fk ], [ %.21507, %bb.fm ], [ %.21507, %bb.fl ]
  %.21494 = phi i32 [ %.13, %bb.gb ], [ %.11493, %bb.fj ], [ %.11493, %bb.fk ], [ %.11493, %bb.fm ], [ %.11493, %bb.fl ]
  %.21481 = phi i64 [ %i.bod, %bb.gb ], [ %.11480, %bb.fj ], [ %.11480, %bb.fk ], [ %.11480, %bb.fm ], [ %.11480, %bb.fl ]
  %.3 = phi ptr [ %i.bpt, %bb.gb ], [ %.2, %bb.fj ], [ %.2, %bb.fk ], [ %.2, %bb.fm ], [ %.2, %bb.fl ] ; 2 uses
  %i.vd = load i32, ptr %.3, align 4, !tbaa !7
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr [4 x i8], ptr %.3, i64 %i.ve
  br label %bb.fh, !llvm.loop !136

bb.gd:                                            ; preds = %bb.fh
  %i.vg = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.vg, null
  br i1 %.not1784, label %.critedge1909, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.vh = getelementptr i8, ptr %.21507, i64 16
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !135 ; 2 uses
  %i.vj = icmp sgt i32 %i.vi, -1
  br i1 %i.vj, label %bb.gf, label %.critedge1909

bb.gf:                                            ; preds = %bb.ge
end_hunk_1
begin_hunk_2_@sre_ucs1_match:bb.a
  br i1 %i.aau, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.aav = sext i32 %i.aat to i64
  br label %.loopexit

bb.hq:                                            ; preds = %bb.ho
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2470 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aaw = getelementptr i8, ptr %.pre2470, i64 %.41483
  %spec.select2934 = select i1 %.not1705, ptr %.91514, ptr %i.aaw
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %._crit_edge2468
  %i.aax = phi ptr [ %.pre2469.a, %._crit_edge2468 ], [ %.pre2470, %bb.hq ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2468 ], [ %spec.select2934, %bb.hq ]
  %i.aay = getelementptr i8, ptr %i.aax, i64 %i.aap ; 5 uses
  %i.aaz = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aba = add i64 %i.aaz, 56
  store i64 %i.aba, ptr %i.e, align 8, !tbaa !120
  %i.abb = load i32, ptr %.5, align 4, !tbaa !7
  %i.abc = zext i32 %i.abb to i64
  %i.abd = getelementptr [4 x i8], ptr %.5, i64 %i.abc
  %i.abe = getelementptr i8, ptr %i.aay, i64 24
  store ptr %i.abd, ptr %i.abe, align 8, !tbaa !133
  %i.abf = getelementptr i8, ptr %.101515, i64 40
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !125
  %i.abh = getelementptr i8, ptr %i.aay, i64 40
  store i32 %i.abg, ptr %i.abh, align 8, !tbaa !125
  %i.abi = getelementptr i8, ptr %i.aay, i64 44
  store i32 9, ptr %i.abi, align 4, !tbaa !124
  %i.abj = getelementptr i8, ptr %i.aay, i64 48
  store i64 %.41483, ptr %i.abj, align 8, !tbaa !122
  %i.abk = load i32, ptr %.5, align 4, !tbaa !7
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr [4 x i8], ptr %.5, i64 %i.abl
  br label %.backedge1915.backedge

bb.hs:                                            ; preds = %bb.ry
  br i1 %.not1650, label %.critedge1909, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.abn = getelementptr i8, ptr %i.bok, i64 16
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !135 ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, -1
  br i1 %i.abp, label %bb.hu, label %.critedge1909

bb.hu:                                            ; preds = %bb.ht
  %i.abq = add nuw i32 %i.abo, 1
  %i.abr = sext i32 %i.abq to i64
  %i.abs = shl nsw i64 %i.abr, 3
  %i.abt = sub i64 %i.boh, %i.abs
  store i64 %i.abt, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.hv:                                            ; preds = %bb.ry
  br i1 %.not1650, label %bb.hy, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.abu = getelementptr i8, ptr %i.bok, i64 16
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !135 ; 2 uses
  %i.abw = icmp sgt i32 %i.abv, -1
  br i1 %i.abw, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.abx = add nuw i32 %i.abv, 1
  %i.aby = sext i32 %i.abx to i64
  %i.abz = shl nsw i64 %i.aby, 3                  ; 2 uses
  %i.aca = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.acb = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.acc = sub nsw i64 0, %i.abz
  %i.acd = getelementptr i8, ptr %i.acb, i64 %i.acc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aca, ptr noundef nonnull align 1 dereferenceable(1) %i.acd, i64 %i.abz, i1 false)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hv, %bb.hw, %bb.hx
  %i.ace = getelementptr i8, ptr %i.bok, i64 16
  %i.acf = load <2 x i32>, ptr %i.ace, align 8, !tbaa !7
  store <2 x i32> %i.acf, ptr %i.ae, align 4, !tbaa !7
  %i.acg = getelementptr i8, ptr %i.bra, i64 -1
  %i.ach = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.aci = add i64 %i.ach, -1                     ; 2 uses
  store i64 %i.aci, ptr %i.bok, align 8, !tbaa !137
  br label %bb.hm, !llvm.loop !139

bb.hz:                                            ; preds = %bb.hm
  %i.acj = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1704 = icmp eq ptr %i.acj, null
  br i1 %.not1704, label %.critedge1909, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ack = getelementptr i8, ptr %.91514, i64 16
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !135 ; 2 uses
  %i.acm = icmp sgt i32 %i.acl, -1
  br i1 %i.acm, label %.sink.split, label %.critedge1909

.sink.split:                                      ; preds = %bb.ia, %bb.hl
  %.sink = phi i32 [ %i.aah, %bb.hl ], [ %i.acl, %bb.ia ]
  %.111516.ph = phi ptr [ %.71512, %bb.hl ], [ %.91514, %bb.ia ]
  %.51497.ph = phi i32 [ %.31495, %bb.hl ], [ %.41496, %bb.ia ]
  %i.acn = add nuw i32 %.sink, 1
  %i.aco = sext i32 %i.acn to i64
  %i.acp = shl nsw i64 %i.aco, 3
  %i.acq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.acr = sub i64 %i.acq, %i.acp
  store i64 %i.acr, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.ib:                                            ; preds = %.backedge
  %i.acs = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !7 ; 2 uses
  %i.acu = zext i32 %i.act to i64                 ; 2 uses
  %i.acv = ptrtoint ptr %.151535 to i64
  %i.acw = sub i64 %i.ab, %i.acv
  %i.acx = icmp slt i64 %i.acw, %i.acu
  br i1 %i.acx, label %.critedge1909, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.acy = icmp eq i32 %i.act, 0
  br i1 %i.acy, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i64 0, ptr %.40, align 8, !tbaa !137
  br label %bb.ih

bb.ie:                                            ; preds = %bb.ic
  %i.acz = getelementptr i8, ptr %.12, i64 12
  %i.ada = tail call fastcc i64 @sre_ucs1_count(ptr noundef nonnull %0, ptr noundef %i.acz, i64 noundef %i.acu) ; 5 uses
  %i.adb = icmp slt i64 %i.ada, 0
  br i1 %i.adb, label %.loopexit, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.adc = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.add = getelementptr i8, ptr %i.adc, i64 %.111490.ph ; 3 uses
  %i.ade = load i32, ptr %i.acs, align 4, !tbaa !7
  %i.adf = zext i32 %i.ade to i64
  %i.adg = icmp samesign ult i64 %i.ada, %i.adf
  br i1 %i.adg, label %.critedge1909, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store i64 %i.ada, ptr %i.add, align 8, !tbaa !137
  %i.adh = getelementptr i8, ptr %.151535, i64 %i.ada
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.id
  %.51525 = phi ptr [ %.151535, %bb.id ], [ %i.adh, %bb.ig ] ; 5 uses
  %.121517 = phi ptr [ %.40, %bb.id ], [ %i.add, %bb.ig ] ; 6 uses
  %i.adi = load i32, ptr %.12, align 4, !tbaa !7
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr [4 x i8], ptr %.12, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !7
  %i.adm = icmp eq i32 %i.adl, 1
  br i1 %i.adm, label %bb.ii, label %bb.io

bb.ii:                                            ; preds = %bb.ih
  %i.adn = getelementptr i8, ptr %.121517, i64 40
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !125
  %.not1687 = icmp eq i32 %i.ado, 0
  br i1 %.not1687, label %bb.in, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.adp = load i32, ptr %i.al, align 8, !tbaa !83
  %.not1688 = icmp eq i32 %i.adp, 0
  br i1 %.not1688, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.adq = load ptr, ptr %i.a, align 8, !tbaa !84
  %.not1689 = icmp eq ptr %.51525, %i.adq
  br i1 %.not1689, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.adr = load i32, ptr %i.ai, align 4, !tbaa !92
  %.not1690 = icmp eq i32 %i.adr, 0
  br i1 %.not1690, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ads = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.adt = icmp eq ptr %.51525, %i.ads
  br i1 %i.adt, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il, %bb.ii
  store ptr %.51525, ptr %0, align 8, !tbaa !81
  br label %.critedge1909

bb.io:                                            ; preds = %bb.ih, %bb.ik, %bb.im
  %i.adu = getelementptr i8, ptr %.121517, i64 16
  %i.adv = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.adw = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.adv, ptr %i.adu, align 8, !tbaa !7
  %i.adx = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1691 = icmp ne ptr %i.adx, null
  %i.ady = icmp sgt i32 %i.adw, -1
  %or.cond1884 = select i1 %.not1691, i1 %i.ady, i1 false
  br i1 %or.cond1884, label %bb.ip, label %bb.iu

bb.ip:                                            ; preds = %bb.io
  %i.adz = add nuw i32 %i.adw, 1
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = shl nsw i64 %i.aea, 3                  ; 4 uses
  %i.aec = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.aed = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.aee = sub i64 %i.aec, %i.aed
  %i.aef = icmp ugt i64 %i.aeb, %i.aee
  br i1 %i.aef, label %bb.iq, label %._crit_edge2460.a

._crit_edge2460.a:                                ; preds = %bb.ip
  %.pre2461.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.it

bb.iq:                                            ; preds = %bb.ip
  %13 = add i64 %i.aed, %i.aeb                    ; 3 uses
  %i.aeg = icmp slt i64 %i.aec, %13
  %.pre2462.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.aeg, label %14, label %bb.is

14:                                               ; preds = %bb.iq
  %15 = sdiv i64 %13, 4
  %16 = add i64 %13, 1024
  %17 = add i64 %16, %15                          ; 2 uses
  %18 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2462.pre, i64 noundef %17) #13 ; 3 uses
  %.not.not.i1832 = icmp eq ptr %18, null
  br i1 %.not.not.i1832, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1833 = icmp eq ptr %20, null
  br i1 %.not.i.i1833, label %bb.ir, label %21

21:                                               ; preds = %19
  tail call void @PyMem_Free(ptr noundef nonnull %20) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.ir

22:                                               ; preds = %14
  store ptr %18, ptr %i.u, align 8, !tbaa !88
  store i64 %17, ptr %i.g, align 8, !tbaa !121
  br label %bb.is

bb.ir:                                            ; preds = %21, %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.is:                                            ; preds = %22, %bb.iq
  %.pre2462 = phi ptr [ %18, %22 ], [ %.pre2462.pre, %bb.iq ] ; 2 uses
  %.not1692 = icmp eq i64 %.111490.ph, -1
  %i.aeh = getelementptr i8, ptr %.pre2462, i64 %.111490.ph
  %spec.select2938 = select i1 %.not1692, ptr %.121517, ptr %i.aeh
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %._crit_edge2460.a
  %i.aei = phi ptr [ %.pre2461.a, %._crit_edge2460.a ], [ %.pre2462, %bb.is ]
  %.131518 = phi ptr [ %.121517, %._crit_edge2460.a ], [ %spec.select2938, %bb.is ]
  %i.aej = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aek = getelementptr i8, ptr %i.aei, i64 %i.aej
  %i.ael = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aek, ptr noundef nonnull align 8 dereferenceable(1) %i.ael, i64 %i.aeb, i1 false)
  %i.aem = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aen = add i64 %i.aem, %i.aeb
  store i64 %i.aen, ptr %i.e, align 8, !tbaa !120
  br label %bb.iu

bb.iu:                                            ; preds = %bb.io, %bb.it, %bb.ji
  %.61526 = phi ptr [ %.51525, %bb.it ], [ %i.ags, %bb.ji ], [ %.51525, %bb.io ] ; 2 uses
  %.141519 = phi ptr [ %.131518, %bb.it ], [ %i.agq, %bb.ji ], [ %.121517, %bb.io ] ; 6 uses
  %.61498 = phi i32 [ %.14, %bb.it ], [ %.13, %bb.ji ], [ %.14, %bb.io ] ; 2 uses
  %.51484 = phi i64 [ %.111490.ph, %bb.it ], [ %i.bod, %bb.ji ], [ %.111490.ph, %bb.io ] ; 3 uses
  %.6 = phi ptr [ %.12, %bb.it ], [ %i.brd, %bb.ji ], [ %.12, %bb.io ] ; 6 uses
  %i.aeo = getelementptr i8, ptr %.6, i64 8
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !7 ; 2 uses
  %i.aeq = icmp eq i32 %i.aep, -1
  br i1 %i.aeq, label %.critedge4, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aer = zext i32 %i.aep to i64
  %i.aes = load i64, ptr %.141519, align 8, !tbaa !137
  %.not1693 = icmp sgt i64 %i.aes, %i.aer
  br i1 %.not1693, label %bb.jj, label %.critedge4

.critedge4:                                       ; preds = %bb.iu, %bb.iv
  store ptr %.61526, ptr %0, align 8, !tbaa !81
  %i.aet = getelementptr i8, ptr %.141519, i64 24
  store ptr %.6, ptr %i.aet, align 8, !tbaa !133
  %i.aeu = getelementptr i8, ptr %.141519, i64 32
  store ptr %.61526, ptr %i.aeu, align 8, !tbaa !134
  %i.aev = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.aew = load i64, ptr %i.g, align 8, !tbaa !121
  %i.aex = sub i64 %i.aew, %i.aev
  %i.aey = icmp ult i64 %i.aex, 56
  br i1 %i.aey, label %bb.iw, label %.critedge4._crit_edge

.critedge4._crit_edge:                            ; preds = %.critedge4
  %.pre2463.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.iz

bb.iw:                                            ; preds = %.critedge4
  %i.aez = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.afa = icmp slt i32 %i.aez, 0
  br i1 %i.afa, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.afb = sext i32 %i.aez to i64
  br label %.loopexit

bb.iy:                                            ; preds = %bb.iw
  %.not1695 = icmp eq i64 %.51484, -1
  %.pre2464 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.afc = getelementptr i8, ptr %.pre2464, i64 %.51484
  %spec.select2939 = select i1 %.not1695, ptr %.141519, ptr %i.afc
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %.critedge4._crit_edge
  %i.afd = phi ptr [ %.pre2463.a, %.critedge4._crit_edge ], [ %.pre2464, %bb.iy ]
  %.15 = phi ptr [ %.141519, %.critedge4._crit_edge ], [ %spec.select2939, %bb.iy ]
  %i.afe = getelementptr i8, ptr %i.afd, i64 %i.aev ; 5 uses
  %i.aff = load i64, ptr %i.e, align 8, !tbaa !120
  %i.afg = add i64 %i.aff, 56
  store i64 %i.afg, ptr %i.e, align 8, !tbaa !120
  %i.afh = load i32, ptr %.6, align 4, !tbaa !7
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr [4 x i8], ptr %.6, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.afe, i64 24
  store ptr %i.afj, ptr %i.afk, align 8, !tbaa !133
  %i.afl = getelementptr i8, ptr %.15, i64 40
  %i.afm = load i32, ptr %i.afl, align 8, !tbaa !125
  %i.afn = getelementptr i8, ptr %i.afe, i64 40
  store i32 %i.afm, ptr %i.afn, align 8, !tbaa !125
  %i.afo = getelementptr i8, ptr %i.afe, i64 44
  store i32 10, ptr %i.afo, align 4, !tbaa !124
  %i.afp = getelementptr i8, ptr %i.afe, i64 48
  store i64 %.51484, ptr %i.afp, align 8, !tbaa !122
  %i.afq = load i32, ptr %.6, align 4, !tbaa !7
  %i.afr = zext i32 %i.afq to i64
  %i.afs = getelementptr [4 x i8], ptr %.6, i64 %i.afr
  br label %.backedge1915.backedge

bb.ja:                                            ; preds = %bb.rz
  br i1 %.not1647, label %.critedge1909, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aft = getelementptr i8, ptr %i.bok, i64 16
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !135 ; 2 uses
  %i.afv = icmp sgt i32 %i.afu, -1
  br i1 %i.afv, label %bb.jc, label %.critedge1909

bb.jc:                                            ; preds = %bb.jb
  %i.afw = add nuw i32 %i.afu, 1
  %i.afx = sext i32 %i.afw to i64
  %i.afy = shl nsw i64 %i.afx, 3
  %i.afz = sub i64 %i.boh, %i.afy
  store i64 %i.afz, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.jd:                                            ; preds = %bb.rz
  br i1 %.not1647, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aga = getelementptr i8, ptr %i.bok, i64 16
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !135 ; 2 uses
  %i.agc = icmp sgt i32 %i.agb, -1
  br i1 %i.agc, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.agd = add nuw i32 %i.agb, 1
  %i.age = sext i32 %i.agd to i64
  %i.agf = shl nsw i64 %i.age, 3                  ; 2 uses
  %i.agg = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.agh = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.agi = sub nsw i64 0, %i.agf
  %i.agj = getelementptr i8, ptr %i.agh, i64 %i.agi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agg, ptr noundef nonnull align 1 dereferenceable(1) %i.agj, i64 %i.agf, i1 false)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jd, %bb.je, %bb.jf
  %i.agk = getelementptr i8, ptr %i.bok, i64 16
  %i.agl = load <2 x i32>, ptr %i.agk, align 8, !tbaa !7
  store <2 x i32> %i.agl, ptr %i.ae, align 4, !tbaa !7
  store ptr %i.brf, ptr %0, align 8, !tbaa !81
  %i.agm = getelementptr i8, ptr %i.brd, i64 12
  %i.agn = tail call fastcc i64 @sre_ucs1_count(ptr noundef nonnull %0, ptr noundef %i.agm, i64 noundef 1) ; 3 uses
  %i.ago = icmp slt i64 %i.agn, 0
  br i1 %i.ago, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.agp = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.agq = getelementptr i8, ptr %i.agp, i64 %i.bod ; 4 uses
  %i.agr = icmp eq i64 %i.agn, 0
  br i1 %i.agr, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.ags = getelementptr i8, ptr %i.brf, i64 1
  %i.agt = load i64, ptr %i.agq, align 8, !tbaa !137
  %i.agu = add i64 %i.agt, 1
  store i64 %i.agu, ptr %i.agq, align 8, !tbaa !137
  br label %bb.iu, !llvm.loop !140

bb.jj:                                            ; preds = %bb.jh, %bb.iv
  %.16 = phi ptr [ %.141519, %bb.iv ], [ %i.agq, %bb.jh ] ; 4 uses
  %.71499 = phi i32 [ %.61498, %bb.iv ], [ %.13, %bb.jh ] ; 3 uses
  %i.agv = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1694 = icmp eq ptr %i.agv, null
  br i1 %.not1694, label %.critedge1909, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.agw = getelementptr i8, ptr %.16, i64 16
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !135 ; 2 uses
  %i.agy = icmp sgt i32 %i.agx, -1
  br i1 %i.agy, label %bb.jl, label %.critedge1909

bb.jl:                                            ; preds = %bb.jk
  %i.agz = add nuw i32 %i.agx, 1
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = shl nsw i64 %i.aha, 3
  %i.ahc = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ahd = sub i64 %i.ahc, %i.ahb
  store i64 %i.ahd, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.jm:                                            ; preds = %.backedge
  %i.ahe = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !7
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = getelementptr i8, ptr %.151535, i64 %i.ahg
  %i.ahi = icmp ugt ptr %i.ahh, %i.b
  br i1 %i.ahi, label %.critedge1909, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.ahj = getelementptr i8, ptr %.12, i64 12
  %i.ahk = getelementptr i8, ptr %.12, i64 8
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !7
  %i.ahm = zext i32 %i.ahl to i64
  %i.ahn = tail call fastcc i64 @sre_ucs1_count(ptr noundef %0, ptr noundef %i.ahj, i64 noundef %i.ahm) ; 5 uses
  %i.aho = icmp slt i64 %i.ahn, 0
  br i1 %i.aho, label %.loopexit, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ahp = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 %.111490.ph ; 5 uses
  store i64 %i.ahn, ptr %i.ahq, align 8, !tbaa !137
  %i.ahr = getelementptr i8, ptr %.151535, i64 %i.ahn ; 4 uses
  %i.ahs = load i32, ptr %i.ahe, align 4, !tbaa !7
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = icmp samesign ult i64 %i.ahn, %i.aht
  br i1 %i.ahu, label %.critedge1909, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ahv = load i32, ptr %.12, align 4, !tbaa !7
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr [4 x i8], ptr %.12, i64 %i.ahw ; 3 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !7 ; 2 uses
  %i.ahz = icmp eq i32 %i.ahy, 1
end_hunk_2
begin_hunk_3_@sre_ucs1_match:bb.a
  store <2 x i32> %i.alz, ptr %i.aly, align 8, !tbaa !7
  %i.amb = icmp sgt i32 %i.ama, -1
  br i1 %i.amb, label %bb.kq, label %bb.kv

bb.kq:                                            ; preds = %bb.kp
  %i.amc = add nuw i32 %i.ama, 1
  %i.amd = sext i32 %i.amc to i64
  %i.ame = shl nsw i64 %i.amd, 3                  ; 4 uses
  %i.amf = load i64, ptr %i.g, align 8, !tbaa !121
  %i.amg = sub i64 %i.amf, %.pre2526
  %i.amh = icmp ugt i64 %i.ame, %i.amg
  br i1 %i.amh, label %bb.kr, label %._crit_edge2487

._crit_edge2487:                                  ; preds = %bb.kq
  %.pre2488.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ku

bb.kr:                                            ; preds = %bb.kq
  %i.ami = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.ame) ; 2 uses
  %i.amj = icmp slt i32 %i.ami, 0
  br i1 %i.amj, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.amk = sext i32 %i.ami to i64
  br label %.loopexit

bb.kt:                                            ; preds = %bb.kr
  %.not1729 = icmp eq i64 %.111490.ph, -1
  %.pre2489.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aml = getelementptr i8, ptr %.pre2489.a, i64 %.111490.ph
  %spec.select2942 = select i1 %.not1729, ptr %.40, ptr %i.aml
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %._crit_edge2487
  %i.amm = phi ptr [ %.pre2488.a, %._crit_edge2487 ], [ %.pre2489.a, %bb.kt ]
  %.19 = phi ptr [ %.40, %._crit_edge2487 ], [ %spec.select2942, %bb.kt ]
  %i.amn = load i64, ptr %i.e, align 8, !tbaa !120
  %i.amo = getelementptr i8, ptr %i.amm, i64 %i.amn
  %i.amp = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.amo, ptr noundef nonnull align 8 dereferenceable(1) %i.amp, i64 %i.ame, i1 false)
  %i.amq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.amr = add i64 %i.amq, %i.ame                 ; 2 uses
  store i64 %i.amr, ptr %i.e, align 8, !tbaa !120
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kp, %bb.ku
  %i.ams = phi i64 [ %i.amr, %bb.ku ], [ %.pre2526, %bb.kp ]
  %.20 = phi ptr [ %.19, %bb.ku ], [ %.40, %bb.kp ] ; 2 uses
  %i.amt = load i64, ptr %i.g, align 8, !tbaa !121
  %i.amu = sub i64 %i.amt, %i.ams
  %i.amv = icmp ult i64 %i.amu, 8
  br i1 %i.amv, label %bb.kw, label %._crit_edge2491

._crit_edge2491:                                  ; preds = %bb.kv
  %.pre2492 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.kz

bb.kw:                                            ; preds = %bb.kv
  %i.amw = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 8) ; 2 uses
  %i.amx = icmp slt i32 %i.amw, 0
  br i1 %i.amx, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.amy = sext i32 %i.amw to i64
  br label %.loopexit

bb.ky:                                            ; preds = %bb.kw
  %.not1730 = icmp eq i64 %.111490.ph, -1
  %.pre2493.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.amz = getelementptr i8, ptr %.pre2493.a, i64 %.111490.ph
  %spec.select2943 = select i1 %.not1730, ptr %.20, ptr %i.amz
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %._crit_edge2491
  %i.ana = phi ptr [ %.pre2492, %._crit_edge2491 ], [ %.pre2493.a, %bb.ky ]
  %.21 = phi ptr [ %.20, %._crit_edge2491 ], [ %spec.select2943, %bb.ky ] ; 5 uses
  %i.anb = load i64, ptr %i.e, align 8, !tbaa !120
  %i.anc = getelementptr i8, ptr %i.ana, i64 %i.anb
  %i.and = getelementptr i8, ptr %.21, i64 8      ; 2 uses
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !26
  %i.anf = getelementptr i8, ptr %i.ane, i64 16
  %i.ang = load i64, ptr %i.anf, align 8
  store i64 %i.ang, ptr %i.anc, align 1
  %i.anh = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ani = add i64 %i.anh, 8                      ; 4 uses
  store i64 %i.ani, ptr %i.e, align 8, !tbaa !120
  %i.anj = load ptr, ptr %0, align 8, !tbaa !81
  %i.ank = load ptr, ptr %i.and, align 8, !tbaa !26
  %i.anl = getelementptr i8, ptr %i.ank, i64 16
  store ptr %i.anj, ptr %i.anl, align 8, !tbaa !144
  %i.anm = getelementptr i8, ptr %.21, i64 24
  store ptr %.12, ptr %i.anm, align 8, !tbaa !133
  %i.ann = getelementptr i8, ptr %.21, i64 32
  store ptr %.151535, ptr %i.ann, align 8, !tbaa !134
  %i.ano = load i64, ptr %i.g, align 8, !tbaa !121
  %i.anp = sub i64 %i.ano, %i.ani
  %i.anq = icmp ult i64 %i.anp, 56
  br i1 %i.anq, label %bb.la, label %._crit_edge2494.a

._crit_edge2494.a:                                ; preds = %bb.kz
  %.pre2495.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.anr = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.ans = icmp slt i32 %i.anr, 0
  br i1 %i.ans, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.ant = sext i32 %i.anr to i64
  br label %.loopexit

bb.lc:                                            ; preds = %bb.la
  %.not1731 = icmp eq i64 %.111490.ph, -1
  %.pre2496 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.anu = getelementptr i8, ptr %.pre2496, i64 %.111490.ph
  %spec.select2944 = select i1 %.not1731, ptr %.21, ptr %i.anu
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %._crit_edge2494.a
  %i.anv = phi ptr [ %.pre2495.a, %._crit_edge2494.a ], [ %.pre2496, %bb.lc ]
  %.22 = phi ptr [ %.21, %._crit_edge2494.a ], [ %spec.select2944, %bb.lc ] ; 2 uses
  %i.anw = getelementptr i8, ptr %i.anv, i64 %i.ani ; 5 uses
  %i.anx = load i64, ptr %i.e, align 8, !tbaa !120
  %i.any = add i64 %i.anx, 56
  store i64 %i.any, ptr %i.e, align 8, !tbaa !120
  %i.anz = getelementptr i8, ptr %.22, i64 8      ; 2 uses
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !26
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !142
  %i.aod = getelementptr i8, ptr %i.aoc, i64 12
  %i.aoe = getelementptr i8, ptr %i.anw, i64 24
  store ptr %i.aod, ptr %i.aoe, align 8, !tbaa !133
  %i.aof = getelementptr i8, ptr %.22, i64 40
  %i.aog = load i32, ptr %i.aof, align 8, !tbaa !125
  %i.aoh = getelementptr i8, ptr %i.anw, i64 40
  store i32 %i.aog, ptr %i.aoh, align 8, !tbaa !125
  %i.aoi = getelementptr i8, ptr %i.anw, i64 44
  store i32 2, ptr %i.aoi, align 4, !tbaa !124
  %i.aoj = getelementptr i8, ptr %i.anw, i64 48
  store i64 %.111490.ph, ptr %i.aoj, align 8, !tbaa !122
  %i.aok = load ptr, ptr %i.anz, align 8, !tbaa !26
  %i.aol = getelementptr i8, ptr %i.aok, i64 8
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !142
  %i.aon = getelementptr i8, ptr %i.aom, i64 12
  br label %.backedge1915.backedge

bb.le:                                            ; preds = %bb.rj
  %i.aoo = getelementptr i8, ptr %i.bok, i64 16
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !135 ; 2 uses
  %i.aoq = icmp sgt i32 %i.aop, -1
  br i1 %i.aoq, label %bb.lf, label %.critedge1909

bb.lf:                                            ; preds = %bb.le
  %i.aor = add nuw i32 %i.aop, 1
  %i.aos = sext i32 %i.aor to i64
  %i.aot = shl nsw i64 %i.aos, 3
  %i.aou = sub i64 %i.bow, %i.aot
  store i64 %i.aou, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1909

bb.lg:                                            ; preds = %bb.rj
  %i.aov = getelementptr i8, ptr %i.bok, i64 8    ; 2 uses
  %i.aow = getelementptr i8, ptr %i.bok, i64 16   ; 2 uses
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !135 ; 3 uses
  %i.aoy = icmp sgt i32 %i.aox, -1
  br i1 %i.aoy, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.aoz = add nuw i32 %i.aox, 1
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = shl nsw i64 %i.apa, 3                  ; 3 uses
  %i.apc = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.apd = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ape = getelementptr i8, ptr %i.apd, i64 %i.bow
  %i.apf = sub nsw i64 0, %i.apb
  %i.apg = getelementptr i8, ptr %i.ape, i64 %i.apf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.apc, ptr noundef nonnull align 1 dereferenceable(1) %i.apg, i64 %i.apb, i1 false)
  %i.aph = load i64, ptr %i.e, align 8, !tbaa !120
  %i.api = sub i64 %i.aph, %i.apb                 ; 2 uses
  store i64 %i.api, ptr %i.e, align 8, !tbaa !120
  %.pre2522 = load i32, ptr %i.aow, align 8, !tbaa !135
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.apj = phi i64 [ %i.api, %bb.lh ], [ %i.bow, %bb.lg ]
  %i.apk = phi i32 [ %.pre2522, %bb.lh ], [ %i.aox, %bb.lg ]
  store i32 %i.apk, ptr %i.ae, align 4, !tbaa !85
  %i.apl = getelementptr i8, ptr %i.bok, i64 20
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !145
  store i32 %i.apm, ptr %i.af, align 8, !tbaa !86
  %i.apn = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.apo = add i64 %i.apn, -1
  %i.app = load ptr, ptr %i.aov, align 8, !tbaa !26
  store i64 %i.apo, ptr %i.app, align 8, !tbaa !141
  store ptr %i.boo, ptr %0, align 8, !tbaa !81
  %.pre2523 = load ptr, ptr %i.aov, align 8, !tbaa !26
  br label %bb.lj

bb.lj:                                            ; preds = %._crit_edge2524, %bb.li, %bb.ko
  %i.apq = phi i64 [ %i.apj, %bb.li ], [ %.pre2526, %bb.ko ], [ %.pre2525, %._crit_edge2524 ] ; 3 uses
  %i.apr = phi ptr [ %.pre2523, %bb.li ], [ %i.ajz, %bb.ko ], [ %i.ajz, %._crit_edge2524 ]
  %.71527 = phi ptr [ %i.boo, %bb.li ], [ %.151535, %bb.ko ], [ %.151535, %._crit_edge2524 ]
  %.23 = phi ptr [ %i.bok, %bb.li ], [ %.40, %bb.ko ], [ %.40, %._crit_edge2524 ] ; 4 uses
  %.81500 = phi i32 [ %.13, %bb.li ], [ %.14, %bb.ko ], [ %.14, %._crit_edge2524 ]
  %.61485 = phi i64 [ %i.bod, %bb.li ], [ %.111490.ph, %bb.ko ], [ %.111490.ph, %._crit_edge2524 ] ; 3 uses
  %.7 = phi ptr [ %i.bom, %bb.li ], [ %.12, %bb.ko ], [ %.12, %._crit_edge2524 ] ; 3 uses
  %i.aps = getelementptr i8, ptr %i.apr, i64 24
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !143
  store ptr %i.apt, ptr %i.ac, align 8, !tbaa !87
  %i.apu = getelementptr i8, ptr %.23, i64 24
  store ptr %.7, ptr %i.apu, align 8, !tbaa !133
  %i.apv = getelementptr i8, ptr %.23, i64 32
  store ptr %.71527, ptr %i.apv, align 8, !tbaa !134
  %i.apw = load i64, ptr %i.g, align 8, !tbaa !121
  %i.apx = sub i64 %i.apw, %i.apq
  %i.apy = icmp ult i64 %i.apx, 56
  br i1 %i.apy, label %bb.lk, label %._crit_edge2527

._crit_edge2527:                                  ; preds = %bb.lj
  %.pre2528 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  %23 = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.apz = icmp slt i32 %23, 0
  br i1 %i.apz, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %24 = sext i32 %23 to i64
  br label %.loopexit

bb.lm:                                            ; preds = %bb.lk
  %.not1798 = icmp eq i64 %.61485, -1
  %.pre2529 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aqa = getelementptr i8, ptr %.pre2529, i64 %.61485
  %spec.select2945 = select i1 %.not1798, ptr %.23, ptr %i.aqa
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %._crit_edge2527
  %i.aqb = phi ptr [ %.pre2528, %._crit_edge2527 ], [ %.pre2529, %bb.lm ]
  %.24 = phi ptr [ %.23, %._crit_edge2527 ], [ %spec.select2945, %bb.lm ]
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 %i.apq ; 5 uses
  %i.aqd = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aqe = add i64 %i.aqd, 56
  store i64 %i.aqe, ptr %i.e, align 8, !tbaa !120
  %i.aqf = getelementptr i8, ptr %i.aqc, i64 24
  store ptr %.7, ptr %i.aqf, align 8, !tbaa !133
  %i.aqg = getelementptr i8, ptr %.24, i64 40
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !125
  %i.aqi = getelementptr i8, ptr %i.aqc, i64 40
  store i32 %i.aqh, ptr %i.aqi, align 8, !tbaa !125
  %i.aqj = getelementptr i8, ptr %i.aqc, i64 44
  store i32 3, ptr %i.aqj, align 4, !tbaa !124
  %i.aqk = getelementptr i8, ptr %i.aqc, i64 48
  store i64 %.61485, ptr %i.aqk, align 8, !tbaa !122
  br label %.backedge1915.backedge

bb.lo:                                            ; preds = %bb.rk
  store ptr %i.boy, ptr %0, align 8, !tbaa !81
  br label %.critedge1909

bb.lp:                                            ; preds = %.backedge
  %i.aql = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 2 uses
  %i.aqm = getelementptr i8, ptr %.40, i64 8      ; 2 uses
  store ptr %i.aql, ptr %i.aqm, align 8, !tbaa !26
  %.not1722 = icmp eq ptr %i.aql, null
  br i1 %.not1722, label %.loopexit, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !26 ; 4 uses
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !141
  %i.aqp = add i64 %i.aqo, 1                      ; 3 uses
  store i64 %i.aqp, ptr %.40, align 8, !tbaa !137
  %i.aqq = getelementptr i8, ptr %i.aqn, i64 8
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !142
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 4
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !7
  %i.aqu = zext i32 %i.aqt to i64
  %i.aqv = icmp slt i64 %i.aqp, %i.aqu
  br i1 %i.aqv, label %bb.lr, label %bb.lx

bb.lr:                                            ; preds = %bb.lq
  store i64 %i.aqp, ptr %i.aqn, align 8, !tbaa !141
  %i.aqw = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.aqw, align 8, !tbaa !133
  %i.aqx = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.aqx, align 8, !tbaa !134
  %i.aqy = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.aqz = load i64, ptr %i.g, align 8, !tbaa !121
  %i.ara = sub i64 %i.aqz, %i.aqy
  %i.arb = icmp ult i64 %i.ara, 56
  br i1 %i.arb, label %bb.ls, label %._crit_edge2484

._crit_edge2484:                                  ; preds = %bb.lr
  %.pre2485.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.lv

bb.ls:                                            ; preds = %bb.lr
  %i.arc = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.ard = icmp slt i32 %i.arc, 0
  br i1 %i.ard, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.are = sext i32 %i.arc to i64
  br label %.loopexit

bb.lu:                                            ; preds = %bb.ls
  %.not1726 = icmp eq i64 %.111490.ph, -1
  %.pre2486 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.arf = getelementptr i8, ptr %.pre2486, i64 %.111490.ph
  %spec.select2946 = select i1 %.not1726, ptr %.40, ptr %i.arf
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %._crit_edge2484
  %i.arg = phi ptr [ %.pre2485.a, %._crit_edge2484 ], [ %.pre2486, %bb.lu ]
  %.25 = phi ptr [ %.40, %._crit_edge2484 ], [ %spec.select2946, %bb.lu ] ; 2 uses
  %i.arh = getelementptr i8, ptr %i.arg, i64 %i.aqy ; 5 uses
  %i.ari = load i64, ptr %i.e, align 8, !tbaa !120
  %i.arj = add i64 %i.ari, 56
  store i64 %i.arj, ptr %i.e, align 8, !tbaa !120
  %i.ark = getelementptr i8, ptr %.25, i64 8      ; 2 uses
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !26
  %i.arm = getelementptr i8, ptr %i.arl, i64 8
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !142
  %i.aro = getelementptr i8, ptr %i.arn, i64 12
  %i.arp = getelementptr i8, ptr %i.arh, i64 24
  store ptr %i.aro, ptr %i.arp, align 8, !tbaa !133
  %i.arq = getelementptr i8, ptr %.25, i64 40
  %i.arr = load i32, ptr %i.arq, align 8, !tbaa !125
  %i.ars = getelementptr i8, ptr %i.arh, i64 40
  store i32 %i.arr, ptr %i.ars, align 8, !tbaa !125
  %i.art = getelementptr i8, ptr %i.arh, i64 44
  store i32 4, ptr %i.art, align 4, !tbaa !124
  %i.aru = getelementptr i8, ptr %i.arh, i64 48
  store i64 %.111490.ph, ptr %i.aru, align 8, !tbaa !122
  %i.arv = load ptr, ptr %i.ark, align 8, !tbaa !26
  %i.arw = getelementptr i8, ptr %i.arv, i64 8
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !142
  %i.ary = getelementptr i8, ptr %i.arx, i64 12
  br label %.backedge1915.backedge

bb.lw:                                            ; preds = %bb.rp
  %i.arz = getelementptr i8, ptr %i.bok, i64 32
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !134
  %i.asb = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.asc = add i64 %i.asb, -1
  %i.asd = getelementptr i8, ptr %i.bok, i64 8
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !26
  store i64 %i.asc, ptr %i.ase, align 8, !tbaa !141
  store ptr %i.asa, ptr %0, align 8, !tbaa !81
  br label %.critedge1909

bb.lx:                                            ; preds = %bb.lq
  %i.asf = getelementptr i8, ptr %i.aqn, i64 24
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !143 ; 2 uses
  store ptr %i.asg, ptr %i.ac, align 8, !tbaa !87
  %i.ash = getelementptr i8, ptr %.40, i64 16
  %i.asi = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.asj = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.asi, ptr %i.ash, align 8, !tbaa !7
  %.not1723 = icmp ne ptr %i.asg, null
  %i.ask = icmp sgt i32 %i.asj, -1
  %or.cond1885 = select i1 %.not1723, i1 %i.ask, i1 false
  %.pre2480 = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond1885, label %bb.ly, label %bb.md

bb.ly:                                            ; preds = %bb.lx
  %i.asl = add nuw i32 %i.asj, 1
  %i.asm = sext i32 %i.asl to i64
  %i.asn = shl nsw i64 %i.asm, 3                  ; 4 uses
  %i.aso = load i64, ptr %i.g, align 8, !tbaa !121
  %i.asp = sub i64 %i.aso, %.pre2480
  %i.asq = icmp ugt i64 %i.asn, %i.asp
  br i1 %i.asq, label %bb.lz, label %._crit_edge2477

._crit_edge2477:                                  ; preds = %bb.ly
  %.pre2478 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.mc

bb.lz:                                            ; preds = %bb.ly
  %i.asr = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.asn) ; 2 uses
  %i.ass = icmp slt i32 %i.asr, 0
  br i1 %i.ass, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.ast = sext i32 %i.asr to i64
  br label %.loopexit

bb.mb:                                            ; preds = %bb.lz
  %.not1724 = icmp eq i64 %.111490.ph, -1
  %.pre2479 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.asu = getelementptr i8, ptr %.pre2479, i64 %.111490.ph
  %spec.select2947 = select i1 %.not1724, ptr %.40, ptr %i.asu
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %._crit_edge2477
  %i.asv = phi ptr [ %.pre2478, %._crit_edge2477 ], [ %.pre2479, %bb.mb ]
  %.26 = phi ptr [ %.40, %._crit_edge2477 ], [ %spec.select2947, %bb.mb ]
  %i.asw = load i64, ptr %i.e, align 8, !tbaa !120
  %i.asx = getelementptr i8, ptr %i.asv, i64 %i.asw
  %i.asy = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.asx, ptr noundef nonnull align 8 dereferenceable(1) %i.asy, i64 %i.asn, i1 false)
  %i.asz = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ata = add i64 %i.asz, %i.asn                 ; 2 uses
  store i64 %i.ata, ptr %i.e, align 8, !tbaa !120
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.lx
  %i.atb = phi i64 [ %i.ata, %bb.mc ], [ %.pre2480, %bb.lx ] ; 3 uses
  %.27 = phi ptr [ %.26, %bb.mc ], [ %.40, %bb.lx ] ; 4 uses
  %i.atc = getelementptr i8, ptr %.27, i64 24
  store ptr %.12, ptr %i.atc, align 8, !tbaa !133
  %i.atd = getelementptr i8, ptr %.27, i64 32
  store ptr %.151535, ptr %i.atd, align 8, !tbaa !134
  %i.ate = load i64, ptr %i.g, align 8, !tbaa !121
  %i.atf = sub i64 %i.ate, %i.atb
  %i.atg = icmp ult i64 %i.atf, 56
  br i1 %i.atg, label %bb.me, label %._crit_edge2481

._crit_edge2481:                                  ; preds = %bb.md
  %.pre2482 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.mh

bb.me:                                            ; preds = %bb.md
  %i.ath = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.ati = icmp slt i32 %i.ath, 0
  br i1 %i.ati, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.atj = sext i32 %i.ath to i64
  br label %.loopexit

bb.mg:                                            ; preds = %bb.me
  %.not1725 = icmp eq i64 %.111490.ph, -1
  %.pre2483 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.atk = getelementptr i8, ptr %.pre2483, i64 %.111490.ph
  %spec.select2948 = select i1 %.not1725, ptr %.27, ptr %i.atk
  br label %bb.mh

end_hunk_3
begin_hunk_4_@sre_ucs1_match:bb.a
  store <2 x i32> %i.auq, ptr %i.ae, align 4, !tbaa !7
  store ptr %i.bpd, ptr %0, align 8, !tbaa !81
  %i.aur = load i64, ptr %i.bok, align 8, !tbaa !137 ; 2 uses
  %i.aus = load ptr, ptr %i.bpg, align 8, !tbaa !26 ; 3 uses
  %i.aut = getelementptr i8, ptr %i.aus, i64 8
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !142
  %i.auv = getelementptr i8, ptr %i.auu, i64 8
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !7 ; 2 uses
  %i.aux = zext i32 %i.auw to i64
  %.not1794 = icmp slt i64 %i.aur, %i.aux
  %.not1795 = icmp eq i32 %i.auw, -1
  %or.cond1805 = or i1 %.not1795, %.not1794
  br i1 %or.cond1805, label %bb.mp, label %.critedge1909

bb.mp:                                            ; preds = %bb.mo
  %i.auy = getelementptr i8, ptr %i.aus, i64 16
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !144
  %i.ava = icmp eq ptr %i.bpd, %i.auz
  br i1 %i.ava, label %.critedge1909, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  store i64 %i.aur, ptr %i.aus, align 8, !tbaa !141
  %i.avb = load i64, ptr %i.g, align 8, !tbaa !121
  %i.avc = sub i64 %i.avb, %i.auo
  %i.avd = icmp ult i64 %i.avc, 8
  br i1 %i.avd, label %bb.mr, label %._crit_edge2516

._crit_edge2516:                                  ; preds = %bb.mq
  %.pre2517 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.mu

bb.mr:                                            ; preds = %bb.mq
  %i.ave = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 8) ; 2 uses
  %i.avf = icmp slt i32 %i.ave, 0
  br i1 %i.avf, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.avg = sext i32 %i.ave to i64
  br label %.loopexit

bb.mt:                                            ; preds = %bb.mr
  %i.avh = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.avi = getelementptr i8, ptr %i.avh, i64 %i.bod
  %.pre2518 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.mu

bb.mu:                                            ; preds = %._crit_edge2516, %bb.mt
  %i.avj = phi i64 [ %.pre2518, %bb.mt ], [ %i.auo, %._crit_edge2516 ]
  %i.avk = phi ptr [ %i.avh, %bb.mt ], [ %.pre2517, %._crit_edge2516 ]
  %.29 = phi ptr [ %i.avi, %bb.mt ], [ %i.bok, %._crit_edge2516 ] ; 3 uses
  %i.avl = getelementptr i8, ptr %i.avk, i64 %i.avj
  %i.avm = getelementptr i8, ptr %.29, i64 8      ; 2 uses
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !26
  %i.avo = getelementptr i8, ptr %i.avn, i64 16
  %i.avp = load i64, ptr %i.avo, align 8
  store i64 %i.avp, ptr %i.avl, align 1
  %i.avq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.avr = add i64 %i.avq, 8                      ; 5 uses
  store i64 %i.avr, ptr %i.e, align 8, !tbaa !120
  %i.avs = load ptr, ptr %0, align 8, !tbaa !81
  %i.avt = load ptr, ptr %i.avm, align 8, !tbaa !26
  %i.avu = getelementptr i8, ptr %i.avt, i64 16
  store ptr %i.avs, ptr %i.avu, align 8, !tbaa !144
  %i.avv = getelementptr i8, ptr %.29, i64 24
  store <2 x ptr> %i.bpe, ptr %i.avv, align 8, !tbaa !95
  %i.avw = load i64, ptr %i.g, align 8, !tbaa !121
  %i.avx = sub i64 %i.avw, %i.avr
  %i.avy = icmp ult i64 %i.avx, 56
  br i1 %i.avy, label %bb.mv, label %._crit_edge2519

._crit_edge2519:                                  ; preds = %bb.mu
  %.pre2520 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.my

bb.mv:                                            ; preds = %bb.mu
  %i.avz = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.awa = icmp slt i32 %i.avz, 0
  br i1 %i.awa, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.awb = sext i32 %i.avz to i64
  br label %.loopexit

bb.mx:                                            ; preds = %bb.mv
  %i.awc = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.awd = getelementptr i8, ptr %i.awc, i64 %i.bod
  %.pre2521 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.my

bb.my:                                            ; preds = %._crit_edge2519, %bb.mx
  %i.awe = phi i64 [ %.pre2521, %bb.mx ], [ %i.avr, %._crit_edge2519 ]
  %i.awf = phi ptr [ %i.awc, %bb.mx ], [ %.pre2520, %._crit_edge2519 ]
  %.30 = phi ptr [ %i.awd, %bb.mx ], [ %.29, %._crit_edge2519 ] ; 2 uses
  %i.awg = getelementptr i8, ptr %i.awf, i64 %i.avr ; 5 uses
  %i.awh = add i64 %i.awe, 56
  store i64 %i.awh, ptr %i.e, align 8, !tbaa !120
  %i.awi = getelementptr i8, ptr %.30, i64 8      ; 2 uses
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !26
  %i.awk = getelementptr i8, ptr %i.awj, i64 8
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !142
  %i.awm = getelementptr i8, ptr %i.awl, i64 12
  %i.awn = getelementptr i8, ptr %i.awg, i64 24
  store ptr %i.awm, ptr %i.awn, align 8, !tbaa !133
  %i.awo = getelementptr i8, ptr %.30, i64 40
  %i.awp = load i32, ptr %i.awo, align 8, !tbaa !125
  %i.awq = getelementptr i8, ptr %i.awg, i64 40
  store i32 %i.awp, ptr %i.awq, align 8, !tbaa !125
  %i.awr = getelementptr i8, ptr %i.awg, i64 44
  store i32 6, ptr %i.awr, align 4, !tbaa !124
  %i.aws = getelementptr i8, ptr %i.awg, i64 48
  store i64 %i.bod, ptr %i.aws, align 8, !tbaa !122
  %i.awt = load ptr, ptr %i.awi, align 8, !tbaa !26
  %i.awu = getelementptr i8, ptr %i.awt, i64 8
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !142
  %i.aww = getelementptr i8, ptr %i.awv, i64 12
  br label %.backedge1915.backedge

bb.mz:                                            ; preds = %bb.rm
  %i.awx = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.awy = add i64 %i.awx, -1
  %i.awz = load ptr, ptr %i.bpk, align 8, !tbaa !26
  store i64 %i.awy, ptr %i.awz, align 8, !tbaa !141
  store ptr %i.bpj, ptr %0, align 8, !tbaa !81
  br label %.critedge1909

bb.na:                                            ; preds = %.backedge
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.axa = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 3 uses
  %.not.i1836 = icmp eq ptr %i.axa, null
  br i1 %.not.i1836, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.axb = getelementptr i8, ptr %i.axa, i64 40
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !106
  store ptr %i.axc, ptr %i.ah, align 8, !tbaa !110
  br label %bb.nd

bb.nc:                                            ; preds = %bb.na
  %i.axd = tail call ptr @PyMem_Malloc(i64 noundef 48) #13 ; 2 uses
  %.not20.i = icmp eq ptr %i.axd, null
  br i1 %.not20.i, label %repeat_pool_malloc.exit.thread, label %bb.nd

repeat_pool_malloc.exit.thread:                   ; preds = %bb.nc
  %i.axe = getelementptr i8, ptr %.40, i64 8
  store ptr null, ptr %i.axe, align 8, !tbaa !26
  br label %.loopexit

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.016.i = phi ptr [ %i.axa, %bb.nb ], [ %i.axd, %bb.nc ] ; 6 uses
  %i.axf = load ptr, ptr %i.ag, align 8, !tbaa !105 ; 3 uses
  %.not21.i = icmp eq ptr %i.axf, null
  br i1 %.not21.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.axg = getelementptr i8, ptr %i.axf, i64 32
  store ptr %.016.i, ptr %i.axg, align 8, !tbaa !146
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %i.axh = getelementptr i8, ptr %.016.i, i64 32
  store ptr null, ptr %i.axh, align 8, !tbaa !146
  %i.axi = getelementptr i8, ptr %.016.i, i64 40
  store ptr %i.axf, ptr %i.axi, align 8, !tbaa !106
  store ptr %.016.i, ptr %i.ag, align 8, !tbaa !105
  %i.axj = getelementptr i8, ptr %.40, i64 8      ; 5 uses
  store ptr %.016.i, ptr %i.axj, align 8, !tbaa !26
  store i64 -1, ptr %.016.i, align 8, !tbaa !141
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !26
  %i.axl = getelementptr i8, ptr %i.axk, i64 8
  store ptr null, ptr %i.axl, align 8, !tbaa !142
  %i.axm = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.axn = load ptr, ptr %i.axj, align 8, !tbaa !26
  %i.axo = getelementptr i8, ptr %i.axn, i64 24
  store ptr %i.axm, ptr %i.axo, align 8, !tbaa !143
  %i.axp = load ptr, ptr %i.axj, align 8, !tbaa !26
  %i.axq = getelementptr i8, ptr %i.axp, i64 16
  store ptr null, ptr %i.axq, align 8, !tbaa !144
  %i.axr = load ptr, ptr %i.axj, align 8, !tbaa !26
  store ptr %i.axr, ptr %i.ac, align 8, !tbaa !87
  store i64 0, ptr %.40, align 8, !tbaa !137
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nl, %bb.nf
  %i.axs = phi i64 [ %i.ayo, %bb.nl ], [ 0, %bb.nf ] ; 2 uses
  %.81528 = phi ptr [ %i.bpy, %bb.nl ], [ %.151535, %bb.nf ]
  %.31 = phi ptr [ %i.bok, %bb.nl ], [ %.40, %bb.nf ] ; 3 uses
  %.91501 = phi i32 [ %.13, %bb.nl ], [ %.14, %bb.nf ] ; 2 uses
  %.71486 = phi i64 [ %i.bod, %bb.nl ], [ %.111490.ph, %bb.nf ] ; 2 uses
  %.8 = phi ptr [ %i.aym, %bb.nl ], [ %.12, %bb.nf ] ; 4 uses
  %i.axt = getelementptr i8, ptr %.8, i64 4
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !7
  %i.axv = zext i32 %i.axu to i64
  %i.axw = icmp slt i64 %i.axs, %i.axv
  br i1 %i.axw, label %bb.nh, label %bb.nr

bb.nh:                                            ; preds = %bb.ng
  %i.axx = getelementptr i8, ptr %.31, i64 24
  store ptr %.8, ptr %i.axx, align 8, !tbaa !133
  %i.axy = getelementptr i8, ptr %.31, i64 32
  store ptr %.81528, ptr %i.axy, align 8, !tbaa !134
  %i.axz = load i64, ptr %i.e, align 8, !tbaa !120 ; 7 uses
  %i.aya = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.ayb = sub i64 %i.aya, %i.axz
  %i.ayc = icmp ult i64 %i.ayb, 56
  br i1 %i.ayc, label %bb.ni, label %.data_stack_grow.exit1842.thread_crit_edge

.data_stack_grow.exit1842.thread_crit_edge:       ; preds = %bb.nh
  %.pre2511 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %data_stack_grow.exit1842.thread

bb.ni:                                            ; preds = %bb.nh
  %25 = add i64 %i.axz, 56                        ; 2 uses
  %i.ayd = icmp slt i64 %i.aya, %25
  %.pre2512 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.ayd, label %26, label %data_stack_grow.exit1842.thread

26:                                               ; preds = %bb.ni
  %27 = sdiv i64 %25, 4
  %28 = add i64 %i.axz, 1080
  %29 = add i64 %28, %27                          ; 2 uses
  %30 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2512, i64 noundef %29) #13 ; 3 uses
  %.not.not.i1839 = icmp eq ptr %30, null
  br i1 %.not.not.i1839, label %31, label %bb.nj

31:                                               ; preds = %26
  %32 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1840 = icmp eq ptr %32, null
  br i1 %.not.i.i1840, label %bb.nk, label %33

33:                                               ; preds = %31
  tail call void @PyMem_Free(ptr noundef nonnull %32) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.nk

bb.nj:                                            ; preds = %26
  store ptr %30, ptr %i.u, align 8, !tbaa !88
  store i64 %29, ptr %i.g, align 8, !tbaa !121
  %.pre2513 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %data_stack_grow.exit1842.thread

bb.nk:                                            ; preds = %33, %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

data_stack_grow.exit1842.thread:                  ; preds = %.data_stack_grow.exit1842.thread_crit_edge, %bb.ni, %bb.nj
  %34 = phi i64 [ %i.axz, %.data_stack_grow.exit1842.thread_crit_edge ], [ %i.axz, %bb.ni ], [ %.pre2513, %bb.nj ]
  %35 = phi ptr [ %.pre2511, %.data_stack_grow.exit1842.thread_crit_edge ], [ %.pre2512, %bb.ni ], [ %30, %bb.nj ]
  %i.aye = getelementptr i8, ptr %35, i64 %i.axz  ; 5 uses
  %i.ayf = add i64 %34, 56
  store i64 %i.ayf, ptr %i.e, align 8, !tbaa !120
  %i.ayg = getelementptr i8, ptr %.8, i64 12      ; 2 uses
  %i.ayh = getelementptr i8, ptr %i.aye, i64 24
  store ptr %i.ayg, ptr %i.ayh, align 8, !tbaa !133
  %i.ayi = getelementptr i8, ptr %i.aye, i64 40
  store i32 0, ptr %i.ayi, align 8, !tbaa !125
  %i.ayj = getelementptr i8, ptr %i.aye, i64 44
  store i32 14, ptr %i.ayj, align 4, !tbaa !124
  %i.ayk = getelementptr i8, ptr %i.aye, i64 48
  store i64 %.71486, ptr %i.ayk, align 8, !tbaa !122
  br label %.backedge1915.backedge

bb.nl:                                            ; preds = %bb.rq
  %i.ayl = getelementptr i8, ptr %i.bok, i64 24
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !133
  %i.ayn = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.ayo = add i64 %i.ayn, 1                      ; 2 uses
  store i64 %i.ayo, ptr %i.bok, align 8, !tbaa !137
  br label %bb.ng, !llvm.loop !147

bb.nm:                                            ; preds = %bb.rq
  store ptr %i.bpy, ptr %0, align 8, !tbaa !81
  %i.ayp = getelementptr i8, ptr %i.bok, i64 8    ; 2 uses
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !26
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 24
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !143
  store ptr %i.ays, ptr %i.ac, align 8, !tbaa !87
  %i.ayt = load ptr, ptr %i.ayp, align 8, !tbaa !26 ; 3 uses
  %i.ayu = getelementptr i8, ptr %i.ayt, i64 32
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !146 ; 3 uses
  %i.ayw = getelementptr i8, ptr %i.ayt, i64 40   ; 2 uses
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !106 ; 4 uses
  %.not.i1843 = icmp eq ptr %i.ayv, null
  br i1 %.not.i1843, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.ayy = getelementptr i8, ptr %i.ayv, i64 40
  store ptr %i.ayx, ptr %i.ayy, align 8, !tbaa !106
  br label %bb.np

bb.no:                                            ; preds = %bb.nm
  store ptr %i.ayx, ptr %i.ag, align 8, !tbaa !105
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn
  %.not15.i = icmp eq ptr %i.ayx, null
  br i1 %.not15.i, label %repeat_pool_free.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.ayz = getelementptr i8, ptr %i.ayx, i64 32
  store ptr %i.ayv, ptr %i.ayz, align 8, !tbaa !146
  br label %repeat_pool_free.exit

repeat_pool_free.exit:                            ; preds = %bb.np, %bb.nq
  %i.aza = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.aza, ptr %i.ayw, align 8, !tbaa !106
  store ptr %i.ayt, ptr %i.ah, align 8, !tbaa !110
  br label %.critedge1909

bb.nr:                                            ; preds = %bb.ng, %bb.of
  %i.azb = phi i64 [ %i.bau, %bb.of ], [ %i.axs, %bb.ng ]
  %.91529 = phi ptr [ %i.bqc, %bb.of ], [ null, %bb.ng ]
  %.32 = phi ptr [ %i.bok, %bb.of ], [ %.31, %bb.ng ] ; 6 uses
  %.101502 = phi i32 [ %.13, %bb.of ], [ %.91501, %bb.ng ] ; 3 uses
  %.81487 = phi i64 [ %i.bod, %bb.of ], [ %.71486, %bb.ng ] ; 5 uses
  %.9 = phi ptr [ %i.bqa, %bb.of ], [ %.8, %bb.ng ] ; 5 uses
  %i.azc = getelementptr i8, ptr %.9, i64 8
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !7 ; 2 uses
  %i.aze = zext i32 %i.azd to i64
  %i.azf = icmp slt i64 %i.azb, %i.aze
  %i.azg = icmp eq i32 %i.azd, -1
  %or.cond1806 = or i1 %i.azg, %i.azf
  br i1 %or.cond1806, label %bb.ns, label %.critedge6

bb.ns:                                            ; preds = %bb.nr
  %i.azh = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %.not1658 = icmp eq ptr %i.azh, %.91529
  br i1 %.not1658, label %.critedge6, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.azi = getelementptr i8, ptr %.32, i64 16
  %i.azj = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.azk = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.azj, ptr %i.azi, align 8, !tbaa !7
  %i.azl = icmp sgt i32 %i.azk, -1
  %.pre2452 = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  br i1 %i.azl, label %bb.nu, label %bb.nz

bb.nu:                                            ; preds = %bb.nt
  %i.azm = add nuw i32 %i.azk, 1
  %i.azn = sext i32 %i.azm to i64
  %i.azo = shl nsw i64 %i.azn, 3                  ; 4 uses
  %i.azp = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.azq = sub i64 %i.azp, %.pre2452
  %i.azr = icmp ugt i64 %i.azo, %i.azq
  br i1 %i.azr, label %bb.nv, label %._crit_edge2448

._crit_edge2448:                                  ; preds = %bb.nu
  %.pre2449 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.ny

bb.nv:                                            ; preds = %bb.nu
  %36 = add i64 %.pre2452, %i.azo                 ; 3 uses
  %i.azs = icmp slt i64 %i.azp, %36
  %.pre2450.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.azs, label %37, label %bb.nx

37:                                               ; preds = %bb.nv
  %38 = sdiv i64 %36, 4
  %39 = add i64 %36, 1024
  %40 = add i64 %39, %38                          ; 2 uses
  %41 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2450.pre, i64 noundef %40) #13 ; 3 uses
  %.not.not.i1845 = icmp eq ptr %41, null
  br i1 %.not.not.i1845, label %42, label %45

42:                                               ; preds = %37
  %43 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1846 = icmp eq ptr %43, null
  br i1 %.not.i.i1846, label %bb.nw, label %44

44:                                               ; preds = %42
  tail call void @PyMem_Free(ptr noundef nonnull %43) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.nw

45:                                               ; preds = %37
  store ptr %41, ptr %i.u, align 8, !tbaa !88
  store i64 %40, ptr %i.g, align 8, !tbaa !121
  br label %bb.nx

bb.nw:                                            ; preds = %44, %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.nx:                                            ; preds = %45, %bb.nv
  %.pre2450 = phi ptr [ %41, %45 ], [ %.pre2450.pre, %bb.nv ] ; 2 uses
  %.not1776 = icmp eq i64 %.81487, -1
  %i.azt = getelementptr i8, ptr %.pre2450, i64 %.81487
  %spec.select2949 = select i1 %.not1776, ptr %.32, ptr %i.azt
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %._crit_edge2448
  %i.azu = phi ptr [ %.pre2449, %._crit_edge2448 ], [ %.pre2450, %bb.nx ]
  %.33 = phi ptr [ %.32, %._crit_edge2448 ], [ %spec.select2949, %bb.nx ]
  %i.azv = load i64, ptr %i.e, align 8, !tbaa !120
  %i.azw = getelementptr i8, ptr %i.azu, i64 %i.azv
  %i.azx = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.azw, ptr noundef nonnull align 8 dereferenceable(1) %i.azx, i64 %i.azo, i1 false)
  %i.azy = load i64, ptr %i.e, align 8, !tbaa !120
  %i.azz = add i64 %i.azy, %i.azo                 ; 2 uses
  store i64 %i.azz, ptr %i.e, align 8, !tbaa !120
  %.pre2451 = load ptr, ptr %0, align 8, !tbaa !81
  br label %bb.nz

bb.nz:                                            ; preds = %bb.nt, %bb.ny
  %i.baa = phi i64 [ %i.azz, %bb.ny ], [ %.pre2452, %bb.nt ] ; 7 uses
  %i.bab = phi ptr [ %.pre2451, %bb.ny ], [ %i.azh, %bb.nt ]
  %.34 = phi ptr [ %.33, %bb.ny ], [ %.32, %bb.nt ] ; 2 uses
  %i.bac = getelementptr i8, ptr %.34, i64 24
  store ptr %.9, ptr %i.bac, align 8, !tbaa !133
  %i.bad = getelementptr i8, ptr %.34, i64 32
  store ptr %i.bab, ptr %i.bad, align 8, !tbaa !134
  %i.bae = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.baf = sub i64 %i.bae, %i.baa
  %i.bag = icmp ult i64 %i.baf, 56
  br i1 %i.bag, label %bb.oa, label %.data_stack_grow.exit1853.thread_crit_edge

.data_stack_grow.exit1853.thread_crit_edge:       ; preds = %bb.nz
  %.pre2453 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %data_stack_grow.exit1853.thread

bb.oa:                                            ; preds = %bb.nz
  %46 = add i64 %i.baa, 56                        ; 2 uses
  %i.bah = icmp slt i64 %i.bae, %46
  %.pre2454 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.bah, label %47, label %data_stack_grow.exit1853.thread

47:                                               ; preds = %bb.oa
  %48 = sdiv i64 %46, 4
  %49 = add i64 %i.baa, 1080
  %50 = add i64 %49, %48                          ; 2 uses
  %51 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2454, i64 noundef %50) #13 ; 3 uses
  %.not.not.i1850 = icmp eq ptr %51, null
  br i1 %.not.not.i1850, label %52, label %bb.ob

52:                                               ; preds = %47
  %53 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1851 = icmp eq ptr %53, null
  br i1 %.not.i.i1851, label %bb.oc, label %54

54:                                               ; preds = %52
  tail call void @PyMem_Free(ptr noundef nonnull %53) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.oc

bb.ob:                                            ; preds = %47
  store ptr %51, ptr %i.u, align 8, !tbaa !88
  store i64 %50, ptr %i.g, align 8, !tbaa !121
  %.pre2455 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %data_stack_grow.exit1853.thread

bb.oc:                                            ; preds = %54, %52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

data_stack_grow.exit1853.thread:                  ; preds = %.data_stack_grow.exit1853.thread_crit_edge, %bb.oa, %bb.ob
  %55 = phi i64 [ %i.baa, %.data_stack_grow.exit1853.thread_crit_edge ], [ %i.baa, %bb.oa ], [ %.pre2455, %bb.ob ]
  %56 = phi ptr [ %.pre2453, %.data_stack_grow.exit1853.thread_crit_edge ], [ %.pre2454, %bb.oa ], [ %51, %bb.ob ]
  %i.bai = getelementptr i8, ptr %56, i64 %i.baa  ; 5 uses
  %i.baj = add i64 %55, 56
  store i64 %i.baj, ptr %i.e, align 8, !tbaa !120
  %i.bak = getelementptr i8, ptr %.9, i64 12      ; 2 uses
  %i.bal = getelementptr i8, ptr %i.bai, i64 24
  store ptr %i.bak, ptr %i.bal, align 8, !tbaa !133
  %i.bam = getelementptr i8, ptr %i.bai, i64 40
  store i32 0, ptr %i.bam, align 8, !tbaa !125
  %i.ban = getelementptr i8, ptr %i.bai, i64 44
  store i32 15, ptr %i.ban, align 4, !tbaa !124
  %i.bao = getelementptr i8, ptr %i.bai, i64 48
  store i64 %.81487, ptr %i.bao, align 8, !tbaa !122
  br label %.backedge1915.backedge

bb.od:                                            ; preds = %bb.rr
  br i1 %i.bqf, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.bap = add nuw i32 %i.bqe, 1
  %i.baq = sext i32 %i.bap to i64
  %i.bar = shl nsw i64 %i.baq, 3
  %i.bas = sub i64 %i.boh, %i.bar
  store i64 %i.bas, ptr %i.e, align 8, !tbaa !120
  br label %bb.of

bb.of:                                            ; preds = %bb.od, %bb.oe
  %i.bat = load i64, ptr %i.bok, align 8, !tbaa !137
  %i.bau = add i64 %i.bat, 1                      ; 2 uses
  store i64 %i.bau, ptr %i.bok, align 8, !tbaa !137
  br label %bb.nr, !llvm.loop !148

bb.og:                                            ; preds = %bb.rr
  br i1 %i.bqf, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.bav = add nuw i32 %i.bqe, 1
  %i.baw = sext i32 %i.bav to i64
  %i.bax = shl nsw i64 %i.baw, 3                  ; 3 uses
  %i.bay = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.baz = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.bba = sub nsw i64 0, %i.bax
  %i.bbb = getelementptr i8, ptr %i.baz, i64 %i.bba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bay, ptr noundef nonnull align 1 dereferenceable(1) %i.bbb, i64 %i.bax, i1 false)
  %i.bbc = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bbd = sub i64 %i.bbc, %i.bax
  store i64 %i.bbd, ptr %i.e, align 8, !tbaa !120
  %.pre2447 = load i32, ptr %i.bqd, align 8, !tbaa !135
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.og
  %i.bbe = phi i32 [ %.pre2447, %bb.oh ], [ %i.bqe, %bb.og ]
  store i32 %i.bbe, ptr %i.ae, align 4, !tbaa !85
  %i.bbf = getelementptr i8, ptr %i.bok, i64 20
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !145
  store i32 %i.bbg, ptr %i.af, align 8, !tbaa !86
  store ptr %i.bqc, ptr %0, align 8, !tbaa !81
  br label %.critedge6

.critedge6:                                       ; preds = %bb.nr, %bb.oi, %bb.ns
  %.35 = phi ptr [ %.32, %bb.ns ], [ %.32, %bb.nr ], [ %i.bok, %bb.oi ] ; 3 uses
  %.111503 = phi i32 [ %.101502, %bb.ns ], [ %.101502, %bb.nr ], [ %.13, %bb.oi ]
  %.91488 = phi i64 [ %.81487, %bb.ns ], [ %.81487, %bb.nr ], [ %i.bod, %bb.oi ] ; 2 uses
  %.10 = phi ptr [ %.9, %bb.ns ], [ %.9, %bb.nr ], [ %i.bqa, %bb.oi ] ; 2 uses
  %i.bbh = getelementptr i8, ptr %.35, i64 8      ; 2 uses
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !26
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 24
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !143
  store ptr %i.bbk, ptr %i.ac, align 8, !tbaa !87
  %i.bbl = load ptr, ptr %i.bbh, align 8, !tbaa !26 ; 3 uses
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 32
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !146 ; 3 uses
  %i.bbo = getelementptr i8, ptr %i.bbl, i64 40   ; 2 uses
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !106 ; 4 uses
  %.not.i1854 = icmp eq ptr %i.bbn, null
  br i1 %.not.i1854, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %.critedge6
  %i.bbq = getelementptr i8, ptr %i.bbn, i64 40
  store ptr %i.bbp, ptr %i.bbq, align 8, !tbaa !106
  br label %bb.ol

bb.ok:                                            ; preds = %.critedge6
  store ptr %i.bbp, ptr %i.ag, align 8, !tbaa !105
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %.not15.i1855 = icmp eq ptr %i.bbp, null
  br i1 %.not15.i1855, label %repeat_pool_free.exit1856, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bbr = getelementptr i8, ptr %i.bbp, i64 32
  store ptr %i.bbn, ptr %i.bbr, align 8, !tbaa !146
  br label %repeat_pool_free.exit1856

repeat_pool_free.exit1856:                        ; preds = %bb.ol, %bb.om
  %i.bbs = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.bbs, ptr %i.bbo, align 8, !tbaa !106
  store ptr %i.bbl, ptr %i.ah, align 8, !tbaa !110
  %i.bbt = load i32, ptr %.10, align 4, !tbaa !7
  %i.bbu = add i32 %i.bbt, 1
  %i.bbv = zext i32 %i.bbu to i64
  %i.bbw = getelementptr [4 x i8], ptr %.10, i64 %i.bbv ; 2 uses
  %i.bbx = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bby = add i32 %.111503, 1                    ; 3 uses
  %i.bbz = and i32 %i.bby, 4095
  %i.bca = icmp eq i32 %i.bbz, 0
  br i1 %i.bca, label %bb.on, label %.preheader1914

bb.on:                                            ; preds = %repeat_pool_free.exit1856
  %i.bcb = tail call i32 @PyErr_CheckSignals() #13
  %.not1659 = icmp eq i32 %i.bcb, 0
  br i1 %.not1659, label %.preheader1914, label %.loopexit

bb.oo:                                            ; preds = %.backedge
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.bcc = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.bcc, align 8, !tbaa !133
  %i.bcd = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.bcd, align 8, !tbaa !134
  %i.bce = load i64, ptr %i.e, align 8, !tbaa !120 ; 4 uses
  %i.bcf = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bcg = sub i64 %i.bcf, %i.bce
  %i.bch = icmp ult i64 %i.bcg, 56
  br i1 %i.bch, label %bb.op, label %bb.or

bb.op:                                            ; preds = %bb.oo
  %i.bci = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.bcj = icmp slt i32 %i.bci, 0
  br i1 %i.bcj, label %bb.oq, label %._crit_edge2458

._crit_edge2458:                                  ; preds = %bb.op
  %.pre2459 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.bck = sext i32 %i.bci to i64
  br label %.loopexit

bb.or:                                            ; preds = %._crit_edge2458, %bb.oo
  %i.bcl = phi i64 [ %.pre2459, %._crit_edge2458 ], [ %i.bce, %bb.oo ]
  %i.bcm = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 %i.bce ; 5 uses
  %i.bco = add i64 %i.bcl, 56
  store i64 %i.bco, ptr %i.e, align 8, !tbaa !120
  %i.bcp = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.bcq = getelementptr i8, ptr %i.bcn, i64 24
  store ptr %i.bcp, ptr %i.bcq, align 8, !tbaa !133
  %i.bcr = getelementptr i8, ptr %i.bcn, i64 40
  store i32 0, ptr %i.bcr, align 8, !tbaa !125
  %i.bcs = getelementptr i8, ptr %i.bcn, i64 44
  store i32 16, ptr %i.bcs, align 4, !tbaa !124
  %i.bct = getelementptr i8, ptr %i.bcn, i64 48
  store i64 %.111490.ph, ptr %i.bct, align 8, !tbaa !122
  br label %.backedge1915.backedge

bb.os:                                            ; preds = %bb.sa
  %i.bcu = getelementptr i8, ptr %i.bok, i64 32
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !134
  store ptr %i.bcv, ptr %0, align 8, !tbaa !81
  br label %.critedge1909

bb.ot:                                            ; preds = %bb.sa
  %i.bcw = getelementptr i8, ptr %i.bok, i64 24
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !133 ; 2 uses
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !7
  %i.bcz = zext i32 %i.bcy to i64
  %i.bda = getelementptr [4 x i8], ptr %i.bcx, i64 %i.bcz ; 2 uses
  %i.bdb = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bdc = add i32 %.13, 1                        ; 3 uses
  %i.bdd = and i32 %i.bdc, 4095
  %i.bde = icmp eq i32 %i.bdd, 0
  br i1 %i.bde, label %bb.ou, label %.preheader1914

bb.ou:                                            ; preds = %bb.ot
  %i.bdf = tail call i32 @PyErr_CheckSignals() #13
  %.not1645 = icmp eq i32 %i.bdf, 0
  br i1 %.not1645, label %.preheader1914, label %.loopexit

.preheader1914:                                   ; preds = %bb.ou, %bb.ot, %bb.on, %repeat_pool_free.exit1856, %bb.k, %bb.j, %bb.rg, %bb.rf, %bb.qm, %bb.ql
  %.1.sink = phi ptr [ %i.bnw, %bb.rg ], [ %.1, %bb.k ], [ %i.bbw, %bb.on ], [ %i.bky, %bb.qm ], [ %i.bky, %bb.ql ], [ %i.bnw, %bb.rf ], [ %.1, %bb.j ], [ %i.bbw, %repeat_pool_free.exit1856 ], [ %i.bda, %bb.ot ], [ %i.bda, %bb.ou ] ; 2 uses
  %.151535.ph = phi ptr [ %.141534, %bb.rg ], [ %i.am, %bb.k ], [ %i.bbx, %bb.on ], [ %i.bri, %bb.qm ], [ %i.bri, %bb.ql ], [ %.141534, %bb.rf ], [ %i.am, %bb.j ], [ %i.bbx, %repeat_pool_free.exit1856 ], [ %i.bdb, %bb.ot ], [ %i.bdb, %bb.ou ]
  %.40.ph = phi ptr [ %.38, %bb.rg ], [ %.01505, %bb.k ], [ %.35, %bb.on ], [ %i.bok, %bb.qm ], [ %i.bok, %bb.ql ], [ %.38, %bb.rf ], [ %.01505, %bb.j ], [ %.35, %repeat_pool_free.exit1856 ], [ %i.bok, %bb.ot ], [ %i.bok, %bb.ou ]
  %.14.ph = phi i32 [ %i.bnx, %bb.rg ], [ %i.ba, %bb.k ], [ %i.bby, %bb.on ], [ %i.bkz, %bb.qm ], [ %i.bkz, %bb.ql ], [ %i.bnx, %bb.rf ], [ %i.ba, %bb.j ], [ %i.bby, %repeat_pool_free.exit1856 ], [ %i.bdc, %bb.ot ], [ %i.bdc, %bb.ou ]
  %.111490.ph = phi i64 [ %.101489, %bb.rg ], [ %.01479, %bb.k ], [ %.91488, %bb.on ], [ %i.bod, %bb.qm ], [ %i.bod, %bb.ql ], [ %.101489, %bb.rf ], [ %.01479, %bb.j ], [ %.91488, %repeat_pool_free.exit1856 ], [ %i.bod, %bb.ot ], [ %i.bod, %bb.ou ] ; 45 uses
  %i.bdg = getelementptr i8, ptr %.1.sink, i64 4
  %.sink2951 = load i32, ptr %.1.sink, align 4, !tbaa !7
  br label %.backedge

bb.ov:                                            ; preds = %.backedge
  %i.bdh = load i32, ptr %.12, align 4, !tbaa !7
  %i.bdi = shl i32 %i.bdh, 1                      ; 2 uses
  %i.bdj = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1749 = icmp slt i32 %i.bdi, %i.bdj
  br i1 %.not1749, label %bb.ow, label %.critedge1909

bb.ow:                                            ; preds = %bb.ov
  %i.bdk = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bdl = sext i32 %i.bdi to i64
  %i.bdm = getelementptr [8 x i8], ptr %i.bdk, i64 %i.bdl ; 2 uses
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !95 ; 5 uses
  %i.bdo = ptrtoaddr ptr %i.bdn to i64
  %i.bdp = getelementptr i8, ptr %i.bdm, i64 8
end_hunk_4
begin_hunk_5_@sre_ucs1_match:bb.a
  %i.bod = load i64, ptr %i.boc, align 8, !tbaa !122 ; 19 uses
  %i.boe = getelementptr i8, ptr %.39, i64 44
  %i.bof = load i32, ptr %i.boe, align 4, !tbaa !124
  %i.bog = load i64, ptr %i.e, align 8, !tbaa !120
  %i.boh = add i64 %i.bog, -56                    ; 19 uses
  store i64 %i.boh, ptr %i.e, align 8, !tbaa !120
  %i.boi = icmp eq i64 %i.bod, -1
  br i1 %i.boi, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %.critedge1909
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.ri:                                            ; preds = %.critedge1909
  %i.boj = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.bok = getelementptr i8, ptr %i.boj, i64 %i.bod ; 119 uses
  switch i32 %i.bof, label %.loopexit [
    i32 2, label %bb.rj
    i32 3, label %bb.rk
    i32 5, label %bb.rl
    i32 6, label %bb.rm
    i32 11, label %bb.rn
    i32 1, label %bb.ro
    i32 4, label %bb.rp
    i32 14, label %bb.rq
    i32 15, label %bb.rr
    i32 7, label %bb.rs
    i32 8, label %bb.rx
    i32 9, label %bb.ry
    i32 10, label %bb.rz
    i32 16, label %bb.sa
    i32 12, label %bb.sb
    i32 13, label %bb.sc
  ]

bb.rj:                                            ; preds = %bb.ri
  %i.bol = getelementptr i8, ptr %i.bok, i64 24
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !133
  %i.bon = getelementptr i8, ptr %i.bok, i64 32
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !134 ; 2 uses
  %i.bop = getelementptr i8, ptr %i.bok, i64 8
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !26
  %i.bor = getelementptr i8, ptr %i.boq, i64 16
  %i.bos = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.bot = getelementptr i8, ptr %i.bos, i64 -8
  %i.bou = load i64, ptr %i.bot, align 1
  store i64 %i.bou, ptr %i.bor, align 8
  %i.bov = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bow = add i64 %i.bov, -8                     ; 4 uses
  store i64 %i.bow, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lg, label %bb.le

bb.rk:                                            ; preds = %bb.ri
  %i.box = getelementptr i8, ptr %i.bok, i64 32
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !134
  %i.boz = getelementptr i8, ptr %i.bok, i64 8
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !26
  store ptr %i.bpa, ptr %i.ac, align 8, !tbaa !87
  br i1 %i.bob, label %.critedge1909, label %bb.lo

bb.rl:                                            ; preds = %bb.ri
  %i.bpb = getelementptr i8, ptr %i.bok, i64 24
  %i.bpc = getelementptr i8, ptr %i.bok, i64 32
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !134 ; 2 uses
  %i.bpe = load <2 x ptr>, ptr %i.bpb, align 8, !tbaa !95
  %i.bpf = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.bpg = getelementptr i8, ptr %i.bok, i64 8    ; 2 uses
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !26
  store ptr %i.bph, ptr %i.ac, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bpf, null            ; 2 uses
  br i1 %.not1641, label %bb.ml, label %bb.mi

bb.rm:                                            ; preds = %bb.ri
  %i.bpi = getelementptr i8, ptr %i.bok, i64 32
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !134
  %i.bpk = getelementptr i8, ptr %i.bok, i64 8    ; 2 uses
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !26
  %i.bpm = getelementptr i8, ptr %i.bpl, i64 16
  %i.bpn = getelementptr i8, ptr %i.boj, i64 %i.boh
  %i.bpo = getelementptr i8, ptr %i.bpn, i64 -8
  %i.bpp = load i64, ptr %i.bpo, align 1
  store i64 %i.bpp, ptr %i.bpm, align 8
  %i.bpq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpr = add i64 %i.bpq, -8
  store i64 %i.bpr, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.mz, label %.critedge1909

bb.rn:                                            ; preds = %bb.ri
  %i.bps = getelementptr i8, ptr %i.bok, i64 24
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !133
  %i.bpu = getelementptr i8, ptr %i.bok, i64 32
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !134
  %i.bpw = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.bpw, null            ; 2 uses
  br i1 %.not1641, label %bb.fy, label %bb.fv

bb.ro:                                            ; preds = %bb.ri
  br i1 %.not1641, label %bb.km, label %.critedge1909

bb.rp:                                            ; preds = %bb.ri
  br i1 %.not1641, label %bb.lw, label %.critedge1909

bb.rq:                                            ; preds = %bb.ri
  %i.bpx = getelementptr i8, ptr %i.bok, i64 32
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !134 ; 2 uses
  br i1 %.not1641, label %bb.nm, label %bb.nl

bb.rr:                                            ; preds = %bb.ri
  %i.bpz = getelementptr i8, ptr %i.bok, i64 24
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !133 ; 2 uses
  %i.bqb = getelementptr i8, ptr %i.bok, i64 32
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !134 ; 2 uses
  %i.bqd = getelementptr i8, ptr %i.bok, i64 16   ; 2 uses
  %i.bqe = load i32, ptr %i.bqd, align 8, !tbaa !135 ; 4 uses
  %i.bqf = icmp sgt i32 %i.bqe, -1                ; 2 uses
  br i1 %.not1641, label %bb.og, label %bb.od

bb.rs:                                            ; preds = %bb.ri
  %i.bqg = getelementptr i8, ptr %i.bok, i64 8    ; 2 uses
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !26
  %i.bqi = getelementptr i8, ptr %i.bqh, i64 24
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !143
  store ptr %i.bqj, ptr %i.ac, align 8, !tbaa !87
  %i.bqk = load ptr, ptr %i.bqg, align 8, !tbaa !26 ; 3 uses
  %i.bql = getelementptr i8, ptr %i.bqk, i64 32
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !146 ; 3 uses
  %i.bqn = getelementptr i8, ptr %i.bqk, i64 40   ; 2 uses
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !106 ; 4 uses
  %.not.i1860 = icmp eq ptr %i.bqm, null
  br i1 %.not.i1860, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bqp = getelementptr i8, ptr %i.bqm, i64 40
  store ptr %i.bqo, ptr %i.bqp, align 8, !tbaa !106
  br label %bb.rv

bb.ru:                                            ; preds = %bb.rs
  store ptr %i.bqo, ptr %i.ag, align 8, !tbaa !105
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %.not15.i1861 = icmp eq ptr %i.bqo, null
  br i1 %.not15.i1861, label %repeat_pool_free.exit1862, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.bqq = getelementptr i8, ptr %i.bqo, i64 32
  store ptr %i.bqm, ptr %i.bqq, align 8, !tbaa !146
  br label %repeat_pool_free.exit1862

repeat_pool_free.exit1862:                        ; preds = %bb.rv, %bb.rw
  %i.bqr = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.bqr, ptr %i.bqn, align 8, !tbaa !106
  store ptr %i.bqk, ptr %i.ah, align 8, !tbaa !110
  br i1 %.not1641, label %bb.ke, label %.critedge1909

bb.rx:                                            ; preds = %bb.ri
  %i.bqs = getelementptr i8, ptr %i.bok, i64 24
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !133
  %i.bqu = getelementptr i8, ptr %i.bok, i64 32
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !134
  %i.bqw = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.bqw, null            ; 2 uses
  br i1 %.not1641, label %bb.hh, label %bb.he

bb.ry:                                            ; preds = %bb.ri
  %i.bqx = getelementptr i8, ptr %i.bok, i64 24
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !133
  %i.bqz = getelementptr i8, ptr %i.bok, i64 32
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !134
  %i.brb = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.brb, null            ; 2 uses
  br i1 %.not1641, label %bb.hv, label %bb.hs

bb.rz:                                            ; preds = %bb.ri
  %i.brc = getelementptr i8, ptr %i.bok, i64 24
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !133 ; 2 uses
  %i.bre = getelementptr i8, ptr %i.bok, i64 32
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !134 ; 2 uses
  %i.brg = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.brg, null            ; 2 uses
  br i1 %.not1641, label %bb.jd, label %bb.ja

bb.sa:                                            ; preds = %bb.ri
  br i1 %.not1641, label %bb.os, label %bb.ot

bb.sb:                                            ; preds = %bb.ri
  %i.brh = getelementptr i8, ptr %i.bok, i64 32
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !134 ; 2 uses
  br i1 %.not1641, label %.critedge1909, label %bb.ql

bb.sc:                                            ; preds = %bb.ri
  %i.brj = getelementptr i8, ptr %i.bok, i64 24
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !133
  %i.brl = getelementptr i8, ptr %i.bok, i64 32
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !134
  %i.brn = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.brn, null            ; 2 uses
  br i1 %.not1641, label %bb.rb, label %bb.qy

.loopexit:                                        ; preds = %bb.ri, %repeat_pool_malloc.exit.thread, %.backedge, %bb.rg, %bb.qm, %bb.qe, %bb.qb, %bb.px, %bb.pt, %bb.pn, %bb.ph, %bb.oz, %bb.ou, %bb.on, %bb.lp, %bb.kf, %bb.jy, %bb.jw, %bb.jn, %bb.jg, %bb.ie, %bb.gh, %bb.ez, %bb.ew, %bb.er, %bb.em, %bb.eg, %bb.ea, %bb.dv, %bb.dp, %bb.dk, %bb.df, %bb.cz, %bb.cu, %bb.cq, %bb.cl, %bb.cg, %bb.z, %bb.u, %bb.p, %bb.k, %bb.rh, %bb.qw, %bb.qr, %bb.qj, %bb.oq, %bb.oc, %bb.nw, %bb.nk, %bb.mw, %bb.ms, %bb.mf, %bb.ma, %bb.lt, %bb.ll, %bb.lb, %bb.kx, %bb.ks, %bb.kj, %bb.kb, %bb.ix, %bb.ir, %bb.hp, %bb.hb, %bb.gs, %bb.fs, %bb.fe, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.rh ], [ -1, %.backedge ], [ %i.ada, %bb.ie ], [ %24, %bb.ll ], [ -10, %bb.pn ], [ -10, %bb.dp ], [ %i.avg, %bb.ms ], [ %i.awb, %bb.mw ], [ -10, %bb.on ], [ -10, %bb.cz ], [ -9, %bb.fs ], [ -10, %bb.er ], [ -10, %bb.qe ], [ -10, %bb.dk ], [ -9, %bb.nk ], [ -9, %bb.nw ], [ -9, %bb.oc ], [ -9, %repeat_pool_malloc.exit.thread ], [ -10, %bb.cl ], [ -10, %bb.cq ], [ %i.bkk, %bb.qj ], [ %i.blz, %bb.qr ], [ %i.bmp, %bb.qw ], [ -10, %bb.qm ], [ -10, %bb.z ], [ -9, %bb.fe ], [ -10, %bb.cg ], [ -10, %bb.rg ], [ -10, %bb.dv ], [ -10, %bb.ou ], [ -10, %bb.pt ], [ -10, %bb.px ], [ -10, %bb.qb ], [ -10, %bb.cu ], [ -10, %bb.ew ], [ -10, %bb.df ], [ -10, %bb.p ], [ -10, %bb.k ], [ %i.akq, %bb.kj ], [ %i.amk, %bb.ks ], [ %i.amy, %bb.kx ], [ %i.ant, %bb.lb ], [ -9, %bb.jy ], [ %i.are, %bb.lt ], [ %i.ast, %bb.ma ], [ %i.atj, %bb.mf ], [ -2, %bb.kf ], [ -10, %bb.u ], [ -10, %bb.em ], [ -10, %bb.ph ], [ %i.ajf, %bb.kb ], [ -10, %bb.jw ], [ -10, %bb.ez ], [ %i.xh, %bb.gs ], [ %i.yr, %bb.hb ], [ %i.aav, %bb.hp ], [ -10, %bb.ea ], [ -9, %bb.ir ], [ %i.afb, %bb.ix ], [ %i.vz, %bb.gh ], [ %i.bck, %bb.oq ], [ -2, %bb.lp ], [ %i.agn, %bb.jg ], [ %i.ahn, %bb.jn ], [ -10, %bb.oz ], [ -10, %bb.eg ], [ %.01491, %bb.ri ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1914
  %.sink2930.sink = phi i32 [ %.sink2951, %.preheader1914 ], [ %.sink2930.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1914 ], [ %.151535.be, %.backedge.backedge ] ; 134 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1914 ], [ %.40.be, %.backedge.backedge ] ; 137 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1914 ], [ %.14.be, %.backedge.backedge ] ; 115 uses
  %.12 = phi ptr [ %i.bdg, %.preheader1914 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.bro = zext i32 %.sink2930.sink to i64
  %i.brp = getelementptr [8 x i8], ptr @sre_ucs1_match.sre_targets, i64 %i.bro
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !95
  indirectbr ptr %i.brq, [label %.critedge1909, label %bb.ab, label %bb.cn, label %bb.cs, label %bb.qg, label %bb.qn, label %bb.ah, label %bb.fb, label %bb.ci, label %.loopexit, label %bb.dx, label %bb.ov, label %bb.pv, label %bb.cw, label %bb.ey, label %bb.dh, label %bb.r, label %bb.l, label %bb.kf, label %bb.lp, label %bb.w, label %bb.eo, label %bb.pj, label %bb.jy, label %bb.gg, label %bb.ec, label %bb.ib, label %bb.oo, label %bb.na, label %bb.jm, label %bb.pb, label %bb.ei, label %bb.db, label %bb.dr, label %bb.pp, label %bb.et, label %bb.dm]
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2) i64 @sre_ucs2_match(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
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
  %i.u = getelementptr i8, ptr %0, i64 176        ; 65 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f     ; 4 uses
  %i.x = add i64 %i.t, 56
  store i64 %i.x, ptr %i.e, align 8, !tbaa !120
  %i.y = getelementptr i8, ptr %i.w, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !153
  %i.z = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.z, align 4, !tbaa !155
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  store i32 %2, ptr %i.aa, align 8, !tbaa !156
  %i.ab = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 156       ; 29 uses
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 26 uses
  %i.ae = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.ai = getelementptr i8, ptr %0, i64 216       ; 8 uses
  %i.aj = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 200       ; 27 uses
  %i.al = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %.backedge1906

.backedge1906:                                    ; preds = %.backedge1906.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1906.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1906.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1906.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1906.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.backedge1906
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = ashr exact i64 %i.as, 1
  %i.au = zext i32 %i.aq to i64
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.critedge1900, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr i8, ptr %.01478, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %.01478, i64 %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge1906
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %.01478, %.backedge1906 ] ; 2 uses
  %i.bb = add i32 %.01492, 1                      ; 3 uses
  %i.bc = and i32 %i.bb, 4095
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %.preheader1905

bb.l:                                             ; preds = %bb.k
  %i.be = tail call i32 @PyErr_CheckSignals() #13
  %.not1640 = icmp eq i32 %i.be, 0
  br i1 %.not1640, label %.preheader1905, label %.loopexit

bb.m:                                             ; preds = %.backedge
  %i.bf = load i32, ptr %.12, align 4, !tbaa !7   ; 9 uses
  %i.bg = and i32 %i.bf, 1
  %.not1733 = icmp eq i32 %i.bg, 0
  br i1 %.not1733, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = sdiv i32 %i.bf, 2
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !85 ; 5 uses
  %i.bk = icmp sgt i32 %i.bf, %i.bj
  br i1 %i.bk, label %.preheader1901, label %bb.p

.preheader1901:                                   ; preds = %bb.o
  %.015362167 = add nsw i32 %i.bj, 1
  %i.bl = icmp slt i32 %.015362167, %i.bf
  br i1 %i.bl, label %.lr.ph2169.preheader, label %._crit_edge2170

.lr.ph2169.preheader:                             ; preds = %.preheader1901
  %i.bm = sext i32 %i.bj to i64
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = xor i32 %i.bj, -1
  %i.bp = add i32 %i.bf, %i.bo
  %i.bq = add i32 %i.bf, -2
  %i.br = sub i32 %i.bq, %i.bj
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2169.prol.loopexit, label %.lr.ph2169.prol

.lr.ph2169.prol:                                  ; preds = %.lr.ph2169.preheader, %.lr.ph2169.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph2169.prol ], [ %i.bn, %.lr.ph2169.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2169.prol ], [ 0, %.lr.ph2169.preheader ]
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.prol
  store ptr null, ptr %i.bt, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2169.prol.loopexit, label %.lr.ph2169.prol, !llvm.loop !157

.lr.ph2169.prol.loopexit:                         ; preds = %.lr.ph2169.prol, %.lr.ph2169.preheader
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph2169.preheader ], [ %indvars.iv.next.prol, %.lr.ph2169.prol ]
  %i.bu = icmp ult i32 %i.br, 3
  br i1 %i.bu, label %._crit_edge2170, label %.lr.ph2169

.lr.ph2169:                                       ; preds = %.lr.ph2169.prol.loopexit, %.lr.ph2169
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2169 ], [ %indvars.iv.unr, %.lr.ph2169.prol.loopexit ] ; 5 uses
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !95
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !95
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  store ptr null, ptr %i.cf, align 8, !tbaa !95
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.bf, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2170, label %.lr.ph2169, !llvm.loop !158

._crit_edge2170:                                  ; preds = %.lr.ph2169.prol.loopexit, %.lr.ph2169, %.preheader1901
  store i32 %i.bf, ptr %i.ac, align 4, !tbaa !85
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge2170, %bb.o
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ch = sext i32 %i.bf to i64
  %i.ci = getelementptr [8 x i8], ptr %i.cg, i64 %i.ch
  store ptr %.151535, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr i8, ptr %.12, i64 4
  %i.ck = add i32 %.14, 1                         ; 2 uses
  %i.cl = and i32 %i.ck, 4095
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = tail call i32 @PyErr_CheckSignals() #13
  %.not1734 = icmp eq i32 %i.cn, 0
  br i1 %.not1734, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.co = getelementptr i8, ptr %.12, i64 8
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !7
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %bb.w, %bb.ab, %bb.cm, %bb.cr, %bb.cw, %bb.da, %bb.df, %bb.dl, %bb.dq, %bb.dv, %bb.eb, %bb.eg, %bb.el, %bb.er, %bb.ew, %bb.fa, %bb.fd, %bb.ka, %bb.ph, %bb.pp, %bb.pv, %bb.qd, %bb.qh, %bb.ql, %bb.qo
  %.sink2917.sink.be = phi i32 [ %i.cp, %bb.r ], [ %i.da, %bb.w ], [ %i.dm, %bb.ab ], [ %i.ks, %bb.cm ], [ %i.le, %bb.cr ], [ %i.ln, %bb.cw ], [ %i.lu, %bb.da ], [ %i.mi, %bb.df ], [ %i.mz, %bb.dl ], [ %i.nl, %bb.dq ], [ %i.og, %bb.dv ], [ %i.oy, %bb.eb ], [ %i.pl, %bb.eg ], [ %i.qg, %bb.el ], [ %i.ra, %bb.er ], [ %i.rp, %bb.ew ], [ %i.sm, %bb.fa ], [ %i.sv, %bb.fd ], [ %i.aja, %bb.ka ], [ %i.bfl, %bb.ph ], [ %i.bgz, %bb.pp ], [ %i.bid, %bb.pv ], [ %i.bjr, %bb.qd ], [ %i.bke, %bb.qh ], [ %i.bky, %bb.ql ], [ %i.blf, %bb.qo ]
  %.151535.be = phi ptr [ %.151535, %bb.r ], [ %i.cu, %bb.w ], [ %i.dg, %bb.ab ], [ %.151535, %bb.cm ], [ %i.ky, %bb.cr ], [ %i.lh, %bb.cw ], [ %i.lo, %bb.da ], [ %i.mc, %bb.df ], [ %i.mt, %bb.dl ], [ %i.nf, %bb.dq ], [ %i.oa, %bb.dv ], [ %i.os, %bb.eb ], [ %i.pf, %bb.eg ], [ %i.qa, %bb.el ], [ %i.qu, %bb.er ], [ %i.rj, %bb.ew ], [ %i.sg, %bb.fa ], [ %.151535, %bb.fd ], [ %i.aig, %bb.ka ], [ %.101530.lcssa, %bb.ph ], [ %.111531.lcssa, %bb.pp ], [ %.121532.lcssa, %bb.pv ], [ %.131533.lcssa, %bb.qd ], [ %.151535, %bb.qh ], [ %.151535, %bb.ql ], [ %.151535, %bb.qo ]
  %.40.be = phi ptr [ %.40, %bb.r ], [ %.40, %bb.w ], [ %.40, %bb.ab ], [ %.40, %bb.cm ], [ %.40, %bb.cr ], [ %.40, %bb.cw ], [ %.40, %bb.da ], [ %.40, %bb.df ], [ %.40, %bb.dl ], [ %.40, %bb.dq ], [ %.40, %bb.dv ], [ %.40, %bb.eb ], [ %.40, %bb.eg ], [ %.40, %bb.el ], [ %.40, %bb.er ], [ %.40, %bb.ew ], [ %.40, %bb.fa ], [ %.40, %bb.fd ], [ %i.aif, %bb.ka ], [ %.40, %bb.ph ], [ %.40, %bb.pp ], [ %.40, %bb.pv ], [ %.40, %bb.qd ], [ %.40, %bb.qh ], [ %.40, %bb.ql ], [ %.40, %bb.qo ]
  %.14.be = phi i32 [ %i.ck, %bb.r ], [ %i.cv, %bb.w ], [ %i.dh, %bb.ab ], [ %i.kn, %bb.cm ], [ %i.kz, %bb.cr ], [ %i.li, %bb.cw ], [ %i.lp, %bb.da ], [ %i.md, %bb.df ], [ %i.mu, %bb.dl ], [ %i.ng, %bb.dq ], [ %i.ob, %bb.dv ], [ %i.ot, %bb.eb ], [ %i.pg, %bb.eg ], [ %i.qb, %bb.el ], [ %i.qv, %bb.er ], [ %i.rk, %bb.ew ], [ %i.sh, %bb.fa ], [ %i.sq, %bb.fd ], [ %i.aiw, %bb.ka ], [ %i.bfg, %bb.ph ], [ %i.bgu, %bb.pp ], [ %i.bhy, %bb.pv ], [ %i.bjm, %bb.qd ], [ %i.bjz, %bb.qh ], [ %i.bkt, %bb.ql ], [ %i.bla, %bb.qo ]
  %.12.be = phi ptr [ %i.co, %bb.r ], [ %i.cz, %bb.w ], [ %i.dl, %bb.ab ], [ %i.kr, %bb.cm ], [ %i.ld, %bb.cr ], [ %i.lm, %bb.cw ], [ %i.lt, %bb.da ], [ %i.mh, %bb.df ], [ %i.my, %bb.dl ], [ %i.nk, %bb.dq ], [ %i.of, %bb.dv ], [ %i.ox, %bb.eb ], [ %i.pk, %bb.eg ], [ %i.qf, %bb.el ], [ %i.qz, %bb.er ], [ %i.ro, %bb.ew ], [ %i.sl, %bb.fa ], [ %i.su, %bb.fd ], [ %i.ajb, %bb.ka ], [ %i.bfk, %bb.ph ], [ %i.bgy, %bb.pp ], [ %i.bic, %bb.pv ], [ %i.bjq, %bb.qd ], [ %i.bkd, %bb.qh ], [ %i.bkx, %bb.ql ], [ %i.ble, %bb.qo ]
  br label %.backedge

bb.s:                                             ; preds = %.backedge
  %.not1735 = icmp ult ptr %.151535, %i.b
  br i1 %.not1735, label %bb.t, label %.critedge1900

bb.t:                                             ; preds = %bb.s
  %i.cq = load i16, ptr %.151535, align 2, !tbaa !131
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i32, ptr %.12, align 4, !tbaa !7
  %.not1736 = icmp eq i32 %i.cs, %i.cr
  br i1 %.not1736, label %bb.u, label %.critedge1900

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr i8, ptr %.12, i64 4
  %i.cu = getelementptr i8, ptr %.151535, i64 2
  %i.cv = add i32 %.14, 1                         ; 2 uses
  %i.cw = and i32 %i.cv, 4095
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = tail call i32 @PyErr_CheckSignals() #13
  %.not1737 = icmp eq i32 %i.cy, 0
  br i1 %.not1737, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cz = getelementptr i8, ptr %.12, i64 8
  %i.da = load i32, ptr %i.ct, align 4, !tbaa !7
  br label %.backedge.backedge

end_hunk_5
begin_hunk_6_@sre_ucs2_match:bb.a
  %i.pr = tail call ptr @__ctype_tolower_loc() #14
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !132
  %i.pt = zext nneg i16 %i.pn to i64              ; 2 uses
  %i.pu = getelementptr [4 x i8], ptr %i.ps, i64 %i.pt
  %.0.i.i.i1810 = load i32, ptr %i.pu, align 4, !tbaa !7
  %i.pv = icmp eq i32 %.0.i.i.i1810, %i.pm
  br i1 %i.pv, label %.critedge1900, label %char_loc_ignore.exit1812

char_loc_ignore.exit1812:                         ; preds = %sre_lower_locale.exit.i1809
  %i.pw = tail call ptr @__ctype_toupper_loc() #14
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !132
  %i.py = getelementptr [4 x i8], ptr %i.px, i64 %i.pt
  %.0.i.i7.i1811 = load i32, ptr %i.py, align 4, !tbaa !7
  %.not1890 = icmp eq i32 %.0.i.i7.i1811, %i.pm
  br i1 %.not1890, label %.critedge1900, label %char_loc_ignore.exit1812.thread1864

char_loc_ignore.exit1812.thread1864:              ; preds = %bb.ej, %char_loc_ignore.exit1812
  %i.pz = getelementptr i8, ptr %.12, i64 4
  %i.qa = getelementptr i8, ptr %.151535, i64 2
  %i.qb = add i32 %.14, 1                         ; 2 uses
  %i.qc = and i32 %i.qb, 4095
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %char_loc_ignore.exit1812.thread1864
  %i.qe = tail call i32 @PyErr_CheckSignals() #13
  %.not1698 = icmp eq i32 %i.qe, 0
  br i1 %.not1698, label %bb.el, label %.loopexit

bb.el:                                            ; preds = %char_loc_ignore.exit1812.thread1864, %bb.ek
  %i.qf = getelementptr i8, ptr %.12, i64 8
  %i.qg = load i32, ptr %i.pz, align 4, !tbaa !7
  br label %.backedge.backedge

bb.em:                                            ; preds = %.backedge
  %.not1675 = icmp ult ptr %.151535, %i.b
  br i1 %.not1675, label %bb.en, label %.critedge1900

bb.en:                                            ; preds = %bb.em
  %i.qh = getelementptr i8, ptr %.12, i64 4
  %i.qi = load i16, ptr %.151535, align 2, !tbaa !131 ; 3 uses
  %i.qj = zext i16 %i.qi to i32
  %i.qk = icmp ult i16 %i.qi, 128
  br i1 %i.qk, label %bb.eo, label %sre_lower_ascii.exit1813

bb.eo:                                            ; preds = %bb.en
  %i.ql = zext nneg i16 %i.qi to i64
  %i.qm = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !26
  %i.qo = zext i8 %i.qn to i32
  br label %sre_lower_ascii.exit1813

sre_lower_ascii.exit1813:                         ; preds = %bb.en, %bb.eo
  %i.qp = phi i32 [ %i.qo, %bb.eo ], [ %i.qj, %bb.en ]
  %i.qq = tail call fastcc i32 @sre_ucs2_charset(ptr noundef %i.qh, i32 noundef %i.qp)
  %.not1676 = icmp eq i32 %i.qq, 0
  br i1 %.not1676, label %.critedge1900, label %bb.ep

bb.ep:                                            ; preds = %sre_lower_ascii.exit1813
  %i.qr = load i32, ptr %.12, align 4, !tbaa !7
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr [4 x i8], ptr %.12, i64 %i.qs ; 2 uses
  %i.qu = getelementptr i8, ptr %.151535, i64 2
  %i.qv = add i32 %.14, 1                         ; 2 uses
  %i.qw = and i32 %i.qv, 4095
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qy = tail call i32 @PyErr_CheckSignals() #13
  %.not1677 = icmp eq i32 %i.qy, 0
  br i1 %.not1677, label %bb.er, label %.loopexit

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.qz = getelementptr i8, ptr %i.qt, i64 4
  %i.ra = load i32, ptr %i.qt, align 4, !tbaa !7
  br label %.backedge.backedge

bb.es:                                            ; preds = %.backedge
  %.not1717 = icmp ult ptr %.151535, %i.b
  br i1 %.not1717, label %bb.et, label %.critedge1900

bb.et:                                            ; preds = %bb.es
  %i.rb = getelementptr i8, ptr %.12, i64 4
  %i.rc = load i16, ptr %.151535, align 2, !tbaa !131
  %i.rd = zext i16 %i.rc to i32
  %i.re = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.rd) #13
  %i.rf = tail call fastcc i32 @sre_ucs2_charset(ptr noundef %i.rb, i32 noundef %i.re)
  %.not1718 = icmp eq i32 %i.rf, 0
  br i1 %.not1718, label %.critedge1900, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.rg = load i32, ptr %.12, align 4, !tbaa !7
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr [4 x i8], ptr %.12, i64 %i.rh ; 2 uses
  %i.rj = getelementptr i8, ptr %.151535, i64 2
  %i.rk = add i32 %.14, 1                         ; 2 uses
  %i.rl = and i32 %i.rk, 4095
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.rn = tail call i32 @PyErr_CheckSignals() #13
  %.not1719 = icmp eq i32 %i.rn, 0
  br i1 %.not1719, label %bb.ew, label %.loopexit

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.ro = getelementptr i8, ptr %i.ri, i64 4
  %i.rp = load i32, ptr %i.ri, align 4, !tbaa !7
  br label %.backedge.backedge

bb.ex:                                            ; preds = %.backedge
  %.not1663 = icmp ult ptr %.151535, %i.b
  br i1 %.not1663, label %bb.ey, label %.critedge1900

bb.ey:                                            ; preds = %bb.ex
  %i.rq = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.rr = load i16, ptr %.151535, align 2, !tbaa !131 ; 3 uses
  %i.rs = zext i16 %i.rr to i32
  %i.rt = icmp ult i16 %i.rr, 256
  br i1 %i.rt, label %sre_lower_locale.exit.i1815, label %sre_ucs2_charset_loc_ignore.exit

sre_lower_locale.exit.i1815:                      ; preds = %bb.ey
  %i.ru = tail call ptr @__ctype_tolower_loc() #14
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !132
  %i.rw = zext nneg i16 %i.rr to i64              ; 2 uses
  %i.rx = getelementptr [4 x i8], ptr %i.rv, i64 %i.rw
  %.0.i.i.i1816 = load i32, ptr %i.rx, align 4, !tbaa !7 ; 2 uses
  %i.ry = tail call fastcc i32 @sre_ucs2_charset(ptr noundef readonly %i.rq, i32 noundef %.0.i.i.i1816)
  %.not.i1817 = icmp eq i32 %i.ry, 0
  br i1 %.not.i1817, label %sre_upper_locale.exit.i, label %sre_ucs2_charset_loc_ignore.exit.thread1868

sre_upper_locale.exit.i:                          ; preds = %sre_lower_locale.exit.i1815
  %i.rz = tail call ptr @__ctype_toupper_loc() #14
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !132
  %i.sb = getelementptr [4 x i8], ptr %i.sa, i64 %i.rw
  %.0.i.i12.i = load i32, ptr %i.sb, align 4, !tbaa !7 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i.i12.i, %.0.i.i.i1816
  br i1 %.not11.i, label %.critedge1900, label %sre_ucs2_charset_loc_ignore.exit

sre_ucs2_charset_loc_ignore.exit:                 ; preds = %bb.ey, %sre_upper_locale.exit.i
  %.sink.i = phi i32 [ %i.rs, %bb.ey ], [ %.0.i.i12.i, %sre_upper_locale.exit.i ]
  %i.sc = tail call fastcc i32 @sre_ucs2_charset(ptr noundef readonly %i.rq, i32 noundef %.sink.i)
  %.not1664 = icmp eq i32 %i.sc, 0
  br i1 %.not1664, label %.critedge1900, label %sre_ucs2_charset_loc_ignore.exit.thread1868

sre_ucs2_charset_loc_ignore.exit.thread1868:      ; preds = %sre_lower_locale.exit.i1815, %sre_ucs2_charset_loc_ignore.exit
  %i.sd = load i32, ptr %.12, align 4, !tbaa !7
  %i.se = zext i32 %i.sd to i64
  %i.sf = getelementptr [4 x i8], ptr %.12, i64 %i.se ; 2 uses
  %i.sg = getelementptr i8, ptr %.151535, i64 2
  %i.sh = add i32 %.14, 1                         ; 2 uses
  %i.si = and i32 %i.sh, 4095
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %sre_ucs2_charset_loc_ignore.exit.thread1868
  %i.sk = tail call i32 @PyErr_CheckSignals() #13
  %.not1665 = icmp eq i32 %i.sk, 0
  br i1 %.not1665, label %bb.fa, label %.loopexit

bb.fa:                                            ; preds = %sre_ucs2_charset_loc_ignore.exit.thread1868, %bb.ez
  %i.sl = getelementptr i8, ptr %i.sf, i64 4
  %i.sm = load i32, ptr %i.sf, align 4, !tbaa !7
  br label %.backedge.backedge

bb.fb:                                            ; preds = %.backedge
  %i.sn = load i32, ptr %.12, align 4, !tbaa !7
  %i.so = zext i32 %i.sn to i64
  %i.sp = getelementptr [4 x i8], ptr %.12, i64 %i.so ; 2 uses
  %i.sq = add i32 %.14, 1                         ; 2 uses
  %i.sr = and i32 %i.sq, 4095
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.st = tail call i32 @PyErr_CheckSignals() #13
  %.not1741 = icmp eq i32 %i.st, 0
  br i1 %.not1741, label %bb.fd, label %.loopexit

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.su = getelementptr i8, ptr %i.sp, i64 4
  %i.sv = load i32, ptr %i.sp, align 4, !tbaa !7
  br label %.backedge.backedge

bb.fe:                                            ; preds = %.backedge
  %i.sw = getelementptr i8, ptr %.40, i64 16
  %i.sx = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.sy = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.sx, ptr %i.sw, align 8, !tbaa !7
  %i.sz = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1758 = icmp ne ptr %i.sz, null
  %i.ta = icmp sgt i32 %i.sy, -1
  %or.cond1878 = select i1 %.not1758, i1 %i.ta, i1 false
  br i1 %or.cond1878, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.tb = add nuw i32 %i.sy, 1
  %i.tc = sext i32 %i.tb to i64
  %i.td = shl nsw i64 %i.tc, 3                    ; 4 uses
  %i.te = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.tf = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = icmp ugt i64 %i.td, %i.tg
  br i1 %i.th, label %bb.fg, label %._crit_edge2463

._crit_edge2463:                                  ; preds = %bb.ff
  %.pre2464.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %3 = add i64 %i.tf, %i.td                       ; 3 uses
  %i.ti = icmp slt i64 %i.te, %3
  %.pre2465.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.ti, label %4, label %bb.fi

4:                                                ; preds = %bb.fg
  %5 = sdiv i64 %3, 4
  %6 = add i64 %3, 1024
  %7 = add i64 %6, %5                             ; 2 uses
  %8 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2465.pre, i64 noundef %7) #13 ; 3 uses
  %.not.not.i1819 = icmp eq ptr %8, null
  br i1 %.not.not.i1819, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1820 = icmp eq ptr %10, null
  br i1 %.not.i.i1820, label %bb.fh, label %11

11:                                               ; preds = %9
  tail call void @PyMem_Free(ptr noundef nonnull %10) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fh

12:                                               ; preds = %4
  store ptr %8, ptr %i.u, align 8, !tbaa !88
  store i64 %7, ptr %i.g, align 8, !tbaa !121
  br label %bb.fi

bb.fh:                                            ; preds = %11, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.fi:                                            ; preds = %12, %bb.fg
  %.pre2465 = phi ptr [ %8, %12 ], [ %.pre2465.pre, %bb.fg ] ; 2 uses
  %.not1759 = icmp eq i64 %.111490.ph, -1
  %i.tj = getelementptr i8, ptr %.pre2465, i64 %.111490.ph
  %spec.select = select i1 %.not1759, ptr %.40, ptr %i.tj
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge2463
  %i.tk = phi ptr [ %.pre2464.a, %._crit_edge2463 ], [ %.pre2465, %bb.fi ]
  %.11506 = phi ptr [ %.40, %._crit_edge2463 ], [ %spec.select, %bb.fi ]
  %i.tl = load i64, ptr %i.e, align 8, !tbaa !120
  %i.tm = getelementptr i8, ptr %i.tk, i64 %i.tl
  %i.tn = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tm, ptr noundef nonnull align 8 dereferenceable(1) %i.tn, i64 %i.td, i1 false)
  %i.to = load i64, ptr %i.e, align 8, !tbaa !120
  %i.tp = add i64 %i.to, %i.td
  store i64 %i.tp, ptr %i.e, align 8, !tbaa !120
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fe, %bb.fj, %bb.gf
  %.01520 = phi ptr [ %.11521, %bb.gf ], [ %.151535, %bb.fj ], [ %.151535, %bb.fe ] ; 10 uses
  %.21507 = phi ptr [ %.41509, %bb.gf ], [ %.11506, %bb.fj ], [ %.40, %bb.fe ] ; 12 uses
  %.11493 = phi i32 [ %.21494, %bb.gf ], [ %.14, %bb.fj ], [ %.14, %bb.fe ] ; 8 uses
  %.11480 = phi i64 [ %.21481, %bb.gf ], [ %.111490.ph, %bb.fj ], [ %.111490.ph, %bb.fe ] ; 7 uses
  %.2 = phi ptr [ %i.vu, %bb.gf ], [ %.12, %bb.fj ], [ %.12, %bb.fe ] ; 9 uses
  %i.tq = load i32, ptr %.2, align 4, !tbaa !7
  %.not1783 = icmp eq i32 %i.tq, 0
  br i1 %.not1783, label %bb.gg, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tr = getelementptr i8, ptr %.2, i64 4        ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !7
  switch i32 %i.ts, label %.thread [
    i32 16, label %bb.fm
    i32 13, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  %.not1785 = icmp ult ptr %.01520, %i.b
  br i1 %.not1785, label %bb.fn, label %bb.gf

bb.fn:                                            ; preds = %bb.fm
  %i.tt = load i16, ptr %.01520, align 2, !tbaa !131
  %i.tu = zext i16 %i.tt to i32
  %i.tv = getelementptr i8, ptr %.2, i64 8
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !7
  %.not1786 = icmp eq i32 %i.tw, %i.tu
  br i1 %.not1786, label %.thread, label %bb.gf

bb.fo:                                            ; preds = %bb.fl
  %.not1787 = icmp ult ptr %.01520, %i.b
  br i1 %.not1787, label %bb.fp, label %bb.gf

bb.fp:                                            ; preds = %bb.fo
  %i.tx = getelementptr i8, ptr %.2, i64 12
  %i.ty = load i16, ptr %.01520, align 2, !tbaa !131
  %i.tz = zext i16 %i.ty to i32
  %i.ua = tail call fastcc i32 @sre_ucs2_charset(ptr noundef %i.tx, i32 noundef %i.tz)
  %.not1788 = icmp eq i32 %i.ua, 0
  br i1 %.not1788, label %bb.gf, label %.thread

.thread:                                          ; preds = %bb.fl, %bb.fn, %bb.fp
  store ptr %.01520, ptr %0, align 8, !tbaa !81
  %i.ub = getelementptr i8, ptr %.21507, i64 24
  store ptr %.2, ptr %i.ub, align 8, !tbaa !159
  %i.uc = getelementptr i8, ptr %.21507, i64 32
  store ptr %.01520, ptr %i.uc, align 8, !tbaa !160
  %i.ud = load i64, ptr %i.e, align 8, !tbaa !120 ; 5 uses
  %i.ue = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.uf = sub i64 %i.ue, %i.ud
  %i.ug = icmp ult i64 %i.uf, 56
  br i1 %i.ug, label %bb.fq, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.pre2494.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fx

bb.fq:                                            ; preds = %.thread
  %i.uh = add i64 %i.ud, 56                       ; 2 uses
  %i.ui = icmp slt i64 %i.ue, %i.uh
  %.pre2495.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.ui, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  %i.uj = sdiv i64 %i.uh, 4
  %i.uk = add i64 %i.ud, 1080
  %i.ul = add i64 %i.uk, %i.uj                    ; 2 uses
  %i.um = tail call ptr @PyMem_Realloc(ptr noundef %.pre2495.pre, i64 noundef %i.ul) #13 ; 3 uses
  %.not.not.i1824.a = icmp eq ptr %i.um, null
  br i1 %.not.not.i1824.a, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.un = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i1825.a = icmp eq ptr %i.un, null
  br i1 %.not.i.i1825.a, label %bb.fv, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @PyMem_Free(ptr noundef nonnull %i.un) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  store ptr %i.um, ptr %i.u, align 8, !tbaa !88
  store i64 %i.ul, ptr %i.g, align 8, !tbaa !121
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft, %bb.fs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.fw:                                            ; preds = %bb.fu, %bb.fq
  %.pre2495.a = phi ptr [ %i.um, %bb.fu ], [ %.pre2495.pre, %bb.fq ] ; 2 uses
  %.not1789 = icmp eq i64 %.11480, -1
  %i.uo = getelementptr i8, ptr %.pre2495.a, i64 %.11480
  %spec.select2918.a = select i1 %.not1789, ptr %.21507, ptr %i.uo
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.thread._crit_edge
  %i.up = phi ptr [ %.pre2494.a, %.thread._crit_edge ], [ %.pre2495.a, %bb.fw ]
  %.31508 = phi ptr [ %.21507, %.thread._crit_edge ], [ %spec.select2918.a, %bb.fw ]
  %i.uq = getelementptr i8, ptr %i.up, i64 %i.ud  ; 5 uses
  %i.ur = load i64, ptr %i.e, align 8, !tbaa !120
  %i.us = add i64 %i.ur, 56
  store i64 %i.us, ptr %i.e, align 8, !tbaa !120
  %i.ut = getelementptr i8, ptr %i.uq, i64 24
  store ptr %i.tr, ptr %i.ut, align 8, !tbaa !159
  %i.uu = getelementptr i8, ptr %.31508, i64 40
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !156
  %i.uw = getelementptr i8, ptr %i.uq, i64 40
  store i32 %i.uv, ptr %i.uw, align 8, !tbaa !156
  %i.ux = getelementptr i8, ptr %i.uq, i64 44
  store i32 11, ptr %i.ux, align 4, !tbaa !155
  %i.uy = getelementptr i8, ptr %i.uq, i64 48
  store i64 %.11480, ptr %i.uy, align 8, !tbaa !153
  br label %.backedge1906.backedge

.backedge1906.backedge:                           ; preds = %bb.fx, %bb.hg, %bb.hu, %bb.jc, %bb.kg, %bb.ko, %bb.lg, %bb.lu, %bb.mc, %bb.mo, %bb.nf, %bb.nr, %bb.oj, %bb.oy, %bb.qt, %bb.rg
  %.01505.be = phi ptr [ %i.aqx, %bb.lu ], [ %i.axb, %bb.nf ], [ %i.uq, %bb.fx ], [ %i.azd, %bb.nr ], [ %i.bbn, %bb.oj ], [ %i.bmc, %bb.qt ], [ %i.boi, %bb.rg ], [ %i.ali, %bb.ko ], [ %i.aol, %bb.lg ], [ %i.asc, %bb.mc ], [ %i.auh, %bb.mo ], [ %i.ajx, %bb.kg ], [ %i.zi, %bb.hg ], [ %i.abm, %bb.hu ], [ %i.aft, %bb.jc ], [ %i.bds, %bb.oy ]
  %.01492.be = phi i32 [ %.81500, %bb.lu ], [ %.13, %bb.nf ], [ %.11493, %bb.fx ], [ %.91501, %bb.nr ], [ %.101502, %bb.oj ], [ %.14, %bb.qt ], [ %.14, %bb.rg ], [ %.14, %bb.ko ], [ %.14, %bb.lg ], [ %.14, %bb.mc ], [ %.14, %bb.mo ], [ %.14, %bb.kg ], [ %.31495, %bb.hg ], [ %.41496, %bb.hu ], [ %.61498, %bb.jc ], [ %.14, %bb.oy ]
  %.01479.be = phi i64 [ %i.aqf, %bb.lu ], [ %i.awm, %bb.nf ], [ %i.ud, %bb.fx ], [ %i.ayu, %bb.nr ], [ %i.bbb, %bb.oj ], [ %i.blt, %bb.qt ], [ %i.bnx, %bb.rg ], [ %i.akz, %bb.ko ], [ %i.anx, %bb.lg ], [ %i.art, %bb.mc ], [ %i.atw, %bb.mo ], [ %i.ajo, %bb.kg ], [ %i.yz, %bb.hg ], [ %i.abd, %bb.hu ], [ %i.afk, %bb.jc ], [ %i.bdj, %bb.oy ]
  %.01478.be = phi ptr [ %.7, %bb.lu ], [ %i.axr, %bb.nf ], [ %i.tr, %bb.fx ], [ %i.azf, %bb.nr ], [ %i.bbp, %bb.oj ], [ %i.bme, %bb.qt ], [ %i.bok, %bb.rg ], [ %i.alz, %bb.ko ], [ %i.apc, %bb.lg ], [ %i.ast, %bb.mc ], [ %.12, %bb.mo ], [ %i.akl, %bb.kg ], [ %i.zw, %bb.hg ], [ %i.aca, %bb.hu ], [ %i.agh, %bb.jc ], [ %i.bdu, %bb.oy ]
  br label %.backedge1906

bb.fy:                                            ; preds = %bb.rw
  br i1 %.not1782, label %.critedge1900, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.uz = getelementptr i8, ptr %i.bqa, i64 16
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !161 ; 2 uses
  %i.vb = icmp sgt i32 %i.va, -1
  br i1 %i.vb, label %bb.ga, label %.critedge1900

bb.ga:                                            ; preds = %bb.fz
  %i.vc = add nuw i32 %i.va, 1
  %i.vd = sext i32 %i.vc to i64
  %i.ve = shl nsw i64 %i.vd, 3
  %i.vf = sub i64 %i.bpx, %i.ve
  store i64 %i.vf, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.gb:                                            ; preds = %bb.rw
  br i1 %.not1782, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vg = getelementptr i8, ptr %i.bqa, i64 16
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !161 ; 2 uses
  %i.vi = icmp sgt i32 %i.vh, -1
  br i1 %i.vi, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.vj = add nuw i32 %i.vh, 1
  %i.vk = sext i32 %i.vj to i64
  %i.vl = shl nsw i64 %i.vk, 3                    ; 2 uses
  %i.vm = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.vn = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.vo = sub nsw i64 0, %i.vl
  %i.vp = getelementptr i8, ptr %i.vn, i64 %i.vo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vm, ptr noundef nonnull align 1 dereferenceable(1) %i.vp, i64 %i.vl, i1 false)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gb, %bb.gc, %bb.gd
  %i.vq = getelementptr i8, ptr %i.bqa, i64 16
  %i.vr = load <2 x i32>, ptr %i.vq, align 8, !tbaa !7
  store <2 x i32> %i.vr, ptr %i.ac, align 4, !tbaa !7
  br label %bb.gf

bb.gf:                                            ; preds = %bb.fo, %bb.fp, %bb.fm, %bb.fn, %bb.ge
  %.11521 = phi ptr [ %i.brl, %bb.ge ], [ %.01520, %bb.fm ], [ %.01520, %bb.fn ], [ %.01520, %bb.fp ], [ %.01520, %bb.fo ]
  %.41509 = phi ptr [ %i.bqa, %bb.ge ], [ %.21507, %bb.fm ], [ %.21507, %bb.fn ], [ %.21507, %bb.fp ], [ %.21507, %bb.fo ]
  %.21494 = phi i32 [ %.13, %bb.ge ], [ %.11493, %bb.fm ], [ %.11493, %bb.fn ], [ %.11493, %bb.fp ], [ %.11493, %bb.fo ]
  %.21481 = phi i64 [ %i.bpt, %bb.ge ], [ %.11480, %bb.fm ], [ %.11480, %bb.fn ], [ %.11480, %bb.fp ], [ %.11480, %bb.fo ]
  %.3 = phi ptr [ %i.brj, %bb.ge ], [ %.2, %bb.fm ], [ %.2, %bb.fn ], [ %.2, %bb.fp ], [ %.2, %bb.fo ] ; 2 uses
  %i.vs = load i32, ptr %.3, align 4, !tbaa !7
  %i.vt = zext i32 %i.vs to i64
  %i.vu = getelementptr [4 x i8], ptr %.3, i64 %i.vt
  br label %bb.fk, !llvm.loop !162

bb.gg:                                            ; preds = %bb.fk
  %i.vv = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.vv, null
  br i1 %.not1784, label %.critedge1900, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vw = getelementptr i8, ptr %.21507, i64 16
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !161 ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, -1
  br i1 %i.vy, label %bb.gi, label %.critedge1900

bb.gi:                                            ; preds = %bb.gh
  %i.vz = add nuw i32 %i.vx, 1
  %i.wa = sext i32 %i.vz to i64
  %i.wb = shl nsw i64 %i.wa, 3
  %i.wc = load i64, ptr %i.e, align 8, !tbaa !120
  %i.wd = sub i64 %i.wc, %i.wb
  store i64 %i.wd, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.gj:                                            ; preds = %.backedge
  %i.we = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !7
  %i.wg = zext i32 %i.wf to i64
  %i.wh = ptrtoint ptr %.151535 to i64
  %i.wi = sub i64 %i.ab, %i.wh
  %i.wj = ashr exact i64 %i.wi, 1
  %i.wk = icmp slt i64 %i.wj, %i.wg
  br i1 %i.wk, label %.critedge1900, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.wl = getelementptr i8, ptr %.12, i64 12
  %i.wm = getelementptr i8, ptr %.12, i64 8
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !7
  %i.wo = zext i32 %i.wn to i64
  %i.wp = tail call fastcc i64 @sre_ucs2_count(ptr noundef %0, ptr noundef %i.wl, i64 noundef %i.wo) ; 5 uses
  %i.wq = icmp slt i64 %i.wp, 0
  br i1 %i.wq, label %.loopexit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.wr = load ptr, ptr %i.u, align 8, !tbaa !88  ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 %.111490.ph ; 8 uses
  store i64 %i.wp, ptr %i.ws, align 8, !tbaa !163
  %i.wt = getelementptr [2 x i8], ptr %.151535, i64 %i.wp ; 5 uses
  %i.wu = load i32, ptr %i.we, align 4, !tbaa !7
  %i.wv = zext i32 %i.wu to i64
  %i.ww = icmp samesign ult i64 %i.wp, %i.wv
  br i1 %i.ww, label %.critedge1900, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.wx = load i32, ptr %.12, align 4, !tbaa !7
  %i.wy = zext i32 %i.wx to i64
  %i.wz = getelementptr [4 x i8], ptr %.12, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !7
  %i.xb = icmp eq i32 %i.xa, 1
  br i1 %i.xb, label %bb.gn, label %bb.gs

bb.gn:                                            ; preds = %bb.gm
  %i.xc = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.xd = icmp eq ptr %i.wt, %i.xc
  br i1 %i.xd, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %bb.gn
  %i.xe = getelementptr i8, ptr %i.ws, i64 40
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !156
  %.not1699 = icmp eq i32 %i.xf, 0
  br i1 %.not1699, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xg = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1700 = icmp eq i32 %i.xg, 0
  br i1 %.not1700, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.xh = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.xi = icmp eq ptr %i.wt, %i.xh
  br i1 %i.xi, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.go
  store ptr %i.wt, ptr %0, align 8, !tbaa !81
  br label %.critedge1900

bb.gs:                                            ; preds = %bb.gm, %bb.gn, %bb.gq
  %i.xj = getelementptr i8, ptr %i.ws, i64 16
  %i.xk = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.xl = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.xk, ptr %i.xj, align 8, !tbaa !7
  %i.xm = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1701 = icmp ne ptr %i.xm, null
  %i.xn = icmp sgt i32 %i.xl, -1
  %or.cond1879 = select i1 %.not1701, i1 %i.xn, i1 false
  br i1 %or.cond1879, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %bb.gs
  %i.xo = add nuw i32 %i.xl, 1
  %i.xp = sext i32 %i.xo to i64
  %i.xq = shl nsw i64 %i.xp, 3                    ; 4 uses
  %i.xr = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.xs = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = icmp ugt i64 %i.xq, %i.xt
  br i1 %i.xu, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %13 = add i64 %i.xs, %i.xq                      ; 3 uses
  %i.xv = icmp slt i64 %i.xr, %13
  br i1 %i.xv, label %14, label %bb.gw

14:                                               ; preds = %bb.gu
  %15 = sdiv i64 %13, 4
  %16 = add i64 %13, 1024
  %17 = add i64 %16, %15                          ; 2 uses
  %18 = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.wr, i64 noundef %17) #13 ; 3 uses
  %.not.not.i1829 = icmp eq ptr %18, null
  br i1 %.not.not.i1829, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1830 = icmp eq ptr %20, null
  br i1 %.not.i.i1830, label %bb.gv, label %21

21:                                               ; preds = %19
  tail call void @PyMem_Free(ptr noundef nonnull %20) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.gv

22:                                               ; preds = %14
  store ptr %18, ptr %i.u, align 8, !tbaa !88
  store i64 %17, ptr %i.g, align 8, !tbaa !121
  br label %bb.gw

bb.gv:                                            ; preds = %21, %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.gw:                                            ; preds = %22, %bb.gu
  %23 = phi ptr [ %18, %22 ], [ %i.wr, %bb.gu ]   ; 2 uses
  %.not1702 = icmp eq i64 %.111490.ph, -1
  %i.xw = getelementptr i8, ptr %23, i64 %.111490.ph
  %spec.select2919.a = select i1 %.not1702, ptr %i.ws, ptr %i.xw
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gt
  %i.xx = phi ptr [ %i.wr, %bb.gt ], [ %23, %bb.gw ]
  %.51510 = phi ptr [ %i.ws, %bb.gt ], [ %spec.select2919.a, %bb.gw ]
  %i.xy = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xz = getelementptr i8, ptr %i.xx, i64 %i.xy
  %i.ya = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xz, ptr noundef nonnull align 8 dereferenceable(1) %i.ya, i64 %i.xq, i1 false)
  %i.yb = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yc = add i64 %i.yb, %i.xq
  store i64 %i.yc, ptr %i.e, align 8, !tbaa !120
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gs
  %.61511 = phi ptr [ %.51510, %bb.gx ], [ %i.ws, %bb.gs ] ; 5 uses
  %i.yd = load i32, ptr %.12, align 4, !tbaa !7   ; 2 uses
  %i.ye = zext i32 %i.yd to i64
  %i.yf = getelementptr [4 x i8], ptr %.12, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !7
  %i.yh = icmp eq i32 %i.yg, 16
  br i1 %i.yh, label %bb.gz, label %._crit_edge2476

._crit_edge2476:                                  ; preds = %bb.gy
  %.pre2477.a = load i64, ptr %.61511, align 8, !tbaa !163
  br label %bb.hp

bb.gz:                                            ; preds = %bb.gy
  %i.yi = add i32 %i.yd, 1
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr [4 x i8], ptr %.12, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !7
  %i.ym = getelementptr i8, ptr %.61511, i64 8
  store i32 %i.yl, ptr %i.ym, align 8, !tbaa !26
  %.71512.promoted.pre = load i64, ptr %.61511, align 8, !tbaa !163
  br label %bb.ha

bb.ha:                                            ; preds = %bb.hn, %bb.gz
  %.71512.promoted = phi i64 [ %.71512.promoted.pre, %bb.gz ], [ %i.aas, %bb.hn ] ; 2 uses
  %.21522 = phi ptr [ %i.wt, %bb.gz ], [ %i.aaq, %bb.hn ]
  %.71512 = phi ptr [ %.61511, %bb.gz ], [ %i.bqa, %bb.hn ] ; 10 uses
  %.31495 = phi i32 [ %.14, %bb.gz ], [ %.13, %bb.hn ] ; 4 uses
  %.31482 = phi i64 [ %.111490.ph, %bb.gz ], [ %i.bpt, %bb.hn ] ; 3 uses
  %.4 = phi ptr [ %.12, %bb.gz ], [ %i.bsj, %bb.hn ] ; 6 uses
  %i.yn = getelementptr i8, ptr %.4, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !7
  %i.yp = zext i32 %i.yo to i64                   ; 2 uses
  %.not17062177 = icmp slt i64 %.71512.promoted, %i.yp
  br i1 %.not17062177, label %._crit_edge2181, label %.lr.ph2180

.lr.ph2180:                                       ; preds = %bb.ha
  %i.yq = getelementptr i8, ptr %.71512, i64 8
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph2180, %.critedge2
  %.315232178 = phi ptr [ %.21522, %.lr.ph2180 ], [ %i.yv, %.critedge2 ] ; 5 uses
  %i.yr = phi i64 [ %.71512.promoted, %.lr.ph2180 ], [ %i.yw, %.critedge2 ] ; 2 uses
  %.not1707 = icmp ult ptr %.315232178, %i.b
  br i1 %.not1707, label %bb.hc, label %.critedge2

bb.hc:                                            ; preds = %bb.hb
  %i.ys = load i16, ptr %.315232178, align 2, !tbaa !131
  %i.yt = zext i16 %i.ys to i32
  %i.yu = load i32, ptr %i.yq, align 8, !tbaa !26
  %.not1708 = icmp eq i32 %i.yu, %i.yt
  br i1 %.not1708, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.hb, %bb.hc
  %i.yv = getelementptr i8, ptr %.315232178, i64 -2
  %i.yw = add nsw i64 %i.yr, -1                   ; 2 uses
  store i64 %i.yw, ptr %.71512, align 8, !tbaa !163
  %.not1706.not = icmp sgt i64 %i.yr, %i.yp
  br i1 %.not1706.not, label %bb.hb, label %._crit_edge2181, !llvm.loop !164

.critedge:                                        ; preds = %bb.hc
  store ptr %.315232178, ptr %0, align 8, !tbaa !81
  %i.yx = getelementptr i8, ptr %.71512, i64 24
  store ptr %.4, ptr %i.yx, align 8, !tbaa !159
  %i.yy = getelementptr i8, ptr %.71512, i64 32
  store ptr %.315232178, ptr %i.yy, align 8, !tbaa !160
  %i.yz = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.za = load i64, ptr %i.g, align 8, !tbaa !121
  %i.zb = sub i64 %i.za, %i.yz
  %i.zc = icmp ult i64 %i.zb, 56
  br i1 %i.zc, label %bb.hd, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre2482.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.hg

bb.hd:                                            ; preds = %.critedge
  %i.zd = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.ze = icmp slt i32 %i.zd, 0
  br i1 %i.ze, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.zf = sext i32 %i.zd to i64
  br label %.loopexit

bb.hf:                                            ; preds = %bb.hd
  %.not1709 = icmp eq i64 %.31482, -1
  %.pre2483 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.zg = getelementptr i8, ptr %.pre2483, i64 %.31482
  %spec.select2920.a = select i1 %.not1709, ptr %.71512, ptr %i.zg
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.critedge._crit_edge
  %i.zh = phi ptr [ %.pre2482.a, %.critedge._crit_edge ], [ %.pre2483, %bb.hf ]
  %.81513 = phi ptr [ %.71512, %.critedge._crit_edge ], [ %spec.select2920.a, %bb.hf ]
  %i.zi = getelementptr i8, ptr %i.zh, i64 %i.yz  ; 5 uses
  %i.zj = load i64, ptr %i.e, align 8, !tbaa !120
  %i.zk = add i64 %i.zj, 56
  store i64 %i.zk, ptr %i.e, align 8, !tbaa !120
  %i.zl = load i32, ptr %.4, align 4, !tbaa !7
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr [4 x i8], ptr %.4, i64 %i.zm
  %i.zo = getelementptr i8, ptr %i.zi, i64 24
  store ptr %i.zn, ptr %i.zo, align 8, !tbaa !159
  %i.zp = getelementptr i8, ptr %.81513, i64 40
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !156
  %i.zr = getelementptr i8, ptr %i.zi, i64 40
  store i32 %i.zq, ptr %i.zr, align 8, !tbaa !156
  %i.zs = getelementptr i8, ptr %i.zi, i64 44
  store i32 8, ptr %i.zs, align 4, !tbaa !155
  %i.zt = getelementptr i8, ptr %i.zi, i64 48
  store i64 %.31482, ptr %i.zt, align 8, !tbaa !153
  %i.zu = load i32, ptr %.4, align 4, !tbaa !7
  %i.zv = zext i32 %i.zu to i64
  %i.zw = getelementptr [4 x i8], ptr %.4, i64 %i.zv
  br label %.backedge1906.backedge

bb.hh:                                            ; preds = %bb.sg
  br i1 %.not1653, label %.critedge1900, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.zx = getelementptr i8, ptr %i.bqa, i64 16
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !161 ; 2 uses
  %i.zz = icmp sgt i32 %i.zy, -1
  br i1 %i.zz, label %bb.hj, label %.critedge1900

bb.hj:                                            ; preds = %bb.hi
  %i.aaa = add nuw i32 %i.zy, 1
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = shl nsw i64 %i.aab, 3
  %i.aad = sub i64 %i.bpx, %i.aac
  store i64 %i.aad, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.hk:                                            ; preds = %bb.sg
  br i1 %.not1653, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aae = getelementptr i8, ptr %i.bqa, i64 16
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !161 ; 2 uses
  %i.aag = icmp sgt i32 %i.aaf, -1
  br i1 %i.aag, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.aah = add nuw i32 %i.aaf, 1
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = shl nsw i64 %i.aai, 3                  ; 2 uses
  %i.aak = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.aal = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.aam = sub nsw i64 0, %i.aaj
  %i.aan = getelementptr i8, ptr %i.aal, i64 %i.aam
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aak, ptr noundef nonnull align 1 dereferenceable(1) %i.aan, i64 %i.aaj, i1 false)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.aao = getelementptr i8, ptr %i.bqa, i64 16
  %i.aap = load <2 x i32>, ptr %i.aao, align 8, !tbaa !7
  store <2 x i32> %i.aap, ptr %i.ac, align 4, !tbaa !7
  %i.aaq = getelementptr i8, ptr %i.bsl, i64 -2
  %i.aar = load i64, ptr %i.bqa, align 8, !tbaa !163
  %i.aas = add i64 %i.aar, -1                     ; 2 uses
  store i64 %i.aas, ptr %i.bqa, align 8, !tbaa !163
  br label %bb.ha

._crit_edge2181:                                  ; preds = %.critedge2, %bb.ha
  %i.aat = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1710 = icmp eq ptr %i.aat, null
  br i1 %.not1710, label %.critedge1900, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge2181
  %i.aau = getelementptr i8, ptr %.71512, i64 16
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !161 ; 2 uses
  %i.aaw = icmp sgt i32 %i.aav, -1
  br i1 %i.aaw, label %.sink.split, label %.critedge1900

bb.hp:                                            ; preds = %._crit_edge2476, %bb.ib
  %i.aax = phi i64 [ %.pre2477.a, %._crit_edge2476 ], [ %i.acw, %bb.ib ]
  %.41524 = phi ptr [ %i.wt, %._crit_edge2476 ], [ %i.acu, %bb.ib ] ; 2 uses
  %.91514 = phi ptr [ %.61511, %._crit_edge2476 ], [ %i.bqa, %bb.ib ] ; 8 uses
  %.41496 = phi i32 [ %.14, %._crit_edge2476 ], [ %.13, %bb.ib ] ; 4 uses
  %.41483 = phi i64 [ %.111490.ph, %._crit_edge2476 ], [ %i.bpt, %bb.ib ] ; 3 uses
  %.5 = phi ptr [ %.12, %._crit_edge2476 ], [ %i.bso, %bb.ib ] ; 6 uses
  %i.aay = getelementptr i8, ptr %.5, i64 4
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !7
  %i.aba = zext i32 %i.aaz to i64
  %.not1703 = icmp slt i64 %i.aax, %i.aba
  br i1 %.not1703, label %bb.ic, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store ptr %.41524, ptr %0, align 8, !tbaa !81
end_hunk_6
begin_hunk_7_@sre_ucs2_match:bb.a

bb.hs:                                            ; preds = %bb.hr
  %i.abj = sext i32 %i.abh to i64
  br label %.loopexit

bb.ht:                                            ; preds = %bb.hr
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2480.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.abk = getelementptr i8, ptr %.pre2480.a, i64 %.41483
  %spec.select2921 = select i1 %.not1705, ptr %.91514, ptr %i.abk
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge2478
  %i.abl = phi ptr [ %.pre2479, %._crit_edge2478 ], [ %.pre2480.a, %bb.ht ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2478 ], [ %spec.select2921, %bb.ht ]
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.abd ; 5 uses
  %i.abn = load i64, ptr %i.e, align 8, !tbaa !120
  %i.abo = add i64 %i.abn, 56
  store i64 %i.abo, ptr %i.e, align 8, !tbaa !120
  %i.abp = load i32, ptr %.5, align 4, !tbaa !7
  %i.abq = zext i32 %i.abp to i64
  %i.abr = getelementptr [4 x i8], ptr %.5, i64 %i.abq
  %i.abs = getelementptr i8, ptr %i.abm, i64 24
  store ptr %i.abr, ptr %i.abs, align 8, !tbaa !159
  %i.abt = getelementptr i8, ptr %.101515, i64 40
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !156
  %i.abv = getelementptr i8, ptr %i.abm, i64 40
  store i32 %i.abu, ptr %i.abv, align 8, !tbaa !156
  %i.abw = getelementptr i8, ptr %i.abm, i64 44
  store i32 9, ptr %i.abw, align 4, !tbaa !155
  %i.abx = getelementptr i8, ptr %i.abm, i64 48
  store i64 %.41483, ptr %i.abx, align 8, !tbaa !153
  %i.aby = load i32, ptr %.5, align 4, !tbaa !7
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr [4 x i8], ptr %.5, i64 %i.abz
  br label %.backedge1906.backedge

bb.hv:                                            ; preds = %bb.sh
  br i1 %.not1650, label %.critedge1900, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.acb = getelementptr i8, ptr %i.bqa, i64 16
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !161 ; 2 uses
  %i.acd = icmp sgt i32 %i.acc, -1
  br i1 %i.acd, label %bb.hx, label %.critedge1900

bb.hx:                                            ; preds = %bb.hw
  %i.ace = add nuw i32 %i.acc, 1
  %i.acf = sext i32 %i.ace to i64
  %i.acg = shl nsw i64 %i.acf, 3
  %i.ach = sub i64 %i.bpx, %i.acg
  store i64 %i.ach, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.hy:                                            ; preds = %bb.sh
  br i1 %.not1650, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aci = getelementptr i8, ptr %i.bqa, i64 16
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !161 ; 2 uses
  %i.ack = icmp sgt i32 %i.acj, -1
  br i1 %i.ack, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.acl = add nuw i32 %i.acj, 1
  %i.acm = sext i32 %i.acl to i64
  %i.acn = shl nsw i64 %i.acm, 3                  ; 2 uses
  %i.aco = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.acp = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.acq = sub nsw i64 0, %i.acn
  %i.acr = getelementptr i8, ptr %i.acp, i64 %i.acq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aco, ptr noundef nonnull align 1 dereferenceable(1) %i.acr, i64 %i.acn, i1 false)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hy, %bb.hz, %bb.ia
  %i.acs = getelementptr i8, ptr %i.bqa, i64 16
  %i.act = load <2 x i32>, ptr %i.acs, align 8, !tbaa !7
  store <2 x i32> %i.act, ptr %i.ac, align 4, !tbaa !7
  %i.acu = getelementptr i8, ptr %i.bsq, i64 -2
  %i.acv = load i64, ptr %i.bqa, align 8, !tbaa !163
  %i.acw = add i64 %i.acv, -1                     ; 2 uses
  store i64 %i.acw, ptr %i.bqa, align 8, !tbaa !163
  br label %bb.hp, !llvm.loop !165

bb.ic:                                            ; preds = %bb.hp
  %i.acx = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1704 = icmp eq ptr %i.acx, null
  br i1 %.not1704, label %.critedge1900, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.acy = getelementptr i8, ptr %.91514, i64 16
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !161 ; 2 uses
  %i.ada = icmp sgt i32 %i.acz, -1
  br i1 %i.ada, label %.sink.split, label %.critedge1900

.sink.split:                                      ; preds = %bb.id, %bb.ho
  %.sink = phi i32 [ %i.aav, %bb.ho ], [ %i.acz, %bb.id ]
  %.111516.ph = phi ptr [ %.71512, %bb.ho ], [ %.91514, %bb.id ]
  %.51497.ph = phi i32 [ %.31495, %bb.ho ], [ %.41496, %bb.id ]
  %i.adb = add nuw i32 %.sink, 1
  %i.adc = sext i32 %i.adb to i64
  %i.add = shl nsw i64 %i.adc, 3
  %i.ade = load i64, ptr %i.e, align 8, !tbaa !120
  %i.adf = sub i64 %i.ade, %i.add
  store i64 %i.adf, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.ie:                                            ; preds = %.backedge
  %i.adg = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !7 ; 2 uses
  %i.adi = zext i32 %i.adh to i64                 ; 2 uses
  %i.adj = ptrtoint ptr %.151535 to i64
  %i.adk = sub i64 %i.ab, %i.adj
  %i.adl = ashr exact i64 %i.adk, 1
  %i.adm = icmp slt i64 %i.adl, %i.adi
  br i1 %i.adm, label %.critedge1900, label %bb.if

bb.if:                                            ; preds = %bb.ie
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.adn = icmp eq i32 %i.adh, 0
  br i1 %i.adn, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store i64 0, ptr %.40, align 8, !tbaa !163
  br label %bb.ik

bb.ih:                                            ; preds = %bb.if
  %i.ado = getelementptr i8, ptr %.12, i64 12
  %i.adp = tail call fastcc i64 @sre_ucs2_count(ptr noundef nonnull %0, ptr noundef %i.ado, i64 noundef %i.adi) ; 5 uses
  %i.adq = icmp slt i64 %i.adp, 0
  br i1 %i.adq, label %.loopexit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.adr = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ads = getelementptr i8, ptr %i.adr, i64 %.111490.ph ; 3 uses
  %i.adt = load i32, ptr %i.adg, align 4, !tbaa !7
  %i.adu = zext i32 %i.adt to i64
  %i.adv = icmp samesign ult i64 %i.adp, %i.adu
  br i1 %i.adv, label %.critedge1900, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  store i64 %i.adp, ptr %i.ads, align 8, !tbaa !163
  %i.adw = getelementptr [2 x i8], ptr %.151535, i64 %i.adp
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ig
  %.51525 = phi ptr [ %.151535, %bb.ig ], [ %i.adw, %bb.ij ] ; 5 uses
  %.121517 = phi ptr [ %.40, %bb.ig ], [ %i.ads, %bb.ij ] ; 6 uses
  %i.adx = load i32, ptr %.12, align 4, !tbaa !7
  %i.ady = zext i32 %i.adx to i64
  %i.adz = getelementptr [4 x i8], ptr %.12, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !7
  %i.aeb = icmp eq i32 %i.aea, 1
  br i1 %i.aeb, label %bb.il, label %bb.ir

bb.il:                                            ; preds = %bb.ik
  %i.aec = getelementptr i8, ptr %.121517, i64 40
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !156
  %.not1687 = icmp eq i32 %i.aed, 0
  br i1 %.not1687, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aee = load i32, ptr %i.al, align 8, !tbaa !83
  %.not1688 = icmp eq i32 %i.aee, 0
  br i1 %.not1688, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aef = load ptr, ptr %i.a, align 8, !tbaa !84
  %.not1689 = icmp eq ptr %.51525, %i.aef
  br i1 %.not1689, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.aeg = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1690 = icmp eq i32 %i.aeg, 0
  br i1 %.not1690, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aeh = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.aei = icmp eq ptr %.51525, %i.aeh
  br i1 %i.aei, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.il
  store ptr %.51525, ptr %0, align 8, !tbaa !81
  br label %.critedge1900

bb.ir:                                            ; preds = %bb.ik, %bb.in, %bb.ip
  %i.aej = getelementptr i8, ptr %.121517, i64 16
  %i.aek = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.ael = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.aek, ptr %i.aej, align 8, !tbaa !7
  %i.aem = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1691 = icmp ne ptr %i.aem, null
  %i.aen = icmp sgt i32 %i.ael, -1
  %or.cond1880 = select i1 %.not1691, i1 %i.aen, i1 false
  br i1 %or.cond1880, label %bb.is, label %bb.ix

bb.is:                                            ; preds = %bb.ir
  %i.aeo = add nuw i32 %i.ael, 1
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = shl nsw i64 %i.aep, 3                  ; 4 uses
  %i.aer = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.aes = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = icmp ugt i64 %i.aeq, %i.aet
  br i1 %i.aeu, label %bb.it, label %._crit_edge2434

._crit_edge2434:                                  ; preds = %bb.is
  %.pre2435.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.iw

bb.it:                                            ; preds = %bb.is
  %24 = add i64 %i.aes, %i.aeq                    ; 3 uses
  %i.aev = icmp slt i64 %i.aer, %24
  %.pre2436.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.aev, label %25, label %bb.iv

25:                                               ; preds = %bb.it
  %26 = sdiv i64 %24, 4
  %27 = add i64 %24, 1024
  %28 = add i64 %27, %26                          ; 2 uses
  %29 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2436.pre, i64 noundef %28) #13 ; 3 uses
  %.not.not.i1834 = icmp eq ptr %29, null
  br i1 %.not.not.i1834, label %30, label %33

30:                                               ; preds = %25
  %31 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1835 = icmp eq ptr %31, null
  br i1 %.not.i.i1835, label %bb.iu, label %32

32:                                               ; preds = %30
  tail call void @PyMem_Free(ptr noundef nonnull %31) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.iu

33:                                               ; preds = %25
  store ptr %29, ptr %i.u, align 8, !tbaa !88
  store i64 %28, ptr %i.g, align 8, !tbaa !121
  br label %bb.iv

bb.iu:                                            ; preds = %32, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.iv:                                            ; preds = %33, %bb.it
  %.pre2436 = phi ptr [ %29, %33 ], [ %.pre2436.pre, %bb.it ] ; 2 uses
  %.not1692 = icmp eq i64 %.111490.ph, -1
  %i.aew = getelementptr i8, ptr %.pre2436, i64 %.111490.ph
  %spec.select2925 = select i1 %.not1692, ptr %.121517, ptr %i.aew
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %._crit_edge2434
  %i.aex = phi ptr [ %.pre2435.a, %._crit_edge2434 ], [ %.pre2436, %bb.iv ]
  %.131518 = phi ptr [ %.121517, %._crit_edge2434 ], [ %spec.select2925, %bb.iv ]
  %i.aey = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aez = getelementptr i8, ptr %i.aex, i64 %i.aey
  %i.afa = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aez, ptr noundef nonnull align 8 dereferenceable(1) %i.afa, i64 %i.aeq, i1 false)
  %i.afb = load i64, ptr %i.e, align 8, !tbaa !120
  %i.afc = add i64 %i.afb, %i.aeq
  store i64 %i.afc, ptr %i.e, align 8, !tbaa !120
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ir, %bb.iw, %bb.jl
  %.61526 = phi ptr [ %.51525, %bb.iw ], [ %i.ahh, %bb.jl ], [ %.51525, %bb.ir ] ; 2 uses
  %.141519 = phi ptr [ %.131518, %bb.iw ], [ %i.ahf, %bb.jl ], [ %.121517, %bb.ir ] ; 6 uses
  %.61498 = phi i32 [ %.14, %bb.iw ], [ %.13, %bb.jl ], [ %.14, %bb.ir ] ; 2 uses
  %.51484 = phi i64 [ %.111490.ph, %bb.iw ], [ %i.bpt, %bb.jl ], [ %.111490.ph, %bb.ir ] ; 3 uses
  %.6 = phi ptr [ %.12, %bb.iw ], [ %i.bst, %bb.jl ], [ %.12, %bb.ir ] ; 6 uses
  %i.afd = getelementptr i8, ptr %.6, i64 8
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !7 ; 2 uses
  %i.aff = icmp eq i32 %i.afe, -1
  br i1 %i.aff, label %.critedge4, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.afg = zext i32 %i.afe to i64
  %i.afh = load i64, ptr %.141519, align 8, !tbaa !163
  %.not1693 = icmp sgt i64 %i.afh, %i.afg
  br i1 %.not1693, label %bb.jm, label %.critedge4

.critedge4:                                       ; preds = %bb.ix, %bb.iy
  store ptr %.61526, ptr %0, align 8, !tbaa !81
  %i.afi = getelementptr i8, ptr %.141519, i64 24
  store ptr %.6, ptr %i.afi, align 8, !tbaa !159
  %i.afj = getelementptr i8, ptr %.141519, i64 32
  store ptr %.61526, ptr %i.afj, align 8, !tbaa !160
  %i.afk = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.afl = load i64, ptr %i.g, align 8, !tbaa !121
  %i.afm = sub i64 %i.afl, %i.afk
  %i.afn = icmp ult i64 %i.afm, 56
  br i1 %i.afn, label %bb.iz, label %.critedge4._crit_edge

.critedge4._crit_edge:                            ; preds = %.critedge4
  %.pre2474 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.jc

bb.iz:                                            ; preds = %.critedge4
  %i.afo = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.afp = icmp slt i32 %i.afo, 0
  br i1 %i.afp, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.afq = sext i32 %i.afo to i64
  br label %.loopexit

bb.jb:                                            ; preds = %bb.iz
  %.not1695 = icmp eq i64 %.51484, -1
  %.pre2475.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.afr = getelementptr i8, ptr %.pre2475.a, i64 %.51484
  %spec.select2926 = select i1 %.not1695, ptr %.141519, ptr %i.afr
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %.critedge4._crit_edge
  %i.afs = phi ptr [ %.pre2474, %.critedge4._crit_edge ], [ %.pre2475.a, %bb.jb ]
  %.15 = phi ptr [ %.141519, %.critedge4._crit_edge ], [ %spec.select2926, %bb.jb ]
  %i.aft = getelementptr i8, ptr %i.afs, i64 %i.afk ; 5 uses
  %i.afu = load i64, ptr %i.e, align 8, !tbaa !120
  %i.afv = add i64 %i.afu, 56
  store i64 %i.afv, ptr %i.e, align 8, !tbaa !120
  %i.afw = load i32, ptr %.6, align 4, !tbaa !7
  %i.afx = zext i32 %i.afw to i64
  %i.afy = getelementptr [4 x i8], ptr %.6, i64 %i.afx
  %i.afz = getelementptr i8, ptr %i.aft, i64 24
  store ptr %i.afy, ptr %i.afz, align 8, !tbaa !159
  %i.aga = getelementptr i8, ptr %.15, i64 40
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !156
  %i.agc = getelementptr i8, ptr %i.aft, i64 40
  store i32 %i.agb, ptr %i.agc, align 8, !tbaa !156
  %i.agd = getelementptr i8, ptr %i.aft, i64 44
  store i32 10, ptr %i.agd, align 4, !tbaa !155
  %i.age = getelementptr i8, ptr %i.aft, i64 48
  store i64 %.51484, ptr %i.age, align 8, !tbaa !153
  %i.agf = load i32, ptr %.6, align 4, !tbaa !7
  %i.agg = zext i32 %i.agf to i64
  %i.agh = getelementptr [4 x i8], ptr %.6, i64 %i.agg
  br label %.backedge1906.backedge

bb.jd:                                            ; preds = %bb.si
  br i1 %.not1647, label %.critedge1900, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.agi = getelementptr i8, ptr %i.bqa, i64 16
  %i.agj = load i32, ptr %i.agi, align 8, !tbaa !161 ; 2 uses
  %i.agk = icmp sgt i32 %i.agj, -1
  br i1 %i.agk, label %bb.jf, label %.critedge1900

bb.jf:                                            ; preds = %bb.je
  %i.agl = add nuw i32 %i.agj, 1
  %i.agm = sext i32 %i.agl to i64
  %i.agn = shl nsw i64 %i.agm, 3
  %i.ago = sub i64 %i.bpx, %i.agn
  store i64 %i.ago, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.jg:                                            ; preds = %bb.si
  br i1 %.not1647, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.agp = getelementptr i8, ptr %i.bqa, i64 16
  %i.agq = load i32, ptr %i.agp, align 8, !tbaa !161 ; 2 uses
  %i.agr = icmp sgt i32 %i.agq, -1
  br i1 %i.agr, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.ags = add nuw i32 %i.agq, 1
  %i.agt = sext i32 %i.ags to i64
  %i.agu = shl nsw i64 %i.agt, 3                  ; 2 uses
  %i.agv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.agw = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.agx = sub nsw i64 0, %i.agu
  %i.agy = getelementptr i8, ptr %i.agw, i64 %i.agx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agv, ptr noundef nonnull align 1 dereferenceable(1) %i.agy, i64 %i.agu, i1 false)
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jg, %bb.jh, %bb.ji
  %i.agz = getelementptr i8, ptr %i.bqa, i64 16
  %i.aha = load <2 x i32>, ptr %i.agz, align 8, !tbaa !7
  store <2 x i32> %i.aha, ptr %i.ac, align 4, !tbaa !7
  store ptr %i.bsv, ptr %0, align 8, !tbaa !81
  %i.ahb = getelementptr i8, ptr %i.bst, i64 12
  %i.ahc = tail call fastcc i64 @sre_ucs2_count(ptr noundef nonnull %0, ptr noundef %i.ahb, i64 noundef 1) ; 3 uses
  %i.ahd = icmp slt i64 %i.ahc, 0
  br i1 %i.ahd, label %.loopexit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ahe = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 %i.bpt ; 4 uses
  %i.ahg = icmp eq i64 %i.ahc, 0
  br i1 %i.ahg, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ahh = getelementptr i8, ptr %i.bsv, i64 2
  %i.ahi = load i64, ptr %i.ahf, align 8, !tbaa !163
  %i.ahj = add i64 %i.ahi, 1
  store i64 %i.ahj, ptr %i.ahf, align 8, !tbaa !163
  br label %bb.ix, !llvm.loop !166

bb.jm:                                            ; preds = %bb.jk, %bb.iy
  %.16 = phi ptr [ %.141519, %bb.iy ], [ %i.ahf, %bb.jk ] ; 4 uses
  %.71499 = phi i32 [ %.61498, %bb.iy ], [ %.13, %bb.jk ] ; 3 uses
  %i.ahk = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1694 = icmp eq ptr %i.ahk, null
  br i1 %.not1694, label %.critedge1900, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ahl = getelementptr i8, ptr %.16, i64 16
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !161 ; 2 uses
  %i.ahn = icmp sgt i32 %i.ahm, -1
  br i1 %i.ahn, label %bb.jo, label %.critedge1900

bb.jo:                                            ; preds = %bb.jn
  %i.aho = add nuw i32 %i.ahm, 1
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = shl nsw i64 %i.ahp, 3
  %i.ahr = load i64, ptr %i.e, align 8, !tbaa !120
  %i.ahs = sub i64 %i.ahr, %i.ahq
  store i64 %i.ahs, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.jp:                                            ; preds = %.backedge
  %i.aht = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !7
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr [2 x i8], ptr %.151535, i64 %i.ahv
  %i.ahx = icmp ugt ptr %i.ahw, %i.b
  br i1 %i.ahx, label %.critedge1900, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.ahy = getelementptr i8, ptr %.12, i64 12
  %i.ahz = getelementptr i8, ptr %.12, i64 8
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !7
  %i.aib = zext i32 %i.aia to i64
  %i.aic = tail call fastcc i64 @sre_ucs2_count(ptr noundef %0, ptr noundef %i.ahy, i64 noundef %i.aib) ; 5 uses
  %i.aid = icmp slt i64 %i.aic, 0
  br i1 %i.aid, label %.loopexit, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aie = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.aif = getelementptr i8, ptr %i.aie, i64 %.111490.ph ; 5 uses
  store i64 %i.aic, ptr %i.aif, align 8, !tbaa !163
  %i.aig = getelementptr [2 x i8], ptr %.151535, i64 %i.aic ; 4 uses
  %i.aih = load i32, ptr %i.aht, align 4, !tbaa !7
  %i.aii = zext i32 %i.aih to i64
  %i.aij = icmp samesign ult i64 %i.aic, %i.aii
  br i1 %i.aij, label %.critedge1900, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aik = load i32, ptr %.12, align 4, !tbaa !7
  %i.ail = zext i32 %i.aik to i64
  %i.aim = getelementptr [4 x i8], ptr %.12, i64 %i.ail ; 3 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !7 ; 2 uses
  %i.aio = icmp eq i32 %i.ain, 1
end_hunk_7
begin_hunk_8_@sre_ucs2_match:bb.a
  %i.bpt = load i64, ptr %i.bps, align 8, !tbaa !153 ; 19 uses
  %i.bpu = getelementptr i8, ptr %.39, i64 44
  %i.bpv = load i32, ptr %i.bpu, align 4, !tbaa !155
  %i.bpw = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpx = add i64 %i.bpw, -56                    ; 19 uses
  store i64 %i.bpx, ptr %i.e, align 8, !tbaa !120
  %i.bpy = icmp eq i64 %i.bpt, -1
  br i1 %i.bpy, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %.critedge1900
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.rr:                                            ; preds = %.critedge1900
  %i.bpz = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 %i.bpt ; 119 uses
  switch i32 %i.bpv, label %.loopexit [
    i32 2, label %bb.rs
    i32 3, label %bb.rt
    i32 5, label %bb.ru
    i32 6, label %bb.rv
    i32 11, label %bb.rw
    i32 1, label %bb.rx
    i32 4, label %bb.ry
    i32 14, label %bb.rz
    i32 15, label %bb.sa
    i32 7, label %bb.sb
    i32 8, label %bb.sg
    i32 9, label %bb.sh
    i32 10, label %bb.si
    i32 16, label %bb.sj
    i32 12, label %bb.sk
    i32 13, label %bb.sl
  ]

bb.rs:                                            ; preds = %bb.rr
  %i.bqb = getelementptr i8, ptr %i.bqa, i64 24
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !159
  %i.bqd = getelementptr i8, ptr %i.bqa, i64 32
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !160 ; 2 uses
  %i.bqf = getelementptr i8, ptr %i.bqa, i64 8
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !26
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 16
  %i.bqi = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.bqj = getelementptr i8, ptr %i.bqi, i64 -8
  %i.bqk = load i64, ptr %i.bqj, align 1
  store i64 %i.bqk, ptr %i.bqh, align 8
  %i.bql = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bqm = add i64 %i.bql, -8                     ; 4 uses
  store i64 %i.bqm, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lj, label %bb.lh

bb.rt:                                            ; preds = %bb.rr
  %i.bqn = getelementptr i8, ptr %i.bqa, i64 32
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !160
  %i.bqp = getelementptr i8, ptr %i.bqa, i64 8
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !26
  store ptr %i.bqq, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.bpr, label %.critedge1900, label %bb.lv

bb.ru:                                            ; preds = %bb.rr
  %i.bqr = getelementptr i8, ptr %i.bqa, i64 24
  %i.bqs = getelementptr i8, ptr %i.bqa, i64 32
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !160 ; 2 uses
  %i.bqu = load <2 x ptr>, ptr %i.bqr, align 8, !tbaa !95
  %i.bqv = load ptr, ptr %i.ak, align 8, !tbaa !87
  %i.bqw = getelementptr i8, ptr %i.bqa, i64 8    ; 2 uses
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !26
  store ptr %i.bqx, ptr %i.ak, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bqv, null            ; 2 uses
  br i1 %.not1641, label %bb.ms, label %bb.mp

bb.rv:                                            ; preds = %bb.rr
  %i.bqy = getelementptr i8, ptr %i.bqa, i64 32
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !160
  %i.bra = getelementptr i8, ptr %i.bqa, i64 8    ; 2 uses
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !26
  %i.brc = getelementptr i8, ptr %i.brb, i64 16
  %i.brd = getelementptr i8, ptr %i.bpz, i64 %i.bpx
  %i.bre = getelementptr i8, ptr %i.brd, i64 -8
  %i.brf = load i64, ptr %i.bre, align 1
  store i64 %i.brf, ptr %i.brc, align 8
  %i.brg = load i64, ptr %i.e, align 8, !tbaa !120
  %i.brh = add i64 %i.brg, -8
  store i64 %i.brh, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.ng, label %.critedge1900

bb.rw:                                            ; preds = %bb.rr
  %i.bri = getelementptr i8, ptr %i.bqa, i64 24
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !159
  %i.brk = getelementptr i8, ptr %i.bqa, i64 32
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !160
  %i.brm = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.brm, null            ; 2 uses
  br i1 %.not1641, label %bb.gb, label %bb.fy

bb.rx:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.kp, label %.critedge1900

bb.ry:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.md, label %.critedge1900

bb.rz:                                            ; preds = %bb.rr
  %i.brn = getelementptr i8, ptr %i.bqa, i64 32
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !160 ; 2 uses
  br i1 %.not1641, label %bb.nt, label %bb.ns

bb.sa:                                            ; preds = %bb.rr
  %i.brp = getelementptr i8, ptr %i.bqa, i64 24
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !159 ; 2 uses
  %i.brr = getelementptr i8, ptr %i.bqa, i64 32
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !160 ; 2 uses
  %i.brt = getelementptr i8, ptr %i.bqa, i64 16   ; 2 uses
  %i.bru = load i32, ptr %i.brt, align 8, !tbaa !161 ; 4 uses
  %i.brv = icmp sgt i32 %i.bru, -1                ; 2 uses
  br i1 %.not1641, label %bb.on, label %bb.ok

bb.sb:                                            ; preds = %bb.rr
  %i.brw = getelementptr i8, ptr %i.bqa, i64 8    ; 2 uses
  %i.brx = load ptr, ptr %i.brw, align 8, !tbaa !26
  %i.bry = getelementptr i8, ptr %i.brx, i64 24
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !143
  store ptr %i.brz, ptr %i.ak, align 8, !tbaa !87
  %i.bsa = load ptr, ptr %i.brw, align 8, !tbaa !26 ; 3 uses
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 32
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !146 ; 3 uses
  %i.bsd = getelementptr i8, ptr %i.bsa, i64 40   ; 2 uses
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !106 ; 4 uses
  %.not.i1853 = icmp eq ptr %i.bsc, null
  br i1 %.not.i1853, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.bsf = getelementptr i8, ptr %i.bsc, i64 40
  store ptr %i.bse, ptr %i.bsf, align 8, !tbaa !106
  br label %bb.se

bb.sd:                                            ; preds = %bb.sb
  store ptr %i.bse, ptr %i.aj, align 8, !tbaa !105
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sc
  %.not15.i1854 = icmp eq ptr %i.bse, null
  br i1 %.not15.i1854, label %repeat_pool_free.exit1855, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bsg = getelementptr i8, ptr %i.bse, i64 32
  store ptr %i.bsc, ptr %i.bsg, align 8, !tbaa !146
  br label %repeat_pool_free.exit1855

repeat_pool_free.exit1855:                        ; preds = %bb.se, %bb.sf
  %i.bsh = load ptr, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.bsh, ptr %i.bsd, align 8, !tbaa !106
  store ptr %i.bsa, ptr %i.ai, align 8, !tbaa !110
  br i1 %.not1641, label %bb.kh, label %.critedge1900

bb.sg:                                            ; preds = %bb.rr
  %i.bsi = getelementptr i8, ptr %i.bqa, i64 24
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !159
  %i.bsk = getelementptr i8, ptr %i.bqa, i64 32
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !160
  %i.bsm = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.bsm, null            ; 2 uses
  br i1 %.not1641, label %bb.hk, label %bb.hh

bb.sh:                                            ; preds = %bb.rr
  %i.bsn = getelementptr i8, ptr %i.bqa, i64 24
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !159
  %i.bsp = getelementptr i8, ptr %i.bqa, i64 32
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !160
  %i.bsr = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.bsr, null            ; 2 uses
  br i1 %.not1641, label %bb.hy, label %bb.hv

bb.si:                                            ; preds = %bb.rr
  %i.bss = getelementptr i8, ptr %i.bqa, i64 24
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !159 ; 2 uses
  %i.bsu = getelementptr i8, ptr %i.bqa, i64 32
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !160 ; 2 uses
  %i.bsw = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.bsw, null            ; 2 uses
  br i1 %.not1641, label %bb.jg, label %bb.jd

bb.sj:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.oz, label %bb.pa

bb.sk:                                            ; preds = %bb.rr
  %i.bsx = getelementptr i8, ptr %i.bqa, i64 32
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !160 ; 2 uses
  br i1 %.not1641, label %.critedge1900, label %bb.qu

bb.sl:                                            ; preds = %bb.rr
  %i.bsz = getelementptr i8, ptr %i.bqa, i64 24
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !159
  %i.btb = getelementptr i8, ptr %i.bqa, i64 32
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !160
  %i.btd = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.btd, null            ; 2 uses
  br i1 %.not1641, label %bb.rk, label %bb.rh

.loopexit:                                        ; preds = %bb.rr, %repeat_pool_malloc.exit.thread, %.backedge, %bb.rp, %bb.qv, %bb.qn, %bb.qk, %bb.qg, %bb.qc, %bb.pu, %bb.po, %bb.pg, %bb.pb, %bb.ou, %bb.lw, %bb.ki, %bb.kb, %bb.jz, %bb.jq, %bb.jj, %bb.ih, %bb.gk, %bb.fc, %bb.ez, %bb.ev, %bb.eq, %bb.ek, %bb.ef, %bb.ea, %bb.du, %bb.dp, %bb.dk, %bb.de, %bb.cz, %bb.cv, %bb.cq, %bb.cl, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.rq, %bb.rf, %bb.ra, %bb.qs, %bb.ox, %bb.oi, %bb.od, %bb.nq, %bb.nd, %bb.mz, %bb.mm, %bb.mh, %bb.ma, %bb.ls, %bb.le, %bb.la, %bb.kv, %bb.km, %bb.ke, %bb.ja, %bb.iu, %bb.hs, %bb.he, %bb.gv, %bb.fv, %bb.fh, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.rq ], [ -1, %.backedge ], [ %i.adp, %bb.ih ], [ -9, %bb.ls ], [ -10, %bb.pu ], [ -10, %bb.du ], [ %i.awb, %bb.mz ], [ %i.aww, %bb.nd ], [ -10, %bb.ou ], [ -10, %bb.de ], [ -9, %bb.fv ], [ -10, %bb.ev ], [ -10, %bb.qn ], [ -10, %bb.dp ], [ %i.aza, %bb.nq ], [ %i.bat, %bb.od ], [ %i.bbk, %bb.oi ], [ -9, %repeat_pool_malloc.exit.thread ], [ -10, %bb.cq ], [ -10, %bb.cv ], [ %i.blz, %bb.qs ], [ %i.bnp, %bb.ra ], [ %i.bof, %bb.rf ], [ -10, %bb.qv ], [ -10, %bb.aa ], [ -9, %bb.fh ], [ -10, %bb.cl ], [ -10, %bb.rp ], [ -10, %bb.ea ], [ -10, %bb.pb ], [ -10, %bb.qc ], [ -10, %bb.qg ], [ -10, %bb.qk ], [ -10, %bb.cz ], [ -10, %bb.ez ], [ -10, %bb.dk ], [ -10, %bb.q ], [ -10, %bb.l ], [ %i.alf, %bb.km ], [ %i.amz, %bb.kv ], [ %i.ann, %bb.la ], [ %i.aoi, %bb.le ], [ -9, %bb.kb ], [ %i.arz, %bb.ma ], [ %i.ato, %bb.mh ], [ %i.aue, %bb.mm ], [ -2, %bb.ki ], [ -10, %bb.v ], [ -10, %bb.eq ], [ -10, %bb.po ], [ %i.aju, %bb.ke ], [ -10, %bb.jz ], [ -10, %bb.fc ], [ -9, %bb.gv ], [ %i.zf, %bb.he ], [ %i.abj, %bb.hs ], [ -10, %bb.ef ], [ -9, %bb.iu ], [ %i.afq, %bb.ja ], [ %i.wp, %bb.gk ], [ %i.bdp, %bb.ox ], [ -2, %bb.lw ], [ %i.ahc, %bb.jj ], [ %i.aic, %bb.jq ], [ -10, %bb.pg ], [ -10, %bb.ek ], [ %.01491, %bb.rr ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1905
  %.sink2917.sink = phi i32 [ %.sink2938, %.preheader1905 ], [ %.sink2917.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1905 ], [ %.151535.be, %.backedge.backedge ] ; 131 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1905 ], [ %.40.be, %.backedge.backedge ] ; 138 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1905 ], [ %.14.be, %.backedge.backedge ] ; 116 uses
  %.12 = phi ptr [ %i.bel, %.preheader1905 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.bte = zext i32 %.sink2917.sink to i64
  %i.btf = getelementptr [8 x i8], ptr @sre_ucs2_match.sre_targets, i64 %i.bte
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !95
  indirectbr ptr %i.btg, [label %.critedge1900, label %bb.ac, label %bb.cs, label %bb.cx, label %bb.qp, label %bb.qw, label %bb.ai, label %bb.fe, label %bb.cn, label %.loopexit, label %bb.ec, label %bb.pc, label %bb.qe, label %bb.db, label %bb.fb, label %bb.dm, label %bb.s, label %bb.m, label %bb.ki, label %bb.lw, label %bb.x, label %bb.es, label %bb.pq, label %bb.kb, label %bb.gj, label %bb.eh, label %bb.ie, label %bb.ov, label %bb.nh, label %bb.jp, label %bb.pi, label %bb.em, label %bb.dg, label %bb.dw, label %bb.pw, label %bb.ex, label %bb.dr]
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2) i64 @sre_ucs4_match(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
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
  %i.u = getelementptr i8, ptr %0, i64 176        ; 65 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f     ; 4 uses
  %i.x = add i64 %i.t, 56
  store i64 %i.x, ptr %i.e, align 8, !tbaa !120
  %i.y = getelementptr i8, ptr %i.w, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !174
  %i.z = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.z, align 4, !tbaa !176
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  store i32 %2, ptr %i.aa, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 156       ; 29 uses
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 26 uses
  %i.ae = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.ai = getelementptr i8, ptr %0, i64 216       ; 8 uses
  %i.aj = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 200       ; 27 uses
  %i.al = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %.backedge1906

.backedge1906:                                    ; preds = %.backedge1906.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1906.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1906.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1906.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1906.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.backedge1906
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = zext i32 %i.aq to i64
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.critedge1900, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr i8, ptr %.01478, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %.01478, i64 %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge1906
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %.01478, %.backedge1906 ] ; 2 uses
  %i.bb = add i32 %.01492, 1                      ; 3 uses
  %i.bc = and i32 %i.bb, 4095
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %.preheader1905

bb.l:                                             ; preds = %bb.k
  %i.be = tail call i32 @PyErr_CheckSignals() #13
  %.not1640 = icmp eq i32 %i.be, 0
  br i1 %.not1640, label %.preheader1905, label %.loopexit

bb.m:                                             ; preds = %.backedge
  %i.bf = load i32, ptr %.12, align 4, !tbaa !7   ; 9 uses
  %i.bg = and i32 %i.bf, 1
  %.not1733 = icmp eq i32 %i.bg, 0
  br i1 %.not1733, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = sdiv i32 %i.bf, 2
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !85 ; 5 uses
  %i.bk = icmp sgt i32 %i.bf, %i.bj
  br i1 %i.bk, label %.preheader1901, label %bb.p

.preheader1901:                                   ; preds = %bb.o
  %.015362167 = add nsw i32 %i.bj, 1
  %i.bl = icmp slt i32 %.015362167, %i.bf
  br i1 %i.bl, label %.lr.ph2169.preheader, label %._crit_edge2170

.lr.ph2169.preheader:                             ; preds = %.preheader1901
  %i.bm = sext i32 %i.bj to i64
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = xor i32 %i.bj, -1
  %i.bp = add i32 %i.bf, %i.bo
  %i.bq = add i32 %i.bf, -2
  %i.br = sub i32 %i.bq, %i.bj
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2169.prol.loopexit, label %.lr.ph2169.prol

.lr.ph2169.prol:                                  ; preds = %.lr.ph2169.preheader, %.lr.ph2169.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph2169.prol ], [ %i.bn, %.lr.ph2169.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2169.prol ], [ 0, %.lr.ph2169.preheader ]
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.prol
  store ptr null, ptr %i.bt, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2169.prol.loopexit, label %.lr.ph2169.prol, !llvm.loop !178

.lr.ph2169.prol.loopexit:                         ; preds = %.lr.ph2169.prol, %.lr.ph2169.preheader
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph2169.preheader ], [ %indvars.iv.next.prol, %.lr.ph2169.prol ]
  %i.bu = icmp ult i32 %i.br, 3
  br i1 %i.bu, label %._crit_edge2170, label %.lr.ph2169

.lr.ph2169:                                       ; preds = %.lr.ph2169.prol.loopexit, %.lr.ph2169
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2169 ], [ %indvars.iv.unr, %.lr.ph2169.prol.loopexit ] ; 5 uses
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !95
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !95
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  store ptr null, ptr %i.cf, align 8, !tbaa !95
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.bf, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2170, label %.lr.ph2169, !llvm.loop !179

._crit_edge2170:                                  ; preds = %.lr.ph2169.prol.loopexit, %.lr.ph2169, %.preheader1901
  store i32 %i.bf, ptr %i.ac, align 4, !tbaa !85
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge2170, %bb.o
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ch = sext i32 %i.bf to i64
  %i.ci = getelementptr [8 x i8], ptr %i.cg, i64 %i.ch
  store ptr %.151535, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr i8, ptr %.12, i64 4
  %i.ck = add i32 %.14, 1                         ; 2 uses
  %i.cl = and i32 %i.ck, 4095
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = tail call i32 @PyErr_CheckSignals() #13
  %.not1734 = icmp eq i32 %i.cn, 0
  br i1 %.not1734, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.co = getelementptr i8, ptr %.12, i64 8
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !7
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %bb.w, %bb.ab, %bb.cm, %bb.cr, %bb.cw, %bb.da, %bb.df, %bb.dl, %bb.dq, %bb.dv, %bb.eb, %bb.eg, %bb.el, %bb.er, %bb.ew, %bb.fa, %bb.fd, %bb.ka, %bb.ph, %bb.pp, %bb.pv, %bb.qd, %bb.qh, %bb.ql, %bb.qo
  %.sink2925.sink.be = phi i32 [ %i.cp, %bb.r ], [ %i.cz, %bb.w ], [ %i.dk, %bb.ab ], [ %i.km, %bb.cm ], [ %i.kx, %bb.cr ], [ %i.lg, %bb.cw ], [ %i.ln, %bb.da ], [ %i.ma, %bb.df ], [ %i.mq, %bb.dl ], [ %i.nb, %bb.dq ], [ %i.nv, %bb.dv ], [ %i.om, %bb.eb ], [ %i.oy, %bb.eg ], [ %i.ps, %bb.el ], [ %i.ql, %bb.er ], [ %i.qz, %bb.ew ], [ %i.rv, %bb.fa ], [ %i.se, %bb.fd ], [ %i.aig, %bb.ka ], [ %i.ber, %bb.ph ], [ %i.bgd, %bb.pp ], [ %i.bhf, %bb.pv ], [ %i.bir, %bb.qd ], [ %i.bje, %bb.qh ], [ %i.bjy, %bb.ql ], [ %i.bkf, %bb.qo ]
  %.151535.be = phi ptr [ %.151535, %bb.r ], [ %i.ct, %bb.w ], [ %i.de, %bb.ab ], [ %.151535, %bb.cm ], [ %i.kr, %bb.cr ], [ %i.la, %bb.cw ], [ %i.lh, %bb.da ], [ %i.lu, %bb.df ], [ %i.mk, %bb.dl ], [ %i.mv, %bb.dq ], [ %i.np, %bb.dv ], [ %i.og, %bb.eb ], [ %i.os, %bb.eg ], [ %i.pm, %bb.el ], [ %i.qf, %bb.er ], [ %i.qt, %bb.ew ], [ %i.rp, %bb.fa ], [ %.151535, %bb.fd ], [ %i.ahm, %bb.ka ], [ %.101530.lcssa, %bb.ph ], [ %.111531.lcssa, %bb.pp ], [ %.121532.lcssa, %bb.pv ], [ %.131533.lcssa, %bb.qd ], [ %.151535, %bb.qh ], [ %.151535, %bb.ql ], [ %.151535, %bb.qo ]
  %.40.be = phi ptr [ %.40, %bb.r ], [ %.40, %bb.w ], [ %.40, %bb.ab ], [ %.40, %bb.cm ], [ %.40, %bb.cr ], [ %.40, %bb.cw ], [ %.40, %bb.da ], [ %.40, %bb.df ], [ %.40, %bb.dl ], [ %.40, %bb.dq ], [ %.40, %bb.dv ], [ %.40, %bb.eb ], [ %.40, %bb.eg ], [ %.40, %bb.el ], [ %.40, %bb.er ], [ %.40, %bb.ew ], [ %.40, %bb.fa ], [ %.40, %bb.fd ], [ %i.ahl, %bb.ka ], [ %.40, %bb.ph ], [ %.40, %bb.pp ], [ %.40, %bb.pv ], [ %.40, %bb.qd ], [ %.40, %bb.qh ], [ %.40, %bb.ql ], [ %.40, %bb.qo ]
  %.14.be = phi i32 [ %i.ck, %bb.r ], [ %i.cu, %bb.w ], [ %i.df, %bb.ab ], [ %i.kh, %bb.cm ], [ %i.ks, %bb.cr ], [ %i.lb, %bb.cw ], [ %i.li, %bb.da ], [ %i.lv, %bb.df ], [ %i.ml, %bb.dl ], [ %i.mw, %bb.dq ], [ %i.nq, %bb.dv ], [ %i.oh, %bb.eb ], [ %i.ot, %bb.eg ], [ %i.pn, %bb.el ], [ %i.qg, %bb.er ], [ %i.qu, %bb.ew ], [ %i.rq, %bb.fa ], [ %i.rz, %bb.fd ], [ %i.aic, %bb.ka ], [ %i.bem, %bb.ph ], [ %i.bfy, %bb.pp ], [ %i.bha, %bb.pv ], [ %i.bim, %bb.qd ], [ %i.biz, %bb.qh ], [ %i.bjt, %bb.ql ], [ %i.bka, %bb.qo ]
  %.12.be = phi ptr [ %i.co, %bb.r ], [ %i.cy, %bb.w ], [ %i.dj, %bb.ab ], [ %i.kl, %bb.cm ], [ %i.kw, %bb.cr ], [ %i.lf, %bb.cw ], [ %i.lm, %bb.da ], [ %i.lz, %bb.df ], [ %i.mp, %bb.dl ], [ %i.na, %bb.dq ], [ %i.nu, %bb.dv ], [ %i.ol, %bb.eb ], [ %i.ox, %bb.eg ], [ %i.pr, %bb.el ], [ %i.qk, %bb.er ], [ %i.qy, %bb.ew ], [ %i.ru, %bb.fa ], [ %i.sd, %bb.fd ], [ %i.aih, %bb.ka ], [ %i.beq, %bb.ph ], [ %i.bgc, %bb.pp ], [ %i.bhe, %bb.pv ], [ %i.biq, %bb.qd ], [ %i.bjd, %bb.qh ], [ %i.bjx, %bb.ql ], [ %i.bke, %bb.qo ]
  br label %.backedge

bb.s:                                             ; preds = %.backedge
  %.not1735 = icmp ult ptr %.151535, %i.b
  br i1 %.not1735, label %bb.t, label %.critedge1900

bb.t:                                             ; preds = %bb.s
  %i.cq = load i32, ptr %.151535, align 4, !tbaa !7
  %i.cr = load i32, ptr %.12, align 4, !tbaa !7
  %.not1736 = icmp eq i32 %i.cq, %i.cr
  br i1 %.not1736, label %bb.u, label %.critedge1900

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr i8, ptr %.12, i64 4
  %i.ct = getelementptr i8, ptr %.151535, i64 4
  %i.cu = add i32 %.14, 1                         ; 2 uses
  %i.cv = and i32 %i.cu, 4095
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = tail call i32 @PyErr_CheckSignals() #13
  %.not1737 = icmp eq i32 %i.cx, 0
  br i1 %.not1737, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cy = getelementptr i8, ptr %.12, i64 8
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !7
  br label %.backedge.backedge

bb.x:                                             ; preds = %.backedge
end_hunk_8
begin_hunk_9_@sre_ucs4_match:bb.a
  br i1 %i.pc, label %sre_lower_locale.exit.i1809, label %char_loc_ignore.exit1812.thread1864

sre_lower_locale.exit.i1809:                      ; preds = %bb.ej
  %i.pd = tail call ptr @__ctype_tolower_loc() #14
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !132
  %i.pf = zext nneg i32 %i.pa to i64              ; 2 uses
  %i.pg = getelementptr [4 x i8], ptr %i.pe, i64 %i.pf
  %.0.i.i.i1810 = load i32, ptr %i.pg, align 4, !tbaa !7
  %i.ph = icmp eq i32 %.0.i.i.i1810, %i.oz
  br i1 %i.ph, label %.critedge1900, label %char_loc_ignore.exit1812

char_loc_ignore.exit1812:                         ; preds = %sre_lower_locale.exit.i1809
  %i.pi = tail call ptr @__ctype_toupper_loc() #14
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !132
  %i.pk = getelementptr [4 x i8], ptr %i.pj, i64 %i.pf
  %.0.i.i7.i1811 = load i32, ptr %i.pk, align 4, !tbaa !7
  %.not1890 = icmp eq i32 %.0.i.i7.i1811, %i.oz
  br i1 %.not1890, label %.critedge1900, label %char_loc_ignore.exit1812.thread1864

char_loc_ignore.exit1812.thread1864:              ; preds = %bb.ej, %char_loc_ignore.exit1812
  %i.pl = getelementptr i8, ptr %.12, i64 4
  %i.pm = getelementptr i8, ptr %.151535, i64 4
  %i.pn = add i32 %.14, 1                         ; 2 uses
  %i.po = and i32 %i.pn, 4095
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %char_loc_ignore.exit1812.thread1864
  %i.pq = tail call i32 @PyErr_CheckSignals() #13
  %.not1698 = icmp eq i32 %i.pq, 0
  br i1 %.not1698, label %bb.el, label %.loopexit

bb.el:                                            ; preds = %char_loc_ignore.exit1812.thread1864, %bb.ek
  %i.pr = getelementptr i8, ptr %.12, i64 8
  %i.ps = load i32, ptr %i.pl, align 4, !tbaa !7
  br label %.backedge.backedge

bb.em:                                            ; preds = %.backedge
  %.not1675 = icmp ult ptr %.151535, %i.b
  br i1 %.not1675, label %bb.en, label %.critedge1900

bb.en:                                            ; preds = %bb.em
  %i.pt = getelementptr i8, ptr %.12, i64 4
  %i.pu = load i32, ptr %.151535, align 4, !tbaa !7 ; 3 uses
  %i.pv = icmp ult i32 %i.pu, 128
  br i1 %i.pv, label %bb.eo, label %sre_lower_ascii.exit1813

bb.eo:                                            ; preds = %bb.en
  %i.pw = zext nneg i32 %i.pu to i64
  %i.px = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26
  %i.pz = zext i8 %i.py to i32
  br label %sre_lower_ascii.exit1813

sre_lower_ascii.exit1813:                         ; preds = %bb.en, %bb.eo
  %i.qa = phi i32 [ %i.pz, %bb.eo ], [ %i.pu, %bb.en ]
  %i.qb = tail call fastcc i32 @sre_ucs4_charset(ptr noundef %i.pt, i32 noundef %i.qa)
  %.not1676 = icmp eq i32 %i.qb, 0
  br i1 %.not1676, label %.critedge1900, label %bb.ep

bb.ep:                                            ; preds = %sre_lower_ascii.exit1813
  %i.qc = load i32, ptr %.12, align 4, !tbaa !7
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %.12, i64 %i.qd ; 2 uses
  %i.qf = getelementptr i8, ptr %.151535, i64 4
  %i.qg = add i32 %.14, 1                         ; 2 uses
  %i.qh = and i32 %i.qg, 4095
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qj = tail call i32 @PyErr_CheckSignals() #13
  %.not1677 = icmp eq i32 %i.qj, 0
  br i1 %.not1677, label %bb.er, label %.loopexit

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.qk = getelementptr i8, ptr %i.qe, i64 4
  %i.ql = load i32, ptr %i.qe, align 4, !tbaa !7
  br label %.backedge.backedge

bb.es:                                            ; preds = %.backedge
  %.not1717 = icmp ult ptr %.151535, %i.b
  br i1 %.not1717, label %bb.et, label %.critedge1900

bb.et:                                            ; preds = %bb.es
  %i.qm = getelementptr i8, ptr %.12, i64 4
  %i.qn = load i32, ptr %.151535, align 4, !tbaa !7
  %i.qo = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.qn) #13
  %i.qp = tail call fastcc i32 @sre_ucs4_charset(ptr noundef %i.qm, i32 noundef %i.qo)
  %.not1718 = icmp eq i32 %i.qp, 0
  br i1 %.not1718, label %.critedge1900, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qq = load i32, ptr %.12, align 4, !tbaa !7
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr [4 x i8], ptr %.12, i64 %i.qr ; 2 uses
  %i.qt = getelementptr i8, ptr %.151535, i64 4
  %i.qu = add i32 %.14, 1                         ; 2 uses
  %i.qv = and i32 %i.qu, 4095
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.qx = tail call i32 @PyErr_CheckSignals() #13
  %.not1719 = icmp eq i32 %i.qx, 0
  br i1 %.not1719, label %bb.ew, label %.loopexit

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.qy = getelementptr i8, ptr %i.qs, i64 4
  %i.qz = load i32, ptr %i.qs, align 4, !tbaa !7
  br label %.backedge.backedge

bb.ex:                                            ; preds = %.backedge
  %.not1663 = icmp ult ptr %.151535, %i.b
  br i1 %.not1663, label %bb.ey, label %.critedge1900

bb.ey:                                            ; preds = %bb.ex
  %i.ra = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.rb = load i32, ptr %.151535, align 4, !tbaa !7 ; 3 uses
  %i.rc = icmp ult i32 %i.rb, 256
  br i1 %i.rc, label %sre_lower_locale.exit.i1815, label %sre_ucs4_charset_loc_ignore.exit

sre_lower_locale.exit.i1815:                      ; preds = %bb.ey
  %i.rd = tail call ptr @__ctype_tolower_loc() #14
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !132
  %i.rf = zext nneg i32 %i.rb to i64              ; 2 uses
  %i.rg = getelementptr [4 x i8], ptr %i.re, i64 %i.rf
  %.0.i.i.i1816 = load i32, ptr %i.rg, align 4, !tbaa !7 ; 2 uses
  %i.rh = tail call fastcc i32 @sre_ucs4_charset(ptr noundef readonly %i.ra, i32 noundef %.0.i.i.i1816)
  %.not.i1817 = icmp eq i32 %i.rh, 0
  br i1 %.not.i1817, label %sre_upper_locale.exit.i, label %sre_ucs4_charset_loc_ignore.exit.thread1868

sre_upper_locale.exit.i:                          ; preds = %sre_lower_locale.exit.i1815
  %i.ri = tail call ptr @__ctype_toupper_loc() #14
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !132
  %i.rk = getelementptr [4 x i8], ptr %i.rj, i64 %i.rf
  %.0.i.i12.i = load i32, ptr %i.rk, align 4, !tbaa !7 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i.i12.i, %.0.i.i.i1816
  br i1 %.not11.i, label %.critedge1900, label %sre_ucs4_charset_loc_ignore.exit

sre_ucs4_charset_loc_ignore.exit:                 ; preds = %bb.ey, %sre_upper_locale.exit.i
  %.sink.i = phi i32 [ %i.rb, %bb.ey ], [ %.0.i.i12.i, %sre_upper_locale.exit.i ]
  %i.rl = tail call fastcc i32 @sre_ucs4_charset(ptr noundef readonly %i.ra, i32 noundef %.sink.i)
  %.not1664 = icmp eq i32 %i.rl, 0
  br i1 %.not1664, label %.critedge1900, label %sre_ucs4_charset_loc_ignore.exit.thread1868

sre_ucs4_charset_loc_ignore.exit.thread1868:      ; preds = %sre_lower_locale.exit.i1815, %sre_ucs4_charset_loc_ignore.exit
  %i.rm = load i32, ptr %.12, align 4, !tbaa !7
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr [4 x i8], ptr %.12, i64 %i.rn ; 2 uses
  %i.rp = getelementptr i8, ptr %.151535, i64 4
  %i.rq = add i32 %.14, 1                         ; 2 uses
  %i.rr = and i32 %i.rq, 4095
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %sre_ucs4_charset_loc_ignore.exit.thread1868
  %i.rt = tail call i32 @PyErr_CheckSignals() #13
  %.not1665 = icmp eq i32 %i.rt, 0
  br i1 %.not1665, label %bb.fa, label %.loopexit

bb.fa:                                            ; preds = %sre_ucs4_charset_loc_ignore.exit.thread1868, %bb.ez
  %i.ru = getelementptr i8, ptr %i.ro, i64 4
  %i.rv = load i32, ptr %i.ro, align 4, !tbaa !7
  br label %.backedge.backedge

bb.fb:                                            ; preds = %.backedge
  %i.rw = load i32, ptr %.12, align 4, !tbaa !7
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr [4 x i8], ptr %.12, i64 %i.rx ; 2 uses
  %i.rz = add i32 %.14, 1                         ; 2 uses
  %i.sa = and i32 %i.rz, 4095
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.sc = tail call i32 @PyErr_CheckSignals() #13
  %.not1741 = icmp eq i32 %i.sc, 0
  br i1 %.not1741, label %bb.fd, label %.loopexit

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.sd = getelementptr i8, ptr %i.ry, i64 4
  %i.se = load i32, ptr %i.ry, align 4, !tbaa !7
  br label %.backedge.backedge

bb.fe:                                            ; preds = %.backedge
  %i.sf = getelementptr i8, ptr %.40, i64 16
  %i.sg = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.sh = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.sg, ptr %i.sf, align 8, !tbaa !7
  %i.si = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1758 = icmp ne ptr %i.si, null
  %i.sj = icmp sgt i32 %i.sh, -1
  %or.cond1878 = select i1 %.not1758, i1 %i.sj, i1 false
  br i1 %or.cond1878, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.sk = add nuw i32 %i.sh, 1
  %i.sl = sext i32 %i.sk to i64
  %i.sm = shl nsw i64 %i.sl, 3                    ; 4 uses
  %i.sn = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.so = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = icmp ugt i64 %i.sm, %i.sp
  br i1 %i.sq, label %bb.fg, label %._crit_edge2463

._crit_edge2463:                                  ; preds = %bb.ff
  %.pre2464.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %3 = add i64 %i.so, %i.sm                       ; 3 uses
  %i.sr = icmp slt i64 %i.sn, %3
  %.pre2465.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.sr, label %4, label %bb.fi

4:                                                ; preds = %bb.fg
  %5 = sdiv i64 %3, 4
  %6 = add i64 %3, 1024
  %7 = add i64 %6, %5                             ; 2 uses
  %8 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2465.pre, i64 noundef %7) #13 ; 3 uses
  %.not.not.i1819 = icmp eq ptr %8, null
  br i1 %.not.not.i1819, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1820 = icmp eq ptr %10, null
  br i1 %.not.i.i1820, label %bb.fh, label %11

11:                                               ; preds = %9
  tail call void @PyMem_Free(ptr noundef nonnull %10) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fh

12:                                               ; preds = %4
  store ptr %8, ptr %i.u, align 8, !tbaa !88
  store i64 %7, ptr %i.g, align 8, !tbaa !121
  br label %bb.fi

bb.fh:                                            ; preds = %11, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.fi:                                            ; preds = %12, %bb.fg
  %.pre2465 = phi ptr [ %8, %12 ], [ %.pre2465.pre, %bb.fg ] ; 2 uses
  %.not1759 = icmp eq i64 %.111490.ph, -1
  %i.ss = getelementptr i8, ptr %.pre2465, i64 %.111490.ph
  %spec.select = select i1 %.not1759, ptr %.40, ptr %i.ss
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge2463
  %i.st = phi ptr [ %.pre2464.a, %._crit_edge2463 ], [ %.pre2465, %bb.fi ]
  %.11506 = phi ptr [ %.40, %._crit_edge2463 ], [ %spec.select, %bb.fi ]
  %i.su = load i64, ptr %i.e, align 8, !tbaa !120
  %i.sv = getelementptr i8, ptr %i.st, i64 %i.su
  %i.sw = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sv, ptr noundef nonnull align 8 dereferenceable(1) %i.sw, i64 %i.sm, i1 false)
  %i.sx = load i64, ptr %i.e, align 8, !tbaa !120
  %i.sy = add i64 %i.sx, %i.sm
  store i64 %i.sy, ptr %i.e, align 8, !tbaa !120
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fe, %bb.fj, %bb.gf
  %.01520 = phi ptr [ %.11521, %bb.gf ], [ %.151535, %bb.fj ], [ %.151535, %bb.fe ] ; 10 uses
  %.21507 = phi ptr [ %.41509, %bb.gf ], [ %.11506, %bb.fj ], [ %.40, %bb.fe ] ; 12 uses
  %.11493 = phi i32 [ %.21494, %bb.gf ], [ %.14, %bb.fj ], [ %.14, %bb.fe ] ; 8 uses
  %.11480 = phi i64 [ %.21481, %bb.gf ], [ %.111490.ph, %bb.fj ], [ %.111490.ph, %bb.fe ] ; 7 uses
  %.2 = phi ptr [ %i.vb, %bb.gf ], [ %.12, %bb.fj ], [ %.12, %bb.fe ] ; 9 uses
  %i.sz = load i32, ptr %.2, align 4, !tbaa !7
  %.not1783 = icmp eq i32 %i.sz, 0
  br i1 %.not1783, label %bb.gg, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ta = getelementptr i8, ptr %.2, i64 4        ; 3 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !7
  switch i32 %i.tb, label %.thread [
    i32 16, label %bb.fm
    i32 13, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  %.not1785 = icmp ult ptr %.01520, %i.b
  br i1 %.not1785, label %bb.fn, label %bb.gf

bb.fn:                                            ; preds = %bb.fm
  %i.tc = load i32, ptr %.01520, align 4, !tbaa !7
  %i.td = getelementptr i8, ptr %.2, i64 8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !7
  %.not1786 = icmp eq i32 %i.tc, %i.te
  br i1 %.not1786, label %.thread, label %bb.gf

bb.fo:                                            ; preds = %bb.fl
  %.not1787 = icmp ult ptr %.01520, %i.b
  br i1 %.not1787, label %bb.fp, label %bb.gf

bb.fp:                                            ; preds = %bb.fo
  %i.tf = getelementptr i8, ptr %.2, i64 12
  %i.tg = load i32, ptr %.01520, align 4, !tbaa !7
  %i.th = tail call fastcc i32 @sre_ucs4_charset(ptr noundef %i.tf, i32 noundef %i.tg)
  %.not1788 = icmp eq i32 %i.th, 0
  br i1 %.not1788, label %bb.gf, label %.thread

.thread:                                          ; preds = %bb.fl, %bb.fn, %bb.fp
  store ptr %.01520, ptr %0, align 8, !tbaa !81
  %i.ti = getelementptr i8, ptr %.21507, i64 24
  store ptr %.2, ptr %i.ti, align 8, !tbaa !180
  %i.tj = getelementptr i8, ptr %.21507, i64 32
  store ptr %.01520, ptr %i.tj, align 8, !tbaa !181
  %i.tk = load i64, ptr %i.e, align 8, !tbaa !120 ; 5 uses
  %i.tl = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.tm = sub i64 %i.tl, %i.tk
  %i.tn = icmp ult i64 %i.tm, 56
  br i1 %i.tn, label %bb.fq, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.pre2494.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.fx

bb.fq:                                            ; preds = %.thread
  %i.to = add i64 %i.tk, 56                       ; 2 uses
  %i.tp = icmp slt i64 %i.tl, %i.to
  %.pre2495.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.tp, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  %i.tq = sdiv i64 %i.to, 4
  %i.tr = add i64 %i.tk, 1080
  %i.ts = add i64 %i.tr, %i.tq                    ; 2 uses
  %i.tt = tail call ptr @PyMem_Realloc(ptr noundef %.pre2495.pre, i64 noundef %i.ts) #13 ; 3 uses
  %.not.not.i1824.a = icmp eq ptr %i.tt, null
  br i1 %.not.not.i1824.a, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.tu = load ptr, ptr %i.u, align 8, !tbaa !88  ; 2 uses
  %.not.i.i1825.a = icmp eq ptr %i.tu, null
  br i1 %.not.i.i1825.a, label %bb.fv, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @PyMem_Free(ptr noundef nonnull %i.tu) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fr
  store ptr %i.tt, ptr %i.u, align 8, !tbaa !88
  store i64 %i.ts, ptr %i.g, align 8, !tbaa !121
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft, %bb.fs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.fw:                                            ; preds = %bb.fu, %bb.fq
  %.pre2495.a = phi ptr [ %i.tt, %bb.fu ], [ %.pre2495.pre, %bb.fq ] ; 2 uses
  %.not1789 = icmp eq i64 %.11480, -1
  %i.tv = getelementptr i8, ptr %.pre2495.a, i64 %.11480
  %spec.select2926.a = select i1 %.not1789, ptr %.21507, ptr %i.tv
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.thread._crit_edge
  %i.tw = phi ptr [ %.pre2494.a, %.thread._crit_edge ], [ %.pre2495.a, %bb.fw ]
  %.31508 = phi ptr [ %.21507, %.thread._crit_edge ], [ %spec.select2926.a, %bb.fw ]
  %i.tx = getelementptr i8, ptr %i.tw, i64 %i.tk  ; 5 uses
  %i.ty = load i64, ptr %i.e, align 8, !tbaa !120
  %i.tz = add i64 %i.ty, 56
  store i64 %i.tz, ptr %i.e, align 8, !tbaa !120
  %i.ua = getelementptr i8, ptr %i.tx, i64 24
  store ptr %i.ta, ptr %i.ua, align 8, !tbaa !180
  %i.ub = getelementptr i8, ptr %.31508, i64 40
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !177
  %i.ud = getelementptr i8, ptr %i.tx, i64 40
  store i32 %i.uc, ptr %i.ud, align 8, !tbaa !177
  %i.ue = getelementptr i8, ptr %i.tx, i64 44
  store i32 11, ptr %i.ue, align 4, !tbaa !176
  %i.uf = getelementptr i8, ptr %i.tx, i64 48
  store i64 %.11480, ptr %i.uf, align 8, !tbaa !174
  br label %.backedge1906.backedge

.backedge1906.backedge:                           ; preds = %bb.fx, %bb.hg, %bb.hu, %bb.jc, %bb.kg, %bb.ko, %bb.lg, %bb.lu, %bb.mc, %bb.mo, %bb.nf, %bb.nr, %bb.oj, %bb.oy, %bb.qt, %bb.rg
  %.01505.be = phi ptr [ %i.aqd, %bb.lu ], [ %i.awh, %bb.nf ], [ %i.tx, %bb.fx ], [ %i.ayj, %bb.nr ], [ %i.bat, %bb.oj ], [ %i.blc, %bb.qt ], [ %i.bni, %bb.rg ], [ %i.ako, %bb.ko ], [ %i.anr, %bb.lg ], [ %i.ari, %bb.mc ], [ %i.atn, %bb.mo ], [ %i.ajd, %bb.kg ], [ %i.yo, %bb.hg ], [ %i.aas, %bb.hu ], [ %i.aez, %bb.jc ], [ %i.bcy, %bb.oy ]
  %.01492.be = phi i32 [ %.81500, %bb.lu ], [ %.13, %bb.nf ], [ %.11493, %bb.fx ], [ %.91501, %bb.nr ], [ %.101502, %bb.oj ], [ %.14, %bb.qt ], [ %.14, %bb.rg ], [ %.14, %bb.ko ], [ %.14, %bb.lg ], [ %.14, %bb.mc ], [ %.14, %bb.mo ], [ %.14, %bb.kg ], [ %.31495, %bb.hg ], [ %.41496, %bb.hu ], [ %.61498, %bb.jc ], [ %.14, %bb.oy ]
  %.01479.be = phi i64 [ %i.apl, %bb.lu ], [ %i.avs, %bb.nf ], [ %i.tk, %bb.fx ], [ %i.aya, %bb.nr ], [ %i.bah, %bb.oj ], [ %i.bkt, %bb.qt ], [ %i.bmx, %bb.rg ], [ %i.akf, %bb.ko ], [ %i.and, %bb.lg ], [ %i.aqz, %bb.mc ], [ %i.atc, %bb.mo ], [ %i.aiu, %bb.kg ], [ %i.yf, %bb.hg ], [ %i.aaj, %bb.hu ], [ %i.aeq, %bb.jc ], [ %i.bcp, %bb.oy ]
  %.01478.be = phi ptr [ %.7, %bb.lu ], [ %i.awx, %bb.nf ], [ %i.ta, %bb.fx ], [ %i.ayl, %bb.nr ], [ %i.bav, %bb.oj ], [ %i.ble, %bb.qt ], [ %i.bnk, %bb.rg ], [ %i.alf, %bb.ko ], [ %i.aoi, %bb.lg ], [ %i.arz, %bb.mc ], [ %.12, %bb.mo ], [ %i.ajr, %bb.kg ], [ %i.zc, %bb.hg ], [ %i.abg, %bb.hu ], [ %i.afn, %bb.jc ], [ %i.bda, %bb.oy ]
  br label %.backedge1906

bb.fy:                                            ; preds = %bb.rw
  br i1 %.not1782, label %.critedge1900, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ug = getelementptr i8, ptr %i.bpa, i64 16
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !182 ; 2 uses
  %i.ui = icmp sgt i32 %i.uh, -1
  br i1 %i.ui, label %bb.ga, label %.critedge1900

bb.ga:                                            ; preds = %bb.fz
  %i.uj = add nuw i32 %i.uh, 1
  %i.uk = sext i32 %i.uj to i64
  %i.ul = shl nsw i64 %i.uk, 3
  %i.um = sub i64 %i.box, %i.ul
  store i64 %i.um, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.gb:                                            ; preds = %bb.rw
  br i1 %.not1782, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.un = getelementptr i8, ptr %i.bpa, i64 16
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !182 ; 2 uses
  %i.up = icmp sgt i32 %i.uo, -1
  br i1 %i.up, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.uq = add nuw i32 %i.uo, 1
  %i.ur = sext i32 %i.uq to i64
  %i.us = shl nsw i64 %i.ur, 3                    ; 2 uses
  %i.ut = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.uu = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.uv = sub nsw i64 0, %i.us
  %i.uw = getelementptr i8, ptr %i.uu, i64 %i.uv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ut, ptr noundef nonnull align 1 dereferenceable(1) %i.uw, i64 %i.us, i1 false)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gb, %bb.gc, %bb.gd
  %i.ux = getelementptr i8, ptr %i.bpa, i64 16
  %i.uy = load <2 x i32>, ptr %i.ux, align 8, !tbaa !7
  store <2 x i32> %i.uy, ptr %i.ac, align 4, !tbaa !7
  br label %bb.gf

bb.gf:                                            ; preds = %bb.fo, %bb.fp, %bb.fm, %bb.fn, %bb.ge
  %.11521 = phi ptr [ %i.bql, %bb.ge ], [ %.01520, %bb.fm ], [ %.01520, %bb.fn ], [ %.01520, %bb.fp ], [ %.01520, %bb.fo ]
  %.41509 = phi ptr [ %i.bpa, %bb.ge ], [ %.21507, %bb.fm ], [ %.21507, %bb.fn ], [ %.21507, %bb.fp ], [ %.21507, %bb.fo ]
  %.21494 = phi i32 [ %.13, %bb.ge ], [ %.11493, %bb.fm ], [ %.11493, %bb.fn ], [ %.11493, %bb.fp ], [ %.11493, %bb.fo ]
  %.21481 = phi i64 [ %i.bot, %bb.ge ], [ %.11480, %bb.fm ], [ %.11480, %bb.fn ], [ %.11480, %bb.fp ], [ %.11480, %bb.fo ]
  %.3 = phi ptr [ %i.bqj, %bb.ge ], [ %.2, %bb.fm ], [ %.2, %bb.fn ], [ %.2, %bb.fp ], [ %.2, %bb.fo ] ; 2 uses
  %i.uz = load i32, ptr %.3, align 4, !tbaa !7
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr [4 x i8], ptr %.3, i64 %i.va
  br label %bb.fk, !llvm.loop !183

bb.gg:                                            ; preds = %bb.fk
  %i.vc = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1784 = icmp eq ptr %i.vc, null
  br i1 %.not1784, label %.critedge1900, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vd = getelementptr i8, ptr %.21507, i64 16
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !182 ; 2 uses
  %i.vf = icmp sgt i32 %i.ve, -1
  br i1 %i.vf, label %bb.gi, label %.critedge1900

bb.gi:                                            ; preds = %bb.gh
  %i.vg = add nuw i32 %i.ve, 1
  %i.vh = sext i32 %i.vg to i64
  %i.vi = shl nsw i64 %i.vh, 3
  %i.vj = load i64, ptr %i.e, align 8, !tbaa !120
  %i.vk = sub i64 %i.vj, %i.vi
  store i64 %i.vk, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.gj:                                            ; preds = %.backedge
  %i.vl = getelementptr i8, ptr %.12, i64 4       ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !7
  %i.vn = zext i32 %i.vm to i64
  %i.vo = ptrtoint ptr %.151535 to i64
  %i.vp = sub i64 %i.ab, %i.vo
  %i.vq = ashr exact i64 %i.vp, 2
  %i.vr = icmp slt i64 %i.vq, %i.vn
  br i1 %i.vr, label %.critedge1900, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.vs = getelementptr i8, ptr %.12, i64 12
  %i.vt = getelementptr i8, ptr %.12, i64 8
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !7
  %i.vv = zext i32 %i.vu to i64
  %i.vw = tail call fastcc i64 @sre_ucs4_count(ptr noundef %0, ptr noundef %i.vs, i64 noundef %i.vv) ; 5 uses
  %i.vx = icmp slt i64 %i.vw, 0
  br i1 %i.vx, label %.loopexit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vy = load ptr, ptr %i.u, align 8, !tbaa !88  ; 4 uses
  %i.vz = getelementptr i8, ptr %i.vy, i64 %.111490.ph ; 8 uses
  store i64 %i.vw, ptr %i.vz, align 8, !tbaa !184
  %i.wa = getelementptr [4 x i8], ptr %.151535, i64 %i.vw ; 5 uses
  %i.wb = load i32, ptr %i.vl, align 4, !tbaa !7
  %i.wc = zext i32 %i.wb to i64
  %i.wd = icmp samesign ult i64 %i.vw, %i.wc
  br i1 %i.wd, label %.critedge1900, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.we = load i32, ptr %.12, align 4, !tbaa !7
  %i.wf = zext i32 %i.we to i64
  %i.wg = getelementptr [4 x i8], ptr %.12, i64 %i.wf
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !7
  %i.wi = icmp eq i32 %i.wh, 1
  br i1 %i.wi, label %bb.gn, label %bb.gs

bb.gn:                                            ; preds = %bb.gm
  %i.wj = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.wk = icmp eq ptr %i.wa, %i.wj
  br i1 %i.wk, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %bb.gn
  %i.wl = getelementptr i8, ptr %i.vz, i64 40
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !177
  %.not1699 = icmp eq i32 %i.wm, 0
  br i1 %.not1699, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.wn = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1700 = icmp eq i32 %i.wn, 0
  br i1 %.not1700, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.wo = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.wp = icmp eq ptr %i.wa, %i.wo
  br i1 %i.wp, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.go
  store ptr %i.wa, ptr %0, align 8, !tbaa !81
  br label %.critedge1900

bb.gs:                                            ; preds = %bb.gm, %bb.gn, %bb.gq
  %i.wq = getelementptr i8, ptr %i.vz, i64 16
  %i.wr = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.ws = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.wr, ptr %i.wq, align 8, !tbaa !7
  %i.wt = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1701 = icmp ne ptr %i.wt, null
  %i.wu = icmp sgt i32 %i.ws, -1
  %or.cond1879 = select i1 %.not1701, i1 %i.wu, i1 false
  br i1 %or.cond1879, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %bb.gs
  %i.wv = add nuw i32 %i.ws, 1
  %i.ww = sext i32 %i.wv to i64
  %i.wx = shl nsw i64 %i.ww, 3                    ; 4 uses
  %i.wy = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.wz = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = icmp ugt i64 %i.wx, %i.xa
  br i1 %i.xb, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %13 = add i64 %i.wz, %i.wx                      ; 3 uses
  %i.xc = icmp slt i64 %i.wy, %13
  br i1 %i.xc, label %14, label %bb.gw

14:                                               ; preds = %bb.gu
  %15 = sdiv i64 %13, 4
  %16 = add i64 %13, 1024
  %17 = add i64 %16, %15                          ; 2 uses
  %18 = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.vy, i64 noundef %17) #13 ; 3 uses
  %.not.not.i1829 = icmp eq ptr %18, null
  br i1 %.not.not.i1829, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1830 = icmp eq ptr %20, null
  br i1 %.not.i.i1830, label %bb.gv, label %21

21:                                               ; preds = %19
  tail call void @PyMem_Free(ptr noundef nonnull %20) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.gv

22:                                               ; preds = %14
  store ptr %18, ptr %i.u, align 8, !tbaa !88
  store i64 %17, ptr %i.g, align 8, !tbaa !121
  br label %bb.gw

bb.gv:                                            ; preds = %21, %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.gw:                                            ; preds = %22, %bb.gu
  %23 = phi ptr [ %18, %22 ], [ %i.vy, %bb.gu ]   ; 2 uses
  %.not1702 = icmp eq i64 %.111490.ph, -1
  %i.xd = getelementptr i8, ptr %23, i64 %.111490.ph
  %spec.select2927.a = select i1 %.not1702, ptr %i.vz, ptr %i.xd
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gt
  %i.xe = phi ptr [ %i.vy, %bb.gt ], [ %23, %bb.gw ]
  %.51510 = phi ptr [ %i.vz, %bb.gt ], [ %spec.select2927.a, %bb.gw ]
  %i.xf = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xg = getelementptr i8, ptr %i.xe, i64 %i.xf
  %i.xh = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xg, ptr noundef nonnull align 8 dereferenceable(1) %i.xh, i64 %i.wx, i1 false)
  %i.xi = load i64, ptr %i.e, align 8, !tbaa !120
  %i.xj = add i64 %i.xi, %i.wx
  store i64 %i.xj, ptr %i.e, align 8, !tbaa !120
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gs
  %.61511 = phi ptr [ %.51510, %bb.gx ], [ %i.vz, %bb.gs ] ; 5 uses
  %i.xk = load i32, ptr %.12, align 4, !tbaa !7   ; 2 uses
  %i.xl = zext i32 %i.xk to i64
  %i.xm = getelementptr [4 x i8], ptr %.12, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !7
  %i.xo = icmp eq i32 %i.xn, 16
  br i1 %i.xo, label %bb.gz, label %._crit_edge2476

._crit_edge2476:                                  ; preds = %bb.gy
  %.pre2477.a = load i64, ptr %.61511, align 8, !tbaa !184
  br label %bb.hp

bb.gz:                                            ; preds = %bb.gy
  %i.xp = add i32 %i.xk, 1
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr [4 x i8], ptr %.12, i64 %i.xq
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !7
  %i.xt = getelementptr i8, ptr %.61511, i64 8
  store i32 %i.xs, ptr %i.xt, align 8, !tbaa !26
  %.71512.promoted.pre = load i64, ptr %.61511, align 8, !tbaa !184
  br label %bb.ha

bb.ha:                                            ; preds = %bb.hn, %bb.gz
  %.71512.promoted = phi i64 [ %.71512.promoted.pre, %bb.gz ], [ %i.zy, %bb.hn ] ; 2 uses
  %.21522 = phi ptr [ %i.wa, %bb.gz ], [ %i.zw, %bb.hn ]
  %.71512 = phi ptr [ %.61511, %bb.gz ], [ %i.bpa, %bb.hn ] ; 10 uses
  %.31495 = phi i32 [ %.14, %bb.gz ], [ %.13, %bb.hn ] ; 4 uses
  %.31482 = phi i64 [ %.111490.ph, %bb.gz ], [ %i.bot, %bb.hn ] ; 3 uses
  %.4 = phi ptr [ %.12, %bb.gz ], [ %i.brj, %bb.hn ] ; 6 uses
  %i.xu = getelementptr i8, ptr %.4, i64 4
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !7
  %i.xw = zext i32 %i.xv to i64                   ; 2 uses
  %.not17062177 = icmp slt i64 %.71512.promoted, %i.xw
  br i1 %.not17062177, label %._crit_edge2181, label %.lr.ph2180

.lr.ph2180:                                       ; preds = %bb.ha
  %i.xx = getelementptr i8, ptr %.71512, i64 8
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph2180, %.critedge2
  %.315232178 = phi ptr [ %.21522, %.lr.ph2180 ], [ %i.yb, %.critedge2 ] ; 5 uses
  %i.xy = phi i64 [ %.71512.promoted, %.lr.ph2180 ], [ %i.yc, %.critedge2 ] ; 2 uses
  %.not1707 = icmp ult ptr %.315232178, %i.b
  br i1 %.not1707, label %bb.hc, label %.critedge2

bb.hc:                                            ; preds = %bb.hb
  %i.xz = load i32, ptr %.315232178, align 4, !tbaa !7
  %i.ya = load i32, ptr %i.xx, align 8, !tbaa !26
  %.not1708 = icmp eq i32 %i.xz, %i.ya
  br i1 %.not1708, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.hb, %bb.hc
  %i.yb = getelementptr i8, ptr %.315232178, i64 -4
  %i.yc = add nsw i64 %i.xy, -1                   ; 2 uses
  store i64 %i.yc, ptr %.71512, align 8, !tbaa !184
  %.not1706.not = icmp sgt i64 %i.xy, %i.xw
  br i1 %.not1706.not, label %bb.hb, label %._crit_edge2181, !llvm.loop !185

.critedge:                                        ; preds = %bb.hc
  store ptr %.315232178, ptr %0, align 8, !tbaa !81
  %i.yd = getelementptr i8, ptr %.71512, i64 24
  store ptr %.4, ptr %i.yd, align 8, !tbaa !180
  %i.ye = getelementptr i8, ptr %.71512, i64 32
  store ptr %.315232178, ptr %i.ye, align 8, !tbaa !181
  %i.yf = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.yg = load i64, ptr %i.g, align 8, !tbaa !121
  %i.yh = sub i64 %i.yg, %i.yf
  %i.yi = icmp ult i64 %i.yh, 56
  br i1 %i.yi, label %bb.hd, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre2482.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.hg

bb.hd:                                            ; preds = %.critedge
  %i.yj = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.yk = icmp slt i32 %i.yj, 0
  br i1 %i.yk, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.yl = sext i32 %i.yj to i64
  br label %.loopexit

bb.hf:                                            ; preds = %bb.hd
  %.not1709 = icmp eq i64 %.31482, -1
  %.pre2483 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.ym = getelementptr i8, ptr %.pre2483, i64 %.31482
  %spec.select2928.a = select i1 %.not1709, ptr %.71512, ptr %i.ym
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.critedge._crit_edge
  %i.yn = phi ptr [ %.pre2482.a, %.critedge._crit_edge ], [ %.pre2483, %bb.hf ]
  %.81513 = phi ptr [ %.71512, %.critedge._crit_edge ], [ %spec.select2928.a, %bb.hf ]
  %i.yo = getelementptr i8, ptr %i.yn, i64 %i.yf  ; 5 uses
  %i.yp = load i64, ptr %i.e, align 8, !tbaa !120
  %i.yq = add i64 %i.yp, 56
  store i64 %i.yq, ptr %i.e, align 8, !tbaa !120
  %i.yr = load i32, ptr %.4, align 4, !tbaa !7
  %i.ys = zext i32 %i.yr to i64
  %i.yt = getelementptr [4 x i8], ptr %.4, i64 %i.ys
  %i.yu = getelementptr i8, ptr %i.yo, i64 24
  store ptr %i.yt, ptr %i.yu, align 8, !tbaa !180
  %i.yv = getelementptr i8, ptr %.81513, i64 40
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !177
  %i.yx = getelementptr i8, ptr %i.yo, i64 40
  store i32 %i.yw, ptr %i.yx, align 8, !tbaa !177
  %i.yy = getelementptr i8, ptr %i.yo, i64 44
  store i32 8, ptr %i.yy, align 4, !tbaa !176
  %i.yz = getelementptr i8, ptr %i.yo, i64 48
  store i64 %.31482, ptr %i.yz, align 8, !tbaa !174
  %i.za = load i32, ptr %.4, align 4, !tbaa !7
  %i.zb = zext i32 %i.za to i64
  %i.zc = getelementptr [4 x i8], ptr %.4, i64 %i.zb
  br label %.backedge1906.backedge

bb.hh:                                            ; preds = %bb.sg
  br i1 %.not1653, label %.critedge1900, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.zd = getelementptr i8, ptr %i.bpa, i64 16
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !182 ; 2 uses
  %i.zf = icmp sgt i32 %i.ze, -1
  br i1 %i.zf, label %bb.hj, label %.critedge1900

bb.hj:                                            ; preds = %bb.hi
  %i.zg = add nuw i32 %i.ze, 1
  %i.zh = sext i32 %i.zg to i64
  %i.zi = shl nsw i64 %i.zh, 3
  %i.zj = sub i64 %i.box, %i.zi
  store i64 %i.zj, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.hk:                                            ; preds = %bb.sg
  br i1 %.not1653, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.zk = getelementptr i8, ptr %i.bpa, i64 16
  %i.zl = load i32, ptr %i.zk, align 8, !tbaa !182 ; 2 uses
  %i.zm = icmp sgt i32 %i.zl, -1
  br i1 %i.zm, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.zn = add nuw i32 %i.zl, 1
  %i.zo = sext i32 %i.zn to i64
  %i.zp = shl nsw i64 %i.zo, 3                    ; 2 uses
  %i.zq = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.zr = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.zs = sub nsw i64 0, %i.zp
  %i.zt = getelementptr i8, ptr %i.zr, i64 %i.zs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zq, ptr noundef nonnull align 1 dereferenceable(1) %i.zt, i64 %i.zp, i1 false)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.zu = getelementptr i8, ptr %i.bpa, i64 16
  %i.zv = load <2 x i32>, ptr %i.zu, align 8, !tbaa !7
  store <2 x i32> %i.zv, ptr %i.ac, align 4, !tbaa !7
  %i.zw = getelementptr i8, ptr %i.brl, i64 -4
  %i.zx = load i64, ptr %i.bpa, align 8, !tbaa !184
  %i.zy = add i64 %i.zx, -1                       ; 2 uses
  store i64 %i.zy, ptr %i.bpa, align 8, !tbaa !184
  br label %bb.ha

._crit_edge2181:                                  ; preds = %.critedge2, %bb.ha
  %i.zz = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1710 = icmp eq ptr %i.zz, null
  br i1 %.not1710, label %.critedge1900, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge2181
  %i.aaa = getelementptr i8, ptr %.71512, i64 16
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !182 ; 2 uses
  %i.aac = icmp sgt i32 %i.aab, -1
  br i1 %i.aac, label %.sink.split, label %.critedge1900

bb.hp:                                            ; preds = %._crit_edge2476, %bb.ib
  %i.aad = phi i64 [ %.pre2477.a, %._crit_edge2476 ], [ %i.acc, %bb.ib ]
  %.41524 = phi ptr [ %i.wa, %._crit_edge2476 ], [ %i.aca, %bb.ib ] ; 2 uses
  %.91514 = phi ptr [ %.61511, %._crit_edge2476 ], [ %i.bpa, %bb.ib ] ; 8 uses
  %.41496 = phi i32 [ %.14, %._crit_edge2476 ], [ %.13, %bb.ib ] ; 4 uses
  %.41483 = phi i64 [ %.111490.ph, %._crit_edge2476 ], [ %i.bot, %bb.ib ] ; 3 uses
  %.5 = phi ptr [ %.12, %._crit_edge2476 ], [ %i.bro, %bb.ib ] ; 6 uses
  %i.aae = getelementptr i8, ptr %.5, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !7
  %i.aag = zext i32 %i.aaf to i64
  %.not1703 = icmp slt i64 %i.aad, %i.aag
  br i1 %.not1703, label %bb.ic, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store ptr %.41524, ptr %0, align 8, !tbaa !81
  %i.aah = getelementptr i8, ptr %.91514, i64 24
end_hunk_9
begin_hunk_10_@sre_ucs4_match:bb.a

bb.hs:                                            ; preds = %bb.hr
  %i.aap = sext i32 %i.aan to i64
  br label %.loopexit

bb.ht:                                            ; preds = %bb.hr
  %.not1705 = icmp eq i64 %.41483, -1
  %.pre2480.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aaq = getelementptr i8, ptr %.pre2480.a, i64 %.41483
  %spec.select2929 = select i1 %.not1705, ptr %.91514, ptr %i.aaq
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge2478
  %i.aar = phi ptr [ %.pre2479, %._crit_edge2478 ], [ %.pre2480.a, %bb.ht ]
  %.101515 = phi ptr [ %.91514, %._crit_edge2478 ], [ %spec.select2929, %bb.ht ]
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.aaj ; 5 uses
  %i.aat = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aau = add i64 %i.aat, 56
  store i64 %i.aau, ptr %i.e, align 8, !tbaa !120
  %i.aav = load i32, ptr %.5, align 4, !tbaa !7
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr [4 x i8], ptr %.5, i64 %i.aaw
  %i.aay = getelementptr i8, ptr %i.aas, i64 24
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !180
  %i.aaz = getelementptr i8, ptr %.101515, i64 40
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !177
  %i.abb = getelementptr i8, ptr %i.aas, i64 40
  store i32 %i.aba, ptr %i.abb, align 8, !tbaa !177
  %i.abc = getelementptr i8, ptr %i.aas, i64 44
  store i32 9, ptr %i.abc, align 4, !tbaa !176
  %i.abd = getelementptr i8, ptr %i.aas, i64 48
  store i64 %.41483, ptr %i.abd, align 8, !tbaa !174
  %i.abe = load i32, ptr %.5, align 4, !tbaa !7
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr [4 x i8], ptr %.5, i64 %i.abf
  br label %.backedge1906.backedge

bb.hv:                                            ; preds = %bb.sh
  br i1 %.not1650, label %.critedge1900, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.abh = getelementptr i8, ptr %i.bpa, i64 16
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !182 ; 2 uses
  %i.abj = icmp sgt i32 %i.abi, -1
  br i1 %i.abj, label %bb.hx, label %.critedge1900

bb.hx:                                            ; preds = %bb.hw
  %i.abk = add nuw i32 %i.abi, 1
  %i.abl = sext i32 %i.abk to i64
  %i.abm = shl nsw i64 %i.abl, 3
  %i.abn = sub i64 %i.box, %i.abm
  store i64 %i.abn, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.hy:                                            ; preds = %bb.sh
  br i1 %.not1650, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.abo = getelementptr i8, ptr %i.bpa, i64 16
  %i.abp = load i32, ptr %i.abo, align 8, !tbaa !182 ; 2 uses
  %i.abq = icmp sgt i32 %i.abp, -1
  br i1 %i.abq, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.abr = add nuw i32 %i.abp, 1
  %i.abs = sext i32 %i.abr to i64
  %i.abt = shl nsw i64 %i.abs, 3                  ; 2 uses
  %i.abu = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.abv = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.abw = sub nsw i64 0, %i.abt
  %i.abx = getelementptr i8, ptr %i.abv, i64 %i.abw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.abu, ptr noundef nonnull align 1 dereferenceable(1) %i.abx, i64 %i.abt, i1 false)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hy, %bb.hz, %bb.ia
  %i.aby = getelementptr i8, ptr %i.bpa, i64 16
  %i.abz = load <2 x i32>, ptr %i.aby, align 8, !tbaa !7
  store <2 x i32> %i.abz, ptr %i.ac, align 4, !tbaa !7
  %i.aca = getelementptr i8, ptr %i.brq, i64 -4
  %i.acb = load i64, ptr %i.bpa, align 8, !tbaa !184
  %i.acc = add i64 %i.acb, -1                     ; 2 uses
  store i64 %i.acc, ptr %i.bpa, align 8, !tbaa !184
  br label %bb.hp, !llvm.loop !186

bb.ic:                                            ; preds = %bb.hp
  %i.acd = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1704 = icmp eq ptr %i.acd, null
  br i1 %.not1704, label %.critedge1900, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ace = getelementptr i8, ptr %.91514, i64 16
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !182 ; 2 uses
  %i.acg = icmp sgt i32 %i.acf, -1
  br i1 %i.acg, label %.sink.split, label %.critedge1900

.sink.split:                                      ; preds = %bb.id, %bb.ho
  %.sink = phi i32 [ %i.aab, %bb.ho ], [ %i.acf, %bb.id ]
  %.111516.ph = phi ptr [ %.71512, %bb.ho ], [ %.91514, %bb.id ]
  %.51497.ph = phi i32 [ %.31495, %bb.ho ], [ %.41496, %bb.id ]
  %i.ach = add nuw i32 %.sink, 1
  %i.aci = sext i32 %i.ach to i64
  %i.acj = shl nsw i64 %i.aci, 3
  %i.ack = load i64, ptr %i.e, align 8, !tbaa !120
  %i.acl = sub i64 %i.ack, %i.acj
  store i64 %i.acl, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.ie:                                            ; preds = %.backedge
  %i.acm = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !7 ; 2 uses
  %i.aco = zext i32 %i.acn to i64                 ; 2 uses
  %i.acp = ptrtoint ptr %.151535 to i64
  %i.acq = sub i64 %i.ab, %i.acp
  %i.acr = ashr exact i64 %i.acq, 2
  %i.acs = icmp slt i64 %i.acr, %i.aco
  br i1 %i.acs, label %.critedge1900, label %bb.if

bb.if:                                            ; preds = %bb.ie
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.act = icmp eq i32 %i.acn, 0
  br i1 %i.act, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store i64 0, ptr %.40, align 8, !tbaa !184
  br label %bb.ik

bb.ih:                                            ; preds = %bb.if
  %i.acu = getelementptr i8, ptr %.12, i64 12
  %i.acv = tail call fastcc i64 @sre_ucs4_count(ptr noundef nonnull %0, ptr noundef %i.acu, i64 noundef %i.aco) ; 5 uses
  %i.acw = icmp slt i64 %i.acv, 0
  br i1 %i.acw, label %.loopexit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.acx = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.acy = getelementptr i8, ptr %i.acx, i64 %.111490.ph ; 3 uses
  %i.acz = load i32, ptr %i.acm, align 4, !tbaa !7
  %i.ada = zext i32 %i.acz to i64
  %i.adb = icmp samesign ult i64 %i.acv, %i.ada
  br i1 %i.adb, label %.critedge1900, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  store i64 %i.acv, ptr %i.acy, align 8, !tbaa !184
  %i.adc = getelementptr [4 x i8], ptr %.151535, i64 %i.acv
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ig
  %.51525 = phi ptr [ %.151535, %bb.ig ], [ %i.adc, %bb.ij ] ; 5 uses
  %.121517 = phi ptr [ %.40, %bb.ig ], [ %i.acy, %bb.ij ] ; 6 uses
  %i.add = load i32, ptr %.12, align 4, !tbaa !7
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr [4 x i8], ptr %.12, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !7
  %i.adh = icmp eq i32 %i.adg, 1
  br i1 %i.adh, label %bb.il, label %bb.ir

bb.il:                                            ; preds = %bb.ik
  %i.adi = getelementptr i8, ptr %.121517, i64 40
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !177
  %.not1687 = icmp eq i32 %i.adj, 0
  br i1 %.not1687, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.adk = load i32, ptr %i.al, align 8, !tbaa !83
  %.not1688 = icmp eq i32 %i.adk, 0
  br i1 %.not1688, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.adl = load ptr, ptr %i.a, align 8, !tbaa !84
  %.not1689 = icmp eq ptr %.51525, %i.adl
  br i1 %.not1689, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.adm = load i32, ptr %i.ae, align 4, !tbaa !92
  %.not1690 = icmp eq i32 %i.adm, 0
  br i1 %.not1690, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.adn = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ado = icmp eq ptr %.51525, %i.adn
  br i1 %i.ado, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.il
  store ptr %.51525, ptr %0, align 8, !tbaa !81
  br label %.critedge1900

bb.ir:                                            ; preds = %bb.ik, %bb.in, %bb.ip
  %i.adp = getelementptr i8, ptr %.121517, i64 16
  %i.adq = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.adr = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.adq, ptr %i.adp, align 8, !tbaa !7
  %i.ads = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1691 = icmp ne ptr %i.ads, null
  %i.adt = icmp sgt i32 %i.adr, -1
  %or.cond1880 = select i1 %.not1691, i1 %i.adt, i1 false
  br i1 %or.cond1880, label %bb.is, label %bb.ix

bb.is:                                            ; preds = %bb.ir
  %i.adu = add nuw i32 %i.adr, 1
  %i.adv = sext i32 %i.adu to i64
  %i.adw = shl nsw i64 %i.adv, 3                  ; 4 uses
  %i.adx = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.ady = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.adz = sub i64 %i.adx, %i.ady
  %i.aea = icmp ugt i64 %i.adw, %i.adz
  br i1 %i.aea, label %bb.it, label %._crit_edge2434

._crit_edge2434:                                  ; preds = %bb.is
  %.pre2435.a = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.iw

bb.it:                                            ; preds = %bb.is
  %24 = add i64 %i.ady, %i.adw                    ; 3 uses
  %i.aeb = icmp slt i64 %i.adx, %24
  %.pre2436.pre = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  br i1 %i.aeb, label %25, label %bb.iv

25:                                               ; preds = %bb.it
  %26 = sdiv i64 %24, 4
  %27 = add i64 %24, 1024
  %28 = add i64 %27, %26                          ; 2 uses
  %29 = tail call ptr @PyMem_Realloc(ptr noundef %.pre2436.pre, i64 noundef %28) #13 ; 3 uses
  %.not.not.i1834 = icmp eq ptr %29, null
  br i1 %.not.not.i1834, label %30, label %33

30:                                               ; preds = %25
  %31 = load ptr, ptr %i.u, align 8, !tbaa !88    ; 2 uses
  %.not.i.i1835 = icmp eq ptr %31, null
  br i1 %.not.i.i1835, label %bb.iu, label %32

32:                                               ; preds = %30
  tail call void @PyMem_Free(ptr noundef nonnull %31) #13
  store ptr null, ptr %i.u, align 8, !tbaa !88
  br label %bb.iu

33:                                               ; preds = %25
  store ptr %29, ptr %i.u, align 8, !tbaa !88
  store i64 %28, ptr %i.g, align 8, !tbaa !121
  br label %bb.iv

bb.iu:                                            ; preds = %32, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.iv:                                            ; preds = %33, %bb.it
  %.pre2436 = phi ptr [ %29, %33 ], [ %.pre2436.pre, %bb.it ] ; 2 uses
  %.not1692 = icmp eq i64 %.111490.ph, -1
  %i.aec = getelementptr i8, ptr %.pre2436, i64 %.111490.ph
  %spec.select2933 = select i1 %.not1692, ptr %.121517, ptr %i.aec
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %._crit_edge2434
  %i.aed = phi ptr [ %.pre2435.a, %._crit_edge2434 ], [ %.pre2436, %bb.iv ]
  %.131518 = phi ptr [ %.121517, %._crit_edge2434 ], [ %spec.select2933, %bb.iv ]
  %i.aee = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aef = getelementptr i8, ptr %i.aed, i64 %i.aee
  %i.aeg = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aef, ptr noundef nonnull align 8 dereferenceable(1) %i.aeg, i64 %i.adw, i1 false)
  %i.aeh = load i64, ptr %i.e, align 8, !tbaa !120
  %i.aei = add i64 %i.aeh, %i.adw
  store i64 %i.aei, ptr %i.e, align 8, !tbaa !120
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ir, %bb.iw, %bb.jl
  %.61526 = phi ptr [ %.51525, %bb.iw ], [ %i.agn, %bb.jl ], [ %.51525, %bb.ir ] ; 2 uses
  %.141519 = phi ptr [ %.131518, %bb.iw ], [ %i.agl, %bb.jl ], [ %.121517, %bb.ir ] ; 6 uses
  %.61498 = phi i32 [ %.14, %bb.iw ], [ %.13, %bb.jl ], [ %.14, %bb.ir ] ; 2 uses
  %.51484 = phi i64 [ %.111490.ph, %bb.iw ], [ %i.bot, %bb.jl ], [ %.111490.ph, %bb.ir ] ; 3 uses
  %.6 = phi ptr [ %.12, %bb.iw ], [ %i.brt, %bb.jl ], [ %.12, %bb.ir ] ; 6 uses
  %i.aej = getelementptr i8, ptr %.6, i64 8
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !7 ; 2 uses
  %i.ael = icmp eq i32 %i.aek, -1
  br i1 %i.ael, label %.critedge4, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aem = zext i32 %i.aek to i64
  %i.aen = load i64, ptr %.141519, align 8, !tbaa !184
  %.not1693 = icmp sgt i64 %i.aen, %i.aem
  br i1 %.not1693, label %bb.jm, label %.critedge4

.critedge4:                                       ; preds = %bb.ix, %bb.iy
  store ptr %.61526, ptr %0, align 8, !tbaa !81
  %i.aeo = getelementptr i8, ptr %.141519, i64 24
  store ptr %.6, ptr %i.aeo, align 8, !tbaa !180
  %i.aep = getelementptr i8, ptr %.141519, i64 32
  store ptr %.61526, ptr %i.aep, align 8, !tbaa !181
  %i.aeq = load i64, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %i.aer = load i64, ptr %i.g, align 8, !tbaa !121
  %i.aes = sub i64 %i.aer, %i.aeq
  %i.aet = icmp ult i64 %i.aes, 56
  br i1 %i.aet, label %bb.iz, label %.critedge4._crit_edge

.critedge4._crit_edge:                            ; preds = %.critedge4
  %.pre2474 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.jc

bb.iz:                                            ; preds = %.critedge4
  %i.aeu = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.aev = icmp slt i32 %i.aeu, 0
  br i1 %i.aev, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.aew = sext i32 %i.aeu to i64
  br label %.loopexit

bb.jb:                                            ; preds = %bb.iz
  %.not1695 = icmp eq i64 %.51484, -1
  %.pre2475.a = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.aex = getelementptr i8, ptr %.pre2475.a, i64 %.51484
  %spec.select2934 = select i1 %.not1695, ptr %.141519, ptr %i.aex
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %.critedge4._crit_edge
  %i.aey = phi ptr [ %.pre2474, %.critedge4._crit_edge ], [ %.pre2475.a, %bb.jb ]
  %.15 = phi ptr [ %.141519, %.critedge4._crit_edge ], [ %spec.select2934, %bb.jb ]
  %i.aez = getelementptr i8, ptr %i.aey, i64 %i.aeq ; 5 uses
  %i.afa = load i64, ptr %i.e, align 8, !tbaa !120
  %i.afb = add i64 %i.afa, 56
  store i64 %i.afb, ptr %i.e, align 8, !tbaa !120
  %i.afc = load i32, ptr %.6, align 4, !tbaa !7
  %i.afd = zext i32 %i.afc to i64
  %i.afe = getelementptr [4 x i8], ptr %.6, i64 %i.afd
  %i.aff = getelementptr i8, ptr %i.aez, i64 24
  store ptr %i.afe, ptr %i.aff, align 8, !tbaa !180
  %i.afg = getelementptr i8, ptr %.15, i64 40
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !177
  %i.afi = getelementptr i8, ptr %i.aez, i64 40
  store i32 %i.afh, ptr %i.afi, align 8, !tbaa !177
  %i.afj = getelementptr i8, ptr %i.aez, i64 44
  store i32 10, ptr %i.afj, align 4, !tbaa !176
  %i.afk = getelementptr i8, ptr %i.aez, i64 48
  store i64 %.51484, ptr %i.afk, align 8, !tbaa !174
  %i.afl = load i32, ptr %.6, align 4, !tbaa !7
  %i.afm = zext i32 %i.afl to i64
  %i.afn = getelementptr [4 x i8], ptr %.6, i64 %i.afm
  br label %.backedge1906.backedge

bb.jd:                                            ; preds = %bb.si
  br i1 %.not1647, label %.critedge1900, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.afo = getelementptr i8, ptr %i.bpa, i64 16
  %i.afp = load i32, ptr %i.afo, align 8, !tbaa !182 ; 2 uses
  %i.afq = icmp sgt i32 %i.afp, -1
  br i1 %i.afq, label %bb.jf, label %.critedge1900

bb.jf:                                            ; preds = %bb.je
  %i.afr = add nuw i32 %i.afp, 1
  %i.afs = sext i32 %i.afr to i64
  %i.aft = shl nsw i64 %i.afs, 3
  %i.afu = sub i64 %i.box, %i.aft
  store i64 %i.afu, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.jg:                                            ; preds = %bb.si
  br i1 %.not1647, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.afv = getelementptr i8, ptr %i.bpa, i64 16
  %i.afw = load i32, ptr %i.afv, align 8, !tbaa !182 ; 2 uses
  %i.afx = icmp sgt i32 %i.afw, -1
  br i1 %i.afx, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.afy = add nuw i32 %i.afw, 1
  %i.afz = sext i32 %i.afy to i64
  %i.aga = shl nsw i64 %i.afz, 3                  ; 2 uses
  %i.agb = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.agc = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.agd = sub nsw i64 0, %i.aga
  %i.age = getelementptr i8, ptr %i.agc, i64 %i.agd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agb, ptr noundef nonnull align 1 dereferenceable(1) %i.age, i64 %i.aga, i1 false)
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jg, %bb.jh, %bb.ji
  %i.agf = getelementptr i8, ptr %i.bpa, i64 16
  %i.agg = load <2 x i32>, ptr %i.agf, align 8, !tbaa !7
  store <2 x i32> %i.agg, ptr %i.ac, align 4, !tbaa !7
  store ptr %i.brv, ptr %0, align 8, !tbaa !81
  %i.agh = getelementptr i8, ptr %i.brt, i64 12
  %i.agi = tail call fastcc i64 @sre_ucs4_count(ptr noundef nonnull %0, ptr noundef %i.agh, i64 noundef 1) ; 3 uses
  %i.agj = icmp slt i64 %i.agi, 0
  br i1 %i.agj, label %.loopexit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.agk = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.agl = getelementptr i8, ptr %i.agk, i64 %i.bot ; 4 uses
  %i.agm = icmp eq i64 %i.agi, 0
  br i1 %i.agm, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.agn = getelementptr i8, ptr %i.brv, i64 4
  %i.ago = load i64, ptr %i.agl, align 8, !tbaa !184
  %i.agp = add i64 %i.ago, 1
  store i64 %i.agp, ptr %i.agl, align 8, !tbaa !184
  br label %bb.ix, !llvm.loop !187

bb.jm:                                            ; preds = %bb.jk, %bb.iy
  %.16 = phi ptr [ %.141519, %bb.iy ], [ %i.agl, %bb.jk ] ; 4 uses
  %.71499 = phi i32 [ %.61498, %bb.iy ], [ %.13, %bb.jk ] ; 3 uses
  %i.agq = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1694 = icmp eq ptr %i.agq, null
  br i1 %.not1694, label %.critedge1900, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.agr = getelementptr i8, ptr %.16, i64 16
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !182 ; 2 uses
  %i.agt = icmp sgt i32 %i.ags, -1
  br i1 %i.agt, label %bb.jo, label %.critedge1900

bb.jo:                                            ; preds = %bb.jn
  %i.agu = add nuw i32 %i.ags, 1
  %i.agv = sext i32 %i.agu to i64
  %i.agw = shl nsw i64 %i.agv, 3
  %i.agx = load i64, ptr %i.e, align 8, !tbaa !120
  %i.agy = sub i64 %i.agx, %i.agw
  store i64 %i.agy, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1900

bb.jp:                                            ; preds = %.backedge
  %i.agz = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !7
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = getelementptr [4 x i8], ptr %.151535, i64 %i.ahb
  %i.ahd = icmp ugt ptr %i.ahc, %i.b
  br i1 %i.ahd, label %.critedge1900, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.ahe = getelementptr i8, ptr %.12, i64 12
  %i.ahf = getelementptr i8, ptr %.12, i64 8
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !7
  %i.ahh = zext i32 %i.ahg to i64
  %i.ahi = tail call fastcc i64 @sre_ucs4_count(ptr noundef %0, ptr noundef %i.ahe, i64 noundef %i.ahh) ; 5 uses
  %i.ahj = icmp slt i64 %i.ahi, 0
  br i1 %i.ahj, label %.loopexit, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ahk = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 %.111490.ph ; 5 uses
  store i64 %i.ahi, ptr %i.ahl, align 8, !tbaa !184
  %i.ahm = getelementptr [4 x i8], ptr %.151535, i64 %i.ahi ; 4 uses
  %i.ahn = load i32, ptr %i.agz, align 4, !tbaa !7
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = icmp samesign ult i64 %i.ahi, %i.aho
  br i1 %i.ahp, label %.critedge1900, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.ahq = load i32, ptr %.12, align 4, !tbaa !7
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = getelementptr [4 x i8], ptr %.12, i64 %i.ahr ; 3 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !7 ; 2 uses
  %i.ahu = icmp eq i32 %i.aht, 1
end_hunk_10
begin_hunk_11_@sre_ucs4_match:bb.a
  %i.bot = load i64, ptr %i.bos, align 8, !tbaa !174 ; 19 uses
  %i.bou = getelementptr i8, ptr %.39, i64 44
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !176
  %i.bow = load i64, ptr %i.e, align 8, !tbaa !120
  %i.box = add i64 %i.bow, -56                    ; 19 uses
  store i64 %i.box, ptr %i.e, align 8, !tbaa !120
  %i.boy = icmp eq i64 %i.bot, -1
  br i1 %i.boy, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %.critedge1900
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.rr:                                            ; preds = %.critedge1900
  %i.boz = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.bpa = getelementptr i8, ptr %i.boz, i64 %i.bot ; 119 uses
  switch i32 %i.bov, label %.loopexit [
    i32 2, label %bb.rs
    i32 3, label %bb.rt
    i32 5, label %bb.ru
    i32 6, label %bb.rv
    i32 11, label %bb.rw
    i32 1, label %bb.rx
    i32 4, label %bb.ry
    i32 14, label %bb.rz
    i32 15, label %bb.sa
    i32 7, label %bb.sb
    i32 8, label %bb.sg
    i32 9, label %bb.sh
    i32 10, label %bb.si
    i32 16, label %bb.sj
    i32 12, label %bb.sk
    i32 13, label %bb.sl
  ]

bb.rs:                                            ; preds = %bb.rr
  %i.bpb = getelementptr i8, ptr %i.bpa, i64 24
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !180
  %i.bpd = getelementptr i8, ptr %i.bpa, i64 32
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !181 ; 2 uses
  %i.bpf = getelementptr i8, ptr %i.bpa, i64 8
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !26
  %i.bph = getelementptr i8, ptr %i.bpg, i64 16
  %i.bpi = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.bpj = getelementptr i8, ptr %i.bpi, i64 -8
  %i.bpk = load i64, ptr %i.bpj, align 1
  store i64 %i.bpk, ptr %i.bph, align 8
  %i.bpl = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpm = add i64 %i.bpl, -8                     ; 4 uses
  store i64 %i.bpm, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lj, label %bb.lh

bb.rt:                                            ; preds = %bb.rr
  %i.bpn = getelementptr i8, ptr %i.bpa, i64 32
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !181
  %i.bpp = getelementptr i8, ptr %i.bpa, i64 8
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !26
  store ptr %i.bpq, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.bor, label %.critedge1900, label %bb.lv

bb.ru:                                            ; preds = %bb.rr
  %i.bpr = getelementptr i8, ptr %i.bpa, i64 24
  %i.bps = getelementptr i8, ptr %i.bpa, i64 32
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !181 ; 2 uses
  %i.bpu = load <2 x ptr>, ptr %i.bpr, align 8, !tbaa !132
  %i.bpv = load ptr, ptr %i.ak, align 8, !tbaa !87
  %i.bpw = getelementptr i8, ptr %i.bpa, i64 8    ; 2 uses
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !26
  store ptr %i.bpx, ptr %i.ak, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bpv, null            ; 2 uses
  br i1 %.not1641, label %bb.ms, label %bb.mp

bb.rv:                                            ; preds = %bb.rr
  %i.bpy = getelementptr i8, ptr %i.bpa, i64 32
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !181
  %i.bqa = getelementptr i8, ptr %i.bpa, i64 8    ; 2 uses
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !26
  %i.bqc = getelementptr i8, ptr %i.bqb, i64 16
  %i.bqd = getelementptr i8, ptr %i.boz, i64 %i.box
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 -8
  %i.bqf = load i64, ptr %i.bqe, align 1
  store i64 %i.bqf, ptr %i.bqc, align 8
  %i.bqg = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bqh = add i64 %i.bqg, -8
  store i64 %i.bqh, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.ng, label %.critedge1900

bb.rw:                                            ; preds = %bb.rr
  %i.bqi = getelementptr i8, ptr %i.bpa, i64 24
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !180
  %i.bqk = getelementptr i8, ptr %i.bpa, i64 32
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !181
  %i.bqm = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.bqm, null            ; 2 uses
  br i1 %.not1641, label %bb.gb, label %bb.fy

bb.rx:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.kp, label %.critedge1900

bb.ry:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.md, label %.critedge1900

bb.rz:                                            ; preds = %bb.rr
  %i.bqn = getelementptr i8, ptr %i.bpa, i64 32
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !181 ; 2 uses
  br i1 %.not1641, label %bb.nt, label %bb.ns

bb.sa:                                            ; preds = %bb.rr
  %i.bqp = getelementptr i8, ptr %i.bpa, i64 24
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !180 ; 2 uses
  %i.bqr = getelementptr i8, ptr %i.bpa, i64 32
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !181 ; 2 uses
  %i.bqt = getelementptr i8, ptr %i.bpa, i64 16   ; 2 uses
  %i.bqu = load i32, ptr %i.bqt, align 8, !tbaa !182 ; 4 uses
  %i.bqv = icmp sgt i32 %i.bqu, -1                ; 2 uses
  br i1 %.not1641, label %bb.on, label %bb.ok

bb.sb:                                            ; preds = %bb.rr
  %i.bqw = getelementptr i8, ptr %i.bpa, i64 8    ; 2 uses
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !26
  %i.bqy = getelementptr i8, ptr %i.bqx, i64 24
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !143
  store ptr %i.bqz, ptr %i.ak, align 8, !tbaa !87
  %i.bra = load ptr, ptr %i.bqw, align 8, !tbaa !26 ; 3 uses
  %i.brb = getelementptr i8, ptr %i.bra, i64 32
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !146 ; 3 uses
  %i.brd = getelementptr i8, ptr %i.bra, i64 40   ; 2 uses
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !106 ; 4 uses
  %.not.i1853 = icmp eq ptr %i.brc, null
  br i1 %.not.i1853, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.brf = getelementptr i8, ptr %i.brc, i64 40
  store ptr %i.bre, ptr %i.brf, align 8, !tbaa !106
  br label %bb.se

bb.sd:                                            ; preds = %bb.sb
  store ptr %i.bre, ptr %i.aj, align 8, !tbaa !105
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sc
  %.not15.i1854 = icmp eq ptr %i.bre, null
  br i1 %.not15.i1854, label %repeat_pool_free.exit1855, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.brg = getelementptr i8, ptr %i.bre, i64 32
  store ptr %i.brc, ptr %i.brg, align 8, !tbaa !146
  br label %repeat_pool_free.exit1855

repeat_pool_free.exit1855:                        ; preds = %bb.se, %bb.sf
  %i.brh = load ptr, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.brh, ptr %i.brd, align 8, !tbaa !106
  store ptr %i.bra, ptr %i.ai, align 8, !tbaa !110
  br i1 %.not1641, label %bb.kh, label %.critedge1900

bb.sg:                                            ; preds = %bb.rr
  %i.bri = getelementptr i8, ptr %i.bpa, i64 24
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !180
  %i.brk = getelementptr i8, ptr %i.bpa, i64 32
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !181
  %i.brm = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.brm, null            ; 2 uses
  br i1 %.not1641, label %bb.hk, label %bb.hh

bb.sh:                                            ; preds = %bb.rr
  %i.brn = getelementptr i8, ptr %i.bpa, i64 24
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !180
  %i.brp = getelementptr i8, ptr %i.bpa, i64 32
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !181
  %i.brr = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.brr, null            ; 2 uses
  br i1 %.not1641, label %bb.hy, label %bb.hv

bb.si:                                            ; preds = %bb.rr
  %i.brs = getelementptr i8, ptr %i.bpa, i64 24
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !180 ; 2 uses
  %i.bru = getelementptr i8, ptr %i.bpa, i64 32
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !181 ; 2 uses
  %i.brw = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.brw, null            ; 2 uses
  br i1 %.not1641, label %bb.jg, label %bb.jd

bb.sj:                                            ; preds = %bb.rr
  br i1 %.not1641, label %bb.oz, label %bb.pa

bb.sk:                                            ; preds = %bb.rr
  %i.brx = getelementptr i8, ptr %i.bpa, i64 32
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !181 ; 2 uses
  br i1 %.not1641, label %.critedge1900, label %bb.qu

bb.sl:                                            ; preds = %bb.rr
  %i.brz = getelementptr i8, ptr %i.bpa, i64 24
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !180
  %i.bsb = getelementptr i8, ptr %i.bpa, i64 32
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !181
  %i.bsd = load ptr, ptr %i.ak, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.bsd, null            ; 2 uses
  br i1 %.not1641, label %bb.rk, label %bb.rh

.loopexit:                                        ; preds = %bb.rr, %repeat_pool_malloc.exit.thread, %.backedge, %bb.rp, %bb.qv, %bb.qn, %bb.qk, %bb.qg, %bb.qc, %bb.pu, %bb.po, %bb.pg, %bb.pb, %bb.ou, %bb.lw, %bb.ki, %bb.kb, %bb.jz, %bb.jq, %bb.jj, %bb.ih, %bb.gk, %bb.fc, %bb.ez, %bb.ev, %bb.eq, %bb.ek, %bb.ef, %bb.ea, %bb.du, %bb.dp, %bb.dk, %bb.de, %bb.cz, %bb.cv, %bb.cq, %bb.cl, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.rq, %bb.rf, %bb.ra, %bb.qs, %bb.ox, %bb.oi, %bb.od, %bb.nq, %bb.nd, %bb.mz, %bb.mm, %bb.mh, %bb.ma, %bb.ls, %bb.le, %bb.la, %bb.kv, %bb.km, %bb.ke, %bb.ja, %bb.iu, %bb.hs, %bb.he, %bb.gv, %bb.fv, %bb.fh, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.rq ], [ -1, %.backedge ], [ %i.acv, %bb.ih ], [ -9, %bb.ls ], [ -10, %bb.pu ], [ -10, %bb.du ], [ %i.avh, %bb.mz ], [ %i.awc, %bb.nd ], [ -10, %bb.ou ], [ -10, %bb.de ], [ -9, %bb.fv ], [ -10, %bb.ev ], [ -10, %bb.qn ], [ -10, %bb.dp ], [ %i.ayg, %bb.nq ], [ %i.azz, %bb.od ], [ %i.baq, %bb.oi ], [ -9, %repeat_pool_malloc.exit.thread ], [ -10, %bb.cq ], [ -10, %bb.cv ], [ %i.bkz, %bb.qs ], [ %i.bmp, %bb.ra ], [ %i.bnf, %bb.rf ], [ -10, %bb.qv ], [ -10, %bb.aa ], [ -9, %bb.fh ], [ -10, %bb.cl ], [ -10, %bb.rp ], [ -10, %bb.ea ], [ -10, %bb.pb ], [ -10, %bb.qc ], [ -10, %bb.qg ], [ -10, %bb.qk ], [ -10, %bb.cz ], [ -10, %bb.ez ], [ -10, %bb.dk ], [ -10, %bb.q ], [ -10, %bb.l ], [ %i.akl, %bb.km ], [ %i.amf, %bb.kv ], [ %i.amt, %bb.la ], [ %i.ano, %bb.le ], [ -9, %bb.kb ], [ %i.arf, %bb.ma ], [ %i.asu, %bb.mh ], [ %i.atk, %bb.mm ], [ -2, %bb.ki ], [ -10, %bb.v ], [ -10, %bb.eq ], [ -10, %bb.po ], [ %i.aja, %bb.ke ], [ -10, %bb.jz ], [ -10, %bb.fc ], [ -9, %bb.gv ], [ %i.yl, %bb.he ], [ %i.aap, %bb.hs ], [ -10, %bb.ef ], [ -9, %bb.iu ], [ %i.aew, %bb.ja ], [ %i.vw, %bb.gk ], [ %i.bcv, %bb.ox ], [ -2, %bb.lw ], [ %i.agi, %bb.jj ], [ %i.ahi, %bb.jq ], [ -10, %bb.pg ], [ -10, %bb.ek ], [ %.01491, %bb.rr ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1905
  %.sink2925.sink = phi i32 [ %.sink2946, %.preheader1905 ], [ %.sink2925.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1905 ], [ %.151535.be, %.backedge.backedge ] ; 131 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1905 ], [ %.40.be, %.backedge.backedge ] ; 138 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1905 ], [ %.14.be, %.backedge.backedge ] ; 116 uses
  %.12 = phi ptr [ %i.bdr, %.preheader1905 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.bse = zext i32 %.sink2925.sink to i64
  %i.bsf = getelementptr [8 x i8], ptr @sre_ucs4_match.sre_targets, i64 %i.bse
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !95
  indirectbr ptr %i.bsg, [label %.critedge1900, label %bb.ac, label %bb.cs, label %bb.cx, label %bb.qp, label %bb.qw, label %bb.ai, label %bb.fe, label %bb.cn, label %.loopexit, label %bb.ec, label %bb.pc, label %bb.qe, label %bb.db, label %bb.fb, label %bb.dm, label %bb.s, label %bb.m, label %bb.ki, label %bb.lw, label %bb.x, label %bb.es, label %bb.pq, label %bb.kb, label %bb.gj, label %bb.eh, label %bb.ie, label %bb.ov, label %bb.nh, label %bb.jp, label %bb.pi, label %bb.em, label %bb.dg, label %bb.dw, label %bb.pw, label %bb.ex, label %bb.dr]
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -9, 1) i32 @data_stack_grow(ptr nofree noundef captures(none) %0, i64 noundef range(i64 -17179869184, 17179869177) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !121
  %i.f = icmp slt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = add i64 %i.c, 1024
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = tail call ptr @PyMem_Realloc(ptr noundef %i.k, i64 noundef %i.i) #13 ; 2 uses
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #13
  store ptr null, ptr %i.j, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.j, align 8, !tbaa !88
  store i64 %i.i, ptr %i.d, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %.thread
  %.1 = phi i32 [ -9, %.thread ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @PyErr_CheckSignals() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sre_category(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  switch i32 %0, label %Py_UNICODE_ISSPACE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.l
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.s
    i32 10, label %bb.v
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.aa
    i32 14, label %bb.ad
    i32 15, label %bb.ah
    i32 16, label %bb.al
    i32 17, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 58
  br i1 %i.a, label %bb.c, label %Py_UNICODE_ISSPACE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = lshr i32 %i.d, 2
  %.lobit49 = and i32 %i.e, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %1, 58
  br i1 %i.f, label %bb.e, label %Py_UNICODE_ISSPACE.exit

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = lshr i32 %i.i, 2
  %.lobit48 = and i32 %i.j, 1
  %i.k = xor i32 %.lobit48, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %1, 33
  br i1 %i.l, label %bb.g, label %Py_UNICODE_ISSPACE.exit

bb.g:                                             ; preds = %bb.f
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = lshr i32 %i.o, 3
  %.lobit47 = and i32 %i.p, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %1, 33
  br i1 %i.q, label %bb.i, label %Py_UNICODE_ISSPACE.exit

bb.i:                                             ; preds = %bb.h
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = lshr i32 %i.t, 3
  %.lobit = and i32 %i.u, 1
  %i.v = xor i32 %.lobit, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.j:                                             ; preds = %bb.a
  %i.w = icmp ult i32 %1, 123
  br i1 %i.w, label %bb.k, label %Py_UNICODE_ISSPACE.exit

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = and i32 %i.z, 7
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp eq i32 %1, 95
  %i.ad = or i1 %i.ac, %i.ab
  %i.ae = zext i1 %i.ad to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.l:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %1, 123
  br i1 %i.af, label %bb.m, label %Py_UNICODE_ISSPACE.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = and i32 %i.ai, 7
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp ne i32 %1, 95
  %.not46 = and i1 %i.al, %i.ak
  %i.am = zext i1 %.not46 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.n:                                             ; preds = %bb.a
  %i.an = icmp eq i32 %1, 10
  %i.ao = zext i1 %i.an to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.o:                                             ; preds = %bb.a
  %i.ap = icmp ne i32 %1, 10
  %i.aq = zext i1 %i.ap to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.p:                                             ; preds = %bb.a
  %.not42 = icmp ult i32 %1, 256
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call ptr @__ctype_b_loc() #14
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.at = zext nneg i32 %1 to i64
  %i.au = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !131
  %i.aw = and i16 %i.av, 8
  %.not43 = icmp eq i16 %i.aw, 0
  br i1 %.not43, label %bb.r, label %Py_UNICODE_ISSPACE.exit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ax = icmp eq i32 %1, 95
  %i.ay = zext i1 %i.ax to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.s:                                             ; preds = %bb.a
  %.not40 = icmp ult i32 %1, 256
  br i1 %.not40, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = tail call ptr @__ctype_b_loc() #14
end_hunk_11
