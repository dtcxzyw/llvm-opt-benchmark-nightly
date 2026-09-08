Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/itertoolsmodule?download=true
inline.NumInlined: 375
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@itertools__tee:bb.a
  %or.cond21 = icmp eq i64 %.val19, 1
  br i1 %or.cond21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.131, i64 noundef %.val19, i64 noundef 1, i64 noundef 1) #8
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr i8, ptr %0, i64 888
  %.val20 = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.r = getelementptr i8, ptr %.val20, i64 24
  %.val20.val = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.s = tail call fastcc ptr @tee_fromiterable(ptr noundef %.val20.val, ptr noundef %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.g
  %.0 = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.0
}

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @teedataobject_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = tail call i32 @teedataobject_clear(ptr noundef %0) ; 0 uses
  tail call void @PyObject_GC_Del(ptr noundef %0) #8
  %i.c = load i32, ptr %.val, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %.val, align 8, !tbaa !43
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @teedataobject_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val56 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %.val56, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val56, ptr noundef %2) #8 ; 2 uses
  %.not48 = icmp eq i32 %i.b, 0
  br i1 %.not48, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not49 = icmp eq ptr %i.d, null
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #8 ; 2 uses
  %.not50 = icmp eq i32 %i.e, 0
  br i1 %.not50, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.j = phi i32 [ %i.g, %.lr.ph ], [ %i.n, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %.not53 = icmp eq ptr %i.l, null
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 %1(ptr noundef nonnull %i.l, ptr noundef %2) #8 ; 2 uses
  %.not54 = icmp eq i32 %i.m, 0
  br i1 %.not54, label %._crit_edge59, label %.loopexit

._crit_edge59:                                    ; preds = %bb.g
  %.pre = load i32, ptr %i.f, align 8, !tbaa !159
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge59, %bb.f
  %i.n = phi i32 [ %.pre, %._crit_edge59 ], [ %i.j, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.f, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158  ; 2 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.s = tail call i32 %1(ptr noundef nonnull %i.r, ptr noundef %2) #8 ; 2 uses
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.d, %bb.i, %bb.j
  %.8 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.j ], [ %i.s, %bb.i ], [ %i.e, %bb.d ], [ %i.m, %bb.g ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @teedataobject_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !44
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.c, -1
  br i1 %.not.i20, label %bb.c, label %Py_DECREF.exit21

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !43
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit21

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #8
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !159
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Py_DECREF.exit21
  %i.i = getelementptr i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Py_DECREF.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Py_DECREF.exit ] ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 4 uses
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !44
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !43
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !159
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.e, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %Py_DECREF.exit, %Py_DECREF.exit21
  %i.r = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158  ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !158
  %.not15.i = icmp eq ptr %i.s, null
  br i1 %.not15.i, label %teedataobject_safe_decref.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %Py_DECREF.exit.i
  %.016.i = phi ptr [ %i.v, %Py_DECREF.exit.i ], [ %i.s, %._crit_edge ] ; 5 uses
  %.0.val.i = load i32, ptr %.016.i, align 8, !tbaa !43 ; 3 uses
  %.not13.i = icmp eq i32 %.0.val.i, 1
  br i1 %.not13.i, label %Py_DECREF.exit.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %.not.i.i.i = icmp sgt i32 %.0.val.i, -1
  br i1 %.not.i.i.i, label %bb.i, label %teedataobject_safe_decref.exit

bb.i:                                             ; preds = %.split.i
  %i.t = add nsw i32 %.0.val.i, -1
  store i32 %i.t, ptr %.016.i, align 8, !tbaa !43
  br label %teedataobject_safe_decref.exit

Py_DECREF.exit.i:                                 ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %.016.i, i64 32    ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158  ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !158
  store i32 0, ptr %.016.i, align 8, !tbaa !43
  tail call void @_Py_Dealloc(ptr noundef nonnull %.016.i) #8
  %.not.i23 = icmp eq ptr %i.v, null
  br i1 %.not.i23, label %teedataobject_safe_decref.exit, label %.lr.ph.i, !llvm.loop !219

teedataobject_safe_decref.exit:                   ; preds = %Py_DECREF.exit.i, %._crit_edge, %.split.i, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @itertools_teedataobject(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyType_GetModuleByDef(ptr noundef %0, ptr noundef nonnull @itertoolsmodule) #8, !inline_history !0
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %.val.i, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr i8, ptr %i.d, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = icmp ne ptr %i.g, %i.i
  %i.k = icmp eq ptr %2, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp eq ptr %2, null
  br i1 %.old1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.135, ptr noundef nonnull %2) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %itertools_teedataobject_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val27 = load i64, ptr %i.m, align 8, !tbaa !68 ; 2 uses
  %or.cond31 = icmp eq i64 %.val27, 3
  br i1 %or.cond31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.135, i64 noundef %.val27, i64 noundef 3, i64 noundef 3) #8
  %.not23 = icmp eq i32 %i.n, 0
  br i1 %.not23, label %itertools_teedataobject_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 3 uses
  %i.q = getelementptr i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr i8, ptr %.val, i64 168
  %.val28 = load i64, ptr %i.t, align 8, !tbaa !111
  %i.u = and i64 %.val28, 33554432
  %.not24 = icmp eq i64 %i.u, 0
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.r) #8
  br label %itertools_teedataobject_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 6 uses
  %i.x = getelementptr i8, ptr %0, i64 888
  %.val29 = load ptr, ptr %i.x, align 8, !tbaa !131
  %i.y = getelementptr i8, ptr %.val29, i64 24
  %.val29.val = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr i8, ptr %.val29.val, i64 160 ; 2 uses
  %.val33.i = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.aa = tail call ptr @_PyObject_GC_New(ptr noundef %.val33.i) #8 ; 12 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %itertools_teedataobject_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 24     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !43  ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %i.p, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.p, ptr %i.ag, align 8, !tbaa !53
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.aa) #8
  %i.ah = getelementptr i8, ptr %i.r, i64 16
  %.val35.i = load i64, ptr %i.ah, align 8, !tbaa !68 ; 9 uses
  %i.ai = icmp sgt i64 %.val35.i, 57
  br i1 %i.ai, label %bb.v, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.aj = icmp sgt i64 %.val35.i, 0
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %i.ak = trunc i64 %.val35.i to i32
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !159
  br label %bb.u

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.al = getelementptr i8, ptr %i.r, i64 24      ; 3 uses
  %i.am = getelementptr i8, ptr %i.aa, i64 40     ; 3 uses
  %xtraiter = and i64 %.val35.i, 1
  %i.an = icmp eq i64 %.val35.i, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.val35.i, 9223372036854775806
  br label %bb.m

bb.m:                                             ; preds = %Py_INCREF.exit.i.1, %.lr.ph.i.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bd, %Py_INCREF.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %Py_INCREF.exit.i.1 ]
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !224
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %.01.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.am, i64 %.01.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !44
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.at = icmp ugt i32 %i.as, -1073741825
  br i1 %i.at, label %Py_INCREF.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nuw i32 %i.as, 1
  store i32 %i.au, ptr %i.aq, align 8, !tbaa !43
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.n, %bb.m
  %i.av = or disjoint i64 %.01.i, 1               ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !224
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 3 uses
  %i.az = getelementptr [8 x i8], ptr %i.am, i64 %i.av
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !44
  %i.ba = load i32, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %Py_INCREF.exit.i.1, label %bb.o

bb.o:                                             ; preds = %Py_INCREF.exit.i
  %i.bc = add nuw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !43
  br label %Py_INCREF.exit.i.1

Py_INCREF.exit.i.1:                               ; preds = %bb.o, %Py_INCREF.exit.i
  %i.bd = add nuw nsw i64 %.01.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.m, !llvm.loop !220

._crit_edge.i.unr-lcssa:                          ; preds = %Py_INCREF.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i64 %.val35.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !224
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %.01.i.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !44 ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.am, i64 %.01.i.epil.init
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !44
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, -1073741825
  br i1 %i.bj, label %._crit_edge.i, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.bk = add nuw i32 %i.bi, 1
  store i32 %i.bk, ptr %i.bg, align 8, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.p, %._crit_edge.i.unr-lcssa
  %i.bl = trunc nuw nsw i64 %.val35.i to i32
  store i32 %i.bl, ptr %i.ac, align 8, !tbaa !159
  %i.bm = icmp eq i64 %.val35.i, 57
  br i1 %i.bm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %._crit_edge.i
  %.not31.i = icmp eq ptr %i.w, @_Py_NoneStruct
  br i1 %.not31.i, label %itertools_teedataobject_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.bo = getelementptr i8, ptr %i.w, i64 8
  %.val.i30 = load ptr, ptr %i.bo, align 8, !tbaa !45
  %.not.i = icmp eq ptr %.val.i30, %i.bn
  br i1 %.not.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %i.w, align 8, !tbaa !43  ; 2 uses
  %i.bq = icmp ugt i32 %i.bp, -1073741825
  br i1 %i.bq, label %_Py_NewRef.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nuw i32 %i.bp, 1
end_hunk_0
