Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/graph_generator?download=true
inline.NumInlined: 50
inline.NumDeleted: 22
begin_hunk_0_@makeTriMesh:bb.a
  %.040 = phi i32 [ %i.l, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %.239 = phi i32 [ %i.k, %.lr.ph ], [ %.032.lcssa, %.lr.ph.preheader ] ; 2 uses
  %i.k = add i32 %.239, 1                         ; 2 uses
  tail call void %1(i32 noundef %.239, i32 noundef %i.k) #15
  %i.l = add nuw i32 %.040, 1                     ; 2 uses
  %exitcond43.not = icmp eq i32 %i.l, %umax
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @makeBall(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not39.i = icmp eq i32 %0, 0
  br i1 %.not39.i, label %makeCylinder.exit, label %.preheader37.lr.ph.i

.preheader37.lr.ph.i:                             ; preds = %bb.a
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %.preheader37.us.i, label %.preheader37.i

.preheader37.us.i:                                ; preds = %.preheader37.lr.ph.i, %._crit_edge.us.i
  %.03141.us.i = phi i32 [ %i.f, %._crit_edge.us.i ], [ 0, %.preheader37.lr.ph.i ] ; 3 uses
  %.03240.us.i = phi i32 [ %i.g, %._crit_edge.us.i ], [ 1, %.preheader37.lr.ph.i ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader37.us.i
  %.03038.us.i = phi i32 [ 1, %.preheader37.us.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.b = add i32 %.03038.us.i, %.03141.us.i       ; 2 uses
  %i.c = add i32 %i.b, 1
  tail call void %2(i32 noundef %i.b, i32 noundef %i.c) #15, !inline_history !75
  %i.d = add nuw i32 %.03038.us.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.d, %1
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !4

._crit_edge.us.i:                                 ; preds = %bb.b
  %i.e = add i32 %.03141.us.i, 1
  %i.f = add i32 %.03141.us.i, %1                 ; 2 uses
  tail call void %2(i32 noundef %i.e, i32 noundef %i.f) #15, !inline_history !75
  %i.g = add i32 %.03240.us.i, 1                  ; 2 uses
  %.not.us.i = icmp ugt i32 %i.g, %0
  br i1 %.not.us.i, label %.preheader.lr.ph.i, label %.preheader37.us.i, !llvm.loop !5

.preheader37.i:                                   ; preds = %.preheader37.lr.ph.i, %.preheader37.i
  %.03141.i = phi i32 [ %i.i, %.preheader37.i ], [ 0, %.preheader37.lr.ph.i ] ; 2 uses
  %.03240.i = phi i32 [ %i.j, %.preheader37.i ], [ 1, %.preheader37.lr.ph.i ]
  %i.h = add i32 %.03141.i, 1
  %i.i = add i32 %.03141.i, %1                    ; 2 uses
  tail call void %2(i32 noundef %i.h, i32 noundef %i.i) #15, !inline_history !75
  %i.j = add i32 %.03240.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.j, %0
  br i1 %.not.i, label %.preheader36.i, label %.preheader37.i, !llvm.loop !5

.preheader36.i:                                   ; preds = %.preheader37.i
  %.not3543.i = icmp ne i32 %1, 0
  %i.k = icmp ne i32 %0, 1
  %or.cond.i = and i1 %i.k, %.not3543.i
  br i1 %or.cond.i, label %.preheader.us.i.preheader, label %makeCylinder.exit

.preheader.lr.ph.i:                               ; preds = %._crit_edge.us.i
  %.old.not.i = icmp eq i32 %0, 1
  br i1 %.old.not.i, label %.lr.ph.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i, %.preheader36.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us46.i
  %.02944.us.i = phi i32 [ %i.r, %._crit_edge.us46.i ], [ 1, %.preheader.us.i.preheader ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.i
  %.042.us.i = phi i32 [ 1, %.preheader.us.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.l = add i32 %.042.us.i, -1
  %i.m = mul i32 %i.l, %1
  %i.n = add i32 %i.m, %.02944.us.i
  %i.o = mul i32 %.042.us.i, %1
  %i.p = add i32 %i.o, %.02944.us.i
  tail call void %2(i32 noundef %i.n, i32 noundef %i.p) #15, !inline_history !75
  %i.q = add nuw i32 %.042.us.i, 1                ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.q, %0
  br i1 %exitcond49.not.i, label %._crit_edge.us46.i, label %bb.c, !llvm.loop !6

._crit_edge.us46.i:                               ; preds = %bb.c
  %i.r = add i32 %.02944.us.i, 1                  ; 2 uses
  %.not35.us.i = icmp ugt i32 %i.r, %1
  br i1 %.not35.us.i, label %makeCylinder.exit, label %.preheader.us.i, !llvm.loop !7

makeCylinder.exit:                                ; preds = %._crit_edge.us46.i, %bb.a, %.preheader36.i
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.lr.ph.i, %makeCylinder.exit
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %makeCylinder.exit
  %i.s = mul i32 %1, %0                           ; 3 uses
  %i.t = add i32 %i.s, 1
  %i.u = add i32 %0, -1
  %i.v = mul i32 %i.u, %1
  %.025 = add i32 %i.v, 1                         ; 2 uses
  %.not2026 = icmp ugt i32 %.025, %i.s
  br i1 %.not2026, label %._crit_edge30, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01824 = phi i32 [ %i.w, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  tail call void %2(i32 noundef 0, i32 noundef %.01824) #15
  %i.w = add i32 %.01824, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge30:                                    ; preds = %.lr.ph29, %._crit_edge
  ret void

.lr.ph29:                                         ; preds = %._crit_edge, %.lr.ph29
  %.027 = phi i32 [ %.0, %.lr.ph29 ], [ %.025, %._crit_edge ] ; 2 uses
  tail call void %2(i32 noundef %.027, i32 noundef %i.t) #15
  %.0 = add i32 %.027, 1                          ; 2 uses
  %.not20 = icmp ugt i32 %.0, %i.s
  br i1 %.not20, label %._crit_edge30, label %.lr.ph29, !llvm.loop !74
}

; Function Attrs: nounwind uwtable
define dso_local void @makeRandom(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rand() #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.03755 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %.03854 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.b = shl nuw i32 1, %.03755
  %i.c = add i32 %i.b, %.03854                    ; 3 uses
  %i.d = add i32 %.03755, 1
  %.not = icmp ugt i32 %i.c, %0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !76

bb.c:                                             ; preds = %bb.b
  %.neg = shl nsw i32 -1, %.03755
  %i.e = add i32 %.neg, %i.c                      ; 6 uses
  %i.f = add i32 %.03755, -1                      ; 2 uses
  %i.g = and i32 %i.a, 1
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %makeBinaryTree.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi i32 [ %i.j, %.lr.ph.i ], [ 1, %bb.d ] ; 4 uses
  %i.h = shl i32 %.011.i, 1                       ; 2 uses
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.h) #15, !inline_history !79
  %i.i = or disjoint i32 %i.h, 1
  tail call void %2(i32 noundef %.011.i, i32 noundef %i.i) #15, !inline_history !79
  %i.j = add i32 %.011.i, 1                       ; 2 uses
  %.0.highbits.i = lshr i32 %i.j, %i.f
  %.not.not.i = icmp eq i32 %.0.highbits.i, 0
  br i1 %.not.not.i, label %.lr.ph.i, label %makeBinaryTree.exit, !llvm.loop !8

bb.e:                                             ; preds = %bb.c
  switch i32 %i.e, label %.lr.ph.i48 [
    i32 1, label %bb.f
    i32 0, label %._crit_edge60
  ]

bb.f:                                             ; preds = %bb.e
  tail call void %2(i32 noundef 1, i32 noundef 0) #15, !inline_history !31
  br label %._crit_edge60

.lr.ph.i48:                                       ; preds = %bb.e, %.lr.ph.i48
  %.09.i = phi i32 [ %i.l, %.lr.ph.i48 ], [ 2, %bb.e ] ; 3 uses
  %i.k = add i32 %.09.i, -1
  tail call void %2(i32 noundef %i.k, i32 noundef %.09.i) #15, !inline_history !31
  %i.l = add i32 %.09.i, 1                        ; 2 uses
  %.not.i49 = icmp ugt i32 %i.l, %i.e
  br i1 %.not.i49, label %makeBinaryTree.exit, label %.lr.ph.i48, !llvm.loop !0

makeBinaryTree.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i48, %bb.d
  %.not4357 = icmp ult i32 %i.e, 3
  br i1 %.not4357, label %._crit_edge60, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %makeBinaryTree.exit
  %i.m = mul i32 %i.e, %i.e                       ; 2 uses
  %i.n = mul i32 %1, %1                           ; 2 uses
  %invariant.umax = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03658 = phi i32 [ 3, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 8 uses
  %i.o = icmp ugt i32 %.03658, 2
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = icmp ult i32 %.03658, 5
  %i.q = add i32 %.03658, 4
  %i.r = icmp ule i32 %i.q, %0
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.056.us = phi i32 [ %i.u, %bb.h ], [ 2, %.lr.ph ] ; 2 uses
  %i.s = tail call i32 @rand() #15
  %i.t = urem i32 %i.s, %i.m
  %or.cond = icmp ugt i32 %i.t, %invariant.umax
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %.056.us64 = add i32 %.056.us, -1
  tail call void %2(i32 noundef %.056.us64, i32 noundef %.03658) #15
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us, %bb.g
  %i.u = add nuw i32 %.056.us, 1                  ; 2 uses
  %exitcond63.not = icmp eq i32 %i.u, %.03658
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !77

._crit_edge60:                                    ; preds = %._crit_edge, %bb.e, %bb.f, %makeBinaryTree.exit
  ret void

._crit_edge:                                      ; preds = %bb.l, %bb.h, %.preheader
  %i.v = add i32 %.03658, 1                       ; 2 uses
  %.not43 = icmp ugt i32 %i.v, %i.e
  br i1 %.not43, label %._crit_edge60, label %.preheader, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.w = phi i32 [ %i.ab, %bb.l ], [ 2, %.lr.ph ] ; 3 uses
  %.05663 = add i32 %i.w, -1
  %i.x = tail call i32 @rand() #15
  %i.y = urem i32 %i.x, %i.m                      ; 3 uses
  %.not44 = icmp ugt i32 %i.y, %i.n
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.z = add i32 %i.w, 3
  %i.aa = icmp ule i32 %i.z, %0
  %or.cond.not52 = or i1 %i.r, %i.aa
  %.not45 = icmp ugt i32 %i.y, %1
  %or.cond47 = and i1 %or.cond.not52, %.not45
  br i1 %or.cond47, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %.not45.old = icmp ugt i32 %i.y, %1
  br i1 %.not45.old, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  tail call void %2(i32 noundef %.05663, i32 noundef %.03658) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.ab = add nuw i32 %i.w, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %.03658
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !77
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @makeMobius(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, i32 noundef %0) #16 ; 0 uses
  switch i32 %0, label %.lr.ph.i [
    i32 1, label %makePath.exit.sink.split
    i32 0, label %makePath.exit
  ]

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi i32 [ %i.e, %.lr.ph.i ], [ 2, %bb.b ] ; 3 uses
  %i.d = add i32 %.09.i, -1
  tail call void %2(i32 noundef %i.d, i32 noundef %.09.i) #15, !inline_history !31
  %i.e = add i32 %.09.i, 1                        ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %0
  br i1 %.not.i, label %makePath.exit, label %.lr.ph.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %0, 1
  br i1 %i.f, label %bb.d, label %.preheader67

.preheader67:                                     ; preds = %bb.c
  %i.g = icmp ne i32 %0, 0
  %i.h = icmp ne i32 %1, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader66, label %.preheader65

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.4, i32 noundef %1) #16 ; 0 uses
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %makePath.exit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.d, %.lr.ph.i60
  %.09.i61 = phi i32 [ %i.l, %.lr.ph.i60 ], [ 2, %bb.d ] ; 3 uses
  %i.k = add i32 %.09.i61, -1
  tail call void %2(i32 noundef %i.k, i32 noundef %.09.i61) #15, !inline_history !31
  %i.l = add i32 %.09.i61, 1                      ; 2 uses
  %.not.i62 = icmp ugt i32 %i.l, %1
  br i1 %.not.i62, label %makePath.exit, label %.lr.ph.i60, !llvm.loop !0

..loopexit_crit_edge:                             ; preds = %bb.e
  %i.m = add nuw i32 %i.n, 1                      ; 2 uses
  %exitcond75.not = icmp eq i32 %i.m, %0
  br i1 %exitcond75.not, label %.lr.ph, label %.preheader66, !llvm.loop !80

.preheader66:                                     ; preds = %.preheader67, %..loopexit_crit_edge
  %i.n = phi i32 [ %i.m, %..loopexit_crit_edge ], [ 1, %.preheader67 ] ; 3 uses
  %.0566975 = add i32 %i.n, -1
  %i.o = mul i32 %.0566975, %1                    ; 2 uses
  %i.p = mul i32 %i.n, %1
  br label %bb.e

.preheader65:                                     ; preds = %.preheader67
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %..loopexit_crit_edge, %.preheader65
  %i.q = add i32 %0, -1
  %i.r = mul i32 %i.q, %1                         ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  br label %bb.f

bb.e:                                             ; preds = %.preheader66, %bb.e
  %.05568 = phi i32 [ 1, %.preheader66 ], [ %i.u, %bb.e ] ; 3 uses
  %i.s = add i32 %.05568, %i.o                    ; 2 uses
  %i.t = add i32 %.05568, %i.p
  tail call void %2(i32 noundef %i.s, i32 noundef %i.t) #15
  %i.u = add nuw i32 %.05568, 1                   ; 3 uses
  %i.v = add i32 %i.u, %i.o
  tail call void %2(i32 noundef %i.s, i32 noundef %i.v) #15
  %exitcond.not = icmp eq i32 %i.u, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.e, !llvm.loop !81

.preheader:                                       ; preds = %bb.f, %.preheader65
  %.not73 = icmp eq i32 %0, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %.preheader
  %umax77 = tail call i32 @llvm.umax.i32(i32 %0, i32 2)
  br label %.lr.ph72

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.05470 = phi i32 [ 1, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %i.w = add i32 %.05470, %i.r
  %i.x = add nuw i32 %.05470, 1                   ; 3 uses
  %i.y = add i32 %i.x, %i.r
  tail call void %2(i32 noundef %i.w, i32 noundef %i.y) #15
  %exitcond76.not = icmp eq i32 %i.x, %umax
  br i1 %exitcond76.not, label %.preheader, label %bb.f, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph72, %.preheader
  %i.z = mul i32 %1, %0
  br label %makePath.exit.sink.split

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %.071 = phi i32 [ %i.ab, %.lr.ph72 ], [ 1, %.lr.ph72.preheader ] ; 3 uses
  %i.aa = mul i32 %.071, %1                       ; 2 uses
  %i.ab = add nuw i32 %.071, 1                    ; 3 uses
  %i.ac = mul i32 %i.ab, %1
  tail call void %2(i32 noundef %i.aa, i32 noundef %i.ac) #15
  %i.ad = sub nuw i32 %0, %.071
  %i.ae = mul i32 %i.ad, %1
  %i.af = add i32 %i.ae, 1
  tail call void %2(i32 noundef %i.aa, i32 noundef %i.af) #15
  %exitcond78.not = icmp eq i32 %i.ab, %umax77
  br i1 %exitcond78.not, label %._crit_edge, label %.lr.ph72, !llvm.loop !83

makePath.exit.sink.split:                         ; preds = %bb.b, %._crit_edge
  %.sink = phi i32 [ %i.z, %._crit_edge ], [ 0, %bb.b ]
  tail call void %2(i32 noundef 1, i32 noundef %.sink) #15
  br label %makePath.exit

makePath.exit:                                    ; preds = %.lr.ph.i60, %.lr.ph.i, %makePath.exit.sink.split, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @makeTreeGen(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 73) 72) #19 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, i64 noundef 72) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !34
  %i.e = add i32 %0, 1                            ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = icmp ne i32 %i.e, 0                      ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef range(i64 0, 4294967296) %i.f, i64 noundef 8) #19 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  %or.cond3.i.i = and i1 %i.g, %i.i
  br i1 %or.cond3.i.i, label %bb.c, label %gv_calloc.exit.i

bb.c:                                             ; preds = %gv_alloc.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.k = shl nuw nsw i64 %i.f, 3
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.6, i64 noundef %i.k) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i:                                 ; preds = %gv_alloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !35
  %i.n = icmp ugt i32 %0, 1
  br i1 %i.n, label %.preheader.preheader.i, label %genCnt.exit

.preheader.preheader.i:                           ; preds = %gv_calloc.exit.i
  %wide.trip.count85.i = zext i32 %0 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.preheader.i
  %indvars.iv80.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next81.i, %bb.d ] ; 3 uses
  %indvars.iv78.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next79.i, %bb.d ] ; 2 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 4 uses
  %i.o = trunc nuw i64 %indvars.iv.next81.i to i32
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.p = udiv i64 %i.am, %indvars.iv80.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next81.i
  store i64 %i.p, ptr %i.q, align 8, !tbaa !35
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %genCnt.exit, label %.preheader.i, !llvm.loop !84

bb.e:                                             ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %.02953.i = phi i64 [ 0, %.preheader.i ], [ %i.am, %._crit_edge.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %indvars.iv.i) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.7, i64 noundef %i.s, i64 noundef %indvars.iv.i) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.x = extractvalue { i64, i1 } %i.t, 0         ; 2 uses
  %i.y = trunc nuw i64 %indvars.iv.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %uadd.exit.i, %.lr.ph.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %uadd.exit.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %.02751.i = phi i32 [ %i.z, %uadd.exit.i ], [ %i.o, %.lr.ph.preheader.i ]
  %.150.i = phi i64 [ %i.am, %uadd.exit.i ], [ %.02953.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.z = sub nuw i32 %.02751.i, %i.y              ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ac, i64 %i.x) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.g, label %umul.exit33.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.7, i64 noundef %i.ac, i64 noundef %i.x) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

umul.exit33.i:                                    ; preds = %.lr.ph.i
  %i.ah = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.150.i, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.h, label %uadd.exit.i

bb.h:                                             ; preds = %umul.exit33.i
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.8, i64 noundef %.150.i, i64 noundef %i.ah) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

uadd.exit.i:                                      ; preds = %umul.exit33.i
  %i.am = extractvalue { i64, i1 } %i.ai, 0       ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not31.i = icmp samesign ugt i64 %indvars.iv80.i, %indvars.iv
  %.not32.i = icmp samesign ult i64 %indvars.iv.i, %i.aa
  %or.cond.i = and i1 %.not31.i, %.not32.i
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %uadd.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv78.i
  br i1 %exitcond.i, label %bb.d, label %bb.e, !llvm.loop !86

genCnt.exit:                                      ; preds = %bb.d, %gv_calloc.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.an, align 8, !tbaa !36
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 73) 16) #19 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %gv_alloc.exit.i

bb.i:                                             ; preds = %genCnt.exit
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.6, i64 noundef 16) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i:                                  ; preds = %genCnt.exit
  %i.as = tail call noalias ptr @calloc(i64 noundef range(i64 0, 4294967296) %i.f, i64 noundef 4) #19 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  %or.cond3.i.i7 = and i1 %i.g, %i.at
  br i1 %or.cond3.i.i7, label %bb.j, label %mkTree.exit

bb.j:                                             ; preds = %gv_alloc.exit.i
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.av = shl nuw nsw i64 %i.f, 2
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.6, i64 noundef %i.av) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

mkTree.exit:                                      ; preds = %gv_alloc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ao, ptr %i.ay, align 8, !tbaa !40
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @makeRandomTree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val50 = load i64, ptr %i.b, align 8, !tbaa !25
  %.not = icmp eq i64 %.val50, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.m

._crit_edge:                                      ; preds = %bb.p, %bb.a
  tail call void @gv_list_clear_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  store i32 0, ptr %i.f, align 4, !tbaa !93
  store i32 0, ptr %i.e, align 8, !tbaa !94
  %i.g = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge98.i, %._crit_edge
  %.046.i = phi i32 [ %i.g, %._crit_edge ], [ %.lcssa85.i, %._crit_edge98.i ] ; 3 uses
  %i.m = icmp ugt i32 %.046.i, 2
  br i1 %i.m, label %.lr.ph94.i, label %._crit_edge.i

.lr.ph94.i:                                       ; preds = %bb.b, %.thread.i
  %.14793.i = phi i32 [ %i.am, %.thread.i ], [ %.046.i, %bb.b ] ; 4 uses
  %i.n = add i32 %.14793.i, -1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = zext i32 %.14793.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 %i.r) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.c, label %umul.exit.i

bb.c:                                             ; preds = %.lr.ph94.i
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.7, i64 noundef %i.o, i64 noundef %i.r) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

umul.exit.i:                                      ; preds = %.lr.ph94.i
  %i.w = extractvalue { i64, i1 } %i.s, 0
  %i.x = tail call i64 @gv_random_u64(i64 noundef %i.w) #15
  %i.y = load i64, ptr %i.j, align 8, !tbaa !35
  %i.z = insertvalue { i64, i1 } { i64 poison, i1 false }, i64 %i.y, 0
  br label %umul.exit49.i

.loopexit.i:                                      ; preds = %umul.exit51.i, %umul.exit49.i
  %.145.lcssa.i = phi i64 [ %.04491.i, %umul.exit49.i ], [ %i.aw, %umul.exit51.i ]
  %i.aa = zext i32 %i.aj to i64                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.d, label %umul.exit49.i, !llvm.loop !87

bb.d:                                             ; preds = %.loopexit.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.7, i64 noundef %i.aa, i64 noundef %i.ac) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

umul.exit49.i:                                    ; preds = %.loopexit.i, %umul.exit.i
  %i.ah = phi { i64, i1 } [ %i.z, %umul.exit.i ], [ %i.ad, %.loopexit.i ]
  %.04392.i = phi i32 [ 1, %umul.exit.i ], [ %i.aj, %.loopexit.i ] ; 3 uses
  %.04491.i = phi i64 [ %i.x, %umul.exit.i ], [ %.145.lcssa.i, %.loopexit.i ] ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.aj = add i32 %.04392.i, 1                    ; 4 uses
  %i.ak = icmp ult i32 %.14793.i, %i.aj
  br i1 %i.ak, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %umul.exit49.i, %umul.exit51.i
  %i.al = phi i32 [ %i.ax, %umul.exit51.i ], [ 1, %umul.exit49.i ] ; 2 uses
  %.090.i = phi i32 [ %i.am, %umul.exit51.i ], [ %.14793.i, %umul.exit49.i ]
  %.14589.i = phi i64 [ %i.aw, %umul.exit51.i ], [ %.04491.i, %umul.exit49.i ] ; 2 uses
  %i.am = sub i32 %.090.i, %.04392.i              ; 6 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %i.aq = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ap, i64 %i.ai) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.e, label %umul.exit50.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.7, i64 noundef %i.ap, i64 noundef %i.ai) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

umul.exit50.i:                                    ; preds = %.lr.ph.i
  %i.au = extractvalue { i64, i1 } %i.aq, 0       ; 2 uses
  %i.av = icmp ult i64 %.14589.i, %i.au
  br i1 %i.av, label %.thread.i, label %umul.exit51.i

umul.exit51.i:                                    ; preds = %umul.exit50.i
  %i.aw = sub nuw i64 %.14589.i, %i.au            ; 2 uses
  %i.ax = add i32 %i.al, 1
  %i.ay = icmp ult i32 %i.am, %i.aj
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i

.thread.i:                                        ; preds = %umul.exit50.i
  store i32 %i.al, ptr %i.k, align 8, !tbaa !41
  %i.az = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !41
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !27
  store i32 %.04392.i, ptr %i.k, align 8, !tbaa !41
  %i.bd = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.be = load i32, ptr %i.k, align 8, !tbaa !41
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !27
  %i.bh = icmp ugt i32 %i.am, 2
  br i1 %i.bh, label %.lr.ph94.i, label %._crit_edge.i, !llvm.loop !88

._crit_edge.i:                                    ; preds = %.thread.i, %bb.b
  %.147.lcssa.i = phi i32 [ %.046.i, %bb.b ], [ %i.am, %.thread.i ] ; 2 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !93
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !39  ; 2 uses
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !94
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bm
  store i32 %i.bi, ptr %i.bn, align 4, !tbaa !27
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !93
  %i.bq = add i32 %i.bo, %.147.lcssa.i            ; 3 uses
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !94
  %i.br = icmp eq i32 %.147.lcssa.i, 2
  br i1 %i.br, label %bb.f, label %addTree.exit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bs = add i32 %i.bq, -1
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bt
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !27
  br label %addTree.exit.i

addTree.exit.i:                                   ; preds = %bb.f, %._crit_edge.i
  tail call void @gv_list_pop_back_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 4) #15
  %i.bv = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  tail call void @gv_list_pop_back_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 4) #15
  %i.bw = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %.not96.i = icmp eq i32 %i.bv, 0
  br i1 %.not96.i, label %.lr.ph97.i, label %._crit_edge98.i

._crit_edge98.i:                                  ; preds = %bb.k, %addTree.exit.i
  %.lcssa85.i = phi i32 [ %i.bv, %addTree.exit.i ], [ %i.dg, %bb.k ]
  %.lcssa83.i = phi i32 [ %i.bw, %addTree.exit.i ], [ %i.dh, %bb.k ]
  store i32 %.lcssa83.i, ptr %i.k, align 8, !tbaa !41
  %i.bx = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.by = load i32, ptr %i.k, align 8, !tbaa !41
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !27
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.cb = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %i.a, i64 noundef 4) #15
  %i.cc = load i32, ptr %i.k, align 8, !tbaa !41
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !27
  br label %bb.b

.lr.ph97.i:                                       ; preds = %addTree.exit.i, %bb.k
  %i.cf = phi i32 [ %i.dh, %bb.k ], [ %i.bw, %addTree.exit.i ] ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 1
  %.val.pre.i = load i32, ptr %i.e, align 8, !tbaa !94 ; 3 uses
  br i1 %i.cg, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph97.i
  %.val26.i.i = load i32, ptr %i.f, align 4, !tbaa !93 ; 6 uses
  %i.ch = add i32 %.val.pre.i, 1
  %i.ci = sub i32 %i.ch, %.val26.i.i              ; 4 uses
  %.val29.i.i = load ptr, ptr %i.l, align 8, !tbaa !39 ; 3 uses
  %i.cj = zext i32 %.val26.i.i to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val29.i.i, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27
  %i.cm = add i32 %i.cf, -1
  %i.cn = mul i32 %i.ci, %i.cm                    ; 2 uses
  %i.co = add i32 %.val26.i.i, -1
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  %.not30.i.i = icmp ugt i32 %.val26.i.i, %i.cp
  br i1 %.not30.i.i, label %treeDup.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.i
  %.031.i.i = phi i32 [ %i.da, %bb.i ], [ %.val26.i.i, %bb.g ] ; 4 uses
  %i.cq = sub i32 %.031.i.i, %.val26.i.i
  %i.cr = urem i32 %i.cq, %i.ci
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ct = zext i32 %.031.i.i to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val29.i.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !27
  %i.cw = add i32 %i.cv, %i.ci
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sink.i.i = phi i32 [ %i.cw, %bb.h ], [ %i.cl, %.lr.ph.i.i ]
  %i.cx = add i32 %.031.i.i, %i.ci
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val29.i.i, i64 %i.cy
  store i32 %.sink.i.i, ptr %i.cz, align 4, !tbaa !27
  %i.da = add i32 %.031.i.i, 1                    ; 2 uses
  %.not.i.i = icmp ugt i32 %i.da, %i.cp
  br i1 %.not.i.i, label %treeDup.exit.i, label %.lr.ph.i.i, !llvm.loop !89

treeDup.exit.i:                                   ; preds = %bb.i, %bb.g
  %i.db = add i32 %i.cn, %.val.pre.i              ; 2 uses
  store i32 %i.db, ptr %i.e, align 8, !tbaa !94
  br label %bb.j

bb.j:                                             ; preds = %treeDup.exit.i, %.lr.ph97.i
  %.val.i = phi i32 [ %i.db, %treeDup.exit.i ], [ %.val.pre.i, %.lr.ph97.i ]
  %i.dc = icmp eq i32 %.val.i, %i.g
  br i1 %i.dc, label %genTree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i52.i = load i32, ptr %i.f, align 4, !tbaa !93
  %.val2.i.i = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.dd = zext i32 %.val.i52.i to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val2.i.i, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !27
  store i32 %i.df, ptr %i.f, align 4, !tbaa !93
  tail call void @gv_list_pop_back_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 4) #15
  %i.dg = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  tail call void @gv_list_pop_back_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 4) #15
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i, label %.lr.ph97.i, label %._crit_edge98.i

genTree.exit:                                     ; preds = %bb.j
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !94
  %.not6.i = icmp ult i32 %i.dj, 2
  br i1 %.not6.i, label %writeTree.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %genTree.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i18
  %.07.i = phi i32 [ 2, %.lr.ph.i18 ], [ %i.dp, %bb.l ] ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !39
  %i.dm = zext i32 %.07.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27
  tail call void %1(i32 noundef %i.do, i32 noundef %.07.i) #15, !inline_history !90
  %i.dp = add i32 %.07.i, 1                       ; 2 uses
  %i.dq = load i32, ptr %i.di, align 8, !tbaa !94
  %.not.i19 = icmp ugt i32 %i.dp, %i.dq
  br i1 %.not.i19, label %writeTree.exit, label %bb.l, !llvm.loop !91

writeTree.exit:                                   ; preds = %bb.l, %genTree.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %.051 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.p ] ; 2 uses
  %i.dr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.a, i64 noundef %.051) #15
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %magicptr = ptrtoint ptr %i.ds to i64
  switch i64 %magicptr, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.dt) #17 ; 0 uses
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dr
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !27
  tail call void %i.ds(i32 noundef %i.dw) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %i.dx = add nuw i64 %.051, 1                    ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !25
  %i.dy = icmp ult i64 %i.dx, %.val
  br i1 %i.dy, label %bb.m, label %._crit_edge, !llvm.loop !92
}

; Function Attrs: nounwind uwtable
define dso_local void @freeTreeGen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val16 = load i64, ptr %i.d, align 8, !tbaa !25
  %.not = icmp eq i64 %.val16, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  tail call void @gv_list_clear_(ptr noundef nonnull %i.c, i64 noundef 4) #15
  tail call void @gv_list_free_(ptr noundef nonnull %i.c) #15
end_hunk_0
