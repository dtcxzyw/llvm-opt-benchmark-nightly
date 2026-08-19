inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_concat:bb.a
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
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 6 uses
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
  %i.w = phi ptr [ %i.n, %list_new_prealloc.exit.thread45.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 8 uses
  %.0.i47.i = phi ptr [ %i.i, %list_new_prealloc.exit.thread45.i ], [ %i.u, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %i.x = getelementptr i8, ptr %.0.i47.i, i64 24
  %i.y = icmp eq i64 %.val.i, 1
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 4 uses
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
  %2 = ptrtoaddr ptr %i.w to i64                  ; 3 uses
  %3 = shl i64 %1, 3
  %4 = add i64 %3, %2
  %5 = add i64 %2, 8
  %6 = tail call i64 @llvm.umax.i64(i64 %4, i64 %5)
  %7 = xor i64 %2, -1
  %8 = add i64 %6, %7                             ; 2 uses
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  br i1 %min.iters.check, label %.lr.ph52.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %10, 4611686018427387900       ; 3 uses
  %11 = shl i64 %n.vec, 3
  %12 = getelementptr i8, ptr %i.w, i64 %11
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %13 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %13 ; 2 uses
  %14 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x ptr> %broadcast.splat, ptr %14, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit.i, label %.lr.ph52.i.preheader21

.lr.ph52.i.preheader21:                           ; preds = %.lr.ph52.i.preheader, %middle.block
  %.03651.i.ph = phi ptr [ %i.w, %.lr.ph52.i.preheader ], [ %12, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader21, %.lr.ph52.i
  %.03651.i = phi ptr [ %i.ak, %.lr.ph52.i ], [ %.03651.i.ph, %.lr.ph52.i.preheader21 ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.03651.i, i64 8  ; 2 uses
  store ptr %i.ab, ptr %.03651.i, align 8, !tbaa !50
  %i.al = icmp ult ptr %i.ak, %i.ai
  br i1 %i.al, label %.lr.ph52.i, label %_Py_memory_repeat.exit.i, !llvm.loop !163

bb.n:                                             ; preds = %bb.k
  %i.am = getelementptr [8 x i8], ptr %i.aa, i64 %.val.i ; 2 uses
  %i.an = icmp ult ptr %i.aa, %i.am
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.n, %_Py_RefcntAdd.exit43.i
  %.050.i = phi ptr [ %i.aw, %_Py_RefcntAdd.exit43.i ], [ %i.aa, %bb.n ] ; 3 uses
  %.149.i = phi ptr [ %i.ax, %_Py_RefcntAdd.exit43.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.ao = load ptr, ptr %.050.i, align 8, !tbaa !50 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i42.i, label %bb.o, label %_Py_RefcntAdd.exit43.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add nuw i64 %1, %i.aq                   ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 2147483647
  %i.at = trunc i64 %i.ar to i32
  %i.au = select i1 %i.as, i32 -1073741824, i32 %i.at
  store i32 %i.au, ptr %i.ao, align 8, !tbaa !28
  %.pre54.i = load ptr, ptr %.050.i, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i

_Py_RefcntAdd.exit43.i:                           ; preds = %bb.o, %.lr.ph.i
  %i.av = phi ptr [ %i.ao, %.lr.ph.i ], [ %.pre54.i, %bb.o ]
  %i.aw = getelementptr i8, ptr %.050.i, i64 8    ; 2 uses
  %i.ax = getelementptr i8, ptr %.149.i, i64 8
  store ptr %i.av, ptr %.149.i, align 8, !tbaa !50
  %i.ay = icmp ult ptr %i.aw, %i.am
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !164

._crit_edge.loopexit.i:                           ; preds = %_Py_RefcntAdd.exit43.i
  %.pre55.i = load ptr, ptr %i.x, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.az = phi ptr [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.ba = shl i64 %i.h, 3                         ; 3 uses
  %i.bb = shl i64 %.val.i, 3                      ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %i.bb, %._crit_edge.i ] ; 4 uses
  %i.bd = sub i64 %i.ba, %.015.i.i
  %i.be = tail call i64 @llvm.smin.i64(i64 %.015.i.i, i64 %i.bd) ; 2 uses
  %i.bf = getelementptr i8, ptr %i.az, i64 %.015.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.az, i64 %i.be, i1 false)
  %i.bg = add i64 %i.be, %.015.i.i                ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.ba
  br i1 %i.bh, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i, !llvm.loop !120

_Py_memory_repeat.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph52.i, %middle.block, %._crit_edge.i, %_Py_RefcntAdd.exit.i
  %i.bi = getelementptr i8, ptr %.0.i47.i, i64 16
  store i64 %i.h, ptr %i.bi, align 8, !tbaa !29
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
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_inplace_repeat(ptr nofree noundef captures(ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @list_inplace_repeat_lock_held(ptr noundef %0, i64 noundef %1)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @list_subscript(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  %i.b = getelementptr i8, ptr %.val20, i64 96
  %.val20.val = load ptr, ptr %i.b, align 8, !tbaa !165 ; 2 uses
  %.not.i = icmp eq ptr %.val20.val, null
  br i1 %.not.i, label %_PyIndex_Check.exit.thread, label %_PyIndex_Check.exit

_PyIndex_Check.exit:                              ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val20.val, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %_PyIndex_Check.exit.thread, label %bb.b

bb.b:                                             ; preds = %_PyIndex_Check.exit
  %i.e = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  %i.f = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %1, ptr noundef %i.e) #13 ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyErr_Occurred() #13
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %.thread, label %list_item.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.f, 0
  br i1 %i.i, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %i.k = add i64 %.val, %i.f
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %.val.i = phi i64 [ %.val, %.thread ], [ %.val.i.pre, %._crit_edge ]
  %.0 = phi i64 [ %i.k, %.thread ], [ %i.f, %._crit_edge ] ; 2 uses
  %.not.i21 = icmp ult i64 %.0, %.val.i
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetObject(ptr noundef %i.l, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60488)) #13
  br label %list_item.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.0
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %list_item.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 8, !tbaa !28
  br label %list_item.exit

_PyIndex_Check.exit.thread:                       ; preds = %bb.a, %_PyIndex_Check.exit
  %.not = icmp eq ptr %.val20, @PySlice_Type
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.t = tail call fastcc ptr @list_slice_subscript(ptr noundef %0, ptr noundef nonnull %1)
  br label %list_item.exit

bb.j:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.u = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !50
  %i.v = getelementptr i8, ptr %.val20, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.14, ptr noundef %i.w) #13 ; 0 uses
  br label %list_item.exit

list_item.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %bb.j, %bb.i
  %.1 = phi ptr [ null, %bb.j ], [ %i.t, %bb.i ], [ null, %bb.c ], [ null, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @list_ass_subscript(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 16 uses
  %i.b = alloca i64, align 8                      ; 16 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val176.i = load ptr, ptr %i.d, align 8, !tbaa !42 ; 3 uses
  %i.e = getelementptr i8, ptr %.val176.i, i64 96
  %.val176.val.i = load ptr, ptr %i.e, align 8, !tbaa !165 ; 2 uses
  %.not.i179.i = icmp eq ptr %.val176.val.i, null
  br i1 %.not.i179.i, label %_PyIndex_Check.exit.thread.i, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val176.val.i, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166
  %.not188.i = icmp eq ptr %i.g, null
  br i1 %.not188.i, label %_PyIndex_Check.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_PyIndex_Check.exit.i
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  %i.i = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %1, ptr noundef %i.h) #13, !inline_history !168 ; 4 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_Occurred() #13, !inline_history !168
  %.not139.i = icmp eq ptr %i.k, null
  br i1 %.not139.i, label %.thread.i, label %list_ass_subscript_lock_held.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %.thread.i, label %._crit_edge204.i

._crit_edge204.i:                                 ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 16
  %.val23.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  br label %bb.e

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val165.i = load i64, ptr %i.m, align 8, !tbaa !29 ; 2 uses
  %i.n = add i64 %.val165.i, %i.i
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %._crit_edge204.i
  %.val23.i.i = phi i64 [ %.val165.i, %.thread.i ], [ %.val23.i.pre.i, %._crit_edge204.i ] ; 2 uses
  %.0117.i = phi i64 [ %i.n, %.thread.i ], [ %i.i, %._crit_edge204.i ] ; 6 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.not.i180.i = icmp ult i64 %.0117.i, %.val23.i.i
  br i1 %.not.i180.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.3) #13, !inline_history !168
  br label %list_ass_subscript_lock_held.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %.0117.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 3 uses
  %i.u = icmp eq ptr %2, null
  br i1 %i.u, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.v = add i64 %.val23.i.i, -1                  ; 3 uses
  %i.w = icmp slt i64 %.0117.i, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.x = shl i64 %.0117.i, 3
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 %i.x ; 2 uses
  %scevgep25.i.i = getelementptr i8, ptr %scevgep.i.i, i64 8
  %i.y = sub i64 %i.v, %.0117.i
  %i.z = shl nuw i64 %i.y, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.i, ptr align 8 %scevgep25.i.i, i64 %i.z, i1 false), !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %.preheader.i.i
  store i64 %i.v, ptr %i.o, align 8, !tbaa !29
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %_Py_NewRef.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %2, align 8, !tbaa !28
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.r, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.0117.i
  store ptr %2, ptr %i.ae, align 8, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit.i.i, %._crit_edge.i.i
  %i.af = load i32, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i.i, label %bb.k, label %list_ass_subscript_lock_held.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !28
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %list_ass_subscript_lock_held.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #13, !inline_history !168
  br label %list_ass_subscript_lock_held.exit

_PyIndex_Check.exit.thread.i:                     ; preds = %_PyIndex_Check.exit.i, %bb.a
  %.not.i = icmp eq ptr %.val176.i, @PySlice_Type
  br i1 %.not.i, label %bb.m, label %bb.bl

bb.m:                                             ; preds = %_PyIndex_Check.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ai = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13, !inline_history !168
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %Py_DECREF.exit149.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = icmp eq ptr %2, null
  br i1 %i.ak, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.am = getelementptr i8, ptr %0, i64 16        ; 5 uses
  %.val178.i = load i64, ptr %i.am, align 8, !tbaa !29
  %i.an = call i64 @PySlice_AdjustIndices(i64 noundef %.val178.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.al) #13, !inline_history !168 ; 7 uses
  %i.ao = icmp slt i64 %i.al, 0
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.s, label %adjust_slice_indexes.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i181.i = icmp eq i64 %i.al, 0
  br i1 %.not.i181.i, label %adjust_slice_indexes.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !51
  %i.au = icmp sgt i64 %i.as, %i.at
  br i1 %i.au, label %bb.s, label %adjust_slice_indexes.exit.i

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.av = phi i64 [ %i.as, %bb.r ], [ %i.ap, %bb.p ]
  store i64 %i.av, ptr %i.b, align 8, !tbaa !51
  br label %adjust_slice_indexes.exit.i

adjust_slice_indexes.exit.i:                      ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !51  ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %adjust_slice_indexes.exit.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !51
  %i.az = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ba = call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef null), !inline_history !168
  br label %Py_DECREF.exit149.i

bb.u:                                             ; preds = %adjust_slice_indexes.exit.i
  %i.bb = icmp slt i64 %i.an, 1
  br i1 %i.bb, label %Py_DECREF.exit149.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = icmp slt i64 %i.aw, 0
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.b, align 8, !tbaa !51
  %i.bf = add nsw i64 %i.an, -1
  %i.bg = mul i64 %i.aw, %i.bf
  %i.bh = add i64 %i.bd, %i.bg
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !51
  %i.bi = sub i64 0, %i.aw
  store i64 %i.bi, ptr %i.c, align 8, !tbaa !51
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = shl i64 %i.an, 3
  %i.bk = call ptr @PyMem_Malloc(i64 noundef %i.bj) #13, !inline_history !168 ; 4 uses
  %.not137.i = icmp eq ptr %i.bk, null
  br i1 %.not137.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = call ptr @PyErr_NoMemory() #13, !inline_history !168 ; 0 uses
  br label %Py_DECREF.exit149.i

bb.z:                                             ; preds = %bb.x
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !51
  %i.bo = icmp ult i64 %i.bm, %i.bn
  %.pre207.i = load i64, ptr %i.c, align 8, !tbaa !51 ; 2 uses
  br i1 %i.bo, label %.lr.ph196.i, label %._crit_edge197.i

.lr.ph196.i:                                      ; preds = %bb.z
  %i.bp = getelementptr i8, ptr %0, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph196.i
  %i.bq = phi i64 [ %.pre207.i, %.lr.ph196.i ], [ %i.cd, %bb.aa ] ; 2 uses
  %.0114194.i = phi i64 [ 0, %.lr.ph196.i ], [ %i.cf, %bb.aa ] ; 3 uses
  %.0116193.i = phi i64 [ %i.bm, %.lr.ph196.i ], [ %i.ce, %bb.aa ] ; 4 uses
  %i.br = add i64 %i.bq, 2305843009213693951
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !21
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.0116193.i ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.bv = getelementptr [8 x i8], ptr %i.bk, i64 %.0114194.i
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !50
  %i.bw = add i64 %.0116193.i, %i.bq
  %.val163.i = load i64, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %.not138.i = icmp ult i64 %i.bw, %.val163.i
  %i.bx = xor i64 %.0116193.i, -1
  %i.by = add i64 %.val163.i, %i.bx
  %.0113.i = select i1 %.not138.i, i64 %i.br, i64 %i.by
  %i.bz = sub i64 0, %.0114194.i
  %i.ca = getelementptr [8 x i8], ptr %i.bt, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bt, i64 8
  %i.cc = shl i64 %.0113.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.cb, i64 %i.cc, i1 false)
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.ce = add i64 %i.cd, %.0116193.i              ; 2 uses
  %i.cf = add i64 %.0114194.i, 1
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ch = icmp ult i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.aa, label %._crit_edge197.loopexit.i, !llvm.loop !169

._crit_edge197.loopexit.i:                        ; preds = %bb.aa
  %.pre206.i = load i64, ptr %i.a, align 8, !tbaa !51
  br label %._crit_edge197.i

._crit_edge197.i:                                 ; preds = %._crit_edge197.loopexit.i, %bb.z
  %i.ci = phi i64 [ %i.cd, %._crit_edge197.loopexit.i ], [ %.pre207.i, %bb.z ]
  %i.cj = phi i64 [ %.pre206.i, %._crit_edge197.loopexit.i ], [ %i.bm, %bb.z ]
  %i.ck = mul i64 %i.ci, %i.an
  %i.cl = add i64 %i.ck, %i.cj                    ; 3 uses
  %.val161.i = load i64, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %.val161.i
  br i1 %i.cm, label %bb.ab, label %.lr.ph200.preheader.i

bb.ab:                                            ; preds = %._crit_edge197.i
  %i.cn = getelementptr i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !21
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %i.cq = sub nsw i64 0, %i.an
  %i.cr = getelementptr [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = sub nuw i64 %.val161.i, %i.cl
  %i.ct = shl i64 %i.cs, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cr, ptr align 8 %i.cp, i64 %i.ct, i1 false)
  %.val159.pre.i = load i64, ptr %i.am, align 8, !tbaa !29
  br label %.lr.ph200.preheader.i

.lr.ph200.preheader.i:                            ; preds = %bb.ab, %._crit_edge197.i
  %.val159.i = phi i64 [ %.val159.pre.i, %bb.ab ], [ %.val161.i, %._crit_edge197.i ]
  %i.cu = sub i64 %.val159.i, %i.an               ; 2 uses
  store i64 %i.cu, ptr %i.am, align 8, !tbaa !29
  %i.cv = call fastcc i32 @list_resize(ptr noundef nonnull %0, i64 noundef %i.cu), !inline_history !168
  br label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %Py_DECREF.exit151.i, %.lr.ph200.preheader.i
  %.1115198.i = phi i64 [ %i.db, %Py_DECREF.exit151.i ], [ 0, %.lr.ph200.preheader.i ] ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.bk, i64 %.1115198.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %.not.i150.i = icmp sgt i32 %i.cy, -1
  br i1 %.not.i150.i, label %bb.ac, label %Py_DECREF.exit151.i

bb.ac:                                            ; preds = %.lr.ph200.i
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !28
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %Py_DECREF.exit151.i

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #13, !inline_history !168
  br label %Py_DECREF.exit151.i

Py_DECREF.exit151.i:                              ; preds = %bb.ad, %bb.ac, %.lr.ph200.i
  %i.db = add nuw nsw i64 %.1115198.i, 1          ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.db, %i.an
  br i1 %exitcond203.not.i, label %._crit_edge201.i, label %.lr.ph200.i, !llvm.loop !170

._crit_edge201.i:                                 ; preds = %Py_DECREF.exit151.i
  call void @PyMem_Free(ptr noundef nonnull %i.bk) #13, !inline_history !168
  br label %Py_DECREF.exit149.i

bb.ae:                                            ; preds = %bb.n
  %i.dc = icmp eq ptr %0, %2
  br i1 %i.dc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr i8, ptr %2, i64 16
  %.val.i = load i64, ptr %i.dd, align 8, !tbaa !29
  %i.de = call fastcc ptr @list_slice_lock_held(ptr noundef nonnull %2, i64 noundef 0, i64 noundef %.val.i), !inline_history !168
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.df = call ptr @PySequence_Fast(ptr noundef nonnull %2, ptr noundef nonnull @.str.15) #13, !inline_history !168
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0112.i = phi ptr [ %i.de, %bb.af ], [ %i.df, %bb.ag ] ; 21 uses
  %.not130.i = icmp eq ptr %.0112.i, null
  br i1 %.not130.i, label %Py_DECREF.exit149.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.dh = getelementptr i8, ptr %0, i64 16
  %.val177.i = load i64, ptr %i.dh, align 8, !tbaa !29
  %i.di = call i64 @PySlice_AdjustIndices(i64 noundef %.val177.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.dg) #13, !inline_history !168 ; 7 uses
  %i.dj = icmp slt i64 %i.dg, 0
  br i1 %i.dj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !51
  %i.dm = icmp slt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.am, label %adjust_slice_indexes.exit183.i

bb.ak:                                            ; preds = %bb.ai
  %.not.i182.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i182.i, label %adjust_slice_indexes.exit183.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.do = load i64, ptr %i.b, align 8, !tbaa !51
  %i.dp = icmp sgt i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.am, label %adjust_slice_indexes.exit183.i

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.dq = phi i64 [ %i.dn, %bb.al ], [ %i.dk, %bb.aj ]
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !51
  br label %adjust_slice_indexes.exit183.i

adjust_slice_indexes.exit183.i:                   ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !51
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %adjust_slice_indexes.exit183.i
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !51
  %i.du = load i64, ptr %i.b, align 8, !tbaa !51
  %i.dv = call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %i.dt, i64 noundef %i.du, ptr noundef nonnull %.0112.i), !inline_history !168 ; 3 uses
  %i.dw = load i32, ptr %.0112.i, align 8, !tbaa !28 ; 2 uses
  %.not.i148.i = icmp sgt i32 %i.dw, -1
  br i1 %.not.i148.i, label %bb.ao, label %Py_DECREF.exit149.i

bb.ao:                                            ; preds = %bb.an
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %.0112.i, align 8, !tbaa !28
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ap, label %Py_DECREF.exit149.i

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %.0112.i) #13, !inline_history !168
  br label %Py_DECREF.exit149.i

bb.aq:                                            ; preds = %adjust_slice_indexes.exit183.i
  %i.dz = getelementptr i8, ptr %.0112.i, i64 8
  %i.ea = getelementptr i8, ptr %.0112.i, i64 16
  %.0112.val175.i = load i64, ptr %i.ea, align 8, !tbaa !29 ; 2 uses
  %.not132.i = icmp eq i64 %.0112.val175.i, %i.di
  br i1 %.not132.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !50
  %i.ec = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.eb, ptr noundef nonnull @.str.16, i64 noundef %.0112.val175.i, i64 noundef %i.di) #13, !inline_history !168 ; 0 uses
  %i.ed = load i32, ptr %.0112.i, align 8, !tbaa !28 ; 2 uses
  %.not.i146.i = icmp sgt i32 %i.ed, -1
  br i1 %.not.i146.i, label %bb.as, label %Py_DECREF.exit149.i

bb.as:                                            ; preds = %bb.ar
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %.0112.i, align 8, !tbaa !28
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.at, label %Py_DECREF.exit149.i

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %.0112.i) #13, !inline_history !168
  br label %Py_DECREF.exit149.i

bb.au:                                            ; preds = %bb.aq
  %.not133.i = icmp eq i64 %i.di, 0
  br i1 %.not133.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.eg = load i32, ptr %.0112.i, align 8, !tbaa !28 ; 2 uses
  %.not.i144.i = icmp sgt i32 %i.eg, -1
  br i1 %.not.i144.i, label %bb.aw, label %Py_DECREF.exit149.i

bb.aw:                                            ; preds = %bb.av
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %.0112.i, align 8, !tbaa !28
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ax, label %Py_DECREF.exit149.i

bb.ax:                                            ; preds = %bb.aw
  call void @_Py_Dealloc(ptr noundef nonnull %.0112.i) #13, !inline_history !168
  br label %Py_DECREF.exit149.i

bb.ay:                                            ; preds = %bb.au
  %i.ej = shl i64 %i.di, 3
  %i.ek = call ptr @PyMem_Malloc(i64 noundef %i.ej) #13, !inline_history !168 ; 4 uses
  %.not134.i = icmp eq ptr %i.ek, null
  br i1 %.not134.i, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.el = load i32, ptr %.0112.i, align 8, !tbaa !28 ; 2 uses
  %.not.i142.i = icmp sgt i32 %i.el, -1
  br i1 %.not.i142.i, label %bb.ba, label %Py_DECREF.exit143.i

bb.ba:                                            ; preds = %bb.az
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %.0112.i, align 8, !tbaa !28
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bb, label %Py_DECREF.exit143.i

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.0112.i) #13, !inline_history !168
  br label %Py_DECREF.exit143.i

Py_DECREF.exit143.i:                              ; preds = %bb.bb, %bb.ba, %bb.az
  %i.eo = call ptr @PyErr_NoMemory() #13, !inline_history !168 ; 0 uses
  br label %Py_DECREF.exit149.i

bb.bc:                                            ; preds = %bb.ay
  %i.ep = getelementptr i8, ptr %0, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %.0112.val167.i = load ptr, ptr %i.dz, align 8, !tbaa !42
  %i.er = getelementptr i8, ptr %.0112.val167.i, i64 168
  %.val171.i = load i64, ptr %i.er, align 8, !tbaa !43
  %i.es = and i64 %.val171.i, 33554432
  %.not135.i = icmp eq i64 %i.es, 0
  br i1 %.not135.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr i8, ptr %.0112.i, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !21
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ev = getelementptr i8, ptr %.0112.i, i64 32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ew = phi ptr [ %i.eu, %bb.bd ], [ %i.ev, %bb.be ]
  %i.ex = icmp sgt i64 %i.di, 0
  br i1 %i.ex, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !51
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit.i, %.lr.ph.preheader.i
  %.0109190.i = phi i64 [ %i.fi, %_Py_NewRef.exit.i ], [ %i.ey, %.lr.ph.preheader.i ] ; 2 uses
  %.0110189.i = phi i64 [ %i.fj, %_Py_NewRef.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ez = getelementptr [8 x i8], ptr %i.eq, i64 %.0109190.i ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = getelementptr [8 x i8], ptr %i.ek, i64 %.0110189.i
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !50
  %i.fc = getelementptr [8 x i8], ptr %i.ew, i64 %.0110189.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !50 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !28 ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, -1073741825
  br i1 %i.ff, label %_Py_NewRef.exit.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i
  %i.fg = add nuw i32 %i.fe, 1
  store i32 %i.fg, ptr %i.fd, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.bg, %.lr.ph.i
  store ptr %i.fd, ptr %i.ez, align 8, !tbaa !50
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !51
  %i.fi = add i64 %i.fh, %.0109190.i
  %i.fj = add nuw nsw i64 %.0110189.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fj, %i.di
  br i1 %exitcond.not.i, label %.lr.ph192.i, label %.lr.ph.i, !llvm.loop !171

.lr.ph192.i:                                      ; preds = %_Py_NewRef.exit.i, %Py_DECREF.exit141.i
  %.1111191.i = phi i64 [ %i.fp, %Py_DECREF.exit141.i ], [ 0, %_Py_NewRef.exit.i ] ; 2 uses
  %i.fk = getelementptr [8 x i8], ptr %i.ek, i64 %.1111191.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !50 ; 3 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !28 ; 2 uses
  %.not.i140.i = icmp sgt i32 %i.fm, -1
  br i1 %.not.i140.i, label %bb.bh, label %Py_DECREF.exit141.i

bb.bh:                                            ; preds = %.lr.ph192.i
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 8, !tbaa !28
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.bi, label %Py_DECREF.exit141.i

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.fl) #13, !inline_history !168
  br label %Py_DECREF.exit141.i

Py_DECREF.exit141.i:                              ; preds = %bb.bi, %bb.bh, %.lr.ph192.i
  %i.fp = add nuw nsw i64 %.1111191.i, 1          ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.fp, %i.di
  br i1 %exitcond202.not.i, label %._crit_edge.i, label %.lr.ph192.i, !llvm.loop !172

._crit_edge.i:                                    ; preds = %Py_DECREF.exit141.i, %bb.bf
  call void @PyMem_Free(ptr noundef nonnull %i.ek) #13, !inline_history !168
  %i.fq = load i32, ptr %.0112.i, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fq, -1
  br i1 %.not.i.i, label %bb.bj, label %Py_DECREF.exit149.i

bb.bj:                                            ; preds = %._crit_edge.i
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %.0112.i, align 8, !tbaa !28
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bk, label %Py_DECREF.exit149.i

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %.0112.i) #13, !inline_history !168
  br label %Py_DECREF.exit149.i

Py_DECREF.exit149.i:                              ; preds = %bb.bk, %bb.bj, %._crit_edge.i, %Py_DECREF.exit143.i, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.ah, %._crit_edge201.i, %bb.y, %bb.u, %bb.t, %bb.m
  %.4.i = phi i32 [ 0, %bb.u ], [ -1, %bb.m ], [ %i.ba, %bb.t ], [ -1, %bb.y ], [ %i.cv, %._crit_edge201.i ], [ -1, %bb.ah ], [ -1, %bb.at ], [ %i.dv, %bb.ap ], [ 0, %bb.ax ], [ -1, %Py_DECREF.exit143.i ], [ %i.dv, %bb.an ], [ %i.dv, %bb.ao ], [ -1, %bb.ar ], [ -1, %bb.as ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %._crit_edge.i ], [ 0, %bb.bj ], [ 0, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %list_ass_subscript_lock_held.exit

bb.bl:                                            ; preds = %_PyIndex_Check.exit.thread.i
  %i.ft = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !50
  %i.fu = getelementptr i8, ptr %.val176.i, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !153
  %i.fw = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ft, ptr noundef nonnull @.str.14, ptr noundef %i.fv) #13, !inline_history !168 ; 0 uses
  br label %list_ass_subscript_lock_held.exit

list_ass_subscript_lock_held.exit:                ; preds = %bb.c, %bb.f, %bb.j, %bb.k, %bb.l, %Py_DECREF.exit149.i, %bb.bl
  %.5.i = phi i32 [ -1, %bb.bl ], [ %.4.i, %Py_DECREF.exit149.i ], [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  ret i32 %.5.i
}

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @list___reversed__(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @PyListRevIter_Type) #13, !inline_history !173 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %list___reversed___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !29
  %i.d = add i64 %.val.i, -1
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %i.e, align 8, !tbaa !113
  %i.f = load i32, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %0, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.i, align 8, !tbaa !115
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #13, !inline_history !173
  br label %list___reversed___impl.exit

list___reversed___impl.exit:                      ; preds = %bb.a, %_Py_NewRef.exit.i
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @list___sizeof__(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %.val, i64 32
  %.val.val = load i64, ptr %i.c, align 8, !tbaa !174
  %i.d = shl i64 %.val1, 3
  %i.e = add i64 %i.d, %.val.val
  %i.f = tail call ptr @PyLong_FromSize_t(i64 noundef %i.e) #13
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @py_list_clear(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %py_list_clear_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !29
  %i.e = add i64 %.val.i.i.i, -1                  ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %i.f, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %Py_XDECREF.exit.i.i.i
  %i.g = phi i64 [ %i.m, %Py_XDECREF.exit.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %Py_XDECREF.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %Py_XDECREF.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %Py_XDECREF.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13
  br label %Py_XDECREF.exit.i.i.i

Py_XDECREF.exit.i.i.i:                            ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.m = add nsw i64 %i.g, -1
  %i.n = icmp sgt i64 %i.g, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %Py_XDECREF.exit.i.i.i, %bb.b
  tail call void @PyMem_Free(ptr noundef nonnull %i.b) #13
  br label %py_list_clear_impl.exit

py_list_clear_impl.exit:                          ; preds = %bb.a, %._crit_edge.i.i.i
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @list_copy(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.b = tail call fastcc ptr @list_slice_lock_held(ptr noundef readonly %0, i64 noundef 0, i64 noundef %.val.i), !inline_history !175
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_append(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %_Py_NewRef.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %1, align 8, !tbaa !28
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !tbaa !29 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp sgt i64 %i.f, %.val.i.i
  br i1 %i.g, label %_PyList_AppendTakeRef.exit.thread.i, label %_PyList_AppendTakeRef.exit.i

_PyList_AppendTakeRef.exit.thread.i:              ; preds = %_Py_NewRef.exit.i
  %i.h = getelementptr i8, ptr %0, i64 24
  %.val12.i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr [8 x i8], ptr %.val12.i.i, i64 %.val.i.i
  store ptr %1, ptr %i.i, align 8, !tbaa !50
  %i.j = add nsw i64 %.val.i.i, 1
  store i64 %i.j, ptr %i.d, align 8, !tbaa !29
  br label %list_append_impl.exit

_PyList_AppendTakeRef.exit.i:                     ; preds = %_Py_NewRef.exit.i
  %i.k = tail call i32 @_PyList_AppendTakeRefListResize(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.fr.i = freeze i32 %i.k
  %i.l = icmp slt i32 %.fr.i, 0
  %spec.select.i = select i1 %i.l, ptr null, ptr @_Py_NoneStruct
  br label %list_append_impl.exit

list_append_impl.exit:                            ; preds = %_PyList_AppendTakeRef.exit.thread.i, %_PyList_AppendTakeRef.exit.i
  %i.m = phi ptr [ @_Py_NoneStruct, %_PyList_AppendTakeRef.exit.thread.i ], [ %spec.select.i, %_PyList_AppendTakeRef.exit.i ]
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal ptr @list_insert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.24, i64 noundef %2, i64 noundef 2, i64 noundef 2) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !50
  %i.c = tail call ptr @_PyNumber_Index(ptr noundef %i.b) #13 ; 5 uses
  %.not21 = icmp eq ptr %i.c, null
  br i1 %.not21, label %Py_DECREF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !28
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %Py_DECREF.exit.thread, label %bb.g

Py_DECREF.exit.thread:                            ; preds = %bb.c, %Py_DECREF.exit
  %i.i = tail call ptr @PyErr_Occurred() #13
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01624.ph = phi i64 [ %i.d, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = tail call fastcc i32 @ins1(ptr noundef %0, i64 noundef %.01624.ph, ptr noundef %i.k)
  %i.m = icmp eq i32 %i.l, 0
  %_Py_NoneStruct..i = select i1 %i.m, ptr @_Py_NoneStruct, ptr null
  br label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit.thread, %bb.g, %bb.b
  %.018 = phi ptr [ %_Py_NoneStruct..i, %bb.g ], [ null, %bb.b ], [ null, %Py_DECREF.exit.thread ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @list_pop(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.26, i64 noundef %2, i64 noundef 0, i64 noundef 1) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %list_pop_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !50
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #13 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #13 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit.thread, label %.thread

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.j = tail call ptr @PyErr_Occurred() #13
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %.thread, label %list_pop_impl.exit

.thread:                                          ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.c
  %.1 = phi i64 [ -1, %bb.c ], [ %i.e, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %.val33.i = load i64, ptr %i.k, align 8, !tbaa !29 ; 7 uses
  %i.l = icmp eq i64 %.val33.i, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.m = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.35) #13
  br label %list_pop_impl.exit

bb.i:                                             ; preds = %.thread
  %i.n = icmp slt i64 %.1, 0
  %i.o = select i1 %i.n, i64 %.val33.i, i64 0
  %spec.select.i = add i64 %i.o, %.1              ; 4 uses
  %.not.i22 = icmp ult i64 %spec.select.i, %.val33.i
  br i1 %.not.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.36) #13
  br label %list_pop_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %spec.select.i ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 8 uses
  %i.u = icmp eq i64 %.val33.i, 1
  br i1 %i.u, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %Py_INCREF.exit.thread.i.thread, label %Py_INCREF.exit.i

Py_INCREF.exit.thread.i.thread:                   ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.preheader

Py_INCREF.exit.i:                                 ; preds = %bb.l
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %i.t, align 8, !tbaa !28
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !21 ; 3 uses
  %i.y = icmp eq ptr %.pre.i, null
  br i1 %i.y, label %list_pop_impl.exit, label %Py_INCREF.exit.thread.i

Py_INCREF.exit.thread.i:                          ; preds = %Py_INCREF.exit.i
  %.val.i.i.i.pre = load i64, ptr %i.k, align 8, !tbaa !29
  %i.z = add i64 %.val.i.i.i.pre, -1              ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %i.aa, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %Py_INCREF.exit.thread.i.thread, %Py_INCREF.exit.thread.i
  %i.ab = phi ptr [ %i.r, %Py_INCREF.exit.thread.i.thread ], [ %.pre.i, %Py_INCREF.exit.thread.i ] ; 2 uses
  %.val.i.i.i40 = phi i64 [ 0, %Py_INCREF.exit.thread.i.thread ], [ %i.z, %Py_INCREF.exit.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %Py_XDECREF.exit.i.i.i
  %i.ac = phi i64 [ %i.ai, %Py_XDECREF.exit.i.i.i ], [ %.val.i.i.i40, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %Py_XDECREF.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i.i.i.i, label %bb.n, label %Py_XDECREF.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !28
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_XDECREF.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #13
  br label %Py_XDECREF.exit.i.i.i

Py_XDECREF.exit.i.i.i:                            ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i.i.i
  %i.ai = add nsw i64 %i.ac, -1
  %i.aj = icmp sgt i64 %i.ac, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %Py_XDECREF.exit.i.i.i, %Py_INCREF.exit.thread.i
  %i.ak = phi ptr [ %.pre.i, %Py_INCREF.exit.thread.i ], [ %i.ab, %Py_XDECREF.exit.i.i.i ]
  tail call void @PyMem_Free(ptr noundef nonnull %i.ak) #13
  br label %list_pop_impl.exit

bb.p:                                             ; preds = %bb.k
  %i.al = add i64 %.val33.i, -1                   ; 11 uses
  %i.am = icmp slt i64 %spec.select.i, %i.al
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %i.s, i64 8
  %i.ao = sub i64 %i.al, %spec.select.i
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr readonly align 8 %i.an, i64 %i.ap, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp slt i64 %i.ar, %i.al
  %i.as = ashr i64 %i.ar, 1
  %.not36.i.i = icmp slt i64 %i.al, %i.as
  %or.cond.i.i = or i1 %.not.i.i, %.not36.i.i
  br i1 %or.cond.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.al, ptr %i.k, align 8, !tbaa !29
  br label %list_pop_impl.exit

bb.t:                                             ; preds = %bb.r
  %i.at = ashr i64 %i.al, 3
  %i.au = add i64 %.val33.i, 5
  %i.av = add i64 %i.au, %i.at
  %i.aw = and i64 %i.av, -4                       ; 2 uses
  %.val.i.i = load i64, ptr %i.k, align 8, !tbaa !29
  %i.ax = sub i64 %i.al, %.val.i.i
  %i.ay = sub i64 %i.aw, %i.al
  %i.az = icmp sgt i64 %i.ax, %i.ay
  %i.ba = add i64 %.val33.i, 2
  %i.bb = and i64 %i.ba, -4
  %.031.i.i = select i1 %i.az, i64 %i.bb, i64 %i.aw ; 3 uses
  %i.bc = icmp ult i64 %.031.i.i, 1152921504606846976
  br i1 %i.bc, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bd = shl nuw nsw i64 %.031.i.i, 3
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.bf = tail call ptr @PyMem_Realloc(ptr noundef %i.be, i64 noundef %i.bd) #13 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread.i.i, label %bb.x

.thread.i.i:                                      ; preds = %bb.u, %bb.t
  %i.bh = icmp slt i64 %i.al, %i.ar
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread.i.i
  store i64 %i.al, ptr %i.k, align 8, !tbaa !29
  br label %list_pop_impl.exit

bb.w:                                             ; preds = %.thread.i.i
  %i.bi = tail call ptr @PyErr_NoMemory() #13     ; 0 uses
  br label %list_pop_impl.exit

bb.x:                                             ; preds = %bb.u
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !21
  store i64 %i.al, ptr %i.k, align 8, !tbaa !29
  store i64 %.031.i.i, ptr %i.aq, align 8, !tbaa !30
  br label %list_pop_impl.exit

list_pop_impl.exit:                               ; preds = %bb.x, %bb.w, %bb.v, %bb.s, %._crit_edge.i.i.i, %Py_INCREF.exit.i, %bb.j, %bb.h, %Py_DECREF.exit.thread, %bb.b
  %.017 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.j ], [ %i.t, %._crit_edge.i.i.i ], [ %i.t, %Py_INCREF.exit.i ], [ %i.t, %bb.s ], [ %i.t, %bb.v ], [ %i.t, %bb.w ], [ %i.t, %bb.x ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @list_remove(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val22.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.b = icmp sgt i64 %.val22.i, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.01524.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.01524.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %Py_INCREF.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.c, %bb.b
  %i.j = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef 2) #13 ; 2 uses
  %i.k = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %Py_INCREF.exit.i
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.e, %bb.d, %Py_INCREF.exit.i
  %i.n = icmp sgt i32 %i.j, 0
  br i1 %i.n, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %Py_DECREF.exit.i
  %i.o = add nuw nsw i64 %.01524.i, 1
  %i.p = tail call fastcc i32 @list_ass_slice_lock_held(ptr noundef nonnull %0, i64 noundef %.01524.i, i64 noundef %i.o, ptr noundef null)
  %i.q = icmp eq i32 %i.p, 0
  %_Py_NoneStruct..i = select i1 %i.q, ptr @_Py_NoneStruct, ptr null
  br label %list_remove_impl.exit

bb.f:                                             ; preds = %Py_DECREF.exit.i
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %list_remove_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.r = add nuw nsw i64 %.01524.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.s = icmp slt i64 %i.r, %.val.i
  br i1 %i.s, label %bb.b, label %._crit_edge.i, !llvm.loop !176

._crit_edge.i:                                    ; preds = %bb.g, %bb.a
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.37) #13
  br label %list_remove_impl.exit

list_remove_impl.exit:                            ; preds = %bb.f, %.thread.i, %._crit_edge.i
  %.2.i = phi ptr [ %_Py_NoneStruct..i, %.thread.i ], [ null, %._crit_edge.i ], [ null, %bb.f ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @list_index(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !51
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef 1, i64 noundef 3) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %list_index_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !50
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.h, ptr noundef nonnull %i.a) #13
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %list_index_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #13
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %list_index_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ] ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val36.i = load i64, ptr %i.q, align 8, !tbaa !29
  %i.r = add i64 %.val36.i, %i.o
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i = phi i64 [ %spec.store.select.i, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = icmp slt i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !29
  %i.u = add i64 %.val.i, %i.n
  %spec.store.select1.i = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.025.i = phi i64 [ %spec.store.select1.i, %bb.j ], [ %i.n, %bb.i ] ; 2 uses
  %i.v = icmp samesign ult i64 %.026.i, %.025.i
  br i1 %i.v, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = getelementptr i8, ptr %0, i64 24
  br label %bb.l

bb.l:                                             ; preds = %list_get_item_ref.exit.i, %.lr.ph.i
  %.02452.i = phi i64 [ %.026.i, %.lr.ph.i ], [ %i.al, %list_get_item_ref.exit.i ] ; 4 uses
  %.val.i.i = load i64, ptr %i.w, align 8, !tbaa !29
  %.not.i37.i = icmp ult i64 %.02452.i, %.val.i.i
  br i1 %.not.i37.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.02452.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.aa, ptr noundef %i.e, i32 noundef 2) #13 ; 2 uses
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !28
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %Py_DECREF.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #13
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.o
  %i.ai = icmp sgt i32 %i.ae, 0
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %Py_DECREF.exit.i
  %i.aj = call ptr @PyLong_FromSsize_t(i64 noundef %.02452.i) #13
  br label %list_index_impl.exit

bb.s:                                             ; preds = %Py_DECREF.exit.i
  %i.ak = icmp slt i32 %i.ae, 0
  br i1 %i.ak, label %list_index_impl.exit, label %list_get_item_ref.exit.i

list_get_item_ref.exit.i:                         ; preds = %bb.s
  %i.al = add nuw nsw i64 %.02452.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.025.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.l, !llvm.loop !177

.thread.i:                                        ; preds = %list_get_item_ref.exit.i, %bb.l, %bb.k
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !50
  call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.38) #13
  br label %list_index_impl.exit

list_index_impl.exit:                             ; preds = %bb.s, %.thread.i, %bb.r, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %.thread.i ], [ %i.aj, %bb.r ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @list_count(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val.i42.i = load i64, ptr %i.a, align 8, !tbaa !29
  %.not.i3043.not.i = icmp eq i64 %.val.i42.i, 0
  br i1 %.not.i3043.not.i, label %list_get_item_ref.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.lr.ph.i
  %.01745.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.m ] ; 2 uses
  %.01844.i = phi i64 [ 0, %.lr.ph.i ], [ %.3.ph.i, %bb.m ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.01745.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = icmp eq ptr %i.e, %1
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %.01844.i, 1                     ; 3 uses
  %.not.i27.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i27.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  %i.n = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef 2) #13 ; 2 uses
  %i.o = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.e, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.j, %bb.i, %bb.h
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit.i
  %i.s = add i64 %.01844.i, 1
  br label %bb.m

bb.l:                                             ; preds = %Py_DECREF.exit.i
  %i.t = icmp slt i32 %i.n, 0
  br i1 %i.t, label %list_count_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.e
  %.3.ph.i = phi i64 [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %.01844.i, %bb.l ], [ %i.s, %bb.k ] ; 2 uses
  %i.u = add nuw i64 %.01745.i, 1                 ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !29
  %.not.i30.i = icmp ult i64 %i.u, %.val.i.i
  br i1 %.not.i30.i, label %bb.b, label %list_get_item_ref.exit.i

list_get_item_ref.exit.i:                         ; preds = %bb.m, %bb.a
  %.018.lcssa.i = phi i64 [ 0, %bb.a ], [ %.3.ph.i, %bb.m ]
  %i.v = tail call ptr @PyLong_FromSsize_t(i64 noundef %.018.lcssa.i) #13
  br label %list_count_impl.exit

list_count_impl.exit:                             ; preds = %bb.l, %list_get_item_ref.exit.i
  %.323.i = phi ptr [ %i.v, %list_get_item_ref.exit.i ], [ null, %bb.l ]
  ret ptr %.323.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @list_reverse(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp sgt i64 %.val4.i, 1
  br i1 %i.b, label %bb.b, label %list_reverse_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.val4.i
  %.01011.i.i = getelementptr i8, ptr %i.e, i64 -8 ; 2 uses
  %i.f = icmp ult ptr %i.d, %.01011.i.i
  br i1 %i.f, label %.lr.ph.i.i, label %list_reverse_impl.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %.010.i.i, %.lr.ph.i.i ], [ %.01011.i.i, %bb.b ] ; 3 uses
  %.012.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.012.i.i, align 8, !tbaa !50
  %i.h = load ptr, ptr %.01013.i.i, align 8, !tbaa !50
  store ptr %i.h, ptr %.012.i.i, align 8, !tbaa !50
  store ptr %i.g, ptr %.01013.i.i, align 8, !tbaa !50
  %i.i = getelementptr i8, ptr %.012.i.i, i64 8   ; 2 uses
  %.010.i.i = getelementptr i8, ptr %.01013.i.i, i64 -8 ; 2 uses
  %i.j = icmp ult ptr %i.i, %.010.i.i
  br i1 %i.j, label %.lr.ph.i.i, label %list_reverse_impl.exit, !llvm.loop !86

list_reverse_impl.exit:                           ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @list_sort(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread40.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ] ; 2 uses
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @list_sort._parser, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #13 ; 3 uses
  %.not34 = icmp eq ptr %i.g, null
  br i1 %.not34, label %bb.g, label %.thread40

.thread40:                                        ; preds = %bb.c
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %.thread40.thread, label %bb.d

bb.d:                                             ; preds = %.thread40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq i64 %i.f, 1
  br i1 %.not37, label %.thread40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi ptr [ %i.h, %bb.e ], [ @_Py_NoneStruct, %bb.d ]
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = call i32 @PyObject_IsTrue(ptr noundef %i.j) #13 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.thread40.thread

.thread40.thread:                                 ; preds = %bb.b, %bb.f, %bb.e, %.thread40
  %.1 = phi ptr [ %.026, %bb.f ], [ %i.h, %bb.e ], [ @_Py_NoneStruct, %.thread40 ], [ @_Py_NoneStruct, %bb.b ]
  %.0 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.e ], [ 0, %.thread40 ], [ 0, %bb.b ]
  %i.m = call fastcc ptr @list_sort_impl(ptr noundef %0, ptr noundef %.1, i32 noundef %.0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %.thread40.thread
  %.027 = phi ptr [ null, %bb.f ], [ %i.m, %.thread40.thread ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.027
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare i32 @_PyEval_SliceIndexNotNone(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_NoKwnames(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @listiter_len(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !29
  %i.g = sub i64 %.val, %i.b                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.g) #13
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @PyLong_FromLong(i64 noundef 0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.1 = phi ptr [ %i.j, %.thread ], [ %i.i, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @listiter_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call ptr @_PyEval_GetBuiltin(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88752)) #13, !inline_history !178 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.44, ptr noundef %i.b, ptr noundef %i.f, i64 noundef %i.c) #13, !inline_history !178
  br label %listiter_reduce_general.exit

.thread.i:                                        ; preds = %bb.a
  %i.h = tail call ptr @PyList_New(i64 noundef 0), !inline_history !178 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread.i
  %i.j = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.d, label %listiter_reduce_general.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %listiter_reduce_general.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #13, !inline_history !178
  br label %listiter_reduce_general.exit

bb.f:                                             ; preds = %.thread.i
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef %i.b, ptr noundef nonnull %i.h) #13, !inline_history !178
  br label %listiter_reduce_general.exit

listiter_reduce_general.exit:                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.2.i = phi ptr [ null, %bb.e ], [ %i.m, %bb.f ], [ %i.g, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @listiter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #13 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not1315 = icmp eq ptr %i.g, null
  br i1 %.not1315, label %bb.f, label %.thread16

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.a, -1
  br i1 %i.h, label %bb.e, label %.thread16

.thread16:                                        ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %.thread ]
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val14 = load i64, ptr %i.j, align 8, !tbaa !29
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %.val14)
  br label %bb.e

bb.e:                                             ; preds = %.thread16, %bb.d
  %.0 = phi i64 [ %spec.select, %.thread16 ], [ -1, %bb.d ]
  %i.k = getelementptr i8, ptr %0, i64 16
  store i64 %.0, ptr %i.k, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.010
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @_PyEval_GetBuiltin(ptr noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @listreviter_len(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !113
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !29
  %i.h = icmp slt i64 %.val, %i.f
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ %i.f, %bb.b ]
  %i.i = tail call ptr @PyLong_FromSsize_t(i64 noundef %.0) #13
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @listreviter_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call ptr @_PyEval_GetBuiltin(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98152)) #13, !inline_history !178 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.44, ptr noundef %i.b, ptr noundef %i.f, i64 noundef %i.c) #13, !inline_history !178
  br label %listiter_reduce_general.exit

.thread.i:                                        ; preds = %bb.a
  %i.h = tail call ptr @PyList_New(i64 noundef 0), !inline_history !178 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.thread.i
  %i.j = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.d, label %listiter_reduce_general.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %listiter_reduce_general.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #13, !inline_history !178
  br label %listiter_reduce_general.exit

bb.f:                                             ; preds = %.thread.i
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef %i.b, ptr noundef nonnull %i.h) #13, !inline_history !178
  br label %listiter_reduce_general.exit

listiter_reduce_general.exit:                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.2.i = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.f ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @listreviter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #13 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not1315 = icmp eq ptr %i.g, null
  br i1 %.not1315, label %bb.f, label %.thread16

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.a, -1
  br i1 %i.h, label %bb.e, label %.thread16

.thread16:                                        ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %.thread ]
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val14 = load i64, ptr %i.j, align 8, !tbaa !29
  %i.k = add i64 %.val14, -1
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.k)
  br label %bb.e

bb.e:                                             ; preds = %.thread16, %bb.d
  %.0 = phi i64 [ %spec.select, %.thread16 ], [ -1, %bb.d ]
  %i.l = getelementptr i8, ptr %0, i64 16
  store i64 %.0, ptr %i.l, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.010
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !17, i64 376}
!15 = !{!"_Py_freelists", !16, i64 0, !16, i64 16, !16, i64 32, !9, i64 48, !16, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !16, i64 432, !16, i64 448, !16, i64 464, !16, i64 480, !16, i64 496, !16, i64 512, !16, i64 528, !16, i64 544, !16, i64 560, !16, i64 576, !16, i64 592, !16, i64 608, !16, i64 624, !16, i64 640}
!16 = !{!"_Py_freelist", !13, i64 0, !17, i64 8}
!17 = !{!"long", !9, i64 0}
!18 = !{!16, !13, i64 0}
!19 = !{!13, !13, i64 0}
!20 = !{!16, !17, i64 8}
!21 = !{!22, !26, i64 24}
!22 = !{!"", !23, i64 0, !26, i64 24, !17, i64 32}
!23 = !{!"PyVarObject", !24, i64 0, !17, i64 16}
!24 = !{!"_object", !9, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!26 = !{!"p2 _ZTS7_object", !27, i64 0}
!27 = !{!"any p2 pointer", !13, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!23, !17, i64 16}
!30 = !{!22, !17, i64 32}
!31 = !{!32, !17, i64 8}
!32 = !{!"", !17, i64 0, !17, i64 8}
!33 = !{!32, !17, i64 0}
!34 = !{!35, !8, i64 272}
!35 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !36, i64 8, !9, i64 32, !36, i64 80, !9, i64 104, !8, i64 224, !37, i64 232, !38, i64 240, !38, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!36 = !{!"gc_generation", !32, i64 0, !8, i64 16, !8, i64 20}
!37 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!38 = !{!"p1 _ZTS7_object", !13, i64 0}
!39 = !{!35, !8, i64 28}
!40 = !{!35, !17, i64 256}
!41 = !{!35, !8, i64 24}
!42 = !{!24, !25, i64 8}
!43 = !{!44, !17, i64 168}
!44 = !{!"_typeobject", !23, i64 0, !45, i64 24, !17, i64 32, !17, i64 40, !13, i64 48, !17, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !17, i64 168, !45, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !17, i64 208, !13, i64 216, !13, i64 224, !46, i64 232, !47, i64 240, !48, i64 248, !25, i64 256, !38, i64 264, !13, i64 272, !13, i64 280, !17, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !38, i64 336, !38, i64 344, !38, i64 352, !13, i64 360, !38, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !49, i64 410}
!45 = !{!"p1 omnipotent char", !13, i64 0}
!46 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!47 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!48 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!49 = !{!"short", !9, i64 0}
!50 = !{!38, !38, i64 0}
!51 = !{!17, !17, i64 0}
!52 = distinct !{null}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{ptr @list_extend, null}
!56 = distinct !{null}
!57 = !{!58, !17, i64 24}
!58 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !17, i64 32, !13, i64 40, !17, i64 48, !17, i64 56, !9, i64 64, !38, i64 192}
!59 = distinct !{!59, !54}
!60 = !{!61, !13, i64 16}
!61 = !{!"", !24, i64 0, !13, i64 16}
!62 = distinct !{!62, !54}
!63 = distinct !{!63, !54}
!64 = distinct !{!64, !54}
!65 = !{!66, !17, i64 16}
!66 = !{!"_longobject", !24, i64 0, !67, i64 16}
!67 = !{!"_PyLongValue", !17, i64 0, !9, i64 8}
!68 = distinct !{!68, !54}
!69 = !{!70, !13, i64 4152}
!70 = !{!"s_MergeState", !17, i64 0, !17, i64 8, !26, i64 16, !71, i64 24, !17, i64 40, !8, i64 48, !9, i64 56, !9, i64 2104, !13, i64 4152, !13, i64 4160, !13, i64 4168, !17, i64 4176, !17, i64 4184, !17, i64 4192}
!71 = !{!"", !26, i64 0, !26, i64 8}
!72 = !{!44, !13, i64 200}
!73 = !{!70, !13, i64 4160}
!74 = !{!70, !13, i64 4168}
!75 = !{!70, !17, i64 40}
!76 = !{!70, !26, i64 32}
!77 = !{!70, !26, i64 24}
!78 = !{!70, !8, i64 48}
!79 = !{!70, !17, i64 0}
!80 = !{!70, !17, i64 8}
!81 = !{!70, !26, i64 16}
!82 = distinct !{!82, !54}
!83 = !{!70, !17, i64 4184}
!84 = !{!70, !17, i64 4192}
!85 = !{!70, !17, i64 4176}
!86 = distinct !{!86, !54}
!87 = distinct !{null}
!88 = distinct !{!88, !54}
!89 = distinct !{!89, !54}
!90 = distinct !{!90, !54}
!91 = distinct !{null}
!92 = distinct !{!92, !54}
!93 = distinct !{!93, !54}
!94 = !{!95, !26, i64 0}
!95 = !{!"s_slice", !71, i64 0, !17, i64 16, !8, i64 24}
!96 = !{!95, !17, i64 16}
!97 = !{!95, !8, i64 24}
!98 = distinct !{!98, !54}
!99 = !{!26, !26, i64 0}
!100 = distinct !{!100, !54}
!101 = distinct !{!101, !54}
!102 = distinct !{!102, !54}
!103 = distinct !{!103, !54}
!104 = distinct !{!104, !54}
!105 = distinct !{null}
!106 = distinct !{null, null, null}
!107 = distinct !{!107, !54}
!108 = distinct !{!108, !54}
!109 = distinct !{!109, !54, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
!111 = distinct !{!111, !54}
!112 = distinct !{!112, !54}
!113 = !{!114, !17, i64 16}
!114 = !{!"", !24, i64 0, !17, i64 16, !13, i64 24}
!115 = !{!114, !13, i64 24}
!116 = !{!44, !13, i64 312}
!117 = distinct !{null}
!118 = distinct !{!118, !54}
!119 = distinct !{!119, !54}
!120 = distinct !{!120, !54}
!121 = distinct !{!121, !54}
!122 = distinct !{!122, !54}
!123 = !{!124, !17, i64 16}
!124 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !125, i64 32, !126, i64 40}
!125 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!126 = !{!"p1 _ZTS11_dictvalues", !13, i64 0}
!127 = distinct !{!127, !54}
!128 = distinct !{!128, !54}
!129 = !{!44, !13, i64 224}
!130 = !{!131, !17, i64 16}
!131 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !132, i64 32}
!132 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!133 = !{!134, !135, i64 16}
!134 = !{!"", !24, i64 0, !135, i64 16}
!135 = !{!"double", !9, i64 0}
!136 = distinct !{!136, !54}
!137 = !{i64 0, i64 8, !99, i64 8, i64 8, !99, i64 16, i64 8, !51, i64 24, i64 4, !7}
!138 = distinct !{null}
!139 = distinct !{!139, !54}
!140 = !{!71, !26, i64 0}
!141 = !{!71, !26, i64 8}
!142 = distinct !{null}
!143 = distinct !{!143, !110}
!144 = distinct !{null, null}
!145 = distinct !{null, ptr @gallop_left}
!146 = distinct !{!146, !54}
!147 = distinct !{!147, !54}
!148 = distinct !{null}
!149 = distinct !{!149, !110}
!150 = distinct !{!150, !54}
!151 = distinct !{!151, !54}
!152 = distinct !{!152, !54}
!153 = !{!44, !45, i64 24}
!154 = distinct !{null}
!155 = distinct !{null, null}
!156 = distinct !{!156, !54}
!157 = distinct !{!157, !54}
!158 = distinct !{null}
!159 = distinct !{null, null}
!160 = distinct !{!160, !54, !161, !162}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = distinct !{!163, !54, !162, !161}
!164 = distinct !{!164, !54}
!165 = !{!44, !13, i64 96}
!166 = !{!167, !13, i64 264}
!167 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!168 = distinct !{null}
!169 = distinct !{!169, !54}
!170 = distinct !{!170, !54}
!171 = distinct !{!171, !54}
!172 = distinct !{!172, !54}
!173 = distinct !{null}
!174 = !{!44, !17, i64 32}
!175 = distinct !{null}
!176 = distinct !{!176, !54}
!177 = distinct !{!177, !54}
!178 = distinct !{null}
end_hunk_0
