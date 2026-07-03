inline.NumInlined: 2618
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_Vector:bb.a

_PyStackRef_FromPyObjectNew.exit59.epil:          ; preds = %bb.s, %bb.r
  %.sroa.0.0.i58.epil = phi i64 [ %i.ba, %bb.r ], [ %i.bc, %bb.s ]
  store i64 %.sroa.0.0.i58.epil, ptr %i.av, align 8, !tbaa !121
  br label %.split44

.split44:                                         ; preds = %_PyStackRef_FromPyObjectNew.exit59.epil, %.split44.loopexit.unr-lcssa, %bb.q
  %i.bd = load i32, ptr %1, align 8, !tbaa !121   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i54, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split44
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = or i64 %i.be, 1
  br label %_PyStackRef_FromPyObjectNew.exit56

bb.u:                                             ; preds = %.split44
  %i.bg = add nuw i32 %i.bd, 1
  store i32 %i.bg, ptr %1, align 8, !tbaa !121
  %i.bh = ptrtoint ptr %1 to i64
  br label %_PyStackRef_FromPyObjectNew.exit56

_PyStackRef_FromPyObjectNew.exit56:               ; preds = %bb.t, %bb.u
  %.sroa.0.0.i55 = phi i64 [ %i.bf, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = call ptr @_PyEvalFramePushAndInit(ptr noundef %0, i64 %.sroa.0.0.i55, ptr noundef %2, ptr noundef nonnull %.040, i64 noundef %4, ptr noundef nonnull %5, ptr noundef null)
  br label %bb.z

.lr.ph63:                                         ; preds = %_PyStackRef_FromPyObjectNew.exit59.1, %.lr.ph63.preheader.new
  %.04161 = phi i64 [ 0, %.lr.ph63.preheader.new ], [ %i.cc, %_PyStackRef_FromPyObjectNew.exit59.1 ] ; 3 uses
  %niter83 = phi i64 [ 0, %.lr.ph63.preheader.new ], [ %niter83.next.1, %_PyStackRef_FromPyObjectNew.exit59.1 ]
  %i.bj = add i64 %.04161, %4                     ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %.040, i64 %i.bj
  %i.bl = getelementptr [8 x i8], ptr %3, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !121 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph63
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = or i64 %i.bo, 1
  br label %_PyStackRef_FromPyObjectNew.exit59

bb.w:                                             ; preds = %.lr.ph63
  %i.bq = add nuw i32 %i.bn, 1
  store i32 %i.bq, ptr %i.bm, align 8, !tbaa !121
  %i.br = ptrtoint ptr %i.bm to i64
  br label %_PyStackRef_FromPyObjectNew.exit59

_PyStackRef_FromPyObjectNew.exit59:               ; preds = %bb.v, %bb.w
  %.sroa.0.0.i58 = phi i64 [ %i.bp, %bb.v ], [ %i.br, %bb.w ]
  store i64 %.sroa.0.0.i58, ptr %i.bk, align 8, !tbaa !121
  %i.bs = or disjoint i64 %.04161, 1
  %i.bt = add i64 %i.bs, %4                       ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %.040, i64 %i.bt
  %i.bv = getelementptr [8 x i8], ptr %3, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !117 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !121 ; 2 uses
  %.not.i57.1 = icmp sgt i32 %i.bx, -1
  br i1 %.not.i57.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit59
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = or i64 %i.by, 1
  br label %_PyStackRef_FromPyObjectNew.exit59.1

bb.y:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit59
  %i.ca = add nuw i32 %i.bx, 1
  store i32 %i.ca, ptr %i.bw, align 8, !tbaa !121
  %i.cb = ptrtoint ptr %i.bw to i64
  br label %_PyStackRef_FromPyObjectNew.exit59.1

_PyStackRef_FromPyObjectNew.exit59.1:             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i58.1 = phi i64 [ %i.bz, %bb.x ], [ %i.cb, %bb.y ]
  store i64 %.sroa.0.0.i58.1, ptr %i.bu, align 8, !tbaa !121
  %i.cc = add nuw nsw i64 %.04161, 2              ; 2 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.split44.loopexit.unr-lcssa, label %.lr.ph63, !llvm.loop !152

bb.z:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit, %_PyStackRef_FromPyObjectNew.exit56
  %phi.call = phi ptr [ %i.y, %_PyStackRef_FromPyObjectNew.exit ], [ %i.bi, %_PyStackRef_FromPyObjectNew.exit56 ] ; 3 uses
  %i.cd = icmp ugt i64 %.039, 8
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @PyMem_Free(ptr noundef nonnull %.040) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ce = icmp eq ptr %phi.call, null
  br i1 %i.ce, label %_PyEval_EvalFrame.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !148
  %i.ch = getelementptr i8, ptr %i.cg, i64 8568
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !149 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ck = call ptr @_PyEval_EvalFrameDefault(ptr noundef nonnull %0, ptr noundef nonnull %phi.call, i32 noundef 0)
  br label %_PyEval_EvalFrame.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cl = call ptr %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %phi.call, i32 noundef 0) #21, !inline_history !153
  br label %_PyEval_EvalFrame.exit

_PyEval_EvalFrame.exit:                           ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.e
  %.1 = phi ptr [ %i.g, %bb.e ], [ null, %bb.ab ], [ %i.ck, %bb.ad ], [ %i.cl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyEval_EvalFrame(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %i.g = getelementptr i8, ptr %i.f, i64 8568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @_PyEval_EvalFrameDefault(ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef 0)
  br label %_PyEval_EvalFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr %i.h(ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef 0) #21, !inline_history !153
  br label %_PyEval_EvalFrame.exit

_PyEval_EvalFrame.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyEval_EvalFrameEx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148
  %i.g = getelementptr i8, ptr %i.f, i64 8568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @_PyEval_EvalFrameDefault(ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef %1)
  br label %_PyEval_EvalFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr %i.h(ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef %1) #21, !inline_history !153
  br label %_PyEval_EvalFrame.exit

_PyEval_EvalFrame.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_VectorCall_StackRefSteal(i64 %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i64 %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = icmp sgt i32 %2, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread31

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load43 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load43, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread31, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !159

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread31, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread31, label %.lr.ph.i, !llvm.loop !161

_PyObjectArray_FromStackRefArray.exit.thread31:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i33 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = and i64 %0, -2
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = and i64 %3, -2                          ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread31
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val = load i64, ptr %i.bc, align 8, !tbaa !119
  %i.bd = trunc i64 %.val to i32
  %i.be = sub i32 %2, %i.bd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread31
  %.024 = phi i32 [ %i.be, %bb.d ], [ %2, %_PyObjectArray_FromStackRefArray.exit.thread31 ]
  %i.bf = sext i32 %.024 to i64
  %i.bg = or i64 %i.bf, -9223372036854775808
  %i.bh = call ptr @PyObject_Vectorcall(ptr noundef %i.az, ptr noundef nonnull %.015.i33, i64 noundef %i.bg, ptr noundef %i.bb) #21 ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.i33, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @PyMem_Free(ptr noundef %i.bi) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.b, %bb.f, %bb.e
  %.0 = phi ptr [ %i.bh, %bb.f ], [ null, %bb.b ], [ %i.bh, %bb.e ]
  %i.bj = and i64 %3, 1
  %.not.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.not.i, label %bb.g, label %PyStackRef_XCLOSE.exit

bb.g:                                             ; preds = %_PyObjectArray_Free.exit
  %i.bk = inttoptr i64 %3 to ptr                  ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !121
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !121
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.h, label %PyStackRef_XCLOSE.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #21
  br label %PyStackRef_XCLOSE.exit

PyStackRef_XCLOSE.exit:                           ; preds = %_PyObjectArray_Free.exit, %bb.g, %bb.h
  %.02334 = add i32 %2, -1                        ; 2 uses
  %i.bo = icmp sgt i32 %.02334, -1
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %PyStackRef_XCLOSE.exit
  %i.bp = zext nneg i32 %.02334 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit29, %PyStackRef_XCLOSE.exit
  %i.bq = and i64 %0, 1
  %.not.not.i27 = icmp eq i64 %i.bq, 0
  br i1 %.not.not.i27, label %bb.i, label %PyStackRef_CLOSE.exit

bb.i:                                             ; preds = %._crit_edge
  %i.br = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !121
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !121
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %PyStackRef_CLOSE.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit29
  %indvars.iv37 = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next38, %PyStackRef_CLOSE.exit29 ] ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %1, i64 %indvars.iv37 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bv, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bv, align 8, !tbaa !121
  %i.bw = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i28 = icmp eq i64 %i.bw, 0
  br i1 %.not.not.i28, label %bb.k, label %PyStackRef_CLOSE.exit29

bb.k:                                             ; preds = %.lr.ph
  %i.bx = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !121
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !121
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %PyStackRef_CLOSE.exit29

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.bx) #21
  br label %PyStackRef_CLOSE.exit29

PyStackRef_CLOSE.exit29:                          ; preds = %.lr.ph, %bb.k, %bb.l
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1
  %i.cb = icmp sgt i64 %indvars.iv37, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !162
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @_PyObjectArray_FromStackRefArray(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp sgt i64 %1, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %1, 3
  %i.d = add i64 %i.c, 8
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef %i.d) #21 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !117
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 8          ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !117
  %i.i = icmp sgt i64 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.thread, %bb.c
  %i.j = phi ptr [ %i.g, %.thread ], [ %i.h, %bb.c ] ; 5 uses
  %smax22 = tail call i64 @llvm.smax.i64(i64 %1, i64 1) ; 2 uses
  %min.iters.check = icmp slt i64 %1, 14
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = add nsw i64 %1, -1                       ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp ugt i32 %i.m, 2147483646
  %i.o = icmp ugt i64 %i.l, 4294967295
  %i.p = or i1 %i.n, %i.o
  %i.q = sub i64 %i.k, %i.a
  %diff.check = icmp ult i64 %i.q, 32
  %or.cond = or i1 %i.p, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %smax22, 8589934588            ; 4 uses
  %i.r = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8
  %wide.load23 = load <2 x i64>, ptr %i.t, align 8
  %i.u = and <2 x i64> %wide.load, splat (i64 -2)
  %i.v = and <2 x i64> %wide.load23, splat (i64 -2)
  %i.w = inttoptr <2 x i64> %i.u to <2 x ptr>
  %i.x = inttoptr <2 x i64> %i.v to <2 x ptr>
  %i.y = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <2 x ptr> %i.w, ptr %i.y, align 8, !tbaa !117
  store <2 x ptr> %i.x, ptr %i.z, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax22, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.019.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %i.ab = phi i64 [ %i.ai, %.lr.ph ], [ %.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.019 = phi i32 [ %i.ah, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader25 ]
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr [8 x i8], ptr %i.j, i64 %i.ab
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !117
  %i.ah = add i32 %.019, 1                        ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp sgt i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.loopexit, !llvm.loop !164

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.c, %bb.b
  %.015 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph ]
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyObjectArray_Free(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = icmp sgt i32 %2, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_FromStackRefArray.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread66

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load81 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load81, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread66, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !166

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread66, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread66, label %.lr.ph.i, !llvm.loop !167

_PyObjectArray_FromStackRefArray.exit.thread66:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i68 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = and i64 %0, -2
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = and i64 %3, -2                          ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread66
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val = load i64, ptr %i.bc, align 8, !tbaa !119
  %i.bd = trunc i64 %.val to i32
  %i.be = sub i32 %2, %i.bd
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread66
  %.0 = phi i32 [ %i.be, %bb.d ], [ %2, %_PyObjectArray_FromStackRefArray.exit.thread66 ]
  %i.bf = sext i32 %.0 to i64
  %i.bg = or i64 %i.bf, -9223372036854775808
  %i.bh = call ptr @PyObject_Vectorcall(ptr noundef %i.az, ptr noundef nonnull %.015.i68, i64 noundef %i.bg, ptr noundef %i.bb) #21 ; 8 uses
  %i.bi = getelementptr i8, ptr %.015.i68, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @PyMem_Free(ptr noundef %i.bi) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.e, %bb.f
  br i1 %4, label %bb.g, label %_PyObjectArray_FromStackRefArray.exit.thread

bb.g:                                             ; preds = %_PyObjectArray_Free.exit
  %i.bj = icmp eq i32 %2, 0
  br i1 %i.bj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %1, align 8
  %i.bl = and i64 %i.bk, -2
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bn = phi ptr [ %i.bm, %bb.h ], [ @_PyInstrumentation_MISSING, %bb.g ] ; 2 uses
  %i.bo = icmp eq ptr %i.bh, null
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_Py_call_instrumentation_exc2(ptr noundef %7, i32 noundef 17, ptr noundef %5, ptr noundef %6, ptr noundef %i.az, ptr noundef %i.bn) #21
  br label %_PyObjectArray_FromStackRefArray.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bp = call i32 @_Py_call_instrumentation_2args(ptr noundef %7, i32 noundef 16, ptr noundef %5, ptr noundef %6, ptr noundef %i.az, ptr noundef %i.bn) #21
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.l, label %_PyObjectArray_FromStackRefArray.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.bh, align 8, !tbaa !121 ; 2 uses
  %.not59 = icmp sgt i32 %i.br, -1
  br i1 %.not59, label %bb.m, label %_PyObjectArray_FromStackRefArray.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bh, align 8, !tbaa !121
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %_PyObjectArray_FromStackRefArray.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not60 = icmp eq ptr %i.bu, null
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.bw = call i32 %i.bu(ptr noundef nonnull %i.bh, i32 noundef 1, ptr noundef %i.bv) #21 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bx = getelementptr i8, ptr %i.bh, i64 8
  %.val61 = load ptr, ptr %i.bx, align 8, !tbaa !122
  %i.by = getelementptr i8, ptr %.val61, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !135
  call void %i.bz(ptr noundef nonnull %i.bh) #21
  br label %_PyObjectArray_FromStackRefArray.exit.thread

_PyObjectArray_FromStackRefArray.exit.thread:     ; preds = %bb.b, %bb.j, %bb.m, %bb.p, %bb.l, %bb.k, %_PyObjectArray_Free.exit
  %.3 = phi ptr [ %i.bh, %_PyObjectArray_Free.exit ], [ null, %bb.b ], [ null, %bb.j ], [ %i.bh, %bb.k ], [ null, %bb.l ], [ null, %bb.p ], [ null, %bb.m ]
  %i.ca = and i64 %3, 1
  %.not.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.not.i, label %bb.q, label %PyStackRef_XCLOSE.exit

bb.q:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread
  %i.cb = inttoptr i64 %3 to ptr                  ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !121
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !121
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %PyStackRef_XCLOSE.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #21
  br label %PyStackRef_XCLOSE.exit

PyStackRef_XCLOSE.exit:                           ; preds = %_PyObjectArray_FromStackRefArray.exit.thread, %bb.q, %bb.r
  %.05069 = add i32 %2, -1                        ; 2 uses
  %i.cf = icmp sgt i32 %.05069, -1
  br i1 %i.cf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %PyStackRef_XCLOSE.exit
  %i.cg = zext nneg i32 %.05069 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit64, %PyStackRef_XCLOSE.exit
  %i.ch = and i64 %0, 1
  %.not.not.i62 = icmp eq i64 %i.ch, 0
  br i1 %.not.not.i62, label %bb.s, label %PyStackRef_CLOSE.exit

bb.s:                                             ; preds = %._crit_edge
  %i.ci = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !121
  %i.ck = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !121
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.t, label %PyStackRef_CLOSE.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.3

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit64
  %indvars.iv72 = phi i64 [ %i.cg, %.lr.ph.preheader ], [ %indvars.iv.next73, %PyStackRef_CLOSE.exit64 ] ; 3 uses
  %i.cm = getelementptr [8 x i8], ptr %1, i64 %indvars.iv72 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cm, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.cm, align 8, !tbaa !121
  %i.cn = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i63 = icmp eq i64 %i.cn, 0
  br i1 %.not.not.i63, label %bb.u, label %PyStackRef_CLOSE.exit64

bb.u:                                             ; preds = %.lr.ph
  %i.co = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !121
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !121
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %PyStackRef_CLOSE.exit64

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.co) #21
  br label %PyStackRef_CLOSE.exit64

PyStackRef_CLOSE.exit64:                          ; preds = %.lr.ph, %bb.u, %bb.v
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  %i.cs = icmp sgt i64 %indvars.iv72, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !168
}

declare void @_Py_call_instrumentation_exc2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_call_instrumentation_2args(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_BuiltinCallFast_StackRefSteal(i64 %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp sgt i32 %2, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.0182737 = add nsw i32 %2, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread24

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load41 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load41, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !170

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i, !llvm.loop !171

_PyObjectArray_FromStackRefArray.exit.thread24:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i26 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = and i64 %0, -2
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !172 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.bb, align 8, !tbaa !174
  %i.bc = getelementptr i8, ptr %.val, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !176
  %i.be = and i32 %i.bd, 32
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.d, label %PyCFunction_GET_SELF.exit

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread24
  %i.bf = getelementptr i8, ptr %i.az, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !177
  br label %PyCFunction_GET_SELF.exit

PyCFunction_GET_SELF.exit:                        ; preds = %_PyObjectArray_FromStackRefArray.exit.thread24, %bb.d
  %.0.i = phi ptr [ %i.bg, %bb.d ], [ null, %_PyObjectArray_FromStackRefArray.exit.thread24 ]
  %i.bh = call ptr %.val.val(ptr noundef %.0.i, ptr noundef nonnull %.015.i26, i64 noundef %i.c) #21 ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.i26, i64 -8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i20, label %_PyObjectArray_Free.exit, label %bb.e

bb.e:                                             ; preds = %PyCFunction_GET_SELF.exit
  call void @PyMem_Free(ptr noundef %i.bi) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.e, %PyCFunction_GET_SELF.exit
  %.01827 = add i32 %2, -1                        ; 2 uses
  %i.bj = icmp sgt i32 %.01827, -1
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.0182740 = phi i32 [ %.0182737, %_PyObjectArray_Free.exit.thread ], [ %.01827, %_PyObjectArray_Free.exit ]
  %.039 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.bh, %_PyObjectArray_Free.exit ]
  %i.bk = zext nneg i32 %.0182740 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit22, %_PyObjectArray_Free.exit
  %.038 = phi ptr [ %i.bh, %_PyObjectArray_Free.exit ], [ %.039, %PyStackRef_CLOSE.exit22 ]
  %i.bl = and i64 %0, 1
  %.not.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.i, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.bm = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !121
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !121
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %PyStackRef_CLOSE.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.038

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit22
  %indvars.iv30 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next31, %PyStackRef_CLOSE.exit22 ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv30 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bq, align 8, !tbaa !121
  %i.br = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i21 = icmp eq i64 %i.br, 0
  br i1 %.not.not.i21, label %bb.h, label %PyStackRef_CLOSE.exit22

bb.h:                                             ; preds = %.lr.ph
  %i.bs = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !121
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !121
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %PyStackRef_CLOSE.exit22

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #21
  br label %PyStackRef_CLOSE.exit22

PyStackRef_CLOSE.exit22:                          ; preds = %.lr.ph, %bb.h, %bb.i
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1
  %i.bw = icmp sgt i64 %indvars.iv30, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !178
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_BuiltinCallFastWithKeywords_StackRefSteal(i64 %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp sgt i32 %2, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.0182737 = add nsw i32 %2, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread24

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load41 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load41, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !180

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread24, label %.lr.ph.i, !llvm.loop !181

_PyObjectArray_FromStackRefArray.exit.thread24:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i26 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = and i64 %0, -2
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !172 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.bb, align 8, !tbaa !174
  %i.bc = getelementptr i8, ptr %.val, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !176
  %i.be = and i32 %i.bd, 32
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.d, label %PyCFunction_GET_SELF.exit

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread24
  %i.bf = getelementptr i8, ptr %i.az, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !177
  br label %PyCFunction_GET_SELF.exit

PyCFunction_GET_SELF.exit:                        ; preds = %_PyObjectArray_FromStackRefArray.exit.thread24, %bb.d
  %.0.i = phi ptr [ %i.bg, %bb.d ], [ null, %_PyObjectArray_FromStackRefArray.exit.thread24 ]
  %i.bh = call ptr %.val.val(ptr noundef %.0.i, ptr noundef nonnull %.015.i26, i64 noundef %i.c, ptr noundef null) #21 ; 2 uses
  %i.bi = getelementptr i8, ptr %.015.i26, i64 -8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i20, label %_PyObjectArray_Free.exit, label %bb.e

bb.e:                                             ; preds = %PyCFunction_GET_SELF.exit
  call void @PyMem_Free(ptr noundef %i.bi) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.e, %PyCFunction_GET_SELF.exit
  %.01827 = add i32 %2, -1                        ; 2 uses
  %i.bj = icmp sgt i32 %.01827, -1
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.0182740 = phi i32 [ %.0182737, %_PyObjectArray_Free.exit.thread ], [ %.01827, %_PyObjectArray_Free.exit ]
  %.039 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.bh, %_PyObjectArray_Free.exit ]
  %i.bk = zext nneg i32 %.0182740 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit22, %_PyObjectArray_Free.exit
  %.038 = phi ptr [ %i.bh, %_PyObjectArray_Free.exit ], [ %.039, %PyStackRef_CLOSE.exit22 ]
  %i.bl = and i64 %0, 1
  %.not.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.i, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.bm = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !121
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !121
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %PyStackRef_CLOSE.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.038

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit22
  %indvars.iv30 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next31, %PyStackRef_CLOSE.exit22 ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv30 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bq, align 8, !tbaa !121
  %i.br = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i21 = icmp eq i64 %i.br, 0
  br i1 %.not.not.i21, label %bb.h, label %PyStackRef_CLOSE.exit22

bb.h:                                             ; preds = %.lr.ph
  %i.bs = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !121
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !121
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.i, label %PyStackRef_CLOSE.exit22

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.bs) #21
  br label %PyStackRef_CLOSE.exit22

PyStackRef_CLOSE.exit22:                          ; preds = %.lr.ph, %bb.h, %bb.i
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1
  %i.bw = icmp sgt i64 %indvars.iv30, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !182
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCallMethodDescriptorFast_StackRefSteal(i64 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = icmp sgt i32 %4, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.pre = add nsw i32 %4, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %4, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread22

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %4 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load39 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load39, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !184

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i, !llvm.loop !185

_PyObjectArray_FromStackRefArray.exit.thread22:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i24 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.ba = getelementptr i8, ptr %.015.i24, i64 8
  %i.bb = add i32 %4, -1                          ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = call ptr %i.az(ptr noundef %2, ptr noundef %i.ba, i64 noundef %i.bc) #21 ; 2 uses
  %i.be = getelementptr i8, ptr %.015.i24, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread22
  call void @PyMem_Free(ptr noundef %i.be) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread22
  %i.bf = icmp sgt i32 %i.bb, -1
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.038 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.bd, %_PyObjectArray_Free.exit ]
  %.01725.pre-phi36 = phi i32 [ %.pre, %_PyObjectArray_Free.exit.thread ], [ %i.bb, %_PyObjectArray_Free.exit ]
  %i.bg = zext nneg i32 %.01725.pre-phi36 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit20, %_PyObjectArray_Free.exit
  %.037 = phi ptr [ %i.bd, %_PyObjectArray_Free.exit ], [ %.038, %PyStackRef_CLOSE.exit20 ]
  %i.bh = and i64 %0, 1
  %.not.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.not.i, label %bb.e, label %PyStackRef_CLOSE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bi = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !121
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.037

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit20
  %indvars.iv28 = phi i64 [ %i.bg, %.lr.ph.preheader ], [ %indvars.iv.next29, %PyStackRef_CLOSE.exit20 ] ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv28 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bm, align 8, !tbaa !121
  %i.bn = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.not.i19, label %bb.g, label %PyStackRef_CLOSE.exit20

bb.g:                                             ; preds = %.lr.ph
  %i.bo = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !121
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !121
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.h, label %PyStackRef_CLOSE.exit20

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #21
  br label %PyStackRef_CLOSE.exit20

PyStackRef_CLOSE.exit20:                          ; preds = %.lr.ph, %bb.g, %bb.h
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %i.bs = icmp sgt i64 %indvars.iv28, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !186
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCallMethodDescriptorFastWithKeywords_StackRefSteal(i64 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = icmp sgt i32 %4, 10
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.pre = add nsw i32 %4, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %4, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread22

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %4 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load39 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load39, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !188

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i, !llvm.loop !189

_PyObjectArray_FromStackRefArray.exit.thread22:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i24 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.ba = getelementptr i8, ptr %.015.i24, i64 8
  %i.bb = add i32 %4, -1                          ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = call ptr %i.az(ptr noundef %2, ptr noundef %i.ba, i64 noundef %i.bc, ptr noundef null) #21 ; 2 uses
  %i.be = getelementptr i8, ptr %.015.i24, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread22
  call void @PyMem_Free(ptr noundef %i.be) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread22
  %i.bf = icmp sgt i32 %i.bb, -1
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.038 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.bd, %_PyObjectArray_Free.exit ]
  %.01725.pre-phi36 = phi i32 [ %.pre, %_PyObjectArray_Free.exit.thread ], [ %i.bb, %_PyObjectArray_Free.exit ]
  %i.bg = zext nneg i32 %.01725.pre-phi36 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit20, %_PyObjectArray_Free.exit
  %.037 = phi ptr [ %i.bd, %_PyObjectArray_Free.exit ], [ %.038, %PyStackRef_CLOSE.exit20 ]
  %i.bh = and i64 %0, 1
  %.not.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.not.i, label %bb.e, label %PyStackRef_CLOSE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bi = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !121
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.037

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit20
  %indvars.iv28 = phi i64 [ %i.bg, %.lr.ph.preheader ], [ %indvars.iv.next29, %PyStackRef_CLOSE.exit20 ] ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv28 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bm, align 8, !tbaa !121
  %i.bn = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.not.i19, label %bb.g, label %PyStackRef_CLOSE.exit20

bb.g:                                             ; preds = %.lr.ph
  %i.bo = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !121
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !121
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.h, label %PyStackRef_CLOSE.exit20

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #21
  br label %PyStackRef_CLOSE.exit20

PyStackRef_CLOSE.exit20:                          ; preds = %.lr.ph, %bb.g, %bb.h
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %i.bs = icmp sgt i64 %indvars.iv28, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !190
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_CallBuiltinClass_StackRefSteal(i64 %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp sgt i32 %2, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.0172535 = add nsw i32 %2, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread22

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load39 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load39, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !192

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread22, label %.lr.ph.i, !llvm.loop !193

_PyObjectArray_FromStackRefArray.exit.thread22:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i24 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = and i64 %0, -2
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 400
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !194
  %i.bc = or i64 %i.c, -9223372036854775808
  %i.bd = call ptr %i.bb(ptr noundef %i.az, ptr noundef nonnull %.015.i24, i64 noundef %i.bc, ptr noundef null) #21 ; 2 uses
  %i.be = getelementptr i8, ptr %.015.i24, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread22
  call void @PyMem_Free(ptr noundef %i.be) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread22
  %.01725 = add i32 %2, -1                        ; 2 uses
  %i.bf = icmp sgt i32 %.01725, -1
  br i1 %i.bf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.0172538 = phi i32 [ %.0172535, %_PyObjectArray_Free.exit.thread ], [ %.01725, %_PyObjectArray_Free.exit ]
  %.037 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.bd, %_PyObjectArray_Free.exit ]
  %i.bg = zext nneg i32 %.0172538 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit20, %_PyObjectArray_Free.exit
  %.036 = phi ptr [ %i.bd, %_PyObjectArray_Free.exit ], [ %.037, %PyStackRef_CLOSE.exit20 ]
  %i.bh = and i64 %0, 1
  %.not.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.not.i, label %bb.e, label %PyStackRef_CLOSE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bi = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !121
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %._crit_edge, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.036

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit20
  %indvars.iv28 = phi i64 [ %i.bg, %.lr.ph.preheader ], [ %indvars.iv.next29, %PyStackRef_CLOSE.exit20 ] ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %indvars.iv28 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bm, align 8, !tbaa !121
  %i.bn = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.not.i19, label %bb.g, label %PyStackRef_CLOSE.exit20

bb.g:                                             ; preds = %.lr.ph
  %i.bo = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !121
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !121
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.h, label %PyStackRef_CLOSE.exit20

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #21
  br label %PyStackRef_CLOSE.exit20

PyStackRef_CLOSE.exit20:                          ; preds = %.lr.ph, %bb.g, %bb.h
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %i.bs = icmp sgt i64 %indvars.iv28, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !195
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_BuildString_StackRefSteal(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = icmp sgt i32 %1, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = add nuw nsw i64 %i.e, 8
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_PyObjectArray_Free.exit.thread, label %.thread.i

_PyObjectArray_Free.exit.thread:                  ; preds = %bb.b
  %.0131929 = add nsw i32 %1, -1
  br label %.lr.ph.preheader

.thread.i:                                        ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread16

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.l = phi ptr [ %i.i, %.thread.i ], [ %i.j, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %1 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load33 = load <2 x i64>, ptr %i.p, align 8
  %i.q = and <2 x i64> %wide.load, splat (i64 -2)
  %i.r = and <2 x i64> %wide.load33, splat (i64 -2)
  %i.s = inttoptr <2 x i64> %i.q to <2 x ptr>
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread16, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.prol
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !197

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_PyObjectArray_FromStackRefArray.exit.thread16, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -2
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  store ptr %i.am, ptr %i.an, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread16, label %.lr.ph.i, !llvm.loop !198

_PyObjectArray_FromStackRefArray.exit.thread16:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i18 = phi ptr [ %i.j, %bb.c ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i ], [ %i.l, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ay = call ptr @_PyUnicode_JoinArray(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr noundef nonnull %.015.i18, i64 noundef %i.c) #21 ; 2 uses
  %i.az = getelementptr i8, ptr %.015.i18, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.az, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread16
  call void @PyMem_Free(ptr noundef %i.az) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread16
  %.01319 = add i32 %1, -1                        ; 2 uses
  %i.ba = icmp sgt i32 %.01319, -1
  br i1 %i.ba, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_PyObjectArray_Free.exit.thread, %_PyObjectArray_Free.exit
  %.0131932 = phi i32 [ %.0131929, %_PyObjectArray_Free.exit.thread ], [ %.01319, %_PyObjectArray_Free.exit ]
  %.031 = phi ptr [ null, %_PyObjectArray_Free.exit.thread ], [ %i.ay, %_PyObjectArray_Free.exit ]
  %i.bb = zext nneg i32 %.0131932 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit, %_PyObjectArray_Free.exit
  %.030 = phi ptr [ %i.ay, %_PyObjectArray_Free.exit ], [ %.031, %PyStackRef_CLOSE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.030

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit
  %indvars.iv22 = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next23, %PyStackRef_CLOSE.exit ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv22 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bc, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bc, align 8, !tbaa !121
  %i.bd = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.not.i, label %bb.e, label %PyStackRef_CLOSE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.be = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !121
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !121
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.be) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %.lr.ph, %bb.e, %bb.f
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %i.bi = icmp sgt i64 %indvars.iv22, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !199
}

declare ptr @_PyUnicode_JoinArray(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_BuildMap_StackRefSteal(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [11 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = shl i32 %1, 1                            ; 7 uses
  %i.d = icmp sgt i32 %i.c, 10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = or disjoint i64 %i.f, 8
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %i.g) #21 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.preheader, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !117
  br label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !117
  %i.l = icmp sgt i32 %i.c, 0
  br i1 %i.l, label %.lr.ph.preheader.i, label %_PyObjectArray_FromStackRefArray.exit.thread17

.lr.ph.preheader.i:                               ; preds = %bb.c, %.thread.i
  %i.m = phi ptr [ %i.j, %.thread.i ], [ %i.k, %bb.c ] ; 10 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a
  %diff.check = icmp ult i64 %i.o, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 8
  %wide.load33 = load <2 x i64>, ptr %i.q, align 8
  %i.r = and <2 x i64> %wide.load, splat (i64 -2)
  %i.s = and <2 x i64> %wide.load33, splat (i64 -2)
  %i.t = inttoptr <2 x i64> %i.r to <2 x ptr>
  %i.u = inttoptr <2 x i64> %i.s to <2 x ptr>
  %i.v = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <2 x ptr> %i.t, ptr %i.v, align 8, !tbaa !117
  store <2 x ptr> %i.u, ptr %i.w, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_PyObjectArray_FromStackRefArray.exit.thread17, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 2         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.i.prol ], [ %indvars.iv.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.y = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.prol
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !201

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_PyObjectArray_FromStackRefArray.exit.thread17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.i ], [ %indvars.iv.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = and i64 %i.al, -2
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, -2
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  store ptr %i.as, ptr %i.at, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_PyObjectArray_FromStackRefArray.exit.thread17, label %.lr.ph.i, !llvm.loop !202

_PyObjectArray_FromStackRefArray.exit.thread17:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.c
  %.015.i19 = phi ptr [ %i.k, %bb.c ], [ %i.m, %middle.block ], [ %i.m, %.lr.ph.i ], [ %i.m, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.az = getelementptr i8, ptr %.015.i19, i64 8
  %i.ba = sext i32 %1 to i64
  %i.bb = call ptr @_PyDict_FromItems(ptr noundef nonnull %.015.i19, i64 noundef 2, ptr noundef %i.az, i64 noundef 2, i64 noundef %i.ba) #21 ; 2 uses
  %i.bc = getelementptr i8, ptr %.015.i19, i64 -8 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i, label %_PyObjectArray_Free.exit, label %bb.d

bb.d:                                             ; preds = %_PyObjectArray_FromStackRefArray.exit.thread17
  call void @PyMem_Free(ptr noundef %i.bc) #21
  br label %_PyObjectArray_Free.exit

_PyObjectArray_Free.exit:                         ; preds = %bb.d, %_PyObjectArray_FromStackRefArray.exit.thread17
  %.01420 = add i32 %i.c, -2
  %i.bd = icmp sgt i32 %.01420, -1
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b, %_PyObjectArray_Free.exit
  %.032 = phi ptr [ %i.bb, %_PyObjectArray_Free.exit ], [ null, %bb.b ]
  %i.be = add i32 %i.c, -1
  %i.bf = zext i32 %i.be to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %PyStackRef_CLOSE.exit, %_PyObjectArray_Free.exit
  %.031 = phi ptr [ %i.bb, %_PyObjectArray_Free.exit ], [ %.032, %PyStackRef_CLOSE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret ptr %.031

.lr.ph:                                           ; preds = %.lr.ph.preheader, %PyStackRef_CLOSE.exit
  %indvars.iv23 = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %indvars.iv.next24, %PyStackRef_CLOSE.exit ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %0, i64 %indvars.iv23 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bg, align 8, !tbaa !121 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !tbaa !121
  %i.bh = and i64 %.sroa.0.0.copyload, 1
  %.not.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.not.i, label %bb.e, label %PyStackRef_CLOSE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.bi = inttoptr i64 %.sroa.0.0.copyload to ptr ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !121
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !121
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %PyStackRef_CLOSE.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %.lr.ph, %bb.e, %bb.f
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %i.bm = icmp sgt i64 %indvars.iv23, 0
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !203
}

declare ptr @_PyDict_FromItems(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @_Py_LoadAttr_StackRefSteal(ptr noundef %0, i64 %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct._PyCStackRef, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1, ptr %4, align 8, !tbaa !121
  %i.a = and i64 %1, -2
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = call i32 @_PyObject_GetMethodStackRef(ptr noundef %0, ptr noundef %i.b, ptr noundef %2, ptr noundef nonnull %4) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %PyStackRef_CLOSE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %1, 1
  %.not.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i, label %bb.c, label %PyStackRef_CLOSE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !121
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %PyStackRef_CLOSE.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #21
  br label %PyStackRef_CLOSE.exit

PyStackRef_CLOSE.exit:                            ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i64 [ %1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ]
  store i64 %.sink, ptr %3, align 8, !tbaa !121
  %.sroa.08.0 = load i64, ptr %4, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i64 %.sroa.08.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_CheckRecursiveCallPy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !118
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !107  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, -50
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._Py_CheckRecursiveCallPy, ptr noundef nonnull @.str.19) #23
  unreachable
end_hunk_0
begin_hunk_1_@_PyEval_EvalFrameDefault:bb.a

bb.lk:                                            ; preds = %PyStackRef_CLOSE.exit10645
  %i.azo = inttoptr i64 %i.ayj to ptr             ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 8, !tbaa !121
  %i.azq = add i32 %i.azp, 1
  store i32 %i.azq, ptr %i.azo, align 8, !tbaa !121
  br label %PyStackRef_DUP.exit

PyStackRef_DUP.exit:                              ; preds = %PyStackRef_CLOSE.exit10645, %bb.lk
  store i64 %i.ayj, ptr %i.azm, align 8, !tbaa !121
  store ptr %.4.val10292, ptr %i.ayb, align 8, !tbaa !216
  %i.azr = getelementptr i8, ptr %i.ayy, i64 -8
  %i.azs = add i32 %.09034, 1
  %i.azt = sext i32 %i.azs to i64
  %i.azu = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.0.0.i10642, ptr noundef null, ptr noundef %i.azr, i64 noundef %i.azt, ptr noundef null, ptr noundef nonnull %i.ayz) ; 5 uses
  %.4.val10291 = load ptr, ptr %i.ayb, align 8, !tbaa !216
  %i.azv = getelementptr [8 x i8], ptr %.4.val10291, i64 %i.axb ; 2 uses
  %i.azw = icmp eq ptr %i.azu, null
  br i1 %i.azw, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %PyStackRef_DUP.exit
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !216
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %i.ayz)
  %.4.val10290 = load ptr, ptr %i.ayb, align 8, !tbaa !216
  br label %_PyEval_FormatExcUnbound.exit

bb.lm:                                            ; preds = %PyStackRef_DUP.exit
  %i.azx = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.azx, align 8, !tbaa !248
  %i.azy = load i32, ptr %i.lwm, align 4, !tbaa !107
  store ptr %i.azv, ptr %i.ayb, align 8, !tbaa !216
  store ptr %i.azu, ptr %i.ba, align 8, !tbaa !210
  %i.azz = add i32 %i.azy, -2
  store i32 %i.azz, ptr %i.lwm, align 4, !tbaa !107
  %i.baa = getelementptr i8, ptr %i.azu, i64 64
  %.val10289 = load ptr, ptr %i.baa, align 8, !tbaa !216
  %i.bab = getelementptr i8, ptr %i.azu, i64 56
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !213 ; 2 uses
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !217 ; 2 uses
  %.sroa.23483.0.extract.shift = lshr i16 %i.bad, 8
  %.sroa.23483.0.extract.trunc = zext nneg i16 %.sroa.23483.0.extract.shift to i32
  %i.bae = and i16 %i.bad, 255
  %i.baf = zext nneg i16 %i.bae to i64
  br label %.backedge.backedge

bb.ln:                                            ; preds = %.backedge
  %i.bag = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bag, align 8, !tbaa !213
  %i.bah = getelementptr i8, ptr %.32, i64 8      ; 9 uses
  %i.bai = load ptr, ptr %i.lwl, align 8, !tbaa !148
  %i.baj = getelementptr i8, ptr %i.bai, i64 8568
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !149
  %.not9587 = icmp eq ptr %i.bak, null
  br i1 %.not9587, label %bb.lo, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lo:                                            ; preds = %bb.ln
  %i.bal = xor i32 %.09034, -1
  %i.bam = sext i32 %i.bal to i64
  %i.ban = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.bam ; 2 uses
  %.sroa.03470.0.copyload = load i64, ptr %i.ban, align 8, !tbaa !121
  %i.bao = sub i32 -2, %.09034
  %i.bap = sext i32 %i.bao to i64                 ; 2 uses
  %i.baq = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.bap ; 2 uses
  %.sroa.03472.0.copyload = load i64, ptr %i.baq, align 8, !tbaa !121 ; 3 uses
  %i.bar = icmp eq i64 %.sroa.03470.0.copyload, 1
  br i1 %i.bar, label %bb.lp, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lp:                                            ; preds = %bb.lo
  %i.bas = and i64 %.sroa.03472.0.copyload, -2
  %i.bat = inttoptr i64 %i.bas to ptr             ; 3 uses
  %i.bau = getelementptr i8, ptr %i.bat, i64 8
  %.val9859 = load ptr, ptr %i.bau, align 8, !tbaa !122
  %.not9588 = icmp eq ptr %.val9859, @PyMethod_Type
  br i1 %.not9588, label %bb.lq, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lq:                                            ; preds = %bb.lp
  %i.bav = getelementptr i8, ptr %i.bat, i64 24
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !260 ; 4 uses
  %i.bax = load i32, ptr %i.baw, align 8, !tbaa !121 ; 2 uses
  %.not.i10648 = icmp sgt i32 %i.bax, -1
  br i1 %.not.i10648, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bay = ptrtoint ptr %i.baw to i64
  %i.baz = or i64 %i.bay, 1
  br label %_PyStackRef_FromPyObjectNew.exit10650

bb.ls:                                            ; preds = %bb.lq
  %i.bba = add nuw i32 %i.bax, 1
  store i32 %i.bba, ptr %i.baw, align 8, !tbaa !121
  %i.bbb = ptrtoint ptr %i.baw to i64
  br label %_PyStackRef_FromPyObjectNew.exit10650

_PyStackRef_FromPyObjectNew.exit10650:            ; preds = %bb.lr, %bb.ls
  %.sroa.0.0.i10649 = phi i64 [ %i.baz, %bb.lr ], [ %i.bbb, %bb.ls ] ; 3 uses
  %i.bbc = getelementptr i8, ptr %i.bat, i64 16
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !262 ; 4 uses
  %i.bbe = load i32, ptr %i.bbd, align 8, !tbaa !121 ; 2 uses
  %.not.i10651 = icmp sgt i32 %i.bbe, -1
  br i1 %.not.i10651, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10650
  %i.bbf = ptrtoint ptr %i.bbd to i64
  %i.bbg = or i64 %i.bbf, 1
  br label %_PyStackRef_FromPyObjectNew.exit10653

bb.lu:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10650
  %i.bbh = add nuw i32 %i.bbe, 1
  store i32 %i.bbh, ptr %i.bbd, align 8, !tbaa !121
  %i.bbi = ptrtoint ptr %i.bbd to i64
  br label %_PyStackRef_FromPyObjectNew.exit10653

_PyStackRef_FromPyObjectNew.exit10653:            ; preds = %bb.lt, %bb.lu
  %.sroa.0.0.i10652 = phi i64 [ %i.bbg, %bb.lt ], [ %i.bbi, %bb.lu ] ; 3 uses
  store i64 %.sroa.0.0.i10652, ptr %i.baq, align 8, !tbaa !121
  store i64 %.sroa.0.0.i10649, ptr %i.ban, align 8, !tbaa !121
  %i.bbj = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006211608, ptr %i.bbj, align 8, !tbaa !216
  %i.bbk = and i64 %.sroa.03472.0.copyload, 1
  %.not.not.i10654 = icmp eq i64 %i.bbk, 0
  br i1 %.not.not.i10654, label %bb.lv, label %PyStackRef_CLOSE.exit10655

bb.lv:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10653
  %i.bbl = inttoptr i64 %.sroa.03472.0.copyload to ptr ; 3 uses
  %i.bbm = load i32, ptr %i.bbl, align 8, !tbaa !121
  %i.bbn = add i32 %i.bbm, -1                     ; 2 uses
  store i32 %i.bbn, ptr %i.bbl, align 8, !tbaa !121
  %i.bbo = icmp eq i32 %i.bbn, 0
  br i1 %i.bbo, label %bb.lw, label %PyStackRef_CLOSE.exit10655

bb.lw:                                            ; preds = %bb.lv
  call void @_Py_Dealloc(ptr noundef nonnull %i.bbl) #21
  br label %PyStackRef_CLOSE.exit10655

PyStackRef_CLOSE.exit10655:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10653, %bb.lv, %bb.lw
  %.4.val10288 = load ptr, ptr %i.bbj, align 8, !tbaa !216 ; 9 uses
  %.4.val1028814913 = ptrtoaddr ptr %.4.val10288 to i64
  %i.bbp = and i64 %.sroa.0.0.i10652, -2
  %i.bbq = inttoptr i64 %i.bbp to ptr             ; 3 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 8
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !122
  %i.bbt = icmp eq ptr %i.bbs, @PyFunction_Type
  br i1 %i.bbt, label %bb.lx, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lx:                                            ; preds = %PyStackRef_CLOSE.exit10655
  %i.bbu = getelementptr i8, ptr %.32, i64 4
  %.val10435 = load i32, ptr %i.bbu, align 2
  %i.bbv = getelementptr i8, ptr %i.bbq, i64 144
  %i.bbw = load i32, ptr %i.bbv, align 8, !tbaa !239
  %.not9589 = icmp eq i32 %i.bbw, %.val10435
  br i1 %.not9589, label %bb.ly, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.ly:                                            ; preds = %bb.lx
  %i.bbx = getelementptr i8, ptr %i.bbq, i64 48
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !242 ; 2 uses
  %i.bbz = getelementptr i8, ptr %i.bby, i64 52
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !267 ; 2 uses
  %i.bcb = icmp ne i64 %.sroa.0.0.i10649, 1       ; 3 uses
  %i.bcc = zext i1 %i.bcb to i32
  %i.bcd = add i32 %.09034, %i.bcc
  %.not9590 = icmp eq i32 %i.bca, %i.bcd
  br i1 %.not9590, label %bb.lz, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lz:                                            ; preds = %bb.ly
  %i.bce = load ptr, ptr %i.lwq, align 8, !tbaa !241 ; 2 uses
  %.not.i10656 = icmp eq ptr %i.bce, null
  br i1 %.not.i10656, label %_PyThreadState_HasStackSpace.exit10640.thread, label %_PyThreadState_HasStackSpace.exit10657

_PyThreadState_HasStackSpace.exit10657:           ; preds = %bb.lz
  %i.bcf = getelementptr i8, ptr %i.bby, i64 76
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !243
  %i.bch = sext i32 %i.bcg to i64
  %i.bci = load ptr, ptr %i.lwr, align 8, !tbaa !244
  %i.bcj = ptrtoint ptr %i.bci to i64
  %i.bck = ptrtoint ptr %i.bce to i64
  %i.bcl = sub i64 %i.bcj, %i.bck
  %i.bcm = ashr exact i64 %i.bcl, 3
  %i.bcn = icmp sgt i64 %i.bcm, %i.bch
  br i1 %i.bcn, label %bb.ma, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.ma:                                            ; preds = %_PyThreadState_HasStackSpace.exit10657
  %i.bco = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.bcp = icmp slt i32 %i.bco, 2
  br i1 %i.bcp, label %_PyThreadState_HasStackSpace.exit10640.thread, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bcq = sub i32 0, %.09034
  %i.bcr = sext i32 %i.bcq to i64                 ; 2 uses
  %i.bcs = getelementptr [8 x i8], ptr %.4.val10288, i64 %i.bcr ; 6 uses
  %i.bct = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.0.0.i10652, i32 noundef %i.bca, ptr noundef nonnull %.4) ; 6 uses
  %i.bcu = ptrtoaddr ptr %i.bct to i64
  %i.bcv = getelementptr i8, ptr %i.bct, i64 80   ; 2 uses
  %i.bcw = zext i1 %i.bcb to i64
  %i.bcx = getelementptr [8 x i8], ptr %i.bcv, i64 %i.bcw ; 6 uses
  store i64 %.sroa.0.0.i10649, ptr %i.bcv, align 8, !tbaa !121
  %i.bcy = icmp sgt i32 %.09034, 0
  br i1 %i.bcy, label %.lr.ph12221.preheader, label %._crit_edge12222

.lr.ph12221.preheader:                            ; preds = %bb.mb
  %wide.trip.count13339 = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.09034, 8
  br i1 %min.iters.check, label %.lr.ph12221.preheader14931, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph12221.preheader
  %i.bcz = add i64 %i.bcu, 80
  %i.bda = select i1 %i.bcb, i64 8, i64 0
  %i.bdb = add i64 %i.bcz, %i.bda
  %i.bdc = shl nsw i64 %i.bcr, 3
  %i.bdd = add i64 %i.bdc, %.4.val1028814913
  %i.bde = sub i64 %i.bdb, %i.bdd
  %diff.check = icmp ult i64 %i.bde, 32
  br i1 %diff.check, label %.lr.ph12221.preheader14931, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count13339, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bdf = getelementptr [8 x i8], ptr %i.bcx, i64 %index ; 2 uses
  %i.bdg = getelementptr [8 x i8], ptr %i.bcs, i64 %index ; 2 uses
  %i.bdh = getelementptr i8, ptr %i.bdg, i64 16
  %wide.load = load <2 x i64>, ptr %i.bdg, align 8, !tbaa !121
  %wide.load14914 = load <2 x i64>, ptr %i.bdh, align 8, !tbaa !121
  %i.bdi = getelementptr i8, ptr %i.bdf, i64 16
  store <2 x i64> %wide.load, ptr %i.bdf, align 8, !tbaa !121
  store <2 x i64> %wide.load14914, ptr %i.bdi, align 8, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bdj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdj, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count13339
  br i1 %cmp.n, label %._crit_edge12222, label %.lr.ph12221.preheader14931

.lr.ph12221.preheader14931:                       ; preds = %vector.memcheck, %.lr.ph12221.preheader, %middle.block
  %indvars.iv13336.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph12221.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter15469 = and i64 %wide.trip.count13339, 3 ; 2 uses
  %lcmp.mod15470.not = icmp eq i64 %xtraiter15469, 0
  br i1 %lcmp.mod15470.not, label %.lr.ph12221.prol.loopexit, label %.lr.ph12221.prol

.lr.ph12221.prol:                                 ; preds = %.lr.ph12221.preheader14931, %.lr.ph12221.prol
  %indvars.iv13336.prol = phi i64 [ %indvars.iv.next13337.prol, %.lr.ph12221.prol ], [ %indvars.iv13336.ph, %.lr.ph12221.preheader14931 ] ; 3 uses
  %prol.iter15471 = phi i64 [ %prol.iter15471.next, %.lr.ph12221.prol ], [ 0, %.lr.ph12221.preheader14931 ]
  %i.bdk = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13336.prol
  %i.bdl = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13336.prol
  %i.bdm = load i64, ptr %i.bdl, align 8, !tbaa !121
  store i64 %i.bdm, ptr %i.bdk, align 8, !tbaa !121
  %indvars.iv.next13337.prol = add nuw nsw i64 %indvars.iv13336.prol, 1 ; 2 uses
  %prol.iter15471.next = add i64 %prol.iter15471, 1 ; 2 uses
  %prol.iter15471.cmp.not = icmp eq i64 %prol.iter15471.next, %xtraiter15469
  br i1 %prol.iter15471.cmp.not, label %.lr.ph12221.prol.loopexit, label %.lr.ph12221.prol, !llvm.loop !269

.lr.ph12221.prol.loopexit:                        ; preds = %.lr.ph12221.prol, %.lr.ph12221.preheader14931
  %indvars.iv13336.unr = phi i64 [ %indvars.iv13336.ph, %.lr.ph12221.preheader14931 ], [ %indvars.iv.next13337.prol, %.lr.ph12221.prol ]
  %i.bdn = sub nsw i64 %indvars.iv13336.ph, %wide.trip.count13339
  %i.bdo = icmp ugt i64 %i.bdn, -4
  br i1 %i.bdo, label %._crit_edge12222, label %.lr.ph12221

.lr.ph12221:                                      ; preds = %.lr.ph12221.prol.loopexit, %.lr.ph12221
  %indvars.iv13336 = phi i64 [ %indvars.iv.next13337.3, %.lr.ph12221 ], [ %indvars.iv13336.unr, %.lr.ph12221.prol.loopexit ] ; 6 uses
  %i.bdp = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv13336
  %i.bdq = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv13336
  %i.bdr = load i64, ptr %i.bdq, align 8, !tbaa !121
  store i64 %i.bdr, ptr %i.bdp, align 8, !tbaa !121
  %indvars.iv.next13337 = add nuw nsw i64 %indvars.iv13336, 1 ; 2 uses
  %i.bds = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13337
  %i.bdt = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13337
  %i.bdu = load i64, ptr %i.bdt, align 8, !tbaa !121
  store i64 %i.bdu, ptr %i.bds, align 8, !tbaa !121
  %indvars.iv.next13337.1 = add nuw nsw i64 %indvars.iv13336, 2 ; 2 uses
  %i.bdv = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13337.1
  %i.bdw = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13337.1
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !121
  store i64 %i.bdx, ptr %i.bdv, align 8, !tbaa !121
  %indvars.iv.next13337.2 = add nuw nsw i64 %indvars.iv13336, 3 ; 2 uses
  %i.bdy = getelementptr [8 x i8], ptr %i.bcx, i64 %indvars.iv.next13337.2
  %i.bdz = getelementptr [8 x i8], ptr %i.bcs, i64 %indvars.iv.next13337.2
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !121
  store i64 %i.bea, ptr %i.bdy, align 8, !tbaa !121
  %indvars.iv.next13337.3 = add nuw nsw i64 %indvars.iv13336, 4 ; 2 uses
  %exitcond13340.not.3 = icmp eq i64 %indvars.iv.next13337.3, %wide.trip.count13339
  br i1 %exitcond13340.not.3, label %._crit_edge12222, label %.lr.ph12221, !llvm.loop !270

._crit_edge12222:                                 ; preds = %.lr.ph12221.prol.loopexit, %.lr.ph12221, %middle.block, %bb.mb
  %i.beb = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.beb, align 8, !tbaa !248
  %i.bec = getelementptr [8 x i8], ptr %.4.val10288, i64 %i.bap
  store ptr %i.bec, ptr %i.bbj, align 8, !tbaa !216
  store ptr %i.bct, ptr %i.ba, align 8, !tbaa !210
  %i.bed = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.bee = add i32 %i.bed, -1
  store i32 %i.bee, ptr %i.lwm, align 4, !tbaa !107
  %i.bef = getelementptr i8, ptr %i.bct, i64 64
  %.val10287 = load ptr, ptr %i.bef, align 8, !tbaa !216
  %i.beg = getelementptr i8, ptr %i.bct, i64 56
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !213 ; 2 uses
  %i.bei = load i16, ptr %i.beh, align 2, !tbaa !217 ; 2 uses
  %.sroa.23436.0.extract.shift = lshr i16 %i.bei, 8
  %.sroa.23436.0.extract.trunc = zext nneg i16 %.sroa.23436.0.extract.shift to i32
  %i.bej = and i16 %i.bei, 255
  %i.bek = zext nneg i16 %i.bej to i64
  br label %.backedge.backedge

bb.mc:                                            ; preds = %.backedge
  %i.bel = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bel, align 8, !tbaa !213
  %i.bem = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.ben = load ptr, ptr %i.lwl, align 8, !tbaa !148
  %i.beo = getelementptr i8, ptr %i.ben, i64 8568
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !149
  %.not9584 = icmp eq ptr %i.bep, null
  br i1 %.not9584, label %bb.md, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.md:                                            ; preds = %bb.mc
  %i.beq = xor i32 %.09034, -1
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.ber ; 2 uses
  %.sroa.03425.0.copyload = load i64, ptr %i.bes, align 8, !tbaa !121
  %i.bet = sub i32 -2, %.09034
  %i.beu = sext i32 %i.bet to i64                 ; 2 uses
  %i.bev = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.beu ; 2 uses
  %.sroa.03427.0.copyload = load i64, ptr %i.bev, align 8, !tbaa !121 ; 3 uses
  %i.bew = getelementptr i8, ptr %.32, i64 4
  %.val10434 = load i32, ptr %i.bew, align 2
  %i.bex = and i64 %.sroa.03427.0.copyload, -2
  %i.bey = inttoptr i64 %i.bex to ptr             ; 3 uses
  %i.bez = getelementptr i8, ptr %i.bey, i64 8
  %.val9858 = load ptr, ptr %i.bez, align 8, !tbaa !122
  %.not9585 = icmp eq ptr %.val9858, @PyMethod_Type
  br i1 %.not9585, label %bb.me, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.me:                                            ; preds = %bb.md
  %i.bfa = getelementptr i8, ptr %i.bey, i64 16   ; 2 uses
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !262 ; 3 uses
  %i.bfc = getelementptr i8, ptr %i.bfb, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !122
  %i.bfe = icmp eq ptr %i.bfd, @PyFunction_Type
  br i1 %i.bfe, label %bb.mf, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.mf:                                            ; preds = %bb.me
  %i.bff = getelementptr i8, ptr %i.bfb, i64 144
  %i.bfg = load i32, ptr %i.bff, align 8, !tbaa !239
  %i.bfh = icmp eq i32 %i.bfg, %.val10434
  %i.bfi = icmp eq i64 %.sroa.03425.0.copyload, 1
  %or.cond11 = select i1 %i.bfh, i1 %i.bfi, i1 false
  br i1 %or.cond11, label %bb.mg, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.mg:                                            ; preds = %bb.mf
  %i.bfj = getelementptr i8, ptr %i.bey, i64 24
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !260 ; 4 uses
  %i.bfl = load i32, ptr %i.bfk, align 8, !tbaa !121 ; 2 uses
  %.not.i10658 = icmp sgt i32 %i.bfl, -1
  br i1 %.not.i10658, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bfm = ptrtoint ptr %i.bfk to i64
  %i.bfn = or i64 %i.bfm, 1
  br label %_PyStackRef_FromPyObjectNew.exit10660

bb.mi:                                            ; preds = %bb.mg
  %i.bfo = add nuw i32 %i.bfl, 1
  store i32 %i.bfo, ptr %i.bfk, align 8, !tbaa !121
  %i.bfp = ptrtoint ptr %i.bfk to i64
  %.pre13355 = load ptr, ptr %i.bfa, align 8, !tbaa !262
  br label %_PyStackRef_FromPyObjectNew.exit10660

_PyStackRef_FromPyObjectNew.exit10660:            ; preds = %bb.mh, %bb.mi
  %i.bfq = phi ptr [ %i.bfb, %bb.mh ], [ %.pre13355, %bb.mi ] ; 4 uses
  %.sroa.0.0.i10659 = phi i64 [ %i.bfn, %bb.mh ], [ %i.bfp, %bb.mi ] ; 2 uses
  %i.bfr = load i32, ptr %i.bfq, align 8, !tbaa !121 ; 2 uses
  %.not.i10661 = icmp sgt i32 %i.bfr, -1
  br i1 %.not.i10661, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10660
  %i.bfs = ptrtoint ptr %i.bfq to i64
  %i.bft = or i64 %i.bfs, 1
  br label %_PyStackRef_FromPyObjectNew.exit10663

bb.mk:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10660
  %i.bfu = add nuw i32 %i.bfr, 1
  store i32 %i.bfu, ptr %i.bfq, align 8, !tbaa !121
  %i.bfv = ptrtoint ptr %i.bfq to i64
  br label %_PyStackRef_FromPyObjectNew.exit10663

_PyStackRef_FromPyObjectNew.exit10663:            ; preds = %bb.mj, %bb.mk
  %.sroa.0.0.i10662 = phi i64 [ %i.bft, %bb.mj ], [ %i.bfv, %bb.mk ] ; 3 uses
  store i64 %.sroa.0.0.i10662, ptr %i.bev, align 8, !tbaa !121
  store i64 %.sroa.0.0.i10659, ptr %i.bes, align 8, !tbaa !121
  %i.bfw = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1006211608, ptr %i.bfw, align 8, !tbaa !216
  %i.bfx = and i64 %.sroa.03427.0.copyload, 1
  %.not.not.i10664 = icmp eq i64 %i.bfx, 0
  br i1 %.not.not.i10664, label %bb.ml, label %PyStackRef_CLOSE.exit10665

bb.ml:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10663
  %i.bfy = inttoptr i64 %.sroa.03427.0.copyload to ptr ; 3 uses
  %i.bfz = load i32, ptr %i.bfy, align 8, !tbaa !121
  %i.bga = add i32 %i.bfz, -1                     ; 2 uses
  store i32 %i.bga, ptr %i.bfy, align 8, !tbaa !121
  %i.bgb = icmp eq i32 %i.bga, 0
  br i1 %i.bgb, label %bb.mm, label %PyStackRef_CLOSE.exit10665

bb.mm:                                            ; preds = %bb.ml
  call void @_Py_Dealloc(ptr noundef nonnull %i.bfy) #21
  br label %PyStackRef_CLOSE.exit10665

PyStackRef_CLOSE.exit10665:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10663, %bb.ml, %bb.mm
  %.4.val10286 = load ptr, ptr %i.bfw, align 8, !tbaa !216 ; 3 uses
  %i.bgc = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.bgd = icmp slt i32 %i.bgc, 2
end_hunk_1
begin_hunk_2_@_PyEval_EvalFrameDefault:bb.a

PyStackRef_XCLOSE.exit10809:                      ; preds = %PyStackRef_XCLOSE.exit10807, %bb.vf, %bb.vg
  %.4.val10214 = load ptr, ptr %i.cye, align 8, !tbaa !216
  %i.czg = getelementptr i8, ptr %.4.val10214, i64 -8
  store ptr %i.czg, ptr %i.cye, align 8, !tbaa !216
  %i.czh = and i64 %.sroa.02836.0.copyload, 1
  %.not.not.i10810 = icmp eq i64 %i.czh, 0
  br i1 %.not.not.i10810, label %bb.vh, label %PyStackRef_XCLOSE.exit10811

bb.vh:                                            ; preds = %PyStackRef_XCLOSE.exit10809
  %i.czi = inttoptr i64 %.sroa.02836.0.copyload to ptr ; 3 uses
  %i.czj = load i32, ptr %i.czi, align 8, !tbaa !121
  %i.czk = add i32 %i.czj, -1                     ; 2 uses
  store i32 %i.czk, ptr %i.czi, align 8, !tbaa !121
  %i.czl = icmp eq i32 %i.czk, 0
  br i1 %i.czl, label %bb.vi, label %PyStackRef_XCLOSE.exit10811

bb.vi:                                            ; preds = %bb.vh
  call void @_Py_Dealloc(ptr noundef nonnull %i.czi) #21
  br label %PyStackRef_XCLOSE.exit10811

PyStackRef_XCLOSE.exit10811:                      ; preds = %PyStackRef_XCLOSE.exit10809, %bb.vh, %bb.vi
  %i.czm = load atomic i64, ptr %i.lwk monotonic, align 8
  %i.czn = and i64 %i.czm, 255
  %.not.i10812 = icmp eq i64 %i.czn, 0
  br i1 %.not.i10812, label %check_periodics.exit10814.thread, label %check_periodics.exit10814

check_periodics.exit10814.thread:                 ; preds = %PyStackRef_XCLOSE.exit10811
  %.4.val1021211561 = load ptr, ptr %i.cye, align 8, !tbaa !216
  br label %bb.vj

check_periodics.exit10814:                        ; preds = %PyStackRef_XCLOSE.exit10811
  %i.czo = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10212 = load ptr, ptr %i.cye, align 8, !tbaa !216 ; 2 uses
  %.not9548 = icmp eq i32 %i.czo, 0
  br i1 %.not9548, label %bb.vj, label %_PyEval_FormatExcUnbound.exit.loopexit

bb.vj:                                            ; preds = %check_periodics.exit10814.thread, %check_periodics.exit10814
  %.4.val1021211563 = phi ptr [ %.4.val1021211561, %check_periodics.exit10814.thread ], [ %.4.val10212, %check_periodics.exit10814 ]
  %i.czp = load i16, ptr %i.cwz, align 2, !tbaa !217 ; 2 uses
  %.sroa.22801.0.extract.shift = lshr i16 %i.czp, 8
  %.sroa.22801.0.extract.trunc = zext nneg i16 %.sroa.22801.0.extract.shift to i32
  %i.czq = and i16 %i.czp, 255
  %i.czr = zext nneg i16 %i.czq to i64
  br label %.backedge.backedge

bb.vk:                                            ; preds = %.backedge
  %i.czs = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.czs, align 8, !tbaa !213
  %i.czt = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.czu = sub i32 -2, %.09034
  %i.czv = sext i32 %i.czu to i64                 ; 3 uses
  %i.czw = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.czv
  %.sroa.02798.0.copyload = load i64, ptr %i.czw, align 8, !tbaa !121 ; 2 uses
  %i.czx = and i64 %.sroa.02798.0.copyload, -2
  %i.czy = inttoptr i64 %i.czx to ptr
  %i.czz = getelementptr i8, ptr %i.czy, i64 8
  %i.daa = load ptr, ptr %i.czz, align 8, !tbaa !122 ; 2 uses
  %i.dab = icmp eq ptr %i.daa, @PyFunction_Type
  %i.dac = icmp eq ptr %i.daa, @PyMethod_Type
  %or.cond11651 = or i1 %i.dab, %i.dac
  br i1 %or.cond11651, label %_PyThreadState_HasStackSpace.exit10640.thread, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dad = sub i32 0, %.09034
  %i.dae = sext i32 %i.dad to i64
  %i.daf = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dae
  %i.dag = xor i32 %.09034, -1
  %i.dah = sext i32 %i.dag to i64                 ; 2 uses
  %i.dai = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dah
  %.sroa.02797.0.copyload = load i64, ptr %i.dai, align 8, !tbaa !121
  %i.daj = icmp ne i64 %.sroa.02797.0.copyload, 1 ; 2 uses
  %.09113.idx = select i1 %i.daj, i64 -8, i64 0
  %.09113 = getelementptr i8, ptr %i.daf, i64 %.09113.idx
  %i.dak = zext i1 %i.daj to i32
  %.09112 = add i32 %.09034, %i.dak
  %i.dal = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.4.val1006211608, ptr %i.dal, align 8, !tbaa !216
  %i.dam = call ptr @_Py_VectorCall_StackRefSteal(i64 %.sroa.02798.0.copyload, ptr noundef %.09113, i32 noundef %.09112, i64 1) ; 3 uses
  %.4.val10211 = load ptr, ptr %i.dal, align 8, !tbaa !216 ; 3 uses
  %i.dan = icmp eq ptr %i.dam, null
  br i1 %i.dan, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.dao = getelementptr [8 x i8], ptr %.4.val10211, i64 %i.czv
  br label %_PyEval_FormatExcUnbound.exit

bb.vn:                                            ; preds = %bb.vl
  %i.dap = getelementptr i8, ptr %i.dam, i64 6
  %i.daq = load i16, ptr %i.dap, align 2, !tbaa !121
  %i.dar = and i16 %i.daq, 1
  %i.das = ptrtoint ptr %i.dam to i64
  %i.dat = zext nneg i16 %i.dar to i64
  %i.dau = or i64 %i.dat, %i.das
  %i.dav = getelementptr [8 x i8], ptr %.4.val10211, i64 %i.czv
  store i64 %i.dau, ptr %i.dav, align 8, !tbaa !121
  %i.daw = getelementptr [8 x i8], ptr %.4.val10211, i64 %i.dah ; 2 uses
  store ptr %i.daw, ptr %i.dal, align 8, !tbaa !216
  %i.dax = load atomic i64, ptr %i.lwk monotonic, align 8
  %i.day = and i64 %i.dax, 255
  %.not.i10815 = icmp eq i64 %i.day, 0
  br i1 %.not.i10815, label %check_periodics.exit10817.thread, label %check_periodics.exit10817

check_periodics.exit10817:                        ; preds = %bb.vn
  %i.daz = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10210 = load ptr, ptr %i.dal, align 8, !tbaa !216 ; 2 uses
  %.not9544 = icmp eq i32 %i.daz, 0
  br i1 %.not9544, label %check_periodics.exit10817.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit10817.thread:                 ; preds = %bb.vn, %check_periodics.exit10817
  %.4.val1021011567 = phi ptr [ %.4.val10210, %check_periodics.exit10817 ], [ %i.daw, %bb.vn ]
  %i.dba = load i16, ptr %i.czt, align 2, !tbaa !217 ; 2 uses
  %.sroa.22784.0.extract.shift = lshr i16 %i.dba, 8
  %.sroa.22784.0.extract.trunc = zext nneg i16 %.sroa.22784.0.extract.shift to i32
  %i.dbb = and i16 %i.dba, 255
  %i.dbc = zext nneg i16 %i.dbb to i64
  br label %.backedge.backedge

bb.vo:                                            ; preds = %.backedge
  %i.dbd = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dbd, align 8, !tbaa !213
  %i.dbe = getelementptr i8, ptr %.32, i64 8      ; 7 uses
  %i.dbf = load ptr, ptr %i.lwl, align 8, !tbaa !148
  %i.dbg = getelementptr i8, ptr %i.dbf, i64 8568
  %i.dbh = load ptr, ptr %i.dbg, align 8, !tbaa !149
  %.not9541 = icmp eq ptr %i.dbh, null
  br i1 %.not9541, label %bb.vp, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vp:                                            ; preds = %bb.vo
  %i.dbi = sub i32 -2, %.09034
  %i.dbj = sext i32 %i.dbi to i64
  %i.dbk = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dbj ; 2 uses
  %.sroa.02777.0.copyload = load i64, ptr %i.dbk, align 8, !tbaa !121 ; 2 uses
  %i.dbl = and i64 %.sroa.02777.0.copyload, -2
  %i.dbm = inttoptr i64 %i.dbl to ptr             ; 3 uses
  %i.dbn = getelementptr i8, ptr %i.dbm, i64 8
  %i.dbo = load ptr, ptr %i.dbn, align 8, !tbaa !122
  %i.dbp = icmp eq ptr %i.dbo, @PyFunction_Type
  br i1 %i.dbp, label %bb.vq, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vq:                                            ; preds = %bb.vp
  %i.dbq = getelementptr i8, ptr %.32, i64 4
  %.val10431 = load i32, ptr %i.dbq, align 2
  %i.dbr = getelementptr i8, ptr %i.dbm, i64 144
  %i.dbs = load i32, ptr %i.dbr, align 8, !tbaa !239
  %.not9542 = icmp eq i32 %i.dbs, %.val10431
  br i1 %.not9542, label %bb.vr, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vr:                                            ; preds = %bb.vq
  %i.dbt = xor i32 %.09034, -1
  %i.dbu = sext i32 %i.dbt to i64
  %i.dbv = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dbu
  %.sroa.02774.0.copyload = load i64, ptr %i.dbv, align 8, !tbaa !121 ; 2 uses
  %i.dbw = getelementptr i8, ptr %i.dbm, i64 48
  %i.dbx = load ptr, ptr %i.dbw, align 8, !tbaa !242 ; 2 uses
  %i.dby = getelementptr i8, ptr %i.dbx, i64 52
  %i.dbz = load i32, ptr %i.dby, align 4, !tbaa !267 ; 2 uses
  %i.dca = icmp ne i64 %.sroa.02774.0.copyload, 1 ; 3 uses
  %i.dcb = zext i1 %i.dca to i32
  %i.dcc = add i32 %.09034, %i.dcb
  %.not9543 = icmp eq i32 %i.dbz, %i.dcc
  br i1 %.not9543, label %bb.vs, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vs:                                            ; preds = %bb.vr
  %i.dcd = load ptr, ptr %i.lwq, align 8, !tbaa !241 ; 2 uses
  %.not.i10818 = icmp eq ptr %i.dcd, null
  br i1 %.not.i10818, label %_PyThreadState_HasStackSpace.exit10640.thread, label %_PyThreadState_HasStackSpace.exit10819

_PyThreadState_HasStackSpace.exit10819:           ; preds = %bb.vs
  %i.dce = getelementptr i8, ptr %i.dbx, i64 76
  %i.dcf = load i32, ptr %i.dce, align 4, !tbaa !243
  %i.dcg = sext i32 %i.dcf to i64
  %i.dch = load ptr, ptr %i.lwr, align 8, !tbaa !244
  %i.dci = ptrtoint ptr %i.dch to i64
  %i.dcj = ptrtoint ptr %i.dcd to i64
  %i.dck = sub i64 %i.dci, %i.dcj
  %i.dcl = ashr exact i64 %i.dck, 3
  %i.dcm = icmp sgt i64 %i.dcl, %i.dcg
  br i1 %i.dcm, label %bb.vt, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vt:                                            ; preds = %_PyThreadState_HasStackSpace.exit10819
  %i.dcn = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.dco = icmp slt i32 %i.dcn, 2
  br i1 %i.dco, label %_PyThreadState_HasStackSpace.exit10640.thread, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.dcp = sub i32 0, %.09034
  %i.dcq = sext i32 %i.dcp to i64                 ; 2 uses
  %i.dcr = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dcq ; 6 uses
  %i.dcs = call fastcc ptr @_PyFrame_PushUnchecked(ptr noundef nonnull %0, i64 %.sroa.02777.0.copyload, i32 noundef %i.dbz, ptr noundef nonnull %.4) ; 6 uses
  %i.dct = ptrtoaddr ptr %i.dcs to i64
  %i.dcu = getelementptr i8, ptr %i.dcs, i64 80   ; 2 uses
  %i.dcv = zext i1 %i.dca to i64
  %i.dcw = getelementptr [8 x i8], ptr %i.dcu, i64 %i.dcv ; 6 uses
  store i64 %.sroa.02774.0.copyload, ptr %i.dcu, align 8, !tbaa !121
  %i.dcx = icmp sgt i32 %.09034, 0
  br i1 %i.dcx, label %.lr.ph12217.preheader, label %._crit_edge12218

.lr.ph12217.preheader:                            ; preds = %bb.vu
  %wide.trip.count = zext nneg i32 %.09034 to i64 ; 5 uses
  %min.iters.check14919 = icmp ult i32 %.09034, 8
  br i1 %min.iters.check14919, label %.lr.ph12217.preheader14932, label %vector.memcheck14915

vector.memcheck14915:                             ; preds = %.lr.ph12217.preheader
  %i.dcy = add i64 %i.dct, 80
  %i.dcz = select i1 %i.dca, i64 8, i64 0
  %i.dda = add i64 %i.dcy, %i.dcz
  %i.ddb = shl nsw i64 %i.dcq, 3
  %i.ddc = add i64 %i.ddb, %.4.val100621160814916
  %i.ddd = sub i64 %i.dda, %i.ddc
  %diff.check14917 = icmp ult i64 %i.ddd, 32
  br i1 %diff.check14917, label %.lr.ph12217.preheader14932, label %vector.ph14920

vector.ph14920:                                   ; preds = %vector.memcheck14915
  %n.vec14922 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body14923

vector.body14923:                                 ; preds = %vector.body14923, %vector.ph14920
  %index14924 = phi i64 [ 0, %vector.ph14920 ], [ %index.next14927, %vector.body14923 ] ; 3 uses
  %i.dde = getelementptr [8 x i8], ptr %i.dcw, i64 %index14924 ; 2 uses
  %i.ddf = getelementptr [8 x i8], ptr %i.dcr, i64 %index14924 ; 2 uses
  %i.ddg = getelementptr i8, ptr %i.ddf, i64 16
  %wide.load14925 = load <2 x i64>, ptr %i.ddf, align 8, !tbaa !121
  %wide.load14926 = load <2 x i64>, ptr %i.ddg, align 8, !tbaa !121
  %i.ddh = getelementptr i8, ptr %i.dde, i64 16
  store <2 x i64> %wide.load14925, ptr %i.dde, align 8, !tbaa !121
  store <2 x i64> %wide.load14926, ptr %i.ddh, align 8, !tbaa !121
  %index.next14927 = add nuw i64 %index14924, 4   ; 2 uses
  %i.ddi = icmp eq i64 %index.next14927, %n.vec14922
  br i1 %i.ddi, label %middle.block14928, label %vector.body14923, !llvm.loop !282

middle.block14928:                                ; preds = %vector.body14923
  %cmp.n14929 = icmp eq i64 %n.vec14922, %wide.trip.count
  br i1 %cmp.n14929, label %._crit_edge12218, label %.lr.ph12217.preheader14932

.lr.ph12217.preheader14932:                       ; preds = %vector.memcheck14915, %.lr.ph12217.preheader, %middle.block14928
  %indvars.iv13333.ph = phi i64 [ 0, %vector.memcheck14915 ], [ 0, %.lr.ph12217.preheader ], [ %n.vec14922, %middle.block14928 ] ; 3 uses
  %xtraiter15467 = and i64 %wide.trip.count, 3    ; 2 uses
  %lcmp.mod15468.not = icmp eq i64 %xtraiter15467, 0
  br i1 %lcmp.mod15468.not, label %.lr.ph12217.prol.loopexit, label %.lr.ph12217.prol

.lr.ph12217.prol:                                 ; preds = %.lr.ph12217.preheader14932, %.lr.ph12217.prol
  %indvars.iv13333.prol = phi i64 [ %indvars.iv.next13334.prol, %.lr.ph12217.prol ], [ %indvars.iv13333.ph, %.lr.ph12217.preheader14932 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph12217.prol ], [ 0, %.lr.ph12217.preheader14932 ]
  %i.ddj = getelementptr [8 x i8], ptr %i.dcw, i64 %indvars.iv13333.prol
  %i.ddk = getelementptr [8 x i8], ptr %i.dcr, i64 %indvars.iv13333.prol
  %i.ddl = load i64, ptr %i.ddk, align 8, !tbaa !121
  store i64 %i.ddl, ptr %i.ddj, align 8, !tbaa !121
  %indvars.iv.next13334.prol = add nuw nsw i64 %indvars.iv13333.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter15467
  br i1 %prol.iter.cmp.not, label %.lr.ph12217.prol.loopexit, label %.lr.ph12217.prol, !llvm.loop !283

.lr.ph12217.prol.loopexit:                        ; preds = %.lr.ph12217.prol, %.lr.ph12217.preheader14932
  %indvars.iv13333.unr = phi i64 [ %indvars.iv13333.ph, %.lr.ph12217.preheader14932 ], [ %indvars.iv.next13334.prol, %.lr.ph12217.prol ]
  %i.ddm = sub nsw i64 %indvars.iv13333.ph, %wide.trip.count
  %i.ddn = icmp ugt i64 %i.ddm, -4
  br i1 %i.ddn, label %._crit_edge12218, label %.lr.ph12217

.lr.ph12217:                                      ; preds = %.lr.ph12217.prol.loopexit, %.lr.ph12217
  %indvars.iv13333 = phi i64 [ %indvars.iv.next13334.3, %.lr.ph12217 ], [ %indvars.iv13333.unr, %.lr.ph12217.prol.loopexit ] ; 6 uses
  %i.ddo = getelementptr [8 x i8], ptr %i.dcw, i64 %indvars.iv13333
  %i.ddp = getelementptr [8 x i8], ptr %i.dcr, i64 %indvars.iv13333
  %i.ddq = load i64, ptr %i.ddp, align 8, !tbaa !121
  store i64 %i.ddq, ptr %i.ddo, align 8, !tbaa !121
  %indvars.iv.next13334 = add nuw nsw i64 %indvars.iv13333, 1 ; 2 uses
  %i.ddr = getelementptr [8 x i8], ptr %i.dcw, i64 %indvars.iv.next13334
  %i.dds = getelementptr [8 x i8], ptr %i.dcr, i64 %indvars.iv.next13334
  %i.ddt = load i64, ptr %i.dds, align 8, !tbaa !121
  store i64 %i.ddt, ptr %i.ddr, align 8, !tbaa !121
  %indvars.iv.next13334.1 = add nuw nsw i64 %indvars.iv13333, 2 ; 2 uses
  %i.ddu = getelementptr [8 x i8], ptr %i.dcw, i64 %indvars.iv.next13334.1
  %i.ddv = getelementptr [8 x i8], ptr %i.dcr, i64 %indvars.iv.next13334.1
  %i.ddw = load i64, ptr %i.ddv, align 8, !tbaa !121
  store i64 %i.ddw, ptr %i.ddu, align 8, !tbaa !121
  %indvars.iv.next13334.2 = add nuw nsw i64 %indvars.iv13333, 3 ; 2 uses
  %i.ddx = getelementptr [8 x i8], ptr %i.dcw, i64 %indvars.iv.next13334.2
  %i.ddy = getelementptr [8 x i8], ptr %i.dcr, i64 %indvars.iv.next13334.2
  %i.ddz = load i64, ptr %i.ddy, align 8, !tbaa !121
  store i64 %i.ddz, ptr %i.ddx, align 8, !tbaa !121
  %indvars.iv.next13334.3 = add nuw nsw i64 %indvars.iv13333, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next13334.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge12218, label %.lr.ph12217, !llvm.loop !284

._crit_edge12218:                                 ; preds = %.lr.ph12217.prol.loopexit, %.lr.ph12217, %middle.block14928, %bb.vu
  %i.dea = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dea, align 8, !tbaa !248
  %i.deb = getelementptr i8, ptr %.4, i64 64
  store ptr %i.dbk, ptr %i.deb, align 8, !tbaa !216
  store ptr %i.dcs, ptr %i.ba, align 8, !tbaa !210
  %i.dec = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.ded = add i32 %i.dec, -1
  store i32 %i.ded, ptr %i.lwm, align 4, !tbaa !107
  %i.dee = getelementptr i8, ptr %i.dcs, i64 64
  %.val10209 = load ptr, ptr %i.dee, align 8, !tbaa !216
  %i.def = getelementptr i8, ptr %i.dcs, i64 56
  %i.deg = load ptr, ptr %i.def, align 8, !tbaa !213 ; 2 uses
  %i.deh = load i16, ptr %i.deg, align 2, !tbaa !217 ; 2 uses
  %.sroa.22749.0.extract.shift = lshr i16 %i.deh, 8
  %.sroa.22749.0.extract.trunc = zext nneg i16 %.sroa.22749.0.extract.shift to i32
  %i.dei = and i16 %i.deh, 255
  %i.dej = zext nneg i16 %i.dei to i64
  br label %.backedge.backedge

bb.vv:                                            ; preds = %.backedge
  %i.dek = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dek, align 8, !tbaa !213
  %i.del = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.dem = load ptr, ptr %i.lwl, align 8, !tbaa !148
  %i.den = getelementptr i8, ptr %i.dem, i64 8568
  %i.deo = load ptr, ptr %i.den, align 8, !tbaa !149
  %.not9538 = icmp eq ptr %i.deo, null
  br i1 %.not9538, label %bb.vw, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vw:                                            ; preds = %bb.vv
  %i.dep = sub i32 -2, %.09034
  %i.deq = sext i32 %i.dep to i64                 ; 2 uses
  %i.der = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.deq
  %.sroa.02743.0.copyload = load i64, ptr %i.der, align 8, !tbaa !121 ; 2 uses
  %i.des = and i64 %.sroa.02743.0.copyload, -2
  %i.det = inttoptr i64 %i.des to ptr             ; 4 uses
  %i.deu = getelementptr i8, ptr %i.det, i64 8
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !122
  %i.dew = icmp eq ptr %i.dev, @PyFunction_Type
  br i1 %i.dew, label %bb.vx, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vx:                                            ; preds = %bb.vw
  %i.dex = getelementptr i8, ptr %.32, i64 4
  %.val10430 = load i32, ptr %i.dex, align 2
  %i.dey = getelementptr i8, ptr %i.det, i64 144
  %i.dez = load i32, ptr %i.dey, align 8, !tbaa !239
  %.not9539 = icmp eq i32 %i.dez, %.val10430
  br i1 %.not9539, label %bb.vy, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.vy:                                            ; preds = %bb.vx
  %i.dfa = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.dfb = icmp slt i32 %i.dfa, 2
  br i1 %i.dfb, label %_PyThreadState_HasStackSpace.exit10640.thread, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.dfc = sub i32 0, %.09034
  %i.dfd = sext i32 %i.dfc to i64
  %i.dfe = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dfd
  %i.dff = xor i32 %.09034, -1
  %i.dfg = sext i32 %i.dff to i64
  %i.dfh = getelementptr [8 x i8], ptr %.4.val1006211608, i64 %i.dfg
  %.sroa.02742.0.copyload = load i64, ptr %i.dfh, align 8, !tbaa !121
  %i.dfi = icmp ne i64 %.sroa.02742.0.copyload, 1 ; 2 uses
  %i.dfj = zext i1 %i.dfi to i32
  %.09117 = add i32 %.09034, %i.dfj
  %.09116.idx = select i1 %i.dfi, i64 -8, i64 0
  %.09116 = getelementptr i8, ptr %i.dfe, i64 %.09116.idx
  %i.dfk = getelementptr i8, ptr %i.det, i64 48
  %.val10382 = load ptr, ptr %i.dfk, align 8, !tbaa !242
  %i.dfl = getelementptr i8, ptr %.val10382, i64 48
  %i.dfm = load i32, ptr %i.dfl, align 8, !tbaa !214
  %i.dfn = and i32 %i.dfm, 1
  %.not9540 = icmp eq i32 %i.dfn, 0
  br i1 %.not9540, label %bb.wa, label %_Py_NewRef.exit10820

bb.wa:                                            ; preds = %bb.vz
  %i.dfo = getelementptr i8, ptr %i.det, i64 16
  %.val10401 = load ptr, ptr %i.dfo, align 8, !tbaa !264 ; 4 uses
  %i.dfp = load i32, ptr %.val10401, align 8, !tbaa !121 ; 2 uses
  %i.dfq = icmp ugt i32 %i.dfp, -1073741825
  br i1 %i.dfq, label %_Py_NewRef.exit10820, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.dfr = add nuw i32 %i.dfp, 1
  store i32 %i.dfr, ptr %.val10401, align 8, !tbaa !121
  br label %_Py_NewRef.exit10820

_Py_NewRef.exit10820:                             ; preds = %bb.wb, %bb.wa, %bb.vz
  %i.dfs = phi ptr [ null, %bb.vz ], [ %.val10401, %bb.wa ], [ %.val10401, %bb.wb ]
  %i.dft = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.4.val1006211608, ptr %i.dft, align 8, !tbaa !216
  %i.dfu = sext i32 %.09117 to i64
  %i.dfv = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02743.0.copyload, ptr noundef %i.dfs, ptr noundef %.09116, i64 noundef %i.dfu, ptr noundef null, ptr noundef nonnull %.4) ; 5 uses
  %.4.val10208 = load ptr, ptr %i.dft, align 8, !tbaa !216
  %i.dfw = getelementptr [8 x i8], ptr %.4.val10208, i64 %i.deq ; 2 uses
  %i.dfx = icmp eq ptr %i.dfv, null
  br i1 %i.dfx, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.wc

bb.wc:                                            ; preds = %_Py_NewRef.exit10820
  %i.dfy = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.dfy, align 8, !tbaa !248
  store ptr %i.dfw, ptr %i.dft, align 8, !tbaa !216
  store ptr %i.dfv, ptr %i.ba, align 8, !tbaa !210
  %i.dfz = load i32, ptr %i.lwm, align 4, !tbaa !107
  %i.dga = add i32 %i.dfz, -1
  store i32 %i.dga, ptr %i.lwm, align 4, !tbaa !107
  %i.dgb = getelementptr i8, ptr %i.dfv, i64 64
  %.val10207 = load ptr, ptr %i.dgb, align 8, !tbaa !216
  %i.dgc = getelementptr i8, ptr %i.dfv, i64 56
  %i.dgd = load ptr, ptr %i.dgc, align 8, !tbaa !213 ; 2 uses
  %i.dge = load i16, ptr %i.dgd, align 2, !tbaa !217 ; 2 uses
  %.sroa.22724.0.extract.shift = lshr i16 %i.dge, 8
  %.sroa.22724.0.extract.trunc = zext nneg i16 %.sroa.22724.0.extract.shift to i32
  %i.dgf = and i16 %i.dge, 255
  %i.dgg = zext nneg i16 %i.dgf to i64
  br label %.backedge.backedge

bb.wd:                                            ; preds = %.backedge
  %i.dgh = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.dgh, align 8, !tbaa !213
  %i.dgi = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.dgj = getelementptr i8, ptr %.4.val1006211608, i64 -16
  %.sroa.02722.0.copyload = load i64, ptr %i.dgj, align 8, !tbaa !121
  %i.dgk = icmp eq i64 %.sroa.02722.0.copyload, 1
  br i1 %i.dgk, label %bb.we, label %_PyThreadState_HasStackSpace.exit10640.thread

end_hunk_2
begin_hunk_3_@_PyFrame_PushUnchecked:bb.a
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !121
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !117
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !117
  %i.u = getelementptr i8, ptr %i.f, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !245
  %i.v = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !246  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !216
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !247
  %i.ac = getelementptr i8, ptr %i.d, i64 208
  %i.ad = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !213
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  store i16 0, ptr %i.ae, align 8, !tbaa !248
  %i.af = getelementptr i8, ptr %i.f, i64 74
  store i8 0, ptr %i.af, align 2, !tbaa !249
  %i.ag = getelementptr i8, ptr %i.f, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !250
  %i.ah = icmp slt i32 %2, %i.x
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_PyFrame_Initialize.exit

.lr.ph.preheader.i:                               ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  store i64 1, ptr %i.aj, align 8, !tbaa !121
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !246
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !251

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  ret ptr %i.f
}

declare ptr @_PyList_SliceSubscript(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_PyCompactLong_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyList_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyTuple_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyUnicode_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyInterpolation_Build(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyList_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_PySet_AddTakeRef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyTemplate_Build(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Py_Specialize_Call(i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @_PyFunction_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyEvalFramePushAndInit(ptr noundef %0, i64 %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = and i64 %1, -2
  %i.d = inttoptr i64 %i.c to ptr                 ; 13 uses
  %i.e = getelementptr i8, ptr %i.d, i64 48       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242  ; 7 uses
  %i.g = getelementptr i8, ptr %i.f, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !243
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @_PyThreadState_PushFrame(ptr noundef %0, i64 noundef %i.i) #21 ; 21 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.dj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.j, i64 8
  store ptr %6, ptr %i.m, align 8, !tbaa !212
  %i.n = getelementptr i8, ptr %i.j, i64 16
  store i64 %1, ptr %i.n, align 8, !tbaa !121
  %i.o = load i32, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = or i64 %i.p, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i32 %i.o, 1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !121
  %i.s = ptrtoint ptr %i.f to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  store i64 %.sroa.0.0.i.i, ptr %i.j, align 8, !tbaa !121
  %i.t = getelementptr i8, ptr %i.d, i64 16
  %i.u = getelementptr i8, ptr %i.j, i64 24
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !117
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !117
  %i.w = getelementptr i8, ptr %i.j, i64 40
  store ptr %2, ptr %i.w, align 8, !tbaa !245
  %i.x = getelementptr i8, ptr %i.j, i64 80       ; 18 uses
  %i.y = getelementptr i8, ptr %i.f, i64 72       ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !246  ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.j, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !216
  %i.ad = getelementptr i8, ptr %i.j, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !247
  %i.ae = getelementptr i8, ptr %i.f, i64 208
  %i.af = getelementptr i8, ptr %i.j, i64 56
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !213
  %i.ag = getelementptr i8, ptr %i.j, i64 72
  store i16 0, ptr %i.ag, align 8, !tbaa !248
  %i.ah = getelementptr i8, ptr %i.j, i64 74
  store i8 0, ptr %i.ah, align 2, !tbaa !249
  %i.ai = getelementptr i8, ptr %i.j, i64 75
  store i8 0, ptr %i.ai, align 1, !tbaa !250
  %i.aj = icmp sgt i32 %i.z, 0
  br i1 %i.aj, label %.lr.ph.i, label %_PyFrame_Initialize.exit

.lr.ph.i:                                         ; preds = %_PyStackRef_FromPyObjectNew.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_PyStackRef_FromPyObjectNew.exit.i ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv.i
  store i64 1, ptr %i.ak, align 8, !tbaa !121
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = load i32, ptr %i.y, align 8, !tbaa !246
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next.i, %i.am
  br i1 %i.an, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !251

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !242 ; 8 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 52     ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !267 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 60     ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !333
  %i.at = add i32 %i.as, %i.aq                    ; 5 uses
  %i.au = sext i32 %i.at to i64                   ; 10 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 48     ; 4 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !214
  %i.ax = and i32 %i.aw, 8
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_PyFrame_Initialize.exit
  %i.ay = tail call ptr @PyDict_New() #21         ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.preheader398.i, label %bb.f

.preheader398.i:                                  ; preds = %bb.e
  %i.ba = icmp sgt i64 %4, 0
  br i1 %i.ba, label %.lr.ph.i61, label %.loopexit397.i

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !214
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = and i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.x, i64 %i.au
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.ay, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !121
  %i.bj = and i16 %i.bi, 1
  %i.bk = ptrtoint ptr %i.ay to i64
  %i.bl = zext nneg i16 %i.bj to i64
  %i.bm = or i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !121
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !267
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_PyFrame_Initialize.exit
  %i.bn = phi i32 [ %.pre.i, %bb.f ], [ %i.aq, %_PyFrame_Initialize.exit ]
  %.0248.i = phi ptr [ %i.ay, %bb.f ], [ null, %_PyFrame_Initialize.exit ] ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %i.bp = icmp sgt i64 %4, %i.bo                  ; 2 uses
  %..i = tail call i64 @llvm.smin.i64(i64 %4, i64 %i.bo) ; 12 uses
  %i.bq = icmp sgt i64 %..i, 0
  br i1 %i.bq, label %.lr.ph440.i.preheader, label %._crit_edge.i

.lr.ph440.i.preheader:                            ; preds = %bb.g
  %min.iters.check = icmp ult i64 %..i, 8
  br i1 %min.iters.check, label %.lr.ph440.i.preheader322, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph440.i.preheader
  %7 = add i64 %i.k, 80
  %8 = sub i64 %7, %i.a
  %diff.check = icmp ult i64 %8, 32
  br i1 %diff.check, label %.lr.ph440.i.preheader322, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %..i, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %wide.load = load <2 x i64>, ptr %i.bs, align 8, !tbaa !121
  %wide.load255 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !121
  %i.bu = getelementptr i8, ptr %i.br, i64 16
  store <2 x i64> %wide.load, ptr %i.br, align 8, !tbaa !121
  store <2 x i64> %wide.load255, ptr %i.bu, align 8, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %..i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph440.i.preheader322

.lr.ph440.i.preheader322:                         ; preds = %vector.memcheck, %.lr.ph440.i.preheader, %middle.block
  %.0253439.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph440.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %..i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph440.i.prol.loopexit, label %.lr.ph440.i.prol

.lr.ph440.i.prol:                                 ; preds = %.lr.ph440.i.preheader322, %.lr.ph440.i.prol
  %.0253439.i.prol = phi i64 [ %i.bz, %.lr.ph440.i.prol ], [ %.0253439.i.ph, %.lr.ph440.i.preheader322 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph440.i.prol ], [ 0, %.lr.ph440.i.preheader322 ]
  %i.bw = getelementptr [8 x i8], ptr %i.x, i64 %.0253439.i.prol
  %i.bx = getelementptr [8 x i8], ptr %3, i64 %.0253439.i.prol
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !121
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !121
  %i.bz = add nuw nsw i64 %.0253439.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph440.i.prol.loopexit, label %.lr.ph440.i.prol, !llvm.loop !359

.lr.ph440.i.prol.loopexit:                        ; preds = %.lr.ph440.i.prol, %.lr.ph440.i.preheader322
  %.0253439.i.unr = phi i64 [ %.0253439.i.ph, %.lr.ph440.i.preheader322 ], [ %i.bz, %.lr.ph440.i.prol ]
  %i.ca = sub nsw i64 %.0253439.i.ph, %..i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph440.i

.lr.ph440.i:                                      ; preds = %.lr.ph440.i.prol.loopexit, %.lr.ph440.i
  %.0253439.i = phi i64 [ %i.cr, %.lr.ph440.i ], [ %.0253439.i.unr, %.lr.ph440.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr [8 x i8], ptr %i.x, i64 %.0253439.i
  %i.cd = getelementptr [8 x i8], ptr %3, i64 %.0253439.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !121
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !121
  %i.cf = add nuw nsw i64 %.0253439.i, 1          ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.x, i64 %i.cf
  %i.ch = getelementptr [8 x i8], ptr %3, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !121
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !121
  %i.cj = add nuw nsw i64 %.0253439.i, 2          ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.x, i64 %i.cj
  %i.cl = getelementptr [8 x i8], ptr %3, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !121
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !121
  %i.cn = add nuw nsw i64 %.0253439.i, 3          ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.x, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %3, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !121
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !121
  %i.cr = add nuw nsw i64 %.0253439.i, 4          ; 2 uses
  %exitcond506.not.i.3 = icmp eq i64 %i.cr, %..i
  br i1 %exitcond506.not.i.3, label %._crit_edge.i, label %.lr.ph440.i, !llvm.loop !360

._crit_edge.i:                                    ; preds = %.lr.ph440.i.prol.loopexit, %.lr.ph440.i, %middle.block, %bb.g
  %i.cs = load i32, ptr %i.av, align 8, !tbaa !214
  %i.ct = and i32 %i.cs, 4
  %.not300.i = icmp eq i32 %i.ct, 0
  br i1 %.not300.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %i.bp, label %bb.i, label %.thread352.i

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr [8 x i8], ptr %3, i64 %..i
  %i.cv = sub i64 %4, %..i
  %i.cw = tail call ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef %i.cu, i64 noundef %i.cv) #21 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.lr.ph442.i, label %.thread352.i

.lr.ph442.i:                                      ; preds = %bb.i, %PyStackRef_CLOSE.exit.i
  %.0261441.i = phi i64 [ %i.df, %PyStackRef_CLOSE.exit.i ], [ %..i, %bb.i ] ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %3, i64 %.0261441.i
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = and i64 %i.cz, 1
  %.not.not.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.not.i.i, label %bb.j, label %PyStackRef_CLOSE.exit.i

bb.j:                                             ; preds = %.lr.ph442.i
  %i.db = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !121
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !121
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.k, label %PyStackRef_CLOSE.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.db) #21
  br label %PyStackRef_CLOSE.exit.i

PyStackRef_CLOSE.exit.i:                          ; preds = %bb.k, %bb.j, %.lr.ph442.i
  %i.df = add i64 %.0261441.i, 1                  ; 2 uses
  %exitcond507.not.i = icmp eq i64 %i.df, %4
  br i1 %exitcond507.not.i, label %.loopexit397.i, label %.lr.ph442.i, !llvm.loop !361

.thread352.i:                                     ; preds = %bb.i, %bb.h
  %.0258.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119440), %bb.h ], [ %i.cw, %bb.i ] ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.x, i64 %i.au
  %i.dh = getelementptr i8, ptr %.0258.ph.i, i64 6
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !121
  %i.dj = and i16 %i.di, 1
  %i.dk = ptrtoint ptr %.0258.ph.i to i64
  %i.dl = zext nneg i16 %i.dj to i64
  %i.dm = or i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !121
  br label %.loopexit394.i

bb.l:                                             ; preds = %._crit_edge.i
  br i1 %i.bp, label %.preheader393.i, label %.loopexit394.i

.preheader393.i:                                  ; preds = %bb.l, %PyStackRef_CLOSE.exit337.i
  %.1254446.i = phi i64 [ %i.du, %PyStackRef_CLOSE.exit337.i ], [ %i.bo, %bb.l ] ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %3, i64 %.1254446.i
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not.not.i336.i = icmp eq i64 %i.dp, 0
  br i1 %.not.not.i336.i, label %bb.m, label %PyStackRef_CLOSE.exit337.i

bb.m:                                             ; preds = %.preheader393.i
  %i.dq = inttoptr i64 %i.do to ptr               ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !121
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !121
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.n, label %PyStackRef_CLOSE.exit337.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dq) #21
  br label %PyStackRef_CLOSE.exit337.i

PyStackRef_CLOSE.exit337.i:                       ; preds = %bb.n, %bb.m, %.preheader393.i
  %i.du = add i64 %.1254446.i, 1                  ; 2 uses
  %exitcond509.not.i = icmp eq i64 %i.du, %4
  br i1 %exitcond509.not.i, label %.loopexit394.i, label %.preheader393.i, !llvm.loop !362

.loopexit394.i:                                   ; preds = %PyStackRef_CLOSE.exit337.i, %bb.l, %.thread352.i
  %.not301.i = icmp eq ptr %5, null
  br i1 %.not301.i, label %PyStackRef_CLOSE.exit339.thread367.i, label %bb.o

bb.o:                                             ; preds = %.loopexit394.i
  %i.dv = getelementptr i8, ptr %5, i64 16
  %.val331.i = load i64, ptr %i.dv, align 8, !tbaa !119 ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %3, i64 %4 ; 2 uses
  %i.dw = icmp sgt i64 %.val331.i, 0
  br i1 %i.dw, label %.lr.ph455.i, label %PyStackRef_CLOSE.exit339.thread367.i

.lr.ph455.i:                                      ; preds = %bb.o
  %i.dx = getelementptr i8, ptr %5, i64 32        ; 2 uses
  %i.dy = getelementptr i8, ptr %i.ao, i64 96     ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ao, i64 56     ; 6 uses
  %i.ea = icmp eq ptr %.0248.i, null
  br label %bb.p

bb.p:                                             ; preds = %bb.bn, %.lr.ph455.i
  %.1453.i = phi i64 [ 0, %.lr.ph455.i ], [ %i.lo, %bb.bn ] ; 5 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dx, i64 %.1453.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !117 ; 9 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.1453.i
  %.sroa.063.0.copyload.i = load i64, ptr %gep.i, align 8, !tbaa !121 ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %.val333.i = load ptr, ptr %i.ee, align 8, !tbaa !122
  %i.ef = getelementptr i8, ptr %.val333.i, i64 168
  %.val334.i = load i64, ptr %i.ef, align 8, !tbaa !123
  %i.eg = and i64 %.val334.i, 268435456
  %.not302.i = icmp eq i64 %i.eg, 0
  br i1 %.not302.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.eh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.ei = getelementptr i8, ptr %i.d, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !363
  %i.ek = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.eh, ptr noundef nonnull @.str.92, ptr noundef %i.ej) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.s:                                             ; preds = %bb.q
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !294 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 32     ; 8 uses
end_hunk_3
begin_hunk_4_@_PyEvalFramePushAndInit:bb.a

bb.x:                                             ; preds = %select.unfold127.us.i.i, %.lr.ph.us.i.i
  %i.fl = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.fx, %select.unfold127.us.i.i ]
  %.1151.us.i.i = phi i32 [ %.084153.us.i.i, %.lr.ph.us.i.i ], [ %.4.us.i.i, %select.unfold127.us.i.i ] ; 3 uses
  %.092150.us.i.i = phi i32 [ 0, %.lr.ph.us.i.i ], [ %i.fw, %select.unfold127.us.i.i ]
  %i.fm = getelementptr [8 x i8], ptr %i.dx, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !117 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, %i.fk
  br i1 %i.fo, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = tail call i32 @PyObject_RichCompareBool(ptr noundef %i.fk, ptr noundef %i.fn, i32 noundef 2) #21 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = icmp slt i32 %i.fp, 0
  br i1 %i.fr, label %.thread146.i.i, label %select.unfold127.us.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fs = tail call i32 @PyList_Append(ptr noundef nonnull %i.fe, ptr noundef %i.fn) #21
  %.not.us.i.i = icmp eq i32 %i.fs, 0
  %i.ft = add i32 %.1151.us.i.i, 1
  br i1 %.not.us.i.i, label %select.unfold127.us.i.i, label %.thread146.i.i

bb.ab:                                            ; preds = %bb.x
  %i.fu = tail call i32 @PyList_Append(ptr noundef nonnull %i.fe, ptr noundef %i.fn) #21
  %.not106.us.i.i = icmp eq i32 %i.fu, 0
  %i.fv = add i32 %.1151.us.i.i, 1
  br i1 %.not106.us.i.i, label %select.unfold127.us.i.i, label %.thread146.i.i

select.unfold127.us.i.i:                          ; preds = %bb.ab, %bb.aa, %bb.z
  %.4.us.i.i = phi i32 [ %.1151.us.i.i, %bb.z ], [ %i.fv, %bb.ab ], [ %i.ft, %bb.aa ] ; 3 uses
  %i.fw = add i32 %.092150.us.i.i, 1              ; 2 uses
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = icmp sgt i64 %.val331.i, %i.fx
  br i1 %i.fy, label %bb.x, label %._crit_edge.us.i.i, !llvm.loop !367

._crit_edge.us.i.i:                               ; preds = %select.unfold127.us.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fz = load i32, ptr %i.dz, align 8, !tbaa !364
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next.i.i, %i.ga
  br i1 %i.gb, label %.lr.ph.us.i.i, label %._crit_edge155.i.i, !llvm.loop !368

._crit_edge155.i.i:                               ; preds = %._crit_edge.us.i.i
  %i.gc = icmp eq i32 %.4.us.i.i, 0
  br i1 %i.gc, label %._crit_edge155.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge155.i.i
  %i.gd = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.96) #21 ; 7 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.thread146.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = tail call ptr @PyUnicode_Join(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.fe) #21 ; 7 uses
  %i.gg = load i32, ptr %i.gd, align 8, !tbaa !121 ; 2 uses
  %.not110.i.i = icmp sgt i32 %i.gg, -1
  br i1 %.not110.i.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.gd, align 8, !tbaa !121
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not111.i.i = icmp eq ptr %i.gj, null
  br i1 %.not111.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.gl = tail call i32 %i.gj(ptr noundef nonnull %i.gd, i32 noundef 1, ptr noundef %i.gk) #21, !inline_history !369 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gm = getelementptr i8, ptr %i.gd, i64 8
  %.val126.i.i = load ptr, ptr %i.gm, align 8, !tbaa !122
  %i.gn = getelementptr i8, ptr %.val126.i.i, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !135
  tail call void %i.go(ptr noundef nonnull %i.gd) #21, !inline_history !369
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.gp = icmp eq ptr %i.gf, null
  br i1 %i.gp, label %.thread146.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.gr = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.gq, ptr noundef nonnull @.str.97, ptr noundef %i.fd, ptr noundef nonnull %i.gf) #21 ; 0 uses
  %i.gs = load i32, ptr %i.gf, align 8, !tbaa !121 ; 2 uses
  %.not112.i.i = icmp sgt i32 %i.gs, -1
  br i1 %.not112.i.i, label %bb.ak, label %.thread146.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.gf, align 8, !tbaa !121
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.al, label %.thread146.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.gv, null
  br i1 %.not113.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.gx = tail call i32 %i.gv(ptr noundef nonnull %i.gf, i32 noundef 1, ptr noundef %i.gw) #21, !inline_history !369 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gy = getelementptr i8, ptr %i.gf, i64 8
  %.val125.i.i = load ptr, ptr %i.gy, align 8, !tbaa !122
  %i.gz = getelementptr i8, ptr %.val125.i.i, i64 48
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !135
  tail call void %i.ha(ptr noundef nonnull %i.gf) #21, !inline_history !369
  br label %.thread146.i.i

._crit_edge155.thread.i.i:                        ; preds = %._crit_edge155.i.i, %.preheader.i.i
  %i.hb = load i32, ptr %i.fe, align 8, !tbaa !121 ; 2 uses
  %.not108.i.i = icmp sgt i32 %i.hb, -1
  br i1 %.not108.i.i, label %bb.ao, label %positional_only_passed_as_keyword.exit.thread357.i

bb.ao:                                            ; preds = %._crit_edge155.thread.i.i
  %i.hc = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hc, ptr %i.fe, align 8, !tbaa !121
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.ap, label %positional_only_passed_as_keyword.exit.thread357.i

bb.ap:                                            ; preds = %bb.ao
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not109.i.i = icmp eq ptr %i.he, null
  br i1 %.not109.i.i, label %positional_only_passed_as_keyword.exit.thread357.sink.split.i, label %positional_only_passed_as_keyword.exit.thread357.critedge389.i

.thread146.i.i:                                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ac
  %i.hf = load i32, ptr %i.fe, align 8, !tbaa !121 ; 2 uses
  %.not115.i.i = icmp sgt i32 %i.hf, -1
  br i1 %.not115.i.i, label %bb.aq, label %positional_only_passed_as_keyword.exit.thread.i

bb.aq:                                            ; preds = %.thread146.i.i
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr %i.fe, align 8, !tbaa !121
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.ar, label %positional_only_passed_as_keyword.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not116.i.i = icmp eq ptr %i.hi, null
  br i1 %.not116.i.i, label %positional_only_passed_as_keyword.exit.thread.critedge.i, label %.sink.split.sink.split.i.i

.sink.split.sink.split.i.i:                       ; preds = %bb.ar
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.hk = tail call i32 %i.hi(ptr noundef nonnull %i.fe, i32 noundef 1, ptr noundef %i.hj) #21, !inline_history !369 ; 0 uses
  %i.hl = getelementptr i8, ptr %i.fe, i64 8
  %.val.i.i = load ptr, ptr %i.hl, align 8, !tbaa !122
  %i.hm = getelementptr i8, ptr %.val.i.i, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !135
  tail call void %i.hn(ptr noundef nonnull %i.fe) #21, !inline_history !369
  br label %positional_only_passed_as_keyword.exit.thread.i

positional_only_passed_as_keyword.exit.thread357.critedge389.i: ; preds = %bb.ap
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.hp = tail call i32 %i.he(ptr noundef nonnull %i.fe, i32 noundef 1, ptr noundef %i.ho) #21, !inline_history !369 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread357.sink.split.i

positional_only_passed_as_keyword.exit.thread357.sink.split.i: ; preds = %positional_only_passed_as_keyword.exit.thread357.critedge389.i, %bb.ap
  %i.hq = getelementptr i8, ptr %i.fe, i64 8
  %.val.i.c390.i = load ptr, ptr %i.hq, align 8, !tbaa !122
  %i.hr = getelementptr i8, ptr %.val.i.c390.i, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !135
  tail call void %i.hs(ptr noundef nonnull %i.fe) #21, !inline_history !370
  br label %positional_only_passed_as_keyword.exit.thread357.i

positional_only_passed_as_keyword.exit.thread357.i: ; preds = %positional_only_passed_as_keyword.exit.thread357.sink.split.i, %bb.ao, %._crit_edge155.thread.i.i, %bb.v
  %i.ht = load i32, ptr %i.dz, align 8, !tbaa !364 ; 2 uses
  %i.hu = icmp sgt i32 %i.at, %i.ht
  br i1 %i.hu, label %bb.as, label %.thread361.i

bb.as:                                            ; preds = %positional_only_passed_as_keyword.exit.thread357.i
  %i.hv = sext i32 %i.ht to i64
  %i.hw = sub nsw i64 %i.au, %i.hv
  %i.hx = tail call ptr @PyList_New(i64 noundef %i.hw) #21 ; 8 uses
  %.not305.i = icmp eq ptr %i.hx, null
  br i1 %.not305.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @PyErr_Clear() #21
  br label %.thread361.i

bb.au:                                            ; preds = %bb.as
  %i.hy = load i32, ptr %i.dz, align 8, !tbaa !364 ; 2 uses
  %i.hz = sext i32 %i.hy to i64                   ; 11 uses
  %i.ia = icmp slt i32 %i.hy, %i.at
  br i1 %i.ia, label %.lr.ph458.i, label %._crit_edge459.i

.lr.ph458.i:                                      ; preds = %bb.au
  %i.ib = getelementptr i8, ptr %i.hx, i64 24
  %.val335.i = load ptr, ptr %i.ib, align 8, !tbaa !252 ; 7 uses
  %i.ic = sub nsw i64 %i.au, %i.hz                ; 3 uses
  %min.iters.check260 = icmp ult i64 %i.ic, 10
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph458.i
  %.val335.i257 = ptrtoaddr ptr %.val335.i to i64
  %9 = add i64 %.val335.i257, -32
  %i.id = shl nsw i64 %i.hz, 3
  %i.ie = add i64 %i.id, %i.fa
  %i.if = sub i64 %9, %i.ie
  %diff.check258 = icmp ult i64 %i.if, 32
  br i1 %diff.check258, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck256
  %n.vec263 = and i64 %i.ic, -4                   ; 3 uses
  %i.ig = add nsw i64 %n.vec263, %i.hz
  %invariant.gep362 = getelementptr [8 x i8], ptr %i.em, i64 %i.hz
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph261
  %index265 = phi i64 [ 0, %vector.ph261 ], [ %index.next268, %vector.body264 ] ; 3 uses
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %index265 ; 2 uses
  %i.ih = getelementptr i8, ptr %gep363, i64 16
  %wide.load266 = load <2 x ptr>, ptr %gep363, align 8, !tbaa !117
  %wide.load267 = load <2 x ptr>, ptr %i.ih, align 8, !tbaa !117
  %i.ii = getelementptr [8 x i8], ptr %.val335.i, i64 %index265 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 16
  store <2 x ptr> %wide.load266, ptr %i.ii, align 8, !tbaa !117
  store <2 x ptr> %wide.load267, ptr %i.ij, align 8, !tbaa !117
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.ik, label %middle.block269, label %vector.body264, !llvm.loop !371

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %i.ic, %n.vec263
  br i1 %cmp.n270, label %._crit_edge459.i, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %vector.memcheck256, %.lr.ph458.i, %middle.block269
  %.0275456.i.ph = phi i64 [ %i.hz, %vector.memcheck256 ], [ %i.hz, %.lr.ph458.i ], [ %i.ig, %middle.block269 ] ; 4 uses
  %i.il = sub nsw i64 %i.au, %.0275456.i.ph
  %xtraiter324 = and i64 %i.il, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol

scalar.ph259.prol:                                ; preds = %scalar.ph259.preheader, %scalar.ph259.prol
  %.0275456.i.prol = phi i64 [ %i.iq, %scalar.ph259.prol ], [ %.0275456.i.ph, %scalar.ph259.preheader ] ; 3 uses
  %prol.iter326 = phi i64 [ %prol.iter326.next, %scalar.ph259.prol ], [ 0, %scalar.ph259.preheader ]
  %i.im = sub nsw i64 %.0275456.i.prol, %i.hz
  %i.in = getelementptr [8 x i8], ptr %i.em, i64 %.0275456.i.prol
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !117
  %i.ip = getelementptr [8 x i8], ptr %.val335.i, i64 %i.im
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !117
  %i.iq = add nsw i64 %.0275456.i.prol, 1         ; 2 uses
  %prol.iter326.next = add i64 %prol.iter326, 1   ; 2 uses
  %prol.iter326.cmp.not = icmp eq i64 %prol.iter326.next, %xtraiter324
  br i1 %prol.iter326.cmp.not, label %scalar.ph259.prol.loopexit, label %scalar.ph259.prol, !llvm.loop !372

scalar.ph259.prol.loopexit:                       ; preds = %scalar.ph259.prol, %scalar.ph259.preheader
  %.0275456.i.unr = phi i64 [ %.0275456.i.ph, %scalar.ph259.preheader ], [ %i.iq, %scalar.ph259.prol ]
  %i.ir = sub nsw i64 %.0275456.i.ph, %i.au
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %._crit_edge459.i, label %scalar.ph259

._crit_edge459.i:                                 ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259, %middle.block269, %bb.au
  %i.it = tail call ptr @_Py_CalculateSuggestions(ptr noundef nonnull %i.hx, ptr noundef nonnull %i.ec) #21 ; 7 uses
  %i.iu = load i32, ptr %i.hx, align 8, !tbaa !121 ; 2 uses
  %.not306.i = icmp sgt i32 %i.iu, -1
  br i1 %.not306.i, label %bb.av, label %bb.az

scalar.ph259:                                     ; preds = %scalar.ph259.prol.loopexit, %scalar.ph259
  %.0275456.i = phi i64 [ %i.jo, %scalar.ph259 ], [ %.0275456.i.unr, %scalar.ph259.prol.loopexit ] ; 6 uses
  %i.iv = sub nsw i64 %.0275456.i, %i.hz
  %i.iw = getelementptr [8 x i8], ptr %i.em, i64 %.0275456.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !117
  %i.iy = getelementptr [8 x i8], ptr %.val335.i, i64 %i.iv
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !117
  %i.iz = add nsw i64 %.0275456.i, 1              ; 2 uses
  %i.ja = sub nsw i64 %i.iz, %i.hz
  %i.jb = getelementptr [8 x i8], ptr %i.em, i64 %i.iz
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !117
  %i.jd = getelementptr [8 x i8], ptr %.val335.i, i64 %i.ja
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !117
  %i.je = add nsw i64 %.0275456.i, 2              ; 2 uses
  %i.jf = sub nsw i64 %i.je, %i.hz
  %i.jg = getelementptr [8 x i8], ptr %i.em, i64 %i.je
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !117
  %i.ji = getelementptr [8 x i8], ptr %.val335.i, i64 %i.jf
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !117
  %i.jj = add nsw i64 %.0275456.i, 3              ; 2 uses
  %i.jk = sub nsw i64 %i.jj, %i.hz
  %i.jl = getelementptr [8 x i8], ptr %i.em, i64 %i.jj
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !117
  %i.jn = getelementptr [8 x i8], ptr %.val335.i, i64 %i.jk
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !117
  %i.jo = add nsw i64 %.0275456.i, 4              ; 2 uses
  %exitcond518.not.i.3 = icmp eq i64 %i.jo, %i.au
  br i1 %exitcond518.not.i.3, label %._crit_edge459.i, label %scalar.ph259, !llvm.loop !373

bb.av:                                            ; preds = %._crit_edge459.i
  %i.jp = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.jp, ptr %i.hx, align 8, !tbaa !121
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not307.i = icmp eq ptr %i.jr, null
  br i1 %.not307.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.jt = tail call i32 %i.jr(ptr noundef nonnull %i.hx, i32 noundef 1, ptr noundef %i.js) #21, !inline_history !370 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ju = getelementptr i8, ptr %i.hx, i64 8
  %.val332.i = load ptr, ptr %i.ju, align 8, !tbaa !122
  %i.jv = getelementptr i8, ptr %.val332.i, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !135
  tail call void %i.jw(ptr noundef nonnull %i.hx) #21, !inline_history !370
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %._crit_edge459.i
  %.not308.i = icmp eq ptr %i.it, null
  br i1 %.not308.i, label %.thread361.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jx = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.jy = getelementptr i8, ptr %i.d, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !363
  %i.ka = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.jx, ptr noundef nonnull @.str.93, ptr noundef %i.jz, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.it) #21 ; 0 uses
  %i.kb = load i32, ptr %i.it, align 8, !tbaa !121 ; 2 uses
  %.not309.i = icmp sgt i32 %i.kb, -1
  br i1 %.not309.i, label %bb.bb, label %positional_only_passed_as_keyword.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.kc = add nsw i32 %i.kb, -1                   ; 2 uses
  store i32 %i.kc, ptr %i.it, align 8, !tbaa !121
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.bc, label %positional_only_passed_as_keyword.exit.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not310.i = icmp eq ptr %i.ke, null
  br i1 %.not310.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.kg = tail call i32 %i.ke(ptr noundef nonnull %i.it, i32 noundef 1, ptr noundef %i.kf) #21, !inline_history !370 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kh = getelementptr i8, ptr %i.it, i64 8
  %.1274.val.i = load ptr, ptr %i.kh, align 8, !tbaa !122
  %i.ki = getelementptr i8, ptr %.1274.val.i, i64 48
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !135
  tail call void %i.kj(ptr noundef nonnull %i.it) #21, !inline_history !370
  br label %positional_only_passed_as_keyword.exit.thread.i

.thread361.i:                                     ; preds = %bb.az, %bb.at, %positional_only_passed_as_keyword.exit.thread357.i
  %i.kk = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !117
  %i.kl = getelementptr i8, ptr %i.d, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !363
  %i.kn = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.kk, ptr noundef nonnull @.str.94, ptr noundef %i.km, ptr noundef nonnull %i.ec) #21 ; 0 uses
  br label %positional_only_passed_as_keyword.exit.thread.i

bb.bf:                                            ; preds = %._crit_edge452.i
  %i.ko = and i64 %.sroa.063.0.copyload.i, -2
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = tail call i32 @PyDict_SetItem(ptr noundef nonnull %.0248.i, ptr noundef nonnull %i.ec, ptr noundef %i.kp) #21
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %positional_only_passed_as_keyword.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ks = and i64 %.sroa.063.0.copyload.i, 1
  %.not.not.i338.i = icmp eq i64 %i.ks, 0
  br i1 %.not.not.i338.i, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  %i.kt = inttoptr i64 %.sroa.063.0.copyload.i to ptr ; 3 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !121
  %i.kv = add i32 %i.ku, -1                       ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 8, !tbaa !121
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.kt) #21
  br label %bb.bn

positional_only_passed_as_keyword.exit.thread.critedge.i: ; preds = %bb.ar
  %i.kx = getelementptr i8, ptr %i.fe, i64 8
  %.val.i.c388.i = load ptr, ptr %i.kx, align 8, !tbaa !122
  %i.ky = getelementptr i8, ptr %.val.i.c388.i, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !135
  tail call void %i.kz(ptr noundef nonnull %i.fe) #21, !inline_history !369
  br label %positional_only_passed_as_keyword.exit.thread.i

positional_only_passed_as_keyword.exit.thread.i:  ; preds = %bb.bf, %.lr.ph451.i, %bb.bl, %positional_only_passed_as_keyword.exit.thread.critedge.i, %.thread361.i, %bb.be, %bb.bb, %bb.ba, %.sink.split.sink.split.i.i, %bb.aq, %.thread146.i.i, %bb.w, %bb.r
  %i.la = icmp slt i64 %.1453.i, %.val331.i
  br i1 %i.la, label %.lr.ph463.i, label %.loopexit69

.lr.ph463.i:                                      ; preds = %positional_only_passed_as_keyword.exit.thread.i, %PyStackRef_CLOSE.exit341.i
  %.2462.i = phi i64 [ %i.lh, %PyStackRef_CLOSE.exit341.i ], [ %.1453.i, %positional_only_passed_as_keyword.exit.thread.i ] ; 2 uses
  %gep461.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.2462.i
  %i.lb = load i64, ptr %gep461.i, align 8        ; 2 uses
  %i.lc = and i64 %i.lb, 1
  %.not.not.i340.i = icmp eq i64 %i.lc, 0
  br i1 %.not.not.i340.i, label %bb.bj, label %PyStackRef_CLOSE.exit341.i

bb.bj:                                            ; preds = %.lr.ph463.i
end_hunk_4
begin_hunk_5_@get_exception_handler:bb.a
  %i.ba = getelementptr i8, ptr %.07.lcssa.i59, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !121 ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = and i8 %i.bb, 64
  %.not8.i62 = icmp eq i8 %i.be, 0
  br i1 %.not8.i62, label %parse_varint.exit69, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.e, %.lr.ph.i63
  %.010.i64 = phi i32 [ %i.bk, %.lr.ph.i63 ], [ %i.bd, %bb.e ]
  %.079.i65 = phi ptr [ %i.bf, %.lr.ph.i63 ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.079.i65, i64 1  ; 2 uses
  %i.bg = shl i32 %.010.i64, 6
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !121 ; 2 uses
  %i.bi = and i8 %i.bh, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 2 uses
  %i.bl = and i8 %i.bh, 64
  %.not.i66 = icmp eq i8 %i.bl, 0
  br i1 %.not.i66, label %parse_varint.exit69, label %.lr.ph.i63, !llvm.loop !407

parse_varint.exit69:                              ; preds = %.lr.ph.i63, %bb.e
  %i.bm = phi ptr [ %.07.lcssa.i59, %bb.e ], [ %.079.i65, %.lr.ph.i63 ]
  %.0.lcssa.i68 = phi i32 [ %i.bd, %bb.e ], [ %i.bk, %.lr.ph.i63 ]
  %i.bn = getelementptr i8, ptr %i.bm, i64 2      ; 8 uses
  %i.bo = add i32 %.0.lcssa.i68, %.0.lcssa.i60
  %i.bp = icmp sgt i32 %i.bo, %0
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %parse_varint.exit69
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !121 ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i32               ; 2 uses
  %i.bt = and i8 %i.bq, 64
  %.not8.i70 = icmp eq i8 %i.bt, 0
  br i1 %.not8.i70, label %parse_varint.exit77, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.f, %.lr.ph.i71
  %.010.i72 = phi i32 [ %i.bz, %.lr.ph.i71 ], [ %i.bs, %bb.f ]
  %.079.i73 = phi ptr [ %i.bu, %.lr.ph.i71 ], [ %i.bn, %bb.f ]
  %i.bu = getelementptr i8, ptr %.079.i73, i64 1  ; 3 uses
  %i.bv = shl i32 %.010.i72, 6
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !121 ; 2 uses
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by            ; 2 uses
  %i.ca = and i8 %i.bw, 64
  %.not.i74 = icmp eq i8 %i.ca, 0
  br i1 %.not.i74, label %parse_varint.exit77, label %.lr.ph.i71, !llvm.loop !407

parse_varint.exit77:                              ; preds = %.lr.ph.i71, %bb.f
  %.07.lcssa.i75 = phi ptr [ %i.bn, %bb.f ], [ %i.bu, %.lr.ph.i71 ]
  %.0.lcssa.i76 = phi i32 [ %i.bs, %bb.f ], [ %i.bz, %.lr.ph.i71 ]
  store i32 %.0.lcssa.i76, ptr %2, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %.07.lcssa.i75, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !121 ; 2 uses
  %i.cd = and i8 %i.cc, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = and i8 %i.cc, 64
  %.not8.i78 = icmp eq i8 %i.cf, 0
  br i1 %.not8.i78, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %parse_varint.exit77, %.lr.ph.i79
  %.010.i80 = phi i32 [ %i.cl, %.lr.ph.i79 ], [ %i.ce, %parse_varint.exit77 ]
  %.079.i81 = phi ptr [ %i.cg, %.lr.ph.i79 ], [ %i.cb, %parse_varint.exit77 ]
  %i.cg = getelementptr i8, ptr %.079.i81, i64 1  ; 2 uses
  %i.ch = shl i32 %.010.i80, 6
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !121 ; 2 uses
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck            ; 2 uses
  %i.cm = and i8 %i.ci, 64
  %.not.i82 = icmp eq i8 %i.cm, 0
  br i1 %.not.i82, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79, !llvm.loop !407

skip_to_next_entry.exit.thread:                   ; preds = %.lr.ph.i79, %parse_varint.exit77
  %.0.lcssa.i84 = phi i32 [ %i.ce, %parse_varint.exit77 ], [ %i.cl, %.lr.ph.i79 ] ; 2 uses
  %i.cn = ashr i32 %.0.lcssa.i84, 1
  store i32 %i.cn, ptr %1, align 4, !tbaa !7
  %i.co = and i32 %.0.lcssa.i84, 1
  store i32 %i.co, ptr %3, align 4, !tbaa !7
  br label %.critedge

bb.g:                                             ; preds = %parse_varint.exit69
  %i.cp = icmp ult ptr %i.bn, %.3
  br i1 %i.cp, label %.lr.ph.preheader.i, label %skip_to_next_entry.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.cq = ptrtoint ptr %i.bn to i64
  %i.cr = sub i64 %i.an, %i.cq
  %scevgep.i = getelementptr i8, ptr %i.bn, i64 %i.cr
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.h, %.lr.ph.preheader.i
  %.05.i = phi ptr [ %i.cu, %bb.h ], [ %i.bn, %.lr.ph.preheader.i ] ; 3 uses
  %i.cs = load i8, ptr %.05.i, align 1, !tbaa !121
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.h, label %skip_to_next_entry.exit

bb.h:                                             ; preds = %.lr.ph.i87
  %i.cu = getelementptr i8, ptr %.05.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.cu, %.3
  br i1 %exitcond.not.i, label %skip_to_next_entry.exit, label %.lr.ph.i87, !llvm.loop !410

skip_to_next_entry.exit:                          ; preds = %bb.h, %.lr.ph.i87, %bb.g
  %.1 = phi ptr [ %i.bn, %bb.g ], [ %.05.i, %.lr.ph.i87 ], [ %scevgep.i, %bb.h ] ; 2 uses
  %i.cv = icmp ult ptr %.1, %.3
  br i1 %i.cv, label %bb.d, label %.critedge

.critedge:                                        ; preds = %skip_to_next_entry.exit, %parse_varint.exit61, %.loopexit, %parse_varint.exit, %skip_to_next_entry.exit.thread
  %.5 = phi i32 [ 1, %skip_to_next_entry.exit.thread ], [ 0, %parse_varint.exit ], [ 0, %.loopexit ], [ 0, %parse_varint.exit61 ], [ 0, %skip_to_next_entry.exit ]
  ret i32 %.5
}

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #3

declare ptr @_PyThreadState_PushFrame(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @_PyStack_UnpackDict(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyStack_UnpackDict_FreeNoDecRef(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyEval_EvalCodeEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %11 = alloca %struct.PyFrameConstructor, align 8 ; 9 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = sext i32 %8 to i64
  %i.e = tail call ptr @PyTuple_FromArray(ptr noundef %7, i64 noundef %i.d) #21 ; 12 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyDict_LoadBuiltinsFromGlobals(ptr noundef %1) #21 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not145 = icmp sgt i32 %i.i, -1
  br i1 %.not145, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !121
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.ae

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not146 = icmp eq ptr %i.l, null
  br i1 %.not146, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.n = tail call i32 %i.l(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %i.m) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %.val152 = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %.val152, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !135
  tail call void %i.q(ptr noundef nonnull %i.e) #21
  br label %bb.ae

bb.h:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %2, null
  %spec.select = select i1 %i.r, ptr %1, ptr %2
  %i.s = icmp eq i32 %6, 0
  br i1 %i.s, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = sext i32 %6 to i64
  %i.u = tail call ptr @PyTuple_New(i64 noundef %i.t) #21 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %6, %4
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = tail call ptr @PyMem_Malloc(i64 noundef %i.y) #21 ; 13 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %.thread.thread167, label %.preheader175

.preheader175:                                    ; preds = %bb.j
  %i.ac = icmp sgt i32 %4, 0
  br i1 %i.ac, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader175
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 6
  %i.ad = sub i64 %i.aa, %i.a
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader203, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !117
  %wide.load202 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !117
  %i.ag = getelementptr [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !117
  store <2 x ptr> %wide.load202, ptr %i.ah, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader203

.lr.ph.preheader203:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader203, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader203 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader203 ]
  %i.aj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.prol
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !117
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !412

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader203
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader203 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader175
  %i.ao = icmp sgt i32 %6, 0
  br i1 %i.ao, label %.lr.ph178, label %.loopexit

.lr.ph178:                                        ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %i.u, i64 32
  %wide.trip.count183 = zext nneg i32 %6 to i64
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.as = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store ptr %i.au, ptr %i.av, align 8, !tbaa !117
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.ay = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.1
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !117
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117
  %i.bb = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.2
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !117
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !413

bb.k:                                             ; preds = %.lr.ph178, %_Py_NewRef.exit
  %indvars.iv180 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next181, %_Py_NewRef.exit ] ; 4 uses
  %indvars.iv180.tr = trunc i64 %indvars.iv180 to i32
  %i.bc = shl i32 %indvars.iv180.tr, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %5, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !121 ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, -1073741825
  br i1 %i.bh, label %_Py_NewRef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = add nuw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !121
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.k, %bb.l
  %i.bj = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv180
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !117
  %i.bk = getelementptr i8, ptr %i.be, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !117
  %i.bm = trunc nuw nsw i64 %indvars.iv180 to i32
  %i.bn = add i32 %4, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.z, i64 %i.bo
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !117
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.loopexit, label %bb.k, !llvm.loop !414

.loopexit:                                        ; preds = %_Py_NewRef.exit, %.preheader, %bb.h
  %.0115 = phi ptr [ null, %bb.h ], [ %i.z, %.preheader ], [ %i.z, %_Py_NewRef.exit ] ; 2 uses
  %.0114 = phi ptr [ %3, %bb.h ], [ %i.z, %.preheader ], [ %i.z, %_Py_NewRef.exit ]
  %.0112 = phi ptr [ null, %bb.h ], [ %i.u, %.preheader ], [ %i.u, %_Py_NewRef.exit ] ; 3 uses
  store ptr %1, ptr %11, align 8, !tbaa !139
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.g, ptr %i.bq, align 8, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bs = getelementptr i8, ptr %0, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !142 ; 2 uses
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !146
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %0, ptr %i.bv, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !415
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %9, ptr %i.bx, align 8, !tbaa !416
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %10, ptr %i.by, align 8, !tbaa !417
  %i.bz = call ptr @_PyFunction_FromConstructor(ptr noundef nonnull %11) #21 ; 7 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cb = sext i32 %4 to i64
  %i.cc = call ptr @_PyEval_Vector(ptr noundef %i.c, ptr noundef nonnull %i.bz, ptr noundef %spec.select, ptr noundef %.0114, i64 noundef %i.cb, ptr noundef %.0112) ; 3 uses
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !121 ; 2 uses
  %.not136 = icmp sgt i32 %i.cd, -1
  br i1 %.not136, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ce = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.bz, align 8, !tbaa !121
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not137 = icmp eq ptr %i.cg, null
  br i1 %.not137, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.ci = call i32 %i.cg(ptr noundef nonnull %i.bz, i32 noundef 1, ptr noundef %i.ch) #21 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = getelementptr i8, ptr %i.bz, i64 8
  %.0117.val = load ptr, ptr %i.cj, align 8, !tbaa !122
  %i.ck = getelementptr i8, ptr %.0117.val, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !135
  call void %i.cl(ptr noundef nonnull %i.bz) #21
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.m, %bb.q, %bb.n
  %.0111160 = phi ptr [ %i.cc, %bb.n ], [ %i.cc, %bb.m ], [ %i.cc, %bb.q ], [ null, %.loopexit ] ; 2 uses
  %.not138 = icmp eq ptr %.0112, null
  br i1 %.not138, label %.thread.thread, label %.thread.thread167

.thread.thread167:                                ; preds = %bb.j, %.thread
  %.1116158174 = phi ptr [ %.0115, %.thread ], [ null, %bb.j ] ; 3 uses
  %.1113159173 = phi ptr [ %.0112, %.thread ], [ %i.u, %bb.j ] ; 5 uses
  %.0111160172 = phi ptr [ %.0111160, %.thread ], [ null, %bb.j ] ; 3 uses
  %i.cm = load i32, ptr %.1113159173, align 8, !tbaa !121 ; 2 uses
  %.not139 = icmp sgt i32 %i.cm, -1
  br i1 %.not139, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %.thread.thread167
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %.1113159173, align 8, !tbaa !121
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %.thread.thread

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !132 ; 2 uses
  %.not140 = icmp eq ptr %i.cp, null
  br i1 %.not140, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !134
  %i.cr = call i32 %i.cp(ptr noundef nonnull %.1113159173, i32 noundef 1, ptr noundef %i.cq) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cs = getelementptr i8, ptr %.1113159173, i64 8
end_hunk_5
