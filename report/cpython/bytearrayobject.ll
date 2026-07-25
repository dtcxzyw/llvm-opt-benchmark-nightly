inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_removesuffix:bb.a
  %i.e = getelementptr i8, ptr %.val4, i64 %.val
  %i.f = sub i64 0, %.val6
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %bcmp.i = call i32 @bcmp(ptr readonly %i.g, ptr readonly %.val5, i64 %.val6), !inline_history !165
  %i.h = icmp eq i32 %bcmp.i, 0
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = sub i64 %.val, %.val6                    ; 5 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str) #17, !inline_history !166
  br label %bytearray_removesuffix_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.l = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !166 ; 12 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bytearray_removesuffix_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.l, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !14
  %i.o = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.i) #17, !inline_history !166 ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.i, label %bb.i, label %bytearray_removesuffix_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.l, align 8, !tbaa !22
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bytearray_removesuffix_impl.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #17, !inline_history !166
  br label %bytearray_removesuffix_impl.exit

bb.k:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.o, i64 32       ; 3 uses
  %i.v = getelementptr i8, ptr %i.l, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr i8, ptr %i.l, i64 32
  store ptr %i.u, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr i8, ptr %i.l, i64 16
  store i64 %i.i, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %i.l, i64 24
  store i64 %i.i, ptr %i.y, align 8, !tbaa !26
  %i.z = icmp ne ptr %.val4, null
  %i.aa = icmp ne i64 %.val, %.val6
  %or.cond.i.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i.i, label %bb.l, label %bytearray_removesuffix_impl.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull readonly align 1 %.val4, i64 %i.i, i1 false)
  br label %bytearray_removesuffix_impl.exit

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.ab = icmp slt i64 %.val, 0
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str) #17, !inline_history !166
  br label %bytearray_removesuffix_impl.exit

bb.o:                                             ; preds = %bb.m
  %i.ad = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !166 ; 12 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bytearray_removesuffix_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr i8, ptr %i.ad, i64 48
  store i64 0, ptr %i.af, align 8, !tbaa !14
  %i.ag = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val) #17, !inline_history !166 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !21
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %.not.i.i21.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i21.i, label %bb.r, label %bytearray_removesuffix_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ad, align 8, !tbaa !22
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.s, label %bytearray_removesuffix_impl.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #17, !inline_history !166
  br label %bytearray_removesuffix_impl.exit

bb.t:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %i.ag, i64 32     ; 3 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 40
  store ptr %i.am, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr i8, ptr %i.ad, i64 32
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr i8, ptr %i.ad, i64 16
  store i64 %.val, ptr %i.ap, align 8, !tbaa !25
  %i.aq = getelementptr i8, ptr %i.ad, i64 24
  store i64 %.val, ptr %i.aq, align 8, !tbaa !26
  %i.ar = icmp ne ptr %.val4, null
  %i.as = icmp ne i64 %.val, 0
  %or.cond.i19.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i19.i, label %bb.u, label %bytearray_removesuffix_impl.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull readonly align 1 %.val4, i64 %.val, i1 false)
  br label %bytearray_removesuffix_impl.exit

bytearray_removesuffix_impl.exit:                 ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.n ], [ null, %bb.o ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %.not3 = icmp eq ptr %i.au, null
  br i1 %.not3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bytearray_removesuffix_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bytearray_removesuffix_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @bytearray_resize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyNumber_Index(ptr noundef %1) #17 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b
  %i.f = icmp eq i64 %i.b, -1
  br i1 %i.f, label %Py_DECREF.exit.thread, label %bb.e

Py_DECREF.exit.thread:                            ; preds = %bb.a, %Py_DECREF.exit
  %i.g = tail call ptr @PyErr_Occurred() #17
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.e, label %bytearray_resize_impl.exit

bb.e:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01118.ph = phi i64 [ %i.b, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val12.i = load i64, ptr %i.h, align 8, !tbaa !25 ; 3 uses
  %i.i = tail call fastcc i32 @bytearray_resize_lock_held(ptr noundef %0, i64 noundef %.01118.ph)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bytearray_resize_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp sgt i64 %.01118.ph, %.val12.i
  br i1 %i.k, label %bb.g, label %bytearray_resize_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr i8, ptr %.val.i, i64 %.val12.i
  %i.n = sub i64 %.01118.ph, %.val12.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.n, i1 false)
  br label %bytearray_resize_impl.exit

bytearray_resize_impl.exit:                       ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit.thread
  %.013 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  ret ptr %.013
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @bytearray_reverse(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %2 = sdiv i64 %.val, 2                          ; 3 uses
  %i.b = icmp sgt i64 %.val, 1
  br i1 %i.b, label %.lr.ph.preheader.i, label %bytearray_reverse_impl.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.c, align 8, !tbaa !23 ; 3 uses
  %i.d = getelementptr i8, ptr %.val2, i64 %.val  ; 2 uses
  %i.e = add nsw i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.f = icmp ult i64 %i.e, 3
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %2, 4611686018427387900
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.03.i = phi ptr [ %.val2, %.lr.ph.preheader.i.new ], [ %i.r, %.lr.ph.i ] ; 6 uses
  %.pn2.i = phi ptr [ %i.d, %.lr.ph.preheader.i.new ], [ %.012.i.3, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %.012.i = getelementptr i8, ptr %.pn2.i, i64 -1 ; 2 uses
  %i.g = load i8, ptr %.03.i, align 1, !tbaa !22
  %i.h = load i8, ptr %.012.i, align 1, !tbaa !22
  %i.i = getelementptr i8, ptr %.03.i, i64 1      ; 2 uses
  store i8 %i.h, ptr %.03.i, align 1, !tbaa !22
  store i8 %i.g, ptr %.012.i, align 1, !tbaa !22
  %.012.i.1 = getelementptr i8, ptr %.pn2.i, i64 -2 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = load i8, ptr %.012.i.1, align 1, !tbaa !22
  %i.l = getelementptr i8, ptr %.03.i, i64 2      ; 2 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !22
  store i8 %i.j, ptr %.012.i.1, align 1, !tbaa !22
  %.012.i.2 = getelementptr i8, ptr %.pn2.i, i64 -3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = load i8, ptr %.012.i.2, align 1, !tbaa !22
  %i.o = getelementptr i8, ptr %.03.i, i64 3      ; 2 uses
  store i8 %i.n, ptr %i.l, align 1, !tbaa !22
  store i8 %i.m, ptr %.012.i.2, align 1, !tbaa !22
  %.012.i.3 = getelementptr i8, ptr %.pn2.i, i64 -4 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %i.q = load i8, ptr %.012.i.3, align 1, !tbaa !22
  %i.r = getelementptr i8, ptr %.03.i, i64 4      ; 2 uses
  store i8 %i.q, ptr %i.o, align 1, !tbaa !22
  store i8 %i.p, ptr %.012.i.3, align 1, !tbaa !22
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bytearray_reverse_impl.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !167

bytearray_reverse_impl.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bytearray_reverse_impl.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bytearray_reverse_impl.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.03.i.epil.init = phi ptr [ %.val2, %.lr.ph.preheader.i ], [ %i.r, %bytearray_reverse_impl.exit.loopexit.unr-lcssa ]
  %.pn2.i.epil.init = phi ptr [ %i.d, %.lr.ph.preheader.i ], [ %.012.i.3, %bytearray_reverse_impl.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi ptr [ %i.u, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.pn2.i.epil = phi ptr [ %.012.i.epil, %.lr.ph.i.epil ], [ %.pn2.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %.012.i.epil = getelementptr i8, ptr %.pn2.i.epil, i64 -1 ; 3 uses
  %i.s = load i8, ptr %.03.i.epil, align 1, !tbaa !22
  %i.t = load i8, ptr %.012.i.epil, align 1, !tbaa !22
  %i.u = getelementptr i8, ptr %.03.i.epil, i64 1
  store i8 %i.t, ptr %.03.i.epil, align 1, !tbaa !22
  store i8 %i.s, ptr %.012.i.epil, align 1, !tbaa !22
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bytearray_reverse_impl.exit, label %.lr.ph.i.epil, !llvm.loop !168

bytearray_reverse_impl.exit:                      ; preds = %bytearray_reverse_impl.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rfind(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !67
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.59, i64 noundef %2, i64 noundef 1, i64 noundef 3) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #17
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  %i.s = getelementptr i8, ptr %0, i64 40
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !25
  %i.u = call ptr @_Py_bytes_rfind(ptr noundef %.val8.i.i, i64 noundef %.val.i.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #17, !inline_history !101
  %i.v = load i64, ptr %i.p, align 8, !tbaa !14
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.u, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rindex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !67
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.60, i64 noundef %2, i64 noundef 1, i64 noundef 3) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #17
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  %i.s = getelementptr i8, ptr %0, i64 40
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !23
end_hunk_0
