Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMem?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Gia_MmFlexEntryFetch:bb.a

bb.f:                                             ; preds = %bb.d
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %1, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nsw i32 %1, 1                        ; 2 uses
  store i32 %i.y, ptr %i.v, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi i32 [ %i.y, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #16 ; 3 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !42
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.ag = add nsw i32 %i.af, %i.z
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.i, align 8, !tbaa !37
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.al
  store ptr %i.ab, ptr %i.am, align 8, !tbaa !21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre35 = sext i32 %1 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.pre-phi = phi i64 [ %.pre35, %bb.j ], [ %i.d, %bb.b ]
  %i.an = phi ptr [ %.pre, %bb.j ], [ %i.b, %bb.b ] ; 2 uses
  %i.ao = load i32, ptr %0, align 8, !tbaa !38
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %0, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.as = add nsw i32 %i.ar, %1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !39
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %.pre-phi
  store ptr %i.at, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.an
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_MmFlexRestart(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !36  ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.f = phi i32 [ %i.l, %bb.c ], [ %i.b, %.preheader ]
  %i.g = phi ptr [ %i.m, %bb.c ], [ %.pre, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.i) #17
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr null, ptr %i.k, align 8, !tbaa !21
  %.pre22 = load i32, ptr %i.a, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = phi i32 [ %.pre22, %bb.b ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.g, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.p = phi ptr [ %.pre, %.preheader ], [ %i.m, %bb.c ]
  store i32 1, ptr %i.a, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.r, ptr %i.s, align 4, !tbaa !40
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !42
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !43
  store i32 0, ptr %0, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Gia_MmFlexReadMemUsage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define noalias noundef ptr @Gia_MmStepStart(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %calloc = tail call dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48) ; 8 uses
  store i32 %0, ptr %calloc, align 8, !tbaa !45
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  %i.e = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = shl i32 8, %i.f
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 5 uses
  store i32 %i.g, ptr %calloc.i, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i32 1024, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 28
  store i32 64, ptr %i.i, align 4, !tbaa !15
  %i.j = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #16
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %calloc.i, ptr %i.l, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.m = phi ptr [ %.pre, %._crit_edge.loopexit ], [ undef, %bb.a ] ; 4 uses
  %i.n = shl i32 4, %0                            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = or disjoint i32 %i.n, 1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !53
  store ptr null, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.m, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.m, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.m, ptr %i.w, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.m, ptr %i.x, align 8, !tbaa !49
  br i1 %i.e, label %.lr.ph47.preheader, label %._crit_edge48

.lr.ph47.preheader:                               ; preds = %._crit_edge
  %wide.trip.count61 = zext nneg i32 %0 to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %._crit_edge45
  %indvars.iv58 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next59, %._crit_edge45 ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv58 to i32   ; 2 uses
  %i.z = shl i32 4, %i.y                          ; 3 uses
  %i.aa = shl i32 8, %i.y                         ; 2 uses
  %.not41.not = icmp slt i32 %i.z, %i.aa
  br i1 %.not41.not, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph47
  %i.ab = add i32 %i.aa, -4
  %1 = sub i32 %i.ab, %i.z
  %i.ac = zext i32 %1 to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv58
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = sext i32 %i.z to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph44
  %index = phi i64 [ 0, %.lr.ph44 ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %gep, i64 8
  %i.ah = getelementptr i8, ptr %gep, i64 24
  store <2 x ptr> %broadcast.splat, ptr %i.ag, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat, ptr %i.ah, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4
  %i.ai = icmp eq i64 %index, %i.ac
  br i1 %i.ai, label %._crit_edge45, label %vector.body, !llvm.loop !54

._crit_edge45:                                    ; preds = %vector.body, %.lr.ph47
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !57

._crit_edge48:                                    ; preds = %._crit_edge45, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store i32 64, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %calloc, i64 36
  store i32 0, ptr %i.ak, align 4, !tbaa !59
  %i.al = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #16
  %i.am = getelementptr inbounds nuw i8, ptr %calloc, i64 40
  store ptr %i.al, ptr %i.am, align 8, !tbaa !60
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define void @Gia_MmStepStop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !45
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @Gia_MmFixedStop(ptr noundef %i.f, i32 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !45
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !58
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !60  ; 3 uses
  br i1 %i.n, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader, %bb.d
  %i.p = phi i32 [ %i.v, %bb.d ], [ %i.m, %.preheader ]
  %i.q = phi ptr [ %i.w, %bb.d ], [ %.pre, %.preheader ] ; 2 uses
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv39
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph36
  tail call void @free(ptr noundef nonnull %i.s) #17
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv39
  store ptr null, ptr %i.u, align 8, !tbaa !21
  %.pre42 = load i32, ptr %i.l, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph36
  %i.v = phi i32 [ %.pre42, %bb.c ], [ %i.p, %.lr.ph36 ] ; 2 uses
  %i.w = phi ptr [ %i.t, %bb.c ], [ %i.q, %.lr.ph36 ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = icmp slt i64 %indvars.iv.next40, %i.x
  br i1 %i.y, label %.lr.ph36, label %._crit_edge37.thread, !llvm.loop !62

._crit_edge37:                                    ; preds = %.preheader
  %.not30 = icmp eq ptr %.pre, null
  br i1 %.not30, label %bb.e, label %._crit_edge37.thread

._crit_edge37.thread:                             ; preds = %bb.d, %._crit_edge37
  %i.z = phi ptr [ %.pre, %._crit_edge37 ], [ %i.w, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @free(ptr noundef nonnull %i.z) #17
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge37.thread, %._crit_edge37, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.ac) #17
  store ptr null, ptr %i.ab, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %.not32 = icmp eq ptr %i.ae, null
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ae) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Gia_MmStepEntryFetch(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp sgt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = shl nsw i32 %i.f, 1                      ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  %i.m = sext i32 %i.j to i64
  %i.n = shl nsw i64 %i.m, 3                      ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.n) #18
  %.pre21.pre = load i32, ptr %i.e, align 4, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre21 = phi i32 [ %.pre21.pre, %bb.e ], [ %i.f, %bb.f ]
  %i.q = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi i32 [ %i.f, %._crit_edge ], [ %.pre21, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.g ]
  %i.t = sext i32 %1 to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #16 ; 2 uses
  %i.v = add nsw i32 %i.r, 1
  store i32 %i.v, ptr %i.e, align 4, !tbaa !59
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w
  store ptr %i.u, ptr %i.x, align 8, !tbaa !21
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = sext i32 %1 to i64
end_hunk_0
