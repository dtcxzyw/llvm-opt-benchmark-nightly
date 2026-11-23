Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/sre?download=true
inline.NumInlined: 358
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_sre_compile:bb.a
  %i.w = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.v) #13 ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.v, align 8, !tbaa !221
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.v) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.aa = icmp eq i64 %i.w, -1
  br i1 %i.aa, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.ab = call ptr @PyErr_Occurred() #13
  %.not51 = icmp eq ptr %i.ab, null
  br i1 %.not51, label %bb.j, label %_sre_compile_impl.exit

bb.j:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.04163.ph = phi i64 [ %i.w, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.ac = getelementptr i8, ptr %i.h, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !222 ; 6 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val54 = load ptr, ptr %i.ae, align 8, !tbaa !223
  %i.af = getelementptr i8, ptr %.val54, i64 168
  %.val57 = load i64, ptr %i.af, align 8, !tbaa !231
  %i.ag = and i64 %.val57, 536870912
  %.not52 = icmp eq i64 %i.ag, 0
  br i1 %.not52, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.ad) #13
  br label %_sre_compile_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.h, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !222 ; 6 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !223
  %i.ak = getelementptr i8, ptr %.val, i64 168
  %.val56 = load i64, ptr %i.ak, align 8, !tbaa !231
  %i.al = and i64 %.val56, 67108864
  %.not53 = icmp eq i64 %i.al, 0
  br i1 %.not53, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.ai) #13
  br label %_sre_compile_impl.exit

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %0, i64 24
  %.val59 = load ptr, ptr %i.am, align 8, !tbaa !214
  %.val59.val = load ptr, ptr %.val59, align 8, !tbaa !216
  %i.an = getelementptr i8, ptr %i.p, i64 16
  %.val67.i = load i64, ptr %i.an, align 8, !tbaa !232 ; 4 uses
  %i.ao = call ptr @_PyObject_GC_NewVar(ptr noundef %.val59.val, i64 noundef %.val67.i) #13 ; 23 uses
  %.not.i60 = icmp eq ptr %i.ao, null
  br i1 %.not.i60, label %_sre_compile_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.ao, i64 64
  store ptr null, ptr %i.ap, align 8, !tbaa !234
  %i.aq = getelementptr i8, ptr %i.ao, i64 48
  %i.ar = getelementptr i8, ptr %i.ao, i64 32     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 40
  %i.at = getelementptr i8, ptr %i.ao, i64 80     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store i64 %.val67.i, ptr %i.at, align 8, !tbaa !235
  %i.au = icmp sgt i64 %.val67.i, 0
  br i1 %i.au, label %.lr.ph.i, label %.thread2.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.av = getelementptr i8, ptr %i.p, i64 24
  %i.aw = getelementptr i8, ptr %i.ao, i64 88     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i
  %.0488.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bh, %bb.s ] ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !239
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %.0488.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !222
  %i.ba = call i64 @PyLong_AsUnsignedLong(ptr noundef %i.az) #13 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = call ptr @PyErr_Occurred() #13
  %.not54.i = icmp eq ptr %i.bc, null
  br i1 %.not54.i, label %.thread.i, label %.thread2.i

.thread.i:                                        ; preds = %bb.q
  %i.bd = getelementptr [4 x i8], ptr %i.aw, i64 %.0488.i
  store i32 -1, ptr %i.bd, align 4, !tbaa !11
  br label %.loopexit.i

bb.r:                                             ; preds = %bb.p
  %i.be = trunc i64 %i.ba to i32
  %i.bf = getelementptr [4 x i8], ptr %i.aw, i64 %.0488.i
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !11
  %.not55.i = icmp ult i64 %i.ba, 4294967296
  br i1 %.not55.i, label %bb.s, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.r, %.thread.i
  %i.bg = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !222
  call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.21) #13
  br label %.thread2.i

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i64 %.0488.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %.val67.i
  br i1 %exitcond.not.i, label %.thread2.i, label %bb.p, !llvm.loop !313

.thread2.i:                                       ; preds = %bb.s, %.loopexit.i, %bb.q, %bb.o
  call void @PyObject_GC_Track(ptr noundef nonnull %i.ao) #13
  %i.bi = call ptr @PyErr_Occurred() #13
  %.not56.i = icmp eq ptr %i.bi, null
  br i1 %.not56.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread2.i
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !221 ; 2 uses
  %.not.i62.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i62.i, label %bb.u, label %_sre_compile_impl.exit

bb.u:                                             ; preds = %bb.t
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !221
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %_sre_compile_impl.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #13
  br label %_sre_compile_impl.exit

bb.w:                                             ; preds = %.thread2.i
  %i.bm = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.bm, label %.split.i, label %bb.x

.split.i:                                         ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ao, i64 72
  store i32 -1, ptr %i.bn, align 8, !tbaa !241
  %i.bo = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !221 ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, -1073741825
  br i1 %i.bp, label %_Py_NewRef.exit.i, label %_Py_NewRef.exit.sink.split.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !244
  %i.bq = getelementptr i8, ptr %i.ao, i64 72
  %i.br = call fastcc ptr @getstring(ptr noundef %i.i, ptr noundef %i.a, ptr noundef %i.bq, ptr noundef %i.b, ptr noundef nonnull %4)
  %.not57.not.i = icmp eq ptr %i.br, null
  br i1 %.not57.not.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bs = load i32, ptr %i.ao, align 8, !tbaa !221 ; 2 uses
  %.not.i60.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i60.i, label %bb.z, label %Py_DECREF.exit61.thread.i

bb.z:                                             ; preds = %bb.y
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.ao, align 8, !tbaa !221
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %Py_DECREF.exit61.thread.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #13
  br label %Py_DECREF.exit61.thread.i

bb.ab:                                            ; preds = %bb.x
  %i.bv = load ptr, ptr %4, align 8, !tbaa !244
  %.not58.i = icmp eq ptr %i.bv, null
  br i1 %.not58.i, label %.split51.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @PyBuffer_Release(ptr noundef nonnull %4) #13
  br label %.split51.i

Py_DECREF.exit61.thread.i:                        ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_sre_compile_impl.exit

.split51.i:                                       ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bw = load i32, ptr %i.i, align 8, !tbaa !221 ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, -1073741825
  br i1 %i.bx, label %_Py_NewRef.exit.i, label %_Py_NewRef.exit.sink.split.i

_Py_NewRef.exit.sink.split.i:                     ; preds = %.split51.i, %.split.i
  %.sink27.i = phi i32 [ %i.bo, %.split.i ], [ %i.bw, %.split51.i ]
  %.sink26.i = phi ptr [ @_Py_NoneStruct, %.split.i ], [ %i.i, %.split51.i ] ; 2 uses
  %i.by = add nuw i32 %.sink27.i, 1
  store i32 %i.by, ptr %.sink26.i, align 8, !tbaa !221
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %_Py_NewRef.exit.sink.split.i, %.split51.i, %.split.i
  %phi.call.i = phi ptr [ %i.i, %.split51.i ], [ @_Py_NoneStruct, %.split.i ], [ %.sink26.i, %_Py_NewRef.exit.sink.split.i ]
  store ptr %phi.call.i, ptr %i.aq, align 8, !tbaa !245
  %i.bz = getelementptr i8, ptr %i.ao, i64 56
  store i32 %i.l, ptr %i.bz, align 8, !tbaa !246
  %i.ca = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  store i64 %.04163.ph, ptr %i.ca, align 8, !tbaa !247
  %i.cb = getelementptr i8, ptr %i.ad, i64 16
  %.val68.i = load i64, ptr %i.cb, align 8, !tbaa !318
  %i.cc = icmp sgt i64 %.val68.i, 0
  br i1 %i.cc, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_Py_NewRef.exit.i
  %i.cd = load i32, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, -1073741825
  br i1 %i.ce, label %_Py_NewRef.exit70.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nuw i32 %i.cd, 1
  store i32 %i.cf, ptr %i.ad, align 8, !tbaa !221
  br label %_Py_NewRef.exit70.i

_Py_NewRef.exit70.i:                              ; preds = %bb.ae, %bb.ad
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !248
  %i.cg = getelementptr i8, ptr %i.ai, i64 16
  %.val66.i = load i64, ptr %i.cg, align 8, !tbaa !232
  %i.ch = icmp sgt i64 %.val66.i, 0
  br i1 %i.ch, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_Py_NewRef.exit70.i
  %i.ci = load i32, ptr %i.ai, align 8, !tbaa !221 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, -1073741825
  br i1 %i.cj, label %_Py_NewRef.exit71.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = add nuw i32 %i.ci, 1
  store i32 %i.ck, ptr %i.ai, align 8, !tbaa !221
  br label %_Py_NewRef.exit71.i

_Py_NewRef.exit71.i:                              ; preds = %bb.ag, %bb.af
  store ptr %i.ai, ptr %i.as, align 8, !tbaa !249
  br label %bb.ah

bb.ah:                                            ; preds = %_Py_NewRef.exit71.i, %_Py_NewRef.exit70.i, %_Py_NewRef.exit.i
  %i.cl = getelementptr i8, ptr %i.ao, i64 88     ; 3 uses
  %i.cm = load i64, ptr %i.at, align 8, !tbaa !235
  %i.cn = getelementptr [4 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.ca, align 8, !tbaa !247 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 1073741824
  %.not.i.i.i = icmp ult ptr %i.cl, %i.cn
  %or.cond.i.i.i = and i1 %.not.i.i.i, %i.cp
  br i1 %or.cond.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr i8, ptr %i.cn, i64 -4     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !11
  %.not12.i.i.i = icmp eq i32 %i.cr, 1
  br i1 %.not12.i.i.i, label %_validate_outer.exit.i.i, label %bb.aj

_validate_outer.exit.i.i:                         ; preds = %bb.ai
  %i.cs = call fastcc i32 @_validate_inner(ptr noundef readonly %i.cl, ptr noundef nonnull readonly %i.cq, i64 noundef %i.co)
  %.not.i72.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i72.i, label %_sre_compile_impl.exit, label %bb.aj

bb.aj:                                            ; preds = %_validate_outer.exit.i.i, %bb.ai, %bb.ah
  %i.ct = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !222
  call void @PyErr_SetString(ptr noundef %i.ct, ptr noundef nonnull @.str.24) #13
  %i.cu = load i32, ptr %i.ao, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cu, -1
  br i1 %.not.i.i, label %bb.ak, label %_sre_compile_impl.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ao, align 8, !tbaa !221
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.al, label %_sre_compile_impl.exit

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #13
  br label %_sre_compile_impl.exit

_sre_compile_impl.exit:                           ; preds = %bb.al, %bb.ak, %bb.aj, %_validate_outer.exit.i.i, %Py_DECREF.exit61.thread.i, %bb.v, %bb.u, %bb.t, %bb.n, %Py_DECREF.exit.thread, %bb.e, %bb.k, %bb.m, %bb.b, %bb.c
  %.043 = phi ptr [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ], [ null, %bb.m ], [ null, %bb.k ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.v ], [ null, %bb.n ], [ %i.ao, %_validate_outer.exit.i.i ], [ null, %Py_DECREF.exit61.thread.i ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret ptr %.043
}

; Function Attrs: nounwind uwtable
define internal ptr @_sre_template(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !320 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.2, i64 noundef %2, i64 noundef 2, i64 noundef 2) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_sre_template_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222  ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.e, align 8, !tbaa !231
  %i.f = and i64 %.val12, 33554432
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.c) #13
  br label %_sre_template_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %.val62.i = load i64, ptr %i.g, align 8, !tbaa !232 ; 4 uses
  %i.h = and i64 %.val62.i, 1
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp slt i64 %.val62.i, 1
  %or.cond.i = or i1 %i.j, %i.i
  br i1 %or.cond.i, label %.thread13.i, label %bb.f

.thread13.i:                                      ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !222
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.26) #13
  br label %_sre_template_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val13 = load ptr, ptr %i.l, align 8, !tbaa !214
  %i.m = lshr i64 %.val62.i, 1                    ; 3 uses
  %i.n = getelementptr i8, ptr %.val13, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219
  %i.p = tail call ptr @_PyObject_GC_NewVar(ptr noundef %i.o, i64 noundef %i.m) #13 ; 14 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_sre_template_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.p, i64 24       ; 3 uses
  store i64 %.val62.i, ptr %i.q, align 8, !tbaa !251
  %i.r = getelementptr i8, ptr %i.c, i64 24       ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !239
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !222  ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !221  ; 2 uses
  %i.v = icmp ugt i32 %i.u, -1073741825
  br i1 %i.v, label %_Py_NewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 8, !tbaa !221
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.h, %bb.g
  %i.x = getelementptr i8, ptr %i.p, i64 32
  store ptr %i.t, ptr %i.x, align 8, !tbaa !252
  %.not20.i = icmp eq i64 %i.m, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit.i
  %i.y = getelementptr i8, ptr %i.p, i64 40
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %.lr.ph.i
  %.04319.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.v ] ; 5 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !239
  %i.aa = shl nuw nsw i64 %.04319.i, 1            ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !222
  %i.ae = tail call i64 @PyLong_AsSsize_t(ptr noundef %i.ad) #13 ; 3 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @PyErr_Occurred() #13
  %.not51.i = icmp eq ptr %i.ag, null
  br i1 %.not51.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.p, i64 16
  store i64 %.04319.i, ptr %i.ah, align 8, !tbaa !232
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.l, label %_sre_template_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !221
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_sre_template_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #13
  br label %_sre_template_impl.exit

bb.n:                                             ; preds = %bb.i
  %i.al = icmp slt i64 %i.ae, 0
  br i1 %i.al, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr [16 x i8], ptr %i.y, i64 %.04319.i ; 2 uses
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !254
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !239
end_hunk_0
