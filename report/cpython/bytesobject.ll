inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@PyBytes_AsStringAndSize:bb.a
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.34, ptr noundef %i.g) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !45
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.j, align 8, !tbaa !20
  store i64 %.val17, ptr %2, align 8, !tbaa !43
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #20
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val16 = load i64, ptr %i.l, align 8, !tbaa !20
  %.not13 = icmp eq i64 %i.k, %.val16
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.35) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_PyBytes_Find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %3, %1
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i64 %1, -1
  %i.d = tail call fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %i.c, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef -1, i32 noundef 1) ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = select i1 %i.e, i64 0, i64 %4
  %.0.i = add i64 %i.f, %i.d                      ; 2 uses
  %i.g = icmp eq i64 %.0.i, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 %1, %3                           ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %2, i64 %3)
  %.not = icmp eq i32 %bcmp, 0
  %i.j = add i64 %4, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.2 = phi i64 [ -1, %bb.b ], [ %4, %bb.a ], [ %.0.i, %bb.e ], [ %i.j, %bb.d ]
  ret i64 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i64 @_PyBytes_ReverseFind(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %4, %1
  br label %stringlib_rfind.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %1, %3
  br i1 %i.c, label %stringlib_rfind.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %3, 2
  br i1 %i.d, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.not66.i.i = icmp eq i64 %3, 1
  br i1 %.not66.i.i, label %bb.f, label %stringlib_rfind.exit

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %2, align 1, !tbaa !14      ; 2 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = sext i8 %i.e to i32
  %i.h = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #20 ; 2 uses
  %.not.i68.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i68.i.i, label %stringlib_rfind.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %fastsearch.exit.i

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.m = icmp ugt ptr %i.l, %0
  br i1 %i.m, label %.lr.ph, label %stringlib_rfind.exit

bb.j:                                             ; preds = %.lr.ph
  %i.n = icmp ugt ptr %i.o, %0
  br i1 %i.n, label %.lr.ph, label %stringlib_rfind.exit, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.0.i67.i.i20 = phi ptr [ %i.o, %bb.j ], [ %i.l, %bb.i ]
  %i.o = getelementptr i8, ptr %.0.i67.i.i20, i64 -1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = icmp eq i8 %i.p, %i.e
  br i1 %i.q, label %bb.k, label %bb.j, !llvm.loop !73

bb.k:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  br label %fastsearch.exit.i

bb.l:                                             ; preds = %bb.d
  %i.u = add nsw i64 %3, -1                       ; 6 uses
  %i.v = load i8, ptr %2, align 1, !tbaa !14      ; 5 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i64
  %i.y = shl nuw i64 1, %i.x                      ; 2 uses
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.prol.loopexit, label %.lr.ph.i76.i.i.prol

.lr.ph.i76.i.i.prol:                              ; preds = %bb.l
  %i.z = getelementptr i8, ptr %2, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = and i8 %i.aa, 63
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = or i64 %i.ad, %i.y                      ; 2 uses
  %i.af = icmp eq i8 %i.aa, %i.v
  %i.ag = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.i.i.prol = select i1 %i.af, i64 %i.ag, i64 %i.u ; 2 uses
  br label %.lr.ph.i76.i.i.prol.loopexit

.lr.ph.i76.i.i.prol.loopexit:                     ; preds = %.lr.ph.i76.i.i.prol, %bb.l
  %.04660.i.i.i.unr = phi i64 [ %i.u, %bb.l ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.y, %bb.l ], [ %i.ae, %.lr.ph.i76.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.u, %bb.l ], [ %i.ag, %.lr.ph.i76.i.i.prol ]
  %.lcssa24.unr = phi i64 [ poison, %bb.l ], [ %i.ae, %.lr.ph.i76.i.i.prol ]
  %spec.select.i77.i.i.lcssa.unr = phi i64 [ poison, %bb.l ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  %i.ah = icmp eq i64 %3, 2
  br i1 %i.ah, label %.preheader56.i.i.i, label %.lr.ph.i76.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i76.i.i, %.lr.ph.i76.i.i.prol.loopexit
  %.lcssa24 = phi i64 [ %.lcssa24.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i76.i.i ] ; 2 uses
  %spec.select.i77.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.lcssa.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ]
  %i.ai = sub i64 %1, %3                          ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %.lr.ph66.split.us.i.i.i, label %stringlib_rfind.exit

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.q
  %.15065.us.i.i.i = phi i64 [ %i.bf, %bb.q ], [ %i.ai, %.preheader56.i.i.i ] ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 %.15065.us.i.i.i ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = icmp eq i8 %i.al, %i.v
  br i1 %i.am, label %.preheader.us.i80.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i79.i.i = icmp eq i64 %.15065.us.i.i.i, 0
  br i1 %.not.us.i79.i.i, label %stringlib_rfind.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.ak, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %.lcssa24
  %.not51.us.i.i.i = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not51.us.i.i.i, i64 %3, i64 0
  br label %bb.q

.preheader.us.i80.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %5
  %.04862.us.i.i.i = phi i64 [ %6, %5 ], [ %i.u, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %.04862.us.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = getelementptr i8, ptr %2, i64 %.04862.us.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %.not52.us.i.i.i = icmp eq i8 %i.av, %i.ax
  br i1 %.not52.us.i.i.i, label %5, label %.thread.us.i.i.i

5:                                                ; preds = %.preheader.us.i80.i.i
  %6 = add nsw i64 %.04862.us.i.i.i, -1
  %7 = icmp sgt i64 %.04862.us.i.i.i, 1
  br i1 %7, label %.preheader.us.i80.i.i, label %fastsearch.exit.i, !llvm.loop !74

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i80.i.i
  %.not53.us.i.i.i = icmp eq i64 %.15065.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread.us.i.i.i
  %i.ay = getelementptr i8, ptr %i.ak, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = and i8 %i.az, 63
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, %.lcssa24
  %.not54.us.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not54.us.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.us.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i77.i.i.lcssa, %bb.p ], [ %i.at, %bb.n ], [ %3, %bb.o ]
  %i.be = sub nsw i64 %.15065.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = icmp sgt i64 %i.be, 0
  br i1 %i.bg, label %.lr.ph66.split.us.i.i.i, label %stringlib_rfind.exit, !llvm.loop !75

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.prol.loopexit, %.lr.ph.i76.i.i
  %.04660.i.i.i = phi i64 [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ], [ %.04660.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bu, %.lr.ph.i76.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04958.i.i.i = phi i64 [ %i.bw, %.lr.ph.i76.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr i8, ptr %2, i64 %.04958.i.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14  ; 2 uses
  %i.bj = and i8 %i.bi, 63
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = or i64 %i.bl, %.04759.i.i.i
  %i.bn = icmp eq i8 %i.bi, %i.v
  %i.bo = add nsw i64 %.04958.i.i.i, -1           ; 2 uses
  %spec.select.i77.i.i = select i1 %i.bn, i64 %i.bo, i64 %.04660.i.i.i
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14  ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = or i64 %i.bt, %i.bm                     ; 2 uses
  %i.bv = icmp eq i8 %i.bq, %i.v
  %i.bw = add nsw i64 %.04958.i.i.i, -2           ; 2 uses
  %spec.select.i77.i.i.1 = select i1 %i.bv, i64 %i.bw, i64 %spec.select.i77.i.i ; 2 uses
  %i.bx = icmp sgt i64 %.04958.i.i.i, 2
  br i1 %i.bx, label %.lr.ph.i76.i.i, label %.preheader56.i.i.i, !llvm.loop !76

fastsearch.exit.i:                                ; preds = %5, %bb.k, %bb.h
  %.0.i.i = phi i64 [ %i.t, %bb.k ], [ %i.k, %bb.h ], [ %.15065.us.i.i.i, %5 ]
  %.0.i.fr.i = freeze i64 %.0.i.i                 ; 2 uses
  %i.by = icmp slt i64 %.0.i.fr.i, 0
  %i.bz = select i1 %i.by, i64 0, i64 %4
  %spec.select.i = add i64 %i.bz, %.0.i.fr.i
  br label %stringlib_rfind.exit

stringlib_rfind.exit:                             ; preds = %bb.m, %bb.q, %bb.j, %bb.i, %bb.b, %bb.c, %bb.e, %bb.g, %.preheader56.i.i.i, %fastsearch.exit.i
  %.011.i = phi i64 [ %i.b, %bb.b ], [ -1, %bb.i ], [ %spec.select.i, %fastsearch.exit.i ], [ -1, %.preheader56.i.i.i ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.q ], [ -1, %bb.m ]
  ret i64 %.011.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyBytes_Repr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = tail call ptr @_Py_bytes_repr(ptr noundef %i.a, i64 noundef %.val, i32 noundef %1, ptr noundef nonnull @.str.36)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_repr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.081101 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.085100 = phi i64 [ %i.i, %bb.f ], [ 3, %bb.a ] ; 2 uses
  %.08799 = phi i64 [ %.188, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %.08998 = phi i64 [ %.190, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 %.081101
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 39, label %bb.b
    i8 34, label %bb.c
    i8 92, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i64 %.08998, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.e = add i64 %.08799, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.f = add i8 %i.c, -127
  %or.cond = icmp ult i8 %i.f, -95
  %spec.select = select i1 %or.cond, i64 4, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.c, %bb.b
  %.190 = phi i64 [ %.08998, %.lr.ph ], [ %.08998, %bb.d ], [ %i.d, %bb.b ], [ %.08998, %bb.c ], [ %.08998, %.lr.ph ], [ %.08998, %.lr.ph ], [ %.08998, %.lr.ph ] ; 4 uses
  %.188 = phi i64 [ %.08799, %.lr.ph ], [ %.08799, %bb.d ], [ %.08799, %bb.b ], [ %i.e, %bb.c ], [ %.08799, %.lr.ph ], [ %.08799, %.lr.ph ], [ %.08799, %.lr.ph ] ; 2 uses
  %.080 = phi i64 [ 2, %.lr.ph ], [ %spec.select, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %.lr.ph ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.g = xor i64 %.080, 9223372036854775807
  %i.h = icmp sgt i64 %.085100, %i.g
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %.080, %.085100                  ; 4 uses
  %i.j = add nuw nsw i64 %.081101, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.f
  %i.k = icmp eq i64 %.188, 0
  %i.l = icmp ne i32 %2, 0
  %i.m = icmp ne i64 %.190, 0                     ; 2 uses
  %or.cond4 = and i1 %i.l, %i.m
  %or.cond6.not = select i1 %or.cond4, i1 %i.k, i1 false ; 2 uses
  %spec.select94 = select i1 %or.cond6.not, i8 34, i8 39 ; 2 uses
  %or.cond9 = xor i1 %i.m, %or.cond6.not
  br i1 %or.cond9, label %bb.g, label %.._crit_edge_crit_edge

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub i64 9223372036854775807, %.190
  %i.o = icmp sgt i64 %i.i, %i.n
  br i1 %i.o, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = add i64 %i.i, %.190
  br label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a, %bb.h, %._crit_edge
  %spec.select94119 = phi i8 [ %spec.select94, %bb.h ], [ %spec.select94, %._crit_edge ], [ 39, %bb.a ] ; 3 uses
  %.2 = phi i64 [ %i.p, %bb.h ], [ %i.i, %._crit_edge ], [ 3, %bb.a ]
  %i.q = tail call ptr @PyUnicode_New(i64 noundef %.2, i32 noundef 127) #19 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.u, label %bb.i

bb.i:                                             ; preds = %.._crit_edge_crit_edge
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %.val.i = load i32, ptr %i.s, align 8           ; 2 uses
  %i.t = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.u, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.q, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.q, i64 56
  %.val4.i = load ptr, ptr %i.v, align 8, !tbaa !14
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 3 uses
  %i.w = getelementptr i8, ptr %.0.i, i64 1
  store i8 98, ptr %.0.i, align 1, !tbaa !14
  %i.x = getelementptr i8, ptr %.0.i, i64 2       ; 2 uses
  store i8 %spec.select94119, ptr %i.w, align 1, !tbaa !14
  br i1 %i.a, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %bb.t
  %.1105 = phi i64 [ %i.ba, %bb.t ], [ 0, %_PyUnicode_DATA.exit ] ; 2 uses
  %.082104 = phi ptr [ %.183, %bb.t ], [ %i.x, %_PyUnicode_DATA.exit ] ; 18 uses
  %i.y = getelementptr i8, ptr %0, i64 %.1105
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 7 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = icmp eq i8 %i.z, %spec.select94119
  %i.ac = icmp eq i8 %i.z, 92
  %or.cond12 = or i1 %i.ab, %i.ac
  br i1 %or.cond12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph106
  %i.ad = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %i.ae = getelementptr i8, ptr %.082104, i64 2
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !14
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph106
  switch i8 %i.z, label %bb.q [
    i8 9, label %bb.n
    i8 10, label %bb.o
    i8 13, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %i.ag = getelementptr i8, ptr %.082104, i64 2
  store i8 116, ptr %i.af, align 1, !tbaa !14
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %i.ai = getelementptr i8, ptr %.082104, i64 2
  store i8 110, ptr %i.ah, align 1, !tbaa !14
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %.082104, i64 1
  store i8 92, ptr %.082104, align 1, !tbaa !14
  %i.ak = getelementptr i8, ptr %.082104, i64 2
  store i8 114, ptr %i.aj, align 1, !tbaa !14
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.al = add i8 %i.z, -127
end_hunk_0
begin_hunk_1_@fastsearch:bb.a

bb.m:                                             ; preds = %bb.l
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  br label %stringlib_find_char.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 %1        ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, %0
  br i1 %i.ab, label %.lr.ph, label %stringlib_find_char.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ac = icmp ugt ptr %i.ad, %0
  br i1 %i.ac, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.0.i67144 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i67144, i64 -1 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = icmp eq i8 %i.ae, %i.t
  br i1 %i.af, label %bb.p, label %bb.o, !llvm.loop !73

bb.p:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %stringlib_find_char.exit

bb.q:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %4, 9223372036854775807
  %i.ak = load i8, ptr %2, align 1, !tbaa !14     ; 3 uses
  br i1 %i.aj, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.q
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi145 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !14
  %wide.load146 = load <2 x i8>, ptr %i.am, align 1, !tbaa !14
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load146, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi145, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader147

.lr.ph.i69.preheader147:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader147, %.lr.ph.i69
  %.09.i = phi i64 [ %i.az, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader147 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader147 ]
  %i.av = getelementptr i8, ptr %0, i64 %.09.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = icmp eq i8 %i.aw, %i.ak
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.078.i, %i.ay         ; 2 uses
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !147

.lr.ph.i71:                                       ; preds = %bb.q, %bb.s
  %.016.i72 = phi i64 [ %.1.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.01115.i = phi i64 [ %i.bf, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %.01115.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = icmp eq i8 %i.bb, %i.ak
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i71
  %i.bd = add i64 %.016.i72, 1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %stringlib_find_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bd, %bb.r ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !148

bb.t:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.al, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = add nsw i64 %3, -1                      ; 12 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14  ; 5 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bn = icmp eq i64 %3, 2
  br i1 %i.bn, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.w
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dx, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dt, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod164 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.bo = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.06999.i.epil.init
  %i.bu = icmp eq i8 %i.bp, %i.bm
  %i.bv = xor i64 %.068100.i.epil.init, -1
  %i.bw = add nsw i64 %i.bk, %i.bv
  %.179.i.epil = select i1 %i.bu, i64 %i.bw, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa161 = phi i64 [ %i.dt, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bx = sub i64 %1, %3                          ; 4 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa161, %i.cb                ; 2 uses
  %.not108.i = icmp slt i64 %i.bx, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.af
  %.066110.us.i = phi i64 [ %i.dc, %bb.af ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.af ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cc
  %.not89.us.i = icmp eq i64 %i.cm, 0
  %i.cn = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cn, %.066110.us.i
  br label %bb.af

bb.z:                                             ; preds = %.preheader.us.i, %6
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %7, %6 ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.dd, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %6, label %._crit_edge104.us.i

6:                                                ; preds = %bb.z
  %7 = add nuw nsw i64 %.0102.us.i, 1             ; 2 uses
  %exitcond179.not.i = icmp eq i64 %7, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.z, !llvm.loop !149

._crit_edge104.us.i:                              ; preds = %bb.z
  %i.cs = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cs, %i.bx
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge104.us.i
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.cc
  %.not92.us.i = icmp eq i64 %i.cy, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge104.us.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i.loopexit:              ; preds = %6
  br i1 %i.b, label %bb.ad, label %stringlib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cz = add i64 %.074109.us.i, 1                ; 2 uses
  %i.da = icmp eq i64 %i.cz, %4
  br i1 %i.da, label %stringlib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = add i64 %.066110.us.i, %i.bk
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.y, %bb.x
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.y ], [ %.074109.us.i, %bb.ac ], [ %i.cz, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ac ], [ %i.db, %bb.ae ]
  %i.dc = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dc, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !150

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dd = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dx, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.dt, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bk, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.de = getelementptr i8, ptr %2, i64 %.068100.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14  ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = or i64 %i.di, %.06999.i
  %i.dk = icmp eq i8 %i.df, %i.bm
  %i.dl = xor i64 %.068100.i, -1
  %i.dm = add nsw i64 %i.bk, %i.dl
  %.179.i = select i1 %i.dk, i64 %i.dm, i64 %.07898.i
  %i.dn = getelementptr i8, ptr %2, i64 %.068100.i
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !14  ; 2 uses
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dj                     ; 3 uses
  %i.du = icmp eq i8 %i.dp, %i.bm
  %i.dv = xor i64 %.068100.i, -2
  %i.dw = add nsw i64 %i.bk, %i.dv
  %.179.i.1 = select i1 %i.du, i64 %i.dw, i64 %.179.i ; 3 uses
  %i.dx = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dy = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ag:                                            ; preds = %bb.v
  %i.dz = lshr i64 %3, 2
  %i.ea = mul nuw nsw i64 %i.dz, 3
  %i.eb = lshr i64 %1, 2
  %i.ec = icmp samesign ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ef = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ag
  %i.eg = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.t
  %i.eh = add nsw i64 %3, -1                      ; 6 uses
  %i.ei = load i8, ptr %2, align 1, !tbaa !14     ; 5 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek                    ; 2 uses
  %xtraiter166 = and i64 %i.eh, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.al
  %i.em = getelementptr i8, ptr %2, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = or i64 %i.eq, %i.el                     ; 2 uses
  %i.es = icmp eq i8 %i.en, %i.ei
  %i.et = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.es, i64 %i.et, i64 %i.eh ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.al
  %.04660.i.unr = phi i64 [ %i.eh, %bb.al ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.el, %bb.al ], [ %i.er, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.eh, %bb.al ], [ %i.et, %.lr.ph.i76.prol ]
  %.lcssa158.unr = phi i64 [ poison, %bb.al ], [ %i.er, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.al ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.eu = icmp eq i64 %3, 2
  br i1 %i.eu, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa158 = phi i64 [ %.lcssa158.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gh, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ev = sub i64 %1, %3                          ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.aq
  %.15065.us.i = phi i64 [ %i.fs, %bb.aq ], [ %i.ev, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !14
  %i.ez = icmp eq i8 %i.ey, %i.ei
  br i1 %i.ez, label %.preheader.us.i80, label %bb.am

bb.am:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa158
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.aq

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %8
  %.04862.us.i = phi i64 [ %9, %8 ], [ %i.eh, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04862.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !14
  %i.fj = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %8, label %.thread.us.i

8:                                                ; preds = %.preheader.us.i80
  %9 = add nsw i64 %.04862.us.i, -1
  %10 = icmp sgt i64 %.04862.us.i, 1
  br i1 %10, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !74

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ex, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !14
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa158
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.us.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ap ], [ %i.fg, %bb.an ], [ %3, %bb.ao ]
  %i.fr = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !75

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gh, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fu = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !14  ; 2 uses
  %i.fw = and i8 %i.fv, 63
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = or i64 %i.fy, %.04759.i
  %i.ga = icmp eq i8 %i.fv, %i.ei
  %i.gb = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.ga, i64 %i.gb, i64 %.04660.i
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !14  ; 2 uses
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = or i64 %i.gg, %i.fz                     ; 2 uses
  %i.gi = icmp eq i8 %i.gd, %i.ei
  %i.gj = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gi, i64 %i.gj, i64 %spec.select.i77 ; 2 uses
  %i.gk = icmp sgt i64 %.04958.i, 2
  br i1 %i.gk, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !76

stringlib_find_char.exit:                         ; preds = %bb.ad, %._crit_edge104.us.thread.i.loopexit, %bb.aq, %bb.am, %8, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i69, %bb.n, %middle.block, %.preheader56.i, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.ak, %bb.aj, %bb.ai
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.15065.us.i, %8 ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.ee, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ -1, %bb.o ], [ -1, %bb.j ], [ %i.dy, %.loopexit.i ], [ %i.au, %middle.block ], [ -1, %bb.aq ], [ %.1.i, %bb.s ], [ -1, %bb.am ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !14 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !14 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bp, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %8
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %9, %8 ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bj, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %8, label %._crit_edge141.us

8:                                                ; preds = %bb.c
  %9 = add nuw nsw i64 %.0139.us, 1               ; 2 uses
  %exitcond225.not = icmp eq i64 %9, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !153

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %8, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !154

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bj = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bt, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bp, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bk = getelementptr i8, ptr %2, i64 %.094137
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14  ; 2 uses
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = or i64 %i.bo, %.095136                  ; 2 uses
  %i.bq = icmp eq i8 %i.bl, %i.d
  %i.br = xor i64 %.094137, -1
  %i.bs = add nsw i64 %i.b, %i.br
  %.1108 = select i1 %i.bq, i64 %i.bs, i64 %.0107135 ; 2 uses
  %i.bt = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155

.split.us:                                        ; preds = %bb.d
  %i.bu = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bv = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bw = call fastcc i64 @stringlib__two_way(ptr noundef readonly %i.bu, i64 noundef %i.bv, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = add i64 %i.bw, %.092148.us
  %i.bz = select i1 %i.bx, i64 -1, i64 %i.by
  br label %.thread.thread

bb.m:                                             ; preds = %.split.us
  %i.ca = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cb = call fastcc i64 @stringlib__two_way(ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %6) ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %stringlib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.cd = icmp eq i64 %i.ca, 1
  br i1 %i.cd, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.ce = add i64 %i.cg, 1                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cf, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cg = phi i64 [ %i.ce, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.cj, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.cb, %.lr.ph.i.preheader ]
  %i.ci = add i64 %i.ch, %3
  %i.cj = add i64 %i.ci, %.01930.i249             ; 3 uses
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = sub i64 %i.bv, %i.cj
  %i.cm = call fastcc i64 @stringlib__two_way(ptr noundef %i.ck, i64 noundef %i.cl, ptr noundef %6) ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.m
  %.1.ph.i = phi i64 [ 0, %bb.m ], [ %i.ca, %.lr.ph.i.preheader ], [ %i.ca, %.lr.ph.i ], [ %i.cg, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.co = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cp = icmp eq i32 %5, 0
  %i.cq = select i1 %i.cp, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.l, %stringlib__two_way_count.exit, %.loopexit
  %i.cr = phi i64 [ %i.cq, %.loopexit ], [ %i.bz, %bb.l ], [ %i.co, %stringlib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #10 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !156
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !158
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !159

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.03339.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.03140.i.i    ; 2 uses
  %spec.select.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  %i.ad = select i1 %.not37.i.i, i64 %.03140.i.i, i64 0
  %spec.select38.i.i = add i64 %i.ad, %.02941.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.02941.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.132.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.03140.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.042.i.i, %bb.g ], [ %.02941.i.i, %bb.j ], [ %.042.i.i, %bb.i ] ; 3 uses
  %i.af = add i64 %.130.i.i, %.134.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !159

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.1.us.i.i, %.1.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.1.us.i.i, i64 %.1.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.132.us.i.i, i64 %.132.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !160
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !161
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l
end_hunk_1
begin_hunk_2_@stringlib__preprocess:bb.a
.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !14
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.05361 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub i64 %i.ar, %.05361
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.05361
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !14
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !165
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !158
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !160
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !162  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !156    ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !163  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !161
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !14
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !166

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !167

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr240                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !14
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.j
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.j ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %.lr.ph210.us.a

.lr.ph210.us.a:                                   ; preds = %.lr.ph207.us, %3
  %.0209.us.a = phi i64 [ %.fr239, %.lr.ph207.us ], [ %4, %3 ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0209.us.a
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0209.us.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %.not151.us.a = icmp eq i8 %i.by, %i.ca
  br i1 %.not151.us.a, label %3, label %bb.i

3:                                                ; preds = %.lr.ph210.us.a
  %4 = add i64 %.0209.us.a, 1                     ; 2 uses
  %exitcond280.not = icmp eq i64 %4, %.fr240
  br i1 %exitcond280.not, label %..preheader_crit_edge.us, label %.lr.ph210.us.a, !llvm.loop !168

.thread167.us.a:                                  ; preds = %bb.h
  %5 = add nuw nsw i64 %.0124205.us, 1            ; 2 uses
  %exitcond281.not = icmp eq i64 %5, %.fr239
  br i1 %exitcond281.not, label %.thread170, label %bb.h, !llvm.loop !169

bb.h:                                             ; preds = %..preheader_crit_edge.us, %.thread167.us.a
  %.0124205.us = phi i64 [ %5, %.thread167.us.a ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.cb = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %.not153.us = icmp eq i8 %i.cc, %i.ce
  br i1 %.not153.us, label %.thread167.us.a, label %.thread167.us

.thread167.us:                                    ; preds = %bb.h
  %6 = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph210.us.a
  %i.cf = icmp slt i64 %.0209.us.a, %i.o
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.ch = sub i64 %.0209.us.a, %.fr239
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %.7133.us = select i1 %i.cf, ptr %i.cg, ptr %i.cj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.i ], [ %6, %.thread167.us ] ; 2 uses
  %i.ck = icmp ult ptr %.9.us, %i.j
  br i1 %i.ck, label %.preheader177.us.backedge, label %.thread

..preheader_crit_edge.us:                         ; preds = %3
  br i1 %.not152208, label %bb.h, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cl = load i8, ptr %.6132.us220, align 1, !tbaa !14
  %i.cm = and i8 %i.cl, 63
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.k, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14  ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %.6132.us220, i64 %i.cq ; 4 uses
  %.not293 = icmp eq i8 %i.cp, 0
  %.not150.us222 = icmp uge ptr %i.cr, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cr, %.preheader177.us217 ], [ %i.cz, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bm
  %i.ct = getelementptr i8, ptr %i.cs, i64 1      ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.cu = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond279.not = icmp eq i64 %i.cu, %.fr239
  br i1 %exitcond279.not, label %.thread170, label %bb.l, !llvm.loop !169

bb.l:                                             ; preds = %.preheader.us227, %bb.k
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cu, %bb.k ] ; 3 uses
  %i.cv = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = getelementptr i8, ptr %i.ct, i64 %.0209.us231
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !14
  %.not151.us232 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not151.us232, label %bb.k, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.l
  %i.cz = getelementptr i8, ptr %i.cr, i64 %i.bk  ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.j
  br i1 %i.da, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dh, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.db = load i8, ptr %.6132, align 1, !tbaa !14
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.k, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %.6132, i64 %i.dg ; 3 uses
  %.not292 = icmp eq i8 %i.df, 0
  %.not150 = icmp uge ptr %i.dh, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.bm
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.k, %..preheader_crit_edge.us, %.thread167.us.a, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dj, %.preheader ], [ %i.bw, %.thread167.us.a ], [ %i.ct, %bb.k ]
  %i.dk = ptrtoint ptr %.lcssa to i64
  %i.dl = ptrtoint ptr %0 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.j, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dm, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.j ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyEval_SaveThread() local_unnamed_addr #2

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #2

declare i32 @PyBuffer_ToContiguous(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyObject_LengthHint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @bytes_mod(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !48
  %i.c = and i64 %.val5, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !tbaa !20
  %i.f = tail call ptr @_PyBytes_FormatEx(ptr noundef %i.d, i64 noundef %.val6, ptr noundef %1, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ @_Py_NotImplementedStruct, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @bytes_length(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_repeat(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 2 uses
  %.not = icmp slt i64 %1, 1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val32.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %spec.store.select
  %i.b = icmp sgt i64 %.val32.pre, %i.a
  br i1 %i.b, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.90) #19
  br label %_Py_NewRef.exit

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = mul i64 %.val32.pre, %spec.store.select  ; 10 uses
  %i.f = icmp eq i64 %i.e, %.val32.pre
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.g, align 8, !tbaa !16
  %.not35 = icmp eq ptr %.val34, @PyBytes_Type
  br i1 %.not35, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !14
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.not30 = icmp ult i64 %i.e, -33
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.90) #19
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.g
  %i.l = add nuw i64 %i.e, 33
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef %i.l) #19 ; 11 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @PyErr_NoMemory() #19
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyBytes_Type, ptr %i.p, align 8, !tbaa !16
  %i.q = load i32, ptr @PyBytes_Type, align 8, !tbaa !14 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_InitVar.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyBytes_Type, align 8, !tbaa !14
  br label %_PyObject_InitVar.exit

_PyObject_InitVar.exit:                           ; preds = %bb.k, %bb.l
  tail call void @_Py_NewReference(ptr noundef nonnull %i.m) #19, !inline_history !25
  %i.t = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.e, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr i8, ptr %i.m, i64 24
  store i64 -1, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr i8, ptr %i.m, i64 32       ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %i.e
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %i.x = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.y = icmp eq i64 %i.e, 0
  br i1 %i.y, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %_PyObject_InitVar.exit
  %i.z = icmp eq i64 %.val, 1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = load i8, ptr %i.x, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 %i.aa, i64 %i.e, i1 false)
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %0, %i.m
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %i.x, i64 %.val, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ab = icmp slt i64 %.val, %i.e
  br i1 %i.ab, label %.lr.ph.i, label %_Py_NewRef.exit

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.028.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.val, %bb.q ] ; 4 uses
  %i.ac = sub i64 %i.e, %.028.i
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.028.i, i64 %i.ac) ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %.028.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.v, i64 %i.ad, i1 false)
  %i.af = add i64 %i.ad, %.028.i                  ; 2 uses
  %i.ag = icmp slt i64 %i.af, %i.e
  br i1 %i.ag, label %.lr.ph.i, label %_Py_NewRef.exit, !llvm.loop !141

_Py_NewRef.exit:                                  ; preds = %.lr.ph.i, %bb.q, %bb.n, %_PyObject_InitVar.exit, %bb.f, %bb.e, %bb.j, %bb.h, %bb.c
  %.3 = phi ptr [ null, %bb.c ], [ %0, %bb.f ], [ null, %bb.h ], [ %i.o, %bb.j ], [ %0, %bb.e ], [ %i.m, %_PyObject_InitVar.exit ], [ %i.m, %bb.n ], [ %i.m, %bb.q ], [ %i.m, %.lr.ph.i ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  %.not = icmp slt i64 %1, %.val
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.91) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %i.d, i64 %1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
end_hunk_2
begin_hunk_3_@stringlib_rjust:bb.a

bb.u:                                             ; preds = %bb.p
  %i.aj = sub i64 %.02648.ph, %.val8.i            ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 0) ; 3 uses
  %i.ak = icmp slt i64 %i.aj, 1
  br i1 %i.ak, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !16
  %.not.i.i.i = icmp eq ptr %.val.i.i.i, @PyBytes_Type
  br i1 %.not.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.am = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.an = icmp ugt i32 %i.am, -1073741825
  br i1 %i.an, label %stringlib_rjust_impl.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = add nuw i32 %i.am, 1
  store i32 %i.ao, ptr %0, align 8, !tbaa !14
  br label %stringlib_rjust_impl.exit

bb.y:                                             ; preds = %bb.v
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ap, i64 noundef %.val8.i), !inline_history !215
  br label %stringlib_rjust_impl.exit

bb.z:                                             ; preds = %bb.u
  %i.ar = add i64 %spec.store.select.i.i, %.val8.i
  %i.as = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ar), !inline_history !216 ; 3 uses
  %.not.i9.i = icmp eq ptr %i.as, null
  br i1 %.not.i9.i, label %stringlib_rjust_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 %.027, i64 %spec.store.select.i.i, i1 false)
  %i.au = getelementptr i8, ptr %i.at, i64 %spec.store.select.i.i
  %i.av = getelementptr i8, ptr %0, i64 32
  %.val29.i.i = load i64, ptr %i.ac, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.av, i64 %.val29.i.i, i1 false)
  br label %stringlib_rjust_impl.exit

stringlib_rjust_impl.exit:                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit.thread, %bb.j, %bb.m, %bb.o, %bb.b
  %.029 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.b ], [ %0, %bb.s ], [ %i.ai, %bb.t ], [ %0, %bb.r ], [ null, %bb.z ], [ %i.as, %bb.aa ], [ %0, %bb.x ], [ %i.aq, %bb.y ], [ %0, %bb.w ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rpartition(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call i32 @PyObject_GetBuffer(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bytes_rpartition_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32         ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !20 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !87     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83   ; 11 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.157) #19, !inline_history !217
  br label %bytes_rpartition_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.k = call ptr @PyTuple_New(i64 noundef 3) #19, !inline_history !217 ; 12 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bytes_rpartition_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i64 %.val.i, %i.h
  br i1 %i.l, label %fastsearch.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i64 %i.h, 2
  br i1 %i.m, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %.not66.i.i.i = icmp eq i64 %i.h, 1
  br i1 %.not66.i.i.i, label %bb.h, label %fastsearch.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.n = load i8, ptr %i.f, align 1, !tbaa !14    ; 2 uses
  %i.o = icmp sgt i64 %.val.i, 15
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = sext i8 %i.n to i32
  %i.q = call ptr @memrchr(ptr noundef %i.b, i32 noundef %i.p, i64 noundef %.val.i) #20, !inline_history !217 ; 2 uses
  %.not.i68.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i68.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = sub i64 %i.r, %i.s
  br label %fastsearch.exit.i.i

bb.k:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.b, i64 %.val.i  ; 2 uses
  %i.v = icmp ugt ptr %i.u, %i.b
  br i1 %i.v, label %.lr.ph, label %fastsearch.exit.thread.i.i

bb.l:                                             ; preds = %.lr.ph
  %i.w = icmp ugt ptr %i.x, %i.b
  br i1 %i.w, label %.lr.ph, label %fastsearch.exit.thread.i.i, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i67.i.i.i26 = phi ptr [ %i.x, %bb.l ], [ %i.u, %bb.k ]
  %i.x = getelementptr i8, ptr %.0.i67.i.i.i26, i64 -1 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, %i.n
  br i1 %i.z, label %bb.m, label %bb.l, !llvm.loop !73

bb.m:                                             ; preds = %.lr.ph
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.b to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %fastsearch.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %i.h, -1                    ; 6 uses
  %i.ae = load i8, ptr %i.f, align 1, !tbaa !14   ; 5 uses
  %i.af = and i8 %i.ae, 63
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  %xtraiter = and i64 %i.ad, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ad
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14  ; 2 uses
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = or i64 %i.am, %i.ah                     ; 2 uses
  %i.ao = icmp eq i8 %i.aj, %i.ae
  %i.ap = add nsw i64 %i.h, -2                    ; 2 uses
  %spec.select.i77.i.i.i.prol = select i1 %i.ao, i64 %i.ap, i64 %i.ad ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %bb.n
  %.04660.i.i.i.i.unr = phi i64 [ %i.ad, %bb.n ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.ah, %bb.n ], [ %i.an, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.ad, %bb.n ], [ %i.ap, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa30.unr = phi i64 [ poison, %bb.n ], [ %i.an, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %bb.n ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.h, 2
  br i1 %i.aq, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa30 = phi i64 [ %.lcssa30.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.ar = sub i64 %.val.i, %i.h                   ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.s
  %.15065.us.i.i.i.i = phi i64 [ %i.bo, %bb.s ], [ %i.ar, %.preheader56.i.i.i.i ] ; 5 uses
  %i.at = getelementptr i8, ptr %i.b, i64 %.15065.us.i.i.i.i ; 4 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = icmp eq i8 %i.au, %i.ae
  br i1 %i.av, label %.preheader.us.i80.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %i.at, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = and i8 %i.ax, 63
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, %.lcssa30
  %.not51.us.i.i.i.i = icmp eq i64 %i.bb, 0
  %i.bc = select i1 %.not51.us.i.i.i.i, i64 %i.h, i64 0
  br label %bb.s

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %3
  %.04862.us.i.i.i.i = phi i64 [ %4, %3 ], [ %i.ad, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %.04862.us.i.i.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = getelementptr i8, ptr %i.f, i64 %.04862.us.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %.not52.us.i.i.i.i = icmp eq i8 %i.be, %i.bg
  br i1 %.not52.us.i.i.i.i, label %3, label %.thread.us.i.i.i.i

3:                                                ; preds = %.preheader.us.i80.i.i.i
  %4 = add nsw i64 %.04862.us.i.i.i.i, -1
  %5 = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %5, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !74

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread.us.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.at, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = and i8 %i.bi, 63
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bl, %.lcssa30
  %.not54.us.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not54.us.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.us.i.i.i.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.r ], [ %i.bc, %bb.p ], [ %i.h, %bb.q ]
  %i.bn = sub nsw i64 %.15065.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = icmp sgt i64 %i.bn, 0
  br i1 %i.bp, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !75

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.bq = getelementptr i8, ptr %i.f, i64 %.04958.i.i.i.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !14  ; 2 uses
  %i.bs = and i8 %i.br, 63
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = or i64 %i.bu, %.04759.i.i.i.i
  %i.bw = icmp eq i8 %i.br, %i.ae
  %i.bx = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.bw, i64 %i.bx, i64 %.04660.i.i.i.i
  %i.by = getelementptr i8, ptr %i.f, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14  ; 2 uses
  %i.ca = and i8 %i.bz, 63
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = or i64 %i.cc, %i.bv                     ; 2 uses
  %i.ce = icmp eq i8 %i.bz, %i.ae
  %i.cf = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.ce, i64 %i.cf, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.cg = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.cg, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !76

fastsearch.exit.i.i:                              ; preds = %3, %bb.m, %bb.j
  %.0.i.i.i = phi i64 [ %i.ac, %bb.m ], [ %i.t, %bb.j ], [ %.15065.us.i.i.i.i, %3 ] ; 3 uses
  %i.ch = icmp slt i64 %.0.i.i.i, 0
  br i1 %i.ch, label %fastsearch.exit.thread.i.i, label %bb.w

fastsearch.exit.thread.i.i:                       ; preds = %bb.s, %bb.o, %bb.l, %bb.k, %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.i, %bb.g, %bb.e
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !14 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, -1073741825
  br i1 %i.cj, label %Py_INCREF.exit38.i.i, label %bb.t

bb.t:                                             ; preds = %fastsearch.exit.thread.i.i
  %i.ck = add nuw i32 %i.ci, 1
  store i32 %i.ck, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !14
  br label %Py_INCREF.exit38.i.i

Py_INCREF.exit38.i.i:                             ; preds = %bb.t, %fastsearch.exit.thread.i.i
  %i.cl = getelementptr i8, ptr %i.k, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr %i.cl, align 8, !tbaa !11
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !14 ; 2 uses
  %i.cn = icmp ugt i32 %i.cm, -1073741825
  br i1 %i.cn, label %Py_INCREF.exit37.i.i, label %bb.u

bb.u:                                             ; preds = %Py_INCREF.exit38.i.i
  %i.co = add nuw i32 %i.cm, 1
  store i32 %i.co, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !14
  br label %Py_INCREF.exit37.i.i

Py_INCREF.exit37.i.i:                             ; preds = %bb.u, %Py_INCREF.exit38.i.i
  %i.cp = getelementptr i8, ptr %i.k, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr %i.cp, align 8, !tbaa !11
  %i.cq = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, -1073741825
  br i1 %i.cr, label %Py_INCREF.exit36.i.i, label %bb.v

bb.v:                                             ; preds = %Py_INCREF.exit37.i.i
  %i.cs = add nuw i32 %i.cq, 1
  store i32 %i.cs, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit36.i.i

Py_INCREF.exit36.i.i:                             ; preds = %bb.v, %Py_INCREF.exit37.i.i
  %i.ct = getelementptr i8, ptr %i.k, i64 48
  store ptr %0, ptr %i.ct, align 8, !tbaa !11
  br label %bytes_rpartition_impl.exit

bb.w:                                             ; preds = %fastsearch.exit.i.i
  %i.cu = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %.0.i.i.i), !inline_history !217
  %i.cv = getelementptr i8, ptr %i.k, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !11
  %i.cw = load i32, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, -1073741825
  br i1 %i.cx, label %Py_INCREF.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = add nuw i32 %i.cw, 1
  store i32 %i.cy, ptr %i.e, align 8, !tbaa !14
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.x, %bb.w
  %i.cz = getelementptr i8, ptr %i.k, i64 40
  store ptr %i.e, ptr %i.cz, align 8, !tbaa !11
  %i.da = add i64 %.0.i.i.i, %i.h                 ; 2 uses
  %i.db = getelementptr i8, ptr %i.b, i64 %i.da
  %i.dc = sub i64 %.val.i, %i.da
  %i.dd = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.db, i64 noundef %i.dc), !inline_history !217
  %i.de = getelementptr i8, ptr %i.k, i64 48
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !11
  %i.df = call ptr @PyErr_Occurred() #19, !inline_history !217
  %.not35.i.i = icmp eq ptr %i.df, null
  br i1 %.not35.i.i, label %bytes_rpartition_impl.exit, label %bb.y

bb.y:                                             ; preds = %Py_INCREF.exit.i.i
  %i.dg = load i32, ptr %i.k, align 8, !tbaa !14  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i.i, label %bb.z, label %bytes_rpartition_impl.exit

bb.z:                                             ; preds = %bb.y
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.k, align 8, !tbaa !14
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bytes_rpartition_impl.exit

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #19, !inline_history !217
  br label %bytes_rpartition_impl.exit

bytes_rpartition_impl.exit:                       ; preds = %bb.aa, %bb.z, %bb.y, %Py_INCREF.exit.i.i, %Py_INCREF.exit36.i.i, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.k, %Py_INCREF.exit36.i.i ], [ %i.k, %Py_INCREF.exit.i.i ], [ null, %bb.d ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86
  %.not3 = icmp eq ptr %i.dk, null
  br i1 %.not3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bytes_rpartition_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bytes_rpartition_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rsplit(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread54, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytes_rsplit._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.cm, label %.thread54

.thread54:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %.thread62, label %bb.d

.thread62:                                        ; preds = %.thread54
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val.i65 = load i64, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %bb.j

bb.d:                                             ; preds = %.thread54
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not47 = icmp eq i64 %i.i, 1
  br i1 %.not47, label %.thread59, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.035 = phi ptr [ %i.l, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = call ptr @_PyNumber_Index(ptr noundef %i.n) #19 ; 5 uses
  %.not48 = icmp eq ptr %i.o, null
  br i1 %.not48, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.o) #19 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #19
  br label %Py_DECREF.exit

end_hunk_3
begin_hunk_4_@bytes_rsplit:bb.a
  %.051.lcssa113.i.i.i = phi i64 [ %.05187.i.i.i303, %.critedge.i.i.i ], [ %i.dc, %bb.am ]
  %i.eb = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !16
  %.not.i82.i.i = icmp eq ptr %.val.i.i.i, @PyBytes_Type
  br i1 %.not.i82.i.i, label %bb.ay, label %.critedge.i.thread.i.i

bb.ay:                                            ; preds = %.critedge.thread.i.i.i
  %i.ec = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, -1073741825
  br i1 %i.ed, label %Py_INCREF.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = add nuw i32 %i.ec, 1
  store i32 %i.ee, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit.i.i.i

Py_INCREF.exit.i.i.i:                             ; preds = %bb.az, %bb.ay
  %i.ef = getelementptr i8, ptr %i.da, i64 24
  %.val75.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !79
  store ptr %0, ptr %.val75.i.i.i, align 8, !tbaa !11
  br label %bb.bj

.critedge.i.thread.i.i:                           ; preds = %.loopexit.i.i.i, %.critedge.thread.i.i.i, %.critedge.i.i.i
  %.050.lcssa114.i.i.i = phi i64 [ 0, %.critedge.thread.i.i.i ], [ %.050.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.dx, %.loopexit.i.i.i ] ; 4 uses
  %.051.lcssa112.i.i.i = phi i64 [ %.051.lcssa113.i.i.i, %.critedge.thread.i.i.i ], [ %.05187.i.i.i303, %.critedge.i.i.i ], [ %i.dy, %.loopexit.i.i.i ] ; 2 uses
  %i.eg = icmp sgt i64 %.051.lcssa112.i.i.i, -2
  br i1 %i.eg, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %.critedge.i.thread.i.i
  %i.eh = add i64 %.051.lcssa112.i.i.i, 1
  %i.ei = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %i.eh), !inline_history !225 ; 8 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %Py_DECREF.exit69.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = icmp slt i64 %.050.lcssa114.i.i.i, 12
  br i1 %i.ek, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.el = getelementptr i8, ptr %i.da, i64 24
  %.val74.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !79
  %i.em = getelementptr [8 x i8], ptr %.val74.i.i.i, i64 %.050.lcssa114.i.i.i
  store ptr %i.ei, ptr %i.em, align 8, !tbaa !11
  br label %Py_DECREF.exit63.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.en = call i32 @PyList_Append(ptr noundef nonnull %i.da, ptr noundef nonnull %i.ei) #19, !inline_history !225
  %.not60.i.i.i = icmp eq i32 %i.en, 0
  %i.eo = load i32, ptr %i.ei, align 8, !tbaa !14 ; 3 uses
  %.not.i62.i.i.i = icmp sgt i32 %i.eo, -1        ; 2 uses
  br i1 %.not60.i.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i62.i.i.i, label %bb.bf, label %Py_DECREF.exit69.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.ei, align 8, !tbaa !14
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %Py_DECREF.exit69.sink.split.i.i.i, label %Py_DECREF.exit69.i.i.i

bb.bg:                                            ; preds = %bb.bd
  br i1 %.not.i62.i.i.i, label %bb.bh, label %Py_DECREF.exit63.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.er = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.er, ptr %i.ei, align 8, !tbaa !14
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bi, label %Py_DECREF.exit63.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #19, !inline_history !225
  br label %Py_DECREF.exit63.i.i.i

Py_DECREF.exit63.i.i.i:                           ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bc
  %i.et = add i64 %.050.lcssa114.i.i.i, 1
  br label %bb.bj

bb.bj:                                            ; preds = %Py_DECREF.exit63.i.i.i, %.critedge.i.thread.i.i, %Py_INCREF.exit.i.i.i
  %.2.i.i.i = phi i64 [ 1, %Py_INCREF.exit.i.i.i ], [ %i.et, %Py_DECREF.exit63.i.i.i ], [ %.050.lcssa114.i.i.i, %.critedge.i.thread.i.i ]
  %i.eu = getelementptr i8, ptr %i.da, i64 16
  store i64 %.2.i.i.i, ptr %i.eu, align 8, !tbaa !20
  %i.ev = call i32 @PyList_Reverse(ptr noundef nonnull %i.da) #19, !inline_history !225
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %Py_DECREF.exit69.i.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit69.sink.split.i.i.i:                ; preds = %bb.bf, %bb.at
  %.sink.i.i.i = phi ptr [ %i.dl, %bb.at ], [ %i.ei, %bb.bf ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i.i) #19, !inline_history !225
  br label %Py_DECREF.exit69.i.i.i

Py_DECREF.exit69.i.i.i:                           ; preds = %bb.ao, %Py_DECREF.exit69.sink.split.i.i.i, %bb.bj, %bb.bf, %bb.be, %bb.ba, %bb.at, %bb.as
  %i.ex = load i32, ptr %i.da, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ex, -1
  br i1 %.not.i.i.i.i, label %bb.bk, label %stringlib_rsplit.exit.i

bb.bk:                                            ; preds = %Py_DECREF.exit69.i.i.i
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.da, align 8, !tbaa !14
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bl, label %stringlib_rsplit.exit.i

bb.bl:                                            ; preds = %bb.bk
  call void @_Py_Dealloc(ptr noundef nonnull %i.da) #19, !inline_history !225
  br label %stringlib_rsplit.exit.i

bb.bm:                                            ; preds = %bb.aj
  %i.fa = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.fb = add nuw nsw i64 %i.fa, 1
  %i.fc = call ptr @PyList_New(i64 noundef %i.fb) #19, !inline_history !224 ; 12 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %stringlib_rsplit.exit.i, label %.preheader.i19.i

.preheader.i19.i:                                 ; preds = %bb.bm
  %i.fe = icmp eq i64 %.1, 0
  %i.ff = icmp slt i64 %.val.i, %i.cv
  %or.cond117.i.i = or i1 %i.fe, %i.ff
  br i1 %or.cond117.i.i, label %fastsearch.exit.thread.thread221.i.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.preheader.i19.i
  %i.fg = icmp slt i64 %i.cv, 2
  %i.fh = add i64 %i.cv, -1                       ; 6 uses
  %i.fi = getelementptr i8, ptr %i.fc, i64 24
  br i1 %i.fg, label %fastsearch.exit.thread.thread221.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i20.i
  %xtraiter = and i64 %i.fh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fj = getelementptr i8, ptr %i.ct, i64 %i.fh
  %i.fk = add nsw i64 %i.cv, -2                   ; 2 uses
  %i.fl = icmp eq i64 %i.cv, 2
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %Py_DECREF.exit72.i.i
  %.in.i.i = phi i64 [ %i.fw, %Py_DECREF.exit72.i.i ], [ %spec.store.select.i, %.lr.ph.split.i.i.preheader ] ; 2 uses
  %.057119.i.i = phi i64 [ %i.ib, %Py_DECREF.exit72.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 5 uses
  %.059118.i.i = phi i64 [ %.15065.us.i.i.i.i, %Py_DECREF.exit72.i.i ], [ %.val.i, %.lr.ph.split.i.i.preheader ] ; 4 uses
  %i.fm = load i8, ptr %i.ct, align 1, !tbaa !14  ; 5 uses
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.split.i.i
  %i.fq = load i8, ptr %i.fj, align 1, !tbaa !14  ; 2 uses
  %i.fr = and i8 %i.fq, 63
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = or i64 %i.ft, %i.fp                     ; 2 uses
  %i.fv = icmp eq i8 %i.fq, %i.fm
  %spec.select.i77.i.i.i.prol = select i1 %i.fv, i64 %i.fk, i64 %i.fh ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.split.i.i
  %.04660.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.split.i.i ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.fp, %.lr.ph.split.i.i ], [ %i.fu, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.split.i.i ], [ %i.fk, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa336.unr = phi i64 [ poison, %.lr.ph.split.i.i ], [ %i.fu, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.i.i ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  br i1 %i.fl, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa336 = phi i64 [ %.lcssa336.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.hj, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.fw = add nsw i64 %.in.i.i, -1
  %i.fx = sub i64 %.059118.i.i, %i.cv             ; 2 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  br i1 %i.fy, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.br
  %.15065.us.i.i.i.i = phi i64 [ %i.gu, %bb.br ], [ %i.fx, %.preheader56.i.i.i.i ] ; 9 uses
  %i.fz = getelementptr i8, ptr %i.w, i64 %.15065.us.i.i.i.i ; 4 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14
  %i.gb = icmp eq i8 %i.ga, %i.fm
  br i1 %i.gb, label %.preheader.us.i80.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gc = getelementptr i8, ptr %i.fz, i64 -1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !14
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = and i64 %i.gg, %.lcssa336
  %.not51.us.i.i.i.i = icmp eq i64 %i.gh, 0
  %i.gi = select i1 %.not51.us.i.i.i.i, i64 %i.cv, i64 0
  br label %bb.br

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %5
  %.04862.us.i.i.i.i = phi i64 [ %6, %5 ], [ %i.fh, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.gj = getelementptr i8, ptr %i.fz, i64 %.04862.us.i.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !14
  %i.gl = getelementptr i8, ptr %i.ct, i64 %.04862.us.i.i.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !14
  %.not52.us.i.i.i.i = icmp eq i8 %i.gk, %i.gm
  br i1 %.not52.us.i.i.i.i, label %5, label %.thread.us.i.i.i.i

5:                                                ; preds = %.preheader.us.i80.i.i.i
  %6 = add nsw i64 %.04862.us.i.i.i.i, -1
  %7 = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %7, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.loopexit.i.i, !llvm.loop !74

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.thread.us.i.i.i.i
  %i.gn = getelementptr i8, ptr %i.fz, i64 -1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !14
  %i.gp = and i8 %i.go, 63
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gr, %.lcssa336
  %.not54.us.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not54.us.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.thread.us.i.i.i.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.bq ], [ %i.gi, %bb.bo ], [ %i.cv, %bb.bp ]
  %i.gt = sub nsw i64 %.15065.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.gu = add nsw i64 %i.gt, -1
  %i.gv = icmp sgt i64 %i.gt, 0
  br i1 %i.gv, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !75

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.hj, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.hl, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.gw = getelementptr i8, ptr %i.ct, i64 %.04958.i.i.i.i
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !14  ; 2 uses
  %i.gy = and i8 %i.gx, 63
  %i.gz = zext nneg i8 %i.gy to i64
  %i.ha = shl nuw i64 1, %i.gz
  %i.hb = or i64 %i.ha, %.04759.i.i.i.i
  %i.hc = icmp eq i8 %i.gx, %i.fm
  %i.hd = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.hc, i64 %i.hd, i64 %.04660.i.i.i.i
  %i.he = getelementptr i8, ptr %i.ct, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !14  ; 2 uses
  %i.hg = and i8 %i.hf, 63
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = or i64 %i.hi, %i.hb                     ; 2 uses
  %i.hk = icmp eq i8 %i.hf, %i.fm
  %i.hl = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.hk, i64 %i.hl, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.hm = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.hm, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !76

fastsearch.exit.loopexit.i.i:                     ; preds = %5
  %i.hn = icmp slt i64 %.15065.us.i.i.i.i, 0
  br i1 %i.hn, label %fastsearch.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %fastsearch.exit.loopexit.i.i
  %i.ho = add nuw i64 %.15065.us.i.i.i.i, %i.cv   ; 2 uses
  %i.hp = getelementptr i8, ptr %i.w, i64 %i.ho
  %i.hq = sub i64 %.059118.i.i, %i.ho
  %i.hr = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.hp, i64 noundef %i.hq), !inline_history !224 ; 8 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %Py_DECREF.exit74.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ht = icmp samesign ult i64 %.057119.i.i, 12
  br i1 %i.ht, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.val81.i.i = load ptr, ptr %i.fi, align 8, !tbaa !79
  %i.hu = getelementptr [8 x i8], ptr %.val81.i.i, i64 %.057119.i.i
  store ptr %i.hr, ptr %i.hu, align 8, !tbaa !11
  br label %Py_DECREF.exit72.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.hv = call i32 @PyList_Append(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.hr) #19, !inline_history !224
  %.not.i25.i = icmp eq i32 %i.hv, 0
  %i.hw = load i32, ptr %i.hr, align 8, !tbaa !14 ; 3 uses
  %.not.i71.i.i = icmp sgt i32 %i.hw, -1          ; 2 uses
  br i1 %.not.i25.i, label %bb.bx, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.bv
  br i1 %.not.i71.i.i, label %bb.bw, label %Py_DECREF.exit74.i.i

bb.bw:                                            ; preds = %.split.us.i.i
  %i.hx = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.hr, align 8, !tbaa !14
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %Py_DECREF.exit74.sink.split.i.i, label %Py_DECREF.exit74.i.i

bb.bx:                                            ; preds = %bb.bv
  br i1 %.not.i71.i.i, label %bb.by, label %Py_DECREF.exit72.i.i

bb.by:                                            ; preds = %bb.bx
  %i.hz = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.hz, ptr %i.hr, align 8, !tbaa !14
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bz, label %Py_DECREF.exit72.i.i

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.hr) #19, !inline_history !224
  br label %Py_DECREF.exit72.i.i

Py_DECREF.exit72.i.i:                             ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bu
  %i.ib = add nuw nsw i64 %.057119.i.i, 1         ; 2 uses
  %i.ic = icmp slt i64 %.in.i.i, 2
  %i.id = icmp slt i64 %.15065.us.i.i.i.i, %i.cv
  %or.cond.i.i = or i1 %i.ic, %i.id
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.split.i.i, !llvm.loop !228

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.loopexit.i.i, %.preheader56.i.i.i.i, %bb.br, %bb.bn
  %i.ie = icmp eq i64 %.057119.i.i, 0
  br i1 %i.ie, label %fastsearch.exit.thread.thread221.i.i, label %fastsearch.exit.thread.thread.i.i

fastsearch.exit.thread.thread221.i.i:             ; preds = %fastsearch.exit.thread.i.i, %.lr.ph.i20.i, %.preheader.i19.i
  %.059102224.i.i = phi i64 [ %.059118.i.i, %fastsearch.exit.thread.i.i ], [ %.val.i, %.lr.ph.i20.i ], [ %.val.i, %.preheader.i19.i ]
  %i.if = getelementptr i8, ptr %0, i64 8
  %.val.i23.i = load ptr, ptr %i.if, align 8, !tbaa !16
  %.not87.i.i = icmp eq ptr %.val.i23.i, @PyBytes_Type
  br i1 %.not87.i.i, label %bb.ca, label %.thread.i.i

bb.ca:                                            ; preds = %fastsearch.exit.thread.thread221.i.i
  %i.ig = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ih = icmp ugt i32 %i.ig, -1073741825
  br i1 %i.ih, label %Py_INCREF.exit.i24.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ii = add nuw i32 %i.ig, 1
  store i32 %i.ii, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit.i24.i

Py_INCREF.exit.i24.i:                             ; preds = %bb.cb, %bb.ca
  %i.ij = getelementptr i8, ptr %i.fc, i64 24
  %.val80.i.i = load ptr, ptr %i.ij, align 8, !tbaa !79
  store ptr %0, ptr %.val80.i.i, align 8, !tbaa !11
  br label %bb.cj

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit72.i.i, %fastsearch.exit.thread.i.i
  %.05797218.i.i = phi i64 [ %.057119.i.i, %fastsearch.exit.thread.i.i ], [ %i.ib, %Py_DECREF.exit72.i.i ] ; 5 uses
  %.059102216.i.i = phi i64 [ %.059118.i.i, %fastsearch.exit.thread.i.i ], [ %.15065.us.i.i.i.i, %Py_DECREF.exit72.i.i ]
  %i.ik = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %.059102216.i.i), !inline_history !224 ; 8 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %Py_DECREF.exit74.i.i, label %bb.cc

.thread.i.i:                                      ; preds = %fastsearch.exit.thread.thread221.i.i
  %i.im = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %.059102224.i.i), !inline_history !224 ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %Py_DECREF.exit74.i.i, label %.thread86.i.i

bb.cc:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.io = icmp slt i64 %.05797218.i.i, 12
  br i1 %i.io, label %.thread86.i.i, label %bb.cd

.thread86.i.i:                                    ; preds = %bb.cc, %.thread.i.i
  %.05797217.i.i = phi i64 [ %.05797218.i.i, %bb.cc ], [ 0, %.thread.i.i ] ; 2 uses
  %i.ip = phi ptr [ %i.ik, %bb.cc ], [ %i.im, %.thread.i.i ]
  %i.iq = getelementptr i8, ptr %i.fc, i64 24
  %.val79.i.i = load ptr, ptr %i.iq, align 8, !tbaa !79
  %i.ir = getelementptr [8 x i8], ptr %.val79.i.i, i64 %.05797217.i.i
  store ptr %i.ip, ptr %i.ir, align 8, !tbaa !11
  br label %Py_DECREF.exit68.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.is = call i32 @PyList_Append(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ik) #19, !inline_history !224
  %.not66.i.i = icmp eq i32 %i.is, 0
  %i.it = load i32, ptr %i.ik, align 8, !tbaa !14 ; 3 uses
  %.not.i67.i.i = icmp sgt i32 %i.it, -1          ; 2 uses
  br i1 %.not66.i.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not.i67.i.i, label %bb.cf, label %Py_DECREF.exit74.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.iu = add nsw i32 %i.it, -1                   ; 2 uses
  store i32 %i.iu, ptr %i.ik, align 8, !tbaa !14
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %Py_DECREF.exit74.sink.split.i.i, label %Py_DECREF.exit74.i.i

bb.cg:                                            ; preds = %bb.cd
  br i1 %.not.i67.i.i, label %bb.ch, label %Py_DECREF.exit68.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.iw = add nsw i32 %i.it, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !14
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ci, label %Py_DECREF.exit68.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %i.ik) #19, !inline_history !224
  br label %Py_DECREF.exit68.i.i

Py_DECREF.exit68.i.i:                             ; preds = %bb.ci, %bb.ch, %bb.cg, %.thread86.i.i
  %.05797219.i.i = phi i64 [ %.05797218.i.i, %bb.ci ], [ %.05797218.i.i, %bb.ch ], [ %.05797218.i.i, %bb.cg ], [ %.05797217.i.i, %.thread86.i.i ]
  %i.iy = add i64 %.05797219.i.i, 1
  br label %bb.cj

bb.cj:                                            ; preds = %Py_DECREF.exit68.i.i, %Py_INCREF.exit.i24.i
  %.1.i.i = phi i64 [ 1, %Py_INCREF.exit.i24.i ], [ %i.iy, %Py_DECREF.exit68.i.i ]
  %i.iz = getelementptr i8, ptr %i.fc, i64 16
  store i64 %.1.i.i, ptr %i.iz, align 8, !tbaa !20
  %i.ja = call i32 @PyList_Reverse(ptr noundef nonnull %i.fc) #19, !inline_history !224
  %i.jb = icmp slt i32 %i.ja, 0
  br i1 %i.jb, label %Py_DECREF.exit74.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit74.sink.split.i.i:                  ; preds = %bb.cf, %bb.bw
  %.sink.i22.i = phi ptr [ %i.hr, %bb.bw ], [ %i.ik, %bb.cf ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i22.i) #19, !inline_history !224
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.bs, %Py_DECREF.exit74.sink.split.i.i, %bb.cj, %bb.cf, %bb.ce, %.thread.i.i, %fastsearch.exit.thread.thread.i.i, %bb.bw, %.split.us.i.i
  %i.jc = load i32, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %.not.i.i21.i = icmp sgt i32 %i.jc, -1
  br i1 %.not.i.i21.i, label %bb.ck, label %stringlib_rsplit.exit.i

bb.ck:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %i.fc, align 8, !tbaa !14
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.cl, label %stringlib_rsplit.exit.i

bb.cl:                                            ; preds = %bb.ck
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #19, !inline_history !224
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.cl, %bb.ck, %Py_DECREF.exit74.i.i, %bb.cj, %bb.bm, %bb.bl, %bb.bk, %Py_DECREF.exit69.i.i.i, %bb.bj, %bb.al, %bb.ak
  %.0.i17.i = phi ptr [ null, %bb.ak ], [ %i.fc, %bb.cj ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.al ], [ %i.da, %bb.bj ], [ null, %Py_DECREF.exit69.i.i.i ], [ null, %bb.bk ], [ null, %Py_DECREF.exit74.i.i ], [ null, %bb.ck ], [ null, %bb.cl ]
end_hunk_4
begin_hunk_5_@bytes_split:bb.a
bb.bx:                                            ; preds = %bb.bw
  call void @_Py_Dealloc(ptr noundef nonnull %i.fd) #19, !inline_history !236
  br label %Py_DECREF.exit75.i.i

Py_DECREF.exit75.i.i:                             ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.br
  %i.fn = add nuw nsw i64 %.060102.i.i, 1         ; 2 uses
  %i.fo = add i64 %.062101.i.i, %i.cs
  %i.fp = add i64 %i.fo, %i.fb                    ; 2 uses
  %exitcond.not.i27.i = icmp eq i64 %i.fn, %spec.store.select.i
  br i1 %exitcond.not.i27.i, label %._crit_edge.thread146.i.i, label %bb.bo, !llvm.loop !240

._crit_edge.i.i:                                  ; preds = %bb.bo
  %i.fq = icmp eq i64 %.060102.i.i, 0
  br i1 %i.fq, label %._crit_edge.thread.i.i, label %._crit_edge.thread146.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader.i18.i
  %.062.lcssa143.i.i = phi i64 [ %.062101.i.i, %._crit_edge.i.i ], [ 0, %.preheader.i18.i ]
  %i.fr = getelementptr i8, ptr %0, i64 8
  %.val.i19.i = load ptr, ptr %i.fr, align 8, !tbaa !16
  %.not86.i20.i = icmp eq ptr %.val.i19.i, @PyBytes_Type
  br i1 %.not86.i20.i, label %bb.by, label %._crit_edge.thread146.i.i

bb.by:                                            ; preds = %._crit_edge.thread.i.i
  %i.fs = load i32, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ft = icmp ugt i32 %i.fs, -1073741825
  br i1 %i.ft, label %Py_INCREF.exit.i24.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %i.fs, 1
  store i32 %i.fu, ptr %0, align 8, !tbaa !14
  br label %Py_INCREF.exit.i24.i

Py_INCREF.exit.i24.i:                             ; preds = %bb.bz, %bb.by
  %i.fv = getelementptr i8, ptr %i.ew, i64 24
  %.val83.i.i = load ptr, ptr %i.fv, align 8, !tbaa !79
  store ptr %0, ptr %.val83.i.i, align 8, !tbaa !11
  br label %bb.ci

._crit_edge.thread146.i.i:                        ; preds = %Py_DECREF.exit75.i.i, %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.060.lcssa144.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %.060102.i.i, %._crit_edge.i.i ], [ %spec.store.select.i, %Py_DECREF.exit75.i.i ] ; 3 uses
  %.062.lcssa142.i.i = phi i64 [ %.062.lcssa143.i.i, %._crit_edge.thread.i.i ], [ %.062101.i.i, %._crit_edge.i.i ], [ %i.fp, %Py_DECREF.exit75.i.i ] ; 2 uses
  %i.fw = getelementptr i8, ptr %i.v, i64 %.062.lcssa142.i.i
  %i.fx = sub i64 %.val.i, %.062.lcssa142.i.i
  %i.fy = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.fw, i64 noundef %i.fx), !inline_history !236 ; 8 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %Py_DECREF.exit77.i.i, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.thread146.i.i
  %i.ga = icmp samesign ult i64 %.060.lcssa144.i.i, 12
  br i1 %i.ga, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.gb = getelementptr i8, ptr %i.ew, i64 24
  %.val82.i.i = load ptr, ptr %i.gb, align 8, !tbaa !79
  %i.gc = getelementptr [8 x i8], ptr %.val82.i.i, i64 %.060.lcssa144.i.i
  store ptr %i.fy, ptr %i.gc, align 8, !tbaa !11
  br label %Py_DECREF.exit71.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.gd = call i32 @PyList_Append(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.fy) #19, !inline_history !236
  %.not69.i.i = icmp eq i32 %i.gd, 0
  %i.ge = load i32, ptr %i.fy, align 8, !tbaa !14 ; 3 uses
  %.not.i70.i.i = icmp sgt i32 %i.ge, -1          ; 2 uses
  br i1 %.not69.i.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i70.i.i, label %bb.ce, label %Py_DECREF.exit77.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %i.fy, align 8, !tbaa !14
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %Py_DECREF.exit77.sink.split.i.i, label %Py_DECREF.exit77.i.i

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.i70.i.i, label %bb.cg, label %Py_DECREF.exit71.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.gh = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.fy, align 8, !tbaa !14
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ch, label %Py_DECREF.exit71.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %i.fy) #19, !inline_history !236
  br label %Py_DECREF.exit71.i.i

Py_DECREF.exit71.i.i:                             ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cb
  %i.gj = add nuw i64 %.060.lcssa144.i.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %Py_DECREF.exit71.i.i, %Py_INCREF.exit.i24.i
  %.1.i23.i = phi i64 [ 1, %Py_INCREF.exit.i24.i ], [ %i.gj, %Py_DECREF.exit71.i.i ]
  %i.gk = getelementptr i8, ptr %i.ew, i64 16
  store i64 %.1.i23.i, ptr %i.gk, align 8, !tbaa !20
  br label %stringlib_split.exit.i

Py_DECREF.exit77.sink.split.i.i:                  ; preds = %bb.ce, %bb.bu
  %.sink.i22.i = phi ptr [ %i.fd, %bb.bu ], [ %i.fy, %bb.ce ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i22.i) #19, !inline_history !236
  br label %Py_DECREF.exit77.i.i

Py_DECREF.exit77.i.i:                             ; preds = %bb.bp, %Py_DECREF.exit77.sink.split.i.i, %bb.ce, %bb.cd, %._crit_edge.thread146.i.i, %bb.bu, %bb.bt
  %i.gl = load i32, ptr %i.ew, align 8, !tbaa !14 ; 2 uses
  %.not.i.i21.i = icmp sgt i32 %i.gl, -1
  br i1 %.not.i.i21.i, label %bb.cj, label %stringlib_split.exit.i

bb.cj:                                            ; preds = %Py_DECREF.exit77.i.i
  %i.gm = add nsw i32 %i.gl, -1                   ; 2 uses
  store i32 %i.gm, ptr %i.ew, align 8, !tbaa !14
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ck, label %stringlib_split.exit.i

bb.ck:                                            ; preds = %bb.cj
  call void @_Py_Dealloc(ptr noundef nonnull %i.ew) #19, !inline_history !236
  br label %stringlib_split.exit.i

stringlib_split.exit.i:                           ; preds = %bb.ck, %bb.cj, %Py_DECREF.exit77.i.i, %bb.ci, %bb.bn, %bb.bm, %bb.bl, %Py_DECREF.exit75.i.i.i, %bb.bk, %bb.am, %bb.al
  %.0.i17.i = phi ptr [ null, %bb.al ], [ null, %bb.bn ], [ null, %bb.bm ], [ %i.ew, %bb.ci ], [ %i.cx, %bb.bk ], [ null, %bb.am ], [ null, %Py_DECREF.exit75.i.i.i ], [ null, %bb.bl ], [ null, %Py_DECREF.exit77.i.i ], [ null, %bb.cj ], [ null, %bb.ck ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #19, !inline_history !235
  br label %bytes_split_impl.exit

bytes_split_impl.exit:                            ; preds = %bb.j, %.loopexit.thread.i.i, %Py_DECREF.exit94.i.i, %bb.ah, %bb.ai, %bb.aj, %stringlib_split.exit.i
  %.0.i = phi ptr [ null, %bb.aj ], [ %.0.i17.i, %stringlib_split.exit.i ], [ %i.z, %.loopexit.thread.i.i ], [ null, %bb.j ], [ null, %Py_DECREF.exit94.i.i ], [ null, %bb.ah ], [ null, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cl

bb.cl:                                            ; preds = %Py_DECREF.exit.thread, %bytes_split_impl.exit, %bb.c
  %.037 = phi ptr [ %.0.i, %bytes_split_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.037
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_splitlines(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytes_splitlines._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %bytes_splitlines_impl.exit, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not28 = icmp eq i64 %2, %i.i
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread31
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.k = call i32 @PyObject_IsTrue(ptr noundef %i.j) #19 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bytes_splitlines_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread31
  %.0 = phi i32 [ %i.k, %bb.d ], [ 0, %.thread31 ]
  %i.m = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !20 ; 11 uses
  %i.o = call ptr @PyList_New(i64 noundef 0) #19, !inline_history !241 ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bytes_splitlines_impl.exit, label %.preheader68.i.i

.preheader68.i.i:                                 ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.0, 0
  %i.q = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br i1 %.not.i.i, label %.preheader68.i.split.us.i, label %.preheader68.i.split.i

.preheader68.i.split.us.i:                        ; preds = %.preheader68.i.i, %Py_DECREF.exit59.i.us.i
  %.045.i.us.i = phi i64 [ %.3.i.us.i, %Py_DECREF.exit59.i.us.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %i.r = icmp slt i64 %.045.i.us.i, %.val.i
  br i1 %i.r, label %.preheader.i.us.i, label %bytes_splitlines_impl.exit

.preheader.i.us.i:                                ; preds = %.preheader68.i.split.us.i, %4
  %.174.i.us.i = phi i64 [ %i.u, %4 ], [ %.045.i.us.i, %.preheader68.i.split.us.i ] ; 6 uses
  %i.s = getelementptr i8, ptr %i.m, i64 %.174.i.us.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = add i64 %.174.i.us.i, 1                  ; 7 uses
  switch i8 %i.t, label %4 [
    i8 13, label %bb.f
    i8 10, label %.critedge55.i.us.i
  ]

4:                                                ; preds = %.preheader.i.us.i
  %exitcond.not.i.us.i = icmp eq i64 %i.u, %.val.i
  br i1 %exitcond.not.i.us.i, label %.critedge55.i.us.i, label %.preheader.i.us.i, !llvm.loop !242

bb.f:                                             ; preds = %.preheader.i.us.i
  %i.v = icmp slt i64 %i.u, %.val.i
  br i1 %i.v, label %bb.g, label %.critedge55.i.us.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.m, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = icmp eq i8 %i.x, 10
  %i.z = add nsw i64 %.174.i.us.i, 2
  %spec.select.i.us.i = select i1 %i.y, i64 %i.z, i64 %i.u
  br label %.critedge55.i.us.i

.critedge55.i.us.i:                               ; preds = %4, %.preheader.i.us.i, %bb.g, %bb.f
  %.3.i.us.i = phi i64 [ %spec.select.i.us.i, %bb.g ], [ %i.u, %bb.f ], [ %.val.i, %4 ], [ %i.u, %.preheader.i.us.i ]
  %.0.i.us.i = phi i64 [ %.174.i.us.i, %bb.g ], [ %.174.i.us.i, %bb.f ], [ %.val.i, %4 ], [ %.174.i.us.i, %.preheader.i.us.i ] ; 2 uses
  %i.aa = icmp eq i64 %.045.i.us.i, 0
  %i.ab = icmp eq i64 %.0.i.us.i, %.val.i
  %or.cond.i.us.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i.us.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge55.i.us.i
  %.val.i.us.i = load ptr, ptr %i.q, align 8, !tbaa !16
  %.not67.i.us.i = icmp eq ptr %.val.i.us.i, @PyBytes_Type
  br i1 %.not67.i.us.i, label %.split.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge55.i.us.i
  %i.ac = getelementptr i8, ptr %i.m, i64 %.045.i.us.i
  %i.ad = sub i64 %.0.i.us.i, %.045.i.us.i
  %i.ae = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.ac, i64 noundef %i.ad), !inline_history !241 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit69.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @PyList_Append(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ae) #19, !inline_history !241
  %.not53.i.us.i = icmp eq i32 %i.ag, 0
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %.not.i58.i.us.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i58.i.us.i, label %bb.k, label %Py_DECREF.exit59.i.us.i

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %Py_DECREF.exit59.i.us.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #19, !inline_history !241
  br label %Py_DECREF.exit59.i.us.i

Py_DECREF.exit59.i.us.i:                          ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not53.i.us.i, label %.preheader68.i.split.us.i, label %.loopexit69.i.i

.preheader68.i.split.i:                           ; preds = %.preheader68.i.i, %Py_DECREF.exit59.i.i
  %.045.i.i = phi i64 [ %.3.i.i, %Py_DECREF.exit59.i.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %i.ak = icmp slt i64 %.045.i.i, %.val.i
  br i1 %i.ak, label %.preheader.i.i, label %bytes_splitlines_impl.exit

.preheader.i.i:                                   ; preds = %.preheader68.i.split.i, %bb.m
  %.174.i.i = phi i64 [ %i.an, %bb.m ], [ %.045.i.i, %.preheader68.i.split.i ] ; 3 uses
  %i.al = getelementptr i8, ptr %i.m, i64 %.174.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = add i64 %.174.i.i, 1                    ; 7 uses
  switch i8 %i.am, label %bb.m [
    i8 13, label %bb.n
    i8 10, label %.critedge55.i.i
  ]

bb.m:                                             ; preds = %.preheader.i.i
  %exitcond.not.i.i = icmp eq i64 %i.an, %.val.i
  br i1 %exitcond.not.i.i, label %.critedge55.i.i, label %.preheader.i.i, !llvm.loop !242

bb.n:                                             ; preds = %.preheader.i.i
  %i.ao = icmp slt i64 %i.an, %.val.i
  br i1 %i.ao, label %bb.o, label %.critedge55.i.i

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.m, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, 10
  %i.as = add nsw i64 %.174.i.i, 2
  %spec.select.i.i = select i1 %i.ar, i64 %i.as, i64 %i.an
  br label %.critedge55.i.i

.critedge55.i.i:                                  ; preds = %bb.m, %.preheader.i.i, %bb.o, %bb.n
  %.3.i.i = phi i64 [ %spec.select.i.i, %bb.o ], [ %i.an, %bb.n ], [ %.val.i, %bb.m ], [ %i.an, %.preheader.i.i ] ; 3 uses
  %i.at = icmp eq i64 %.045.i.i, 0
  %i.au = icmp eq i64 %.3.i.i, %.val.i
  %or.cond.i.i = and i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge55.i.i
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !16
  %.not67.i.i = icmp eq ptr %.val.i.i, @PyBytes_Type
  br i1 %.not67.i.i, label %.split.us.i, label %bb.q

.split.us.i:                                      ; preds = %bb.p, %bb.h
  %i.av = call i32 @PyList_Append(ptr noundef nonnull %i.o, ptr noundef nonnull %0) #19, !inline_history !241
  %.not54.i.i = icmp eq i32 %i.av, 0
  br i1 %.not54.i.i, label %bytes_splitlines_impl.exit, label %.loopexit69.i.i

bb.q:                                             ; preds = %bb.p, %.critedge55.i.i
  %i.aw = getelementptr i8, ptr %i.m, i64 %.045.i.i
  %i.ax = sub i64 %.3.i.i, %.045.i.i
  %i.ay = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.aw, i64 noundef %i.ax), !inline_history !241 ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.loopexit69.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call i32 @PyList_Append(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ay) #19, !inline_history !241
  %.not53.i.i = icmp eq i32 %i.ba, 0
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %.not.i58.i.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i58.i.i, label %bb.s, label %Py_DECREF.exit59.i.i

bb.s:                                             ; preds = %bb.r
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !14
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %Py_DECREF.exit59.i.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #19, !inline_history !241
  br label %Py_DECREF.exit59.i.i

Py_DECREF.exit59.i.i:                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not53.i.i, label %.preheader68.i.split.i, label %.loopexit69.i.i

.loopexit69.i.i:                                  ; preds = %Py_DECREF.exit59.i.i, %bb.q, %Py_DECREF.exit59.i.us.i, %bb.i, %.split.us.i
  %i.be = load i32, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.u, label %bytes_splitlines_impl.exit

bb.u:                                             ; preds = %.loopexit69.i.i
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.o, align 8, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bytes_splitlines_impl.exit

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #19, !inline_history !241
  br label %bytes_splitlines_impl.exit

bytes_splitlines_impl.exit:                       ; preds = %.preheader68.i.split.i, %.preheader68.i.split.us.i, %bb.v, %bb.u, %.loopexit69.i.i, %.split.us.i, %bb.e, %bb.d, %bb.c
  %.022 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ %i.o, %.split.us.i ], [ null, %bb.e ], [ null, %bb.v ], [ null, %.loopexit69.i.i ], [ null, %bb.u ], [ %i.o, %.preheader68.i.split.us.i ], [ %i.o, %.preheader68.i.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_startswith(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !43
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.132, i64 noundef %2, i64 noundef 1, i64 noundef 3) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #19
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #19
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !43
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !20
  %i.r = call ptr @_Py_bytes_startswith(ptr noundef %i.p, i64 noundef %.val.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_strip(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
end_hunk_5
