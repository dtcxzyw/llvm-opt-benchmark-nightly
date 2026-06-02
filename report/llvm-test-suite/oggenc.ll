inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@push:bb.a
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = sext i32 %5 to i64
  %i.dw = sdiv i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge112
  %.0 = phi i32 [ %i.dx, %._crit_edge112 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @res_push_interleaved(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %i.d, align 8
  store i32 %i.i, ptr %i.a, align 4
  %i.j = load i32, ptr %i.e, align 4
  store i32 %i.j, ptr %i.b, align 4
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = load i32, ptr %i.g, align 4
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = mul i32 %i.l, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.s = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.q, i32 noundef %i.h, ptr noundef %i.r, i32 noundef %i.h, i64 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %0, align 8                ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4
  %.pre21 = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi i32 [ -1, %bb.a ], [ %.pre21, %._crit_edge.loopexit ]
  %i.x = phi i32 [ -1, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.018.lcssa = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.w, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.018.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @res_drain(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #71 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %i.i, align 8
  store i32 %i.l, ptr %i.a, align 4
  %i.m = load i32, ptr %i.j, align 4
  store i32 %i.m, ptr %i.b, align 4
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load i32, ptr %i.c, align 4              ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = mul i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = lshr i32 %i.o, 1
  %i.w = add nsw i32 %i.v, -1
  %i.x = zext i32 %i.w to i64
  %i.y = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.s, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull %i.f, i32 noundef 1, i64 noundef %i.x)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %0, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.017.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.f) #62
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.ac, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.018 = phi i32 [ %.017.lcssa, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.018
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @res_drain_interleaved(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #71 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = phi i32 [ %i.h, %.lr.ph ], [ %i.z, %bb.b ]
  %i.m = load i32, ptr %i.i, align 8
  store i32 %i.m, ptr %i.a, align 4
  %i.n = load i32, ptr %i.j, align 4
  store i32 %i.n, ptr %i.b, align 4
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = load i32, ptr %i.c, align 4              ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = lshr i32 %i.p, 1
  %i.w = add nsw i32 %i.v, -1
  %i.x = zext i32 %i.w to i64
  %i.y = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.t, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.u, i32 noundef %i.l, ptr noundef nonnull %i.f, i32 noundef 1, i64 noundef %i.x)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %0, align 8                ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.018.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.f) #62
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.ac, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.019 = phi i32 [ %.018.lcssa, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #33

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @_getopt_internal(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, ptr noundef readonly captures(address) %3, ptr noundef writeonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #13 {
bb.a:
  store ptr null, ptr @optarg, align 8
  %i.a = load i32, ptr @optind, align 4           ; 6 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr @__getopt_initialized, align 4
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.a, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr @optind, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ 1, %bb.c ], [ %i.a, %bb.b ]    ; 3 uses
  store i32 %i.f, ptr @last_nonopt, align 4
  store i32 %i.f, ptr @first_nonopt, align 4
  store ptr null, ptr @nextchar, align 8
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.197) #62 ; 2 uses
  store ptr %i.g, ptr @posixly_correct, align 8
  %i.h = load i8, ptr %2, align 1
  switch i8 %i.h, label %bb.g [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr @ordering, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.thread

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr @ordering, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @ordering, align 4
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr @ordering, align 4
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %2, %bb.h ], [ %2, %bb.i ]
  store i32 1, ptr @__getopt_initialized, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.pre = load ptr, ptr @nextchar, align 8        ; 3 uses
  %i.k = icmp eq ptr %.pre, null
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i8, ptr %.pre, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.af

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %.0188426 = phi ptr [ %.0.i, %.thread ], [ %2, %bb.k ], [ %2, %bb.j ]
  %optind.promoted424 = phi i32 [ %i.f, %.thread ], [ %i.a, %bb.k ], [ %i.a, %bb.j ] ; 17 uses
  %i.n = load i32, ptr @last_nonopt, align 4      ; 2 uses
  %i.o = icmp sgt i32 %i.n, %optind.promoted424
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %optind.promoted424, ptr @last_nonopt, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.p = phi i32 [ %optind.promoted424, %bb.m ], [ %i.n, %bb.l ] ; 11 uses
  %i.q = load i32, ptr @first_nonopt, align 4     ; 2 uses
  %i.r = icmp sgt i32 %i.q, %optind.promoted424
  br i1 %i.r, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %optind.promoted424, ptr @first_nonopt, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.s = phi i32 [ %optind.promoted424, %bb.o ], [ %i.q, %bb.n ] ; 6 uses
  %i.t = load i32, ptr @ordering, align 4         ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.s, %i.p
  %.not218 = icmp eq i32 %i.p, %optind.promoted424 ; 2 uses
  %or.cond265 = or i1 %.not, %.not218
  br i1 %or.cond265, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = icmp sgt i32 %optind.promoted424, %i.p
  %i.w = icmp sgt i32 %i.p, %i.s
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %.lr.ph67.preheader.i, label %exchange.exit

.lr.ph67.preheader.i:                             ; preds = %bb.r
  %i.y = sext i32 %i.p to i64                     ; 2 uses
  %invariant.gep79.i = getelementptr [8 x i8], ptr %1, i64 %i.y ; 5 uses
  %i.z = shl nsw i64 %i.y, 3
  %scevgep477 = getelementptr i8, ptr %1, i64 %i.z
  br label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge63.i, %.lr.ph67.preheader.i
  %.05165.i = phi i32 [ %.1.i, %._crit_edge63.i ], [ %i.s, %.lr.ph67.preheader.i ] ; 8 uses
  %.05364.i = phi i32 [ %.154.i, %._crit_edge63.i ], [ %optind.promoted424, %.lr.ph67.preheader.i ] ; 3 uses
  %i.aa = sub nsw i32 %.05364.i, %i.p             ; 5 uses
  %i.ab = sub nsw i32 %i.p, %.05165.i             ; 5 uses
  %i.ac = icmp sgt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.preheader.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %.lr.ph67.i
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader59.i
  %i.ae = sext i32 %.05165.i to i64               ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.aa to i64 ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %1, i64 %i.ae ; 5 uses
  %min.iters.check483 = icmp ult i32 %i.aa, 6
  br i1 %min.iters.check483, label %.lr.ph.i.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %.lr.ph.preheader.i
  %i.af = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.ag = add nsw i64 %i.ae, %wide.trip.count.i
  %i.ah = shl nsw i64 %i.ag, 3
  %scevgep476 = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.af
  %bound0479 = icmp ult ptr %invariant.gep.i, %scevgep478
  %bound1480 = icmp ult ptr %invariant.gep79.i, %scevgep476
  %found.conflict481 = and i1 %bound0479, %bound1480
  br i1 %found.conflict481, label %.lr.ph.i.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %vector.memcheck475
  %n.vec486 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next493, %vector.body487 ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index488 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16     ; 2 uses
  %wide.load489 = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !144, !noalias !147
  %wide.load490 = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !144, !noalias !147
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %index488 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %wide.load491 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !147
  %wide.load492 = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !147
  store <2 x ptr> %wide.load491, ptr %i.ai, align 8, !alias.scope !144, !noalias !147
  store <2 x ptr> %wide.load492, ptr %i.aj, align 8, !alias.scope !144, !noalias !147
  store <2 x ptr> %wide.load489, ptr %i.ak, align 8, !alias.scope !147
  store <2 x ptr> %wide.load490, ptr %i.al, align 8, !alias.scope !147
  %index.next493 = add nuw i64 %index488, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.am, label %middle.block494, label %vector.body487, !llvm.loop !149

middle.block494:                                  ; preds = %vector.body487
  %cmp.n495 = icmp eq i64 %n.vec486, %wide.trip.count.i
  br i1 %cmp.n495, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck475, %.lr.ph.preheader.i, %middle.block494
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck475 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec486, %middle.block494 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.an = load ptr, ptr %gep.i.prol, align 8
  %gep80.i.prol = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.ao = load ptr, ptr %gep80.i.prol, align 8
  store ptr %i.ao, ptr %gep.i.prol, align 8
  store ptr %i.an, ptr %gep80.i.prol, align 8
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ap = add nsw i64 %wide.trip.count.i, -1
  %i.aq = icmp eq i64 %indvars.iv.i.ph, %i.ap
  br i1 %i.aq, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph67.i
  %i.ar = icmp sgt i32 %i.ab, 0
  %i.as = sub i32 %.05364.i, %i.ab                ; 5 uses
  br i1 %i.ar, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.at = sext i32 %.05165.i to i64               ; 2 uses
  %i.au = sext i32 %i.as to i64                   ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.ab to i64 ; 7 uses
end_hunk_0
begin_hunk_1_@_getopt_internal:bb.a
  store i32 %i.ls, ptr @optind, align 4
  br label %.thread315

bb.cn:                                            ; preds = %._crit_edge361
  %.not255 = icmp eq ptr %.1165, null
  br i1 %.not255, label %.thread444, label %.thread324

.thread324:                                       ; preds = %bb.ch, %bb.cn
  %.2166322329 = phi ptr [ %.1165, %bb.cn ], [ %.0167355, %bb.ch ] ; 4 uses
  %.2323328 = phi i32 [ %.1, %bb.cn ], [ %.0359, %bb.ch ]
  %.not256 = icmp eq i8 %i.kr, 0
  %i.lt = getelementptr inbounds nuw i8, ptr %.2166322329, i64 8
  %i.lu = load i32, ptr %i.lt, align 8            ; 2 uses
  br i1 %.not256, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %.thread324
  %.not258 = icmp eq i32 %i.lu, 0
  br i1 %.not258, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lv = getelementptr inbounds nuw i8, ptr %.0168, i64 1
  br label %.sink.split462

bb.cq:                                            ; preds = %bb.co
  %i.lw = load i32, ptr @opterr, align 4
  %.not259 = icmp eq i32 %i.lw, 0
  br i1 %.not259, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lx = load ptr, ptr @stderr, align 8
  %i.ly = load ptr, ptr %1, align 8
  %i.lz = load ptr, ptr %.2166322329, align 8
  %i.ma = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lx, ptr noundef nonnull @.str.126, ptr noundef %i.ly, ptr noundef %i.lz) #65 ; 0 uses
  %.pre380 = load ptr, ptr @nextchar, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mb = phi ptr [ %.pre380, %bb.cr ], [ %i.kq, %bb.cq ] ; 2 uses
  %i.mc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mb) #63
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  store ptr %i.md, ptr @nextchar, align 8
  br label %.thread315

bb.ct:                                            ; preds = %.thread324
  %i.me = icmp eq i32 %i.lu, 1
  br i1 %i.me, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.mf = icmp slt i32 %i.kp, %0
  br i1 %i.mf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mg = add nsw i32 %i.kp, 1
  store i32 %i.mg, ptr @optind, align 4
  %i.mh = sext i32 %i.kp to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8
  br label %.sink.split462

bb.cw:                                            ; preds = %bb.cu
  %i.mk = load i32, ptr @opterr, align 4
  %.not257 = icmp eq i32 %i.mk, 0
  br i1 %.not257, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ml = load ptr, ptr @stderr, align 8
  %i.mm = load ptr, ptr %1, align 8
  %i.mn = sext i32 %i.kp to i64
  %i.mo = getelementptr [8 x i8], ptr %1, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 -8
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.119, ptr noundef %i.mm, ptr noundef %i.mq) #65 ; 0 uses
  %.pre381 = load ptr, ptr @nextchar, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ms = phi ptr [ %.pre381, %bb.cx ], [ %i.kq, %bb.cw ] ; 2 uses
  %i.mt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ms) #63
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  store ptr %i.mu, ptr @nextchar, align 8
  %i.mv = load i8, ptr %.0188425, align 1
  %i.mw = icmp eq i8 %i.mv, 58
  %i.mx = select i1 %i.mw, i32 58, i32 63
  br label %.thread315

.sink.split462:                                   ; preds = %bb.cp, %bb.cv
  %.sink463 = phi ptr [ %i.mj, %bb.cv ], [ %i.lv, %bb.cp ]
  store ptr %.sink463, ptr @optarg, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split462, %bb.ct
  %i.my = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kq) #63
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.my
  store ptr %i.mz, ptr @nextchar, align 8
  %.not260 = icmp eq ptr %4, null
  br i1 %.not260, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 %.2323328, ptr %4, align 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.na = getelementptr inbounds nuw i8, ptr %.2166322329, i64 16
  %i.nb = load ptr, ptr %i.na, align 8            ; 2 uses
  %.not261 = icmp eq ptr %i.nb, null
  %i.nc = getelementptr inbounds nuw i8, ptr %.2166322329, i64 24
  %i.nd = load i32, ptr %i.nc, align 8            ; 2 uses
  br i1 %.not261, label %.thread315, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 %i.nd, ptr %i.nb, align 4
  br label %.thread315

.thread444:                                       ; preds = %.critedge12, %bb.cn
  store ptr null, ptr @nextchar, align 8
  br label %.thread315

._crit_edge376:                                   ; preds = %bb.bv
  %i.ne = icmp eq i8 %i.ka, 58
  br i1 %i.ne, label %bb.dd, label %.thread315

bb.dd:                                            ; preds = %._crit_edge376
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = icmp eq i8 %i.ng, 58
  %i.ni = load i8, ptr %i.ji, align 1
  %.not247 = icmp eq i8 %i.ni, 0                  ; 2 uses
  br i1 %i.nh, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  br i1 %.not247, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nj = add nsw i32 %i.jp, 1
  store i32 %i.nj, ptr @optind, align 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %.sink = phi ptr [ %i.ji, %bb.df ], [ null, %bb.de ]
  store ptr %.sink, ptr @optarg, align 8
  store ptr null, ptr @nextchar, align 8
  br label %.thread315

bb.dh:                                            ; preds = %bb.dd
  br i1 %.not247, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store ptr %i.ji, ptr @optarg, align 8
  %i.nk = add nsw i32 %i.jp, 1
  store i32 %i.nk, ptr @optind, align 4
  br label %bb.do

bb.dj:                                            ; preds = %bb.dh
  %i.nl = icmp eq i32 %i.jp, %0
  br i1 %i.nl, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.nm = load i32, ptr @opterr, align 4
  %.not246 = icmp eq i32 %i.nm, 0
  br i1 %.not246, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nn = load ptr, ptr @stderr, align 8
  %i.no = load ptr, ptr %1, align 8
  %i.np = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nn, ptr noundef nonnull @.str.124, ptr noundef %i.no, i32 noundef %i.jk) #65 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  store i32 %i.jk, ptr @optopt, align 4
  %i.nq = load i8, ptr %.0188425, align 1
  %i.nr = icmp eq i8 %i.nq, 58
  %.267 = select i1 %i.nr, i32 58, i32 63
  br label %bb.do

bb.dn:                                            ; preds = %bb.dj
  %i.ns = add nsw i32 %i.jp, 1
  store i32 %i.ns, ptr @optind, align 4
  %i.nt = sext i32 %i.jp to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8
  store ptr %i.nv, ptr @optarg, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.di
  %.pre382.pre-phi = phi i32 [ %.267, %bb.dm ], [ %i.jk, %bb.dn ], [ %i.jk, %bb.di ]
  store ptr null, ptr @nextchar, align 8
  br label %.thread315

.thread315:                                       ; preds = %bb.db, %bb.bj, %._crit_edge376, %bb.do, %bb.dg, %bb.as, %bb.bp, %bb.bg, %bb.ba, %bb.bk, %bb.bu, %.thread444, %bb.dc, %bb.cy, %bb.cs, %bb.cm, %bb.cb, %bb.ac, %.thread429, %bb.aa, %bb.ad
  %.3 = phi i32 [ %., %bb.cb ], [ -1, %.thread429 ], [ 1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.aa ], [ 63, %bb.bu ], [ 0, %bb.bk ], [ 0, %bb.dc ], [ %i.iq, %bb.bj ], [ 63, %bb.cs ], [ %i.mx, %bb.cy ], [ 87, %.thread444 ], [ 63, %bb.cm ], [ 63, %bb.as ], [ 63, %bb.bp ], [ %i.ik, %bb.bg ], [ 63, %bb.ba ], [ %i.jk, %._crit_edge376 ], [ %i.jk, %bb.dg ], [ %.pre382.pre-phi, %bb.do ], [ %i.nd, %bb.db ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt(i32 noundef %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull readonly captures(address) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt_long(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, ptr noundef readonly captures(address) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getopt_long_only(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, ptr noundef readonly captures(address) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @vorbis_encode_floor_setup(ptr captures(none) %.48.val, double noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #27 {
bb.a:
  %i.a = fptosi double %0 to i32
  %i.b = tail call noalias dereferenceable_or_null(1120) ptr @calloc(i64 noundef 1, i64 noundef 1120) #71 ; 8 uses
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %4, i64 %i.c ; 4 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [1120 x i8], ptr %3, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1120) %i.b, ptr noundef nonnull align 4 dereferenceable(1120) %i.g, i64 1116, i1 false)
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.48.val, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1116
  store i32 %i.l, ptr %i.m, align 4
  %i.n = load i32, ptr %i.b, align 4              ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.t, %vector.body ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load39 = load <4 x i32>, ptr %i.r, align 4
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.t = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load39, <4 x i32> %vec.phi38) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.s, <4 x i32> %i.t)
  %i.v = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0613.ph = phi i32 [ -1, %.lr.ph ], [ %i.v, %middle.block ]
  br label %scalar.ph

.preheader1:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.v, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.not8 = icmp slt i32 %spec.select.lcssa, 0
  br i1 %.not8, label %._crit_edge16, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %.48.val, i64 32
  %i.y = load i32, ptr %i.x, align 8              ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ab = add nuw i32 %spec.select.lcssa, 1
  %wide.trip.count25 = zext i32 %i.ab to i64
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0613 = phi i32 [ %spec.select, %scalar.ph ], [ %.0613.ph, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.0613) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader1, label %scalar.ph, !llvm.loop !179

.preheader:                                       ; preds = %._crit_edge
  %.not7113 = icmp slt i32 %.2.lcssa, 0
  br i1 %.not7113, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.48.val, i64 2856 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.48.val, i64 32 ; 6 uses
  %i.ag = add nuw i32 %.2.lcssa, 1                ; 2 uses
  %wide.trip.count30 = zext i32 %i.ag to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count30, 1
  %i.ah = icmp eq i32 %.2.lcssa, 0
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph15.new

.lr.ph15.new:                                     ; preds = %.lr.ph15
  %unroll_iter = and i64 %wide.trip.count30, 4294967294
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next23, %._crit_edge ] ; 4 uses
  %.010 = phi i32 [ -1, %.lr.ph11 ], [ %.2.lcssa, %._crit_edge ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv22 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %spec.select72 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %.010) ; 3 uses
  %i.ak = add nsw i32 %i.y, %i.aj
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv22
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %.not17 = icmp eq i32 %i.am, 31
  br i1 %.not17, label %._crit_edge, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv22 ; 9 uses
  %i.ao = shl nuw nsw i32 1, %i.am
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %min.iters.check41 = icmp ult i32 %i.am, 3
  br i1 %min.iters.check41, label %scalar.ph40, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph6
  %n.vec44 = and i64 %i.ap, 2147483640
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select72, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %pred.store.continue64, %vector.ph42
  %index46 = phi i64 [ 0, %vector.ph42 ], [ %index.next65, %pred.store.continue64 ] ; 9 uses
  %vec.phi47 = phi <4 x i32> [ %broadcast.splat, %vector.ph42 ], [ %i.as, %pred.store.continue64 ]
  %vec.phi48 = phi <4 x i32> [ %broadcast.splat, %vector.ph42 ], [ %i.at, %pred.store.continue64 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index46 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load49 = load <4 x i32>, ptr %i.aq, align 4 ; 6 uses
  %wide.load50 = load <4 x i32>, ptr %i.ar, align 4 ; 6 uses
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load49, <4 x i32> %vec.phi47) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load50, <4 x i32> %vec.phi48) ; 2 uses
  %i.au = icmp sgt <4 x i32> %wide.load49, splat (i32 -1) ; 4 uses
  %i.av = icmp sgt <4 x i32> %wide.load50, splat (i32 -1) ; 4 uses
  %i.aw = extractelement <4 x i1> %i.au, i64 0
  br i1 %i.aw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body45
  %i.ax = extractelement <4 x i32> %wide.load49, i64 0
  %i.ay = add nsw i32 %i.ax, %i.y
  store i32 %i.ay, ptr %i.aq, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body45
  %i.az = extractelement <4 x i1> %i.au, i64 1
  br i1 %i.az, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = extractelement <4 x i32> %wide.load49, i64 1
  %i.bd = add nsw i32 %i.bc, %i.y
  store i32 %i.bd, ptr %i.bb, align 4
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue
  %i.be = extractelement <4 x i1> %i.au, i64 2
  br i1 %i.be, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = extractelement <4 x i32> %wide.load49, i64 2
  %i.bi = add nsw i32 %i.bh, %i.y
  store i32 %i.bi, ptr %i.bg, align 4
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.bj = extractelement <4 x i1> %i.au, i64 3
  br i1 %i.bj, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = extractelement <4 x i32> %wide.load49, i64 3
  %i.bn = add nsw i32 %i.bm, %i.y
  store i32 %i.bn, ptr %i.bl, align 4
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.bo = extractelement <4 x i1> %i.av, i64 0
  br i1 %i.bo, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = extractelement <4 x i32> %wide.load50, i64 0
  %i.bs = add nsw i32 %i.br, %i.y
  store i32 %i.bs, ptr %i.bq, align 4
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
end_hunk_1
