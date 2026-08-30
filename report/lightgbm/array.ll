Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/array?download=true
begin_hunk_0_@ArrowArrayInitFromArrayView:bb.a
bb.h:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %.065, 1                ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !51
  %.not50 = icmp slt i64 %i.ab, %i.ac
  br i1 %.not50, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.065 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.h ] ; 3 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.065
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.065
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = tail call i32 @ArrowArrayInitFromArrayView(ptr noundef %i.af, ptr noundef %i.ai, ptr noundef %2) ; 2 uses
  %.not49 = icmp eq i32 %i.aj, 0
  br i1 %.not49, label %bb.h, label %.thread58

.thread58:                                        ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  tail call void %i.al(ptr noundef nonnull %0) #16, !inline_history !27
  br label %bb.o

.loopexit:                                        ; preds = %bb.h, %ArrowArrayAllocateChildren.exit, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54
  %.not51 = icmp eq ptr %i.an, null
  br i1 %.not51, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %.not.i54 = icmp eq ptr %i.ap, null
  br i1 %.not.i54, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call ptr @ArrowMalloc(i64 noundef 80) #16 ; 4 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !42
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i.ph = phi i32 [ 12, %bb.k ], [ 22, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  tail call void %i.at(ptr noundef nonnull %0) #16, !inline_history !27
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr null, ptr %i.au, align 8, !tbaa !8
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.aw = tail call i32 @ArrowArrayInitFromArrayView(ptr noundef nonnull %i.aq, ptr noundef %i.av, ptr noundef %2) ; 2 uses
  %.not53 = icmp eq i32 %i.aw, 0
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  tail call void %i.ay(ptr noundef nonnull %0) #16, !inline_history !27
  br label %bb.o

bb.o:                                             ; preds = %.thread58, %bb.b, %.loopexit63, %bb.l, %bb.n, %bb.m, %.loopexit
  %.3 = phi i32 [ %i.c, %bb.b ], [ %.1.i.ph, %.loopexit63 ], [ %.0.i.ph, %bb.l ], [ %i.aw, %bb.n ], [ %i.aj, %.thread58 ], [ 0, %bb.m ], [ 0, %.loopexit ]
  ret i32 %.3
}

declare i32 @ArrowErrorSet(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowArrayAllocateChildren(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i64 %1, 3                            ; 2 uses
  %i.e = tail call ptr @ArrowMalloc(i64 noundef %i.d) #16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !39
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.01925 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.h = tail call ptr @ArrowMalloc(i64 noundef 80) #16 ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01925
  store ptr %i.h, ptr %i.j, align 8, !tbaa !41
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !8
  %i.m = add nuw nsw i64 %.01925, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a, %._crit_edge
  %.1 = phi i32 [ 12, %bb.c ], [ 22, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge ], [ 12, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowArrayAllocateDictionary(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ArrowMalloc(i64 noundef 80) #16 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !42
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr null, ptr %i.e, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 22, %bb.a ], [ 12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ArrowArrayInitFromSchema(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %3 = alloca %struct.ArrowArrayView, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.c = call i32 @ArrowArrayViewInitFromSchema(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @ArrowArrayInitFromArrayView(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %2) ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = and i32 %i.f, -2
  %or.cond = icmp eq i32 %i.g, 28
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = load ptr, ptr %1, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.n = load i8, ptr %i.k, align 1, !tbaa !49
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %_ArrowParseUnionTypeIds.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.p = call i64 @strtol(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 10) #16 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  %i.s = icmp ugt i64 %i.p, 127
  %or.cond323.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond323.i.i, label %.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.aa, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.u = phi i64 [ %i.z, %bb.f ], [ %i.p, %bb.e ]
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %i.v, ptr %i.w, align 1, !tbaa !49
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.x = load i8, ptr %i.t, align 1, !tbaa !49
  switch i8 %i.x, label %.split.us.i.i [
    i8 0, label %.split.us.loopexit39.split.loop.exit.i.i
    i8 44, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.z = call i64 @strtol(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef 10) #16 ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  %i.ac = icmp ugt i64 %i.z, 127
  %or.cond3.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond3.i.i, label %.split.us.i.i, label %.lr.ph.split.i.i

.split.us.loopexit39.split.loop.exit.i.i:         ; preds = %.lr.ph.split.i.i
  %sext.i = shl i64 %indvars.iv.next.i.i, 32
  %4 = ashr exact i64 %sext.i, 32
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %.lr.ph.split.i.i, %.split.us.loopexit39.split.loop.exit.i.i, %bb.e
  %.0.i.i = phi i64 [ -1, %bb.e ], [ %4, %.split.us.loopexit39.split.loop.exit.i.i ], [ -1, %.lr.ph.split.i.i ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ArrowParseUnionTypeIds.exit.i

_ArrowParseUnionTypeIds.exit.i:                   ; preds = %.split.us.i.i, %bb.d
  %.1.i.i = phi i64 [ %.0.i.i, %.split.us.i.i ], [ 0, %bb.d ]
  %.not.i.i = icmp eq i64 %.1.i.i, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %_ArrowUnionTypeIdsWillEqualChildIndices.exit

.preheader.i.i:                                   ; preds = %_ArrowParseUnionTypeIds.exit.i
  %i.ad = icmp sgt i64 %i.m, 0
  br i1 %i.ad, label %.lr.ph.i3.i, label %_ArrowUnionTypeIdsWillEqualChildIndices.exit

bb.g:                                             ; preds = %.lr.ph.i3.i
  %i.ae = add i8 %.0915.i.i, 1                    ; 2 uses
  %i.af = sext i8 %i.ae to i64                    ; 2 uses
  %i.ag = icmp sgt i64 %i.m, %i.af
  br i1 %i.ag, label %.lr.ph.i3.i, label %_ArrowUnionTypeIdsWillEqualChildIndices.exit

.lr.ph.i3.i:                                      ; preds = %.preheader.i.i, %bb.g
  %i.ah = phi i64 [ %i.af, %bb.g ], [ 0, %.preheader.i.i ]
  %.0915.i.i = phi i8 [ %i.ae, %bb.g ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !49
  %.not13.i.i = icmp eq i8 %i.aj, %.0915.i.i
  br i1 %.not13.i.i, label %bb.g, label %_ArrowUnionTypeIdsWillEqualChildIndices.exit

_ArrowUnionTypeIdsWillEqualChildIndices.exit:     ; preds = %bb.g, %.lr.ph.i3.i, %_ArrowParseUnionTypeIds.exit.i, %.preheader.i.i
  %.1.i2.i = phi i8 [ 0, %_ArrowParseUnionTypeIds.exit.i ], [ 1, %.preheader.i.i ], [ 1, %bb.g ], [ 0, %.lr.ph.i3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i8 %.1.i2.i, ptr %i.ak, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ArrowUnionTypeIdsWillEqualChildIndices.exit
  call void @ArrowArrayViewReset(ptr noundef nonnull %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  %.2 = phi i32 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @ArrowArrayViewInitFromSchema(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ArrowSchemaView, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = call i32 @ArrowSchemaViewInit(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @ArrowLayoutInit(ptr noundef nonnull %i.e, i32 noundef %i.c) #16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !tbaa.struct !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %.loopexit.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = shl i64 %i.h, 3                          ; 2 uses
  %i.m = call ptr @ArrowMalloc(i64 noundef %i.l) #16 ; 3 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !52
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit74, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.o = icmp sgt i64 %i.h, 0
  br i1 %i.o, label %.lr.ph32.preheader.i, label %.loopexit.sink.split.i

.lr.ph32.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.h, ptr %i.p, align 8, !tbaa !51
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %bb.e, %.lr.ph32.preheader.i
  %.02330.i = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph32.preheader.i ] ; 2 uses
  %i.q = call ptr @ArrowMalloc(i64 noundef 200) #16 ; 4 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.02330.i
  store ptr %i.q, ptr %i.s, align 8, !tbaa !53
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %.loopexit74, label %bb.e

bb.e:                                             ; preds = %.lr.ph32.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.q, i8 0, i64 200, i1 false)
  call void @ArrowLayoutInit(ptr noundef nonnull %i.u, i32 noundef 0) #16
  %i.v = add nuw nsw i64 %.02330.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not.i, label %ArrowArrayViewAllocateChildren.exit, label %.lr.ph32.i

.loopexit.sink.split.i:                           ; preds = %.preheader.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.h, ptr %i.w, align 8, !tbaa !51
  br label %ArrowArrayViewAllocateChildren.exit

ArrowArrayViewAllocateChildren.exit:              ; preds = %bb.e, %.loopexit.sink.split.i
  %i.x = load i64, ptr %i.g, align 8, !tbaa !59
  %.not6275 = icmp sgt i64 %i.x, 0
  br i1 %.not6275, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ArrowArrayViewAllocateChildren.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g

.loopexit74:                                      ; preds = %.lr.ph32.i, %bb.d, %bb.b
  %.1.i.ph = phi i32 [ 12, %bb.d ], [ 22, %bb.b ], [ 12, %.lr.ph32.i ]
  %i.z = call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.5) #16 ; 0 uses
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.g
  %i.aa = add nuw nsw i64 %.05076, 1              ; 2 uses
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !59
  %.not62 = icmp slt i64 %i.aa, %i.ab
  br i1 %.not62, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.05076 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.05076
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.05076
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = call i32 @ArrowArrayViewInitFromSchema(ptr noundef %i.ae, ptr noundef %i.ah, ptr noundef %2) ; 2 uses
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.f, label %.loopexit.sink.split

._crit_edge:                                      ; preds = %bb.f, %ArrowArrayViewAllocateChildren.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %.not63 = icmp eq ptr %i.ak, null
  br i1 %.not63, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  %.not.i66 = icmp eq ptr %i.am, null
  br i1 %.not.i66, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @ArrowMalloc(i64 noundef 200) #16 ; 4 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !54
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.an, i8 0, i64 200, i1 false)
  call void @ArrowLayoutInit(ptr noundef nonnull %i.ap, i32 noundef 0) #16
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.as = call i32 @ArrowArrayViewInitFromSchema(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %2) ; 2 uses
  %.not65 = icmp eq i32 %i.as, 0
  br i1 %.not65, label %bb.k, label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.at = load i32, ptr %i.d, align 8, !tbaa !43
  %i.au = and i32 %i.at, -2
  %switch = icmp eq i32 %i.au, 28
  br i1 %switch, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.av = call ptr @ArrowMalloc(i64 noundef 256) #16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !67
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.av, i8 -1, i64 256, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = call fastcc i32 @_ArrowParseUnionTypeIds(ptr noundef %i.az, ptr noundef nonnull %i.bb) ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %bb.m, %.lr.ph79
  %.04977 = phi i8 [ %i.bl, %.lr.ph79 ], [ 0, %bb.m ] ; 3 uses
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %i.bf = sext i8 %.04977 to i64
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 128
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !49
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.be, i64 %i.bj
  store i8 %.04977, ptr %i.bk, align 1, !tbaa !49
end_hunk_0
begin_hunk_1_@ArrowArrayViewValidateFull:bb.a

ArrowAssertInt8In.exit:                           ; preds = %bb.aa
  %i.ep = sext i8 %i.ej to i32
  %i.eq = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.86, i64 noundef %.01728.us.i, i32 noundef %i.ep) #16 ; 0 uses
  br label %.thread

ArrowAssertRangeInt8.exit.thread:                 ; preds = %.critedge21.us.i, %bb.z, %_ArrowParsedUnionTypeIdsWillEqualChildIndices.exit, %.loopexit
  switch i32 %i.dd, label %.thread273 [
    i32 29, label %.preheader
    i32 39, label %bb.ae
  ]

.preheader:                                       ; preds = %ArrowAssertRangeInt8.exit.thread
  br i1 %i.dg, label %.lr.ph, label %.thread288

.lr.ph:                                           ; preds = %.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.eu = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 %i.ev
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !49
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %i.ev
  br label %ArrowArrayViewUnionChildOffset.exit

ArrowArrayViewUnionChildOffset.exit:              ; preds = %.lr.ph, %bb.ac
  %.0188316 = phi i64 [ 0, %.lr.ph ], [ %i.fo, %bb.ac ] ; 4 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 %.0188316
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !49
  %i.fb = sext i8 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.dl, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !49  ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.ey, i64 %.0188316
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !80 ; 2 uses
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = sext i8 %i.fd to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !53
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !90 ; 2 uses
  %i.fm = icmp slt i32 %i.ff, 0
  %i.fn = icmp slt i64 %i.fl, %i.fg
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %ArrowArrayViewUnionChildOffset.exit
  %i.fo = add nuw nsw i64 %.0188316, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.df
  br i1 %exitcond.not, label %.thread256, label %ArrowArrayViewUnionChildOffset.exit

bb.ad:                                            ; preds = %ArrowArrayViewUnionChildOffset.exit
  %i.fp = sext i8 %i.fd to i32
  %i.fq = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.79, i64 noundef %.0188316, i32 noundef %i.fp, i64 noundef %i.fl, i64 noundef %i.fg) #16 ; 0 uses
  br label %.thread

.thread256:                                       ; preds = %bb.ac, %ArrowAssertIncreasingInt32.exit.thread.2
  %i.fr = icmp eq i32 %i.dd, 39
  br i1 %i.fr, label %bb.ae, label %.thread273

bb.ae:                                            ; preds = %ArrowAssertRangeInt8.exit.thread, %.thread256
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !53 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !90 ; 3 uses
  %i.fx = icmp sgt i64 %i.fw, 0
  br i1 %i.fx, label %bb.af, label %.thread288

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 112 ; 24 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !75 ; 14 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !43 ; 2 uses
  switch i32 %i.gc, label %ArrowArrayViewGetIntUnsafe.exit [
    i32 10, label %bb.ag
    i32 9, label %bb.ah
    i32 22, label %bb.ai
    i32 8, label %bb.ai
    i32 7, label %bb.aj
    i32 6, label %bb.ak
    i32 5, label %bb.al
    i32 4, label %bb.am
    i32 3, label %bb.an
    i32 13, label %bb.ao
    i32 12, label %bb.ap
    i32 11, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gd = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.ga
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !50
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ah:                                            ; preds = %bb.af
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.ga
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !50
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ai:                                            ; preds = %bb.af, %bb.af
  %i.gj = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.ga
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !80
  %i.gm = sext i32 %i.gl to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.aj:                                            ; preds = %bb.af
  %i.gn = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.ga
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !80
  %i.gq = zext i32 %i.gp to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ak:                                            ; preds = %bb.af
  %i.gr = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gr, i64 %i.ga
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !91
  %i.gu = sext i16 %i.gt to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.al:                                            ; preds = %bb.af
  %i.gv = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.ga
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !91
  %i.gy = zext i16 %i.gx to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.am:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.ga
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !49
  %i.hc = sext i8 %i.hb to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.an:                                            ; preds = %bb.af
  %i.hd = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.ga
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !49
  %i.hg = zext i8 %i.hf to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ao:                                            ; preds = %bb.af
  %i.hh = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ga
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !93
  %i.hk = fptosi double %i.hj to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ap:                                            ; preds = %bb.af
  %i.hl = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ga
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !95
  %i.ho = fptosi float %i.hn to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.aq:                                            ; preds = %bb.af
  %i.hp = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.ga
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !91 ; 2 uses
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = lshr i32 %i.hs, 10
  %i.hu = and i32 %i.ht, 31                       ; 3 uses
  %i.hv = icmp eq i32 %i.hu, 0
  %i.hw = icmp eq i32 %i.hu, 31
  %.signext.i.i = sext i16 %i.hr to i32
  %i.hx = and i32 %.signext.i.i, -2147483648
  %i.hy = shl nuw nsw i32 %i.hu, 23
  %i.hz = add nuw nsw i32 %i.hy, 939524096
  %i.ia = select i1 %i.hw, i32 2139095040, i32 %i.hz
  %i.ib = select i1 %i.hv, i32 0, i32 %i.ia
  %i.ic = shl nuw nsw i32 %i.hs, 13
  %i.id = and i32 %i.ic, 8380416
  %i.ie = or disjoint i32 %i.id, %i.hx
  %i.if = or disjoint i32 %i.ie, %i.ib
  %i.ig = bitcast i32 %i.if to float
  %i.ih = fptosi float %i.ig to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

bb.ar:                                            ; preds = %bb.af
  %i.ii = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ij = ashr i64 %i.ga, 3
  %i.ik = getelementptr inbounds i8, ptr %i.ii, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !49
  %i.im = trunc i64 %i.ga to i8
  %i.in = and i8 %i.im, 7
  %i.io = lshr i8 %i.il, %i.in
  %i.ip = and i8 %i.io, 1
  %i.iq = zext nneg i8 %i.ip to i64
  br label %ArrowArrayViewGetIntUnsafe.exit

ArrowArrayViewGetIntUnsafe.exit:                  ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i234 = phi i64 [ %i.iq, %bb.ar ], [ %i.gf, %bb.ag ], [ %i.gi, %bb.ah ], [ %i.gm, %bb.ai ], [ %i.gq, %bb.aj ], [ %i.gu, %bb.ak ], [ %i.gy, %bb.al ], [ %i.hc, %bb.am ], [ %i.hg, %bb.an ], [ %i.hk, %bb.ao ], [ %i.ho, %bb.ap ], [ %i.ih, %bb.aq ], [ 9223372036854775807, %bb.af ]
  %.not213317.not = icmp eq i64 %i.fw, 1
  br i1 %.not213317.not, label %.thread288, label %.lr.ph320

.lr.ph320:                                        ; preds = %ArrowArrayViewGetIntUnsafe.exit, %bb.be
  %.0189319 = phi i64 [ %.0.i235, %bb.be ], [ %.0.i234, %ArrowArrayViewGetIntUnsafe.exit ] ; 2 uses
  %.0191318 = phi i64 [ %i.lg, %bb.be ], [ 1, %ArrowArrayViewGetIntUnsafe.exit ] ; 4 uses
  %i.ir = add nsw i64 %i.ga, %.0191318            ; 13 uses
  switch i32 %i.gc, label %ArrowArrayViewGetIntUnsafe.exit237 [
    i32 10, label %bb.as
    i32 9, label %bb.at
    i32 22, label %bb.au
    i32 8, label %bb.au
    i32 7, label %bb.av
    i32 6, label %bb.aw
    i32 5, label %bb.ax
    i32 4, label %bb.ay
    i32 3, label %bb.az
    i32 13, label %bb.ba
    i32 12, label %bb.bb
    i32 11, label %bb.bc
    i32 2, label %bb.bd
  ]

bb.as:                                            ; preds = %.lr.ph320
  %i.is = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.it = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !50
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.at:                                            ; preds = %.lr.ph320
  %i.iv = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.ir
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !50
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.au:                                            ; preds = %.lr.ph320, %.lr.ph320
  %i.iy = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ir
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !80
  %i.jb = sext i32 %i.ja to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.av:                                            ; preds = %.lr.ph320
  %i.jc = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.ir
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !80
  %i.jf = zext i32 %i.je to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.aw:                                            ; preds = %.lr.ph320
  %i.jg = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.jg, i64 %i.ir
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !91
  %i.jj = sext i16 %i.ji to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.ax:                                            ; preds = %.lr.ph320
  %i.jk = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.ir
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !91
  %i.jn = zext i16 %i.jm to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.ay:                                            ; preds = %.lr.ph320
  %i.jo = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.ir
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !49
  %i.jr = sext i8 %i.jq to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.az:                                            ; preds = %.lr.ph320
  %i.js = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.ir
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !49
  %i.jv = zext i8 %i.ju to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.ba:                                            ; preds = %.lr.ph320
  %i.jw = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.ir
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !93
  %i.jz = fptosi double %i.jy to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.bb:                                            ; preds = %.lr.ph320
  %i.ka = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ir
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !95
  %i.kd = fptosi float %i.kc to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.bc:                                            ; preds = %.lr.ph320
  %i.ke = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.ir
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !91 ; 2 uses
  %i.kh = zext i16 %i.kg to i32                   ; 2 uses
  %i.ki = lshr i32 %i.kh, 10
  %i.kj = and i32 %i.ki, 31                       ; 3 uses
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = icmp eq i32 %i.kj, 31
  %.signext.i.i236 = sext i16 %i.kg to i32
  %i.km = and i32 %.signext.i.i236, -2147483648
  %i.kn = shl nuw nsw i32 %i.kj, 23
  %i.ko = add nuw nsw i32 %i.kn, 939524096
  %i.kp = select i1 %i.kl, i32 2139095040, i32 %i.ko
  %i.kq = select i1 %i.kk, i32 0, i32 %i.kp
  %i.kr = shl nuw nsw i32 %i.kh, 13
  %i.ks = and i32 %i.kr, 8380416
  %i.kt = or disjoint i32 %i.ks, %i.km
  %i.ku = or disjoint i32 %i.kt, %i.kq
  %i.kv = bitcast i32 %i.ku to float
  %i.kw = fptosi float %i.kv to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

bb.bd:                                            ; preds = %.lr.ph320
  %i.kx = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ky = ashr i64 %i.ir, 3
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !49
  %i.lb = trunc i64 %i.ir to i8
  %i.lc = and i8 %i.lb, 7
  %i.ld = lshr i8 %i.la, %i.lc
  %i.le = and i8 %i.ld, 1
  %i.lf = zext nneg i8 %i.le to i64
  br label %ArrowArrayViewGetIntUnsafe.exit237

ArrowArrayViewGetIntUnsafe.exit237:               ; preds = %.lr.ph320, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd
  %.0.i235 = phi i64 [ %i.lf, %bb.bd ], [ %i.iu, %bb.as ], [ %i.ix, %bb.at ], [ %i.jb, %bb.au ], [ %i.jf, %bb.av ], [ %i.jj, %bb.aw ], [ %i.jn, %bb.ax ], [ %i.jr, %bb.ay ], [ %i.jv, %bb.az ], [ %i.jz, %bb.ba ], [ %i.kd, %bb.bb ], [ %i.kw, %bb.bc ], [ 9223372036854775807, %.lr.ph320 ] ; 3 uses
  %.not212 = icmp sgt i64 %.0.i235, %.0189319
  br i1 %.not212, label %bb.be, label %.thread281

bb.be:                                            ; preds = %ArrowArrayViewGetIntUnsafe.exit237
  %i.lg = add nuw nsw i64 %.0191318, 1            ; 2 uses
  %exitcond390.not = icmp eq i64 %i.lg, %i.fw
  br i1 %exitcond390.not, label %.thread273, label %.lr.ph320

.thread281:                                       ; preds = %ArrowArrayViewGetIntUnsafe.exit237
  %i.lh = add nsw i64 %.0191318, -1
  %i.li = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.80, i64 noundef %.0191318, i64 noundef %.0.i235, i64 noundef %i.lh, i64 noundef %.0189319) #16 ; 0 uses
  br label %.thread

.thread273:                                       ; preds = %bb.be, %ArrowAssertRangeInt8.exit.thread, %.thread256
  %switch221 = icmp eq i32 %i.de, 44
  br i1 %switch221, label %bb.bf, label %.thread288

bb.bf:                                            ; preds = %.thread273
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !52
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !53
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !90 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !49 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !49 ; 2 uses
  %i.ls = load i64, ptr %i.e, align 8, !tbaa !75  ; 3 uses
  %i.lt = load i64, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.lu = add nsw i64 %i.ls, %i.lt                ; 2 uses
  %.not214321 = icmp sgt i64 %i.lt, 0
  br i1 %.not214321, label %.lr.ph323, label %.thread288

.lr.ph323:                                        ; preds = %bb.bf
  %i.lv = icmp eq i32 %i.dd, 44
  br i1 %i.lv, label %.lr.ph323.split.us, label %.lr.ph323.split

.lr.ph323.split.us:                               ; preds = %.lr.ph323, %bb.bi
  %.0171322.us = phi i64 [ %i.mg, %bb.bi ], [ %i.ls, %.lr.ph323 ] ; 6 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %.0171322.us
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !80 ; 2 uses
  %i.ly = sext i32 %i.lx to i64                   ; 3 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %.0171322.us
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !80 ; 2 uses
  %i.mb = sext i32 %i.ma to i64                   ; 3 uses
  %i.mc = icmp slt i32 %i.lx, 0
  br i1 %i.mc, label %.split.us, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph323.split.us
  %i.md = icmp slt i32 %i.ma, 0
  br i1 %i.md, label %.split326.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.me = add nuw nsw i64 %i.mb, %i.ly
  %i.mf = icmp sgt i64 %i.me, %i.ln
  br i1 %i.mf, label %.split330.us, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mg = add nsw i64 %.0171322.us, 1             ; 2 uses
  %.not214.us = icmp slt i64 %i.mg, %i.lu
  br i1 %.not214.us, label %.lr.ph323.split.us, label %.thread288

.lr.ph323.split:                                  ; preds = %.lr.ph323, %bb.bl
  %.0171322 = phi i64 [ %i.ms, %bb.bl ], [ %i.ls, %.lr.ph323 ] ; 6 uses
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %.0171322
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !50 ; 4 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.0171322
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !50 ; 4 uses
  %i.ml = icmp slt i64 %i.mi, 0
  br i1 %i.ml, label %.split.us, label %bb.bj

.split.us:                                        ; preds = %.lr.ph323.split, %.lr.ph323.split.us
  %.us-phi = phi i64 [ %i.ly, %.lr.ph323.split.us ], [ %i.mi, %.lr.ph323.split ]
  %.us-phi324 = phi i64 [ %.0171322.us, %.lr.ph323.split.us ], [ %.0171322, %.lr.ph323.split ]
  %i.mm = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.81, i64 noundef %.us-phi, i64 noundef %.us-phi324) #16 ; 0 uses
  br label %.thread

bb.bj:                                            ; preds = %.lr.ph323.split
  %i.mn = icmp slt i64 %i.mk, 0
  br i1 %i.mn, label %.split326.us, label %bb.bk

.split326.us:                                     ; preds = %bb.bj, %bb.bg
  %.us-phi327 = phi i64 [ %i.mb, %bb.bg ], [ %i.mk, %bb.bj ]
  %.us-phi328 = phi i64 [ %.0171322.us, %bb.bg ], [ %.0171322, %bb.bj ]
  %i.mo = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.82, i64 noundef %.us-phi327, i64 noundef %.us-phi328) #16 ; 0 uses
  br label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.mp = add nuw nsw i64 %i.mk, %i.mi
  %i.mq = icmp sgt i64 %i.mp, %i.ln
  br i1 %i.mq, label %.split330.us, label %bb.bl

.split330.us:                                     ; preds = %bb.bk, %bb.bh
  %.us-phi331 = phi i64 [ %i.ly, %bb.bh ], [ %i.mi, %bb.bk ]
  %.us-phi332 = phi i64 [ %i.mb, %bb.bh ], [ %i.mk, %bb.bk ]
  %.us-phi333 = phi i64 [ %.0171322.us, %bb.bh ], [ %.0171322, %bb.bk ]
  %i.mr = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %1, ptr noundef nonnull @.str.83, i64 noundef %.us-phi331, i64 noundef %.us-phi332, i64 noundef %.us-phi333, i64 noundef %i.ln) #16 ; 0 uses
  br label %.thread

bb.bl:                                            ; preds = %bb.bk
  %i.ms = add nsw i64 %.0171322, 1                ; 2 uses
  %.not214 = icmp slt i64 %i.ms, %i.lu
  br i1 %.not214, label %.lr.ph323.split, label %.thread288

.thread288:                                       ; preds = %bb.bl, %bb.bi, %.preheader, %bb.ae, %ArrowArrayViewGetIntUnsafe.exit, %bb.bf, %.thread273
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !51
  %i.mv = icmp sgt i64 %i.mu, 0
  br i1 %i.mv, label %.lr.ph335, label %._crit_edge

.lr.ph335:                                        ; preds = %.thread288
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %i.mx = add nuw nsw i64 %.0168334, 1            ; 2 uses
  %i.my = load i64, ptr %i.mt, align 8, !tbaa !51
  %i.mz = icmp slt i64 %i.mx, %i.my
  br i1 %i.mz, label %bb.bn, label %._crit_edge

bb.bn:                                            ; preds = %.lr.ph335, %bb.bm
  %.0168334 = phi i64 [ 0, %.lr.ph335 ], [ %i.mx, %bb.bm ] ; 2 uses
  %i.na = load ptr, ptr %i.mw, align 8, !tbaa !52
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.0168334
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !53
  %i.nd = tail call fastcc i32 @ArrowArrayViewValidateFull(ptr noundef %i.nc, ptr noundef %1) ; 2 uses
  %.not215 = icmp eq i32 %i.nd, 0
  br i1 %.not215, label %bb.bm, label %.thread

._crit_edge:                                      ; preds = %bb.bm, %.thread288
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !54 ; 2 uses
  %.not216 = icmp eq ptr %i.nf, null
  br i1 %.not216, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge
  %i.ng = tail call fastcc i32 @ArrowArrayViewValidateFull(ptr noundef nonnull %i.nf, ptr noundef %1) ; 2 uses
  %.not217.not = icmp eq i32 %i.ng, 0
  br i1 %.not217.not, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo, %._crit_edge
  br label %.thread

.thread:                                          ; preds = %bb.bn, %ArrowAssertRangeInt8.exit, %ArrowAssertInt8In.exit, %bb.w, %ArrowAssertIncreasingInt64.exit, %ArrowAssertIncreasingInt32.exit, %.split330.us, %.split326.us, %.split.us, %.thread281, %bb.ad, %bb.bo, %bb.bp
  %.28 = phi i32 [ 0, %bb.bp ], [ %i.ng, %bb.bo ], [ 22, %.split330.us ], [ 22, %bb.w ], [ 22, %.thread281 ], [ 22, %bb.ad ], [ 22, %ArrowAssertIncreasingInt32.exit ], [ 22, %.split.us ], [ 22, %.split326.us ], [ 22, %ArrowAssertIncreasingInt64.exit ], [ 22, %ArrowAssertRangeInt8.exit ], [ 22, %ArrowAssertInt8In.exit ], [ %i.nd, %bb.bn ]
  ret i32 %.28
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowArrayViewCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ArrowComparisonInternalState, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %2, ptr %5, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %4, ptr %i.b, align 8, !tbaa !102
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call fastcc void @ArrowArrayViewCompareIdentical(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !101  ; 2 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !80
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !102
  call void (ptr, ptr, ...) @ArrowComparePrependPath(ptr noundef %i.d, ptr noundef nonnull @.str.7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ArrowArrayViewCompareIdentical(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %i.f, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #16 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !101
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51
  %.not58 = icmp eq i64 %i.j, %i.l
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.o = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %i.n, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89) #16 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !101
end_hunk_1
