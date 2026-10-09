Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/itertoolsmodule?download=true
inline.NumInlined: 375
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@permutations_next:bb.a
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph122.i
  %.092120.i.epil.init = phi i64 [ 0, %.lr.ph122.i ], [ %i.al, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.dl = getelementptr [8 x i8], ptr %i.d, i64 %.092120.i.epil.init
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !89
  %i.dn = getelementptr [8 x i8], ptr %i.r, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !44 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !43 ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, -1073741825
  br i1 %i.dq, label %Py_INCREF.exit106.i.epil, label %bb.x

bb.x:                                             ; preds = %.epil.preheader
  %i.dr = add nuw i32 %i.dp, 1
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !43
  br label %Py_INCREF.exit106.i.epil

Py_INCREF.exit106.i.epil:                         ; preds = %bb.x, %.epil.preheader
  %i.ds = getelementptr [8 x i8], ptr %i.s, i64 %.092120.i.epil.init
  store ptr %i.do, ptr %i.ds, align 8, !tbaa !44
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %Py_DECREF.exit.i, %Py_INCREF.exit106.i.epil, %.loopexit.i.loopexit.unr-lcssa, %bb.s, %bb.d
  %.194.i = phi ptr [ %i.o, %bb.d ], [ %.093.i, %bb.s ], [ %i.o, %Py_INCREF.exit106.i.epil ], [ %i.o, %.loopexit.i.loopexit.unr-lcssa ], [ %.093.i, %Py_DECREF.exit.i ] ; 4 uses
  %i.dt = load i32, ptr %.194.i, align 8, !tbaa !43 ; 2 uses
  %i.du = icmp ugt i32 %i.dt, -1073741825
  br i1 %i.du, label %permutations_next_lock_held.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit.i
  %i.dv = add nuw i32 %i.dt, 1
  store i32 %i.dv, ptr %.194.i, align 8, !tbaa !43
  br label %permutations_next_lock_held.exit

Py_DECREF.exit104.i:                              ; preds = %._crit_edge.i, %_PyTuple_Recycle.exit.i, %bb.j, %bb.h, %bb.c
  store i32 1, ptr %i.l, align 8, !tbaa !148
  br label %permutations_next_lock_held.exit

permutations_next_lock_held.exit:                 ; preds = %bb.a, %.loopexit.i, %bb.y, %Py_DECREF.exit104.i
  %.095.i = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit104.i ], [ %.194.i, %.loopexit.i ], [ %.194.i, %bb.y ]
  ret ptr %.095.i
}

; Function Attrs: nounwind uwtable
define internal ptr @itertools_permutations(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val32 = load i64, ptr %i.b, align 8, !tbaa !68 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !72
  %i.d = add i64 %.val, %.val32
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val32, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val32, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val32, ptr noundef %2, ptr noundef null, ptr noundef nonnull @itertools_permutations._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %itertools_permutations_impl.exit, label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val32, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !44
  %.not31 = icmp eq i64 %i.n, 1
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread35
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %.thread35, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ @_Py_NoneStruct, %.thread35 ] ; 3 uses
  %i.r = call ptr @PySequence_Tuple(ptr noundef %i.o) #8 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %itertools_permutations_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val67.i = load i64, ptr %i.t, align 8, !tbaa !68 ; 11 uses
  %.not.i = icmp eq ptr %.0, @_Py_NoneStruct
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0, i64 8
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr i8, ptr %.val.i, i64 168
  %.val68.i = load i64, ptr %i.v, align 8, !tbaa !111
  %i.w = and i64 %.val68.i, 16777216
  %.not63.i = icmp eq i64 %i.w, 0
  br i1 %.not63.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.95) #8
  br label %.thread77.thread.i

bb.i:                                             ; preds = %bb.g
  %i.y = call i64 @PyLong_AsSsize_t(ptr noundef %.0) #8 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = call ptr @PyErr_Occurred() #8
  %.not64.i = icmp eq ptr %i.aa, null
  br i1 %.not64.i, label %.thread.i, label %.thread77.thread.i

bb.k:                                             ; preds = %bb.i, %bb.f
  %.052.i = phi i64 [ %.val67.i, %bb.f ], [ %i.y, %bb.i ] ; 10 uses
  %i.ab = icmp slt i64 %.052.i, 0
  br i1 %i.ab, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.ac = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.96) #8
  br label %.thread77.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp ugt i64 %.val67.i, 1152921504606846975
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = shl nuw nsw i64 %.val67.i, 3
  %i.af = call ptr @PyMem_Malloc(i64 noundef %i.ae) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi ptr [ %i.af, %bb.m ], [ null, %bb.l ] ; 6 uses
  %i.ah = icmp samesign ugt i64 %.052.i, 1152921504606846975
  br i1 %i.ah, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = shl nuw nsw i64 %.052.i, 3
  %i.aj = call ptr @PyMem_Malloc(i64 noundef %i.ai) #8 ; 6 uses
  %i.ak = icmp eq ptr %i.ag, null
  %i.al = icmp eq ptr %i.aj, null
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i, label %bb.q, label %.preheader81.i

.preheader81.i:                                   ; preds = %bb.o
  %i.am = icmp sgt i64 %.val67.i, 0
  br i1 %i.am, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader81.i
  %min.iters.check = icmp ult i64 %.val67.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.val67.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <2 x i64> %vec.ind, ptr %i.an, align 8, !tbaa !89
  store <2 x i64> %step.add, ptr %i.ao, align 8, !tbaa !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val67.i, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader60

.lr.ph.i.preheader60:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.082.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %middle.block, %.preheader81.i
  %.not85.i = icmp eq i64 %.052.i, 0
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check47 = icmp ult i64 %.052.i, 4
  br i1 %min.iters.check47, label %.lr.ph84.i.preheader59, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph84.i.preheader
  %n.vec49 = and i64 %.052.i, 1152921504606846972 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val67.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next54, %vector.body50 ] ; 2 uses
  %vec.ind52 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph48 ], [ %vec.ind.next55, %vector.body50 ] ; 3 uses
  %step.add53 = add nuw <2 x i64> %vec.ind52, splat (i64 2)
  %i.aq = sub <2 x i64> %broadcast.splat, %vec.ind52
  %3 = sub <2 x i64> %broadcast.splat, %step.add53
  %i.ar = getelementptr [8 x i8], ptr %i.aj, i64 %index51 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store <2 x i64> %i.aq, ptr %i.ar, align 8, !tbaa !89
  store <2 x i64> %3, ptr %i.as, align 8, !tbaa !89
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %vec.ind.next55 = add nuw <2 x i64> %vec.ind52, splat (i64 4)
  %i.at = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.at, label %middle.block56, label %vector.body50, !llvm.loop !206

middle.block56:                                   ; preds = %vector.body50
  %cmp.n57 = icmp eq i64 %.052.i, %n.vec49
  br i1 %cmp.n57, label %._crit_edge.i, label %.lr.ph84.i.preheader59

.lr.ph84.i.preheader59:                           ; preds = %.lr.ph84.i.preheader, %middle.block56
  %.183.i.ph = phi i64 [ 0, %.lr.ph84.i.preheader ], [ %n.vec49, %middle.block56 ]
  br label %.lr.ph84.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader60, %.lr.ph.i
  %.082.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.082.i.ph, %.lr.ph.i.preheader60 ] ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %i.ag, i64 %.082.i
  store i64 %.082.i, ptr %i.au, align 8, !tbaa !89
  %i.av = add nuw nsw i64 %.082.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %.val67.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !207

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader59, %.lr.ph84.i
  %.183.i = phi i64 [ %i.ay, %.lr.ph84.i ], [ %.183.i.ph, %.lr.ph84.i.preheader59 ] ; 3 uses
  %i.aw = sub i64 %.val67.i, %.183.i
  %i.ax = getelementptr [8 x i8], ptr %i.aj, i64 %.183.i
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !89
  %i.ay = add nuw nsw i64 %.183.i, 1              ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.ay, %.052.i
  br i1 %exitcond86.not.i, label %._crit_edge.i, label %.lr.ph84.i, !llvm.loop !208

._crit_edge.i:                                    ; preds = %.lr.ph84.i, %middle.block56, %.preheader.i
  %i.az = getelementptr i8, ptr %0, i64 304
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73
  %i.bb = call ptr %i.ba(ptr noundef %0, i64 noundef 0) #8, !inline_history !209 ; 8 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread93.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.r, ptr %i.bd, align 8, !tbaa !143
  %i.be = getelementptr i8, ptr %i.bb, i64 24
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !145
  %i.bf = getelementptr i8, ptr %i.bb, i64 32
  store ptr %i.aj, ptr %i.bf, align 8, !tbaa !146
  %i.bg = getelementptr i8, ptr %i.bb, i64 40
  store ptr null, ptr %i.bg, align 8, !tbaa !144
  %i.bh = getelementptr i8, ptr %i.bb, i64 48
  store i64 %.052.i, ptr %i.bh, align 8, !tbaa !147
  %i.bi = icmp sgt i64 %.052.i, %.val67.i
  %i.bj = zext i1 %i.bi to i32
  %i.bk = getelementptr i8, ptr %i.bb, i64 56
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !148
  br label %itertools_permutations_impl.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi ptr [ %i.aj, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.bm = call ptr @PyErr_NoMemory() #8           ; 0 uses
  %.not65.i = icmp eq ptr %i.ag, null
  br i1 %.not65.i, label %bb.r, label %.thread93.i

.thread93.i:                                      ; preds = %bb.q, %._crit_edge.i
  %.05096.i = phi ptr [ %i.bl, %bb.q ], [ %i.aj, %._crit_edge.i ]
  call void @PyMem_Free(ptr noundef nonnull %i.ag) #8
  br label %bb.r

bb.r:                                             ; preds = %.thread93.i, %bb.q
  %.05097.i = phi ptr [ %.05096.i, %.thread93.i ], [ %i.bl, %bb.q ] ; 2 uses
  %.not66.i = icmp eq ptr %.05097.i, null
  br i1 %.not66.i, label %.thread77.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @PyMem_Free(ptr noundef nonnull %.05097.i) #8
  br label %.thread77.thread.i

.thread77.thread.i:                               ; preds = %bb.s, %bb.r, %.thread.i, %bb.j, %bb.h
  %i.bn = load i32, ptr %i.r, align 8, !tbaa !43  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.bn, -1
  br i1 %.not.i.i.i, label %bb.t, label %itertools_permutations_impl.exit

bb.t:                                             ; preds = %.thread77.thread.i
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.r, align 8, !tbaa !43
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.u, label %itertools_permutations_impl.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #8
  br label %itertools_permutations_impl.exit

itertools_permutations_impl.exit:                 ; preds = %bb.u, %bb.t, %.thread77.thread.i, %bb.p, %bb.e, %bb.c
  %.026 = phi ptr [ null, %bb.c ], [ %i.bb, %bb.p ], [ null, %bb.e ], [ null, %.thread77.thread.i ], [ null, %bb.t ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @permutations_sizeof(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr i8, ptr %.val, i64 32
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147
  %i.h = add i64 %i.g, %.val6
  %i.i = shl i64 %i.h, 3
  %i.j = add i64 %i.i, %.val7
  %i.k = tail call ptr @PyLong_FromSize_t(i64 noundef %i.j) #8
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal void @product_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 4 uses
  %.not.i9 = icmp eq ptr %i.c, null
  br i1 %.not.i9, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !43
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 4 uses
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %Py_XDECREF.exit12, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %.not.i.i11 = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i11, label %bb.f, label %Py_XDECREF.exit12

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !43
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_XDECREF.exit12

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %Py_XDECREF.exit12

Py_XDECREF.exit12:                                ; preds = %Py_XDECREF.exit, %bb.e, %bb.f, %bb.g
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152
  tail call void @PyMem_Free(ptr noundef %i.m) #8
  %i.n = getelementptr i8, ptr %.val, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  tail call void %i.o(ptr noundef nonnull %0) #8
  %i.p = load i32, ptr %.val, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %Py_XDECREF.exit12
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.val, align 8, !tbaa !43
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit12, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @product_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %.val36, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
