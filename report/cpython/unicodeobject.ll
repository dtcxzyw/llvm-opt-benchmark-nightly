inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_PyUnicode_JoinArray:bb.a
bb.ao:                                            ; preds = %.lr.ph227.split.peel.next
  %i.ds = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %i.dq, ptr noundef nonnull %i.do, i64 noundef 0, i64 noundef %.val155, i32 noundef 0) ; 0 uses
  %i.dt = add i64 %.val155, %i.dq
  br label %.critedge

.critedge:                                        ; preds = %bb.ao, %.lr.ph227.split.peel.next
  %.2124 = phi i64 [ %i.dt, %bb.ao ], [ %i.dq, %.lr.ph227.split.peel.next ]
  %i.du = add nuw nsw i64 %.2127225, 1            ; 2 uses
  %exitcond248.not = icmp eq i64 %i.du, %2
  br i1 %exitcond248.not, label %.loopexit, label %.lr.ph227.split.peel.next, !llvm.loop !547

.loopexit:                                        ; preds = %bb.an, %bb.aj, %.critedge, %.critedge.us, %.critedge.peel, %_PyUnicode_DATA.exit178.thread
  %i.dv = phi ptr [ %i.bx, %bb.aj ], [ %i.bj, %.critedge.peel ], [ %i.bj, %.critedge ], [ %i.bx, %_PyUnicode_DATA.exit178.thread ], [ %i.bj, %.critedge.us ], [ %i.bx, %bb.an ] ; 2 uses
  %.0107274 = phi ptr [ %.0107272284289, %bb.aj ], [ %.0107273, %.critedge.peel ], [ %.0107273, %.critedge ], [ %.0107272284289, %_PyUnicode_DATA.exit178.thread ], [ %.0107273, %.critedge.us ], [ %.0107272284289, %bb.an ] ; 2 uses
  %.not.i187 = icmp eq ptr %.0107274, null
  br i1 %.not.i187, label %_Py_NewRef.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.af, %_PyUnicode_DATA.exit178, %.loopexit
  %.0107274296 = phi ptr [ %.0107274, %.loopexit ], [ %.0107272284289, %_PyUnicode_DATA.exit178 ], [ %.0107272284289, %bb.af ] ; 3 uses
  %i.dw = phi ptr [ %i.dv, %.loopexit ], [ %i.bx, %_PyUnicode_DATA.exit178 ], [ %i.bx, %bb.af ] ; 3 uses
  %i.dx = load i32, ptr %.0107274296, align 8, !tbaa !205 ; 2 uses
  %.not.i.i188 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i.i188, label %bb.ap, label %_Py_NewRef.exit

bb.ap:                                            ; preds = %.loopexit.thread
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %.0107274296, align 8, !tbaa !205
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %_Py_NewRef.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107274296) #33
  br label %_Py_NewRef.exit

bb.ar:                                            ; preds = %._crit_edge.thread, %.loopexit243, %.loopexit244, %._crit_edge
  %.0107275 = phi ptr [ %.0107273, %.loopexit243 ], [ %.0107273, %.loopexit244 ], [ %.0107273, %._crit_edge ], [ %.0107, %._crit_edge.thread ] ; 4 uses
  %.not.i189 = icmp eq ptr %.0107275, null
  br i1 %.not.i189, label %_Py_NewRef.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i32, ptr %.0107275, align 8, !tbaa !205 ; 2 uses
  %.not.i.i190 = icmp sgt i32 %i.ea, -1
  br i1 %.not.i.i190, label %bb.at, label %_Py_NewRef.exit

bb.at:                                            ; preds = %bb.as
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %.0107275, align 8, !tbaa !205
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.au, label %_Py_NewRef.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107275) #33
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %.thread201, %bb.aq, %bb.ap, %.loopexit.thread, %.loopexit, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.dw, %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.dv, %.loopexit ], [ %i.dw, %.loopexit.thread ], [ %i.dw, %bb.ap ], [ null, %.thread201 ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.au ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyUnicode_FastFill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 5 uses
  %.0.i13 = ptrtoaddr ptr %.0.i to i64            ; 3 uses
  switch i32 %i.d, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.h = trunc i32 %3 to i8
  %i.i = getelementptr i8, ptr %.0.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 %i.h, i64 %2, i1 false)
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = trunc i32 %3 to i16                      ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %.0.i, i64 %1 ; 7 uses
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %2 ; 2 uses
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.e
  %i.n = shl i64 %2, 1
  %i.o = add i64 %i.n, %.0.i13
  %i.p = shl i64 %1, 1                            ; 3 uses
  %i.q = add i64 %i.o, %i.p
  %i.r = add i64 %i.p, %.0.i13
  %i.s = add i64 %i.r, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = xor i64 %.0.i13, -1
  %i.u = add i64 %umax, %i.t
  %i.v = sub i64 %i.u, %i.p                       ; 3 uses
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check15 = icmp ult i64 %i.v, 6
  br i1 %min.iters.check15, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph17

vector.ph17:                                      ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 12
  %n.vec18 = and i64 %i.x, -16                    ; 4 uses
  %i.z = shl i64 %n.vec18, 1
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %broadcast.splatinsert19 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat20 = shufflevector <8 x i16> %broadcast.splatinsert19, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body21 ] ; 2 uses
  %i.ab = shl i64 %index22, 1
  %next.gep23 = getelementptr i8, ptr %i.k, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep23, i64 16
  store <8 x i16> %broadcast.splat20, ptr %next.gep23, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat20, ptr %i.ac, align 2, !tbaa !208
  %index.next24 = add nuw i64 %index22, 16        ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ad, label %middle.block25, label %vector.body21, !llvm.loop !548

middle.block25:                                   ; preds = %vector.body21
  %cmp.n26 = icmp eq i64 %i.x, %n.vec18
  br i1 %cmp.n26, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block25
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec18, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.x, -4                     ; 3 uses
  %i.ae = shl i64 %n.vec28, 1
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ae
  %broadcast.splatinsert29 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat30 = shufflevector <4 x i16> %broadcast.splatinsert29, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = shl i64 %index31, 1
  %next.gep32 = getelementptr i8, ptr %i.k, i64 %i.ag
  store <4 x i16> %broadcast.splat30, ptr %next.gep32, align 2, !tbaa !208
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.x, %n.vec28
  br i1 %cmp.n34, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.ai, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.j, ptr %.029.i, align 2, !tbaa !208
  %i.ai = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.l
  br i1 %i.aj, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !550

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ak = getelementptr [4 x i8], ptr %.0.i, i64 %1 ; 5 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %2 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.an = ptrtoaddr ptr %.0.i to i64              ; 3 uses
  %i.ao = shl i64 %2, 2
  %i.ap = shl i64 %1, 2                           ; 2 uses
  %i.aq = add i64 %i.ao, %i.an
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = add i64 %i.ap, %i.an
  %i.at = add i64 %i.as, 4
  %i.au = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.at)
  %4 = xor i64 %i.an, -1
  %i.av = add i64 %i.au, %4
  %5 = shl i64 %1, 2
  %6 = sub i64 %i.av, %5                          ; 2 uses
  %i.aw = lshr i64 %6, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.ak, i64 %i.ay
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader36

.lr.ph.i.preheader36:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader36, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader36 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.al
  br i1 %i.be, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !552

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block25, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @PyUnicode_Fill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val21 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val21, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 10165) #33
  br label %_PyUnicode_FastFill.exit

bb.c:                                             ; preds = %bb.a
  %.val7.i.i = load i32, ptr %0, align 8, !tbaa !205
  %.not.i.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i.i, label %bb.d, label %unicode_check_modifiable.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val8.i.i = load i64, ptr %i.d, align 8, !tbaa !217
  %.not4.i.i = icmp eq i64 %.val8.i.i, -1
  br i1 %.not4.i.i, label %bb.e, label %unicode_check_modifiable.exit

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val.i.i = load i32, ptr %i.e, align 8         ; 5 uses
  %i.f = and i32 %.val.i.i, 3
  %.not5.i.i = icmp eq i32 %i.f, 0
  %.not10.i.not.i = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond = and i1 %.not10.i.not.i, %.not5.i.i
  br i1 %or.cond, label %bb.f, label %unicode_check_modifiable.exit

unicode_check_modifiable.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %i.g = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.116) #33
  br label %_PyUnicode_FastFill.exit

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i64 %1, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %_PyUnicode_FastFill.exit

bb.h:                                             ; preds = %bb.f
  %i.j = and i32 %.val.i.i, 64
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %bb.h
  %i.k = lshr exact i32 %.val.i.i, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.l, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.h, %bb.i
  %.0.i24 = phi i32 [ %switch.select6.i, %bb.i ], [ 127, %bb.h ]
  %i.m = icmp ugt i32 %3, %.0.i24
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.102) #33
  br label %_PyUnicode_FastFill.exit

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.o, align 8, !tbaa !207
  %i.p = sub i64 %.val22, %1
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %2) ; 14 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %_PyUnicode_FastFill.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = lshr exact i32 %.val.i.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = and i32 %.val.i.i, 32
  %.not.i.i25 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.v.i.i.i = select i1 %.not.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %.val4.i.i, %bb.n ] ; 5 uses
  %.0.i.i39 = ptrtoaddr ptr %.0.i.i to i64        ; 2 uses
  switch i32 %i.t, label %bb.r [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.w = trunc i32 %3 to i8
  %i.x = getelementptr i8, ptr %.0.i.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.w, i64 %i.q, i1 false)
  br label %_PyUnicode_FastFill.exit

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.y = trunc i32 %3 to i16                      ; 3 uses
  %i.z = getelementptr [2 x i8], ptr %.0.i.i, i64 %1 ; 7 uses
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.q ; 2 uses
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %iter.check, label %_PyUnicode_FastFill.exit

iter.check:                                       ; preds = %bb.p
  %i.ac = shl nuw i64 %1, 1                       ; 2 uses
  %i.ad = add i64 %i.ac, %.0.i.i39                ; 2 uses
  %i.ae = shl nuw i64 %i.q, 1
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = add i64 %i.ad, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %.0.i.i39, -1
  %i.ai = add i64 %umax, %i.ah
  %i.aj = sub i64 %i.ai, %i.ac                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check41 = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check41, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.al, 12
  %n.vec44 = and i64 %i.al, -16                   ; 4 uses
  %i.an = shl i64 %n.vec44, 1
  %i.ao = getelementptr i8, ptr %i.z, i64 %i.an
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph43
  %index48 = phi i64 [ 0, %vector.ph43 ], [ %index.next50, %vector.body47 ] ; 2 uses
  %i.ap = shl i64 %index48, 1
  %next.gep49 = getelementptr i8, ptr %i.z, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep49, i64 16
  store <8 x i16> %broadcast.splat46, ptr %next.gep49, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat46, ptr %i.aq, align 2, !tbaa !208
  %index.next50 = add nuw i64 %index48, 16        ; 2 uses
  %i.ar = icmp eq i64 %index.next50, %n.vec44
  br i1 %i.ar, label %middle.block51, label %vector.body47, !llvm.loop !553

middle.block51:                                   ; preds = %vector.body47
  %cmp.n52 = icmp eq i64 %i.al, %n.vec44
  br i1 %cmp.n52, label %_PyUnicode_FastFill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block51
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec44, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.al, -4                    ; 3 uses
  %i.as = shl i64 %n.vec54, 1
  %i.at = getelementptr i8, ptr %i.z, i64 %i.as
  %broadcast.splatinsert55 = insertelement <4 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat56 = shufflevector <4 x i16> %broadcast.splatinsert55, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index57, 1
  %next.gep58 = getelementptr i8, ptr %i.z, i64 %i.au
  store <4 x i16> %broadcast.splat56, ptr %next.gep58, align 2, !tbaa !208
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.al, %n.vec54
  br i1 %cmp.n60, label %_PyUnicode_FastFill.exit, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.aw, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 %i.y, ptr %.029.i.i, align 2, !tbaa !208
  %i.aw = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.aa
  br i1 %i.ax, label %.lr.ph30.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !555

bb.q:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ay = getelementptr [4 x i8], ptr %.0.i.i, i64 %1 ; 5 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.q ; 2 uses
  %i.ba = icmp ult ptr %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.i.preheader, label %_PyUnicode_FastFill.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.bb = ptrtoaddr ptr %.0.i.i to i64            ; 2 uses
  %i.bc = shl i64 %1, 2
  %i.bd = shl i64 %i.q, 2
  %i.be = add i64 %i.bc, %i.bb                    ; 2 uses
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = add i64 %i.be, 4
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bg)
  %4 = xor i64 %i.bb, -1
  %i.bi = add i64 %i.bh, %4
  %5 = shl i64 %1, 2
  %6 = sub i64 %i.bi, %5                          ; 2 uses
  %i.bj = lshr i64 %6, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2
  %i.bm = getelementptr i8, ptr %i.ay, i64 %i.bl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_PyUnicode_FastFill.exit, label %.lr.ph.i.i.preheader62

.lr.ph.i.i.preheader62:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.02628.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader62, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader62 ] ; 2 uses
  store i32 %3, ptr %.02628.i.i, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.az
  br i1 %i.br, label %.lr.ph.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !557

bb.r:                                             ; preds = %_PyUnicode_DATA.exit.i
  unreachable

_PyUnicode_FastFill.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block, %middle.block51, %vec.epilog.middle.block, %bb.q, %bb.p, %bb.o, %unicode_check_modifiable.exit, %bb.k, %bb.j, %bb.g, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %middle.block51 ], [ %i.q, %bb.q ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %.lr.ph30.i.i ], [ %i.q, %.lr.ph.i.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Splitlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %asciilib_splitlines.exit

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 7 uses
  %i.h = lshr i32 %i.g, 2
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.bu [
    i32 1, label %bb.b
    i32 2, label %bb.aq
    i32 4, label %bb.bf
  ]

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.j = and i32 %i.g, 64
  %.not = icmp eq i32 %i.j, 0
  %i.k = and i32 %i.g, 32
  %.not.i34 = icmp eq i32 %i.k, 0                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.l, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i27 = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.m, align 8, !tbaa !207 ; 6 uses
  %i.n = tail call ptr @PyList_New(i64 noundef 0) #33, !inline_history !558 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %asciilib_splitlines.exit, label %.preheader81.i

.preheader81.i:                                   ; preds = %_PyUnicode_DATA.exit
  %.not57.i = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit64.i, %.preheader81.i
  %.049.i = phi i64 [ %.3.i, %Py_DECREF.exit64.i ], [ 0, %.preheader81.i ] ; 5 uses
  %i.p = icmp slt i64 %.049.i, %.val24
  br i1 %i.p, label %.preheader.i, label %asciilib_splitlines.exit

.preheader.i:                                     ; preds = %bb.f, %.thread.i
  %.184.i = phi i64 [ %i.af, %.thread.i ], [ %.049.i, %bb.f ] ; 6 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !205   ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %.split.i, label %bb.g

.split.i:                                         ; preds = %.preheader.i
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr i8, ptr @ascii_linebreak, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread.i, label %.critedge.i

bb.g:                                             ; preds = %.preheader.i
  %.b237 = load i1, ptr @bloom_linebreak, align 8
  %i.y = select i1 %.b237, i64 3300413940768, i64 -1
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.y, %i.ab
  %.not.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i28, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %i.s) #33, !inline_history !558
  %.not79.i = icmp eq i32 %i.ad, 0
  br i1 %.not79.i, label %.thread.i, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %.pre162 = load i8, ptr %i.ae, align 1, !tbaa !205
  br label %.critedge.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %.split.i
  %i.af = add i64 %.184.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %.val24
  br i1 %exitcond.not.i, label %.critedge61.i, label %.preheader.i, !llvm.loop !559

.critedge.i:                                      ; preds = %.split.i, %..critedge.i_crit_edge
  %i.ag = phi i8 [ %.pre162, %..critedge.i_crit_edge ], [ %i.r, %.split.i ]
  %i.ah = icmp eq i8 %i.ag, 13
  %i.ai = add nsw i64 %.184.i, 1                  ; 4 uses
  %i.aj = icmp slt i64 %i.ai, %.val24
  %or.cond98.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond98.i, label %bb.i, label %.critedge._crit_edge.i

bb.i:                                             ; preds = %.critedge.i
  %i.ak = getelementptr i8, ptr %.0.i27, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !205
  %i.am = icmp eq i8 %i.al, 10
  %i.an = add nsw i64 %.184.i, 2
  %spec.select99.i = select i1 %i.am, i64 %i.an, i64 %i.ai
  br label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %bb.i, %.critedge.i
  %.2.i = phi i64 [ %spec.select99.i, %bb.i ], [ %i.ai, %.critedge.i ] ; 2 uses
  %spec.select.i = select i1 %.not57.i, i64 %.184.i, i64 %.2.i
  br label %.critedge61.i

.critedge61.i:                                    ; preds = %.thread.i, %.critedge._crit_edge.i
  %.3.i = phi i64 [ %.2.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ]
  %.0.i29 = phi i64 [ %spec.select.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ] ; 2 uses
  %i.ao = icmp eq i64 %.049.i, 0
  %i.ap = icmp eq i64 %.0.i29, %.val24
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.critedge61.i
  %.val.i32 = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not80.i = icmp eq ptr %.val.i32, @PyUnicode_Type
  br i1 %.not80.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call i32 @PyList_Append(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #33, !inline_history !558
  %.not60.i = icmp eq i32 %i.aq, 0
  br i1 %.not60.i, label %asciilib_splitlines.exit, label %_PyUnicode_FromASCII.exit.thread.i

bb.l:                                             ; preds = %bb.j, %.critedge61.i
  %i.ar = getelementptr i8, ptr %.0.i27, i64 %.049.i ; 2 uses
  %i.as = sub i64 %.0.i29, %.049.i                ; 3 uses
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %_PyUnicode_FromASCII.exit.i, label %bb.m

_PyUnicode_FromASCII.exit.i:                      ; preds = %bb.l
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !205 ; 3 uses
  %i.av = and i8 %i.au, 127
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aw
end_hunk_0
begin_hunk_1_@unicode_expandtabs:bb.a
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.val4.i.i, %bb.h ] ; 9 uses
  %i.v = icmp sgt i64 %.val.i, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.w = icmp sgt i32 %.0, 0                      ; 2 uses
  %i.x = zext i32 %.0 to i64                      ; 6 uses
  br i1 %i.w, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.q
  %.0102.us.i = phi i32 [ %.1.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 2 uses
  %.063101.us.i = phi i64 [ %i.aq, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.065100.us.i = phi i64 [ %.166.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.06799.us.i = phi i64 [ %.168.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 3 uses
  switch i32 %i.r, label %bb.k [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.y = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !208
  %i.aa = zext i16 %i.z to i32
  br label %PyUnicode_READ.exit.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 %.063101.us.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = zext i8 %i.ac to i32
  br label %PyUnicode_READ.exit.us.i

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.us.i

PyUnicode_READ.exit.us.i:                         ; preds = %bb.k, %bb.j, %bb.i
  %.0.i79.us.i = phi i32 [ %i.ad, %bb.j ], [ %i.aa, %bb.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ag = icmp eq i32 %.0.i79.us.i, 9
  br i1 %i.ag, label %bb.o, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ah = icmp eq i64 %.065100.us.i, 9223372036854775807
  br i1 %i.ah, label %.split.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add i64 %.06799.us.i, 1
  %i.aj = add nsw i64 %.065100.us.i, 1            ; 2 uses
  switch i32 %.0.i79.us.i, label %bb.q [
    i32 13, label %bb.n
    i32 10, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %bb.q

bb.o:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ak = srem i64 %.06799.us.i, %i.x
  %i.al = sub nsw i64 %i.x, %i.ak                 ; 3 uses
  %i.am = sub i64 9223372036854775807, %i.al
  %i.an = icmp sgt i64 %.065100.us.i, %i.am
  br i1 %i.an, label %.split.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %i.al, %.06799.us.i
  %i.ap = add i64 %i.al, %.065100.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %.168.us.i = phi i64 [ %i.ao, %bb.p ], [ %i.ai, %bb.m ], [ 0, %bb.n ]
  %.166.us.i = phi i64 [ %i.ap, %bb.p ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %.1.us.i = phi i32 [ 1, %bb.p ], [ %.0102.us.i, %bb.m ], [ %.0102.us.i, %bb.n ] ; 2 uses
  %i.aq = add nuw nsw i64 %.063101.us.i, 1        ; 2 uses
  %exitcond146.not.i = icmp eq i64 %i.aq, %.val.i
  br i1 %exitcond146.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !904

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  switch i32 %i.r, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us109.i
    i32 2, label %PyUnicode_READ.exit.us123.i
  ]

PyUnicode_READ.exit.us109.i:                      ; preds = %.lr.ph.split.i, %bb.t
  %.0102.us105.i = phi i32 [ %.1.us113.i, %bb.t ], [ 0, %.lr.ph.split.i ]
  %.063101.us106.i = phi i64 [ %i.aw, %bb.t ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us107.i = phi i64 [ %.166.us112.i, %bb.t ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 %.063101.us106.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %i.at = icmp eq i8 %i.as, 9
  br i1 %i.at, label %bb.t, label %bb.r

bb.r:                                             ; preds = %PyUnicode_READ.exit.us109.i
  %i.au = icmp eq i64 %.065100.us107.i, 9223372036854775807
  br i1 %i.au, label %.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i64 %.065100.us107.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %PyUnicode_READ.exit.us109.i
  %.166.us112.i = phi i64 [ %i.av, %bb.s ], [ %.065100.us107.i, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %.1.us113.i = phi i32 [ %.0102.us105.i, %bb.s ], [ 1, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %i.aw = add nuw nsw i64 %.063101.us106.i, 1     ; 2 uses
  %exitcond144.not.i = icmp eq i64 %i.aw, %.val.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us109.i, !llvm.loop !904

PyUnicode_READ.exit.us123.i:                      ; preds = %.lr.ph.split.i, %bb.w
  %.0102.us119.i = phi i32 [ %.1.us127.i, %bb.w ], [ 0, %.lr.ph.split.i ]
  %.063101.us120.i = phi i64 [ %i.bc, %bb.w ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us121.i = phi i64 [ %.166.us126.i, %bb.w ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ax = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us120.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !208
  %i.az = icmp eq i16 %i.ay, 9
  br i1 %i.az, label %bb.w, label %bb.u

bb.u:                                             ; preds = %PyUnicode_READ.exit.us123.i
  %i.ba = icmp eq i64 %.065100.us121.i, 9223372036854775807
  br i1 %i.ba, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = add nsw i64 %.065100.us121.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %PyUnicode_READ.exit.us123.i
  %.166.us126.i = phi i64 [ %i.bb, %bb.v ], [ %.065100.us121.i, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %.1.us127.i = phi i32 [ %.0102.us119.i, %bb.v ], [ 1, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %i.bc = add nuw nsw i64 %.063101.us120.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us123.i, !llvm.loop !904

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.split.i, %bb.z
  %.0102.i = phi i32 [ %.1.i, %bb.z ], [ 0, %.lr.ph.split.i ]
  %.063101.i = phi i64 [ %i.bi, %bb.z ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.i = phi i64 [ %.166.i, %bb.z ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = icmp eq i32 %i.be, 9
  br i1 %i.bf, label %bb.z, label %bb.x

bb.x:                                             ; preds = %PyUnicode_READ.exit.i
  %i.bg = icmp eq i64 %.065100.i, 9223372036854775807
  br i1 %i.bg, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = add nsw i64 %.065100.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %PyUnicode_READ.exit.i
  %.166.i = phi i64 [ %i.bh, %bb.y ], [ %.065100.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.0102.i, %bb.y ], [ 1, %PyUnicode_READ.exit.i ] ; 2 uses
  %i.bi = add nuw nsw i64 %.063101.i, 1           ; 2 uses
  %exitcond145.not.i = icmp eq i64 %i.bi, %.val.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.i, !llvm.loop !904

._crit_edge.i:                                    ; preds = %bb.w, %bb.t, %bb.z, %bb.q
  %.065.lcssa.i = phi i64 [ %.166.us.i, %bb.q ], [ %.166.us112.i, %bb.t ], [ %.166.i, %bb.z ], [ %.166.us126.i, %bb.w ]
  %.0.lcssa.i = phi i32 [ %.1.us.i, %bb.q ], [ %.1.us113.i, %bb.t ], [ %.1.i, %bb.z ], [ %.1.us127.i, %bb.w ]
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_PyUnicode_DATA.exit.i
  %i.bj = call fastcc ptr @unicode_result_unchanged(ptr noundef %0), !inline_history !905
  br label %unicode_expandtabs_impl.exit

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %._crit_edge.i
  %i.bk = and i32 %i.p, 64
  %.not.i80.i = icmp eq i32 %i.bk, 0
  %switch.selectcmp.i.i = icmp eq i32 %i.r, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.r, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  %.0.i81.i = select i1 %.not.i80.i, i32 %switch.select6.i.i, i32 127
  %i.bl = call ptr @PyUnicode_New(i64 noundef %.065.lcssa.i, i32 noundef %.0.i81.i), !inline_history !905 ; 16 uses
  %.not77.i = icmp eq ptr %i.bl, null
  br i1 %.not77.i, label %unicode_expandtabs_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 32     ; 2 uses
  %.val.i82.i = load i32, ptr %i.bm, align 8      ; 2 uses
  %i.bn = and i32 %.val.i82.i, 32
  %.not.i83.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i83.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = and i32 %.val.i82.i, 64
  %.not.i.i84.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i85.i = select i1 %.not.i.i84.i, i64 56, i64 40
  %.0.i.i86.i = getelementptr i8, ptr %i.bl, i64 %.0.v.i.i85.i
  br label %_PyUnicode_DATA.exit89.i

bb.ac:                                            ; preds = %bb.aa
  %i.bp = getelementptr i8, ptr %i.bl, i64 56
  %.val4.i88.i = load ptr, ptr %i.bp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit89.i

_PyUnicode_DATA.exit89.i:                         ; preds = %bb.ac, %bb.ab
  %.0.i87.i = phi ptr [ %.0.i.i86.i, %bb.ab ], [ %.val4.i88.i, %bb.ac ] ; 7 uses
  %.0.i87.i79 = ptrtoaddr ptr %.0.i87.i to i64    ; 5 uses
  %i.bq = xor i64 %.0.i87.i79, -1
  %i.br = shl nuw nsw i64 %i.x, 1
  %i.bs = add i64 %i.br, %.0.i87.i79
  %i.bt = add i64 %.0.i87.i79, 2
  %i.bu = shl nuw nsw i64 %i.x, 2
  %4 = xor i64 %.0.i87.i79, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.as, %_PyUnicode_DATA.exit89.i
  %.164134.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %i.ed, %bb.as ] ; 4 uses
  %.2133.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.3.i, %bb.as ] ; 12 uses
  %.269132.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.370.i, %bb.as ] ; 4 uses
  switch i32 %i.r, label %bb.ag [
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr i8, ptr %.0.i.i, i64 %.164134.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !205
  %i.bx = zext i8 %i.bw to i32
  br label %PyUnicode_READ.exit91.i

bb.af:                                            ; preds = %bb.ad
  %i.by = getelementptr [2 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !208
  %i.ca = zext i16 %i.bz to i32
  br label %PyUnicode_READ.exit91.i

bb.ag:                                            ; preds = %bb.ad
  %i.cb = getelementptr [4 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  br label %PyUnicode_READ.exit91.i

PyUnicode_READ.exit91.i:                          ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i90.i = phi i32 [ %i.bx, %bb.ae ], [ %i.ca, %bb.af ], [ %i.cc, %bb.ag ] ; 5 uses
  %i.cd = icmp eq i32 %.0.i90.i, 9
  br i1 %i.cd, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %PyUnicode_READ.exit91.i
  br i1 %i.w, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ce = srem i64 %.269132.i, %i.x               ; 3 uses
  %i.cf = sub nsw i64 %i.x, %i.ce                 ; 5 uses
  %i.cg = add i64 %i.cf, %.269132.i
  switch i32 %i.r, label %bb.am [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 32, i64 %i.cf, i1 false)
  br label %_PyUnicode_Fill.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.ci = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i ; 7 uses
  %i.cj = getelementptr [2 x i8], ptr %i.ci, i64 %i.cf ; 2 uses
  %i.ck = icmp ult ptr %i.ci, %i.cj
  br i1 %i.ck, label %iter.check, label %_PyUnicode_Fill.exit.i

iter.check:                                       ; preds = %bb.ak
  %i.cl = shl i64 %.2133.i, 1                     ; 3 uses
  %i.cm = add i64 %i.bs, %i.cl
  %i.cn = shl i64 %i.ce, 1
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = add i64 %i.bt, %i.cl
  %umax = call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cp)
  %i.cq = add i64 %umax, %i.bq
  %i.cr = sub i64 %i.cq, %i.cl                    ; 3 uses
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = add nuw i64 %i.cs, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cr, 6
  br i1 %min.iters.check, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i64 %i.cr, 30
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.ct, 12
  %n.vec = and i64 %i.ct, -16                     ; 4 uses
  %i.cv = shl i64 %n.vec, 1
  %i.cw = getelementptr i8, ptr %i.ci, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !208
  store <8 x i16> splat (i16 32), ptr %i.cy, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.ct, -4                    ; 3 uses
  %i.da = shl i64 %n.vec81, 1
  %i.db = getelementptr i8, ptr %i.ci, i64 %i.da
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
  %i.dc = shl i64 %index82, 1
  %next.gep83 = getelementptr i8, ptr %i.ci, i64 %i.dc
  store <4 x i16> splat (i16 32), ptr %next.gep83, align 2, !tbaa !208
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n85 = icmp eq i64 %i.ct, %n.vec81
  br i1 %cmp.n85, label %_PyUnicode_Fill.exit.i, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.ci, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.de, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i.i, align 2, !tbaa !208
  %i.de = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.df = icmp ult ptr %i.de, %i.cj
  br i1 %i.df, label %.lr.ph30.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !908

bb.al:                                            ; preds = %bb.ai
  %i.dg = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i ; 5 uses
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.cf ; 2 uses
  %i.di = icmp ult ptr %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.preheader, label %_PyUnicode_Fill.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.al
  %i.dj = shl i64 %.2133.i, 2
  %5 = add i64 %i.dj, %.0.i87.i79                 ; 2 uses
  %6 = add i64 %5, %i.bu
  %7 = shl i64 %i.ce, 2
  %8 = sub i64 %6, %7
  %.reass = add i64 %5, 4
  %i.dk = call i64 @llvm.umax.i64(i64 %8, i64 %.reass)
  %i.dl = add i64 %i.dk, %4
  %9 = shl i64 %.2133.i, 2
  %10 = sub i64 %i.dl, %9                         ; 2 uses
  %i.dm = lshr i64 %10, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %10, 28
  br i1 %min.iters.check87, label %.lr.ph.i.i.preheader96, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec89 = and i64 %i.dn, 9223372036854775800   ; 3 uses
  %i.do = shl i64 %n.vec89, 2
  %i.dp = getelementptr i8, ptr %i.dg, i64 %i.do
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next93, %vector.body90 ] ; 2 uses
  %i.dq = shl i64 %index91, 2
  %next.gep92 = getelementptr i8, ptr %i.dg, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep92, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.dr, align 4, !tbaa !7
  %index.next93 = add nuw i64 %index91, 8         ; 2 uses
  %i.ds = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.ds, label %middle.block94, label %vector.body90, !llvm.loop !909

middle.block94:                                   ; preds = %vector.body90
  %cmp.n95 = icmp eq i64 %i.dn, %n.vec89
  br i1 %cmp.n95, label %_PyUnicode_Fill.exit.i, label %.lr.ph.i.i.preheader96

.lr.ph.i.i.preheader96:                           ; preds = %.lr.ph.i.i.preheader, %middle.block94
  %.02628.i.i.ph = phi ptr [ %i.dg, %.lr.ph.i.i.preheader ], [ %i.dp, %middle.block94 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader96, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader96 ] ; 2 uses
  store i32 32, ptr %.02628.i.i, align 4, !tbaa !7
  %i.dt = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.du = icmp ult ptr %i.dt, %i.dh
  br i1 %i.du, label %.lr.ph.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !910

bb.am:                                            ; preds = %bb.ai
  unreachable

_PyUnicode_Fill.exit.i:                           ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block94, %middle.block, %vec.epilog.middle.block, %bb.al, %bb.ak, %bb.aj
  %i.dv = add i64 %i.cf, %.2133.i
  br label %bb.as

bb.an:                                            ; preds = %PyUnicode_READ.exit91.i
  %i.dw = add i64 %.269132.i, 1
  switch i32 %i.r, label %bb.aq [
    i32 1, label %bb.ao
    i32 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dx = trunc i32 %.0.i90.i to i8
  %i.dy = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.dz = trunc i32 %.0.i90.i to i16
  %i.ea = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.eb = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i
  store i32 %.0.i90.i, ptr %i.eb, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.ec = add i64 %.2133.i, 1                     ; 2 uses
  switch i32 %.0.i90.i, label %bb.as [
    i32 13, label %bb.ar
    i32 10, label %bb.ar
  ]

bb.ar:                                            ; preds = %PyUnicode_WRITE.exit.i, %PyUnicode_WRITE.exit.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %PyUnicode_WRITE.exit.i, %_PyUnicode_Fill.exit.i, %bb.ah
  %.370.i = phi i64 [ %i.cg, %_PyUnicode_Fill.exit.i ], [ %.269132.i, %bb.ah ], [ 0, %bb.ar ], [ %i.dw, %PyUnicode_WRITE.exit.i ]
  %.3.i = phi i64 [ %i.dv, %_PyUnicode_Fill.exit.i ], [ %.2133.i, %bb.ah ], [ %i.ec, %bb.ar ], [ %i.ec, %PyUnicode_WRITE.exit.i ]
  %i.ed = add nuw nsw i64 %.164134.i, 1           ; 2 uses
  %exitcond147.not.i = icmp eq i64 %i.ed, %.val.i
  br i1 %exitcond147.not.i, label %._crit_edge136.i, label %bb.ad, !llvm.loop !911

._crit_edge136.i:                                 ; preds = %bb.as
  %i.ee = getelementptr i8, ptr %i.bl, i64 16
  %.val.i92.i = load i64, ptr %i.ee, align 8, !tbaa !207
  switch i64 %.val.i92.i, label %unicode_expandtabs_impl.exit [
    i64 0, label %bb.at
    i64 1, label %bb.aw
  ]

bb.at:                                            ; preds = %._crit_edge136.i
  %.not26.i.i = icmp eq ptr %i.bl, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i.i, label %unicode_expandtabs_impl.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = load i32, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i.i = icmp sgt i32 %i.ef, -1
  br i1 %.not.i27.i.i, label %bb.av, label %unicode_expandtabs_impl.exit

bb.av:                                            ; preds = %bb.au
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.bl, align 8, !tbaa !205
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %Py_DECREF.exit28.sink.split.i.i, label %unicode_expandtabs_impl.exit

bb.aw:                                            ; preds = %._crit_edge136.i
  %i.ei = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.ej = and i32 %i.ei, 28
  %.not25.i.i = icmp eq i32 %i.ej, 4
  br i1 %.not25.i.i, label %bb.ax, label %unicode_expandtabs_impl.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ek = and i32 %i.ei, 32
  %.not.i30.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i30.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.el = and i32 %i.ei, 64
  %.not.i.i.i.i = icmp eq i32 %i.el, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.em = getelementptr i8, ptr %i.bl, i64 56
  %.val4.i.i.i = load ptr, ptr %i.em, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.az, %bb.ay
  %.0.i.i93.i = phi ptr [ %.0.i.i.i.i, %bb.ay ], [ %.val4.i.i.i, %bb.az ]
  %i.en = load i8, ptr %.0.i.i93.i, align 1, !tbaa !205 ; 3 uses
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.eo
  %i.eq = and i8 %i.en, 127
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.er
  %i.et = icmp slt i8 %i.en, 0
  %i.eu = select i1 %i.et, ptr %i.es, ptr %i.ep   ; 5 uses
  %.not.i94.i = icmp eq ptr %i.bl, %i.eu
  br i1 %.not.i94.i, label %unicode_expandtabs_impl.exit, label %bb.ba

bb.ba:                                            ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ev = load i32, ptr %i.bl, align 8, !tbaa !205 ; 2 uses
  %.not.i.i95.i = icmp sgt i32 %i.ev, -1
  br i1 %.not.i.i95.i, label %bb.bb, label %unicode_expandtabs_impl.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.bl, align 8, !tbaa !205
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %Py_DECREF.exit28.sink.split.i.i, label %unicode_expandtabs_impl.exit

Py_DECREF.exit28.sink.split.i.i:                  ; preds = %bb.bb, %bb.av
  %.1.ph.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.av ], [ %i.eu, %bb.bb ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #33, !inline_history !905
  br label %unicode_expandtabs_impl.exit

.split.us.i:                                      ; preds = %bb.u, %bb.r, %bb.x, %bb.o, %bb.l
  %i.ey = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ey, ptr noundef nonnull @.str.266) #33, !inline_history !905
  br label %unicode_expandtabs_impl.exit

unicode_expandtabs_impl.exit:                     ; preds = %.split.us.i, %Py_DECREF.exit28.sink.split.i.i, %bb.bb, %bb.ba, %_PyUnicode_DATA.exit.i.i, %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge136.i, %PyUnicode_MAX_CHAR_VALUE.exit.i, %._crit_edge.thread.i, %bb.e, %bb.c
  %.022 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %.split.us.i ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit.i ], [ %i.bj, %._crit_edge.thread.i ], [ %i.bl, %._crit_edge136.i ], [ %i.eu, %bb.ba ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.av ], [ %i.bl, %bb.aw ], [ %i.eu, %_PyUnicode_DATA.exit.i.i ], [ %i.eu, %bb.bb ], [ %.1.ph.i.i, %Py_DECREF.exit28.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_find(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !193
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.212, i64 noundef %2, i64 noundef 1, i64 noundef 3) #33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val20, 268435456
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@pad:bb.a
vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index85, 1
  %next.gep86 = getelementptr i8, ptr %.0.i45, i64 %i.as
  store <4 x i16> %broadcast.splat84, ptr %next.gep86, align 2, !tbaa !208
  %index.next87 = add nuw i64 %index85, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.aj, %n.vec82
  br i1 %cmp.n88, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %.0.i45, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.au, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.aa, ptr %.029.i, align 2, !tbaa !208
  %i.au = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.ab
  br i1 %i.av, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !970

bb.n:                                             ; preds = %bb.k
  %i.aw = getelementptr [4 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.ax = icmp ult ptr %.0.i45, %i.aw
  br i1 %i.ax, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ay = ptrtoaddr ptr %.0.i45 to i64            ; 3 uses
  %i.az = shl i64 %spec.store.select, 2
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = add i64 %i.ay, 4
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bb)
  %i.bd = xor i64 %i.ay, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %.0.i45, i64 %i.bh
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i45, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bk, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader137

.lr.ph.i.preheader137:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %.0.i45, %.lr.ph.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader137, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader137 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bm = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.aw
  br i1 %i.bn, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !972

bb.o:                                             ; preds = %bb.k
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block79, %vec.epilog.middle.block, %bb.n, %bb.m, %bb.l, %_PyUnicode_DATA.exit
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !207 ; 9 uses
  br i1 %i.b, label %_PyUnicode_Fill.exit50, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_Fill.exit
  %i.bo = add i64 %.pre55, %spec.store.select     ; 6 uses
  switch i32 %i.v, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bp = trunc i32 %3 to i8
  %i.bq = getelementptr i8, ptr %.0.i45, i64 %i.bo
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 %i.bp, i64 %spec.store.select2, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !207
  br label %_PyUnicode_Fill.exit50

bb.r:                                             ; preds = %bb.p
  %i.br = trunc i32 %3 to i16                     ; 3 uses
  %i.bs = getelementptr [2 x i8], ptr %.0.i45, i64 %i.bo ; 7 uses
  %i.bt = getelementptr [2 x i8], ptr %i.bs, i64 %spec.store.select2 ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.bt
  br i1 %i.bu, label %iter.check120, label %_PyUnicode_Fill.exit50

iter.check120:                                    ; preds = %bb.r
  %i.bv = shl nuw i64 %spec.store.select2, 1
  %i.bw = add i64 %i.bv, %.0.i4567
  %i.bx = shl i64 %i.bo, 1                        ; 3 uses
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = add i64 %i.bx, %.0.i4567
  %i.ca = add i64 %i.bz, 2
  %umax103 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.ca)
  %i.cb = xor i64 %.0.i4567, -1
  %i.cc = add i64 %umax103, %i.cb
  %i.cd = sub i64 %i.cc, %i.bx                    ; 3 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add nuw i64 %i.ce, 1                    ; 5 uses
  %min.iters.check105 = icmp ult i64 %i.cd, 6
  br i1 %min.iters.check105, label %.lr.ph30.i48.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check120
  %min.iters.check107 = icmp ult i64 %i.cd, 30
  br i1 %min.iters.check107, label %vec.epilog.ph124, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.cg = and i64 %i.cf, 12
  %n.vec109 = and i64 %i.cf, -16                  ; 4 uses
  %i.ch = shl i64 %n.vec109, 1
  %i.ci = getelementptr i8, ptr %i.bs, i64 %i.ch
  %broadcast.splatinsert110 = insertelement <8 x i16> poison, i16 %i.br, i64 0
  %broadcast.splat111 = shufflevector <8 x i16> %broadcast.splatinsert110, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %i.cj = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %i.bs, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep114, i64 16
  store <8 x i16> %broadcast.splat111, ptr %next.gep114, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat111, ptr %i.ck, align 2, !tbaa !208
  %index.next115 = add nuw i64 %index113, 16      ; 2 uses
  %i.cl = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.cl, label %middle.block116, label %vector.body112, !llvm.loop !973

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.cf, %n.vec109
  br i1 %cmp.n117, label %_PyUnicode_Fill.exit50, label %vec.epilog.iter.check122

vec.epilog.iter.check122:                         ; preds = %middle.block116
  %min.epilog.iters.check123 = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check123, label %.lr.ph30.i48.preheader, label %vec.epilog.ph124, !prof !228

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check122
  %vec.epilog.resume.val118 = phi i64 [ %n.vec109, %vec.epilog.iter.check122 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec125 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = shl i64 %n.vec125, 1
  %i.cn = getelementptr i8, ptr %i.bs, i64 %i.cm
  %broadcast.splatinsert126 = insertelement <4 x i16> poison, i16 %i.br, i64 0
  %broadcast.splat127 = shufflevector <4 x i16> %broadcast.splatinsert126, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph124
  %index129 = phi i64 [ %vec.epilog.resume.val118, %vec.epilog.ph124 ], [ %index.next131, %vec.epilog.vector.body128 ] ; 2 uses
  %i.co = shl i64 %index129, 1
  %next.gep130 = getelementptr i8, ptr %i.bs, i64 %i.co
  store <4 x i16> %broadcast.splat127, ptr %next.gep130, align 2, !tbaa !208
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next131, %n.vec125
  br i1 %i.cp, label %vec.epilog.middle.block132, label %vec.epilog.vector.body128, !llvm.loop !974

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body128
  %cmp.n133 = icmp eq i64 %i.cf, %n.vec125
  br i1 %cmp.n133, label %_PyUnicode_Fill.exit50, label %.lr.ph30.i48.preheader

.lr.ph30.i48.preheader:                           ; preds = %iter.check120, %vec.epilog.iter.check122, %vec.epilog.middle.block132
  %.029.i49.ph = phi ptr [ %i.bs, %iter.check120 ], [ %i.ci, %vec.epilog.iter.check122 ], [ %i.cn, %vec.epilog.middle.block132 ]
  br label %.lr.ph30.i48

.lr.ph30.i48:                                     ; preds = %.lr.ph30.i48.preheader, %.lr.ph30.i48
  %.029.i49 = phi ptr [ %i.cq, %.lr.ph30.i48 ], [ %.029.i49.ph, %.lr.ph30.i48.preheader ] ; 2 uses
  store i16 %i.br, ptr %.029.i49, align 2, !tbaa !208
  %i.cq = getelementptr i8, ptr %.029.i49, i64 2  ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.bt
  br i1 %i.cr, label %.lr.ph30.i48, label %_PyUnicode_Fill.exit50, !llvm.loop !975

bb.s:                                             ; preds = %bb.p
  %i.cs = getelementptr [4 x i8], ptr %.0.i45, i64 %i.bo ; 5 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %spec.store.select2 ; 2 uses
  %i.cu = icmp ult ptr %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph.i46.preheader, label %_PyUnicode_Fill.exit50

.lr.ph.i46.preheader:                             ; preds = %bb.s
  %i.cv = shl i64 %spec.store.select2, 2
  %i.cw = shl i64 %i.bo, 2                        ; 2 uses
  %i.cx = add i64 %i.cv, %.0.i4567
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = add i64 %i.cw, %.0.i4567
  %i.da = add i64 %i.cz, 4
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.da)
  %4 = xor i64 %.0.i4567, -1
  %i.dc = add i64 %i.db, %4
  %5 = shl i64 %i.bo, 2
  %6 = sub i64 %i.dc, %5                          ; 2 uses
  %i.dd = lshr i64 %6, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check91 = icmp ult i64 %6, 28
  br i1 %min.iters.check91, label %.lr.ph.i46.preheader135, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.i46.preheader
  %n.vec93 = and i64 %i.de, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec93, 2
  %i.dg = getelementptr i8, ptr %i.cs, i64 %i.df
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph92
  %index97 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body96 ] ; 2 uses
  %i.dh = shl i64 %index97, 2
  %next.gep98 = getelementptr i8, ptr %i.cs, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep98, i64 16
  store <4 x i32> %broadcast.splat95, ptr %next.gep98, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat95, ptr %i.di, align 4, !tbaa !7
  %index.next99 = add nuw i64 %index97, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next99, %n.vec93
  br i1 %i.dj, label %middle.block100, label %vector.body96, !llvm.loop !976

middle.block100:                                  ; preds = %vector.body96
  %cmp.n101 = icmp eq i64 %i.de, %n.vec93
  br i1 %cmp.n101, label %_PyUnicode_Fill.exit50, label %.lr.ph.i46.preheader135

.lr.ph.i46.preheader135:                          ; preds = %.lr.ph.i46.preheader, %middle.block100
  %.02628.i47.ph = phi ptr [ %i.cs, %.lr.ph.i46.preheader ], [ %i.dg, %middle.block100 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader135, %.lr.ph.i46
  %.02628.i47 = phi ptr [ %i.dk, %.lr.ph.i46 ], [ %.02628.i47.ph, %.lr.ph.i46.preheader135 ] ; 2 uses
  store i32 %3, ptr %.02628.i47, align 4, !tbaa !7
  %i.dk = getelementptr i8, ptr %.02628.i47, i64 4 ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.ct
  br i1 %i.dl, label %.lr.ph.i46, label %_PyUnicode_Fill.exit50, !llvm.loop !977

bb.t:                                             ; preds = %bb.p
  unreachable

_PyUnicode_Fill.exit50:                           ; preds = %.lr.ph.i46, %.lr.ph30.i48, %middle.block100, %middle.block116, %vec.epilog.middle.block132, %bb.s, %bb.r, %bb.q, %_PyUnicode_Fill.exit
  %i.dm = phi i64 [ %.pre55, %middle.block116 ], [ %.pre55, %_PyUnicode_Fill.exit ], [ %.pre55, %bb.s ], [ %.pre55, %bb.r ], [ %.pre, %bb.q ], [ %.pre55, %middle.block100 ], [ %.pre55, %vec.epilog.middle.block132 ], [ %.pre55, %.lr.ph30.i48 ], [ %.pre55, %.lr.ph.i46 ]
  %i.dn = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.r, i64 noundef %spec.store.select, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.dm, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %_PyUnicode_Fill.exit50, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.e ], [ %i.r, %_PyUnicode_Fill.exit50 ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit ]
  ret ptr %.0
}

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35.split.i, label %do_upper_or_lower.exit

.lr.ph35.split.i:                                 ; preds = %bb.a, %._crit_edge.i
  %.02533.i = phi i64 [ %i.ad, %._crit_edge.i ], [ 0, %bb.a ] ; 5 uses
  %.02632.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph35.split.i
  %i.c = getelementptr i8, ptr %1, i64 %.02533.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit.i

bb.c:                                             ; preds = %.lr.ph35.split.i
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02533.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit.i

bb.d:                                             ; preds = %.lr.ph35.split.i
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02533.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull readonly %1, i64 noundef %2, i64 noundef %.02533.i, i32 noundef %.0.i.i, ptr noundef %i.a) ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %PyUnicode_READ.exit.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.130.i = phi i64 [ %.02632.i, %.lr.ph.preheader.i.new ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.n = load i32, ptr %4, align 4, !tbaa !7
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %..i = call i32 @llvm.umax.i32(i32 %i.n, i32 %i.p)
  store i32 %..i, ptr %4, align 4, !tbaa !7
  %i.q = getelementptr [4 x i8], ptr %3, i64 %.130.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  %i.r = load i32, ptr %4, align 4, !tbaa !7
  %i.s = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %..i.1 = call i32 @llvm.umax.i32(i32 %i.r, i32 %i.u)
  store i32 %..i.1, ptr %4, align 4, !tbaa !7
  %i.v = add i64 %.130.i, 2                       ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %3, i64 %.130.i
  %i.x = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.u, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !978

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.130.i.epil.init = phi i64 [ %.02632.i, %.lr.ph.preheader.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i32 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod7)
  %i.y = load i32, ptr %4, align 4, !tbaa !7
  %i.z = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  %..i.epil = call i32 @llvm.umax.i32(i32 %i.y, i32 %i.aa)
  store i32 %..i.epil, ptr %4, align 4, !tbaa !7
  %i.ab = add i64 %.130.i.epil.init, 1
  %i.ac = getelementptr [4 x i8], ptr %3, i64 %.130.i.epil.init
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %PyUnicode_READ.exit.i
  %.1.lcssa.i = phi i64 [ %.02632.i, %PyUnicode_READ.exit.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ad = add nuw nsw i64 %.02533.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond60.not.i, label %do_upper_or_lower.exit, label %.lr.ph35.split.i, !llvm.loop !979

do_upper_or_lower.exit:                           ; preds = %._crit_edge.i, %bb.a
  %.026.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i64 %.026.lcssa.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @do_upper_or_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 24 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph35.split.us, label %.lr.ph35.split

.lr.ph35.split.us:                                ; preds = %.lr.ph35
  switch i32 %0, label %PyUnicode_READ.exit.us [
    i32 1, label %PyUnicode_READ.exit.us.us
    i32 2, label %PyUnicode_READ.exit.us.us42
  ]

PyUnicode_READ.exit.us.us:                        ; preds = %.lr.ph35.split.us, %._crit_edge.us.us
  %.02533.us.us = phi i64 [ %i.y, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 2 uses
  %.02632.us.us = phi i64 [ %.1.lcssa.us.us, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 %.02533.us.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.f = call i32 @_PyUnicode_ToUpperFull(i32 noundef %i.e, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %._crit_edge.us.us

.lr.ph.us.us.preheader:                           ; preds = %PyUnicode_READ.exit.us.us
  %wide.trip.count70 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter113 = and i64 %wide.trip.count70, 1
  %i.h = icmp eq i32 %i.f, 1
  br i1 %i.h, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us.preheader.new

.lr.ph.us.us.preheader.new:                       ; preds = %.lr.ph.us.us.preheader
  %unroll_iter117 = and i64 %wide.trip.count70, 2147483646
end_hunk_2
