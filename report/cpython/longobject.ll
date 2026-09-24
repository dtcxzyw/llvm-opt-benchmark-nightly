Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@PyLong_AsUnsignedLongMask:bb.a
; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyLong_IsPositive(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !52
  %i.c = and i64 %.val3, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.f, align 8, !tbaa !43
  %i.g = and i64 %.val4, 3
  %i.h = icmp eq i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyLong_IsNegative(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !52
  %i.c = and i64 %.val3, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.f, align 8, !tbaa !43
  %i.g = and i64 %.val4, 3
  %i.h = icmp eq i64 %i.g, 2
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyLong_IsZero(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !52
  %i.c = and i64 %.val3, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.f, align 8, !tbaa !43
  %i.g = and i64 %.val4, 3
  %i.h = icmp eq i64 %i.g, 1
  %i.i = zext i1 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -2, 2) i32 @_PyLong_Sign(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !43
  %.0.v.v.i = trunc i64 %.val to i32
  %.0.v.i = and i32 %.0.v.v.i, 3
  %.0.i = sub nsw i32 1, %.0.v.i
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyLong_GetSign(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !52
  %i.c = and i64 %.val4, 16777216
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.f, align 8, !tbaa !43
  %.0.v.v.i = trunc i64 %.val5 to i32
  %.0.v.i = and i32 %.0.v.v.i, 3
  %.0.i = sub nsw i32 1, %.0.v.i
  store i32 %.0.i, ptr %1, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @_PyLong_NumBits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !43
  %i.b = lshr i64 %.val, 3                        ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = mul i64 %i.d, 30
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 false)
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_FromByteArray(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1       ; 2 uses
  %.079 = select i1 %.not, ptr %i.c, ptr %0       ; 2 uses
  %.078.neg = select i1 %.not, i64 1, i64 -1
  %.078 = select i1 %.not, i64 -1, i64 1          ; 2 uses
  %.077 = select i1 %.not, ptr %0, ptr %i.c       ; 2 uses
  %.not88 = icmp eq i32 %3, 0
  br i1 %.not88, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.077, align 1, !tbaa !40
  %.fr = freeze i8 %i.d
  %i.e = icmp sgt i8 %.fr, -1                     ; 2 uses
  %spec.select137 = select i1 %i.e, i32 0, i32 255
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %.080121 = phi i1 [ %i.e, %bb.c ], [ true, %bb.b ] ; 3 uses
  %i.f = phi i32 [ %spec.select137, %bb.c ], [ 0, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.e
  %.07295 = phi ptr [ %.077, %.thread ], [ %i.j, %bb.e ] ; 2 uses
  %.07394 = phi i64 [ 0, %.thread ], [ %i.i, %bb.e ] ; 2 uses
  %i.g = load i8, ptr %.07295, align 1, !tbaa !40
  %i.h = zext i8 %i.g to i32
  %.not90 = icmp eq i32 %i.f, %i.h
  br i1 %.not90, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i64 %.07394, 1                   ; 2 uses
  %i.j = getelementptr i8, ptr %.07295, i64 %.078.neg
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %bb.f, label %bb.d, !llvm.loop !173

bb.f:                                             ; preds = %bb.d, %bb.e
  %.073.lcssa = phi i64 [ %.07394, %bb.d ], [ %1, %bb.e ]
  %i.k = sub i64 %1, %.073.lcssa                  ; 2 uses
  %4 = icmp uge i64 %i.k, %1
  %or.cond.not = or i1 %.080121, %4
  %not.or.cond.not = xor i1 %or.cond.not, true
  %i.l = zext i1 %not.or.cond.not to i64
  %.076 = add nuw i64 %i.k, %i.l                  ; 5 uses
  %i.m = udiv i64 %.076, 30
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = urem i64 %.076, 30
  %.tr = trunc nuw nsw i64 %i.o to i16
  %i.p = shl nuw nsw i16 %.tr, 3
  %.lhs.trunc = add nuw nsw i16 %i.p, 28
  %i.q = udiv i16 %.lhs.trunc, 30
  %.zext = zext nneg i16 %i.q to i64
  %i.r = add nuw nsw i64 %i.n, %.zext
  %i.s = tail call fastcc ptr @long_alloc(i64 noundef %i.r) ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not106 = icmp eq i64 %.076, 0
  br i1 %.not106, label %.thread132, label %.lr.ph

.thread132:                                       ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.s, i64 16
  store i64 1, ptr %i.u, align 8, !tbaa !43
  br label %long_normalize.exit

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.080121, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.065101.us = phi ptr [ %i.ak, %bb.h ], [ %.079, %.lr.ph ] ; 2 uses
  %.066100.us = phi i32 [ %.1.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.06799.us = phi i64 [ %.168.us, %bb.h ], [ 0, %.lr.ph ]
  %.07197.us = phi i64 [ %i.aj, %bb.h ], [ 0, %.lr.ph ]
  %.07496.us = phi i64 [ %.175.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.w = load i8, ptr %.065101.us, align 1, !tbaa !40
  %i.x = zext i8 %i.w to i64
  %i.y = zext nneg i32 %.066100.us to i64
  %i.z = shl i64 %i.x, %i.y
  %i.aa = or i64 %i.z, %.06799.us                 ; 3 uses
  %i.ab = add i32 %.066100.us, 8                  ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 29
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = and i32 %i.ad, 1073741823
  %i.af = getelementptr [4 x i8], ptr %i.v, i64 %.07496.us
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !26
  %i.ag = add i64 %.07496.us, 1
  %i.ah = lshr i64 %i.aa, 30
  %i.ai = add i32 %.066100.us, -22
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us, %bb.g
  %.175.us = phi i64 [ %i.ag, %bb.g ], [ %.07496.us, %.lr.ph.split.us ] ; 2 uses
  %.168.us = phi i64 [ %i.ah, %bb.g ], [ %i.aa, %.lr.ph.split.us ] ; 2 uses
  %.1.us = phi i32 [ %i.ai, %bb.g ], [ %i.ab, %.lr.ph.split.us ] ; 2 uses
  %i.aj = add nuw i64 %.07197.us, 1               ; 2 uses
  %i.ak = getelementptr i8, ptr %.065101.us, i64 %.078
  %exitcond110.not = icmp eq i64 %i.aj, %.076
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !174

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.065101 = phi ptr [ %i.bd, %bb.j ], [ %.079, %.lr.ph ] ; 2 uses
  %.066100 = phi i32 [ %.1, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.06799 = phi i64 [ %.168, %bb.j ], [ 0, %.lr.ph ]
  %.06998 = phi i64 [ %i.ap, %bb.j ], [ 1, %.lr.ph ]
  %.07197 = phi i64 [ %i.bc, %bb.j ], [ 0, %.lr.ph ]
  %.07496 = phi i64 [ %.175, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.al = load i8, ptr %.065101, align 1, !tbaa !40
  %i.am = xor i8 %i.al, -1
  %i.an = zext i8 %i.am to i64
  %i.ao = add nuw nsw i64 %.06998, %i.an          ; 2 uses
  %i.ap = lshr i64 %i.ao, 8
  %i.aq = and i64 %i.ao, 255
  %i.ar = zext nneg i32 %.066100 to i64
  %i.as = shl i64 %i.aq, %i.ar
  %i.at = or i64 %i.as, %.06799                   ; 3 uses
  %i.au = add i32 %.066100, 8                     ; 2 uses
  %i.av = icmp ugt i32 %i.au, 29
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.aw = trunc i64 %i.at to i32
  %i.ax = and i32 %i.aw, 1073741823
  %i.ay = getelementptr [4 x i8], ptr %i.v, i64 %.07496
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !26
  %i.az = add i64 %.07496, 1
  %i.ba = lshr i64 %i.at, 30
  %i.bb = add i32 %.066100, -22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %.175 = phi i64 [ %i.az, %bb.i ], [ %.07496, %.lr.ph.split ] ; 2 uses
  %.168 = phi i64 [ %i.ba, %bb.i ], [ %i.at, %.lr.ph.split ] ; 2 uses
  %.1 = phi i32 [ %i.bb, %bb.i ], [ %i.au, %.lr.ph.split ] ; 2 uses
  %i.bc = add nuw i64 %.07197, 1                  ; 2 uses
  %i.bd = getelementptr i8, ptr %.065101, i64 %.078
  %exitcond109.not = icmp eq i64 %i.bc, %.076
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !174

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %.074.lcssa = phi i64 [ %.175.us, %bb.h ], [ %.175, %bb.j ] ; 3 uses
  %.067.lcssa = phi i64 [ %.168.us, %bb.h ], [ %.168, %bb.j ]
  %.066.lcssa = phi i32 [ %.1.us, %bb.h ], [ %.1, %bb.j ]
  %.not91 = icmp eq i32 %.066.lcssa, 0
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.be = trunc i64 %.067.lcssa to i32
  %i.bf = getelementptr i8, ptr %i.s, i64 24
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %.074.lcssa
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !26
  %i.bh = add i64 %.074.lcssa, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.2 = phi i64 [ %i.bh, %bb.k ], [ %.074.lcssa, %._crit_edge ]
  %.2.fr = freeze i64 %.2                         ; 3 uses
  %i.bi = icmp eq i64 %.2.fr, 0
  %i.bj = select i1 %.080121, i64 0, i64 2
  %spec.select138 = select i1 %i.bi, i64 1, i64 %i.bj ; 2 uses
  %i.bk = shl i64 %.2.fr, 3
  %i.bl = or disjoint i64 %spec.select138, %i.bk
  %i.bm = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !43
  %i.bn = and i64 %.2.fr, 2305843009213693951     ; 3 uses
  %.not1315.i = icmp eq i64 %i.bn, 0
  br i1 %.not1315.i, label %long_normalize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bo = getelementptr i8, ptr %i.s, i64 20
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %.016.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %i.bs, %bb.n ] ; 4 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %.016.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !26
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not13.i = icmp eq i64 %i.bs, 0
  br i1 %.not13.i, label %.critedge.thread.thread.sink.split.i, label %bb.m, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.m
  %.not.i = icmp eq i64 %.016.i, %i.bn
  br i1 %.not.i, label %long_normalize.exit, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.bt = shl nuw i64 %.016.i, 3
  %i.bu = or disjoint i64 %i.bt, %spec.select138
  br label %.critedge.thread.thread.sink.split.i

.critedge.thread.thread.sink.split.i:             ; preds = %bb.n, %bb.o
  %.sink.i = phi i64 [ %i.bu, %bb.o ], [ 1, %bb.n ]
  store i64 %.sink.i, ptr %i.bm, align 8, !tbaa !43
  br label %long_normalize.exit

long_normalize.exit:                              ; preds = %.thread132, %bb.l, %.critedge.i, %.critedge.thread.thread.sink.split.i
  %i.bv = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.s)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.f, %long_normalize.exit
  %.0 = phi ptr [ null, %bb.f ], [ %i.bv, %long_normalize.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_small_long(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.b = icmp ugt i64 %.val, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val15 = load i32, ptr %i.c, align 8, !tbaa !26
  %i.d = and i64 %.val, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val15 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, 5
  %or.cond = icmp ult i64 %i.h, 1030
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
end_hunk_0
