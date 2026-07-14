inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_concat:bb.a
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.j, 3
  %i.q = tail call ptr @PyMem_Malloc(i64 noundef %i.p) #13, !inline_history !165 ; 3 uses
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
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #13, !inline_history !165
  br label %list_new_prealloc.exit.i

list_new_prealloc.exit.thread38.i:                ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.l, i64 32
  store i64 %i.j, ptr %i.w, align 8, !tbaa !30
  br label %bb.j

list_new_prealloc.exit.i:                         ; preds = %bb.i, %bb.h, %bb.g
  %i.x = tail call ptr @PyErr_NoMemory() #13, !inline_history !165 ; 3 uses
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
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !166

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
  br i1 %i.ay, label %.lr.ph46.i, label %._crit_edge47.i, !llvm.loop !167

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
  %i.d = tail call ptr @PyList_New(i64 noundef 0), !inline_history !168
  br label %list_repeat_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.e = udiv i64 9223372036854775807, %1
  %i.f = icmp sgt i64 %.val.i, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #13, !inline_history !168
  br label %list_repeat_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.h = mul i64 %.val.i, %1                      ; 6 uses
  %i.i = tail call ptr @PyList_New(i64 noundef 0), !inline_history !169 ; 8 uses
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
  %i.n = tail call ptr @PyMem_Malloc(i64 noundef %i.m) #13, !inline_history !169 ; 3 uses
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
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13, !inline_history !169
  br label %list_new_prealloc.exit.i

list_new_prealloc.exit.thread45.i:                ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.i, i64 32
  store i64 %i.h, ptr %i.t, align 8, !tbaa !30
  br label %bb.k

list_new_prealloc.exit.i:                         ; preds = %bb.j, %bb.i, %bb.h
  %i.u = tail call ptr @PyErr_NoMemory() #13, !inline_history !169 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %list_repeat_lock_held.exit, label %list_new_prealloc.exit._crit_edge.i

list_new_prealloc.exit._crit_edge.i:              ; preds = %list_new_prealloc.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.u, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %list_new_prealloc.exit._crit_edge.i, %list_new_prealloc.exit.thread45.i
  %i.w = phi ptr [ %i.n, %list_new_prealloc.exit.thread45.i ], [ %.pre.i, %list_new_prealloc.exit._crit_edge.i ] ; 8 uses
  %.0.i47.i = phi ptr [ %i.i, %list_new_prealloc.exit.thread45.i ], [ %i.u, %list_new_prealloc.exit._crit_edge.i ] ; 3 uses
  %2 = ptrtoint ptr %i.w to i64                   ; 3 uses
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
  %i.ak = shl i64 %1, 3
  %i.al = add i64 %i.ak, %2
  %i.am = add i64 %2, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %2, -1
  %i.ao = add i64 %umax, %i.an                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 24
  br i1 %min.iters.check, label %.lr.ph52.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.w, i64 %i.ar
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !50
  store <2 x ptr> %broadcast.splat, ptr %i.au, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_Py_memory_repeat.exit.i, label %.lr.ph52.i.preheader21

.lr.ph52.i.preheader21:                           ; preds = %.lr.ph52.i.preheader, %middle.block
  %.03751.i.ph = phi ptr [ %i.w, %.lr.ph52.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader21, %.lr.ph52.i
  %.03751.i = phi ptr [ %i.aw, %.lr.ph52.i ], [ %.03751.i.ph, %.lr.ph52.i.preheader21 ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.03751.i, i64 8  ; 2 uses
  store ptr %i.ab, ptr %.03751.i, align 8, !tbaa !50
  %i.ax = icmp ult ptr %i.aw, %i.ai
  br i1 %i.ax, label %.lr.ph52.i, label %_Py_memory_repeat.exit.i, !llvm.loop !171

bb.n:                                             ; preds = %bb.k
  %i.ay = getelementptr [8 x i8], ptr %i.aa, i64 %.val.i ; 2 uses
  %i.az = icmp ult ptr %i.aa, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.n, %_Py_RefcntAdd.exit43.i
  %.03650.i = phi ptr [ %i.bi, %_Py_RefcntAdd.exit43.i ], [ %i.aa, %bb.n ] ; 3 uses
  %.13849.i = phi ptr [ %i.bj, %_Py_RefcntAdd.exit43.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.ba = load ptr, ptr %.03650.i, align 8, !tbaa !50 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !28 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i42.i, label %bb.o, label %_Py_RefcntAdd.exit43.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add nuw i64 %1, %i.bc                   ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 2147483647
  %i.bf = trunc i64 %i.bd to i32
  %i.bg = select i1 %i.be, i32 -1073741824, i32 %i.bf
  store i32 %i.bg, ptr %i.ba, align 8, !tbaa !28
  %.pre54.i = load ptr, ptr %.03650.i, align 8, !tbaa !50
  br label %_Py_RefcntAdd.exit43.i

_Py_RefcntAdd.exit43.i:                           ; preds = %bb.o, %.lr.ph.i
  %i.bh = phi ptr [ %i.ba, %.lr.ph.i ], [ %.pre54.i, %bb.o ]
  %i.bi = getelementptr i8, ptr %.03650.i, i64 8  ; 2 uses
  %i.bj = getelementptr i8, ptr %.13849.i, i64 8
  store ptr %i.bh, ptr %.13849.i, align 8, !tbaa !50
  %i.bk = icmp ult ptr %i.bi, %i.ay
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !172

._crit_edge.loopexit.i:                           ; preds = %_Py_RefcntAdd.exit43.i
  %.pre55.i = load ptr, ptr %i.x, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.bl = phi ptr [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.w, %bb.n ] ; 2 uses
  %i.bm = shl i64 %i.h, 3                         ; 3 uses
  %i.bn = shl i64 %.val.i, 3                      ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %i.bn, %._crit_edge.i ] ; 4 uses
  %i.bp = sub i64 %i.bm, %.015.i.i
  %i.bq = tail call i64 @llvm.smin.i64(i64 %.015.i.i, i64 %i.bp) ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %.015.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bq, i1 false)
  %i.bs = add i64 %i.bq, %.015.i.i                ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.bm
  br i1 %i.bt, label %.lr.ph.i.i, label %_Py_memory_repeat.exit.i, !llvm.loop !130

_Py_memory_repeat.exit.i:                         ; preds = %.lr.ph.i.i, %.lr.ph52.i, %middle.block, %._crit_edge.i, %_Py_RefcntAdd.exit.i
  %i.bu = getelementptr i8, ptr %.0.i47.i, i64 16
  store i64 %i.h, ptr %i.bu, align 8, !tbaa !29
  br label %list_repeat_lock_held.exit

list_repeat_lock_held.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %list_new_prealloc.exit.i, %_Py_memory_repeat.exit.i
  %.1.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %.0.i47.i, %_Py_memory_repeat.exit.i ], [ null, %list_new_prealloc.exit.i ], [ null, %bb.e ]
  ret ptr %.1.i
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
  %.val23.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 3 uses
  %.not.i = icmp ult i64 %1, %.val23.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !50
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.3) #13
  br label %list_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = add i64 %.val23.i, -1                    ; 3 uses
  %i.i = icmp slt i64 %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.j = xor i64 %1, -1
  %i.k = add i64 %.val23.i, %i.j                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.l = add i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = add i64 %1, %index                       ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %wide.load = load <2 x ptr>, ptr %i.o, align 8, !tbaa !50
  %wide.load9 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %i.m ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !50
  store <2 x ptr> %wide.load9, ptr %i.r, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.024.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

end_hunk_0
