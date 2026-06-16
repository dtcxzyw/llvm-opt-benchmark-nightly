inline.NumInlined: 68
inline.NumDeleted: 21
begin_hunk_0_@siftup:bb.a

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.04262 = phi i64 [ %.145, %bb.m ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04661 = phi ptr [ %.248, %bb.m ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.g = shl i64 %.04262, 1                       ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 3 uses
  %i.i = add i64 %i.g, 2                          ; 2 uses
  %i.j = icmp slt i64 %i.i, %.val58
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr [8 x i8], ptr %.04661, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 6 uses
  %i.m = getelementptr [8 x i8], ptr %.04661, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10   ; 6 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %Py_INCREF.exit54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.l, align 8, !tbaa !25
  br label %Py_INCREF.exit54

Py_INCREF.exit54:                                 ; preds = %bb.d, %bb.e
  %i.r = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %Py_INCREF.exit, label %bb.f

bb.f:                                             ; preds = %Py_INCREF.exit54
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.n, align 8, !tbaa !25
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %Py_INCREF.exit54, %bb.f
  %i.u = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, i32 noundef 0) #2 ; 2 uses
  %i.v = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i55 = icmp sgt i32 %i.v, -1
  br i1 %.not.i55, label %bb.g, label %Py_DECREF.exit56

bb.g:                                             ; preds = %Py_INCREF.exit
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.l, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %Py_DECREF.exit56

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #2
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %Py_INCREF.exit, %bb.g, %bb.h
  %i.y = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %Py_DECREF.exit56
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.n, align 8, !tbaa !25
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #2
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit56, %bb.i, %bb.j
  %i.ab = icmp slt i32 %i.u, 0
  br i1 %i.ab, label %.critedge, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.ac = xor i32 %i.u, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add i64 %i.h, %i.ad
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !31
  %.val = load i64, ptr %i.a, align 8, !tbaa !26
  %.not53 = icmp eq i64 %.val58, %.val
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.16) #2
  br label %.critedge

bb.m:                                             ; preds = %bb.k, %.lr.ph
  %.248 = phi ptr [ %.04661, %.lr.ph ], [ %i.af, %bb.k ] ; 3 uses
  %.145 = phi i64 [ %i.h, %.lr.ph ], [ %i.ae, %bb.k ] ; 4 uses
  %i.ah = getelementptr [8 x i8], ptr %.248, i64 %.145 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr [8 x i8], ptr %.248, i64 %.04262 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !10
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !10
  %i.al = icmp slt i64 %.145, %i.d
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %.042.lcssa = phi i64 [ %1, %bb.c ], [ %.145, %bb.m ]
  %i.am = tail call fastcc i32 @siftdown(ptr noundef %0, i64 noundef %1, i64 noundef %.042.lcssa)
  br label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit, %bb.l, %._crit_edge, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ %i.am, %._crit_edge ], [ -1, %bb.l ], [ -1, %Py_DECREF.exit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @heappop_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.15) #2
  br label %Py_DECREF.exit24

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = add i64 %.val, -1                        ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 8, !tbaa !25
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.c, %bb.d
  %i.l = tail call i32 @PyList_SetSlice(ptr noundef nonnull %0, i64 noundef %i.f, i64 noundef %.val, ptr noundef null) #2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit
  %i.m = load i32, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not.i23 = icmp sgt i32 %i.m, -1
  br i1 %.not.i23, label %bb.f, label %Py_DECREF.exit24

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.h, align 8, !tbaa !25
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit24

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #2
  br label %Py_DECREF.exit24

bb.h:                                             ; preds = %Py_INCREF.exit
  %.not21 = icmp eq i64 %.val, 1
  br i1 %.not21, label %Py_DECREF.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 4 uses
  store ptr %i.h, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call i32 %1(ptr noundef nonnull %0, i64 noundef 0) #2, !callees !32
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %Py_DECREF.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit24

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !25
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit24

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #2
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.q, %bb.i ], [ %i.h, %bb.h ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.1
}

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @heapify_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.b = icmp sgt i64 %.val, 2500
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val, 1                        ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.f, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.056.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = lshr i64 %.056.i.i, 1                    ; 2 uses
  %i.f = add nuw nsw i32 %.07.i.i, 1              ; 2 uses
  %i.g = icmp samesign ugt i64 %.056.i.i, 3
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !37

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = lshr i64 %.val, 2                        ; 2 uses
  %i.l = add i64 %i.i, -2                         ; 2 uses
  %.not39.i = icmp slt i64 %i.l, %i.k
  br i1 %.not39.i, label %.preheader.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.02340.i = phi i64 [ %i.q, %bb.d ], [ %i.l, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.m = tail call i32 %1(ptr noundef %0, i64 noundef %.02340.i) #2, !callees !32, !inline_history !38
  %.not2937.i = icmp eq i32 %i.m, 0
  br i1 %.not2937.i, label %.lr.ph.i, label %cache_friendly_heapify.exit

.preheader.preheader.i:                           ; preds = %bb.d, %._crit_edge.loopexit.i.i
  %.144.i = add nsw i64 %i.c, -1                  ; 2 uses
  %.not2645.i = icmp slt i64 %.144.i, %i.j
  br i1 %.not2645.i, label %cache_friendly_heapify.exit, label %.preheader.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = ashr i64 %.02438.i, 1                    ; 2 uses
  %i.o = tail call i32 %1(ptr noundef %0, i64 noundef %i.n) #2, !callees !32, !inline_history !38
  %.not29.i = icmp eq i32 %i.o, 0
  br i1 %.not29.i, label %.lr.ph.i, label %cache_friendly_heapify.exit

.lr.ph.i:                                         ; preds = %.preheader34.i, %bb.c
  %.02438.i = phi i64 [ %i.n, %bb.c ], [ %.02340.i, %.preheader34.i ] ; 2 uses
  %i.p = and i64 %.02438.i, 1
  %.not30.i = icmp eq i64 %i.p, 0
  br i1 %.not30.i, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.02340.i, -1                ; 2 uses
  %.not.i = icmp slt i64 %i.q, %i.k
  br i1 %.not.i, label %.preheader.preheader.i, label %.preheader34.i, !llvm.loop !39

.loopexit31.i:                                    ; preds = %.lr.ph43.i
  %.1.i = add i64 %.146.i, -1                     ; 2 uses
  %.not26.i = icmp slt i64 %.1.i, %i.j
  br i1 %.not26.i, label %cache_friendly_heapify.exit, label %.preheader.i, !llvm.loop !40

.preheader.i:                                     ; preds = %.preheader.preheader.i, %.loopexit31.i
  %.146.i = phi i64 [ %.1.i, %.loopexit31.i ], [ %.144.i, %.preheader.preheader.i ] ; 3 uses
  %i.r = tail call i32 %1(ptr noundef %0, i64 noundef %.146.i) #2, !callees !32, !inline_history !38
  %.not2741.i = icmp eq i32 %i.r, 0
  br i1 %.not2741.i, label %.lr.ph43.i, label %cache_friendly_heapify.exit

bb.e:                                             ; preds = %.lr.ph43.i
  %i.s = ashr i64 %.12542.i, 1                    ; 2 uses
  %i.t = tail call i32 %1(ptr noundef %0, i64 noundef %i.s) #2, !callees !32, !inline_history !38
  %.not27.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i, label %.lr.ph43.i, label %cache_friendly_heapify.exit

.lr.ph43.i:                                       ; preds = %.preheader.i, %bb.e
  %.12542.i = phi i64 [ %i.s, %bb.e ], [ %.146.i, %.preheader.i ] ; 2 uses
  %i.u = and i64 %.12542.i, 1
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.loopexit31.i, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.v = ashr i64 %.val, 1                        ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %cache_friendly_heapify.exit

bb.g:                                             ; preds = %.lr.ph
  %i.x = icmp sgt i64 %.010.in40, 1
  br i1 %i.x, label %.lr.ph, label %cache_friendly_heapify.exit, !llvm.loop !41

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.010.in40 = phi i64 [ %.010, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %.010 = add nsw i64 %.010.in40, -1              ; 2 uses
  %i.y = tail call i32 %1(ptr noundef %0, i64 noundef %.010) #2, !callees !32
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.g, label %.cache_friendly_heapify.exit.loopexit37_crit_edge, !llvm.loop !41

.cache_friendly_heapify.exit.loopexit37_crit_edge: ; preds = %.lr.ph
  br label %cache_friendly_heapify.exit, !llvm.loop !41

cache_friendly_heapify.exit:                      ; preds = %bb.g, %.preheader34.i, %bb.c, %.preheader.i, %.loopexit31.i, %bb.e, %bb.f, %.cache_friendly_heapify.exit.loopexit37_crit_edge, %.preheader.preheader.i
  %.0 = phi ptr [ null, %.preheader.i ], [ @_Py_NoneStruct, %bb.f ], [ @_Py_NoneStruct, %.preheader.preheader.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.preheader34.i ], [ null, %.cache_friendly_heapify.exit.loopexit37_crit_edge ], [ @_Py_NoneStruct, %.loopexit31.i ], [ @_Py_NoneStruct, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @siftdown_max(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val42 = load i64, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %.not = icmp slt i64 %2, %.val42
  br i1 %.not, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = icmp sgt i64 %2, %1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %2
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.03245 = phi i64 [ %i.h, %bb.k ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.03344 = phi ptr [ %i.ad, %bb.k ], [ %i.f, %.lr.ph.preheader ] ; 6 uses
  %.03443 = phi ptr [ %i.z, %bb.k ], [ %i.d, %.lr.ph.preheader ]
  %i.g = add nsw i64 %.03245, -1
  %i.h = ashr i64 %i.g, 1                         ; 4 uses
  %i.i = getelementptr [8 x i8], ptr %.03443, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.j, align 8, !tbaa !25
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %.lr.ph, %bb.c
  %i.n = load i32, ptr %.03344, align 8, !tbaa !25 ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %.03344, align 8, !tbaa !25
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.d
  %i.q = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.j, ptr noundef nonnull %.03344, i32 noundef 0) #2 ; 2 uses
  %i.r = load i32, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not.i39 = icmp sgt i32 %i.r, -1
  br i1 %.not.i39, label %bb.e, label %Py_DECREF.exit40

bb.e:                                             ; preds = %Py_INCREF.exit
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.j, align 8, !tbaa !25
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %Py_DECREF.exit40

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #2
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %Py_INCREF.exit, %bb.e, %bb.f
  %i.u = load i32, ptr %.03344, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %Py_DECREF.exit40
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %.03344, align 8, !tbaa !25
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %.03344) #2
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit40, %bb.g, %bb.h
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit
  %.val = load i64, ptr %i.a, align 8, !tbaa !26
  %.not38 = icmp eq i64 %.val42, %.val
  br i1 %.not38, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.y = icmp eq i32 %i.q, 0
  br i1 %i.y, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.h ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr [8 x i8], ptr %i.z, i64 %.03245 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 2 uses
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !10
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !10
  %i.ae = icmp sgt i64 %i.h, %1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !42

.loopexit.sink.split:                             ; preds = %bb.i, %bb.a
  %PyExc_RuntimeError.sink = phi ptr [ @PyExc_IndexError, %bb.a ], [ @PyExc_RuntimeError, %bb.i ]
  %.str.16.sink = phi ptr [ @.str.15, %bb.a ], [ @.str.16, %bb.i ]
  %i.af = load ptr, ptr %PyExc_RuntimeError.sink, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull %.str.16.sink) #2
  br label %.loopexit

.loopexit:                                        ; preds = %Py_DECREF.exit, %bb.j, %bb.k, %.loopexit.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %.loopexit.sink.split ], [ -1, %Py_DECREF.exit ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @siftup_max(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val58 = load i64, ptr %i.a, align 8, !tbaa !26 ; 4 uses
  %.not = icmp slt i64 %1, %.val58
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.15) #2
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = ashr i64 %.val58, 1                      ; 2 uses
  %i.e = icmp slt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.04262 = phi i64 [ %.145, %bb.m ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04661 = phi ptr [ %.248, %bb.m ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.g = shl i64 %.04262, 1                       ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 3 uses
  %i.i = add i64 %i.g, 2                          ; 2 uses
  %i.j = icmp slt i64 %i.i, %.val58
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr [8 x i8], ptr %.04661, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 6 uses
  %i.m = getelementptr [8 x i8], ptr %.04661, i64 %i.h
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10   ; 6 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %Py_INCREF.exit54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.l, align 8, !tbaa !25
  br label %Py_INCREF.exit54

Py_INCREF.exit54:                                 ; preds = %bb.d, %bb.e
  %i.r = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %Py_INCREF.exit, label %bb.f

bb.f:                                             ; preds = %Py_INCREF.exit54
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.n, align 8, !tbaa !25
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %Py_INCREF.exit54, %bb.f
  %i.u = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, i32 noundef 0) #2 ; 2 uses
  %i.v = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i55 = icmp sgt i32 %i.v, -1
  br i1 %.not.i55, label %bb.g, label %Py_DECREF.exit56

bb.g:                                             ; preds = %Py_INCREF.exit
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.l, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %Py_DECREF.exit56

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #2
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %Py_INCREF.exit, %bb.g, %bb.h
  %i.y = load i32, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %Py_DECREF.exit56
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.n, align 8, !tbaa !25
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
end_hunk_0
