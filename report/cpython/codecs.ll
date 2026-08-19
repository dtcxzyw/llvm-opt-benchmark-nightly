inline.NumInlined: 135
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_PyCodec_Lookup:bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #10   ; 0 uses
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #11 ; 8 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %normalizestring.exit.thread, label %bb.d

normalizestring.exit.thread:                      ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.37) #10
  br label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef %i.j) #10 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not.i51 = icmp eq i64 %i.g, 0
  br i1 %.not.i51, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.g, 1
  %i.m = icmp eq i64 %i.g, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyErr_NoMemory() #10
  br label %normalizestring.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i.preheader.new
  %.01924.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.o = getelementptr i8, ptr %0, i64 %.01924.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !110   ; 2 uses
  %i.q = icmp eq i8 %i.p, 32
  br i1 %i.q, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !110
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.0.i = phi i8 [ %i.t, %bb.f ], [ 45, %.lr.ph.i ]
  %i.u = getelementptr i8, ptr %i.k, i64 %.01924.i
  store i8 %.0.i, ptr %i.u, align 1, !tbaa !110
  %i.v = or disjoint i64 %.01924.i, 1             ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !110   ; 2 uses
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.1
  %.0.i.1 = phi i8 [ %i.ab, %bb.g ], [ 45, %.lr.ph.i.1 ]
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.v
  store i8 %.0.i.1, ptr %i.ac, align 1, !tbaa !110
  %i.ad = add nuw nsw i64 %.01924.i, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !112

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01924.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod77 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.ae = getelementptr i8, ptr %0, i64 %.01924.i.epil.init
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !110 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 32
  br i1 %i.ag, label %._crit_edge.i.loopexit.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ah = zext i8 %i.af to i64
  %i.ai = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !110
  br label %._crit_edge.i.loopexit.epilog-lcssa

._crit_edge.i.loopexit.epilog-lcssa:              ; preds = %bb.i, %.lr.ph.i.epil.preheader
  %.0.i.epil = phi i8 [ %i.aj, %bb.i ], [ 45, %.lr.ph.i.epil.preheader ]
  %i.ak = getelementptr i8, ptr %i.k, i64 %.01924.i.epil.init
  store i8 %.0.i.epil, ptr %i.ak, align 1, !tbaa !110
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.al = getelementptr i8, ptr %i.k, i64 %i.g
  store i8 0, ptr %i.al, align 1, !tbaa !110
  %i.am = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.k) #10
  tail call void @PyMem_Free(ptr noundef nonnull %i.k) #10
  br label %normalizestring.exit

normalizestring.exit:                             ; preds = %bb.e, %._crit_edge.i
  %.020.i = phi ptr [ %i.am, %._crit_edge.i ], [ %i.n, %bb.e ] ; 2 uses
  store ptr %.020.i, ptr %i.a, align 8, !tbaa !14
  %i.an = icmp eq ptr %.020.i, null
  br i1 %i.an, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %normalizestring.exit
  call void @_PyUnicode_InternMortal(ptr noundef %i.f, ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ao = getelementptr i8, ptr %i.f, i64 8048    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.f, i64 8056    ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !111
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.as = call i32 @PyDict_GetItemRef(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef nonnull %i.b) #10
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %Py_DECREF.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !110 ; 2 uses
  %.not.i41 = icmp sgt i32 %i.aw, -1
  br i1 %.not.i41, label %bb.m, label %Py_DECREF.exit42

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !110
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %Py_DECREF.exit42

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #10
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.bb = call i64 @PyList_Size(ptr noundef %i.ba) #10 ; 3 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %Py_DECREF.exit34, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.2) #10
  br label %Py_DECREF.exit34

.lr.ph:                                           ; preds = %bb.p, %bb.ad
  %.057 = phi i64 [ %i.cc, %bb.ad ], [ 0, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.bg = call ptr @PyList_GetItemRef(ptr noundef %i.bf, i64 noundef %.057) #10 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %Py_DECREF.exit34, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bj = call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.bg, ptr noundef %i.bi) #10 ; 2 uses
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !14
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !110 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i39, label %bb.s, label %Py_DECREF.exit40

bb.s:                                             ; preds = %bb.r
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bg, align 8, !tbaa !110
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %Py_DECREF.exit40thread-pre-split

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.bg) #10
  br label %Py_DECREF.exit40thread-pre-split

Py_DECREF.exit40thread-pre-split:                 ; preds = %bb.t, %bb.s
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %Py_DECREF.exit40thread-pre-split, %bb.r
  %i.bn = phi ptr [ %.pr, %Py_DECREF.exit40thread-pre-split ], [ %i.bj, %bb.r ] ; 7 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %Py_DECREF.exit34, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit40
  %i.bp = icmp eq ptr %i.bn, @_Py_NoneStruct
  br i1 %i.bp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !110 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i37, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bn, align 8, !tbaa !110
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.bn) #10
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.bt = getelementptr i8, ptr %i.bn, i64 8
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !113
  %i.bu = getelementptr i8, ptr %.val, i64 168
  %.val49 = load i64, ptr %i.bu, align 8, !tbaa !114
  %i.bv = and i64 %.val49, 67108864
  %.not29 = icmp eq i64 %i.bv, 0
  br i1 %.not29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr i8, ptr %i.bn, i64 16
  %.val50 = load i64, ptr %i.bw, align 8, !tbaa !106
  %.not30 = icmp eq i64 %.val50, 4
  br i1 %.not30, label %Py_DECREF.exit38, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bx = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.bx, ptr noundef nonnull @.str.3) #10
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !110 ; 2 uses
  %.not.i35 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i35, label %bb.ab, label %Py_DECREF.exit34

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !110
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ac, label %Py_DECREF.exit34

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.by) #10
  br label %Py_DECREF.exit34

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.x
  %i.cc = add nuw nsw i64 %.057, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bb
  br i1 %exitcond.not, label %Py_DECREF.exit38, label %.lr.ph, !llvm.loop !119

Py_DECREF.exit38:                                 ; preds = %bb.ad, %bb.z
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %Py_DECREF.exit38
  %i.cf = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !14
  %i.cg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cf, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  br label %Py_DECREF.exit34

bb.af:                                            ; preds = %Py_DECREF.exit38
  call void @_PyUnicode_InternImmortal(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #10
  %i.ch = load ptr, ptr %i.ap, align 8, !tbaa !111
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ck = call i32 @PyDict_SetItem(ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj) #10
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !110 ; 2 uses
  %.not.i33 = icmp sgt i32 %i.cn, -1
  br i1 %.not.i33, label %bb.ah, label %Py_DECREF.exit34

bb.ah:                                            ; preds = %bb.ag
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !110
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ai, label %Py_DECREF.exit34

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.cm) #10
  br label %Py_DECREF.exit34

bb.aj:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !110 ; 2 uses
  %.not.i31 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i31, label %bb.ak, label %Py_DECREF.exit32

bb.ak:                                            ; preds = %bb.aj
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !110
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.al, label %Py_DECREF.exit32

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #10
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %bb.aj, %bb.ak, %bb.al
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %Py_DECREF.exit

Py_DECREF.exit34:                                 ; preds = %.lr.ph, %Py_DECREF.exit40, %bb.ac, %bb.ab, %bb.aa, %bb.ai, %bb.ah, %bb.ag, %bb.o, %bb.j, %bb.ae, %bb.q
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i, label %bb.am, label %Py_DECREF.exit

bb.am:                                            ; preds = %Py_DECREF.exit34
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !110
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.an, label %Py_DECREF.exit

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.cv) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.an, %bb.am, %Py_DECREF.exit34, %Py_DECREF.exit32, %Py_DECREF.exit42
  %.023 = phi ptr [ %i.cu, %Py_DECREF.exit32 ], [ %i.az, %Py_DECREF.exit42 ], [ null, %Py_DECREF.exit34 ], [ null, %bb.am ], [ null, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ao

bb.ao:                                            ; preds = %normalizestring.exit.thread, %normalizestring.exit, %Py_DECREF.exit
  %.1 = phi ptr [ %.023, %Py_DECREF.exit ], [ null, %normalizestring.exit ], [ null, %normalizestring.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %.1, %bb.ao ]
  ret ptr %.2
}

declare void @_PyUnicode_InternMortal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyList_Size(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_PyUnicode_InternImmortal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PyCodec_KnownEncoding(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyCodec_Lookup(ptr noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @PyErr_Clear() #10
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !110
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

declare void @PyErr_Clear() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCodecInfo_GetIncrementalDecoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @codec_makeincrementalcodec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @codec_makeincrementalcodec(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef %2) #10 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #10
  br label %_PyObject_CallNoArgs.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !113 ; 2 uses
end_hunk_0
