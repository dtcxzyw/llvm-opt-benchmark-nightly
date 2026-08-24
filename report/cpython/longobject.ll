Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 51
begin_hunk_0_@PyLong_FromUnsignedLongLong:bb.a
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = getelementptr i8, ptr %.sink.i, i64 16
  store i64 8, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.e, ptr %i.v, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.w = icmp ult i64 %0, 1152921504606846976
  %spec.select = select i1 %i.w, i64 2, i64 3
  %i.x = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_PyLong_FromMedium.exit, label %bb.i

bb.i:                                             ; preds = %.peel.begin
  %i.z = getelementptr i8, ptr %i.x, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %.024 = phi ptr [ %i.z, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.01823 = phi i64 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = trunc i64 %.01823 to i32
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = getelementptr i8, ptr %.024, i64 4
  store i32 %i.ab, ptr %.024, align 4, !tbaa !7
  %i.ad = lshr i64 %.01823, 30                    ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %bb.j, !llvm.loop !32

_PyLong_FromMedium.exit:                          ; preds = %bb.j, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.x, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromSize_t(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 1025
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1073741824
  br i1 %i.d, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %0 to i32
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 11208    ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = getelementptr i8, ptr %.sink.i, i64 16
  store i64 8, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.e, ptr %i.v, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.w = icmp ult i64 %0, 1152921504606846976
  %spec.select = select i1 %i.w, i64 2, i64 3
  %i.x = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_PyLong_FromMedium.exit, label %bb.i

bb.i:                                             ; preds = %.peel.begin
  %i.z = getelementptr i8, ptr %i.x, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %.024 = phi ptr [ %i.z, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.01823 = phi i64 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = trunc i64 %.01823 to i32
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = getelementptr i8, ptr %.024, i64 4
  store i32 %i.ab, ptr %.024, align 4, !tbaa !7
  %i.ad = lshr i64 %.01823, 30                    ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %bb.j, !llvm.loop !33

_PyLong_FromMedium.exit:                          ; preds = %bb.j, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.x, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromDouble(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %or.cond = fcmp olt double %i.b, f0x43E0000000000000
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fptosi double %0 to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = fcmp oeq double %i.b, +inf
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str) #16
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp uno double %0, 0.000000e+00
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.1) #16
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp uge double %0, 0.000000e+00         ; 2 uses
  %i.j = fneg double %0
  %.027 = select i1 %i.i, double %0, double %i.j
  %i.k = call double @frexp(double noundef %.027, ptr noundef nonnull %i.a) #16
  %i.l = load i32, ptr %i.a, align 4, !tbaa !7
  %i.m = add i32 %i.l, -1                         ; 3 uses
  %i.n = sdiv i32 %i.m, 30
  %i.o = srem i32 %i.m, 30
  %i.p = add nsw i32 %i.n, 1                      ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = tail call fastcc ptr @long_alloc(i64 noundef %i.q) ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.o, 1
  %i.u = tail call double @ldexp(double noundef %i.k, i32 noundef %i.t) #16, !tbaa !7
  %i.v = icmp sgt i32 %i.m, -30
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.r, i64 24
  %i.x = zext i32 %i.p to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.02631 = phi double [ %i.u, %.lr.ph ], [ %i.ac, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.y = fptoui double %.02631 to i32             ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv.next
  store i32 %i.y, ptr %i.z, align 4, !tbaa !7
  %i.aa = uitofp i32 %i.y to double
  %i.ab = fsub double %.02631, %i.aa
  %i.ac = tail call double @ldexp(double noundef %i.ab, i32 noundef 30) #16, !tbaa !7
  %1 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %1, label %bb.i, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.i, %bb.h
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ad = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = sub nsw i64 2, %i.af
  %i.ah = and i64 %i.ae, -8
  %i.ai = and i64 %i.ag, 4294967295
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.j ], [ %i.r, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %.0, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @PyLong_AsLongAndOverflow(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !7
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 598) #16
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val42 = load i64, ptr %i.c, align 8, !tbaa !35
  %i.d = and i64 %.val42, 16777216
  %.not.not = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi ptr [ %0, %bb.c ], [ %i.e, %bb.d ]  ; 6 uses
  %i.g = getelementptr i8, ptr %.031, i64 16
  %.031.val38 = load i64, ptr %i.g, align 8, !tbaa !25 ; 5 uses
  %i.h = icmp ugt i64 %.031.val38, 15
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %.031, i64 24
  %.031.val40 = load i32, ptr %i.i, align 8, !tbaa !7
  %i.j = and i64 %.031.val38, 3
  %i.k = sub nsw i64 1, %i.j
  %i.l = zext i32 %.031.val40 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.n = lshr i64 %.031.val38, 3                  ; 2 uses
  %i.o = trunc i64 %.031.val38 to i32
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = sub nsw i32 1, %i.p                      ; 3 uses
  %i.r = getelementptr i8, ptr %.031, i64 24      ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 30
  %i.x = getelementptr i8, ptr %i.s, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = zext i32 %i.y to i64
  %i.aa = or i64 %i.w, %i.z                       ; 2 uses
  %i.ab = icmp ugt i64 %.031.val38, 23
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ac = add nsw i64 %i.n, -3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ad = phi i64 [ %i.ak, %bb.i ], [ %i.ac, %.lr.ph.preheader ] ; 3 uses
  %.046 = phi i64 [ %i.aj, %bb.i ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %i.ae = icmp ugt i64 %.046, 17179869183
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph
  %i.af = shl nuw i64 %.046, 30                   ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.ad
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
  %i.aj = or i64 %i.af, %i.ai                     ; 3 uses
  %i.ak = add nsw i64 %i.ad, -1
  %i.al = icmp sgt i64 %i.ad, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.i
  %i.am = icmp sgt i64 %i.af, -1
  br i1 %i.am, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.0.lcssa51 = phi i64 [ %i.aj, %._crit_edge ], [ %i.aa, %bb.g ]
  %i.an = sext i32 %i.q to i64
  %i.ao = mul i64 %.0.lcssa51, %i.an
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.ap = icmp samesign ugt i32 %i.p, 1
  %i.aq = icmp eq i64 %i.aj, -9223372036854775808
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.q, ptr %1, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k, %._crit_edge.thread, %bb.f
  %.2 = phi i64 [ %i.m, %bb.f ], [ -1, %bb.h ], [ %i.ao, %._crit_edge.thread ], [ -1, %bb.k ], [ -9223372036854775808, %bb.j ] ; 4 uses
  br i1 %.not.not, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %.031, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %.031, align 8, !tbaa !24
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.031) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.d, %bb.b
  %.032 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ %.2, %bb.l ], [ %.2, %bb.m ], [ %.2, %bb.n ], [ %.2, %bb.o ]
  ret i64 %.032
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @PyLong_AsLong(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i64 @PyLong_AsLongAndOverflow(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.3) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyLong_AsInt(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i64 @PyLong_AsLongAndOverflow(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %i.d = icmp ne i32 %i.c, 0
  %i.e = add i64 %i.b, -2147483648
  %i.f = icmp ult i64 %i.e, -4294967296
  %or.cond3 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.b, label %bb.c

end_hunk_0
