inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_PyLong_FromByteArray:bb.a
.critedge.thread.thread.sink.split.i:             ; preds = %bb.n, %bb.o
  %.sink.i = phi i64 [ %i.bv, %bb.o ], [ 1, %bb.n ]
  store i64 %.sink.i, ptr %i.bn, align 8, !tbaa !25
  br label %long_normalize.exit

long_normalize.exit:                              ; preds = %.thread132, %bb.l, %.critedge.i, %.critedge.thread.thread.sink.split.i
  %i.bw = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.t)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.f, %long_normalize.exit
  %.0 = phi ptr [ null, %bb.f ], [ %i.bw, %long_normalize.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_small_long(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %i.b = icmp ugt i64 %.val, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val15 = load i32, ptr %i.c, align 8, !tbaa !7
  %i.d = and i64 %.val, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val15 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, 5
  %or.cond = icmp ult i64 %i.h, 1030
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !24
  %.not9.i.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !51 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !53
  %i.m = tail call i32 %i.k(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.l) #16, !inline_history !54 ; 0 uses
  %.val6.i.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val6.i.i.i = phi i64 [ %.val6.i.i.i.pre, %bb.g ], [ %.val, %bb.f ] ; 2 uses
  %i.n = and i64 %.val6.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_SetImmortal(ptr noundef nonnull %0) #16
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 11208    ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.s, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.l

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.q, i64 11200    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  store ptr %i.u, ptr %0, align 8, !tbaa !19
  store ptr %0, ptr %i.t, align 8, !tbaa !16
  %i.v = add nuw nsw i64 %i.s, 1
  store i64 %i.v, ptr %i.r, align 8, !tbaa !20
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_PyFreeList_Push.exit.i.i.i.i, %bb.i, %bb.e, %bb.d
  %i.w = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.g
  %i.x = getelementptr i8, ptr %i.w, i64 160
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b, %bb.n
  %.1 = phi ptr [ %i.x, %bb.n ], [ null, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @long_normalize(ptr nofree noundef returned captures(ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = lshr i64 %.val, 3                        ; 3 uses
  %.not1315 = icmp eq i64 %i.b, 0
  br i1 %.not1315, label %.critedge.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.016 = phi i64 [ %i.b, %.lr.ph ], [ %i.g, %bb.c ] ; 4 uses
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %.016
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %.016, -1                    ; 2 uses
  %.not13 = icmp eq i64 %i.g, 0
  br i1 %.not13, label %.critedge.thread.thread.sink.split, label %bb.b, !llvm.loop !50

.critedge:                                        ; preds = %bb.b
  %.not = icmp eq i64 %.016, %i.b
  br i1 %.not, label %.critedge.thread.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.h = shl nuw i64 %.016, 3
  %i.i = and i64 %.val, 3
  %i.j = or disjoint i64 %i.h, %i.i
  br label %.critedge.thread.thread.sink.split

.critedge.thread.thread.sink.split:               ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.j, %bb.d ], [ 1, %bb.c ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !25
  br label %.critedge.thread.thread

.critedge.thread.thread:                          ; preds = %.critedge.thread.thread.sink.split, %bb.a, %.critedge
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyLong_AsByteArray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = lshr i64 %.val, 3                        ; 6 uses
  %i.c = and i64 %.val, 3
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not97 = icmp eq i32 %5, 0
  br i1 %.not97, label %.loopexit, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %.not98 = icmp eq i32 %3, 0                     ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 %2
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.080 = select i1 %.not98, ptr %i.f, ptr %1     ; 2 uses
  %.079.neg = select i1 %.not98, i64 1, i64 -1    ; 2 uses
  %.079 = select i1 %.not98, i64 -1, i64 1        ; 3 uses
  %.not152 = icmp eq i64 %i.b, 0
  br i1 %.not152, label %._crit_edge140.thread, label %.lr.ph139.split.us.preheader

.thread:                                          ; preds = %bb.a
  %.not98178 = icmp eq i32 %3, 0                  ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %2
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.080179 = select i1 %.not98178, ptr %i.h, ptr %1 ; 2 uses
  %.079.neg180 = select i1 %.not98178, i64 1, i64 -1 ; 2 uses
  %.079181 = select i1 %.not98178, i64 -1, i64 1  ; 3 uses
  %.not152182 = icmp eq i64 %i.b, 0
  br i1 %.not152182, label %._crit_edge140.thread, label %.lr.ph139.split.preheader

.lr.ph139.split.preheader:                        ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = add nsw i64 %i.b, -1
  br label %.lr.ph139.split

.lr.ph139.split.us.preheader:                     ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = add nsw i64 %i.b, -1
  br label %.lr.ph139.split.us

.lr.ph139.split.us:                               ; preds = %.lr.ph139.split.us.preheader, %bb.g
  %.073137.us = phi i64 [ %11, %bb.g ], [ 0, %.lr.ph139.split.us.preheader ] ; 3 uses
  %.181136.us = phi ptr [ %.2.lcssa.us, %bb.g ], [ %.080, %.lr.ph139.split.us.preheader ] ; 2 uses
  %.082135.us = phi i64 [ %.183.lcssa.us, %bb.g ], [ 0, %.lr.ph139.split.us.preheader ] ; 4 uses
  %.086134.us = phi i32 [ %i.q, %bb.g ], [ 1, %.lr.ph139.split.us.preheader ]
  %.089133.us = phi i32 [ %.392.lcssa.us, %bb.g ], [ 0, %.lr.ph139.split.us.preheader ] ; 4 uses
  %.093132.us = phi i64 [ %.194.lcssa.us, %bb.g ], [ 0, %.lr.ph139.split.us.preheader ]
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %.073137.us
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = xor i32 %i.n, 1073741823
  %i.p = add i32 %i.o, %.086134.us                ; 2 uses
  %i.q = lshr i32 %i.p, 30
  %i.r = and i32 %i.p, 1073741823                 ; 3 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = zext nneg i32 %.089133.us to i64
  %i.u = shl i64 %i.s, %i.t
  %i.v = or i64 %i.u, %.093132.us                 ; 2 uses
  %i.w = icmp eq i64 %.073137.us, %i.l
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph139.split.us
  %i.x = add i32 %.089133.us, 30
  br label %.loopexit111.us

bb.f:                                             ; preds = %.lr.ph139.split.us
  %.not104120.us = icmp eq i32 %i.r, 1073741823
  br i1 %.not104120.us, label %.loopexit111.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.f
  %i.y = xor i32 %i.r, 1073741823
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.075122.us = phi i32 [ %i.z, %.lr.ph.us ], [ %i.y, %.lr.ph.us.preheader ]
  %.190121.us = phi i32 [ %i.aa, %.lr.ph.us ], [ %.089133.us, %.lr.ph.us.preheader ]
  %i.z = lshr i32 %.075122.us, 1                  ; 2 uses
  %i.aa = add i32 %.190121.us, 1                  ; 2 uses
  %.not104.us = icmp eq i32 %i.z, 0
  br i1 %.not104.us, label %.loopexit111.us, label %.lr.ph.us, !llvm.loop !55

.loopexit111.us:                                  ; preds = %.lr.ph.us, %bb.f, %bb.e
  %.291.us = phi i32 [ %i.x, %bb.e ], [ %.089133.us, %bb.f ], [ %i.aa, %.lr.ph.us ] ; 4 uses
  %i.ab = icmp ugt i32 %.291.us, 7
  br i1 %i.ab, label %.lr.ph127.us.preheader, label %bb.g

.lr.ph127.us.preheader:                           ; preds = %.loopexit111.us
  %umax166 = tail call i64 @llvm.umax.i64(i64 %.082135.us, i64 %2)
  %i.ac = add i32 %.291.us, -8
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = trunc i64 %.082135.us to i32
  %i.ag = add i32 %i.ae, %i.af
  br label %._crit_edge.us.a

._crit_edge.us.a:                                 ; preds = %.lr.ph127.us.preheader, %.lr.ph127.us
  %.2126.us = phi ptr [ %8, %.lr.ph127.us ], [ %.181136.us, %.lr.ph127.us.preheader ] ; 2 uses
  %.183.lcssa.us.a = phi i64 [ %6, %.lr.ph127.us ], [ %.082135.us, %.lr.ph127.us.preheader ] ; 2 uses
  %.392124.us = phi i32 [ %9, %.lr.ph127.us ], [ %.291.us, %.lr.ph127.us.preheader ]
  %.194123.us = phi i64 [ %10, %.lr.ph127.us ], [ %i.v, %.lr.ph127.us.preheader ] ; 2 uses
  %exitcond170.not.a = icmp eq i64 %.183.lcssa.us.a, %umax166
  br i1 %exitcond170.not.a, label %.loopexit110, label %.lr.ph127.us

.lr.ph127.us:                                     ; preds = %._crit_edge.us.a
  %6 = add i64 %.183.lcssa.us.a, 1                ; 3 uses
  %7 = trunc i64 %.194123.us to i8
  store i8 %7, ptr %.2126.us, align 1, !tbaa !24
  %8 = getelementptr i8, ptr %.2126.us, i64 %.079 ; 2 uses
  %9 = add i32 %.392124.us, -8                    ; 2 uses
  %10 = lshr i64 %.194123.us, 8                   ; 2 uses
  %lftr.wideiv168 = trunc i64 %6 to i32
  %exitcond167.not = icmp eq i32 %i.ag, %lftr.wideiv168
  br i1 %exitcond167.not, label %bb.g, label %._crit_edge.us.a, !llvm.loop !56

bb.g:                                             ; preds = %.lr.ph127.us, %.loopexit111.us
  %.194.lcssa.us = phi i64 [ %i.v, %.loopexit111.us ], [ %10, %.lr.ph127.us ] ; 2 uses
  %.392.lcssa.us = phi i32 [ %.291.us, %.loopexit111.us ], [ %9, %.lr.ph127.us ] ; 2 uses
  %.183.lcssa.us = phi i64 [ %.082135.us, %.loopexit111.us ], [ %6, %.lr.ph127.us ] ; 2 uses
  %.2.lcssa.us = phi ptr [ %.181136.us, %.loopexit111.us ], [ %8, %.lr.ph127.us ] ; 2 uses
  %11 = add nuw nsw i64 %.073137.us, 1            ; 2 uses
  %exitcond169.not = icmp eq i64 %11, %i.b
  br i1 %exitcond169.not, label %._crit_edge140, label %.lr.ph139.split.us, !llvm.loop !57

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader, %._crit_edge
  %.073137 = phi i64 [ %i.bc, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 3 uses
  %.181136 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %.080179, %.lr.ph139.split.preheader ] ; 2 uses
  %.082135 = phi i64 [ %.183.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 4 uses
  %.089133 = phi i32 [ %.392.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 4 uses
  %.093132 = phi i64 [ %.194.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ]
  %i.ah = getelementptr [4 x i8], ptr %i.i, i64 %.073137
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7  ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = zext nneg i32 %.089133 to i64
  %i.al = shl i64 %i.aj, %i.ak
  %i.am = or i64 %i.al, %.093132                  ; 2 uses
  %i.an = icmp eq i64 %.073137, %i.j
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph139.split
  %.not104120 = icmp eq i32 %i.ai, 0
  br i1 %.not104120, label %.loopexit111, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ao = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true)
  %reass.sub = sub i32 %.089133, %i.ao
  %i.ap = add i32 %reass.sub, 32
  br label %.loopexit111

bb.i:                                             ; preds = %.lr.ph139.split
  %i.aq = add i32 %.089133, 30
  br label %.loopexit111

.loopexit111:                                     ; preds = %.lr.ph.preheader, %bb.h, %bb.i
  %.291 = phi i32 [ %i.aq, %bb.i ], [ %.089133, %bb.h ], [ %i.ap, %.lr.ph.preheader ] ; 4 uses
  %i.ar = icmp ugt i32 %.291, 7
  br i1 %i.ar, label %.lr.ph127.preheader, label %._crit_edge

.lr.ph127.preheader:                              ; preds = %.loopexit111
  %umax = tail call i64 @llvm.umax.i64(i64 %.082135, i64 %2)
  %i.as = add i32 %.291, -8
  %i.at = lshr i32 %i.as, 3
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = trunc i64 %.082135 to i32
  %i.aw = add i32 %i.au, %i.av
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %bb.j
  %.2126 = phi ptr [ %i.az, %bb.j ], [ %.181136, %.lr.ph127.preheader ] ; 2 uses
  %.183125 = phi i64 [ %i.ax, %bb.j ], [ %.082135, %.lr.ph127.preheader ] ; 2 uses
  %.392124 = phi i32 [ %i.ba, %bb.j ], [ %.291, %.lr.ph127.preheader ]
  %.194123 = phi i64 [ %i.bb, %bb.j ], [ %i.am, %.lr.ph127.preheader ] ; 2 uses
  %exitcond.not = icmp eq i64 %.183125, %umax
  br i1 %exitcond.not, label %.loopexit110, label %bb.j

bb.j:                                             ; preds = %.lr.ph127
  %i.ax = add i64 %.183125, 1                     ; 3 uses
  %i.ay = trunc i64 %.194123 to i8
  store i8 %i.ay, ptr %.2126, align 1, !tbaa !24
  %i.az = getelementptr i8, ptr %.2126, i64 %.079181 ; 2 uses
  %i.ba = add i32 %.392124, -8                    ; 2 uses
  %i.bb = lshr i64 %.194123, 8                    ; 2 uses
  %lftr.wideiv = trunc i64 %i.ax to i32
  %exitcond164.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond164.not, label %._crit_edge, label %.lr.ph127, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.j, %.loopexit111
  %.194.lcssa = phi i64 [ %i.am, %.loopexit111 ], [ %i.bb, %bb.j ] ; 2 uses
  %.392.lcssa = phi i32 [ %.291, %.loopexit111 ], [ %i.ba, %bb.j ] ; 2 uses
  %.183.lcssa = phi i64 [ %.082135, %.loopexit111 ], [ %i.ax, %bb.j ] ; 2 uses
  %.2.lcssa = phi ptr [ %.181136, %.loopexit111 ], [ %i.az, %bb.j ] ; 2 uses
  %i.bc = add nuw nsw i64 %.073137, 1             ; 2 uses
  %exitcond165.not = icmp eq i64 %i.bc, %i.b
  br i1 %exitcond165.not, label %._crit_edge140, label %.lr.ph139.split, !llvm.loop !57

._crit_edge140:                                   ; preds = %._crit_edge, %bb.g
  %.079189 = phi i64 [ %.079, %bb.g ], [ %.079181, %._crit_edge ] ; 3 uses
  %.079.neg187 = phi i64 [ %.079.neg, %bb.g ], [ %.079.neg180, %._crit_edge ]
  %.088184 = phi i32 [ 1, %bb.g ], [ 0, %._crit_edge ]
  %.093.lcssa = phi i64 [ %.194.lcssa.us, %bb.g ], [ %.194.lcssa, %._crit_edge ]
  %.089.lcssa = phi i32 [ %.392.lcssa.us, %bb.g ], [ %.392.lcssa, %._crit_edge ] ; 2 uses
  %.082.lcssa = phi i64 [ %.183.lcssa.us, %bb.g ], [ %.183.lcssa, %._crit_edge ] ; 3 uses
  %.181.lcssa = phi ptr [ %.2.lcssa.us, %bb.g ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %.not100 = icmp eq i32 %.089.lcssa, 0
  br i1 %.not100, label %._crit_edge140.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge140
  %.not103 = icmp ult i64 %.082.lcssa, %2
  br i1 %.not103, label %bb.l, label %.loopexit110

bb.l:                                             ; preds = %bb.k
  %i.bd = add nuw i64 %.082.lcssa, 1
  %i.be = zext nneg i32 %.089.lcssa to i64
  %i.bf = shl nsw i64 -1, %i.be
  %i.bg = select i1 %i.d, i64 %i.bf, i64 0
  %.295 = or i64 %i.bg, %.093.lcssa
  %i.bh = trunc i64 %.295 to i8
  store i8 %i.bh, ptr %.181.lcssa, align 1, !tbaa !24
  %i.bi = getelementptr i8, ptr %.181.lcssa, i64 %.079189
  br label %bb.p

._crit_edge140.thread:                            ; preds = %.thread, %bb.d, %._crit_edge140
  %.181.lcssa211 = phi ptr [ %.181.lcssa, %._crit_edge140 ], [ %.080179, %.thread ], [ %.080, %bb.d ] ; 2 uses
  %.082.lcssa210 = phi i64 [ %.082.lcssa, %._crit_edge140 ], [ 0, %.thread ], [ 0, %bb.d ] ; 2 uses
  %.088184209 = phi i32 [ %.088184, %._crit_edge140 ], [ 0, %.thread ], [ 1, %bb.d ]
  %.079.neg187208 = phi i64 [ %.079.neg187, %._crit_edge140 ], [ %.079.neg180, %.thread ], [ %.079.neg, %bb.d ]
  %.079189207 = phi i64 [ %.079189, %._crit_edge140 ], [ %.079181, %.thread ], [ %.079, %bb.d ]
  %i.bj = icmp eq i64 %.082.lcssa210, %2
  %i.bk = icmp ne i32 %4, 0
  %or.cond = and i1 %i.bk, %i.bj
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge140.thread
  %.not101 = icmp eq i64 %2, 0
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %.181.lcssa211, i64 %.079.neg187208
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %.lobit = lshr i8 %i.bm, 7
  %i.bn = zext nneg i8 %.lobit to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.074 = phi i32 [ %i.bn, %bb.n ], [ 0, %bb.m ]
  %.not102 = icmp eq i32 %.074, %.088184209
  br i1 %.not102, label %.loopexit, label %.loopexit110

bb.p:                                             ; preds = %._crit_edge140.thread, %bb.l
  %.079189206 = phi i64 [ %.079189, %bb.l ], [ %.079189207, %._crit_edge140.thread ] ; 9 uses
  %.284 = phi i64 [ %i.bd, %bb.l ], [ %.082.lcssa210, %._crit_edge140.thread ] ; 5 uses
  %.3 = phi ptr [ %i.bi, %bb.l ], [ %.181.lcssa211, %._crit_edge140.thread ] ; 2 uses
  %i.bo = sext i1 %i.d to i8                      ; 9 uses
  %i.bp = icmp ult i64 %.284, %2
  br i1 %i.bp, label %.lr.ph151.preheader, label %.loopexit

.lr.ph151.preheader:                              ; preds = %bb.p
  %i.bq = sub nuw i64 %2, %.284
  %xtraiter = and i64 %i.bq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph151.prol.loopexit, label %.lr.ph151.prol

.lr.ph151.prol:                                   ; preds = %.lr.ph151.preheader, %.lr.ph151.prol
  %.4149.prol = phi ptr [ %i.bs, %.lr.ph151.prol ], [ %.3, %.lr.ph151.preheader ] ; 2 uses
  %.385148.prol = phi i64 [ %i.br, %.lr.ph151.prol ], [ %.284, %.lr.ph151.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph151.prol ], [ 0, %.lr.ph151.preheader ]
  store i8 %i.bo, ptr %.4149.prol, align 1, !tbaa !24
  %i.br = add nuw i64 %.385148.prol, 1            ; 2 uses
  %i.bs = getelementptr i8, ptr %.4149.prol, i64 %.079189206 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph151.prol.loopexit, label %.lr.ph151.prol, !llvm.loop !58

.lr.ph151.prol.loopexit:                          ; preds = %.lr.ph151.prol, %.lr.ph151.preheader
  %.4149.unr = phi ptr [ %.3, %.lr.ph151.preheader ], [ %i.bs, %.lr.ph151.prol ]
  %.385148.unr = phi i64 [ %.284, %.lr.ph151.preheader ], [ %i.br, %.lr.ph151.prol ]
  %i.bt = sub i64 %.284, %2
  %i.bu = icmp ugt i64 %i.bt, -8
  br i1 %i.bu, label %.loopexit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.prol.loopexit, %.lr.ph151
  %.4149 = phi ptr [ %i.cd, %.lr.ph151 ], [ %.4149.unr, %.lr.ph151.prol.loopexit ] ; 2 uses
  %.385148 = phi i64 [ %i.cc, %.lr.ph151 ], [ %.385148.unr, %.lr.ph151.prol.loopexit ]
  store i8 %i.bo, ptr %.4149, align 1, !tbaa !24
  %i.bv = getelementptr i8, ptr %.4149, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.bv, align 1, !tbaa !24
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.bw, align 1, !tbaa !24
  %i.bx = getelementptr i8, ptr %i.bw, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !24
  %i.by = getelementptr i8, ptr %i.bx, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.by, align 1, !tbaa !24
  %i.bz = getelementptr i8, ptr %i.by, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.bz, align 1, !tbaa !24
  %i.ca = getelementptr i8, ptr %i.bz, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.ca, align 1, !tbaa !24
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.079189206 ; 2 uses
  store i8 %i.bo, ptr %i.cb, align 1, !tbaa !24
  %i.cc = add nuw i64 %.385148, 8                 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 %.079189206
  %exitcond171.not.7 = icmp eq i64 %i.cc, %2
  br i1 %exitcond171.not.7, label %.loopexit, label %.lr.ph151, !llvm.loop !60

.loopexit110:                                     ; preds = %.lr.ph127, %._crit_edge.us.a, %bb.k, %bb.o
  %.not106 = icmp eq i32 %5, 0
  br i1 %.not106, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit110, %bb.c
  %.str.14.sink = phi ptr [ @.str.13, %bb.c ], [ @.str.14, %.loopexit110 ]
  %i.ce = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ce, ptr noundef nonnull %.str.14.sink) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph151.prol.loopexit, %.lr.ph151, %.loopexit.sink.split, %bb.p, %.loopexit110, %bb.c, %bb.o
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %.loopexit110 ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %.loopexit.sink.split ], [ 0, %.lr.ph151 ], [ 0, %.lr.ph151.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1152921504606846975, 1152921504606846977) i64 @PyLong_AsNativeBytes(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1286) #16
  br label %Py_DECREF.exit134

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %3, 3
  %i.d = icmp ne i32 %i.c, 0                      ; 6 uses
  %storemerge.i = zext i1 %i.d to i32
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val138 = load i64, ptr %i.f, align 8, !tbaa !35
  %i.g = and i64 %.val138, 16777216
  %.not.not.not = icmp eq i64 %i.g, 0             ; 3 uses
  br i1 %.not.not.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not109 = icmp eq i32 %3, -1
  %i.h = and i32 %3, 16
  %.not110 = icmp eq i32 %i.h, 0
  %or.cond125 = or i1 %.not109, %.not110
  br i1 %or.cond125, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit134, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #16 ; 0 uses
  br label %Py_DECREF.exit134

bb.g:                                             ; preds = %bb.e, %bb.c
  %.089 = phi ptr [ %0, %bb.c ], [ %i.i, %bb.e ]  ; 11 uses
  %.not111 = icmp ne i32 %3, -1
  %i.m = and i32 %3, 8
  %.not112 = icmp ne i32 %i.m, 0
  %or.cond126.not184 = and i1 %.not111, %.not112
  %.phi.trans.insert = getelementptr i8, ptr %.089, i64 16
  %.089.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 4 uses
  %i.n = and i64 %.089.val.pre, 3
  %i.o = icmp eq i64 %i.n, 2
  %or.cond183 = select i1 %or.cond126.not184, i1 %i.o, i1 false
  br i1 %or.cond183, label %bb.h, label %._crit_edge172

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.15) #16
  br i1 %.not.not.not, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %.089, align 8, !tbaa !24  ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.089, align 8, !tbaa !24
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit134

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.089) #16
  br label %Py_DECREF.exit134

._crit_edge172:                                   ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.089, i64 16
  %i.u = icmp ugt i64 %.089.val.pre, 15
  br i1 %i.u, label %bb.z, label %bb.l

bb.l:                                             ; preds = %._crit_edge172
  %i.v = getelementptr i8, ptr %.089, i64 24
  %.089.val137 = load i32, ptr %i.v, align 8, !tbaa !7
  %i.w = and i64 %.089.val.pre, 3
  %i.x = sub nsw i64 1, %i.w
  %i.y = zext i32 %.089.val137 to i64
  %i.z = mul nsw i64 %i.x, %i.y                   ; 14 uses
  store i64 %i.z, ptr %.sroa.0, align 8, !tbaa !24
  %i.aa = icmp eq i64 %2, 0
  %i.ab = lshr i64 %i.z, 56
  %i.ac = trunc nuw i64 %i.ab to i8
  %i.ad = lshr i64 %i.z, 48
  %i.ae = trunc i64 %i.ad to i8
  %i.af = lshr i64 %i.z, 40
  %i.ag = trunc i64 %i.af to i8
  %i.ah = lshr i64 %i.z, 32
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = lshr i64 %i.z, 24
  %i.ak = trunc i64 %i.aj to i8
  %i.al = lshr i64 %i.z, 16
  %i.am = trunc i64 %i.al to i8
  %i.an = lshr i64 %i.z, 8
  %i.ao = trunc i64 %i.an to i8
  %i.ap = trunc i64 %i.z to i8
  br i1 %i.aa, label %_fits_in_n_bits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp samesign ult i64 %2, 9
  br i1 %i.aq, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %i.d, label %bb.o, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 8 uses
  %.sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 8, !tbaa !24
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  store i8 %.sroa.0.0..sroa.0.0., ptr %i.as, align 1, !tbaa !24
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %.sroa.0, i64 %2, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph166
  %.sroa.0.1..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx187, align 1, !tbaa !24
  %i.at = getelementptr i8, ptr %i.ar, i64 -2
  store i8 %.sroa.0.1..sroa.0.1., ptr %i.at, align 1, !tbaa !24
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.2..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx188, align 2, !tbaa !24
  %i.au = getelementptr i8, ptr %i.ar, i64 -3
  store i8 %.sroa.0.2..sroa.0.2., ptr %i.au, align 1, !tbaa !24
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.3..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx189, align 1, !tbaa !24
  %i.av = getelementptr i8, ptr %i.ar, i64 -4
  store i8 %.sroa.0.3..sroa.0.3., ptr %i.av, align 1, !tbaa !24
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4..sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4. = load i8, ptr %.sroa.0.4..sroa_idx190, align 4, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.ar, i64 -5
  store i8 %.sroa.0.4..sroa.0.4., ptr %i.aw, align 1, !tbaa !24
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.5..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  %.sroa.0.5..sroa.0.5. = load i8, ptr %.sroa.0.5..sroa_idx191, align 1, !tbaa !24
  %i.ax = getelementptr i8, ptr %i.ar, i64 -6
  store i8 %.sroa.0.5..sroa.0.5., ptr %i.ax, align 1, !tbaa !24
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.6..sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6. = load i8, ptr %.sroa.0.6..sroa_idx192, align 2, !tbaa !24
  %i.ay = getelementptr i8, ptr %i.ar, i64 -7
  store i8 %.sroa.0.6..sroa.0.6., ptr %i.ay, align 1, !tbaa !24
  %exitcond.not.6 = icmp eq i64 %2, 7
  br i1 %exitcond.not.6, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.7..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  %.sroa.0.7..sroa.0.7. = load i8, ptr %.sroa.0.7..sroa_idx193, align 1, !tbaa !24
  %i.az = getelementptr i8, ptr %i.ar, i64 -8
  store i8 %.sroa.0.7..sroa.0.7., ptr %i.az, align 1, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph166, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.o
  %i.ba = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bb = icmp eq i64 %2, 8
  br i1 %i.bb, label %_fits_in_n_bits.exit.thread, label %_fits_in_n_bits.exit

end_hunk_0
begin_hunk_1_@long_true_divide:bb.a
  %i.kd = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.kc) #16, !tbaa !7
  %i.ke = fcmp oeq double %.0134.lcssa, %i.kd
  br i1 %i.ke, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %Py_DECREF.exit
  %i.kf = trunc nsw i64 %i.cq to i32
  %i.kg = tail call double @ldexp(double noundef %.0134.lcssa, i32 noundef %i.kf) #16, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge232, %bb.ai
  %.0133 = phi double [ %i.bs, %._crit_edge232 ], [ %i.kg, %bb.ai ] ; 2 uses
  %i.kh = fneg double %.0133
  %i.ki = select i1 %i.p, double %i.kh, double %.0133
  %i.kj = tail call ptr @PyFloat_FromDouble(double noundef %i.ki) #16
  br label %bb.am

bb.ak:                                            ; preds = %bb.e, %bb.m, %bb.k
  %i.kk = select i1 %i.p, double -0.000000e+00, double 0.000000e+00
  %i.kl = tail call ptr @PyFloat_FromDouble(double noundef %i.kk) #16
  br label %bb.am

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.l, %.thread
  %i.km = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.km, ptr noundef nonnull @.str.56) #16
  br label %bb.am

bb.am:                                            ; preds = %Py_DECREF.exit189, %bb.p, %bb.o, %bb.d, %bb.al, %bb.a, %bb.b, %bb.ak, %bb.aj
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ %i.kl, %bb.ak ], [ %i.kj, %bb.aj ], [ @_Py_NotImplementedStruct, %bb.b ], [ null, %Py_DECREF.exit189 ], [ null, %bb.o ], [ null, %bb.d ], [ null, %bb.al ], [ null, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_mul(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val15 = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val16 = load i64, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = or i64 %.val16, %.val15
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val12 = load i32, ptr %i.e, align 8, !tbaa !7
  %i.f = and i64 %.val15, 3
  %i.g = sub nsw i64 1, %i.f
  %i.h = zext i32 %.val12 to i64
  %i.i = getelementptr i8, ptr %1, i64 24
  %.val10 = load i32, ptr %i.i, align 8, !tbaa !7
  %i.j = and i64 %.val16, 3
  %i.k = sub nsw i64 1, %i.j
  %i.l = zext i32 %.val10 to i64
  %i.m = mul nsw i64 %i.k, %i.g
  %i.n = mul nsw i64 %i.m, %i.h
  %i.o = mul i64 %i.n, %i.l
  %i.p = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.o)
  br label %_PyLong_Negate.exit

bb.c:                                             ; preds = %bb.a
  %i.q = tail call fastcc ptr @k_mul(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 9 uses
  %.val13 = load i64, ptr %i.a, align 8, !tbaa !25
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !25
  %i.r = xor i64 %.val14, %.val13
  %i.s = and i64 %i.r, 3
  %i.t = icmp ne i64 %i.s, 0
  %i.u = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.d, label %_PyLong_Negate.exit

bb.d:                                             ; preds = %bb.c
  %.val7.i = load i32, ptr %i.q, align 8, !tbaa !24
  %.not.i = icmp eq i32 %.val7.i, 1
  %i.v = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %i.w, 3
  %i.y = sub nsw i64 2, %i.x
  %i.z = and i64 %i.w, -8
  %i.aa = and i64 %i.y, 4294967295
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !25
  br label %_PyLong_Negate.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.q, i64 24
  %.val6.i = load i32, ptr %i.ac, align 8, !tbaa !7
  %i.ad = and i64 %i.w, 3
  %.neg.i = add nsw i64 %i.ad, -1
  %i.ae = zext i32 %.val6.i to i64
  %.neg8.i = mul nsw i64 %.neg.i, %i.ae
  %i.af = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %.neg8.i), !inline_history !243 ; 3 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.g, label %_PyLong_Negate.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.q, align 8, !tbaa !24
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %_PyLong_Negate.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16, !inline_history !243
  br label %_PyLong_Negate.exit

_PyLong_Negate.exit:                              ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.e ], [ %i.af, %bb.h ], [ %i.af, %bb.g ], [ %i.af, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @k_mul(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val119 = load i64, ptr %i.e, align 8, !tbaa !25
  %i.f = lshr i64 %.val119, 3                     ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val118 = load i64, ptr %i.g, align 8, !tbaa !25
  %i.h = lshr i64 %.val118, 3                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8, !tbaa !207
  %i.i = icmp samesign ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.089 = phi ptr [ %0, %bb.b ], [ %1, %bb.a ]    ; 5 uses
  %.088 = phi i64 [ %i.h, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %.087 = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %.084 = phi ptr [ %1, %bb.b ], [ %0, %bb.a ]    ; 6 uses
  %i.j = icmp eq ptr %1, %0                       ; 4 uses
  %i.k = select i1 %i.j, i64 140, i64 70
  %.not = icmp samesign ugt i64 %.088, %i.k
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %.088, 0
  br i1 %i.l, label %x_mul.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.084, i64 16
  %.val101.i = load i64, ptr %i.m, align 8, !tbaa !25
  %i.n = lshr i64 %.val101.i, 3                   ; 7 uses
  %i.o = getelementptr i8, ptr %.089, i64 16
  %.val100.i = load i64, ptr %i.o, align 8, !tbaa !25
  %.val100.fr.i = freeze i64 %.val100.i
  %i.p = lshr i64 %.val100.fr.i, 3                ; 2 uses
  %i.q = add nuw nsw i64 %i.p, %i.n
  %i.r = tail call fastcc ptr @long_alloc(i64 noundef %i.q), !inline_history !311 ; 13 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %x_mul.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 24       ; 3 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16       ; 3 uses
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !25
  %i.v = lshr i64 %.val.i, 1
  %i.w = and i64 %i.v, 9223372036854775804
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  br i1 %i.j, label %bb.g, label %.preheader103.i

.preheader103.i:                                  ; preds = %bb.f
  %.not124.i = icmp eq i64 %i.n, 0
  br i1 %.not124.i, label %.critedge.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.preheader103.i
  %i.x = getelementptr i8, ptr %.084, i64 24
  %i.y = getelementptr i8, ptr %.089, i64 24      ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.p ; 2 uses
  %i.aa = icmp ult ptr %i.y, %i.z
  br i1 %i.aa, label %.lr.ph111.split.us.i, label %.lr.ph111.split.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.i, %Py_DECREF.exit.us.i
  %.178110.us.i = phi i64 [ %7, %Py_DECREF.exit.us.i ], [ 0, %.lr.ph111.i ] ; 3 uses
  %i.ab = getelementptr [4 x i8], ptr %i.x, i64 %.178110.us.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i32 @PyErr_CheckSignals() #16, !inline_history !311
  %.not.us.i = icmp eq i32 %i.ae, 0
  br i1 %.not.us.i, label %.preheader.us.preheader.i, label %.split.us.i

.preheader.us.preheader.i:                        ; preds = %.lr.ph111.split.us.i
  %i.af = getelementptr [4 x i8], ptr %i.t, i64 %.178110.us.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.preheader.us.preheader.i
  %.075108.us.i = phi ptr [ %i.ai, %.preheader.us.i ], [ %i.y, %.preheader.us.preheader.i ] ; 2 uses
  %.076107.us.i = phi ptr [ %i.aq, %.preheader.us.i ], [ %i.af, %.preheader.us.preheader.i ] ; 3 uses
  %.079106.us.i = phi i64 [ %i.ar, %.preheader.us.i ], [ 0, %.preheader.us.preheader.i ]
  %i.ag = load i32, ptr %.076107.us.i, align 4, !tbaa !7
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %.075108.us.i, i64 4 ; 2 uses
  %i.aj = load i32, ptr %.075108.us.i, align 4, !tbaa !7
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw i64 %i.ak, %i.ad
  %i.am = add nuw nsw i64 %.079106.us.i, %i.ah
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1073741823
  %i.aq = getelementptr i8, ptr %.076107.us.i, i64 4 ; 3 uses
  store i32 %i.ap, ptr %.076107.us.i, align 4, !tbaa !7
  %i.ar = lshr i64 %i.an, 30                      ; 3 uses
  %i.as = icmp ult ptr %i.ai, %i.z
  br i1 %i.as, label %.preheader.us.i, label %._crit_edge.us.i, !llvm.loop !312

2:                                                ; preds = %._crit_edge.us.i
  %3 = trunc i64 %i.ar to i32
  %4 = and i32 %3, 1073741823
  %5 = load i32, ptr %i.aq, align 4, !tbaa !7
  %6 = add i32 %5, %4
  store i32 %6, ptr %i.aq, align 4, !tbaa !7
  br label %Py_DECREF.exit.us.i

Py_DECREF.exit.us.i:                              ; preds = %._crit_edge.us.i, %2
  %7 = add nuw nsw i64 %.178110.us.i, 1           ; 2 uses
  %exitcond133.not.i = icmp eq i64 %7, %i.n
  br i1 %exitcond133.not.i, label %.critedge.i, label %.lr.ph111.split.us.i, !llvm.loop !313

._crit_edge.us.i:                                 ; preds = %.preheader.us.i
  %.not91.us.i = icmp eq i64 %i.ar, 0
  br i1 %.not91.us.i, label %Py_DECREF.exit.us.i, label %2

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %.084, i64 24     ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.n ; 2 uses
  %.not96120.not.i = icmp eq i64 %i.n, 0
  br i1 %.not96120.not.i, label %.critedge.i, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.g, %Py_DECREF.exit98.i
  %.077121.i = phi i64 [ %i.cd, %Py_DECREF.exit98.i ], [ 0, %bb.g ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %.077121.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = tail call i32 @PyErr_CheckSignals() #16, !inline_history !311
  %.not92.i = icmp eq i32 %i.ax, 0
  br i1 %.not92.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph123.i
  %i.ay = load i32, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %.not.i97.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i97.i, label %bb.i, label %x_mul.exit

bb.i:                                             ; preds = %bb.h
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.r, align 8, !tbaa !24
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %x_mul.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #16, !inline_history !311
  br label %x_mul.exit

bb.k:                                             ; preds = %.lr.ph123.i
  %.idx.i = shl nuw i64 %.077121.i, 3
  %i.bb = getelementptr i8, ptr %i.t, i64 %.idx.i ; 4 uses
  %i.bc = zext i32 %i.aw to i64                   ; 3 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.bc, %i.bc
  %i.bg = add nuw i64 %i.bf, %i.be                ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1073741823
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !7
  %i.bj = shl nuw nsw i64 %i.bc, 1
  %.081112.i = getelementptr i8, ptr %i.bb, i64 4 ; 2 uses
  %.080113.i = getelementptr i8, ptr %i.av, i64 4 ; 2 uses
  %.082114.i = lshr i64 %i.bg, 30                 ; 2 uses
  %i.bk = icmp ult ptr %.080113.i, %i.au
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.082117.i = phi i64 [ %.082.i, %.lr.ph.i ], [ %.082114.i, %bb.k ]
  %.080116.i = phi ptr [ %.080.i, %.lr.ph.i ], [ %.080113.i, %bb.k ] ; 2 uses
  %.081115.i = phi ptr [ %.081.i, %.lr.ph.i ], [ %.081112.i, %bb.k ] ; 4 uses
  %i.bl = load i32, ptr %.081115.i, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i32, ptr %.080116.i, align 4, !tbaa !7
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul i64 %i.bj, %i.bo
  %i.bq = add nuw nsw i64 %.082117.i, %i.bm
  %i.br = add i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %i.bs, 1073741823
  store i32 %i.bt, ptr %.081115.i, align 4, !tbaa !7
  %.081.i = getelementptr i8, ptr %.081115.i, i64 4 ; 2 uses
  %.080.i = getelementptr i8, ptr %.080116.i, i64 4 ; 2 uses
  %.082.i = lshr i64 %i.br, 30                    ; 2 uses
  %i.bu = icmp ult ptr %.080.i, %i.au
  br i1 %i.bu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !314

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.pn95.lcssa.i = phi ptr [ %i.bb, %bb.k ], [ %.081115.i, %.lr.ph.i ]
  %.081.lcssa.i = phi ptr [ %.081112.i, %bb.k ], [ %.081.i, %.lr.ph.i ] ; 2 uses
  %.082.lcssa.i = phi i64 [ %.082114.i, %bb.k ], [ %.082.i, %.lr.ph.i ] ; 2 uses
  %.not93.i = icmp eq i64 %.082.lcssa.i, 0
  br i1 %.not93.i, label %Py_DECREF.exit98.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.bv = load i32, ptr %.081.lcssa.i, align 4, !tbaa !7
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %.082.lcssa.i, %i.bw    ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.by, 1073741823
  store i32 %i.bz, ptr %.081.lcssa.i, align 4, !tbaa !7
  %i.ca = lshr i64 %i.bx, 30                      ; 2 uses
  %.not94.i = icmp eq i64 %i.ca, 0
  br i1 %.not94.i, label %Py_DECREF.exit98.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = getelementptr i8, ptr %.pn95.lcssa.i, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !7
  br label %Py_DECREF.exit98.i

Py_DECREF.exit98.i:                               ; preds = %bb.m, %bb.l, %._crit_edge.i
  %i.cd = add nuw nsw i64 %.077121.i, 1           ; 2 uses
  %exitcond134.not.i = icmp eq i64 %i.cd, %i.n
  br i1 %exitcond134.not.i, label %.critedge.i, label %.lr.ph123.i, !llvm.loop !315

.lr.ph111.split.i:                                ; preds = %.lr.ph111.i, %.preheader.i
  %.178110.i = phi i64 [ %i.cf, %.preheader.i ], [ 0, %.lr.ph111.i ]
  %i.ce = tail call i32 @PyErr_CheckSignals() #16, !inline_history !311
  %.not.i120 = icmp eq i32 %i.ce, 0
  br i1 %.not.i120, label %.preheader.i, label %.split.us.i

.preheader.i:                                     ; preds = %.lr.ph111.split.i
  %i.cf = add nuw nsw i64 %.178110.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.n
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph111.split.i, !llvm.loop !313

.split.us.i:                                      ; preds = %.lr.ph111.split.i, %.lr.ph111.split.us.i
  %i.cg = load i32, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cg, -1
  br i1 %.not.i.i, label %bb.n, label %x_mul.exit

bb.n:                                             ; preds = %.split.us.i
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.r, align 8, !tbaa !24
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %x_mul.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #16, !inline_history !311
  br label %x_mul.exit

.critedge.i:                                      ; preds = %.preheader.i, %Py_DECREF.exit.us.i, %Py_DECREF.exit98.i, %bb.g, %.preheader103.i
  %.val.i.i = load i64, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %i.cj = lshr i64 %.val.i.i, 3                   ; 3 uses
  %.not1315.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not1315.i.i, label %x_mul.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i
  %i.ck = getelementptr i8, ptr %i.r, i64 20
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %i.co, %bb.q ] ; 4 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %.016.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %.critedge.i.i

bb.q:                                             ; preds = %bb.p
  %i.co = add nsw i64 %.016.i.i, -1               ; 2 uses
  %.not13.i.i = icmp eq i64 %i.co, 0
  br i1 %.not13.i.i, label %.critedge.thread.thread.sink.split.i.i, label %bb.p, !llvm.loop !50

.critedge.i.i:                                    ; preds = %bb.p
  %.not.i102.i = icmp eq i64 %.016.i.i, %i.cj
  br i1 %.not.i102.i, label %x_mul.exit, label %bb.r

bb.r:                                             ; preds = %.critedge.i.i
  %i.cp = shl nuw i64 %.016.i.i, 3
  %i.cq = and i64 %.val.i.i, 3
  %i.cr = or disjoint i64 %i.cp, %i.cq
  br label %.critedge.thread.thread.sink.split.i.i

.critedge.thread.thread.sink.split.i.i:           ; preds = %bb.q, %bb.r
  %.sink.i.i = phi i64 [ %i.cr, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink.i.i, ptr %i.u, align 8, !tbaa !25
  br label %x_mul.exit

bb.s:                                             ; preds = %bb.c
  %i.cs = shl nuw nsw i64 %.088, 1
  %.not102 = icmp samesign ugt i64 %i.cs, %.087
  br i1 %.not102, label %bb.az, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %.084, i64 16
  %.val54.i = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.cu = lshr i64 %.val54.i, 3                   ; 3 uses
  %i.cv = getelementptr i8, ptr %.089, i64 16
  %.val53.i = load i64, ptr %i.cv, align 8, !tbaa !25
  %i.cw = lshr i64 %.val53.i, 3                   ; 3 uses
  %i.cx = add nuw nsw i64 %i.cw, %i.cu
  %i.cy = tail call fastcc ptr @long_alloc(i64 noundef %i.cx), !inline_history !316 ; 13 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %x_mul.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr i8, ptr %i.cy, i64 24     ; 2 uses
  %i.db = getelementptr i8, ptr %i.cy, i64 16     ; 4 uses
  %.val52.i = load i64, ptr %i.db, align 8, !tbaa !25
  %i.dc = lshr i64 %.val52.i, 1
  %i.dd = and i64 %i.dc, 9223372036854775804
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.da, i8 0, i64 %i.dd, i1 false)
  %i.de = tail call fastcc ptr @long_alloc(i64 noundef %i.cu), !inline_history !316 ; 16 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.split43.i, label %.preheader

.preheader:                                       ; preds = %bb.u
  %.not227243 = icmp eq i64 %i.cw, 0
  br i1 %.not227243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dg = getelementptr i8, ptr %i.de, i64 24
  %i.dh = getelementptr i8, ptr %.089, i64 24
  %i.di = getelementptr i8, ptr %i.de, i64 16
  %i.dj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.x

.split43.i:                                       ; preds = %bb.u
  %i.dk = load i32, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %.not.i.i122 = icmp sgt i32 %i.dk, -1
  br i1 %.not.i.i122, label %bb.v, label %x_mul.exit

bb.v:                                             ; preds = %.split43.i
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.cy, align 8, !tbaa !24
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.w, label %x_mul.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #16, !inline_history !316
  br label %x_mul.exit

bb.x:                                             ; preds = %.lr.ph, %bb.ai
  %.039.i245 = phi i64 [ %i.cw, %.lr.ph ], [ %i.fz, %bb.ai ] ; 2 uses
  %.041.i244 = phi i64 [ 0, %.lr.ph ], [ %i.ga, %bb.ai ] ; 4 uses
  %i.dn = tail call i64 @llvm.smin.i64(i64 %.039.i245, i64 %i.cu) ; 4 uses
  %i.do = getelementptr [4 x i8], ptr %i.dh, i64 %.041.i244
  %i.dp = shl nuw nsw i64 %i.dn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dg, ptr align 4 %i.do, i64 %i.dp, i1 false)
  %i.dq = shl nuw i64 %i.dn, 3
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !25
  %i.dr = tail call fastcc ptr @k_mul(ptr noundef %.084, ptr noundef nonnull %i.de), !inline_history !316 ; 11 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr [4 x i8], ptr %i.da, i64 %.041.i244 ; 4 uses
  %.val51.i = load i64, ptr %i.db, align 8, !tbaa !25
  %i.du = lshr i64 %.val51.i, 3
  %i.dv = sub i64 %i.du, %.041.i244               ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dr, i64 24     ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dr, i64 16     ; 2 uses
  %.val.i121 = load i64, ptr %i.dx, align 8, !tbaa !25 ; 3 uses
  %i.dy = lshr i64 %.val.i121, 3                  ; 5 uses
  switch i64 %i.dy, label %.lr.ph.i211.preheader.new [
    i64 0, label %v_iadd.exit
    i64 1, label %.lr.ph.i211.epil.preheader
  ]

.lr.ph.i211.preheader.new:                        ; preds = %bb.y
  %unroll_iter = and i64 %i.dy, 2305843009213693950
  br label %.lr.ph.i211

.preheader.i213.unr-lcssa:                        ; preds = %.lr.ph.i211
  %i.dz = and i64 %.val.i121, 8
  %lcmp.mod.not = icmp eq i64 %i.dz, 0
  br i1 %lcmp.mod.not, label %.preheader.i213, label %.lr.ph.i211.epil.preheader

.lr.ph.i211.epil.preheader:                       ; preds = %bb.y, %.preheader.i213.unr-lcssa
  %.026.i.epil.init = phi i32 [ 0, %bb.y ], [ %i.fb, %.preheader.i213.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ 0, %bb.y ], [ %i.fc, %.preheader.i213.unr-lcssa ] ; 2 uses
  %lcmp.mod376 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod376)
  %i.ea = getelementptr [4 x i8], ptr %i.dt, i64 %.02325.i.epil.init ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = getelementptr [4 x i8], ptr %i.dw, i64 %.02325.i.epil.init
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = add i32 %i.eb, %.026.i.epil.init
  %i.ef = add i32 %i.ee, %i.ed                    ; 2 uses
  %i.eg = and i32 %i.ef, 1073741823
  store i32 %i.eg, ptr %i.ea, align 4, !tbaa !7
  %i.eh = lshr i32 %i.ef, 30
  br label %.preheader.i213

.preheader.i213:                                  ; preds = %.preheader.i213.unr-lcssa, %.lr.ph.i211.epil.preheader
  %.lcssa368 = phi i32 [ %i.fb, %.preheader.i213.unr-lcssa ], [ %i.eh, %.lr.ph.i211.epil.preheader ] ; 2 uses
  %i.ei = icmp ne i32 %.lcssa368, 0
  %i.ej = icmp slt i64 %i.dy, %i.dv
  %i.ek = and i1 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph30.i, label %v_iadd.exit

.lr.ph.i211:                                      ; preds = %.lr.ph.i211, %.lr.ph.i211.preheader.new
  %.026.i = phi i32 [ 0, %.lr.ph.i211.preheader.new ], [ %i.fb, %.lr.ph.i211 ]
  %.02325.i = phi i64 [ 0, %.lr.ph.i211.preheader.new ], [ %i.fc, %.lr.ph.i211 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i211.preheader.new ], [ %niter.next.1, %.lr.ph.i211 ]
  %i.el = getelementptr [4 x i8], ptr %i.dt, i64 %.02325.i ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = getelementptr [4 x i8], ptr %i.dw, i64 %.02325.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  %i.ep = add i32 %i.em, %.026.i
  %i.eq = add i32 %i.ep, %i.eo                    ; 2 uses
  %i.er = and i32 %i.eq, 1073741823
  store i32 %i.er, ptr %i.el, align 4, !tbaa !7
  %i.es = lshr i32 %i.eq, 30
  %i.et = or disjoint i64 %.02325.i, 1            ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.dt, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  %i.ew = getelementptr [4 x i8], ptr %i.dw, i64 %i.et
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ey = add i32 %i.ev, %i.es
  %i.ez = add i32 %i.ey, %i.ex                    ; 2 uses
  %i.fa = and i32 %i.ez, 1073741823
  store i32 %i.fa, ptr %i.eu, align 4, !tbaa !7
  %i.fb = lshr i32 %i.ez, 30                      ; 3 uses
  %i.fc = add nuw nsw i64 %.02325.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i213.unr-lcssa, label %.lr.ph.i211, !llvm.loop !317

.lr.ph30.i:                                       ; preds = %.preheader.i213, %.lr.ph30.i
  %.129.i = phi i32 [ %i.fh, %.lr.ph30.i ], [ %.lcssa368, %.preheader.i213 ]
  %.12428.i = phi i64 [ %i.fi, %.lr.ph30.i ], [ %i.dy, %.preheader.i213 ] ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.dt, i64 %.12428.i ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7
  %i.ff = add i32 %i.fe, %.129.i                  ; 2 uses
end_hunk_1
