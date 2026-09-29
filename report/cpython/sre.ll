Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/sre?download=true
inline.NumInlined: 358
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_sre_compile:bb.a
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %Py_DECREF.exit61.thread.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #13
  br label %Py_DECREF.exit61.thread.i

bb.ab:                                            ; preds = %bb.x
  %i.bv = load ptr, ptr %4, align 8, !tbaa !49
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
  %i.bw = load i32, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, -1073741825
  br i1 %i.bx, label %_Py_NewRef.exit.i, label %_Py_NewRef.exit.sink.split.i

_Py_NewRef.exit.sink.split.i:                     ; preds = %.split51.i, %.split.i
  %.sink27.i = phi i32 [ %i.bo, %.split.i ], [ %i.bw, %.split51.i ]
  %i.by = add nuw i32 %.sink27.i, 1
  store i32 %i.by, ptr %i.i, align 8, !tbaa !26
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %_Py_NewRef.exit.sink.split.i, %.split51.i, %.split.i
  store ptr %i.i, ptr %i.aq, align 8, !tbaa !50
  %i.bz = getelementptr i8, ptr %i.ao, i64 56
  store i32 %i.l, ptr %i.bz, align 8, !tbaa !51
  %i.ca = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  store i64 %.04163.ph, ptr %i.ca, align 8, !tbaa !52
  %i.cb = getelementptr i8, ptr %i.ad, i64 16
  %.val68.i = load i64, ptr %i.cb, align 8, !tbaa !118
  %i.cc = icmp sgt i64 %.val68.i, 0
  br i1 %i.cc, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_Py_NewRef.exit.i
  %i.cd = load i32, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, -1073741825
  br i1 %i.ce, label %_Py_NewRef.exit70.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nuw i32 %i.cd, 1
  store i32 %i.cf, ptr %i.ad, align 8, !tbaa !26
  br label %_Py_NewRef.exit70.i

_Py_NewRef.exit70.i:                              ; preds = %bb.ae, %bb.ad
  store ptr %i.ad, ptr %i.ar, align 8, !tbaa !53
  %i.cg = getelementptr i8, ptr %i.ai, i64 16
  %.val66.i = load i64, ptr %i.cg, align 8, !tbaa !37
  %i.ch = icmp sgt i64 %.val66.i, 0
  br i1 %i.ch, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_Py_NewRef.exit70.i
  %i.ci = load i32, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, -1073741825
  br i1 %i.cj, label %_Py_NewRef.exit71.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = add nuw i32 %i.ci, 1
  store i32 %i.ck, ptr %i.ai, align 8, !tbaa !26
  br label %_Py_NewRef.exit71.i

_Py_NewRef.exit71.i:                              ; preds = %bb.ag, %bb.af
  store ptr %i.ai, ptr %i.as, align 8, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %_Py_NewRef.exit71.i, %_Py_NewRef.exit70.i, %_Py_NewRef.exit.i
  %i.cl = getelementptr i8, ptr %i.ao, i64 88     ; 3 uses
  %i.cm = load i64, ptr %i.at, align 8, !tbaa !40
  %i.cn = getelementptr [4 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
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
  %i.ct = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.ct, ptr noundef nonnull @.str.24) #13
  %i.cu = load i32, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cu, -1
  br i1 %.not.i.i, label %bb.ak, label %_sre_compile_impl.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ao, align 8, !tbaa !26
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
define internal ptr @_sre_template(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.2, i64 noundef %2, i64 noundef 2, i64 noundef 2) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_sre_template_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.e, align 8, !tbaa !36
  %i.f = and i64 %.val12, 33554432
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.c) #13
  br label %_sre_template_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %.val62.i = load i64, ptr %i.g, align 8, !tbaa !37 ; 4 uses
  %i.h = and i64 %.val62.i, 1
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp slt i64 %.val62.i, 1
  %or.cond.i = or i1 %i.j, %i.i
  br i1 %or.cond.i, label %.thread13.i, label %bb.f

.thread13.i:                                      ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.26) #13
  br label %_sre_template_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val13 = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.m = lshr i64 %.val62.i, 1                    ; 3 uses
  %i.n = getelementptr i8, ptr %.val13, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = tail call ptr @_PyObject_GC_NewVar(ptr noundef %i.o, i64 noundef %i.m) #13 ; 14 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_sre_template_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.p, i64 24       ; 3 uses
  store i64 %.val62.i, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr i8, ptr %i.c, i64 24       ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = icmp ugt i32 %i.u, -1073741825
  br i1 %i.v, label %_Py_NewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.u, 1
  store i32 %i.w, ptr %i.t, align 8, !tbaa !26
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.h, %bb.g
  %i.x = getelementptr i8, ptr %i.p, i64 32
  store ptr %i.t, ptr %i.x, align 8, !tbaa !57
  %.not20.i = icmp eq i64 %i.m, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Py_NewRef.exit.i
  %i.y = getelementptr i8, ptr %i.p, i64 40
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %.lr.ph.i
  %.04319.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.v ] ; 5 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.aa = shl nuw nsw i64 %.04319.i, 1            ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = tail call i64 @PyLong_AsSsize_t(ptr noundef %i.ad) #13 ; 3 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @PyErr_Occurred() #13
  %.not51.i = icmp eq ptr %i.ag, null
  br i1 %.not51.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.p, i64 16
  store i64 %.04319.i, ptr %i.ah, align 8, !tbaa !37
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.l, label %_sre_template_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !26
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
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !59
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.aa
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 7 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val57.i = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr i8, ptr %.val57.i, i64 168
  %.val59.i = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.at = and i64 %.val59.i, 268435456
  %.not52.i = icmp eq i64 %i.at, 0
  br i1 %.not52.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr i8, ptr %i.aq, i64 16
  %.val60.i = load i64, ptr %i.au, align 8, !tbaa !62
  %.not53.i = icmp eq i64 %.val60.i, 0
  br i1 %.not53.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = and i64 %.val59.i, 134217728
  %.not54.i = icmp eq i64 %i.av, 0
  br i1 %.not54.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.aq, i64 16
  %.val61.i = load i64, ptr %i.aw, align 8, !tbaa !37
  %.not55.i = icmp eq i64 %.val61.i, 0
  br i1 %.not55.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !56
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !56
  br label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.ba = icmp ugt i32 %i.az, -1073741825
  br i1 %i.ba, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = add nuw i32 %i.az, 1
  store i32 %i.bb, ptr %i.aq, align 8, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.05.i = phi ptr [ null, %bb.s ], [ %i.aq, %bb.t ], [ %i.aq, %bb.u ]
  %i.bc = getelementptr i8, ptr %i.am, i64 8
  store ptr %.05.i, ptr %i.bc, align 8, !tbaa !63
  %i.bd = add nuw nsw i64 %.04319.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.m
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !119

._crit_edge.i:                                    ; preds = %bb.v, %_Py_NewRef.exit.i
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.p) #13
  br label %_sre_template_impl.exit

.thread.i:                                        ; preds = %bb.n, %bb.j
  %i.be = getelementptr i8, ptr %i.p, i64 16
  store i64 %.04319.i, ptr %i.be, align 8, !tbaa !37
  %i.bf = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !27
  tail call void @PyErr_SetString(ptr noundef %i.bf, ptr noundef nonnull @.str.26) #13
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.bg, -1
  br i1 %.not.i.i64.i, label %bb.w, label %_sre_template_impl.exit

bb.w:                                             ; preds = %.thread.i
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !26
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.x, label %_sre_template_impl.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #13
  br label %_sre_template_impl.exit

_sre_template_impl.exit:                          ; preds = %bb.x, %bb.w, %.thread.i, %._crit_edge.i, %bb.m, %bb.l, %bb.k, %bb.f, %.thread13.i, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.x ], [ %i.p, %._crit_edge.i ], [ null, %.thread13.i ], [ null, %.thread.i ], [ null, %bb.w ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_sre_getcodesize(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyLong_FromLong(i64 noundef 4) #13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_sre_ascii_iscased(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #13 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.split

.split:                                           ; preds = %bb.a
  %i.c = icmp ult i32 %i.a, 128
  br i1 %i.c, label %bb.b, label %_sre_ascii_iscased_impl.exit

bb.b:                                             ; preds = %.split
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = and i32 %i.f, 3
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i64
  br label %_sre_ascii_iscased_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @PyErr_Occurred() #13
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_sre_ascii_iscased_impl.exit, label %bb.d

_sre_ascii_iscased_impl.exit:                     ; preds = %bb.c, %bb.b, %.split
  %phi.call = phi i64 [ %i.i, %bb.b ], [ 0, %.split ], [ 0, %bb.c ]
  %i.k = tail call ptr @PyBool_FromLong(i64 noundef %phi.call) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_sre_ascii_iscased_impl.exit
  %.0 = phi ptr [ null, %bb.c ], [ %i.k, %_sre_ascii_iscased_impl.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_sre_unicode_iscased(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #13 ; 5 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.a) #13
  %.not.i = icmp eq i32 %i.a, %i.c
  br i1 %.not.i, label %bb.b, label %_sre_unicode_iscased_impl.exit

bb.b:                                             ; preds = %.split
  %i.d = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %i.a) #13
  %i.e = icmp ne i32 %i.a, %i.d
  br label %_sre_unicode_iscased_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyErr_Occurred() #13
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.split6, label %bb.e

.split6:                                          ; preds = %bb.c
  %i.g = tail call i32 @_PyUnicode_ToLowercase(i32 noundef -1) #13
  %.not.i8 = icmp eq i32 %i.g, -1
  br i1 %.not.i8, label %bb.d, label %_sre_unicode_iscased_impl.exit

bb.d:                                             ; preds = %.split6
  %i.h = tail call i32 @_PyUnicode_ToUppercase(i32 noundef -1) #13
  %i.i = icmp ne i32 %i.h, -1
  br label %_sre_unicode_iscased_impl.exit

_sre_unicode_iscased_impl.exit:                   ; preds = %bb.d, %.split6, %bb.b, %.split
  %phi.call.shrunk = phi i1 [ %i.e, %bb.b ], [ true, %.split ], [ true, %.split6 ], [ %i.i, %bb.d ]
  %i.j = zext i1 %phi.call.shrunk to i64
  %i.k = tail call ptr @PyBool_FromLong(i64 noundef %i.j) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_sre_unicode_iscased_impl.exit
  %.0 = phi ptr [ null, %bb.c ], [ %i.k, %_sre_unicode_iscased_impl.exit ]
  ret ptr %.0
end_hunk_0
