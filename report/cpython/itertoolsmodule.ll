Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/itertoolsmodule?download=true
inline.NumInlined: 375
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@chain_new:bb.a
  %i.s = load i32, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.h, label %chain_new_internal.exit

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.m, align 8, !tbaa !43
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %chain_new_internal.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #8
  br label %chain_new_internal.exit

bb.j:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.q, i64 16
  store ptr %i.m, ptr %i.v, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.q, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !86
  br label %chain_new_internal.exit

chain_new_internal.exit:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ %i.q, %bb.j ]
  ret ptr %.0
}

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @itertools_chain_from_iterable(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyObject_GetIter(ptr noundef %1) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %itertools_chain_from_iterable_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = tail call ptr %i.d(ptr noundef %0, i64 noundef 0) #8, !inline_history !94 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.d, label %itertools_chain_from_iterable_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !43
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %itertools_chain_from_iterable_impl.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #8
  br label %itertools_chain_from_iterable_impl.exit

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store ptr %i.a, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr i8, ptr %i.e, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !86
  br label %itertools_chain_from_iterable_impl.exit

itertools_chain_from_iterable_impl.exit:          ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %i.e, %bb.f ]
  ret ptr %.0.i
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #1

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @combinations_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 4 uses
  %.not.i9 = icmp eq ptr %i.c, null
  br i1 %.not.i9, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !43
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 4 uses
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %Py_XDECREF.exit12, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %.not.i.i11 = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i11, label %bb.f, label %Py_XDECREF.exit12

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !43
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_XDECREF.exit12

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %Py_XDECREF.exit12

Py_XDECREF.exit12:                                ; preds = %Py_XDECREF.exit, %bb.e, %bb.f, %bb.g
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  tail call void @PyMem_Free(ptr noundef %i.m) #8
  %i.n = getelementptr i8, ptr %.val, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  tail call void %i.o(ptr noundef nonnull %0) #8
  %i.p = load i32, ptr %.val, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %Py_XDECREF.exit12
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.val, align 8, !tbaa !43
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit12, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @combinations_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %.val36, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val36, ptr noundef %2) #8 ; 2 uses
  %.not31 = icmp eq i32 %i.b, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #8 ; 2 uses
  %.not33 = icmp eq i32 %i.e, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %.not34 = icmp eq ptr %i.g, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %1(ptr noundef nonnull %i.g, ptr noundef %2) #8 ; 2 uses
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.h, %bb.f ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @combinations_next(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 12 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 12 uses
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 14 uses
  %i.j = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !101
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %combinations_next_lock_held.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %i.f, null
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @PyTuple_New(i64 noundef %i.i) #8 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %Py_DECREF.exit78.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.e, align 8, !tbaa !98
  %i.o = icmp sgt i64 %i.i, 0
  br i1 %i.o, label %.lr.ph91.i, label %.loopexit.i

.lr.ph91.i:                                       ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.q = getelementptr i8, ptr %i.m, i64 32       ; 3 uses
  %xtraiter38 = and i64 %i.i, 1
  %i.r = icmp eq i64 %i.i, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph91.i.new

.lr.ph91.i.new:                                   ; preds = %.lr.ph91.i
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit80.i.1, %.lr.ph91.i.new
  %.06990.i = phi i64 [ 0, %.lr.ph91.i.new ], [ %i.aj, %Py_INCREF.exit80.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph91.i.new ], [ %niter.next.1, %Py_INCREF.exit80.i.1 ]
  %i.s = getelementptr [8 x i8], ptr %i.d, i64 %.06990.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = icmp ugt i32 %i.w, -1073741825
  br i1 %i.x, label %Py_INCREF.exit80.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw i32 %i.w, 1
  store i32 %i.y, ptr %i.v, align 8, !tbaa !43
  br label %Py_INCREF.exit80.i

Py_INCREF.exit80.i:                               ; preds = %bb.f, %bb.e
  %i.z = getelementptr [8 x i8], ptr %i.q, i64 %.06990.i
  store ptr %i.v, ptr %i.z, align 8, !tbaa !44
  %i.aa = or disjoint i64 %.06990.i, 1            ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %Py_INCREF.exit80.i.1, label %bb.g

bb.g:                                             ; preds = %Py_INCREF.exit80.i
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !43
  br label %Py_INCREF.exit80.i.1

Py_INCREF.exit80.i.1:                             ; preds = %bb.g, %Py_INCREF.exit80.i
  %i.ai = getelementptr [8 x i8], ptr %i.q, i64 %i.aa
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !44
  %i.aj = add nuw nsw i64 %.06990.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !103

bb.h:                                             ; preds = %bb.b
  %.val81.i = load i32, ptr %i.f, align 8, !tbaa !43
  %.not83.i = icmp eq i32 %.val81.i, 1
  br i1 %.not83.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.f, i64 32
  %i.al = tail call ptr @PyTuple_FromArray(ptr noundef %i.ak, i64 noundef %i.i) #8 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %Py_DECREF.exit78.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !98
  %i.an = load i32, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %.not.i77.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i77.i, label %bb.k, label %_PyTuple_Recycle.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !43
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_PyTuple_Recycle.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #8
  br label %_PyTuple_Recycle.exit.i

bb.m:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.f, i64 24
  store i64 -1, ptr %i.aq, align 8, !tbaa !104
  %i.ar = getelementptr i8, ptr %i.f, i64 -16     ; 3 uses
  %.val.i.i = load i64, ptr %i.ar, align 8, !tbaa !106
  %.not3.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not3.i.i, label %bb.n, label %_PyTuple_Recycle.exit.i

bb.n:                                             ; preds = %bb.m
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !108 ; 7 uses
  %i.au = getelementptr i8, ptr %i.at, i64 7408
  %i.av = getelementptr i8, ptr %i.at, i64 7416   ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !110 ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !106
  %i.ba = and i64 %i.az, 3
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !106
  %i.bc = getelementptr i8, ptr %i.f, i64 -8      ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !110
  %i.be = and i64 %i.bd, 3
  %i.bf = or i64 %i.be, %i.aw
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !110
  %i.bg = getelementptr i8, ptr %i.at, i64 7672
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !111
  %i.bi = xor i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.ar, align 8, !tbaa !106
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !110
  %i.bm = getelementptr i8, ptr %i.at, i64 7428   ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !115
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !115
  %i.bp = getelementptr i8, ptr %i.at, i64 7656   ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !116
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !116
  %i.bs = getelementptr i8, ptr %i.at, i64 7424
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !117
  %i.bu = icmp sgt i32 %i.bo, %i.bt
  br i1 %i.bu, label %bb.o, label %_PyTuple_Recycle.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr i8, ptr %i.at, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bv) #8
  br label %_PyTuple_Recycle.exit.i

_PyTuple_Recycle.exit.i:                          ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.070.i = phi ptr [ %i.f, %bb.o ], [ %i.f, %bb.m ], [ %i.f, %bb.n ], [ %i.al, %bb.j ], [ %i.al, %bb.k ], [ %i.al, %bb.l ] ; 3 uses
  %i.bw = sub i64 %.val.i, %i.i
  %.1.i27 = add i64 %i.i, -1                      ; 2 uses
  %i.bx = icmp sgt i64 %.1.i27, -1
  br i1 %i.bx, label %.lr.ph, label %Py_DECREF.exit78.i

bb.p:                                             ; preds = %.lr.ph
  %.1.i = add nsw i64 %.1.i29, -1
  %i.by = icmp sgt i64 %.1.i29, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.by, label %.lr.ph, label %Py_DECREF.exit78.i, !llvm.loop !118

.lr.ph:                                           ; preds = %_PyTuple_Recycle.exit.i, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %_PyTuple_Recycle.exit.i ] ; 3 uses
  %.1.i29 = phi i64 [ %.1.i, %bb.p ], [ %.1.i27, %_PyTuple_Recycle.exit.i ] ; 9 uses
  %.1.in.i28 = phi i64 [ %.1.i29, %bb.p ], [ %i.i, %_PyTuple_Recycle.exit.i ] ; 3 uses
  %i.bz = getelementptr [8 x i8], ptr %i.d, i64 %.1.i29
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !102 ; 2 uses
  %i.cb = add i64 %i.bw, %.1.i29
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.p, label %.critedge.i, !llvm.loop !118

.critedge.i:                                      ; preds = %.lr.ph
  %i.cd = getelementptr [8 x i8], ptr %i.d, i64 %.1.i29
  %i.ce = add i64 %i.ca, 1
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !102
  %i.cf = icmp slt i64 %.1.in.i28, %i.i
  br i1 %i.cf, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.critedge.i
  %i.cg = shl i64 %.1.i29, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.cg
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.ch = add i64 %indvar, -1
  %xtraiter = and i64 %indvar, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %store_forwarded.prol = phi i64 [ %i.cj, %.lr.ph.i.prol ], [ %load_initial, %.lr.ph.i.preheader ]
  %.06887.i.prol = phi i64 [ %i.ck, %.lr.ph.i.prol ], [ %.1.in.i28, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr [8 x i8], ptr %i.d, i64 %.06887.i.prol
  %i.cj = add i64 %store_forwarded.prol, 1        ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !102
  %i.ck = add nsw i64 %.06887.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !119

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.06887.i.unr = phi i64 [ %.1.in.i28, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cl = icmp ult i64 %i.ch, 3
  br i1 %i.cl, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.critedge.i
  %i.cm = icmp slt i64 %.1.i29, %i.i
  br i1 %i.cm, label %.lr.ph89.i, label %.loopexit.i

.lr.ph89.i:                                       ; preds = %.preheader.i
  %i.cn = getelementptr i8, ptr %i.b, i64 32
  %i.co = getelementptr i8, ptr %.070.i, i64 32
  br label %bb.q

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %store_forwarded = phi i64 [ %i.cz, %.lr.ph.i ], [ %store_forwarded.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.06887.i = phi i64 [ %i.da, %.lr.ph.i ], [ %.06887.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.cp = getelementptr [8 x i8], ptr %i.d, i64 %.06887.i
  %i.cq = add i64 %store_forwarded, 1
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !102
  %i.cr = getelementptr [8 x i8], ptr %i.d, i64 %.06887.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = add i64 %store_forwarded, 2
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !102
  %i.cu = getelementptr [8 x i8], ptr %i.d, i64 %.06887.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = add i64 %store_forwarded, 3
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !102
  %i.cx = getelementptr [8 x i8], ptr %i.d, i64 %.06887.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 24
  %i.cz = add i64 %store_forwarded, 4             ; 2 uses
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !102
  %i.da = add nsw i64 %.06887.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.da, %i.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !121

bb.q:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph89.i
  %.288.i = phi i64 [ %.1.i29, %.lr.ph89.i ], [ %i.dn, %Py_DECREF.exit.i ] ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %i.d, i64 %.288.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !102
  %i.dd = getelementptr [8 x i8], ptr %i.cn, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !43 ; 2 uses
  %i.dg = icmp ugt i32 %i.df, -1073741825
  br i1 %i.dg, label %Py_INCREF.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = add nuw i32 %i.df, 1
  store i32 %i.dh, ptr %i.de, align 8, !tbaa !43
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.r, %bb.q
  %i.di = getelementptr [8 x i8], ptr %i.co, i64 %.288.i ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 3 uses
  store ptr %i.de, ptr %i.di, align 8, !tbaa !44
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dk, -1
  br i1 %.not.i.i, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %Py_INCREF.exit.i
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !43
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %Py_DECREF.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.t, %bb.s, %Py_INCREF.exit.i
  %i.dn = add i64 %.288.i, 1                      ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.dn, %i.i
  br i1 %exitcond95.not.i, label %.loopexit.i, label %bb.q, !llvm.loop !122

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %Py_INCREF.exit80.i.1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph91.i
  %.06990.i.epil.init = phi i64 [ 0, %.lr.ph91.i ], [ %i.aj, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.do = getelementptr [8 x i8], ptr %i.d, i64 %.06990.i.epil.init
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !102
  %i.dq = getelementptr [8 x i8], ptr %i.p, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !44 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !43 ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, -1073741825
  br i1 %i.dt, label %Py_INCREF.exit80.i.epil, label %bb.u

bb.u:                                             ; preds = %.epil.preheader
  %i.du = add nuw i32 %i.ds, 1
  store i32 %i.du, ptr %i.dr, align 8, !tbaa !43
  br label %Py_INCREF.exit80.i.epil

Py_INCREF.exit80.i.epil:                          ; preds = %bb.u, %.epil.preheader
  %i.dv = getelementptr [8 x i8], ptr %i.q, i64 %.06990.i.epil.init
  store ptr %i.dr, ptr %i.dv, align 8, !tbaa !44
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %Py_DECREF.exit.i, %Py_INCREF.exit80.i.epil, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %bb.d
  %.171.i = phi ptr [ %i.m, %bb.d ], [ %.070.i, %.preheader.i ], [ %i.m, %Py_INCREF.exit80.i.epil ], [ %i.m, %.loopexit.i.loopexit.unr-lcssa ], [ %.070.i, %Py_DECREF.exit.i ] ; 4 uses
  %i.dw = load i32, ptr %.171.i, align 8, !tbaa !43 ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, -1073741825
  br i1 %i.dx, label %combinations_next_lock_held.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit.i
  %i.dy = add nuw i32 %i.dw, 1
  store i32 %i.dy, ptr %.171.i, align 8, !tbaa !43
  br label %combinations_next_lock_held.exit

Py_DECREF.exit78.i:                               ; preds = %bb.p, %_PyTuple_Recycle.exit.i, %bb.i, %bb.c
  store i32 1, ptr %i.j, align 8, !tbaa !101
  br label %combinations_next_lock_held.exit

combinations_next_lock_held.exit:                 ; preds = %bb.a, %.loopexit.i, %bb.v, %Py_DECREF.exit78.i
  %.072.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit78.i ], [ %.171.i, %.loopexit.i ], [ %.171.i, %bb.v ]
  ret ptr %.072.i
}

; Function Attrs: nounwind uwtable
define internal ptr @itertools_combinations(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp eq i64 %.val, 2
  %or.cond3 = select i1 %i.c, i1 %i.d, i1 false
  %i.e = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.f = icmp ne ptr %i.e, null
  %or.cond7 = and i1 %i.f, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.e, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @itertools_combinations._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %itertools_combinations_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = call ptr @_PyNumber_Index(ptr noundef %i.k) #8 ; 5 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %Py_DECREF.exit.thread, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.m = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.l) #8 ; 11 uses
  %i.n = load i32, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !43
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp eq i64 %i.m, -1
  br i1 %i.q, label %Py_DECREF.exit.thread, label %bb.f

Py_DECREF.exit.thread:                            ; preds = %.thread, %Py_DECREF.exit
  %i.r = call ptr @PyErr_Occurred() #8
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %.thread45, label %itertools_combinations_impl.exit

bb.f:                                             ; preds = %Py_DECREF.exit
  %i.s = icmp slt i64 %i.m, 0
  br i1 %i.s, label %.thread45, label %bb.g

.thread45:                                        ; preds = %Py_DECREF.exit.thread, %bb.f
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.35) #8
end_hunk_0
begin_hunk_1_@pairwise_new:bb.a
  %.old1 = icmp eq ptr %2, null
  br i1 %.old1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.89, ptr noundef nonnull %2) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %pairwise_new_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val19 = load i64, ptr %i.m, align 8, !tbaa !69 ; 2 uses
  %or.cond20 = icmp eq i64 %.val19, 1
  br i1 %or.cond20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.89, i64 noundef %.val19, i64 noundef 1, i64 noundef 1) #8
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %pairwise_new_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = tail call ptr @PyObject_GetIter(ptr noundef %i.p) #8 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %pairwise_new_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = tail call ptr %i.t(ptr noundef %0, i64 noundef 0) #8, !inline_history !177 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %.not.i16.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i16.i, label %bb.j, label %pairwise_new_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.q, align 8, !tbaa !43
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit17.sink.split.i, label %pairwise_new_impl.exit

bb.k:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.u, i64 16
  store ptr %i.q, ptr %i.z, align 8, !tbaa !173
  %i.aa = getelementptr i8, ptr %i.u, i64 24
  store ptr null, ptr %i.aa, align 8, !tbaa !175
  %i.ab = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct) #8 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !176
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.l, label %pairwise_new_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.m, label %pairwise_new_impl.exit

bb.m:                                             ; preds = %bb.l
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.u, align 8, !tbaa !43
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %Py_DECREF.exit17.sink.split.i, label %pairwise_new_impl.exit

Py_DECREF.exit17.sink.split.i:                    ; preds = %bb.m, %bb.j
  %.sink.i = phi ptr [ %i.q, %bb.j ], [ %i.u, %bb.m ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #8
  br label %pairwise_new_impl.exit

pairwise_new_impl.exit:                           ; preds = %Py_DECREF.exit17.sink.split.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ %i.u, %bb.k ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.l ], [ null, %Py_DECREF.exit17.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @permutations_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
  %.not.i10 = icmp eq ptr %i.c, null
  br i1 %.not.i10, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !43
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 4 uses
  %.not.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i11, label %Py_XDECREF.exit13, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %.not.i.i12 = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i12, label %bb.f, label %Py_XDECREF.exit13

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !43
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_XDECREF.exit13

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %Py_XDECREF.exit13

Py_XDECREF.exit13:                                ; preds = %Py_XDECREF.exit, %bb.e, %bb.f, %bb.g
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !181
  tail call void @PyMem_Free(ptr noundef %i.m) #8
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182
  tail call void @PyMem_Free(ptr noundef %i.o) #8
  %i.p = getelementptr i8, ptr %.val, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  tail call void %i.q(ptr noundef nonnull %0) #8
  %i.r = load i32, ptr %.val, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %Py_XDECREF.exit13
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %.val, align 8, !tbaa !43
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit13, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @permutations_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %.val36, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val36, ptr noundef %2) #8 ; 2 uses
  %.not31 = icmp eq i32 %i.b, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 2 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #8 ; 2 uses
  %.not33 = icmp eq i32 %i.e, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %.not34 = icmp eq ptr %i.g, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %1(ptr noundef nonnull %i.g, ptr noundef %2) #8 ; 2 uses
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.h, %bb.f ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @permutations_next(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182
  %i.g = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 12 uses
  %i.i = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !69 ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183  ; 13 uses
  %i.l = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !184
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %permutations_next_lock_held.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %i.h, null
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @PyTuple_New(i64 noundef %i.k) #8 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_DECREF.exit104.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.g, align 8, !tbaa !180
  %i.q = icmp sgt i64 %i.k, 0
  br i1 %i.q, label %.lr.ph122.i, label %.loopexit.i

.lr.ph122.i:                                      ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.t = icmp eq i64 %i.k, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph122.i.new

.lr.ph122.i.new:                                  ; preds = %.lr.ph122.i
  %unroll_iter = and i64 %i.k, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit106.i.1, %.lr.ph122.i.new
  %.092120.i = phi i64 [ 0, %.lr.ph122.i.new ], [ %i.al, %Py_INCREF.exit106.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph122.i.new ], [ %niter.next.1, %Py_INCREF.exit106.i.1 ]
  %i.u = getelementptr [8 x i8], ptr %i.d, i64 %.092120.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %Py_INCREF.exit106.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !43
  br label %Py_INCREF.exit106.i

Py_INCREF.exit106.i:                              ; preds = %bb.f, %bb.e
  %i.ab = getelementptr [8 x i8], ptr %i.s, i64 %.092120.i
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !44
  %i.ac = or disjoint i64 %.092120.i, 1           ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !102
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, -1073741825
  br i1 %i.ai, label %Py_INCREF.exit106.i.1, label %bb.g

bb.g:                                             ; preds = %Py_INCREF.exit106.i
  %i.aj = add nuw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !43
  br label %Py_INCREF.exit106.i.1

Py_INCREF.exit106.i.1:                            ; preds = %bb.g, %Py_INCREF.exit106.i
  %i.ak = getelementptr [8 x i8], ptr %i.s, i64 %i.ac
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !44
  %i.al = add nuw nsw i64 %.092120.i, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !185

bb.h:                                             ; preds = %bb.b
  %i.am = icmp eq i64 %.val.i, 0
  br i1 %i.am, label %Py_DECREF.exit104.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val107.i = load i32, ptr %i.h, align 8, !tbaa !43
  %.not109.i = icmp eq i32 %.val107.i, 1
  br i1 %.not109.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.h, i64 32
  %i.ao = tail call ptr @PyTuple_FromArray(ptr noundef %i.an, i64 noundef %i.k) #8 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %Py_DECREF.exit104.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !180
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %.not.i103.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i103.i, label %bb.l, label %_PyTuple_Recycle.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.h, align 8, !tbaa !43
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %_PyTuple_Recycle.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %_PyTuple_Recycle.exit.i

bb.n:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.h, i64 24
  store i64 -1, ptr %i.at, align 8, !tbaa !104
  %i.au = getelementptr i8, ptr %i.h, i64 -16     ; 3 uses
  %.val.i.i = load i64, ptr %i.au, align 8, !tbaa !106
  %.not3.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not3.i.i, label %bb.o, label %_PyTuple_Recycle.exit.i

bb.o:                                             ; preds = %bb.n
  %i.av = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108 ; 7 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 7408
  %i.ay = getelementptr i8, ptr %i.aw, i64 7416   ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !110 ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !106
  %i.bd = and i64 %i.bc, 3
  %i.be = or i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !106
  %i.bf = getelementptr i8, ptr %i.h, i64 -8      ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !110
  %i.bh = and i64 %i.bg, 3
  %i.bi = or i64 %i.bh, %i.az
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !110
  %i.bj = getelementptr i8, ptr %i.aw, i64 7672
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !111
  %i.bl = xor i32 %i.bk, 1
  %i.bm = sext i32 %i.bl to i64
  %i.bn = ptrtoint ptr %i.ax to i64
  %i.bo = or i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.au, align 8, !tbaa !106
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !110
  %i.bp = getelementptr i8, ptr %i.aw, i64 7428   ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !115
  %i.br = add i32 %i.bq, 1                        ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !115
  %i.bs = getelementptr i8, ptr %i.aw, i64 7656   ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !116
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !116
  %i.bv = getelementptr i8, ptr %i.aw, i64 7424
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !117
  %i.bx = icmp sgt i32 %i.br, %i.bw
  br i1 %i.bx, label %bb.p, label %_PyTuple_Recycle.exit.i

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr i8, ptr %i.aw, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.by) #8
  br label %_PyTuple_Recycle.exit.i

_PyTuple_Recycle.exit.i:                          ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.093.i = phi ptr [ %i.h, %bb.p ], [ %i.h, %bb.n ], [ %i.h, %bb.o ], [ %i.ao, %bb.k ], [ %i.ao, %bb.l ], [ %i.ao, %bb.m ] ; 3 uses
  %.1114.i = add i64 %i.k, -1                     ; 2 uses
  %i.bz = icmp sgt i64 %.1114.i, -1
  br i1 %i.bz, label %.lr.ph116.i, label %Py_DECREF.exit104.i

.lr.ph116.i:                                      ; preds = %_PyTuple_Recycle.exit.i
  %i.ca = add i64 %.val.i, -1                     ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.d, i64 %i.ca
  %i.cc = sub i64 %.val.i, %i.k
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %.lr.ph116.i
  %indvar.i = phi i64 [ 0, %.lr.ph116.i ], [ %indvar.next.i, %._crit_edge.i ] ; 3 uses
  %.1115.i = phi i64 [ %.1114.i, %.lr.ph116.i ], [ %.1.i, %._crit_edge.i ] ; 9 uses
  %1 = shl i64 %.1115.i, 3
  %scevgep.i = getelementptr i8, ptr %i.d, i64 %1
  %2 = sub i64 %i.k, %indvar.i
  %3 = shl i64 %2, 3
  %scevgep126.i = getelementptr i8, ptr %i.d, i64 %3
  %i.cd = add i64 %i.cc, %indvar.i
  %i.ce = shl i64 %i.cd, 3
  %i.cf = getelementptr [8 x i8], ptr %i.f, i64 %.1115.i ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !102
  %i.ch = add i64 %i.cg, -1                       ; 3 uses
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !102
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = getelementptr [8 x i8], ptr %i.d, i64 %.1115.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !102 ; 2 uses
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = icmp slt i64 %.1115.i, %i.ca
  br i1 %i.cl, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep126.i, i64 %i.ce, i1 false), !tbaa !102
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.r
  store i64 %i.ck, ptr %i.cb, align 8, !tbaa !102
  %i.cm = sub i64 %.val.i, %.1115.i
  store i64 %i.cm, ptr %i.cf, align 8, !tbaa !102
  %.1.i = add nsw i64 %.1115.i, -1
  %indvar.next.i = add nuw i64 %indvar.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %i.k
  br i1 %exitcond.not.i, label %Py_DECREF.exit104.i, label %bb.q, !llvm.loop !186

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr [8 x i8], ptr %i.d, i64 %.1115.i
  %i.co = sub i64 %.val.i, %i.ch
  %i.cp = getelementptr [8 x i8], ptr %i.d, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !102
  store i64 %i.cq, ptr %i.cn, align 8, !tbaa !102
  store i64 %i.ck, ptr %i.cp, align 8, !tbaa !102
  %i.cr = icmp slt i64 %.1115.i, %i.k
  br i1 %i.cr, label %.lr.ph119.i, label %.loopexit.i

.lr.ph119.i:                                      ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %i.b, i64 32
  %i.ct = getelementptr i8, ptr %.093.i, i64 32
  br label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph119.i
  %.090117.i = phi i64 [ %.1115.i, %.lr.ph119.i ], [ %i.dg, %Py_DECREF.exit.i ] ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.d, i64 %.090117.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !102
  %i.cw = getelementptr [8 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !44 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !43 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, -1073741825
  br i1 %i.cz, label %Py_INCREF.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = add nuw i32 %i.cy, 1
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !43
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.u, %bb.t
  %i.db = getelementptr [8 x i8], ptr %i.ct, i64 %.090117.i ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !44 ; 3 uses
  store ptr %i.cx, ptr %i.db, align 8, !tbaa !44
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dd, -1
  br i1 %.not.i.i, label %bb.v, label %Py_DECREF.exit.i

bb.v:                                             ; preds = %Py_INCREF.exit.i
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !43
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.w, label %Py_DECREF.exit.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dc) #8
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.w, %bb.v, %Py_INCREF.exit.i
  %i.dg = add i64 %.090117.i, 1                   ; 2 uses
  %exitcond127.not.i = icmp eq i64 %i.dg, %i.k
  br i1 %exitcond127.not.i, label %.loopexit.i, label %bb.t, !llvm.loop !187

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %Py_INCREF.exit106.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph122.i
  %.092120.i.epil.init = phi i64 [ 0, %.lr.ph122.i ], [ %i.al, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.dh = getelementptr [8 x i8], ptr %i.d, i64 %.092120.i.epil.init
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !102
  %i.dj = getelementptr [8 x i8], ptr %i.r, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !44 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !43 ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, -1073741825
  br i1 %i.dm, label %Py_INCREF.exit106.i.epil, label %bb.x

bb.x:                                             ; preds = %.epil.preheader
  %i.dn = add nuw i32 %i.dl, 1
  store i32 %i.dn, ptr %i.dk, align 8, !tbaa !43
  br label %Py_INCREF.exit106.i.epil

Py_INCREF.exit106.i.epil:                         ; preds = %bb.x, %.epil.preheader
  %i.do = getelementptr [8 x i8], ptr %i.s, i64 %.092120.i.epil.init
  store ptr %i.dk, ptr %i.do, align 8, !tbaa !44
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %Py_DECREF.exit.i, %Py_INCREF.exit106.i.epil, %.loopexit.i.loopexit.unr-lcssa, %bb.s, %bb.d
  %.194.i = phi ptr [ %i.o, %bb.d ], [ %.093.i, %bb.s ], [ %i.o, %Py_INCREF.exit106.i.epil ], [ %i.o, %.loopexit.i.loopexit.unr-lcssa ], [ %.093.i, %Py_DECREF.exit.i ] ; 4 uses
  %i.dp = load i32, ptr %.194.i, align 8, !tbaa !43 ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, -1073741825
  br i1 %i.dq, label %permutations_next_lock_held.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit.i
  %i.dr = add nuw i32 %i.dp, 1
  store i32 %i.dr, ptr %.194.i, align 8, !tbaa !43
  br label %permutations_next_lock_held.exit

Py_DECREF.exit104.i:                              ; preds = %._crit_edge.i, %_PyTuple_Recycle.exit.i, %bb.j, %bb.h, %bb.c
  store i32 1, ptr %i.l, align 8, !tbaa !184
  br label %permutations_next_lock_held.exit

permutations_next_lock_held.exit:                 ; preds = %bb.a, %.loopexit.i, %bb.y, %Py_DECREF.exit104.i
  %.095.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit104.i ], [ %.194.i, %.loopexit.i ], [ %.194.i, %bb.y ]
  ret ptr %.095.i
}

; Function Attrs: nounwind uwtable
define internal ptr @itertools_permutations(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.b, align 8, !tbaa !69 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !70
  %i.d = add i64 %.val, %.val32
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val32, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val32, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val32, ptr noundef %2, ptr noundef null, ptr noundef nonnull @itertools_permutations._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %itertools_permutations_impl.exit, label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val32, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !44
  %.not31 = icmp eq i64 %i.n, 1
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread35
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %.thread35, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ @_Py_NoneStruct, %.thread35 ] ; 3 uses
  %i.r = call ptr @PySequence_Tuple(ptr noundef %i.o) #8 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %itertools_permutations_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val67.i = load i64, ptr %i.t, align 8, !tbaa !69 ; 11 uses
  %.not.i = icmp eq ptr %.0, @_Py_NoneStruct
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0, i64 8
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr i8, ptr %.val.i, i64 168
  %.val68.i = load i64, ptr %i.v, align 8, !tbaa !134
  %i.w = and i64 %.val68.i, 16777216
  %.not63.i = icmp eq i64 %i.w, 0
  br i1 %.not63.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.95) #8
  br label %.thread77.thread.i

bb.i:                                             ; preds = %bb.g
  %i.y = call i64 @PyLong_AsSsize_t(ptr noundef %.0) #8 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
end_hunk_1
