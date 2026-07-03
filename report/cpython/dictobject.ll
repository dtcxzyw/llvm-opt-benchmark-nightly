inline.NumInlined: 780
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dict_merge_from_seq2:bb.a
  br i1 %.not.i.i, label %bb.ap, label %merge_from_seq2_lock_held.exit

bb.ap:                                            ; preds = %Py_DECREF.exit71.i
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !36
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.aq, label %merge_from_seq2_lock_held.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #21, !inline_history !211
  br label %merge_from_seq2_lock_held.exit

merge_from_seq2_lock_held.exit:                   ; preds = %bb.a, %Py_DECREF.exit71.i, %bb.ap, %bb.aq
  %.0.i = phi i32 [ -1, %bb.a ], [ %.1.i, %Py_DECREF.exit71.i ], [ %.1.i, %bb.ap ], [ %.1.i, %bb.aq ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyDict_Update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val9.i = load i64, ptr %i.c, align 8, !tbaa !22
  %i.d = and i64 %.val9.i, 536870912
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 4223) #21
  br label %dict_merge_api.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @dict_merge(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %dict_merge_api.exit

dict_merge_api.exit:                              ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyDict_Merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = zext i1 %i.a to i32
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr i8, ptr %.val.i, i64 168
  %.val9.i = load i64, ptr %i.e, align 8, !tbaa !22
  %i.f = and i64 %.val9.i, 536870912
  %i.g = icmp eq i64 %i.f, 0
  %i.h = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.h, %i.g
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 4223) #21
  br label %dict_merge_api.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @dict_merge(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.b)
  br label %dict_merge_api.exit

dict_merge_api.exit:                              ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ -1, %bb.c ], [ %i.i, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyDict_MergeEx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val9.i = load i64, ptr %i.c, align 8, !tbaa !22
  %i.d = and i64 %.val9.i, 536870912
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 4223) #21
  br label %dict_merge_api.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @dict_merge(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %dict_merge_api.exit

dict_merge_api.exit:                              ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyDict_Copy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.c, align 8, !tbaa !22
  %i.d = and i64 %.val6, 536870912
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 4392) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @copy_lock_held(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @copy_lock_held(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not57 = icmp eq i32 %1, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @Py_GetConstantBorrowed(i32 noundef 9) #21, !inline_history !214
  %i.e = tail call ptr @frozendict_new(ptr noundef nonnull @PyFrozenDict_Type, ptr noundef %i.d, ptr noundef null), !inline_history !214
  br label %_PyObject_GC_TRACK.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @new_dict(ptr noundef nonnull @empty_keys_struct, ptr noundef null, i64 noundef 0, i32 noundef 0), !inline_history !157
  br label %_PyObject_GC_TRACK.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.h, align 8, !tbaa !57    ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = and i64 %i.l, 504
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = add nuw nsw i64 %i.n, 8
  %i.p = add nuw nsw i64 %i.o, %i.m
  %i.q = tail call ptr @PyMem_Malloc(i64 noundef %i.p) #21 ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %copy_values.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.q, i64 2
  store i8 0, ptr %i.t, align 2, !tbaa !39
  %i.u = getelementptr i8, ptr %i.q, i64 1        ; 2 uses
  store i8 0, ptr %i.u, align 1, !tbaa !168
  store i8 %i.j, ptr %i.q, align 8, !tbaa !57
  %i.v = getelementptr i8, ptr %i.h, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !168
  store i8 %i.w, ptr %i.u, align 1, !tbaa !168
  %i.x = getelementptr i8, ptr %i.h, i64 8        ; 7 uses
  %i.y = load i8, ptr %i.h, align 8, !tbaa !57
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.q, i64 8       ; 8 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr readonly align 1 %i.aa, i64 %i.z, i1 false)
  %i.ad = load i8, ptr %i.h, align 8, !tbaa !57   ; 3 uses
  %.not.i58 = icmp eq i8 %i.ad, 0
  br i1 %.not.i58, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext i8 %i.ad to i64       ; 5 uses
  %min.iters.check = icmp ult i8 %i.ad, 6
  %i.ae = sub i64 %i.r, %i.i
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 252        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !58
  %wide.load73 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !58
  %i.ah = getelementptr [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  store <2 x ptr> %wide.load, ptr %i.ah, align 8, !tbaa !58
  store <2 x ptr> %wide.load73, ptr %i.ai, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  store ptr %i.al, ptr %i.am, align 8, !tbaa !58
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !216

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %i.ar = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.next.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !58
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.1
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !58
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.ba = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.2
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !58
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit, label %.lr.ph.i, !llvm.loop !218

copy_values.exit:                                 ; preds = %bb.f
  %i.bb = tail call ptr @PyErr_NoMemory() #21
  br label %_PyObject_GC_TRACK.exit

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.g
  %.not56 = icmp eq i32 %1, 0                     ; 2 uses
  %PyDict_Type.PyFrozenDict_Type = select i1 %.not56, ptr @PyDict_Type, ptr @PyFrozenDict_Type
  %i.bc = tail call ptr @_PyObject_GC_New(ptr noundef nonnull %PyDict_Type.PyFrozenDict_Type) #21 ; 10 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.be = load i8, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %.not61 = icmp eq i8 %i.be, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.loopexit
  tail call void @PyMem_Free(ptr noundef nonnull %i.q) #21
  br label %_PyObject_GC_TRACK.exit

._crit_edge:                                      ; preds = %Py_XINCREF.exit, %.preheader
  %i.bf = getelementptr i8, ptr %i.bc, i64 40
  store ptr %i.q, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !31
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bk = getelementptr i8, ptr %i.bc, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !38
  %i.bl = getelementptr i8, ptr %i.bc, i64 24
  store i64 0, ptr %i.bl, align 8, !tbaa !63
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %dictkeys_incref.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bo = add nuw i64 %i.bm, 1
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !37
  br label %dictkeys_incref.exit

dictkeys_incref.exit:                             ; preds = %._crit_edge, %bb.i
  br i1 %.not56, label %bb.m, label %bb.l

.lr.ph:                                           ; preds = %.preheader, %Py_XINCREF.exit
  %i.bp = phi i8 [ %i.bv, %Py_XINCREF.exit ], [ %i.be, %.preheader ] ; 2 uses
  %.04860 = phi i64 [ %i.bw, %Py_XINCREF.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.ab, i64 %.04860
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 3 uses
  %.not.i59 = icmp eq ptr %i.br, null
  br i1 %.not.i59, label %Py_XINCREF.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !36 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, -1073741825
  br i1 %i.bt, label %Py_XINCREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw i32 %i.bs, 1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !36
  %.pre = load i8, ptr %i.q, align 8, !tbaa !57
  br label %Py_XINCREF.exit

Py_XINCREF.exit:                                  ; preds = %.lr.ph, %bb.j, %bb.k
  %i.bv = phi i8 [ %i.bp, %.lr.ph ], [ %i.bp, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.bw = add nuw nsw i64 %.04860, 1              ; 2 uses
  %i.bx = zext i8 %i.bv to i64
  %i.by = icmp samesign ult i64 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !219

bb.l:                                             ; preds = %dictkeys_incref.exit
  %i.bz = getelementptr i8, ptr %i.bc, i64 48
  store i64 -1, ptr %i.bz, align 8, !tbaa !191
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %dictkeys_incref.exit
  %i.ca = getelementptr i8, ptr %i.bc, i64 -16    ; 2 uses
  %i.cb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 7 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 7408
  %i.ce = getelementptr i8, ptr %i.cc, i64 7416   ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !66
  %i.cj = and i64 %i.ci, 3
  %i.ck = or i64 %i.cj, %i.ch
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !66
  %i.cl = getelementptr i8, ptr %i.bc, i64 -8     ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !64
  %i.cn = and i64 %i.cm, 3
  %i.co = or i64 %i.cn, %i.cf
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !64
  %i.cp = getelementptr i8, ptr %i.cc, i64 7672
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !67
  %i.cr = xor i32 %i.cq, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = ptrtoint ptr %i.cd to i64
  %i.cu = or i64 %i.cs, %i.ct
  store i64 %i.cu, ptr %i.ca, align 8, !tbaa !66
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !64
  %i.cv = getelementptr i8, ptr %i.cc, i64 7428   ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !71
  %i.cx = add i32 %i.cw, 1                        ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !71
  %i.cy = getelementptr i8, ptr %i.cc, i64 7656   ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !72
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !72
  %i.db = getelementptr i8, ptr %i.cc, i64 7424
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !73
  %i.dd = icmp sgt i32 %i.cx, %i.dc
  br i1 %i.dd, label %bb.n, label %_PyObject_GC_TRACK.exit

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr i8, ptr %i.cc, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.de) #21
  br label %_PyObject_GC_TRACK.exit

bb.o:                                             ; preds = %bb.e
  %i.df = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.df, align 8, !tbaa !19
  %i.dg = getelementptr i8, ptr %.val, i64 216
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !197
  %i.di = icmp eq ptr %i.dh, @dict_iter
  br i1 %i.di, label %bb.p, label %bb.w
end_hunk_0
begin_hunk_1_@PyObject_VisitManagedDict:bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = and i64 %i.c, 16
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 -24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 %1(ptr noundef nonnull %i.g, ptr noundef %2) #21 ; 2 uses
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %.thread, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, 4
  %.not38 = icmp eq i64 %i.i, 0
  br i1 %.not38, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.val, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !220
  %i.l = getelementptr i8, ptr %0, i64 %i.k       ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !41
  %.not39 = icmp eq i8 %i.n, 0
  br i1 %.not39, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.o = load i8, ptr %i.l, align 8, !tbaa !57    ; 2 uses
  %.not4249.not = icmp eq i8 %i.o, 0
  br i1 %.not4249.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr i8, ptr %i.l, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.q = phi i8 [ %i.o, %.lr.ph ], [ %i.u, %bb.h ]
  %.03150 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.h ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %.03150
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %.not40 = icmp eq ptr %i.s, null
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 %1(ptr noundef nonnull %i.s, ptr noundef %2) #21 ; 2 uses
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i8, ptr %i.l, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.u = phi i8 [ %.pre, %._crit_edge ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = add nuw nsw i64 %.03150, 1               ; 2 uses
  %i.w = zext i8 %i.u to i64
  %.not42 = icmp samesign ult i64 %i.v, %i.w
  br i1 %.not42, label %bb.f, label %.thread, !llvm.loop !280

.thread:                                          ; preds = %bb.h, %.preheader, %bb.e, %bb.d, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.thread, %bb.c, %bb.a
  %.8 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %i.h, %bb.c ], [ %i.t, %bb.g ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyObject_SetManagedDict(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = and i64 %i.c, 4
  %.not = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %0, i64 -24        ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 9 uses
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !220
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 4 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %Py_XINCREF.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %Py_XINCREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %1, align 8, !tbaa !36
  br label %Py_XINCREF.exit.i

Py_XINCREF.exit.i:                                ; preds = %bb.e, %bb.d, %bb.c
  store ptr %1, ptr %i.e, align 8, !tbaa !36
  %i.n = getelementptr i8, ptr %i.j, i64 3        ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !41
  %.not.i5.i = icmp eq i8 %i.o, 0
  br i1 %.not.i5.i, label %set_dict_inline_values.exit, label %bb.f

bb.f:                                             ; preds = %Py_XINCREF.exit.i
  store i8 0, ptr %i.n, align 1, !tbaa !41
  %i.p = load i8, ptr %i.j, align 8, !tbaa !57
  %.not13.i.i = icmp eq i8 %i.p, 0
  br i1 %.not13.i.i, label %set_dict_inline_values.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.j, i64 8
  br label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.w, %Py_DECREF.exit.i.i ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.012.i.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 4 uses
  %.not11.i.i = icmp eq ptr %i.s, null
  br i1 %.not11.i.i, label %Py_DECREF.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !58
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.i, label %Py_DECREF.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !36
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #21
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.w = add nuw nsw i64 %.012.i.i, 1             ; 2 uses
  %i.x = load i8, ptr %i.j, align 8, !tbaa !57
  %i.y = zext i8 %i.x to i64
  %i.z = icmp samesign ult i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %set_dict_inline_values.exit, !llvm.loop !281

bb.k:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr i8, ptr %.val, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !220
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %.not.i.i18 = icmp eq ptr %i.ab, %i.af
  br i1 %.not.i.i18, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %i.ab, align 8, !tbaa !57  ; 2 uses
  %i.ah = zext i8 %i.ag to i64                    ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 504
  %i.ak = shl nuw nsw i64 %i.ah, 3
  %i.al = add nuw nsw i64 %i.ak, 8
  %i.am = add nuw nsw i64 %i.al, %i.aj
  %i.an = tail call ptr @PyMem_Malloc(i64 noundef %i.am) #21 ; 7 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %_PyDict_DetachFromObject.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.an, i64 2
  store i8 0, ptr %i.aq, align 2, !tbaa !39
  %i.ar = getelementptr i8, ptr %i.an, i64 1      ; 2 uses
  store i8 0, ptr %i.ar, align 1, !tbaa !168
  store i8 %i.ag, ptr %i.an, align 8, !tbaa !57
  %i.as = getelementptr i8, ptr %i.ab, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !168
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !168
  %i.au = getelementptr i8, ptr %i.ab, i64 8      ; 7 uses
  %i.av = load i8, ptr %i.ab, align 8, !tbaa !57
  %i.aw = zext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.an, i64 8      ; 7 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr readonly align 1 %i.ax, i64 %i.aw, i1 false)
  %i.ba = load i8, ptr %i.ab, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i19 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i19, label %.loopexit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %wide.trip.count.i.i.i = zext i8 %i.ba to i64   ; 5 uses
  %min.iters.check = icmp ult i8 %i.ba, 6
  %i.bb = sub i64 %i.ao, %i.ac
  %diff.check = icmp ult i64 %i.bb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 252    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !58
  %wide.load41 = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !58
  %i.be = getelementptr [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <2 x ptr> %wide.load, ptr %i.be, align 8, !tbaa !58
  store <2 x ptr> %wide.load41, ptr %i.bf, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bh = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.i.prol
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i.prol
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !58
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !283

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.bk = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !58
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !58
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.1
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58
  %i.bu = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.1
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !58
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.2
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !58
  %i.bx = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.2
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !58
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !284

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.m
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !35
  %.val.i8.i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.by = getelementptr i8, ptr %.val.i8.i.i, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !220
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz     ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 3
  store i8 0, ptr %i.cb, align 1, !tbaa !41
  %i.cc = load i8, ptr %i.ca, align 8, !tbaa !57  ; 2 uses
  %.not.i9.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i, label %bb.n, label %.lr.ph.i10.i.i

.lr.ph.i10.i.i:                                   ; preds = %.loopexit.i.i
  %i.cd = getelementptr i8, ptr %i.ca, i64 8
  %i.ce = zext i8 %i.cc to i64
  %i.cf = shl nuw nsw i64 %i.ce, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false), !tbaa !58
  br label %bb.n

_PyDict_DetachFromObject.exit:                    ; preds = %bb.l
  %i.cg = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %set_dict_inline_values.exit

bb.n:                                             ; preds = %bb.k, %.loopexit.i.i, %.lr.ph.i10.i.i
  %.not.i.i20 = icmp eq ptr %1, null
  br i1 %.not.i.i20, label %_Py_XNewRef.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = load i32, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, -1073741825
  br i1 %i.ci, label %_Py_XNewRef.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = add nuw i32 %i.ch, 1
  store i32 %i.cj, ptr %1, align 8, !tbaa !36
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.n, %bb.o, %bb.p
  store ptr %1, ptr %i.e, align 8, !tbaa !36
  %i.ck = load i32, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i, label %bb.q, label %set_dict_inline_values.exit

bb.q:                                             ; preds = %_Py_XNewRef.exit
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.f, align 8, !tbaa !36
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %set_dict_inline_values.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #21
  br label %set_dict_inline_values.exit

bb.s:                                             ; preds = %bb.a
  %.not.i.i22 = icmp eq ptr %1, null
  br i1 %.not.i.i22, label %_Py_XNewRef.exit24, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = load i32, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.co = icmp ugt i32 %i.cn, -1073741825
  br i1 %i.co, label %_Py_XNewRef.exit24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = add nuw i32 %i.cn, 1
  store i32 %i.cp, ptr %1, align 8, !tbaa !36
  br label %_Py_XNewRef.exit24

_Py_XNewRef.exit24:                               ; preds = %bb.s, %bb.t, %bb.u
  store ptr %1, ptr %i.e, align 8, !tbaa !36
  %.not.i.i.i25 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i25, label %set_dict_inline_values.exit, label %bb.v

bb.v:                                             ; preds = %_Py_XNewRef.exit24
  %i.cq = load i32, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.cq, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %set_dict_inline_values.exit

bb.w:                                             ; preds = %bb.v
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.f, align 8, !tbaa !36
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.x, label %set_dict_inline_values.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #21
  br label %set_dict_inline_values.exit

set_dict_inline_values.exit:                      ; preds = %Py_DECREF.exit.i.i, %bb.x, %bb.w, %bb.v, %_Py_XNewRef.exit24, %bb.r, %bb.q, %_Py_XNewRef.exit, %_PyDict_DetachFromObject.exit, %bb.f, %Py_XINCREF.exit.i
  %.1 = phi i32 [ 0, %bb.r ], [ -1, %_PyDict_DetachFromObject.exit ], [ 0, %bb.x ], [ 0, %Py_XINCREF.exit.i ], [ 0, %bb.f ], [ 0, %_Py_XNewRef.exit ], [ 0, %bb.q ], [ 0, %_Py_XNewRef.exit24 ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %Py_DECREF.exit.i.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyDict_DetachFromObject(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 7 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr i8, ptr %.val.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !220
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %.not.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i, label %bb.b, label %detach_dict_from_object.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !57    ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = and i64 %i.j, 504
  %i.l = shl nuw nsw i64 %i.i, 3
  %i.m = add nuw nsw i64 %i.l, 8
  %i.n = add nuw nsw i64 %i.m, %i.k
  %i.o = tail call ptr @PyMem_Malloc(i64 noundef %i.n) #21 ; 7 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %copy_values.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.o, i64 2
  store i8 0, ptr %i.r, align 2, !tbaa !39
  %i.s = getelementptr i8, ptr %i.o, i64 1        ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !168
  store i8 %i.h, ptr %i.o, align 8, !tbaa !57
  %i.t = getelementptr i8, ptr %i.b, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !168
  store i8 %i.u, ptr %i.s, align 1, !tbaa !168
  %i.v = getelementptr i8, ptr %i.b, i64 8        ; 7 uses
  %i.w = load i8, ptr %i.b, align 8, !tbaa !57
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr i8, ptr %i.o, i64 8        ; 7 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr readonly align 1 %i.y, i64 %i.x, i1 false)
  %i.ab = load i8, ptr %i.b, align 8, !tbaa !57   ; 3 uses
  %.not.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext i8 %i.ab to i64     ; 5 uses
  %min.iters.check = icmp ult i8 %i.ab, 6
  %i.ac = sub i64 %i.p, %i.c
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 252      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !58
  %wide.load5 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !58
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  store <2 x ptr> %wide.load, ptr %i.af, align 8, !tbaa !58
  store <2 x ptr> %wide.load5, ptr %i.ag, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ai = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.prol
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i.i.prol
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !58
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !286

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.al = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58
  %i.ap = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !58
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !58
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.1
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.1
  store ptr %i.au, ptr %i.av, align 8, !tbaa !58
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.2
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.2
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !58
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !287

copy_values.exit.i:                               ; preds = %bb.b
  %i.az = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %detach_dict_from_object.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.c
  store ptr %i.o, ptr %i.a, align 8, !tbaa !35
  %.val.i8.i = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ba = getelementptr i8, ptr %.val.i8.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !220
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb     ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 3
  store i8 0, ptr %i.bd, align 1, !tbaa !41
  %i.be = load i8, ptr %i.bc, align 8, !tbaa !57  ; 2 uses
  %.not.i9.i = icmp eq i8 %i.be, 0
  br i1 %.not.i9.i, label %detach_dict_from_object.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.loopexit.i
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %i.bg = zext i8 %i.be to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bh, i1 false), !tbaa !58
  br label %detach_dict_from_object.exit

detach_dict_from_object.exit:                     ; preds = %bb.a, %copy_values.exit.i, %.loopexit.i, %.lr.ph.i10.i
  %.1.i = phi i32 [ 0, %bb.a ], [ -1, %copy_values.exit.i ], [ 0, %.loopexit.i ], [ 0, %.lr.ph.i10.i ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local void @PyObject_ClearManagedDict(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = and i64 %i.c, 4
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %clear_inline_values.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -24
  %.val24 = load ptr, ptr %i.e, align 8, !tbaa !36 ; 4 uses
  %.not43 = icmp eq ptr %.val24, null             ; 2 uses
  br i1 %.not43, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220
  %i.h = getelementptr i8, ptr %0, i64 %i.g       ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 3        ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !41
  %.not.i25 = icmp eq i8 %i.j, 0
  br i1 %.not.i25, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.i, align 1, !tbaa !41
  %i.k = load i8, ptr %i.h, align 8, !tbaa !57
  %.not13.i = icmp eq i8 %i.k, 0
  br i1 %.not13.i, label %Py_DECREF.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 8
  br label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph.i
  %.012.i = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %Py_DECREF.exit.i ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %.012.i ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 4 uses
  %.not11.i = icmp eq ptr %i.n, null
  br i1 %.not11.i, label %Py_DECREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.m, align 8, !tbaa !58
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !36
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #21
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.r = add nuw nsw i64 %.012.i, 1               ; 2 uses
  %i.s = load i8, ptr %i.h, align 8, !tbaa !57
  %i.t = zext i8 %i.s to i64
  %i.u = icmp samesign ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %clear_inline_values.exit, !llvm.loop !281

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %.val24, i64 40    ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 7 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr i8, ptr %.val, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !220
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = icmp eq ptr %i.w, %i.aa
  br i1 %i.ab, label %bb.j, label %clear_inline_values.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.ad = zext i8 %i.ac to i64                    ; 3 uses
  %i.ae = add nuw nsw i64 %i.ad, 7
  %i.af = and i64 %i.ae, 504
  %i.ag = shl nuw nsw i64 %i.ad, 3
  %i.ah = add nuw nsw i64 %i.ag, 8
  %i.ai = add nuw nsw i64 %i.ah, %i.af
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef %i.ai) #21 ; 7 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.aj, i64 2
  store i8 0, ptr %i.am, align 2, !tbaa !39
  %i.an = getelementptr i8, ptr %i.aj, i64 1      ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !168
  store i8 %i.ac, ptr %i.aj, align 8, !tbaa !57
  %i.ao = getelementptr i8, ptr %i.w, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !168
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !168
  %i.aq = getelementptr i8, ptr %i.w, i64 8       ; 7 uses
  %i.ar = load i8, ptr %i.w, align 8, !tbaa !57
  %i.as = zext i8 %i.ar to i64                    ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aj, i64 8      ; 7 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr readonly align 1 %i.at, i64 %i.as, i1 false)
  %i.aw = load i8, ptr %i.w, align 8, !tbaa !57   ; 3 uses
  %.not.i.i28 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i28, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %wide.trip.count.i.i = zext i8 %i.aw to i64     ; 5 uses
  %min.iters.check = icmp ult i8 %i.aw, 6
  %i.ax = sub i64 %i.ak, %i.x
  %diff.check = icmp ult i64 %i.ax, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 252      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !58
  %wide.load59 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !58
  %i.ba = getelementptr [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store <2 x ptr> %wide.load, ptr %i.ba, align 8, !tbaa !58
  store <2 x ptr> %wide.load59, ptr %i.bb, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.prol
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.prol
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !58
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !289

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !58
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58
  %i.bn = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !58
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.1
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bq = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.1
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !58
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.2
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58
  %i.bt = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.2
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !58
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !290

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.k
  store ptr %i.aj, ptr %i.v, align 8, !tbaa !35
  %.val.i8.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bu = getelementptr i8, ptr %.val.i8.i, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !220
  %i.bw = getelementptr i8, ptr %0, i64 %i.bv     ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 3
  store i8 0, ptr %i.bx, align 1, !tbaa !41
  %i.by = load i8, ptr %i.bw, align 8, !tbaa !57  ; 2 uses
  %.not.i9.i = icmp eq i8 %i.by, 0
  br i1 %.not.i9.i, label %clear_inline_values.exit.thread, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.loopexit.i
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = zext i8 %i.by to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bz, i8 0, i64 %i.cb, i1 false), !tbaa !58
  br label %clear_inline_values.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.cc = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.39) #21
  %i.cd = getelementptr i8, ptr %.val24, i64 32   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  store ptr @empty_keys_struct, ptr %i.cd, align 8, !tbaa !31
  store ptr null, ptr %i.v, align 8, !tbaa !35
  tail call fastcc void @dictkeys_decref(ptr noundef %i.ce)
  %i.cf = getelementptr i8, ptr %.val24, i64 16
  store i64 0, ptr %i.cf, align 8, !tbaa !38
  %.val.i29 = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cg = getelementptr i8, ptr %.val.i29, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !220
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch     ; 4 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 3      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !41
  %.not.i30 = icmp eq i8 %i.ck, 0
  br i1 %.not.i30, label %clear_inline_values.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.cj, align 1, !tbaa !41
  %i.cl = load i8, ptr %i.ci, align 8, !tbaa !57
  %.not13.i31 = icmp eq i8 %i.cl, 0
  br i1 %.not13.i31, label %clear_inline_values.exit.thread, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.m
  %i.cm = getelementptr i8, ptr %i.ci, i64 8
  br label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit.i36, %.lr.ph.i32
  %.012.i33 = phi i64 [ 0, %.lr.ph.i32 ], [ %i.cs, %Py_DECREF.exit.i36 ] ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %.012.i33 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58 ; 4 uses
  %.not11.i34 = icmp eq ptr %i.co, null
  br i1 %.not11.i34, label %Py_DECREF.exit.i36, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.cn, align 8, !tbaa !58
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !36 ; 2 uses
  %.not.i.i35 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i.i35, label %bb.p, label %Py_DECREF.exit.i36

bb.p:                                             ; preds = %bb.o
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !36
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %Py_DECREF.exit.i36

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.co) #21
  br label %Py_DECREF.exit.i36

Py_DECREF.exit.i36:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.cs = add nuw nsw i64 %.012.i33, 1            ; 2 uses
  %i.ct = load i8, ptr %i.ci, align 8, !tbaa !57
  %i.cu = zext i8 %i.ct to i64
  %i.cv = icmp samesign ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.n, label %clear_inline_values.exit, !llvm.loop !281

clear_inline_values.exit:                         ; preds = %Py_DECREF.exit.i36, %Py_DECREF.exit.i
  br i1 %.not43, label %Py_DECREF.exit, label %clear_inline_values.exit.thread

clear_inline_values.exit.thread:                  ; preds = %.loopexit.i, %.lr.ph.i10.i, %bb.i, %bb.l, %bb.m, %clear_inline_values.exit, %bb.a
  %i.cw = getelementptr i8, ptr %0, i64 -24       ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !61 ; 4 uses
  %.not23 = icmp eq ptr %i.cx, null
  br i1 %.not23, label %Py_DECREF.exit, label %bb.r

bb.r:                                             ; preds = %clear_inline_values.exit.thread
  store ptr null, ptr %i.cw, align 8, !tbaa !61
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp sgt i32 %i.cy, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 8, !tbaa !36
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #21
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.t, %bb.s, %bb.r, %clear_inline_values.exit.thread, %clear_inline_values.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dictkeys_decref(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %free_keys_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  store i64 %i.c, ptr %0, align 8, !tbaa !37
  %i.d = icmp eq i64 %i.a, 1
  br i1 %i.d, label %bb.c, label %free_keys_object.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !36
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = getelementptr i8, ptr %0, i64 9
end_hunk_1
