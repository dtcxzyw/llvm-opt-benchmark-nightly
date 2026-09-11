Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mathintegermodule?download=true
inline.NumInlined: 33
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@math_integer_perm:bb.a
bb.k:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.j, i64 16
  %.val45.i = load i64, ptr %i.q, align 8, !tbaa !19
  %i.r = and i64 %.val45.i, 3
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.8) #6
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !19
  %i.v = and i64 %.val.i, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.9) #6
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.y = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, i32 noundef 0) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ab = call i64 @PyLong_AsLongLongAndOverflow(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !12
  %i.af = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.14, i64 noundef 9223372036854775807) #6 ; 0 uses
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.ag = call i64 @PyLong_AsLongLongAndOverflow(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #6
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = icmp sgt i64 %i.ab, 1
  %or.cond.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ak = call fastcc ptr @perm_comb_small(i64 noundef %i.ag, i64 noundef %i.ab, i32 noundef 0)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.al = call fastcc ptr @perm_comb(ptr noundef %i.j, i64 noundef %i.ab, i32 noundef 0)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.q
  %.0.i = phi ptr [ %i.aa, %bb.q ], [ %i.ak, %bb.u ], [ %i.al, %bb.v ] ; 3 uses
  %i.am = load i32, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %.not.i37.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i37.i, label %bb.x, label %Py_DECREF.exit38.i

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.j, align 8, !tbaa !13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.y, label %Py_DECREF.exit38.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %Py_DECREF.exit38.i

Py_DECREF.exit38.i:                               ; preds = %bb.y, %bb.x, %bb.w
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i35.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i35.i, label %bb.z, label %math_integer_perm_impl.exit

bb.z:                                             ; preds = %Py_DECREF.exit38.i
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !13
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %math_integer_perm_impl.exit

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #6
  br label %math_integer_perm_impl.exit

bb.ab:                                            ; preds = %bb.s, %bb.p, %bb.n, %bb.l
  %i.as = load i32, ptr %i.j, align 8, !tbaa !13  ; 2 uses
  %.not.i33.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i33.i, label %bb.ac, label %Py_DECREF.exit34.i

bb.ac:                                            ; preds = %bb.ab
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.j, align 8, !tbaa !13
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.ad, label %Py_DECREF.exit34.i

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %Py_DECREF.exit34.i

Py_DECREF.exit34.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.av = load i32, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i.i, label %bb.ae, label %math_integer_perm_impl.exit

bb.ae:                                            ; preds = %Py_DECREF.exit34.i
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.l, align 8, !tbaa !13
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.af, label %math_integer_perm_impl.exit

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #6
  br label %math_integer_perm_impl.exit

math_integer_perm_impl.exit:                      ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %Py_DECREF.exit38.i, %bb.z, %bb.aa, %Py_DECREF.exit34.i, %bb.ae, %bb.af
  %.027.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.j ], [ null, %bb.f ], [ %.0.i, %bb.aa ], [ null, %bb.h ], [ null, %bb.i ], [ %.0.i, %Py_DECREF.exit38.i ], [ %.0.i, %bb.z ], [ null, %Py_DECREF.exit34.i ], [ null, %bb.ae ], [ null, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %math_integer_perm_impl.exit
  %.010 = phi ptr [ %.027.i, %math_integer_perm_impl.exit ], [ null, %bb.b ]
  ret ptr %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLongLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @perm_comb_small(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 35
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr @perm_comb_small.fast_comb_limits1, i64 %1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i64
  %.not93 = icmp ugt i64 %0, %i.e
  br i1 %.not93, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr [8 x i8], ptr @reduced_factorial_odd_part, i64 %0
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr [8 x i8], ptr @inverted_factorial_odd_part, i64 %1
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = mul i64 %i.i, %i.g
  %i.k = sub nsw i64 %0, %1                       ; 2 uses
  %i.l = getelementptr [8 x i8], ptr @inverted_factorial_odd_part, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = mul i64 %i.j, %i.m
  %i.o = getelementptr i8, ptr @factorial_trailing_zeros, i64 %0
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @factorial_trailing_zeros, i64 %1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr @factorial_trailing_zeros, i64 %i.k
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = add nuw nsw i64 %i.t, %i.w
  %i.y = sub nsw i64 %i.q, %i.x
  %i.z = and i64 %i.y, 4294967295
  %i.aa = shl i64 %i.n, %i.z
  %i.ab = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.aa) #6
  br label %Py_DECREF.exit96

bb.e:                                             ; preds = %bb.c
  %i.ac = icmp samesign ult i64 %1, 14
  br i1 %i.ac, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr [8 x i8], ptr @perm_comb_small.fast_comb_limits2, i64 %1
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !33
  %.not94 = icmp ugt i64 %0, %i.ae
  br i1 %.not94, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.af = icmp samesign ugt i64 %1, 1
  br i1 %i.af, label %.lr.ph116.preheader, label %._crit_edge117

.lr.ph116.preheader:                              ; preds = %.preheader
  %i.ag = add nsw i64 %1, -1                      ; 3 uses
  %xtraiter137 = and i64 %i.ag, 1
  %3 = icmp eq i64 %1, 2
  br i1 %3, label %.lr.ph116.epil.preheader.a, label %.lr.ph116.preheader.new

.lr.ph116.preheader.new:                          ; preds = %.lr.ph116.preheader
  %unroll_iter142 = and i64 %i.ag, -2
  br label %.lr.ph116

._crit_edge117.loopexit.unr-lcssa:                ; preds = %.lr.ph116
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %._crit_edge117, label %.lr.ph116.epil.preheader.a

.lr.ph116.epil.preheader.a:                       ; preds = %._crit_edge117.loopexit.unr-lcssa, %.lr.ph116.preheader
  %.069115.epil.init.a = phi i64 [ %0, %.lr.ph116.preheader ], [ %i.ao, %._crit_edge117.loopexit.unr-lcssa ]
  %.071114.epil.init.a = phi i64 [ %0, %.lr.ph116.preheader ], [ %i.ar, %._crit_edge117.loopexit.unr-lcssa ]
  %.072113.epil.init.a = phi i64 [ 1, %.lr.ph116.preheader ], [ %i.aq, %._crit_edge117.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ah = add i64 %.069115.epil.init.a, -1
  %4 = mul i64 %i.ah, %.071114.epil.init.a
  %i.ai = add nuw nsw i64 %.072113.epil.init.a, 1
  %5 = udiv i64 %4, %i.ai
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %.lr.ph116.epil.preheader.a, %._crit_edge117.loopexit.unr-lcssa, %.preheader
  %.071.lcssa = phi i64 [ %0, %.preheader ], [ %i.ar, %._crit_edge117.loopexit.unr-lcssa ], [ %5, %.lr.ph116.epil.preheader.a ]
  %i.aj = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %.071.lcssa) #6
  br label %Py_DECREF.exit96

.lr.ph116:                                        ; preds = %.lr.ph116, %.lr.ph116.preheader.new
  %.069115 = phi i64 [ %0, %.lr.ph116.preheader.new ], [ %i.ao, %.lr.ph116 ] ; 2 uses
  %.071114 = phi i64 [ %0, %.lr.ph116.preheader.new ], [ %i.ar, %.lr.ph116 ]
  %.072113 = phi i64 [ 1, %.lr.ph116.preheader.new ], [ %i.aq, %.lr.ph116 ] ; 2 uses
  %niter143 = phi i64 [ 0, %.lr.ph116.preheader.new ], [ %niter143.next.1, %.lr.ph116 ]
  %i.ak = add i64 %.069115, -1
  %i.al = mul i64 %i.ak, %.071114
  %i.am = add nuw nsw i64 %.072113, 1
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = add i64 %.069115, -2                    ; 3 uses
  %i.ap = mul i64 %i.ao, %i.an
  %i.aq = add nuw nsw i64 %.072113, 2             ; 3 uses
  %i.ar = udiv i64 %i.ap, %i.aq                   ; 3 uses
  %niter143.next.1 = add nuw i64 %niter143, 2     ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge117.loopexit.unr-lcssa, label %.lr.ph116, !llvm.loop !29

bb.g:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, 21
  br i1 %i.as, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr [8 x i8], ptr @perm_comb_small.fast_perm_limits, i64 %1
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33
  %.not = icmp ugt i64 %0, %i.au
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ult i64 %0, 128
  br i1 %i.av, label %bb.j, label %.preheader109

.preheader109:                                    ; preds = %bb.i
  %i.aw = icmp samesign ugt i64 %1, 1
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.ax = add nsw i64 %1, -1                      ; 2 uses
  %i.ay = add nsw i64 %1, -2
  %xtraiter = and i64 %i.ax, 7                    ; 3 uses
  %i.az = icmp ult i64 %i.ay, 7
  br i1 %i.az, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ax, -8
  br label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr [8 x i8], ptr @reduced_factorial_odd_part, i64 %0
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bc = sub nsw i64 %0, %1                      ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr @inverted_factorial_odd_part, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = mul i64 %i.be, %i.bb
  %i.bg = getelementptr i8, ptr @factorial_trailing_zeros, i64 %0
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @factorial_trailing_zeros, i64 %i.bc
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i64
  %i.bm = sub nsw i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = shl i64 %i.bf, %i.bn
  %i.bp = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.bo) #6
  br label %Py_DECREF.exit96

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.170112.epil.init = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ]
  %.074110.epil.init = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.170112.epil = phi i64 [ %i.bq, %.lr.ph.epil ], [ %.170112.epil.init, %.lr.ph.epil.preheader ]
  %.074110.epil = phi i64 [ %i.br, %.lr.ph.epil ], [ %.074110.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bq = add i64 %.170112.epil, -1               ; 2 uses
  %i.br = mul i64 %i.bq, %.074110.epil            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader109
  %.074.lcssa = phi i64 [ %0, %.preheader109 ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.epil ]
  %i.bs = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %.074.lcssa) #6
  br label %Py_DECREF.exit96

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.170112 = phi i64 [ %0, %.lr.ph.preheader.new ], [ %i.ch, %.lr.ph ] ; 8 uses
  %.074110 = phi i64 [ %0, %.lr.ph.preheader.new ], [ %i.ci, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bt = add i64 %.170112, -1
  %i.bu = mul i64 %i.bt, %.074110
  %i.bv = add i64 %.170112, -2
  %i.bw = mul i64 %i.bv, %i.bu
  %i.bx = add i64 %.170112, -3
  %i.by = mul i64 %i.bx, %i.bw
  %i.bz = add i64 %.170112, -4
  %i.ca = mul i64 %i.bz, %i.by
  %i.cb = add i64 %.170112, -5
  %i.cc = mul i64 %i.cb, %i.ca
  %i.cd = add i64 %.170112, -6
  %i.ce = mul i64 %i.cd, %i.cc
  %i.cf = add i64 %.170112, -7
  %i.cg = mul i64 %i.cf, %i.ce
  %i.ch = add i64 %.170112, -8                    ; 3 uses
  %i.ci = mul i64 %i.ch, %i.cg                    ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !31

.thread:                                          ; preds = %bb.b, %bb.g, %bb.h, %bb.e, %bb.f
  %i.cj = lshr i64 %1, 1                          ; 4 uses
  %i.ck = tail call fastcc ptr @perm_comb_small(i64 noundef %0, i64 noundef %i.cj, i32 noundef %2) ; 6 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %Py_DECREF.exit96, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.cm = sub i64 %0, %i.cj
  %i.cn = sub nuw i64 %1, %i.cj
  %i.co = tail call fastcc ptr @perm_comb_small(i64 noundef %i.cm, i64 noundef %i.cn, i32 noundef %2) ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.co) #6 ; 7 uses
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %.not.i101 = icmp sgt i32 %i.cr, -1
  br i1 %.not.i101, label %bb.m, label %Py_DECREF.exit102

bb.m:                                             ; preds = %bb.l
  %i.cs = add nsw i32 %i.cr, -1                   ; 2 uses
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !13
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %Py_DECREF.exit102

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ck) #6
  br label %Py_DECREF.exit102

Py_DECREF.exit102:                                ; preds = %bb.l, %bb.m, %bb.n
  %i.cu = load i32, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %.not.i99 = icmp sgt i32 %i.cu, -1
  br i1 %.not.i99, label %bb.o, label %Py_DECREF.exit100

bb.o:                                             ; preds = %Py_DECREF.exit102
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.co, align 8, !tbaa !13
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %Py_DECREF.exit100

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.co) #6
  br label %Py_DECREF.exit100

Py_DECREF.exit100:                                ; preds = %Py_DECREF.exit102, %bb.o, %bb.p
  %i.cx = icmp ne ptr %i.cq, null
  %or.cond = select i1 %i.a, i1 %i.cx, i1 false
  br i1 %or.cond, label %bb.q, label %Py_DECREF.exit96

bb.q:                                             ; preds = %Py_DECREF.exit100
  %i.cy = tail call fastcc ptr @perm_comb_small(i64 noundef %1, i64 noundef %i.cj, i32 noundef 1) ; 5 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cy) #6 ; 3 uses
  %i.db = load i32, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.db, -1
  br i1 %.not.i97, label %bb.s, label %Py_DECREF.exit98

bb.s:                                             ; preds = %bb.r
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !13
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %Py_DECREF.exit98

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #6
  br label %Py_DECREF.exit98

Py_DECREF.exit98:                                 ; preds = %bb.r, %bb.s, %bb.t
  %i.de = load i32, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.de, -1
  br i1 %.not.i95, label %bb.u, label %Py_DECREF.exit96

bb.u:                                             ; preds = %Py_DECREF.exit98
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.cy, align 8, !tbaa !13
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.v, label %Py_DECREF.exit96

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #6
  br label %Py_DECREF.exit96

bb.w:                                             ; preds = %bb.q, %bb.k
  %.183 = phi ptr [ %i.ck, %bb.k ], [ %i.cq, %bb.q ] ; 3 uses
  %i.dh = load i32, ptr %.183, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit96

bb.x:                                             ; preds = %bb.w
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %.183, align 8, !tbaa !13
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.y, label %Py_DECREF.exit96

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.183) #6
  br label %Py_DECREF.exit96

Py_DECREF.exit96:                                 ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %Py_DECREF.exit98, %.thread, %Py_DECREF.exit100, %._crit_edge, %bb.j, %._crit_edge117, %bb.d
  %.1 = phi ptr [ %i.ab, %bb.d ], [ %i.aj, %._crit_edge117 ], [ %i.bs, %._crit_edge ], [ %i.bp, %bb.j ], [ null, %.thread ], [ %i.da, %bb.v ], [ %i.cq, %Py_DECREF.exit100 ], [ %i.da, %Py_DECREF.exit98 ], [ %i.da, %bb.u ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.y ]
  ret ptr %.1
}

declare ptr @PyNumber_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @perm_comb(ptr noundef nonnull %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @PyLong_FromLong(i64 noundef 1) #6
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !13
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 1                           ; 4 uses
  %i.f = tail call fastcc ptr @perm_comb(ptr noundef %0, i64 noundef %i.e, i32 noundef %2) ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.e) #6 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @PyNumber_Subtract(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #6 ; 5 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not.i60 = icmp sgt i32 %i.k, -1
  br i1 %.not.i60, label %bb.h, label %Py_DECREF.exit61

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !13
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %Py_DECREF.exit61

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #6
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.n = icmp eq ptr %i.j, null
  br i1 %i.n, label %bb.x, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit61
  %i.o = sub nuw i64 %1, %i.e
  %i.p = tail call fastcc ptr @perm_comb(ptr noundef %i.j, i64 noundef %i.o, i32 noundef %2) ; 5 uses
  %i.q = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i58 = icmp sgt i32 %i.q, -1
  br i1 %.not.i58, label %bb.k, label %Py_DECREF.exit59

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %Py_DECREF.exit59

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %Py_DECREF.exit59

Py_DECREF.exit59:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.t = icmp eq ptr %i.p, null
  br i1 %i.t, label %bb.x, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit59
  %i.u = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %i.p) #6 ; 7 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not.i56 = icmp sgt i32 %i.v, -1
  br i1 %.not.i56, label %bb.n, label %Py_DECREF.exit57

bb.n:                                             ; preds = %bb.m
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.f, align 8, !tbaa !13
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %Py_DECREF.exit57

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit57

Py_DECREF.exit57:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.y = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.y, -1
  br i1 %.not.i54, label %bb.p, label %Py_DECREF.exit55

bb.p:                                             ; preds = %Py_DECREF.exit57
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.p, align 8, !tbaa !13
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.q, label %Py_DECREF.exit55

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #6
  br label %Py_DECREF.exit55

Py_DECREF.exit55:                                 ; preds = %Py_DECREF.exit57, %bb.p, %bb.q
  %i.ab = icmp ne i32 %2, 0
  %i.ac = icmp ne ptr %i.u, null
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.r, label %_Py_NewRef.exit

bb.r:                                             ; preds = %Py_DECREF.exit55
  %i.ad = tail call fastcc ptr @perm_comb_small(i64 noundef %1, i64 noundef %i.e, i32 noundef 1) ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ad) #6 ; 3 uses
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i52, label %bb.t, label %Py_DECREF.exit53

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.u, align 8, !tbaa !13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.u, label %Py_DECREF.exit53

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #6
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.s, %bb.t, %bb.u
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i50, label %bb.v, label %_Py_NewRef.exit

bb.v:                                             ; preds = %Py_DECREF.exit53
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ad, align 8, !tbaa !13
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.w, label %_Py_NewRef.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #6
  br label %_Py_NewRef.exit

bb.x:                                             ; preds = %bb.r, %Py_DECREF.exit59, %Py_DECREF.exit61, %bb.f
  %.142 = phi ptr [ %i.f, %bb.f ], [ %i.f, %Py_DECREF.exit61 ], [ %i.f, %Py_DECREF.exit59 ], [ %i.u, %bb.r ] ; 3 uses
  %i.am = load i32, ptr %.142, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.y, label %_Py_NewRef.exit

bb.y:                                             ; preds = %bb.x
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %.142, align 8, !tbaa !13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %.142) #6
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit53, %bb.d, %bb.c, %bb.e, %Py_DECREF.exit55, %bb.b
  %.2 = phi ptr [ %i.a, %bb.b ], [ %i.u, %Py_DECREF.exit55 ], [ null, %bb.e ], [ %i.af, %bb.w ], [ %0, %bb.d ], [ %0, %bb.c ], [ %i.af, %Py_DECREF.exit53 ], [ %i.af, %bb.v ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ]
  ret ptr %.2
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLongLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_FloorDivide(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @_PyLong_Lshift(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @factorial_partial_product(i64 noundef range(i64 1, 0) %0, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = sub i64 %1, %0                           ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = icmp ult i64 %i.a, 130
  %i.d = mul nsw i64 %i.b, %2
  %i.e = icmp ult i64 %i.d, 65
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.02849 = add i64 %0, 2                         ; 2 uses
  %i.f = icmp ult i64 %.02849, %1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02851 = phi i64 [ %.028, %.lr.ph ], [ %.02849, %.preheader ] ; 2 uses
  %.050 = phi i64 [ %i.g, %.lr.ph ], [ %0, %.preheader ]
  %i.g = mul i64 %.050, %.02851                   ; 2 uses
  %.028 = add i64 %.02851, 2                      ; 2 uses
  %i.h = icmp ult i64 %.028, %1
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi i64 [ %0, %.preheader ], [ %i.g, %.lr.ph ]
  %i.i = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %.0.lcssa) #6
  br label %Py_XDECREF.exit38

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, %0
  %i.k = or i64 %i.j, 1                           ; 3 uses
  %i.l = add i64 %i.k, -2
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = sub nuw nsw i64 64, %i.m
  %i.o = tail call fastcc ptr @factorial_partial_product(i64 noundef %0, i64 noundef %i.k, i64 noundef %i.n) ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_XDECREF.exit38, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call fastcc ptr @factorial_partial_product(i64 noundef %i.k, i64 noundef %1, i64 noundef %2) ; 5 uses
  %i.r = icmp eq ptr %i.q, null                   ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.029.ph = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  br i1 %i.r, label %Py_XDECREF.exit38, label %bb.h

bb.h:                                             ; preds = %Py_XDECREF.exit
  %i.w = load i32, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.not.i.i37 = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i37, label %bb.i, label %Py_XDECREF.exit38

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.q, align 8, !tbaa !13
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %Py_XDECREF.exit38

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_XDECREF.exit38

Py_XDECREF.exit38:                                ; preds = %bb.b, %bb.j, %bb.i, %bb.h, %Py_XDECREF.exit, %._crit_edge
  %.031 = phi ptr [ %i.i, %._crit_edge ], [ %.029.ph, %bb.j ], [ %.029.ph, %Py_XDECREF.exit ], [ %.029.ph, %bb.h ], [ %.029.ph, %bb.i ], [ null, %bb.b ]
  ret ptr %.031
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

declare ptr @_PyLong_GCD(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Absolute(ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @_PyLong_NumBits(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

declare ptr @_PyLong_Rshift(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @math_integer_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str) #6 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyObject_SetAttrString(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #6
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = load ptr, ptr @math_integer_methods, align 16, !tbaa !39 ; 2 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %.critedge25, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i34 = icmp sgt i32 %i.f, -1
  br i1 %.not.i34, label %bb.d, label %Py_DECREF.exit35

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit27
  %i.i = phi ptr [ %i.aa, %Py_DECREF.exit27 ], [ %i.e, %.preheader ]
  %.043 = phi ptr [ %i.z, %Py_DECREF.exit27 ], [ @math_integer_methods, %.preheader ]
  %i.j = tail call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef nonnull %i.i) #6 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i32 = icmp sgt i32 %i.l, -1
  br i1 %.not.i32, label %bb.f, label %Py_DECREF.exit35

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !13
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a) #6
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i30 = icmp sgt i32 %i.q, -1
  br i1 %.not.i30, label %bb.i, label %Py_DECREF.exit31

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_DECREF.exit31

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.t = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i28 = icmp sgt i32 %i.t, -1
  br i1 %.not.i28, label %bb.k, label %Py_DECREF.exit35

bb.k:                                             ; preds = %Py_DECREF.exit31
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.j, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

bb.l:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i26 = icmp sgt i32 %i.w, -1
  br i1 %.not.i26, label %bb.m, label %Py_DECREF.exit27

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.j, align 8, !tbaa !13
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.n, label %Py_DECREF.exit27

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.z = getelementptr i8, ptr %.043, i64 32      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.critedge25, label %.lr.ph, !llvm.loop !36

.critedge25:                                      ; preds = %Py_DECREF.exit27, %.preheader
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit35

bb.o:                                             ; preds = %.critedge25
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

Py_DECREF.exit35.sink.split:                      ; preds = %bb.o, %bb.k, %bb.f, %bb.d
  %.sink = phi ptr [ %i.j, %bb.k ], [ %i.a, %bb.d ], [ %i.a, %bb.f ], [ %i.a, %bb.o ]
  %.3.ph = phi i32 [ -1, %bb.k ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.o ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #6
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %Py_DECREF.exit35.sink.split, %bb.o, %.critedge25, %bb.e, %bb.f, %Py_DECREF.exit31, %bb.k, %bb.d, %bb.c, %bb.a
  %.3 = phi i32 [ -1, %bb.f ], [ -1, %bb.a ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %.critedge25 ], [ -1, %bb.k ], [ -1, %Py_DECREF.exit31 ], [ 0, %bb.o ], [ %.3.ph, %Py_DECREF.exit35.sink.split ]
  ret i32 %.3
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTS7_object", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"p1 _ZTS11_typeobject", !10, i64 0}
!15 = !{!"_object", !7, i64 0, !14, i64 8}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_PyLongValue", !16, i64 0, !7, i64 8}
!18 = !{!"_longobject", !15, i64 0, !17, i64 16}
!19 = !{!18, !16, i64 16}
!20 = !{!16, !16, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!15, !14, i64 8}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !34}
!31 = distinct !{!31, !21}
!32 = !{!"long long", !7, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = !{!"p1 omnipotent char", !10, i64 0}
!38 = !{!"PyMethodDef", !37, i64 0, !10, i64 8, !8, i64 16, !37, i64 24}
!39 = !{!38, !37, i64 0}
end_hunk_0
