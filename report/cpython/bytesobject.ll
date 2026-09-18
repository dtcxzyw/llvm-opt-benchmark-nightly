Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytesobject?download=true
inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@PyBytes_AsString:bb.a
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.34, ptr noundef %i.f) #19 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyBytes_AsStringAndSize(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1357) #19
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !26 ; 2 uses
  %i.c = getelementptr i8, ptr %.val14, i64 168
  %.val15 = load i64, ptr %i.c, align 8, !tbaa !54
  %i.d = and i64 %.val15, 134217728
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val14, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.34, ptr noundef %i.g) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !48
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.j, align 8, !tbaa !29
  store i64 %.val17, ptr %2, align 8, !tbaa !46
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #20
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val16 = load i64, ptr %i.l, align 8, !tbaa !29
  %.not13 = icmp eq i64 %i.k, %.val16
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !21
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
  %i.e = load i8, ptr %2, align 1, !tbaa !22      ; 2 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = sext i8 %i.e to i32
  %i.h = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #20 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i67.i.i, label %stringlib_rfind.exit, label %bb.h

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
  br i1 %i.n, label %.lr.ph, label %stringlib_rfind.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.0.i.i.i20 = phi ptr [ %i.o, %bb.j ], [ %i.l, %bb.i ]
  %i.o = getelementptr i8, ptr %.0.i.i.i20, i64 -1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %i.q = icmp eq i8 %i.p, %i.e
  br i1 %i.q, label %bb.k, label %bb.j, !llvm.loop !2

bb.k:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  br label %fastsearch.exit.i

bb.l:                                             ; preds = %bb.d
  %i.u = add nsw i64 %3, -1                       ; 6 uses
  %i.v = load i8, ptr %2, align 1, !tbaa !22      ; 5 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i64
  %i.y = shl nuw i64 1, %i.x                      ; 2 uses
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.prol.loopexit, label %.lr.ph.i75.i.i.prol

.lr.ph.i75.i.i.prol:                              ; preds = %bb.l
  %i.z = getelementptr i8, ptr %2, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22   ; 2 uses
  %i.ab = and i8 %i.aa, 63
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = or i64 %i.ad, %i.y                      ; 2 uses
  %i.af = icmp eq i8 %i.aa, %i.v
  %i.ag = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.i.i.prol = select i1 %i.af, i64 %i.ag, i64 %i.u ; 2 uses
  br label %.lr.ph.i75.i.i.prol.loopexit

.lr.ph.i75.i.i.prol.loopexit:                     ; preds = %.lr.ph.i75.i.i.prol, %bb.l
  %.060.i.i.i.unr = phi i64 [ %i.u, %bb.l ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.u, %bb.l ], [ %i.ag, %.lr.ph.i75.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.y, %bb.l ], [ %i.ae, %.lr.ph.i75.i.i.prol ]
  %.lcssa24.unr = phi i64 [ poison, %bb.l ], [ %i.ae, %.lr.ph.i75.i.i.prol ]
  %spec.select.i76.i.i.lcssa.unr = phi i64 [ poison, %bb.l ], [ %spec.select.i76.i.i.prol, %.lr.ph.i75.i.i.prol ]
  %i.ah = icmp eq i64 %3, 2
  br i1 %i.ah, label %.preheader56.i.i.i, label %.lr.ph.i75.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i75.i.i, %.lr.ph.i75.i.i.prol.loopexit
  %.lcssa24 = phi i64 [ %.lcssa24.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %i.bv, %.lr.ph.i75.i.i ] ; 2 uses
  %spec.select.i76.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.lcssa.unr, %.lr.ph.i75.i.i.prol.loopexit ], [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ]
  %i.ai = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i.i.i

.lr.ph66.split.us.i.i.i:                          ; preds = %bb.r, %.preheader56.i.i.i
  %.14865.us.i.i.i = phi i64 [ %i.bg, %bb.r ], [ %i.ai, %.preheader56.i.i.i ] ; 5 uses
  %i.aj = getelementptr i8, ptr %0, i64 %.14865.us.i.i.i ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = icmp eq i8 %i.ak, %i.v
  br i1 %i.al, label %.preheader.us.i78.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i77.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not.us.i77.i.i, label %stringlib_rfind.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.aj, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %.lcssa24
  %.not51.us.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not51.us.i.i.i, i64 %3, i64 0
  br label %bb.r

.preheader.us.i78.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.o
  %.04662.us.i.i.i = phi i64 [ %i.ax, %bb.o ], [ %i.u, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.at = getelementptr i8, ptr %i.aj, i64 %.04662.us.i.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = getelementptr i8, ptr %2, i64 %.04662.us.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %.not52.us.i.i.i = icmp eq i8 %i.au, %i.aw
  br i1 %.not52.us.i.i.i, label %bb.o, label %.thread.us.i.i.i

bb.o:                                             ; preds = %.preheader.us.i78.i.i
  %i.ax = add nsw i64 %.04662.us.i.i.i, -1
  %i.ay = icmp sgt i64 %.04662.us.i.i.i, 1
  br i1 %i.ay, label %.preheader.us.i78.i.i, label %fastsearch.exit.i, !llvm.loop !3

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i78.i.i
  %.not53.us.i.i.i = icmp eq i64 %.14865.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.us.i.i.i
  %i.az = getelementptr i8, ptr %i.aj, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %.lcssa24
  %.not54.us.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not54.us.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.us.i.i.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i76.i.i.lcssa, %bb.q ], [ %i.as, %bb.n ], [ %3, %bb.p ]
  %i.bf = sub nsw i64 %.14865.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = icmp sgt i64 %i.bf, 0
  br i1 %i.bh, label %.lr.ph66.split.us.i.i.i, label %stringlib_rfind.exit, !llvm.loop !4

.lr.ph.i75.i.i:                                   ; preds = %.lr.ph.i75.i.i.prol.loopexit, %.lr.ph.i75.i.i
  %.060.i.i.i = phi i64 [ %spec.select.i76.i.i.1, %.lr.ph.i75.i.i ], [ %.060.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bx, %.lr.ph.i75.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i = phi i64 [ %i.bv, %.lr.ph.i75.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i75.i.i.prol.loopexit ]
  %i.bi = getelementptr i8, ptr %2, i64 %.04759.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22  ; 2 uses
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = or i64 %i.bm, %.04958.i.i.i
  %i.bo = icmp eq i8 %i.bj, %i.v
  %i.bp = add nsw i64 %.04759.i.i.i, -1           ; 2 uses
  %spec.select.i76.i.i = select i1 %i.bo, i64 %i.bp, i64 %.060.i.i.i
  %i.bq = getelementptr i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !22  ; 2 uses
  %i.bs = and i8 %i.br, 63
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = or i64 %i.bu, %i.bn                     ; 2 uses
  %i.bw = icmp eq i8 %i.br, %i.v
  %i.bx = add nsw i64 %.04759.i.i.i, -2           ; 2 uses
  %spec.select.i76.i.i.1 = select i1 %i.bw, i64 %i.bx, i64 %spec.select.i76.i.i ; 2 uses
  %i.by = icmp sgt i64 %.04759.i.i.i, 2
  br i1 %i.by, label %.lr.ph.i75.i.i, label %.preheader56.i.i.i, !llvm.loop !5

fastsearch.exit.i:                                ; preds = %bb.o, %bb.k, %bb.h
  %.0.i.i = phi i64 [ %i.t, %bb.k ], [ %i.k, %bb.h ], [ %.14865.us.i.i.i, %bb.o ]
  %.0.i.fr.i = freeze i64 %.0.i.i                 ; 2 uses
  %i.bz = icmp slt i64 %.0.i.fr.i, 0
  %i.ca = select i1 %i.bz, i64 0, i64 %4
  %spec.select.i = add i64 %i.ca, %.0.i.fr.i
  br label %stringlib_rfind.exit

stringlib_rfind.exit:                             ; preds = %bb.m, %bb.r, %bb.j, %bb.i, %bb.b, %bb.c, %bb.e, %bb.g, %fastsearch.exit.i
  %.011.i = phi i64 [ %i.b, %bb.b ], [ -1, %bb.g ], [ %spec.select.i, %fastsearch.exit.i ], [ -1, %bb.i ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.m ]
  ret i64 %.011.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyBytes_Repr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  %i.c = tail call ptr @_Py_bytes_repr(ptr noundef %i.a, i64 noundef %.val, i32 noundef %1, ptr noundef nonnull @.str.36)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_bytes_repr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.082101 = phi i64 [ %.183, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %.084100 = phi i64 [ %.185, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %.08699 = phi i64 [ %i.i, %bb.f ], [ 3, %bb.a ] ; 2 uses
  %.08898 = phi i64 [ %i.j, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %.08898
  %i.c = load i8, ptr %i.b, align 1, !tbaa !22    ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 39, label %bb.b
    i8 34, label %bb.c
    i8 92, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 13, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i64 %.084100, 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.e = add i64 %.082101, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.f = add i8 %i.c, -127
  %or.cond = icmp ult i8 %i.f, -95
  %spec.select = select i1 %or.cond, i64 4, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.c, %bb.b
  %.185 = phi i64 [ %.084100, %.lr.ph ], [ %.084100, %bb.d ], [ %i.d, %bb.b ], [ %.084100, %bb.c ], [ %.084100, %.lr.ph ], [ %.084100, %.lr.ph ], [ %.084100, %.lr.ph ] ; 4 uses
  %.183 = phi i64 [ %.082101, %.lr.ph ], [ %.082101, %bb.d ], [ %.082101, %bb.b ], [ %i.e, %bb.c ], [ %.082101, %.lr.ph ], [ %.082101, %.lr.ph ], [ %.082101, %.lr.ph ] ; 2 uses
  %.079 = phi i64 [ 2, %.lr.ph ], [ %spec.select, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ], [ 2, %.lr.ph ], [ 2, %.lr.ph ], [ 2, %.lr.ph ] ; 2 uses
  %i.g = xor i64 %.079, 9223372036854775807
  %i.h = icmp sgt i64 %.08699, %i.g
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %.079, %.08699                   ; 4 uses
  %i.j = add nuw nsw i64 %.08898, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.f
  %i.k = icmp eq i64 %.183, 0
  %i.l = icmp ne i32 %2, 0
  %i.m = icmp ne i64 %.185, 0                     ; 2 uses
  %or.cond4 = and i1 %i.l, %i.m
  %or.cond6.not = select i1 %or.cond4, i1 %i.k, i1 false ; 2 uses
  %spec.select94 = select i1 %or.cond6.not, i8 34, i8 39 ; 2 uses
  %or.cond9 = xor i1 %i.m, %or.cond6.not
  br i1 %or.cond9, label %bb.g, label %.._crit_edge_crit_edge

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub i64 9223372036854775807, %.185
  %i.o = icmp sgt i64 %i.i, %i.n
  br i1 %i.o, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = add i64 %.185, %i.i
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
  %.val4.i = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 3 uses
  %i.w = getelementptr i8, ptr %.0.i, i64 1
  store i8 98, ptr %.0.i, align 1, !tbaa !22
  %i.x = getelementptr i8, ptr %.0.i, i64 2       ; 2 uses
  store i8 %spec.select94119, ptr %i.w, align 1, !tbaa !22
  br i1 %i.a, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %bb.t
  %.080105 = phi ptr [ %.1, %bb.t ], [ %i.x, %_PyUnicode_DATA.exit ] ; 18 uses
  %.189104 = phi i64 [ %i.ba, %bb.t ], [ 0, %_PyUnicode_DATA.exit ] ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %.189104
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22    ; 7 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = icmp eq i8 %i.z, %spec.select94119
  %i.ac = icmp eq i8 %i.z, 92
  %or.cond12 = or i1 %i.ab, %i.ac
  br i1 %or.cond12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph106
  %i.ad = getelementptr i8, ptr %.080105, i64 1
  store i8 92, ptr %.080105, align 1, !tbaa !22
  %i.ae = getelementptr i8, ptr %.080105, i64 2
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !22
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph106
  switch i8 %i.z, label %bb.q [
    i8 9, label %bb.n
    i8 10, label %bb.o
    i8 13, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %.080105, i64 1
  store i8 92, ptr %.080105, align 1, !tbaa !22
  %i.ag = getelementptr i8, ptr %.080105, i64 2
  store i8 116, ptr %i.af, align 1, !tbaa !22
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %.080105, i64 1
  store i8 92, ptr %.080105, align 1, !tbaa !22
  %i.ai = getelementptr i8, ptr %.080105, i64 2
  store i8 110, ptr %i.ah, align 1, !tbaa !22
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %.080105, i64 1
  store i8 92, ptr %.080105, align 1, !tbaa !22
  %i.ak = getelementptr i8, ptr %.080105, i64 2
  store i8 114, ptr %i.aj, align 1, !tbaa !22
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.al = add i8 %i.z, -127
  %or.cond15 = icmp ult i8 %i.al, -95
  %i.am = getelementptr i8, ptr %.080105, i64 1   ; 2 uses
  br i1 %or.cond15, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 92, ptr %.080105, align 1, !tbaa !22
  %i.an = getelementptr i8, ptr %.080105, i64 2
  store i8 120, ptr %i.am, align 1, !tbaa !22
  %i.ao = load ptr, ptr @Py_hexdigits, align 8, !tbaa !48
  %i.ap = lshr i32 %i.aa, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %i.at = getelementptr i8, ptr %.080105, i64 3
  store i8 %i.as, ptr %i.an, align 1, !tbaa !22
  %i.au = load ptr, ptr @Py_hexdigits, align 8, !tbaa !48
  %i.av = and i32 %i.aa, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %i.az = getelementptr i8, ptr %.080105, i64 4
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !22
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i8 %i.z, ptr %.080105, align 1, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.p, %bb.s, %bb.r, %bb.o, %bb.l
  %.1 = phi ptr [ %i.ae, %bb.l ], [ %i.ag, %bb.n ], [ %i.ai, %bb.o ], [ %i.ak, %bb.p ], [ %i.az, %bb.r ], [ %i.am, %bb.s ] ; 2 uses
  %i.ba = add nuw nsw i64 %.189104, 1             ; 2 uses
  %exitcond111.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond111.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !119

._crit_edge107:                                   ; preds = %bb.t, %_PyUnicode_DATA.exit
  %.080.lcssa = phi ptr [ %i.x, %_PyUnicode_DATA.exit ], [ %.1, %bb.t ]
end_hunk_0
begin_hunk_1_@fastsearch:bb.a
.preheader.i:                                     ; preds = %bb.f
  %i.h = icmp ult ptr %0, %i.f
  br i1 %i.h, label %.lr.ph.i, label %stringlib_find_char.exit

bb.g:                                             ; preds = %bb.f
  %i.i = sext i8 %i.e to i32
  %i.j = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.i, i64 noundef %1) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.021.i = phi ptr [ %i.s, %bb.j ], [ %0, %.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.021.i, align 1, !tbaa !22
  %i.o = icmp eq i8 %i.n, %i.e
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %.021.i to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %stringlib_find_char.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.f
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !153

bb.k:                                             ; preds = %bb.e
  %i.t = load i8, ptr %2, align 1, !tbaa !22      ; 2 uses
  %i.u = icmp sgt i64 %1, 15
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = sext i8 %i.t to i32
  %i.w = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %1) #20 ; 2 uses
  %.not.i67 = icmp eq ptr %i.w, null
  br i1 %.not.i67, label %stringlib_find_char.exit, label %bb.m

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
  br i1 %i.ac, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.0.i142 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i142, i64 -1  ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.af = icmp eq i8 %i.ae, %i.t
  br i1 %i.af, label %bb.p, label %bb.o, !llvm.loop !2

bb.p:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %stringlib_find_char.exit

bb.q:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %4, 9223372036854775807
  %i.ak = load i8, ptr %2, align 1, !tbaa !22     ; 3 uses
  br i1 %i.aj, label %.lr.ph.i68.preheader, label %.lr.ph.i70

.lr.ph.i68.preheader:                             ; preds = %bb.q
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i68.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i68.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi143 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !22
  %wide.load144 = load <2 x i8>, ptr %i.am, align 1, !tbaa !22
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load144, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi143, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i68.preheader145

.lr.ph.i68.preheader145:                          ; preds = %.lr.ph.i68.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader145, %.lr.ph.i68
  %.09.i = phi i64 [ %i.az, %.lr.ph.i68 ], [ %.09.i.ph, %.lr.ph.i68.preheader145 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i68 ], [ %.078.i.ph, %.lr.ph.i68.preheader145 ]
  %i.av = getelementptr i8, ptr %0, i64 %.09.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = icmp eq i8 %i.aw, %i.ak
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.078.i, %i.ay         ; 2 uses
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i69, label %stringlib_find_char.exit, label %.lr.ph.i68, !llvm.loop !155

.lr.ph.i70:                                       ; preds = %bb.q, %bb.s
  %.016.i71 = phi i64 [ %.1.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.01115.i = phi i64 [ %i.bf, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %.01115.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = icmp eq i8 %i.bb, %i.ak
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i70
  %i.bd = add i64 %.016.i71, 1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %stringlib_find_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bd, %bb.r ], [ %.016.i71, %.lr.ph.i70 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i72, label %stringlib_find_char.exit, label %.lr.ph.i70, !llvm.loop !156

bb.t:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = add nsw i64 %3, -1                      ; 12 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22  ; 5 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bn = icmp eq i64 %3, 2
  br i1 %i.bn, label %.lr.ph.i73.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i73

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.w
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.du, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod162 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bo = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.06999.i.epil.init
  %i.bu = icmp eq i8 %i.bp, %i.bm
  %i.bv = xor i64 %.068100.i.epil.init, -1
  %i.bw = add nsw i64 %i.bk, %i.bv
  %.171.i.epil = select i1 %i.bu, i64 %i.bw, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i73.epil.preheader
  %.lcssa159 = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i73.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i73.epil.preheader ]
  %i.bx = sub nsw i64 %1, %3                      ; 3 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa159, %i.cb                ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.ag
  %.066110.us.i = phi i64 [ %i.dd, %bb.ag ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.ag ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cc
  %.not89.us.i = icmp eq i64 %i.cm, 0
  %i.cn = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cn, %.066110.us.i
  br label %bb.ag

bb.z:                                             ; preds = %.preheader.us.i, %bb.aa
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cs, %bb.aa ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.de, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %bb.aa, label %._crit_edge104.us.i

bb.aa:                                            ; preds = %bb.z
  %i.cs = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.cs, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.z, !llvm.loop !157

._crit_edge104.us.i:                              ; preds = %bb.z
  %i.ct = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.ct, %i.bx
  br i1 %.not91.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge104.us.i
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22
  %i.cw = and i8 %i.cv, 63
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cc
  %.not92.us.i = icmp eq i64 %i.cz, 0
  br i1 %.not92.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge104.us.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ac ], [ %3, %bb.ab ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.ag

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.aa
  br i1 %i.b, label %bb.ae, label %stringlib_find_char.exit

bb.ae:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.da = add i64 %.072109.us.i, 1                ; 2 uses
  %i.db = icmp eq i64 %i.da, %4
  br i1 %i.db, label %stringlib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = add i64 %.066110.us.i, %i.bk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.y, %bb.x
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.x ], [ %.072109.us.i, %bb.y ], [ %.072109.us.i, %bb.ad ], [ %i.da, %bb.af ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ad ], [ %i.dc, %bb.af ]
  %i.dd = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dd, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !158

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.de = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dy, %.lr.ph.i73 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.du, %.lr.ph.i73 ]
  %.07098.i = phi i64 [ %i.bk, %.new ], [ %.171.i.1, %.lr.ph.i73 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i73 ]
  %i.df = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22  ; 2 uses
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = or i64 %i.dj, %.06999.i
  %i.dl = icmp eq i8 %i.dg, %i.bm
  %i.dm = xor i64 %.068100.i, -1
  %i.dn = add nsw i64 %i.bk, %i.dm
  %.171.i = select i1 %i.dl, i64 %i.dn, i64 %.07098.i
  %i.do = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !22  ; 2 uses
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = or i64 %i.dt, %i.dk                     ; 3 uses
  %i.dv = icmp eq i8 %i.dq, %i.bm
  %i.dw = xor i64 %.068100.i, -2
  %i.dx = add nsw i64 %i.bk, %i.dw
  %.171.i.1 = select i1 %i.dv, i64 %i.dx, i64 %.171.i ; 3 uses
  %i.dy = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i73, !llvm.loop !159

.loopexit.i:                                      ; preds = %bb.ag
  %i.dz = select i1 %i.b, i64 %.274.us.i, i64 -1
  br label %stringlib_find_char.exit

bb.ah:                                            ; preds = %bb.v
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.t
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !22     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter164 = and i64 %i.ei, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.am
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !22  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.am
  %.060.i.unr = phi i64 [ %i.ei, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.ei, %bb.am ], [ %i.eu, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.em, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %.lcssa156.unr = phi i64 [ poison, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i75

.preheader56.i:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa156 = phi i64 [ %.lcssa156.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gj, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.ew = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.as
  %.14865.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = icmp eq i8 %i.ey, %i.ej
  br i1 %i.ez, label %.preheader.us.i78, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %stringlib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !22
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa156
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ap
  %.04662.us.i = phi i64 [ %i.fl, %bb.ap ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22
  %i.fj = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.ap, label %.thread.us.i

bb.ap:                                            ; preds = %.preheader.us.i78
  %i.fl = add nsw i64 %.04662.us.i, -1
  %i.fm = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fm, label %.preheader.us.i78, label %stringlib_find_char.exit, !llvm.loop !3

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fn = getelementptr i8, ptr %i.ex, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !22
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %.lcssa156
  %.not54.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.ar ], [ %i.fg, %bb.ao ], [ %3, %bb.aq ]
  %i.ft = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fu = add nsw i64 %i.ft, -1
  %i.fv = icmp sgt i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !4

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gl, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fw = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !22  ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04958.i
  %i.gc = icmp eq i8 %i.fx, %i.ej
  %i.gd = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.gc, i64 %i.gd, i64 %.060.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !22  ; 2 uses
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = or i64 %i.gi, %i.gb                     ; 2 uses
  %i.gk = icmp eq i8 %i.gf, %i.ej
  %i.gl = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gk, i64 %i.gl, i64 %spec.select.i76 ; 2 uses
  %i.gm = icmp sgt i64 %.04759.i, 2
  br i1 %i.gm, label %.lr.ph.i75, label %.preheader56.i, !llvm.loop !5

stringlib_find_char.exit:                         ; preds = %bb.ae, %._crit_edge104.us.thread.i.loopexit, %bb.as, %bb.an, %bb.ap, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i68, %bb.n, %middle.block, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.al, %bb.ak, %bb.aj
  %.0 = phi i64 [ -1, %bb.o ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.14865.us.i, %bb.ap ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ %i.dz, %.loopexit.i ], [ -1, %bb.j ], [ %i.au, %middle.block ], [ -1, %bb.as ], [ %.1.i, %bb.s ], [ -1, %bb.an ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.ae ]
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
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #8 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 4 uses
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
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !22 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !22 ; 2 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !160

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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
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

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !161

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
end_hunk_1
begin_hunk_2_@stringlib_adaptive_find:.lr.ph.preheader

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #10 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !95
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !96
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !164

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !164

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !97
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !98
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %stringlib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !99
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %stringlib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !100
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.05559
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.05559
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !100
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.05559, -1
  %i.bb = icmp sgt i64 %.05559, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !165

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !22
  %i.bf = sub nuw nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub nuw nsw i64 %i.ar, %.061
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.061
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !22
  %i.bn = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !166
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !99   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !95     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !98
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
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1138, align 1, !tbaa !22
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0126199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = getelementptr i8, ptr %i.af, i64 %.0126199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr i8, ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr i8, ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !167

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !168

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1127200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1127200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2139, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !22  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr i8, ptr %i.az, i64 %.4141.idx ; 2 uses
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
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6143.us, align 1, !tbaa !22
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6143.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.l
  %.6143.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.l ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph207.us, %bb.i
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cb, %bb.i ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !22
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %.not153.us = icmp eq i8 %i.by, %i.ca
  br i1 %.not153.us, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cb = add i64 %.0124205.us, 1                 ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cb, %.fr240
end_hunk_2
begin_hunk_3_@bytes_replace:bb.a
bb.bu:                                            ; preds = %bb.bt
  %i.hv = getelementptr i8, ptr %i.ht, i64 32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %bb.bu
  %.in.i90.i.i = phi i64 [ %.1.i.ph.i89.i.i, %bb.bu ], [ %i.hw, %bb.by ] ; 2 uses
  %.05264.i.i.i = phi ptr [ %i.hv, %bb.bu ], [ %.1.i.i.i, %bb.by ] ; 4 uses
  %.05363.i.i.i = phi ptr [ %i.gv, %bb.bu ], [ %.154.i.i.i, %bb.by ] ; 6 uses
  %i.hw = add nsw i64 %.in.i90.i.i, -1
  %i.hx = ptrtoint ptr %.05363.i.i.i to i64       ; 2 uses
  %i.hy = sub i64 %i.gy, %i.hx                    ; 2 uses
  %i.hz = call ptr @memchr(ptr noundef %.05363.i.i.i, i32 noundef %i.gx, i64 noundef %i.hy) #20, !inline_history !206 ; 4 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %split.i93.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ib = icmp eq ptr %i.hz, %.05363.i.i.i
  br i1 %i.ib, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ic, %i.hx                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05264.i.i.i, ptr align 1 %.05363.i.i.i, i64 %i.id, i1 false)
  %i.ie = getelementptr i8, ptr %.05264.i.i.i, i64 %i.id
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink.i.i.i = phi ptr [ %i.ie, %bb.bx ], [ %.05264.i.i.i, %bb.bw ] ; 2 uses
  %.053.pn.i.i.i = phi ptr [ %i.hz, %bb.bx ], [ %.05363.i.i.i, %bb.bw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sink.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val29, i64 range(i64 1, 0) %.val30, i1 false)
  %.1.i.i.i = getelementptr i8, ptr %.sink.i.i.i, i64 %.val30 ; 2 uses
  %.154.i.i.i = getelementptr i8, ptr %.053.pn.i.i.i, i64 1 ; 3 uses
  %i.if = icmp sgt i64 %.in.i90.i.i, 1
  br i1 %i.if, label %bb.bv, label %._crit_edge.i91.i.i, !llvm.loop !208

._crit_edge.i91.i.i:                              ; preds = %bb.by
  %.pre.i92.i.i = ptrtoint ptr %.154.i.i.i to i64
  %.pre65.i.i.i = sub i64 %i.gy, %.pre.i92.i.i
  br label %split.i93.i.i, !llvm.loop !208

split.i93.i.i:                                    ; preds = %bb.bv, %._crit_edge.i91.i.i
  %.pre-phi66.i.i.i = phi i64 [ %.pre65.i.i.i, %._crit_edge.i91.i.i ], [ %i.hy, %bb.bv ]
  %.053.lcssa.i.i.i = phi ptr [ %.154.i.i.i, %._crit_edge.i91.i.i ], [ %.05363.i.i.i, %bb.bv ]
  %.052.lcssa.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge.i91.i.i ], [ %.05264.i.i.i, %bb.bv ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052.lcssa.i.i.i, ptr align 1 %.053.lcssa.i.i.i, i64 %.pre-phi66.i.i.i, i1 false)
  br label %bytes_replace_impl.exit

bb.bz:                                            ; preds = %bb.bn
  %i.ig = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.ih = icmp slt i64 %.val.i.i, 0
  br i1 %i.ih, label %stringlib_count.exit.thread.i105.i.i, label %stringlib_count.exit.i97.i.i

stringlib_count.exit.i97.i.i:                     ; preds = %bb.bz
  %i.ii = call fastcc i64 @fastsearch(ptr noundef %i.ig, i64 noundef %.val.i.i, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val28, i64 noundef range(i64 1, -9223372036854775808) %.0.i.i, i32 noundef 0), !inline_history !209 ; 2 uses
  %..i.i98.i.i = call i64 @llvm.smax.i64(i64 %i.ii, i64 0) ; 3 uses
  %i.ij = icmp slt i64 %i.ii, 1
  br i1 %i.ij, label %stringlib_count.exit.thread.i105.i.i, label %bb.cd

stringlib_count.exit.thread.i105.i.i:             ; preds = %stringlib_count.exit.i97.i.i, %bb.bz
  %i.ik = getelementptr i8, ptr %0, i64 8
  %.val.i.i106.i.i = load ptr, ptr %i.ik, align 8, !tbaa !26
  %.not.i.i107.i.i = icmp eq ptr %.val.i.i106.i.i, @PyBytes_Type
  br i1 %.not.i.i107.i.i, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %stringlib_count.exit.thread.i105.i.i
  %i.il = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.im = icmp ugt i32 %i.il, -1073741825
  br i1 %i.im, label %bytes_replace_impl.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.in = add nuw i32 %i.il, 1
  store i32 %i.in, ptr %0, align 8, !tbaa !22
  br label %bytes_replace_impl.exit

bb.cc:                                            ; preds = %stringlib_count.exit.thread.i105.i.i
  %.val5.i.i108.i.i = load i64, ptr %i.t, align 8, !tbaa !29
  %i.io = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ig, i64 noundef %.val5.i.i108.i.i), !inline_history !210
  br label %bytes_replace_impl.exit

bb.cd:                                            ; preds = %stringlib_count.exit.i97.i.i
  %i.ip = sub i64 %.val30, %.val28                ; 2 uses
  %i.iq = sub nuw nsw i64 9223372036854775807, %.val.i.i
  %i.ir = udiv i64 %i.iq, %..i.i98.i.i
  %i.is = icmp sgt i64 %i.ip, %i.ir
  br i1 %i.is, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.it = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !21
  call void @PyErr_SetString(ptr noundef %i.it, ptr noundef nonnull @.str.158) #19, !inline_history !209
  br label %bytes_replace_impl.exit

bb.cf:                                            ; preds = %bb.cd
  %i.iu = mul i64 %..i.i98.i.i, %i.ip
  %i.iv = add i64 %i.iu, %.val.i.i
  %i.iw = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.iv), !inline_history !209 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bytes_replace_impl.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iy = getelementptr i8, ptr %i.iw, i64 32
  %i.iz = getelementptr i8, ptr %i.ig, i64 %.val.i.i
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %bb.cg
  %.in.i99.i.i = phi i64 [ %..i.i98.i.i, %bb.cg ], [ %i.jb, %bb.cj ] ; 2 uses
  %.06073.i.i.i = phi ptr [ %i.iy, %bb.cg ], [ %.1.i101.i.i, %bb.cj ] ; 4 uses
  %.06172.i.i.i = phi ptr [ %i.ig, %bb.cg ], [ %.162.i.i.i, %bb.cj ] ; 6 uses
  %i.jb = add nsw i64 %.in.i99.i.i, -1
  %i.jc = ptrtoint ptr %.06172.i.i.i to i64
  %i.jd = sub i64 %i.ja, %i.jc                    ; 2 uses
  %i.je = call fastcc i64 @fastsearch(ptr noundef %.06172.i.i.i, i64 noundef %i.jd, ptr noundef %.val, i64 noundef range(i64 2, 0) %.val28, i64 noundef -1, i32 noundef 1), !inline_history !209 ; 4 uses
  switch i64 %i.je, label %bb.ci [
    i64 -1, label %split.i104.i.i
    i64 0, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.jf = getelementptr i8, ptr %.06172.i.i.i, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06073.i.i.i, ptr align 1 %.06172.i.i.i, i64 %i.je, i1 false)
  %i.jg = getelementptr i8, ptr %.06073.i.i.i, i64 %i.je
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink.i100.i.i = phi ptr [ %i.jg, %bb.ci ], [ %.06073.i.i.i, %bb.ch ] ; 2 uses
  %.061.pn.i.i.i = phi ptr [ %i.jf, %bb.ci ], [ %.06172.i.i.i, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sink.i100.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val29, i64 range(i64 1, 0) %.val30, i1 false)
  %.1.i101.i.i = getelementptr i8, ptr %.sink.i100.i.i, i64 %.val30 ; 2 uses
  %.162.i.i.i = getelementptr i8, ptr %.061.pn.i.i.i, i64 %.val28 ; 3 uses
  %i.jh = icmp samesign ugt i64 %.in.i99.i.i, 1
  br i1 %i.jh, label %bb.ch, label %._crit_edge.i102.i.i, !llvm.loop !211

._crit_edge.i102.i.i:                             ; preds = %bb.cj
  %.pre.i103.i.i = ptrtoint ptr %.162.i.i.i to i64
  %.pre74.i.i.i = sub i64 %i.ja, %.pre.i103.i.i
  br label %split.i104.i.i, !llvm.loop !211

split.i104.i.i:                                   ; preds = %bb.ch, %._crit_edge.i102.i.i
  %.pre-phi75.i.i.i = phi i64 [ %.pre74.i.i.i, %._crit_edge.i102.i.i ], [ %i.jd, %bb.ch ]
  %.061.lcssa.i.i.i = phi ptr [ %.162.i.i.i, %._crit_edge.i102.i.i ], [ %.06172.i.i.i, %bb.ch ]
  %.060.lcssa.i.i.i = phi ptr [ %.1.i101.i.i, %._crit_edge.i102.i.i ], [ %.06073.i.i.i, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.060.lcssa.i.i.i, ptr align 1 %.061.lcssa.i.i.i, i64 %.pre-phi75.i.i.i, i1 false)
  br label %bytes_replace_impl.exit

bytes_replace_impl.exit:                          ; preds = %bb.bm, %.lr.ph.i77.i.i, %bb.be, %bb.bd, %split.i104.i.i, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %split.i93.i.i, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %._crit_edge.i67.i.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %split.i.i.i, %.lr.ph.i.i.i.i._crit_edge, %bb.ak, %bb.aj, %bb.ai, %.loopexit.i.i.i, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.s, %bb.r, %bb.q, %bb.m, %bb.l, %bb.k, %Py_DECREF.exit.thread, %bb.d, %bb.c, %bb.b
  %.019 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ %0, %bb.l ], [ %0, %bb.r ], [ %0, %bb.x ], [ null, %bb.ab ], [ %0, %bb.aj ], [ %0, %bb.aq ], [ %0, %bb.ca ], [ %i.io, %bb.cc ], [ %0, %bb.bq ], [ %i.aa, %bb.m ], [ %0, %bb.k ], [ %i.ai, %bb.s ], [ %0, %bb.q ], [ %i.aq, %bb.y ], [ %0, %bb.w ], [ null, %bb.aa ], [ %i.ay, %.loopexit.i.i.i ], [ null, %.lr.ph.i.i.i.i._crit_edge ], [ %i.dj, %split.i.i.i ], [ %i.dh, %bb.ak ], [ %0, %bb.ai ], [ null, %bb.as ], [ %i.eh, %._crit_edge.i67.i.i ], [ %i.ee, %bb.ar ], [ %0, %bb.ap ], [ %0, %bb.ay ], [ null, %bb.bb ], [ %0, %bb.az ], [ %i.fh, %bb.ba ], [ %i.fi, %bb.bc ], [ %0, %bb.cb ], [ %0, %bb.bh ], [ null, %bb.bk ], [ %0, %bb.bi ], [ %i.gf, %bb.bj ], [ %i.gg, %bb.bl ], [ %i.fi, %bb.be ], [ null, %bb.bt ], [ null, %bb.bs ], [ %i.ht, %split.i93.i.i ], [ %i.hl, %bb.br ], [ %0, %bb.bp ], [ null, %bb.cf ], [ null, %bb.ce ], [ %i.iw, %split.i104.i.i ], [ %i.fi, %bb.bd ], [ %i.gg, %.lr.ph.i77.i.i ], [ %i.gg, %bb.bm ]
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !70
  %.not26 = icmp eq ptr %i.jj, null
  br i1 %.not26, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bytes_replace_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %3) #19
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bytes_replace_impl.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !70
  %.not27 = icmp eq ptr %i.jl, null
  br i1 %.not27, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @PyBuffer_Release(ptr noundef nonnull %4) #19
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.019
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_removeprefix(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call i32 @PyObject_GetBuffer(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bytes_removeprefix_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !69 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val21.i = load i64, ptr %i.d, align 8, !tbaa !29 ; 3 uses
  %i.e = icmp sge i64 %.val21.i, %.val4
  %i.f = icmp sgt i64 %.val4, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.c, ptr readonly %.val, i64 %.val4), !inline_history !212
  %i.g = icmp eq i32 %bcmp.i, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.c, i64 %.val4
  %i.i = sub nuw nsw i64 %.val21.i, %.val4
  %i.j = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.h, i64 noundef %i.i), !inline_history !212
  br label %bytes_removeprefix_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !26
  %.not.i = icmp eq ptr %.val.i, @PyBytes_Type
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %bytes_removeprefix_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !22
  br label %bytes_removeprefix_impl.exit

bb.h:                                             ; preds = %bb.e
  %i.o = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.c, i64 noundef %.val21.i), !inline_history !212
  br label %bytes_removeprefix_impl.exit

bytes_removeprefix_impl.exit:                     ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.d ], [ %i.o, %bb.h ], [ %0, %bb.f ], [ %0, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %.not3 = icmp eq ptr %i.q, null
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bytes_removeprefix_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bytes_removeprefix_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_removesuffix(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call i32 @PyObject_GetBuffer(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bytes_removesuffix_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !69 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val22.i = load i64, ptr %i.d, align 8, !tbaa !29 ; 4 uses
  %i.e = icmp sge i64 %.val22.i, %.val4
  %i.f = icmp sgt i64 %.val4, 0
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8
  %i.g = getelementptr i8, ptr %i.c, i64 %.val22.i
  %i.h = sub nsw i64 0, %.val4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %bcmp.i = call i32 @bcmp(ptr %i.i, ptr readonly %.val, i64 %.val4), !inline_history !213
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw nsw i64 %.val22.i, %.val4
  %i.l = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.c, i64 noundef %i.k), !inline_history !213
  br label %bytes_removesuffix_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !26
  %.not.i = icmp eq ptr %.val.i, @PyBytes_Type
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %bytes_removesuffix_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %0, align 8, !tbaa !22
  br label %bytes_removesuffix_impl.exit

bb.h:                                             ; preds = %bb.e
  %i.q = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.c, i64 noundef %.val22.i), !inline_history !213
  br label %bytes_removesuffix_impl.exit

bytes_removesuffix_impl.exit:                     ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ %i.q, %bb.h ], [ %0, %bb.f ], [ %0, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %.not3 = icmp eq ptr %i.s, null
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bytes_removesuffix_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bytes_removesuffix_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rfind(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !46
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.124, i64 noundef %2, i64 noundef 1, i64 noundef 3) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !21
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #19
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #19
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !46
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !29
  %i.r = call ptr @_Py_bytes_rfind(ptr noundef %i.p, i64 noundef %.val.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rindex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !46
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.125, i64 noundef %2, i64 noundef 1, i64 noundef 3) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !21
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #19
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #19
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !46
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !29
  %i.r = call ptr @_Py_bytes_rindex(ptr noundef %i.p, i64 noundef %.val.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stringlib_rjust(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.126, i64 noundef %2, i64 noundef 1, i64 noundef 2) #19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %stringlib_rjust_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #19 ; 5 uses
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %Py_DECREF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #19 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit.thread, label %bb.g

Py_DECREF.exit.thread:                            ; preds = %bb.c, %Py_DECREF.exit
end_hunk_3
begin_hunk_4_@stringlib_rjust:bb.a
  %.val42 = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.ab = load i8, ptr %.val42, align 1, !tbaa !22
  br label %bb.p

bb.o:                                             ; preds = %PyObject_TypeCheck.exit
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, ptr noundef %.pre) #19
  br label %stringlib_rjust_impl.exit

bb.p:                                             ; preds = %bb.k, %bb.n, %bb.g
  %.026 = phi i8 [ 32, %bb.g ], [ %i.u, %bb.k ], [ %i.ab, %bb.n ]
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val8.i = load i64, ptr %i.ac, align 8, !tbaa !29 ; 5 uses
  %.not.i45 = icmp slt i64 %.val8.i, %.02547.ph
  br i1 %.not.i45, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.ad, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %.val.i.i, @PyBytes_Type
  br i1 %.not.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ae = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %stringlib_rjust_impl.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr %0, align 8, !tbaa !22
  br label %stringlib_rjust_impl.exit

bb.t:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.ah, i64 noundef %.val8.i), !inline_history !214
  br label %stringlib_rjust_impl.exit

bb.u:                                             ; preds = %bb.p
  %i.aj = sub i64 %.02547.ph, %.val8.i            ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 0) ; 3 uses
  %i.ak = icmp slt i64 %i.aj, 1
  br i1 %i.ak, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %.val.i.i.i, @PyBytes_Type
  br i1 %.not.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.am = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.an = icmp ugt i32 %i.am, -1073741825
  br i1 %i.an, label %stringlib_rjust_impl.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = add nuw i32 %i.am, 1
  store i32 %i.ao, ptr %0, align 8, !tbaa !22
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
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 %.026, i64 %spec.store.select.i.i, i1 false)
  %i.au = getelementptr i8, ptr %i.at, i64 %spec.store.select.i.i
  %i.av = getelementptr i8, ptr %0, i64 32
  %.val29.i.i = load i64, ptr %i.ac, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 8 %i.av, i64 %.val29.i.i, i1 false)
  br label %stringlib_rjust_impl.exit

stringlib_rjust_impl.exit:                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit.thread, %bb.j, %bb.m, %bb.o, %bb.b
  %.028 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.b ], [ %0, %bb.s ], [ %i.ai, %bb.t ], [ %0, %bb.r ], [ null, %bb.z ], [ %i.as, %bb.aa ], [ %0, %bb.x ], [ %i.aq, %bb.y ], [ %0, %bb.w ]
  ret ptr %.028
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
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !71     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !69   ; 11 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !21
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
  %i.n = load i8, ptr %i.f, align 1, !tbaa !22    ; 2 uses
  %i.o = icmp sgt i64 %.val.i, 15
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = sext i8 %i.n to i32
  %i.q = call ptr @memrchr(ptr noundef %i.b, i32 noundef %i.p, i64 noundef %.val.i) #20, !inline_history !217 ; 2 uses
  %.not.i67.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i67.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.j

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
  br i1 %i.w, label %.lr.ph, label %fastsearch.exit.thread.i.i, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i.i.i.i26 = phi ptr [ %i.x, %bb.l ], [ %i.u, %bb.k ]
  %i.x = getelementptr i8, ptr %.0.i.i.i.i26, i64 -1 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = icmp eq i8 %i.y, %i.n
  br i1 %i.z, label %bb.m, label %bb.l, !llvm.loop !2

bb.m:                                             ; preds = %.lr.ph
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.b to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %fastsearch.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %i.h, -1                    ; 6 uses
  %i.ae = load i8, ptr %i.f, align 1, !tbaa !22   ; 5 uses
  %i.af = and i8 %i.ae, 63
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  %xtraiter = and i64 %i.ad, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.i.prol.loopexit, label %.lr.ph.i75.i.i.i.prol

.lr.ph.i75.i.i.i.prol:                            ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ad
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22  ; 2 uses
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = or i64 %i.am, %i.ah                     ; 2 uses
  %i.ao = icmp eq i8 %i.aj, %i.ae
  %i.ap = add nsw i64 %i.h, -2                    ; 2 uses
  %spec.select.i76.i.i.i.prol = select i1 %i.ao, i64 %i.ap, i64 %i.ad ; 2 uses
  br label %.lr.ph.i75.i.i.i.prol.loopexit

.lr.ph.i75.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i75.i.i.i.prol, %bb.n
  %.060.i.i.i.i.unr = phi i64 [ %i.ad, %bb.n ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.ad, %bb.n ], [ %i.ap, %.lr.ph.i75.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.ah, %bb.n ], [ %i.an, %.lr.ph.i75.i.i.i.prol ]
  %.lcssa30.unr = phi i64 [ poison, %bb.n ], [ %i.an, %.lr.ph.i75.i.i.i.prol ]
  %spec.select.i76.i.i.i.lcssa.unr = phi i64 [ poison, %bb.n ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.h, 2
  br i1 %i.aq, label %.preheader56.i.i.i.i, label %.lr.ph.i75.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i75.i.i.i, %.lr.ph.i75.i.i.i.prol.loopexit
  %.lcssa30 = phi i64 [ %.lcssa30.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %i.ce, %.lr.ph.i75.i.i.i ] ; 2 uses
  %spec.select.i76.i.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.i.lcssa.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ]
  %i.ar = sub nsw i64 %.val.i, %i.h
  br label %.lr.ph66.split.us.i.i.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %bb.t, %.preheader56.i.i.i.i
  %.14865.us.i.i.i.i = phi i64 [ %i.bp, %bb.t ], [ %i.ar, %.preheader56.i.i.i.i ] ; 5 uses
  %i.as = getelementptr i8, ptr %i.b, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = icmp eq i8 %i.at, %i.ae
  br i1 %i.au, label %.preheader.us.i78.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr i8, ptr %i.as, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = and i8 %i.aw, 63
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %.lcssa30
  %.not51.us.i.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not51.us.i.i.i.i, i64 %i.h, i64 0
  br label %bb.t

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.q
  %.04662.us.i.i.i.i = phi i64 [ %i.bg, %bb.q ], [ %i.ad, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %.04662.us.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %i.be = getelementptr i8, ptr %i.f, i64 %.04662.us.i.i.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !22
  %.not52.us.i.i.i.i = icmp eq i8 %i.bd, %i.bf
  br i1 %.not52.us.i.i.i.i, label %bb.q, label %.thread.us.i.i.i.i

bb.q:                                             ; preds = %.preheader.us.i78.i.i.i
  %i.bg = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.bh = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.bh, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !3

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread.us.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.as, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %.lcssa30
  %.not54.us.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not54.us.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.us.i.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.s ], [ %i.bb, %bb.p ], [ %i.h, %bb.r ]
  %i.bo = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = icmp sgt i64 %i.bo, 0
  br i1 %i.bq, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !4

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.br = getelementptr i8, ptr %i.f, i64 %.04759.i.i.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22  ; 2 uses
  %i.bt = and i8 %i.bs, 63
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = or i64 %i.bv, %.04958.i.i.i.i
  %i.bx = icmp eq i8 %i.bs, %i.ae
  %i.by = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.bx, i64 %i.by, i64 %.060.i.i.i.i
  %i.bz = getelementptr i8, ptr %i.f, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22  ; 2 uses
  %i.cb = and i8 %i.ca, 63
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = or i64 %i.cd, %i.bw                     ; 2 uses
  %i.cf = icmp eq i8 %i.ca, %i.ae
  %i.cg = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.cf, i64 %i.cg, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.ch = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.ch, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !5

fastsearch.exit.i.i:                              ; preds = %bb.q, %bb.m, %bb.j
  %.0.i.i.i = phi i64 [ %i.ac, %bb.m ], [ %i.t, %bb.j ], [ %.14865.us.i.i.i.i, %bb.q ] ; 3 uses
  %i.ci = icmp slt i64 %.0.i.i.i, 0
  br i1 %i.ci, label %fastsearch.exit.thread.i.i, label %bb.x

fastsearch.exit.thread.i.i:                       ; preds = %bb.t, %bb.o, %bb.l, %bb.k, %fastsearch.exit.i.i, %bb.i, %bb.g, %bb.e
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !22 ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, -1073741825
  br i1 %i.ck, label %Py_INCREF.exit38.i.i, label %bb.u

bb.u:                                             ; preds = %fastsearch.exit.thread.i.i
  %i.cl = add nuw i32 %i.cj, 1
  store i32 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !22
  br label %Py_INCREF.exit38.i.i

Py_INCREF.exit38.i.i:                             ; preds = %bb.u, %fastsearch.exit.thread.i.i
  %i.cm = getelementptr i8, ptr %i.k, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr %i.cm, align 8, !tbaa !21
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !22 ; 2 uses
  %i.co = icmp ugt i32 %i.cn, -1073741825
  br i1 %i.co, label %Py_INCREF.exit37.i.i, label %bb.v

bb.v:                                             ; preds = %Py_INCREF.exit38.i.i
  %i.cp = add nuw i32 %i.cn, 1
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), align 8, !tbaa !22
  br label %Py_INCREF.exit37.i.i

Py_INCREF.exit37.i.i:                             ; preds = %bb.v, %Py_INCREF.exit38.i.i
  %i.cq = getelementptr i8, ptr %i.k, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr %i.cq, align 8, !tbaa !21
  %i.cr = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, -1073741825
  br i1 %i.cs, label %Py_INCREF.exit36.i.i, label %bb.w

bb.w:                                             ; preds = %Py_INCREF.exit37.i.i
  %i.ct = add nuw i32 %i.cr, 1
  store i32 %i.ct, ptr %0, align 8, !tbaa !22
  br label %Py_INCREF.exit36.i.i

Py_INCREF.exit36.i.i:                             ; preds = %bb.w, %Py_INCREF.exit37.i.i
  %i.cu = getelementptr i8, ptr %i.k, i64 48
  store ptr %0, ptr %i.cu, align 8, !tbaa !21
  br label %bytes_rpartition_impl.exit

bb.x:                                             ; preds = %fastsearch.exit.i.i
  %i.cv = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %.0.i.i.i), !inline_history !217
  %i.cw = getelementptr i8, ptr %i.k, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !21
  %i.cx = load i32, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, -1073741825
  br i1 %i.cy, label %Py_INCREF.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = add nuw i32 %i.cx, 1
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !22
  br label %Py_INCREF.exit.i.i

Py_INCREF.exit.i.i:                               ; preds = %bb.y, %bb.x
  %i.da = getelementptr i8, ptr %i.k, i64 40
  store ptr %i.e, ptr %i.da, align 8, !tbaa !21
  %i.db = add i64 %.0.i.i.i, %i.h                 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.b, i64 %i.db
  %i.dd = sub i64 %.val.i, %i.db
  %i.de = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.dc, i64 noundef %i.dd), !inline_history !217
  %i.df = getelementptr i8, ptr %i.k, i64 48
  store ptr %i.de, ptr %i.df, align 8, !tbaa !21
  %i.dg = call ptr @PyErr_Occurred() #19, !inline_history !217
  %.not35.i.i = icmp eq ptr %i.dg, null
  br i1 %.not35.i.i, label %bytes_rpartition_impl.exit, label %bb.z

bb.z:                                             ; preds = %Py_INCREF.exit.i.i
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !22  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i.i.i, label %bb.aa, label %bytes_rpartition_impl.exit

bb.aa:                                            ; preds = %bb.z
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.k, align 8, !tbaa !22
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ab, label %bytes_rpartition_impl.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #19, !inline_history !217
  br label %bytes_rpartition_impl.exit

bytes_rpartition_impl.exit:                       ; preds = %bb.ab, %bb.aa, %bb.z, %Py_INCREF.exit.i.i, %Py_INCREF.exit36.i.i, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.k, %Py_INCREF.exit36.i.i ], [ %i.k, %Py_INCREF.exit.i.i ], [ null, %bb.d ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70
  %.not3 = icmp eq ptr %i.dl, null
  br i1 %.not3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bytes_rpartition_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bytes_rpartition_impl.exit
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
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytes_rsplit._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.cn, label %.thread53

.thread53:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %.thread61, label %bb.d

.thread61:                                        ; preds = %.thread53
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val.i64 = load i64, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %bb.j

bb.d:                                             ; preds = %.thread53
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not47 = icmp eq i64 %i.i, 1
  br i1 %.not47, label %.thread58, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.034 = phi ptr [ %i.l, %bb.e ], [ @_Py_NoneStruct, %bb.d ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = call ptr @_PyNumber_Index(ptr noundef %i.n) #19 ; 5 uses
  %.not48 = icmp eq ptr %i.o, null
  br i1 %.not48, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.o) #19 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.t = icmp eq i64 %i.p, -1
  br i1 %i.t, label %Py_DECREF.exit.thread, label %.thread58

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.u = call ptr @PyErr_Occurred() #19
  %.not49 = icmp eq ptr %i.u, null
  br i1 %.not49, label %.thread58, label %bb.cn

.thread58:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.e
  %.135 = phi ptr [ %i.l, %bb.e ], [ %.034, %Py_DECREF.exit ], [ %.034, %Py_DECREF.exit.thread ] ; 2 uses
  %.1 = phi i64 [ -1, %bb.e ], [ %i.p, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 6 uses
  %i.v = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !29 ; 6 uses
  %i.w = getelementptr i8, ptr %0, i64 32         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %.1, i64 9223372036854775807) ; 5 uses
  %i.x = icmp eq ptr %.135, @_Py_NoneStruct
  br i1 %i.x, label %bb.j, label %bb.ai

bb.j:                                             ; preds = %.thread61, %.thread58
  %spec.store.select.i68 = phi i64 [ 9223372036854775807, %.thread61 ], [ %spec.store.select.i, %.thread58 ] ; 5 uses
  %i.y = phi ptr [ %i.k, %.thread61 ], [ %i.w, %.thread58 ]
  %.val.i67 = phi i64 [ %.val.i64, %.thread61 ], [ %.val.i, %.thread58 ]
  %.166 = phi i64 [ -1, %.thread61 ], [ %.1, %.thread58 ] ; 3 uses
  %i.z = call i64 @llvm.umin.i64(i64 %.166, i64 11)
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = call ptr @PyList_New(i64 noundef %i.aa) #19, !inline_history !218 ; 11 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bytes_rsplit_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_4
begin_hunk_5_@bytes_rsplit:bb.a
  store i32 %i.dr, ptr %i.dl, align 8, !tbaa !22
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %Py_DECREF.exit69.sink.split.i.i.i, label %Py_DECREF.exit69.i.i.i

bb.au:                                            ; preds = %bb.ar
  br i1 %.not.i66.i.i.i, label %bb.av, label %.loopexit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.dt = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dt, ptr %i.dl, align 8, !tbaa !22
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.aw, label %.loopexit.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #19, !inline_history !225
  br label %.loopexit.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %i.dv = add nsw i64 %.15384.i.i.i, -1
  %i.dw = icmp sgt i64 %.15384.i.i.i, 0
  br i1 %i.dw, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !227

.loopexit.i.i.i:                                  ; preds = %bb.aw, %bb.av, %bb.au, %bb.aq
  %i.dx = add nuw i64 %.088.i.i.i313, 1           ; 3 uses
  %i.dy = add nsw i64 %.15384.i.i.i, -1           ; 3 uses
  %i.dz = icmp sgt i64 %.15384.i.i.i, 0
  br i1 %i.dz, label %bb.an, label %.critedge.i.thread.i.i, !llvm.loop !226

.critedge.i.i.i:                                  ; preds = %bb.an, %bb.ax, %.lr.ph89.i.i.i
  %.05087.i.i.i302 = phi i64 [ %.05087.i.i.i314, %bb.ax ], [ %i.dc, %.lr.ph89.i.i.i ], [ %i.dy, %bb.an ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %.088.i.i.i313, %bb.ax ], [ %spec.store.select.i, %.lr.ph89.i.i.i ], [ %spec.store.select.i, %bb.an ] ; 2 uses
  %i.ea = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %i.ea, label %.critedge.thread.i.i.i, label %.critedge.i.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.am
  %.050.lcssa112.i.i.i = phi i64 [ %.05087.i.i.i302, %.critedge.i.i.i ], [ %i.dc, %bb.am ]
  %i.eb = getelementptr i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.eb, align 8, !tbaa !26
  %.not.i82.i.i = icmp eq ptr %.val.i.i.i, @PyBytes_Type
  br i1 %.not.i82.i.i, label %bb.ay, label %.critedge.i.thread.i.i

bb.ay:                                            ; preds = %.critedge.thread.i.i.i
  %i.ec = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, -1073741825
  br i1 %i.ed, label %Py_INCREF.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = add nuw i32 %i.ec, 1
  store i32 %i.ee, ptr %0, align 8, !tbaa !22
  br label %Py_INCREF.exit.i.i.i

Py_INCREF.exit.i.i.i:                             ; preds = %bb.az, %bb.ay
  %i.ef = getelementptr i8, ptr %i.da, i64 24
  %.val75.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !66
  store ptr %0, ptr %.val75.i.i.i, align 8, !tbaa !21
  br label %bb.bj

.critedge.i.thread.i.i:                           ; preds = %.loopexit.i.i.i, %.critedge.thread.i.i.i, %.critedge.i.i.i
  %.0.lcssa113.i.i.i = phi i64 [ 0, %.critedge.thread.i.i.i ], [ %.0.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.dx, %.loopexit.i.i.i ] ; 4 uses
  %.050.lcssa111.i.i.i = phi i64 [ %.050.lcssa112.i.i.i, %.critedge.thread.i.i.i ], [ %.05087.i.i.i302, %.critedge.i.i.i ], [ %i.dy, %.loopexit.i.i.i ] ; 2 uses
  %i.eg = icmp sgt i64 %.050.lcssa111.i.i.i, -2
  br i1 %i.eg, label %bb.ba, label %bb.bj

bb.ba:                                            ; preds = %.critedge.i.thread.i.i
  %i.eh = add i64 %.050.lcssa111.i.i.i, 1
  %i.ei = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %i.eh), !inline_history !225 ; 8 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %Py_DECREF.exit69.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = icmp slt i64 %.0.lcssa113.i.i.i, 12
  br i1 %i.ek, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.el = getelementptr i8, ptr %i.da, i64 24
  %.val74.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !66
  %i.em = getelementptr [8 x i8], ptr %.val74.i.i.i, i64 %.0.lcssa113.i.i.i
  store ptr %i.ei, ptr %i.em, align 8, !tbaa !21
  br label %Py_DECREF.exit63.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.en = call i32 @PyList_Append(ptr noundef nonnull %i.da, ptr noundef nonnull %i.ei) #19, !inline_history !225
  %.not60.i.i.i = icmp eq i32 %i.en, 0
  %i.eo = load i32, ptr %i.ei, align 8, !tbaa !22 ; 3 uses
  %.not.i62.i.i.i = icmp sgt i32 %i.eo, -1        ; 2 uses
  br i1 %.not60.i.i.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i62.i.i.i, label %bb.bf, label %Py_DECREF.exit69.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.ei, align 8, !tbaa !22
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %Py_DECREF.exit69.sink.split.i.i.i, label %Py_DECREF.exit69.i.i.i

bb.bg:                                            ; preds = %bb.bd
  br i1 %.not.i62.i.i.i, label %bb.bh, label %Py_DECREF.exit63.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.er = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.er, ptr %i.ei, align 8, !tbaa !22
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bi, label %Py_DECREF.exit63.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %i.ei) #19, !inline_history !225
  br label %Py_DECREF.exit63.i.i.i

Py_DECREF.exit63.i.i.i:                           ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bc
  %i.et = add i64 %.0.lcssa113.i.i.i, 1
  br label %bb.bj

bb.bj:                                            ; preds = %Py_DECREF.exit63.i.i.i, %.critedge.i.thread.i.i, %Py_INCREF.exit.i.i.i
  %.2.i.i.i = phi i64 [ 1, %Py_INCREF.exit.i.i.i ], [ %i.et, %Py_DECREF.exit63.i.i.i ], [ %.0.lcssa113.i.i.i, %.critedge.i.thread.i.i ]
  %i.eu = getelementptr i8, ptr %i.da, i64 16
  store i64 %.2.i.i.i, ptr %i.eu, align 8, !tbaa !29
  %i.ev = call i32 @PyList_Reverse(ptr noundef nonnull %i.da) #19, !inline_history !225
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %Py_DECREF.exit69.i.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit69.sink.split.i.i.i:                ; preds = %bb.bf, %bb.at
  %.sink.i.i.i = phi ptr [ %i.dl, %bb.at ], [ %i.ei, %bb.bf ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i.i.i) #19, !inline_history !225
  br label %Py_DECREF.exit69.i.i.i

Py_DECREF.exit69.i.i.i:                           ; preds = %bb.ao, %Py_DECREF.exit69.sink.split.i.i.i, %bb.bj, %bb.bf, %bb.be, %bb.ba, %bb.at, %bb.as
  %i.ex = load i32, ptr %i.da, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ex, -1
  br i1 %.not.i.i.i.i, label %bb.bk, label %stringlib_rsplit.exit.i

bb.bk:                                            ; preds = %Py_DECREF.exit69.i.i.i
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.da, align 8, !tbaa !22
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
  br i1 %i.fd, label %stringlib_rsplit.exit.i, label %.preheader.i18.i

.preheader.i18.i:                                 ; preds = %bb.bm
  %i.fe = icmp eq i64 %.1, 0
  %i.ff = icmp slt i64 %.val.i, %i.cv
  %or.cond115.i.i = or i1 %i.fe, %i.ff
  br i1 %or.cond115.i.i, label %fastsearch.exit.thread.thread218.i.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.preheader.i18.i
  %i.fg = icmp slt i64 %i.cv, 2
  %i.fh = add i64 %i.cv, -1                       ; 6 uses
  %i.fi = getelementptr i8, ptr %i.fc, i64 24
  br i1 %i.fg, label %fastsearch.exit.thread.thread218.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i19.i
  %xtraiter = and i64 %i.fh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fj = getelementptr i8, ptr %i.ct, i64 %i.fh
  %i.fk = add nsw i64 %i.cv, -2                   ; 2 uses
  %i.fl = icmp eq i64 %i.cv, 2
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %Py_DECREF.exit72.i.i
  %.in.i.i = phi i64 [ %i.fw, %Py_DECREF.exit72.i.i ], [ %spec.store.select.i, %.lr.ph.split.i.i.preheader ] ; 2 uses
  %.0117.i.i = phi i64 [ %i.ic, %Py_DECREF.exit72.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 5 uses
  %.057116.i.i = phi i64 [ %.14865.us.i.i.i.i, %Py_DECREF.exit72.i.i ], [ %.val.i, %.lr.ph.split.i.i.preheader ] ; 4 uses
  %i.fm = load i8, ptr %i.ct, align 1, !tbaa !22  ; 5 uses
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.i.prol.loopexit, label %.lr.ph.i75.i.i.i.prol

.lr.ph.i75.i.i.i.prol:                            ; preds = %.lr.ph.split.i.i
  %i.fq = load i8, ptr %i.fj, align 1, !tbaa !22  ; 2 uses
  %i.fr = and i8 %i.fq, 63
  %i.fs = zext nneg i8 %i.fr to i64
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = or i64 %i.ft, %i.fp                     ; 2 uses
  %i.fv = icmp eq i8 %i.fq, %i.fm
  %spec.select.i76.i.i.i.prol = select i1 %i.fv, i64 %i.fk, i64 %i.fh ; 2 uses
  br label %.lr.ph.i75.i.i.i.prol.loopexit

.lr.ph.i75.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i75.i.i.i.prol, %.lr.ph.split.i.i
  %.060.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.split.i.i ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.fh, %.lr.ph.split.i.i ], [ %i.fk, %.lr.ph.i75.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.fp, %.lr.ph.split.i.i ], [ %i.fu, %.lr.ph.i75.i.i.i.prol ]
  %.lcssa335.unr = phi i64 [ poison, %.lr.ph.split.i.i ], [ %i.fu, %.lr.ph.i75.i.i.i.prol ]
  %spec.select.i76.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.i.i ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  br i1 %i.fl, label %.preheader56.i.i.i.i, label %.lr.ph.i75.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i75.i.i.i, %.lr.ph.i75.i.i.i.prol.loopexit
  %.lcssa335 = phi i64 [ %.lcssa335.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %i.hk, %.lr.ph.i75.i.i.i ] ; 2 uses
  %spec.select.i76.i.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.i.lcssa.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ]
  %i.fw = add nsw i64 %.in.i.i, -1
  %i.fx = sub nsw i64 %.057116.i.i, %i.cv
  br label %.lr.ph66.split.us.i.i.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %bb.bs, %.preheader56.i.i.i.i
  %.14865.us.i.i.i.i = phi i64 [ %i.gv, %bb.bs ], [ %i.fx, %.preheader56.i.i.i.i ] ; 9 uses
  %i.fy = getelementptr i8, ptr %i.w, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22
  %i.ga = icmp eq i8 %i.fz, %i.fm
  br i1 %i.ga, label %.preheader.us.i78.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gb = getelementptr i8, ptr %i.fy, i64 -1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !22
  %i.gd = and i8 %i.gc, 63
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = and i64 %i.gf, %.lcssa335
  %.not51.us.i.i.i.i = icmp eq i64 %i.gg, 0
  %i.gh = select i1 %.not51.us.i.i.i.i, i64 %i.cv, i64 0
  br label %bb.bs

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.bp
  %.04662.us.i.i.i.i = phi i64 [ %i.gm, %bb.bp ], [ %i.fh, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.gi = getelementptr i8, ptr %i.fy, i64 %.04662.us.i.i.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !22
  %i.gk = getelementptr i8, ptr %i.ct, i64 %.04662.us.i.i.i.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !22
  %.not52.us.i.i.i.i = icmp eq i8 %i.gj, %i.gl
  br i1 %.not52.us.i.i.i.i, label %bb.bp, label %.thread.us.i.i.i.i

bb.bp:                                            ; preds = %.preheader.us.i78.i.i.i
  %i.gm = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.gn = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.gn, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.loopexit.i.i, !llvm.loop !3

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread.us.i.i.i.i
  %i.go = getelementptr i8, ptr %i.fy, i64 -1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !22
  %i.gq = and i8 %i.gp, 63
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %.lcssa335
  %.not54.us.i.i.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not54.us.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq, %.thread.us.i.i.i.i
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.br ], [ %i.gh, %bb.bo ], [ %i.cv, %bb.bq ]
  %i.gu = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1
  %i.gw = icmp sgt i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !4

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.hm, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.hk, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.gx = getelementptr i8, ptr %i.ct, i64 %.04759.i.i.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !22  ; 2 uses
  %i.gz = and i8 %i.gy, 63
  %i.ha = zext nneg i8 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = or i64 %i.hb, %.04958.i.i.i.i
  %i.hd = icmp eq i8 %i.gy, %i.fm
  %i.he = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.hd, i64 %i.he, i64 %.060.i.i.i.i
  %i.hf = getelementptr i8, ptr %i.ct, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !22  ; 2 uses
  %i.hh = and i8 %i.hg, 63
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = shl nuw i64 1, %i.hi
  %i.hk = or i64 %i.hj, %i.hc                     ; 2 uses
  %i.hl = icmp eq i8 %i.hg, %i.fm
  %i.hm = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.hl, i64 %i.hm, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.hn = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.hn, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !5

fastsearch.exit.loopexit.i.i:                     ; preds = %bb.bp
  %i.ho = icmp slt i64 %.14865.us.i.i.i.i, 0
  br i1 %i.ho, label %fastsearch.exit.thread.i.i, label %bb.bt

bb.bt:                                            ; preds = %fastsearch.exit.loopexit.i.i
  %i.hp = add nuw i64 %.14865.us.i.i.i.i, %i.cv   ; 2 uses
  %i.hq = getelementptr i8, ptr %i.w, i64 %i.hp
  %i.hr = sub i64 %.057116.i.i, %i.hp
  %i.hs = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.hq, i64 noundef %i.hr), !inline_history !224 ; 8 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %Py_DECREF.exit74.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hu = icmp samesign ult i64 %.0117.i.i, 12
  br i1 %i.hu, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %.val81.i.i = load ptr, ptr %i.fi, align 8, !tbaa !66
  %i.hv = getelementptr [8 x i8], ptr %.val81.i.i, i64 %.0117.i.i
  store ptr %i.hs, ptr %i.hv, align 8, !tbaa !21
  br label %Py_DECREF.exit72.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.hw = call i32 @PyList_Append(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.hs) #19, !inline_history !224
  %.not.i24.i = icmp eq i32 %i.hw, 0
  %i.hx = load i32, ptr %i.hs, align 8, !tbaa !22 ; 3 uses
  %.not.i71.i.i = icmp sgt i32 %i.hx, -1          ; 2 uses
  br i1 %.not.i24.i, label %bb.by, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.bw
  br i1 %.not.i71.i.i, label %bb.bx, label %Py_DECREF.exit74.i.i

bb.bx:                                            ; preds = %.split.us.i.i
  %i.hy = add nsw i32 %i.hx, -1                   ; 2 uses
  store i32 %i.hy, ptr %i.hs, align 8, !tbaa !22
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %Py_DECREF.exit74.sink.split.i.i, label %Py_DECREF.exit74.i.i

bb.by:                                            ; preds = %bb.bw
  br i1 %.not.i71.i.i, label %bb.bz, label %Py_DECREF.exit72.i.i

bb.bz:                                            ; preds = %bb.by
  %i.ia = add nsw i32 %i.hx, -1                   ; 2 uses
  store i32 %i.ia, ptr %i.hs, align 8, !tbaa !22
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.ca, label %Py_DECREF.exit72.i.i

bb.ca:                                            ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %i.hs) #19, !inline_history !224
  br label %Py_DECREF.exit72.i.i

Py_DECREF.exit72.i.i:                             ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bv
  %i.ic = add nuw nsw i64 %.0117.i.i, 1           ; 2 uses
  %i.id = icmp slt i64 %.in.i.i, 2
  %i.ie = icmp slt i64 %.14865.us.i.i.i.i, %i.cv
  %or.cond.i.i = or i1 %i.id, %i.ie
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.split.i.i, !llvm.loop !228

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.loopexit.i.i, %bb.bs, %bb.bn
  %i.if = icmp eq i64 %.0117.i.i, 0
  br i1 %i.if, label %fastsearch.exit.thread.thread218.i.i, label %fastsearch.exit.thread.thread.i.i

fastsearch.exit.thread.thread218.i.i:             ; preds = %fastsearch.exit.thread.i.i, %.lr.ph.i19.i, %.preheader.i18.i
  %.057100221.i.i = phi i64 [ %.057116.i.i, %fastsearch.exit.thread.i.i ], [ %.val.i, %.lr.ph.i19.i ], [ %.val.i, %.preheader.i18.i ]
  %i.ig = getelementptr i8, ptr %0, i64 8
  %.val.i22.i = load ptr, ptr %i.ig, align 8, !tbaa !26
  %.not85.i.i = icmp eq ptr %.val.i22.i, @PyBytes_Type
  br i1 %.not85.i.i, label %bb.cb, label %.thread.i.i

bb.cb:                                            ; preds = %fastsearch.exit.thread.thread218.i.i
  %i.ih = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ii = icmp ugt i32 %i.ih, -1073741825
  br i1 %i.ii, label %Py_INCREF.exit.i23.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ij = add nuw i32 %i.ih, 1
  store i32 %i.ij, ptr %0, align 8, !tbaa !22
  br label %Py_INCREF.exit.i23.i

Py_INCREF.exit.i23.i:                             ; preds = %bb.cc, %bb.cb
  %i.ik = getelementptr i8, ptr %i.fc, i64 24
  %.val80.i.i = load ptr, ptr %i.ik, align 8, !tbaa !66
  store ptr %0, ptr %.val80.i.i, align 8, !tbaa !21
  br label %bb.ck

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit72.i.i, %fastsearch.exit.thread.i.i
  %.095215.i.i = phi i64 [ %.0117.i.i, %fastsearch.exit.thread.i.i ], [ %i.ic, %Py_DECREF.exit72.i.i ] ; 5 uses
  %.057100213.i.i = phi i64 [ %.057116.i.i, %fastsearch.exit.thread.i.i ], [ %.14865.us.i.i.i.i, %Py_DECREF.exit72.i.i ]
  %i.il = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %.057100213.i.i), !inline_history !224 ; 8 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %Py_DECREF.exit74.i.i, label %bb.cd

.thread.i.i:                                      ; preds = %fastsearch.exit.thread.thread218.i.i
  %i.in = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.w, i64 noundef %.057100221.i.i), !inline_history !224 ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %Py_DECREF.exit74.i.i, label %.thread84.i.i

bb.cd:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.ip = icmp slt i64 %.095215.i.i, 12
  br i1 %i.ip, label %.thread84.i.i, label %bb.ce

.thread84.i.i:                                    ; preds = %bb.cd, %.thread.i.i
  %.095214.i.i = phi i64 [ %.095215.i.i, %bb.cd ], [ 0, %.thread.i.i ] ; 2 uses
  %i.iq = phi ptr [ %i.il, %bb.cd ], [ %i.in, %.thread.i.i ]
  %i.ir = getelementptr i8, ptr %i.fc, i64 24
  %.val79.i.i = load ptr, ptr %i.ir, align 8, !tbaa !66
  %i.is = getelementptr [8 x i8], ptr %.val79.i.i, i64 %.095214.i.i
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !21
  br label %Py_DECREF.exit68.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.it = call i32 @PyList_Append(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.il) #19, !inline_history !224
  %.not66.i.i = icmp eq i32 %i.it, 0
  %i.iu = load i32, ptr %i.il, align 8, !tbaa !22 ; 3 uses
  %.not.i67.i.i = icmp sgt i32 %i.iu, -1          ; 2 uses
  br i1 %.not66.i.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not.i67.i.i, label %bb.cg, label %Py_DECREF.exit74.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.il, align 8, !tbaa !22
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %Py_DECREF.exit74.sink.split.i.i, label %Py_DECREF.exit74.i.i

bb.ch:                                            ; preds = %bb.ce
  br i1 %.not.i67.i.i, label %bb.ci, label %Py_DECREF.exit68.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ix = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !22
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.cj, label %Py_DECREF.exit68.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %i.il) #19, !inline_history !224
  br label %Py_DECREF.exit68.i.i

Py_DECREF.exit68.i.i:                             ; preds = %bb.cj, %bb.ci, %bb.ch, %.thread84.i.i
  %.095216.i.i = phi i64 [ %.095215.i.i, %bb.cj ], [ %.095215.i.i, %bb.ci ], [ %.095215.i.i, %bb.ch ], [ %.095214.i.i, %.thread84.i.i ]
  %i.iz = add i64 %.095216.i.i, 1
  br label %bb.ck

bb.ck:                                            ; preds = %Py_DECREF.exit68.i.i, %Py_INCREF.exit.i23.i
  %.1.i.i = phi i64 [ 1, %Py_INCREF.exit.i23.i ], [ %i.iz, %Py_DECREF.exit68.i.i ]
  %i.ja = getelementptr i8, ptr %i.fc, i64 16
  store i64 %.1.i.i, ptr %i.ja, align 8, !tbaa !29
  %i.jb = call i32 @PyList_Reverse(ptr noundef nonnull %i.fc) #19, !inline_history !224
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %Py_DECREF.exit74.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit74.sink.split.i.i:                  ; preds = %bb.cg, %bb.bx
  %.sink.i21.i = phi ptr [ %i.hs, %bb.bx ], [ %i.il, %bb.cg ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink.i21.i) #19, !inline_history !224
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.bt, %Py_DECREF.exit74.sink.split.i.i, %bb.ck, %bb.cg, %bb.cf, %.thread.i.i, %fastsearch.exit.thread.thread.i.i, %bb.bx, %.split.us.i.i
  %i.jd = load i32, ptr %i.fc, align 8, !tbaa !22 ; 2 uses
  %.not.i.i20.i = icmp sgt i32 %i.jd, -1
  br i1 %.not.i.i20.i, label %bb.cl, label %stringlib_rsplit.exit.i

bb.cl:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.je = add nsw i32 %i.jd, -1                   ; 2 uses
  store i32 %i.je, ptr %i.fc, align 8, !tbaa !22
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.cm, label %stringlib_rsplit.exit.i

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #19, !inline_history !224
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.cm, %bb.cl, %Py_DECREF.exit74.i.i, %bb.ck, %bb.bm, %bb.bl, %bb.bk, %Py_DECREF.exit69.i.i.i, %bb.bj, %bb.al, %bb.ak
  %.059.i.i = phi ptr [ null, %bb.ak ], [ %i.fc, %bb.ck ], [ null, %bb.bm ], [ null, %bb.bl ], [ null, %bb.al ], [ %i.da, %bb.bj ], [ null, %Py_DECREF.exit69.i.i.i ], [ null, %bb.bk ], [ null, %Py_DECREF.exit74.i.i ], [ null, %bb.cl ], [ null, %bb.cm ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #19, !inline_history !223
  br label %bytes_rsplit_impl.exit

bytes_rsplit_impl.exit:                           ; preds = %bb.j, %.critedge79.i.i, %Py_DECREF.exit87.i.i, %bb.ag, %bb.ah, %bb.ai, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ null, %bb.ai ], [ %.059.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.j ], [ %i.ab, %.critedge79.i.i ], [ null, %Py_DECREF.exit87.i.i ], [ null, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cn

bb.cn:                                            ; preds = %Py_DECREF.exit.thread, %bytes_rsplit_impl.exit, %bb.c
  %.036 = phi ptr [ %.0.i, %bytes_rsplit_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_rstrip(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.129, i64 noundef %2, i64 noundef 0, i64 noundef 1) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @do_argstrip(ptr noundef %0, i32 noundef 1, ptr noundef %.0), !inline_history !229
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_split(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 7 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytes_split._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.ck, label %.thread53

.thread53:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not45 = icmp eq i64 %i.i, 0
  br i1 %.not45, label %.thread61, label %bb.d

.thread61:                                        ; preds = %.thread53
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val.i64 = load i64, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %bb.j

bb.d:                                             ; preds = %.thread53
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not46 = icmp eq ptr %i.k, null
end_hunk_5
