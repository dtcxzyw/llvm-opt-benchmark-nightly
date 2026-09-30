Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/arraymodule?download=true
inline.NumInlined: 332
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@array_inplace_concat:bb.a
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %0, align 8, !tbaa !25
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %PyObject_TypeCheck.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %PyObject_TypeCheck.exit.thread ], [ %0, %bb.c ], [ %0, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @array_inplace_repeat(ptr nofree noundef captures(ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.b = icmp sgt i64 %.val, 0
  %i.c = icmp ne i64 %1, 1
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sdiv i64 9223372036854775807, %i.h
  %i.j = icmp sgt i64 %.val, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @PyErr_NoMemory() #12
  br label %_Py_NewRef.exit

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.l = mul i64 %.val, %.pre-phi                 ; 3 uses
  %.not28 = icmp slt i64 %1, 1
  br i1 %.not28, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.m = udiv i64 9223372036854775807, %spec.store.select
  %i.n = icmp sgt i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #12
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.p = mul i64 %.val, %spec.store.select
  %i.q = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = mul i64 %i.l, %spec.store.select
  tail call void @_PyBytes_Repeat(ptr noundef %i.t, i64 noundef %i.u, ptr noundef %i.t, i64 noundef %i.l) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.v = load i32, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %0, align 8, !tbaa !25
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.f, %bb.j, %bb.i, %bb.d
  %.1 = phi ptr [ %i.k, %bb.d ], [ %0, %bb.j ], [ %0, %bb.i ], [ null, %bb.g ], [ %i.o, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @array_subscr(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.e = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val57, ptr noundef nonnull @arraymodule) #12
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.g = tail call i32 @PyIndex_Check(ptr noundef %1) #12
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  %i.i = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.h) #12 ; 4 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_Occurred() #12
  %.not54 = icmp eq ptr %i.k, null
  br i1 %.not54, label %.thread, label %array_item.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %.thread, label %..thread60_crit_edge

..thread60_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %.thread60

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val56 = load i64, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %i.n = add i64 %.val56, %i.i                    ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %.thread60

.thread60:                                        ; preds = %..thread60_crit_edge, %.thread
  %.val.i = phi i64 [ %.val56, %.thread ], [ %.val.i.pre, %..thread60_crit_edge ]
  %.04562 = phi i64 [ %i.n, %.thread ], [ %i.i, %..thread60_crit_edge ] ; 2 uses
  %.not.i = icmp slt i64 %.04562, %.val.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread60, %.thread
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.128) #12
  br label %array_item.exit

bb.f:                                             ; preds = %.thread60
  %i.q = getelementptr i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i64 noundef %.04562) #12, !inline_history !111
  br label %array_item.exit

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %1, i64 8
  %.val58 = load ptr, ptr %i.v, align 8, !tbaa !27
  %.not63 = icmp eq ptr %.val58, @PySlice_Type
  br i1 %.not63, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.w = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62   ; 2 uses
  %i.aa = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %newarrayobject.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 16
  %.val55 = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ae = call i64 @PySlice_AdjustIndices(i64 noundef %.val55, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ad) #12 ; 7 uses
  %i.af = icmp slt i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !59  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !62
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sdiv i64 9223372036854775807, %i.aj
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = call ptr @PyErr_NoMemory() #12
  br label %newarrayobject.exit

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %.val, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 304
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.aq = call ptr %i.ap(ptr noundef %i.an, i64 noundef 0) #12, !inline_history !113 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %newarrayobject.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.aq, i64 40
  store ptr %i.ag, ptr %i.as, align 8, !tbaa !59
  %i.at = getelementptr i8, ptr %i.aq, i64 48
  %i.au = getelementptr i8, ptr %i.aq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %newarrayobject.exit

bb.n:                                             ; preds = %bb.i
  %i.av = load i64, ptr %i.c, align 8, !tbaa !52
  %2 = icmp eq i64 %i.av, 1
  %i.aw = load ptr, ptr %.val, align 8, !tbaa !22
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.ay = call fastcc ptr @newarrayobject(ptr noundef %i.aw, i64 noundef %i.ae, ptr noundef %i.ax) ; 6 uses
  %i.az = icmp eq ptr %i.ay, null                 ; 2 uses
  br i1 %2, label %bb.o, label %3

bb.o:                                             ; preds = %bb.n
  br i1 %i.az, label %newarrayobject.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  %i.be = load i64, ptr %i.a, align 8, !tbaa !52
  %i.bf = sext i32 %i.z to i64                    ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr i8, ptr %i.bd, i64 %i.bg
  %i.bi = mul i64 %i.ae, %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  br label %newarrayobject.exit

3:                                                ; preds = %bb.n
  br i1 %i.az, label %newarrayobject.exit, label %.lr.ph

.lr.ph:                                           ; preds = %3
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 24     ; 3 uses
  %i.bl = sext i32 %i.z to i64                    ; 9 uses
  %i.bm = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %xtraiter = and i64 %i.ae, 1
  %i.bn = icmp eq i64 %i.ae, 1
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ae, 9223372036854775806
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %.065 = phi i64 [ %i.bj, %.lr.ph.new ], [ %i.ce, %bb.q ] ; 2 uses
  %.04464 = phi i64 [ 0, %.lr.ph.new ], [ %i.cf, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bp = mul i64 %.04464, %i.bl
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !51
  %i.bs = mul i64 %.065, %i.bl
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bl, i1 false)
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !52
  %i.bv = add i64 %i.bu, %.065                    ; 2 uses
  %i.bw = or disjoint i64 %.04464, 1
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.by = mul i64 %i.bw, %i.bl
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bm, align 8, !tbaa !51
  %i.cb = mul i64 %i.bv, %i.bl
  %i.cc = getelementptr i8, ptr %i.ca, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.cc, i64 %i.bl, i1 false)
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ce = add i64 %i.cd, %i.bv                    ; 2 uses
  %i.cf = add nuw nsw i64 %.04464, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %newarrayobject.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !112

newarrayobject.exit.loopexit.unr-lcssa:           ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %newarrayobject.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %newarrayobject.exit.loopexit.unr-lcssa, %.lr.ph
  %.065.epil.init = phi i64 [ %i.bj, %.lr.ph ], [ %i.ce, %newarrayobject.exit.loopexit.unr-lcssa ]
  %.04464.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cf, %newarrayobject.exit.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i64 %i.ae to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.ch = mul i64 %.04464.epil.init, %i.bl
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !51
  %i.ck = mul i64 %.065.epil.init, %i.bl
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cl, i64 %i.bl, i1 false)
  br label %newarrayobject.exit

newarrayobject.exit:                              ; preds = %.epil.preheader, %newarrayobject.exit.loopexit.unr-lcssa, %bb.m, %bb.l, %bb.k, %3, %bb.p, %bb.o, %bb.h
  %.2 = phi ptr [ null, %bb.o ], [ null, %bb.l ], [ null, %bb.h ], [ null, %3 ], [ %i.ay, %bb.p ], [ %i.aq, %bb.m ], [ %i.am, %bb.k ], [ %i.ay, %newarrayobject.exit.loopexit.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %array_item.exit

bb.r:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.cm, ptr noundef nonnull @.str.130) #12
  br label %array_item.exit

array_item.exit:                                  ; preds = %bb.f, %bb.e, %bb.c, %bb.r, %newarrayobject.exit
  %.3 = phi ptr [ null, %bb.r ], [ %.2, %newarrayobject.exit ], [ null, %bb.c ], [ null, %bb.e ], [ %i.u, %bb.f ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @array_ass_subscr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 14 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val171 = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.e = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val171, ptr noundef nonnull @arraymodule) #12
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.g = tail call i32 @PyIndex_Check(ptr noundef %1) #12
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  %i.i = tail call i64 @PyNumber_AsSsize_t(ptr noundef %1, ptr noundef %i.h) #12 ; 4 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_Occurred() #12
  %.not149 = icmp eq ptr %i.k, null
  br i1 %.not149, label %.thread, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %.thread, label %..thread175_crit_edge

..thread175_crit_edge:                            ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val168.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %.thread175

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val169 = load i64, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %i.n = add i64 %.val169, %i.i                   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %.thread175

.thread175:                                       ; preds = %..thread175_crit_edge, %.thread
  %.val168 = phi i64 [ %.val169, %.thread ], [ %.val168.pre, %..thread175_crit_edge ]
  %.0133177 = phi i64 [ %i.n, %.thread ], [ %i.i, %..thread175_crit_edge ] ; 4 uses
  %.not150 = icmp slt i64 %.0133177, %.val168
  br i1 %.not150, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread175, %.thread
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.29) #12
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %.thread175
  %i.q = icmp eq ptr %2, null
  br i1 %i.q, label %.thread211, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0, i64 noundef %.0133177, ptr noundef nonnull %2) #12
  br label %Py_DECREF.exit

.thread211:                                       ; preds = %bb.f
  store i64 %.0133177, ptr %i.a, align 8, !tbaa !52
  %i.w = add nuw nsw i64 %.0133177, 1
  store i64 %i.w, ptr %i.b, align 8, !tbaa !52
  store i64 1, ptr %i.c, align 8, !tbaa !52
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !62
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %1, i64 8
  %.val172 = load ptr, ptr %i.ab, align 8, !tbaa !27
  %.not186 = icmp eq ptr %.val172, @PySlice_Type
  br i1 %.not186, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 @PySlice_Unpack(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %Py_DECREF.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.130) #12
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %0, i64 16
  %.val167 = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ah = call i64 @PySlice_AdjustIndices(i64 noundef %.val167, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ag) #12 ; 4 uses
  %i.ai = icmp eq ptr %2, null
  br i1 %i.ai, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %.val, align 8, !tbaa !22 ; 2 uses
  %i.ak = getelementptr i8, ptr %2, i64 8         ; 3 uses
  %.val173 = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %.not.i174 = icmp eq ptr %.val173, %i.aj
  br i1 %.not.i174, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.l
  %i.al = call i32 @PyType_IsSubtype(ptr noundef %.val173, ptr noundef %i.aj) #12
  %.not187 = icmp eq i32 %i.al, 0
  br i1 %.not187, label %bb.s, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.l, %PyObject_TypeCheck.exit
  %i.am = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val166 = load i64, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.an = icmp eq ptr %0, %2
  br i1 %i.an, label %bb.m, label %bb.q

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.val35.i = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ao = call ptr @PyType_GetModuleByDef(ptr noundef %.val35.i, ptr noundef nonnull @arraymodule) #12, !inline_history !114
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !20
  %.val34.i = load i64, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %.val166, i64 0)
  %.val34..i = call i64 @llvm.smin.i64(i64 %.val34.i, i64 0) ; 2 uses
  %.0.i = call i64 @llvm.smin.i64(i64 %spec.store.select.i, i64 %.val34.i) ; 2 uses
  %i.aq = load ptr, ptr %.val.i, align 8, !tbaa !22
  %i.ar = sub i64 %.0.i, %.val34..i               ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = call fastcc ptr @newarrayobject(ptr noundef %i.aq, i64 noundef %i.ar, ptr noundef %i.at), !inline_history !114 ; 6 uses
  %i.av = icmp ne ptr %i.au, null                 ; 2 uses
  %i.aw = icmp sgt i64 %.0.i, 0
  %or.cond.i = and i1 %i.aw, %i.av
  br i1 %or.cond.i, label %array_slice.exit.thread, label %array_slice.exit

array_slice.exit.thread:                          ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %i.au, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  %i.az = getelementptr i8, ptr %2, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = mul i64 %.val34..i, %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.bf
  %i.bh = mul i64 %i.ar, %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %bb.n

array_slice.exit:                                 ; preds = %bb.m
  br i1 %i.av, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %array_slice.exit.thread, %array_slice.exit
  %i.bi = call i32 @array_ass_subscr(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.au) ; 3 uses
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.au, align 8, !tbaa !25
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #12
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.bm = getelementptr i8, ptr %2, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bo = getelementptr i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !59
  %.not152 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not152, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = call i32 @PyErr_BadArgument() #12       ; 0 uses
  br label %Py_DECREF.exit
end_hunk_0
