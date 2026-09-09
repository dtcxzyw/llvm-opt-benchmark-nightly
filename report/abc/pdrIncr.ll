Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/pdrIncr?download=true
inline.NumInlined: 257
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@IPdr_ManPrintClauses:bb.a
  %i.b = icmp slt i32 %1, %.val2024
  br i1 %i.b, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %.critedge2
  %indvars.iv29 = phi i64 [ %i.d, %.lr.ph27 ], [ %indvars.iv.next30, %.critedge2 ] ; 3 uses
  %.026 = phi i32 [ 0, %.lr.ph27 ], [ %.1.lcssa, %.critedge2 ] ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds [8 x i8], ptr %.val, i64 %indvars.iv29
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 3 uses
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %Vec_PtrSort.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = zext nneg i32 %i.h to i64
  tail call void @qsort(ptr noundef %i.k, i64 noundef %i.l, i64 noundef 8, ptr noundef nonnull @Pdr_SetCompare) #17
  %.val1821.pre = load i32, ptr %i.g, align 4, !tbaa !37
  br label %Vec_PtrSort.exit

Vec_PtrSort.exit:                                 ; preds = %bb.b, %bb.c
  %.val1821 = phi i32 [ %i.h, %bb.b ], [ %.val1821.pre, %bb.c ]
  %i.m = icmp sgt i32 %.val1821, 0
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_PtrSort.exit
  %i.n = getelementptr i8, ptr %i.f, i64 8
  %i.o = trunc nsw i64 %indvars.iv29 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.123 = phi i32 [ %.026, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.val19 = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = add nsw i32 %.123, 1                     ; 2 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str, i32 noundef %i.o, i32 noundef %.123)
  tail call void @ZPdr_SetPrint(ptr noundef %i.q) #17
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val18 = load i32, ptr %i.g, align 4, !tbaa !37
  %i.s = sext i32 %.val18 to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.d, label %.critedge2, !llvm.loop !90

.critedge2:                                       ; preds = %bb.d, %Vec_PtrSort.exit
  %.1.lcssa = phi i32 [ %.026, %Vec_PtrSort.exit ], [ %i.r, %bb.d ]
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1 ; 2 uses
  %.val20 = load i32, ptr %i.a, align 4, !tbaa !41
  %i.u = sext i32 %.val20 to i64
  %i.v = icmp slt i64 %indvars.iv.next30, %i.u
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !91

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #3 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !42
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #17 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #17
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #17 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !44
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #17 ; 0 uses
  call void @free(ptr noundef %i.d) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !44, !noalias !95
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #17, !inline_history !94 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare void @ZPdr_SetPrint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @IPdr_ManCheckClauses(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val26 = load i32, ptr %i.c, align 4, !tbaa !37 ; 2 uses
  %i.d = icmp sgt i32 %.val26, 1
  br i1 %i.d, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count = zext nneg i32 %.val26 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %.critedge2
  %indvars.iv39 = phi i64 [ 1, %.lr.ph35 ], [ %indvars.iv.next40, %.critedge2 ] ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv39
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %.val2530 = load i32, ptr %i.j, align 4, !tbaa !37
  %i.k = icmp sgt i32 %.val2530, 0
  br i1 %i.k, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = trunc i64 %indvars.iv39 to i32
  %i.n = add i32 %i.m, -1
  %i.o = trunc nuw nsw i64 %indvars.iv39 to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.val27 = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val27, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = tail call i32 @Pdr_ManCheckCube(ptr noundef %0, i32 noundef %i.n, ptr noundef %i.q, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1) #17 ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 0, label %bb.d
    i32 -1, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.o, i32 noundef %i.s) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val25 = load i32, ptr %i.j, align 4, !tbaa !37
  %i.u = sext i32 %.val25 to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %.critedge2, !llvm.loop !0

.critedge2:                                       ; preds = %bb.e, %bb.b
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !1

.critedge:                                        ; preds = %.critedge2, %bb.c, %bb.a
  %.024 = phi i32 [ 1, %bb.a ], [ %i.r, %bb.c ], [ 1, %.critedge2 ]
  ret i32 %.024
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias noundef ptr @IPdr_ManSaveClauses(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val30 = load i32, ptr %i.c, align 4, !tbaa !41 ; 11 uses
  %i.d = icmp eq i32 %.val30, 1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %.val30, 2
  %i.f = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.val30, -1                  ; 4 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.i = add i32 %.val30, -2
  %or.cond.i.i = icmp ult i32 %i.i, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.g ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.h, align 8, !tbaa !99
  %2 = sext i32 %spec.store.select.i.i to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #18 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %4, ptr %5, align 8, !tbaa !35
  %6 = icmp sgt i32 %.val30, 1
  br i1 %6, label %.lr.ph.preheader.i, label %Vec_VecStart.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %calloc.i, ptr %i.j, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_VecStart.exit, label %.lr.ph.i, !llvm.loop !96

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.l = add i32 %.val30, -1
  %or.cond.i.i31 = icmp ult i32 %i.l, 7
  %spec.store.select.i.i32 = select i1 %or.cond.i.i31, i32 8, i32 %.val30 ; 3 uses
  store i32 %spec.store.select.i.i32, ptr %i.k, align 8, !tbaa !99
  %.not.i.i33 = icmp eq i32 %spec.store.select.i.i32, 0
  br i1 %.not.i.i33, label %Vec_VecAlloc.exit.i34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %spec.store.select.i.i32 to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #18
  br label %Vec_VecAlloc.exit.i34

Vec_VecAlloc.exit.i34:                            ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.o, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !35
  %i.r = icmp sgt i32 %.val30, 0
  br i1 %i.r, label %.lr.ph.preheader.i35, label %Vec_VecStart.exit

.lr.ph.preheader.i35:                             ; preds = %Vec_VecAlloc.exit.i34
  %wide.trip.count.i36 = zext nneg i32 %.val30 to i64
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37, %.lr.ph.preheader.i35
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i40, %.lr.ph.i37 ] ; 2 uses
  %calloc.i39 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i38
  store ptr %calloc.i39, ptr %i.s, align 8, !tbaa !36
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i36
  br i1 %exitcond.not.i41, label %Vec_VecStart.exit, label %.lr.ph.i37, !llvm.loop !96

Vec_VecStart.exit:                                ; preds = %.lr.ph.i37, %.lr.ph.i, %Vec_VecAlloc.exit.i34, %bb.d
  %.sink67 = phi ptr [ %i.h, %bb.d ], [ %i.k, %Vec_VecAlloc.exit.i34 ], [ %i.h, %.lr.ph.i ], [ %i.k, %.lr.ph.i37 ] ; 7 uses
  %.val30.sink = phi i32 [ %i.g, %bb.d ], [ %.val30, %Vec_VecAlloc.exit.i34 ], [ %i.g, %.lr.ph.i ], [ %.val30, %.lr.ph.i37 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sink67, i64 4
  store i32 %.val30.sink, ptr %i.t, align 4, !tbaa !41
  %i.u = getelementptr i8, ptr %.sink67, i64 4    ; 2 uses
  %i.v = icmp sgt i32 %.val30.sink, 0
  br i1 %i.v, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %Vec_VecStart.exit
  %i.w = getelementptr i8, ptr %.sink67, i64 8    ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %.0.val59 = phi i32 [ %.val30.sink, %.preheader.lr.ph ], [ %.0.val, %.critedge ]
  %i.x = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.ce, %.critedge ] ; 2 uses
  %indvars.iv54 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ad, %.critedge ] ; 6 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val2448 = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val2448, i64 %indvars.iv54
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val2549 = load i32, ptr %i.ab, align 4, !tbaa !37
  %i.ac = icmp sgt i32 %.val2549, 0
  %i.ad = add nuw nsw i64 %indvars.iv54, 1        ; 6 uses
  br i1 %i.ac, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = trunc nuw nsw i64 %i.ad to i32
  %i.ag = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %Vec_VecPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_VecPush.exit ] ; 2 uses
  %i.ah = phi ptr [ %i.aa, %.lr.ph ], [ %i.ca, %Vec_VecPush.exit ]
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val26 = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val26, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call ptr @Pdr_SetDup(ptr noundef %i.ak) #17
  %i.am = load i32, ptr %i.u, align 4, !tbaa !41  ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %.not.i = icmp slt i64 %indvars.iv54, %i.an
  br i1 %.not.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %.sink67, align 8, !tbaa !39
  %i.ap = sext i32 %i.ao to i64
  %.not.i.not.i = icmp slt i64 %indvars.iv54, %i.ap
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !100 ; 3 uses
  br i1 %.not.i.not.i, label %Vec_PtrGrow.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %.pre, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.ae) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ae) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.aq, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  store ptr %i.as, ptr %i.w, align 8, !tbaa !38
  store i32 %i.af, ptr %.sink67, align 8, !tbaa !39
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.l, %bb.h
  %i.at = phi ptr [ %i.as, %bb.l ], [ %.pre, %bb.h ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %Vec_PtrGrow.exit.i
  %indvars.iv.i44 = phi i64 [ %i.an, %Vec_PtrGrow.exit.i ], [ %indvars.iv.next.i46, %bb.m ] ; 2 uses
  %calloc.i45 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv.i44
  store ptr %calloc.i45, ptr %i.au, align 8, !tbaa !36
  %indvars.iv.next.i46 = add nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.av = and i64 %indvars.iv.next.i46, 4294967295
  %exitcond.not.i47 = icmp eq i64 %i.ad, %i.av
  br i1 %exitcond.not.i47, label %._crit_edge.i.loopexit, label %bb.m, !llvm.loop !2

._crit_edge.i.loopexit:                           ; preds = %bb.m
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.loopexit, %bb.g
  %.0.val60 = phi i32 [ %i.ag, %._crit_edge.i.loopexit ], [ %i.am, %bb.g ]
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv54
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37 ; 7 uses
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !39
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.o, label %Vec_VecPush.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp slt i32 %i.az, 16
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.r, %bb.q
  %i.bh = phi ptr [ %i.bf, %bb.q ], [ %i.bg, %bb.r ]
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !38
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.s:                                             ; preds = %bb.o
  %i.bi = icmp samesign ult i32 %i.az, 1073741823
  %i.bj = shl nuw nsw i32 %i.az, 1
  %spec.select.i.i = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.az, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.t, label %Vec_VecPush.exit

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %.not9.i11.i.i = icmp eq ptr %i.bl, null
  %i.bm = zext nneg i32 %spec.select.i.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef %i.bn) #19
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = phi ptr [ %i.bo, %bb.u ], [ %i.bp, %bb.v ]
  store ptr %i.bq, ptr %i.bk, align 8, !tbaa !38
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.w, %Vec_PtrGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.w ], [ 16, %Vec_PtrGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ax, align 8, !tbaa !39
  %.pre19.i = load i32, ptr %i.ay, align 4, !tbaa !37
  br label %Vec_VecPush.exit

Vec_VecPush.exit:                                 ; preds = %bb.n, %bb.s, %Vec_PtrGrow.exit12.sink.split.i.i
  %i.br = phi i32 [ %i.az, %bb.n ], [ %i.az, %bb.s ], [ %.pre19.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = add nsw i32 %i.br, 1
  store i32 %i.bu, ptr %i.ay, align 4, !tbaa !37
  %i.bv = sext i32 %i.br to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.al, ptr %i.bw, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val24 = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %indvars.iv54
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.val25 = load i32, ptr %i.cb, align 4, !tbaa !37
  %i.cc = sext i32 %.val25 to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.g, label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %Vec_VecPush.exit, %.preheader
  %.0.val = phi i32 [ %.0.val59, %.preheader ], [ %.0.val60, %Vec_VecPush.exit ] ; 2 uses
  %i.ce = phi ptr [ %i.x, %.preheader ], [ %i.bx, %Vec_VecPush.exit ]
  %i.cf = sext i32 %.0.val to i64
  %i.cg = icmp slt i64 %i.ad, %i.cf
  br i1 %i.cg, label %.preheader, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %.critedge, %Vec_VecStart.exit, %bb.b, %bb.a
  %.023 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %.sink67, %Vec_VecStart.exit ], [ %.sink67, %.critedge ]
  ret ptr %.023
}

declare ptr @Pdr_SetDup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @IPdr_ManSetSolver(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !103
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call ptr @zsat_solver_new_seed(double noundef %i.d) #17
  %i.f = icmp eq i32 %1, 0                        ; 2 uses
  %i.g = zext i1 %i.f to i32
  %i.h = tail call ptr @Pdr_ManNewSolver(ptr noundef %i.e, ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.g) #17 ; 2 uses
end_hunk_0
