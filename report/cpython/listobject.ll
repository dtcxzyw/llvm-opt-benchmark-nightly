Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@gallop_left:bb.a
  %.7 = select i1 %i.ap, i64 %.5, i64 %i.ao
  %i.aq = icmp sgt i32 %i.an, -1
  br i1 %i.aq, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph110, %bb.k, %bb.j, %bb.a
  %.076 = phi i64 [ -1, %bb.a ], [ -1, %.lr.ph110 ], [ %.775, %bb.j ], [ -1, %bb.k ], [ -1, %.lr.ph ]
  ret i64 %.076
}

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteRepr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @list_length(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !29
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define internal ptr @list_concat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %i.b = getelementptr i8, ptr %.val8, i64 168
  %.val9 = load i64, ptr %i.b, align 8, !tbaa !43
  %i.c = and i64 %.val9, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !50
  %i.e = getelementptr i8, ptr %.val8, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.13, ptr noundef %i.f) #13 ; 0 uses
  br label %list_concat_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val35.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val34.i = load i64, ptr %i.i, align 8, !tbaa !29
  %i.j = add i64 %.val34.i, %.val35.i             ; 5 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = tail call ptr @PyList_New(i64 noundef 0), !inline_history !154 ; 9 uses
  br i1 %i.k, label %list_concat_lock_held.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %list_concat_lock_held.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %i.n, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.l, i64 24
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.j, 3
  %i.q = tail call ptr @PyMem_Malloc(i64 noundef %i.p) #13, !inline_history !155 ; 3 uses
  %i.r = getelementptr i8, ptr %i.l, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.g, label %list_new_prealloc.exit.thread38.i

bb.g:                                             ; preds = %bb.f, %.thread.i.i
  %i.t = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.h, label %list_new_prealloc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.l, align 8, !tbaa !28
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %list_new_prealloc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !inline_history !155
  br label %list_new_prealloc.exit.i

list_new_prealloc.exit.thread38.i:                ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.l, i64 32
  store i64 %i.j, ptr %i.w, align 8, !tbaa !30
  br label %bb.j

list_new_prealloc.exit.i:                         ; preds = %bb.i, %bb.h, %bb.g
  %i.x = tail call ptr @PyErr_NoMemory() #13, !inline_history !155 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %list_concat_lock_held.exit, label %list_new_prealloc.exit._crit_edge.i

list_new_prealloc.exit._crit_edge.i:              ; preds = %list_new_prealloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.x, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %list_new_prealloc.exit._crit_edge.i, %list_new_prealloc.exit.thread38.i
  %i.z = phi ptr [ %i.q, %list_new_prealloc.exit.thread38.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 2 uses
  %.0.i40.i = phi ptr [ %i.l, %list_new_prealloc.exit.thread38.i ], [ %i.x, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr i8, ptr %.0.i40.i, i64 24
  %.val3341.i = load i64, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %i.ad = icmp sgt i64 %.val3341.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %_Py_NewRef.exit.i
  %.val3349.i = phi i64 [ %.val33.i, %_Py_NewRef.exit.i ], [ %.val3341.i, %bb.j ]
  %.02942.i = phi i64 [ %i.ak, %_Py_NewRef.exit.i ], [ 0, %bb.j ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %.02942.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, -1073741825
  br i1 %i.ah, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !28
  %.val33.pre.i = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %.lr.ph.i
  %.val33.i = phi i64 [ %.val3349.i, %.lr.ph.i ], [ %.val33.pre.i, %bb.k ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.z, i64 %.02942.i
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !50
  %i.ak = add nuw nsw i64 %.02942.i, 1            ; 2 uses
  %i.al = icmp slt i64 %i.ak, %.val33.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !156

._crit_edge.loopexit.i:                           ; preds = %_Py_NewRef.exit.i
  %.pre51.i = load ptr, ptr %i.ac, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %i.am = phi ptr [ %i.z, %bb.j ], [ %.pre51.i, %._crit_edge.loopexit.i ]
  %.val33.lcssa.i = phi i64 [ %.val3341.i, %bb.j ], [ %.val33.i, %._crit_edge.loopexit.i ]
  %i.an = getelementptr i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr [8 x i8], ptr %i.am, i64 %.val33.lcssa.i
  %.val43.i = load i64, ptr %i.i, align 8, !tbaa !29 ; 2 uses
  %i.aq = icmp sgt i64 %.val43.i, 0
  br i1 %i.aq, label %.lr.ph46.i, label %._crit_edge47.i

.lr.ph46.i:                                       ; preds = %._crit_edge.i, %_Py_NewRef.exit36.i
  %.val52.i = phi i64 [ %.val.i, %_Py_NewRef.exit36.i ], [ %.val43.i, %._crit_edge.i ]
  %.144.i = phi i64 [ %i.ax, %_Py_NewRef.exit36.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ao, i64 %.144.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %_Py_NewRef.exit36.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph46.i
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr %i.as, align 8, !tbaa !28
  %.val.pre.i = load i64, ptr %i.i, align 8, !tbaa !29
  br label %_Py_NewRef.exit36.i

_Py_NewRef.exit36.i:                              ; preds = %bb.l, %.lr.ph46.i
  %.val.i = phi i64 [ %.val52.i, %.lr.ph46.i ], [ %.val.pre.i, %bb.l ] ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %.144.i
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !50
  %i.ax = add nuw nsw i64 %.144.i, 1              ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %.val.i
  br i1 %i.ay, label %.lr.ph46.i, label %._crit_edge47.i, !llvm.loop !157

._crit_edge47.i:                                  ; preds = %_Py_NewRef.exit36.i, %._crit_edge.i
  %i.az = getelementptr i8, ptr %.0.i40.i, i64 16
  store i64 %i.j, ptr %i.az, align 8, !tbaa !29
  br label %list_concat_lock_held.exit

list_concat_lock_held.exit:                       ; preds = %._crit_edge47.i, %list_new_prealloc.exit.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.0.i40.i, %._crit_edge47.i ], [ null, %list_new_prealloc.exit.i ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @list_repeat(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 8 uses
  %i.b = icmp eq i64 %.val.i, 0
  %i.c = icmp slt i64 %1, 1
  %or.cond.i = or i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyList_New(i64 noundef 0), !inline_history !158
  br label %list_repeat_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %1
  %i.f = icmp sgt i64 %.val.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #13, !inline_history !158
  br label %list_repeat_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.h = mul i64 %.val.i, %1                      ; 6 uses
  %i.i = tail call ptr @PyList_New(i64 noundef 0), !inline_history !159 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %list_repeat_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.k, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.i, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = shl nuw nsw i64 %i.h, 3
  %i.n = tail call ptr @PyMem_Malloc(i64 noundef %i.m) #13, !inline_history !159 ; 3 uses
  %i.o = getelementptr i8, ptr %i.i, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !21
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %bb.h, label %list_new_prealloc.exit.thread45.i

bb.h:                                             ; preds = %bb.g, %.thread.i.i
  %i.q = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i.i, label %bb.i, label %list_new_prealloc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.i, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %list_new_prealloc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13, !inline_history !159
  br label %list_new_prealloc.exit.i

list_new_prealloc.exit.thread45.i:                ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.i, i64 32
  store i64 %i.h, ptr %i.t, align 8, !tbaa !30
  br label %bb.k

list_new_prealloc.exit.i:                         ; preds = %bb.j, %bb.i, %bb.h
  %i.u = tail call ptr @PyErr_NoMemory() #13, !inline_history !159 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %list_repeat_lock_held.exit, label %list_new_prealloc.exit._crit_edge.i

list_new_prealloc.exit._crit_edge.i:              ; preds = %list_new_prealloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.u, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %list_new_prealloc.exit._crit_edge.i, %list_new_prealloc.exit.thread45.i
  %i.w = phi ptr [ %i.n, %list_new_prealloc.exit.thread45.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 9 uses
  %.0.i47.i = phi ptr [ %i.i, %list_new_prealloc.exit.thread45.i ], [ %i.u, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %i.x = getelementptr i8, ptr %.0.i47.i, i64 24
  %i.y = icmp eq i64 %.val.i, 1
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 7 uses
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.m, label %_Py_RefcntAdd.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add nuw i64 %1, %i.ad                   ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 2147483647
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = select i1 %i.af, i32 -1073741824, i32 %i.ag
  store i32 %i.ah, ptr %i.ab, align 8, !tbaa !28
  br label %_Py_RefcntAdd.exit.i

_Py_RefcntAdd.exit.i:                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %i.h ; 2 uses
  %i.aj = icmp ult ptr %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph52.i.preheader, label %_Py_memory_repeat.exit.i

.lr.ph52.i.preheader:                             ; preds = %_Py_RefcntAdd.exit.i
  %i.ak = add nuw i64 %1, 2305843009213693951
  %2 = and i64 %i.ak, 2305843009213693951         ; 2 uses
  %i.al = add nuw nsw i64 %2, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %2, 3
  br i1 %min.iters.check, label %.lr.ph52.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %i.w, i64 %i.am
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x ptr> %broadcast.splat, ptr %i.ap, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit.i, label %.lr.ph52.i.preheader21

.lr.ph52.i.preheader21:                           ; preds = %.lr.ph52.i.preheader, %middle.block
  %.03651.i.ph = phi ptr [ %i.w, %.lr.ph52.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader21, %.lr.ph52.i
  %.03651.i = phi ptr [ %i.ar, %.lr.ph52.i ], [ %.03651.i.ph, %.lr.ph52.i.preheader21 ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.03651.i, i64 8  ; 2 uses
  store ptr %i.ab, ptr %.03651.i, align 8, !tbaa !50
  %i.as = icmp ult ptr %i.ar, %i.ai
  br i1 %i.as, label %.lr.ph52.i, label %_Py_memory_repeat.exit.i, !llvm.loop !163

bb.n:                                             ; preds = %bb.k
  %i.at = getelementptr [8 x i8], ptr %i.aa, i64 %.val.i ; 2 uses
  %i.au = icmp ult ptr %i.aa, %i.at
  br i1 %i.au, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.n
  %xtraiter = and i64 %.val.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %3 = load ptr, ptr %i.aa, align 8, !tbaa !50    ; 3 uses
  %4 = load i32, ptr %3, align 8, !tbaa !28       ; 2 uses
  %.not.i42.i.prol = icmp sgt i32 %4, -1
  br i1 %.not.i42.i.prol, label %5, label %_Py_RefcntAdd.exit43.i.prol

5:                                                ; preds = %.lr.ph.i.prol
  %6 = zext nneg i32 %4 to i64
  %7 = add nuw i64 %1, %6                         ; 2 uses
  %8 = icmp sgt i64 %7, 2147483647
  %9 = trunc i64 %7 to i32
  %10 = select i1 %8, i32 -1073741824, i32 %9
  store i32 %10, ptr %3, align 8, !tbaa !28
  %.pre54.i.prol = load ptr, ptr %i.aa, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i.prol

_Py_RefcntAdd.exit43.i.prol:                      ; preds = %5, %.lr.ph.i.prol
  %11 = phi ptr [ %3, %.lr.ph.i.prol ], [ %.pre54.i.prol, %5 ]
  %12 = getelementptr i8, ptr %i.aa, i64 8
  %13 = getelementptr i8, ptr %i.w, i64 8
  store ptr %11, ptr %i.w, align 8, !tbaa !50
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_Py_RefcntAdd.exit43.i.prol, %.lr.ph.i.preheader
  %.050.i.unr = phi ptr [ %i.aa, %.lr.ph.i.preheader ], [ %12, %_Py_RefcntAdd.exit43.i.prol ]
  %.149.i.unr = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %13, %_Py_RefcntAdd.exit43.i.prol ]
  %14 = and i64 %.val.i, 2305843009213693951
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_Py_RefcntAdd.exit43.i.a
  %.050.i = phi ptr [ %i.bd, %_Py_RefcntAdd.exit43.i.a ], [ %.050.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.149.i = phi ptr [ %i.be, %_Py_RefcntAdd.exit43.i.a ], [ %.149.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.av = load ptr, ptr %.050.i, align 8, !tbaa !50 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i42.i, label %16, label %_Py_RefcntAdd.exit43.i

16:                                               ; preds = %.lr.ph.i
  %17 = zext nneg i32 %i.aw to i64
  %18 = add nuw i64 %1, %17                       ; 2 uses
  %19 = icmp sgt i64 %18, 2147483647
  %20 = trunc i64 %18 to i32
  %21 = select i1 %19, i32 -1073741824, i32 %20
  store i32 %21, ptr %i.av, align 8, !tbaa !28
  %.pre54.i = load ptr, ptr %.050.i, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i

_Py_RefcntAdd.exit43.i:                           ; preds = %16, %.lr.ph.i
  %22 = phi ptr [ %i.av, %.lr.ph.i ], [ %.pre54.i, %16 ]
  %23 = getelementptr i8, ptr %.050.i, i64 8      ; 2 uses
  %24 = getelementptr i8, ptr %.149.i, i64 8
  store ptr %22, ptr %.149.i, align 8, !tbaa !50
  %25 = load ptr, ptr %23, align 8, !tbaa !50     ; 3 uses
  %26 = load i32, ptr %25, align 8, !tbaa !28     ; 2 uses
  %.not.i42.i.1 = icmp sgt i32 %26, -1
  br i1 %.not.i42.i.1, label %bb.o, label %_Py_RefcntAdd.exit43.i.a

bb.o:                                             ; preds = %_Py_RefcntAdd.exit43.i
  %i.ax = zext nneg i32 %26 to i64
  %i.ay = add nuw i64 %1, %i.ax                   ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 2147483647
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = select i1 %i.az, i32 -1073741824, i32 %i.ba
  store i32 %i.bb, ptr %25, align 8, !tbaa !28
  %.pre54.i.a = load ptr, ptr %23, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i.a

_Py_RefcntAdd.exit43.i.a:                         ; preds = %bb.o, %_Py_RefcntAdd.exit43.i
  %i.bc = phi ptr [ %25, %_Py_RefcntAdd.exit43.i ], [ %.pre54.i.a, %bb.o ]
  %i.bd = getelementptr i8, ptr %.050.i, i64 16   ; 2 uses
  %i.be = getelementptr i8, ptr %.149.i, i64 16
  store ptr %i.bc, ptr %24, align 8, !tbaa !50
  %i.bf = icmp ult ptr %i.bd, %i.at
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !164

._crit_edge.loopexit.i:                           ; preds = %_Py_RefcntAdd.exit43.i.a, %.lr.ph.i.prol.loopexit
  %.pre55.i = load ptr, ptr %i.x, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.bg = phi ptr [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.bh = shl i64 %i.h, 3                         ; 3 uses
  %i.bi = shl i64 %.val.i, 3                      ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %i.bi, %._crit_edge.i ] ; 4 uses
  %i.bk = sub i64 %i.bh, %.015.i.i
  %i.bl = tail call i64 @llvm.smin.i64(i64 %.015.i.i, i64 %i.bk) ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bg, i64 %.015.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bg, i64 %i.bl, i1 false)
  %i.bn = add i64 %i.bl, %.015.i.i                ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.bh
  br i1 %i.bo, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i, !llvm.loop !120

_Py_memory_repeat.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph52.i, %middle.block, %._crit_edge.i, %_Py_RefcntAdd.exit.i
  %i.bp = getelementptr i8, ptr %.0.i47.i, i64 16
  store i64 %i.h, ptr %i.bp, align 8, !tbaa !29
  br label %list_repeat_lock_held.exit

list_repeat_lock_held.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %list_new_prealloc.exit.i, %_Py_memory_repeat.exit.i
  %.138.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %.0.i47.i, %_Py_memory_repeat.exit.i ], [ null, %list_new_prealloc.exit.i ], [ null, %bb.e ]
  ret ptr %.138.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !29
  %.not = icmp ult i64 %1, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetObject(ptr noundef %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60488)) #13
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @list_ass_item(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val23.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %.not.i = icmp ult i64 %1, %.val23.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #13
  br label %list_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = add i64 %.val23.i, -1                    ; 3 uses
  %i.i = icmp slt i64 %1, %i.h
  br i1 %i.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = shl i64 %1, 3
  %scevgep.i = getelementptr i8, ptr %i.d, i64 %i.j ; 2 uses
  %scevgep25.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.k = sub i64 %i.h, %1
  %i.l = shl nuw i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep25.i, i64 %i.l, i1 false), !tbaa !50
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.preheader.i
  store i64 %i.h, ptr %i.a, align 8, !tbaa !29
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %_Py_NewRef.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %2, align 8, !tbaa !28
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.d, %bb.d ], [ %.pre.i, %bb.e ]
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %1
  store ptr %2, ptr %i.q, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit.i, %._crit_edge.i
  %i.r = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.g, label %list_ass_item_lock_held.exit

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.f, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %list_ass_item_lock_held.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %list_ass_item_lock_held.exit

list_ass_item_lock_held.exit:                     ; preds = %bb.b, %bb.f, %bb.g, %bb.h
  %.020.i = phi i32 [ -1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.020.i
}

; Function Attrs: nounwind uwtable
define internal i32 @list_contains(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i22 = load i64, ptr %i.a, align 8, !tbaa !29
  %.not.i1523.not = icmp eq i64 %.val.i22, 0
  br i1 %.not.i1523.not, label %list_get_item_ref.exit.thread18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %list_get_item_ref.exit
  %i.c = add nuw i64 %.01024, 1                   ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29
  %.not.i15 = icmp ult i64 %i.c, %.val.i
  br i1 %.not.i15, label %bb.c, label %list_get_item_ref.exit.thread18

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01024 = phi i64 [ 0, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.01024
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef 2) #13 ; 2 uses
  %i.k = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.f, label %list_get_item_ref.exit

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %list_get_item_ref.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %list_get_item_ref.exit

list_get_item_ref.exit:                           ; preds = %bb.g, %bb.f, %bb.e
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %list_get_item_ref.exit.thread18

list_get_item_ref.exit.thread18:                  ; preds = %list_get_item_ref.exit, %bb.b, %bb.a
  %.221 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %list_get_item_ref.exit ]
  ret i32 %.221
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_inplace_concat(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @_list_extend(ptr noundef %0, ptr noundef %1)
  %i.b = icmp slt i32 %i.a, 0
end_hunk_0
