Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxCompare:bb.a
  %.not41 = phi i1 [ true, %bb.f ], [ true, %bb.d ], [ false, %bb.e ]
  %.031 = phi i32 [ 0, %bb.f ], [ 0, %bb.d ], [ 1, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 5 uses
  %i.k = icmp ult i64 %3, %i.j
  %. = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %2, i64 noundef %.) #29 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %3, %i.j
  %i.q = zext i1 %i.p to i32
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.r = icmp eq i64 %3, %i.j
  %or.cond43 = and i1 %.not40.not, %i.r
  br i1 %or.cond43, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = icmp ult i64 %i.j, %3
  %i.t = zext i1 %i.s to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %narrow = and i1 %.not44, %i.k
  %spec.select = zext i1 %narrow to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.u = icmp sgt i32 %i.n, 0
  %i.v = zext i1 %.not44 to i32
  %spec.select45 = select i1 %i.u, i32 %i.v, i32 %.031
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.m, %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ %spec.select, %bb.n ], [ %i.q, %bb.i ], [ %i.t, %bb.m ], [ %spec.select45, %bb.o ], [ 1, %bb.k ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @raxStop(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @zfree(ptr noundef %i.b) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %raxStackFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @zfree(ptr noundef %i.e) #24
  br label %raxStackFree.exit

raxStackFree.exit:                                ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 3) i32 @raxEOF(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39
  %i.b = and i32 %i.a, 2
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @raxSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @raxRecursiveShow(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge48.loopexit, %bb.a
  %.tr = phi i32 [ %0, %bb.a ], [ %i.am, %._crit_edge48.loopexit ] ; 2 uses
  %.tr67 = phi i32 [ %1, %bb.a ], [ %.0, %._crit_edge48.loopexit ] ; 2 uses
  %.tr68 = phi ptr [ %2, %bb.a ], [ %.0.copyload, %._crit_edge48.loopexit ] ; 5 uses
  %i.a = load i32, ptr %.tr68, align 4            ; 2 uses
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = select i1 %.not, i32 91, i32 34
  %i.d = lshr i32 %i.a, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 4 ; 4 uses
  %i.f = select i1 %.not, i32 93, i32 34
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = load i32, ptr %.tr68, align 4            ; 5 uses
  %i.i = and i32 %i.h, 1
  %.not39 = icmp eq i32 %i.i, 0
  br i1 %.not39, label %bb.d, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.j = and i32 %i.h, 2
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %raxGetData.exit

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.h, 3                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = xor i32 %i.k, 3
  %.neg.i = add nuw nsw i32 %i.m, 1
  %i.n = and i32 %.neg.i, 7
  %i.o = zext nneg i32 %i.n to i64
  %i.p = and i32 %i.h, 4
  %.not11.i = icmp eq i32 %i.p, 0
  %i.q = shl nuw nsw i64 %i.l, 3
  %spec.select.i = select i1 %.not11.i, i64 %i.q, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.tr68, i64 %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i = load ptr, ptr %i.u, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.copyload.i, %bb.c ], [ null, %bb.b ]
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %.0.i)
  %i.w = add nsw i32 %i.v, %i.g
  %.pre = load i32, ptr %.tr68, align 4
  br label %bb.d

bb.d:                                             ; preds = %raxGetData.exit, %tailrecurse
  %i.x = phi i32 [ %.pre, %raxGetData.exit ], [ %i.h, %tailrecurse ] ; 2 uses
  %.037 = phi i32 [ %i.w, %raxGetData.exit ], [ %i.g, %tailrecurse ]
  %i.y = and i32 %i.x, 4
  %.not40 = icmp eq i32 %i.y, 0
  %i.z = lshr i32 %i.x, 3                         ; 3 uses
  %spec.select = select i1 %.not40, i32 %i.z, i32 1 ; 5 uses
  %.not41 = icmp eq i32 %.tr, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ugt i32 %spec.select, 1
  %i.ab = select i1 %i.aa, i32 7, i32 4
  %i.ac = add nsw i32 %i.ab, %.tr67
  %i.ad = icmp eq i32 %spec.select, 1
  %i.ae = select i1 %i.ad, i32 %.037, i32 0
  %spec.select42 = add nsw i32 %i.ac, %i.ae
  %i.af = freeze i32 %spec.select42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %.tr67, %bb.d ], [ %i.af, %bb.e ] ; 5 uses
  %i.ag = zext nneg i32 %i.z to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ag
  %i.ai = xor i32 %i.z, 3
  %.neg = add nuw nsw i32 %i.ai, 1
  %i.aj = and i32 %.neg, 7
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 3 uses
  %.not49 = icmp eq i32 %spec.select, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.f
  %.not50 = icmp eq i32 %spec.select, 1
  %i.am = add nsw i32 %.tr, 1                     ; 3 uses
  br i1 %.not50, label %._crit_edge48.loopexit, label %.lr.ph47.split.us

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %i.an = icmp sgt i32 %.0, 0
  %wide.trip.count58 = zext nneg i32 %spec.select to i64 ; 2 uses
  br i1 %i.an, label %.lr.ph.us.us, label %.lr.ph47.split.us.split

.lr.ph.us.us:                                     ; preds = %.lr.ph47.split.us, %._crit_edge.us.us
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge.us.us ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03644.us.us = phi ptr [ %i.ax, %._crit_edge.us.us ], [ %i.al, %.lr.ph47.split.us ] ; 2 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.ap = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ao), !inline_history !2 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.us, %bb.g
  %.03443.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.as, %bb.g ]
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.ar = tail call noundef i32 @putc(i32 noundef 32, ptr noundef %i.aq), !inline_history !2 ; 0 uses
  %i.as = add nuw nsw i32 %.03443.us.us, 1        ; 2 uses
  %exitcond54.not = icmp eq i32 %i.as, %.0
  br i1 %exitcond54.not, label %._crit_edge.us.us, label %bb.g, !llvm.loop !59

._crit_edge.us.us:                                ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv55
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.av) ; 0 uses
  %.0.copyload.us.us = load ptr, ptr %.03644.us.us, align 8
  tail call void @raxRecursiveShow(i32 noundef %i.am, i32 noundef %.0, ptr noundef %.0.copyload.us.us)
  %i.ax = getelementptr inbounds nuw i8, ptr %.03644.us.us, i64 8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge48, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us, %.lr.ph47.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph47.split.us.split ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03644.us = phi ptr [ %i.be, %.lr.ph47.split.us.split ], [ %i.al, %.lr.ph47.split.us ] ; 2 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.az = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ay), !inline_history !2 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !24
  %i.bc = zext i8 %i.bb to i32
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bc) ; 0 uses
  %.0.copyload.us = load ptr, ptr %.03644.us, align 8
  tail call void @raxRecursiveShow(i32 noundef %i.am, i32 noundef %.0, ptr noundef %.0.copyload.us)
  %i.be = getelementptr inbounds nuw i8, ptr %.03644.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count58
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47.split.us.split, !llvm.loop !60

._crit_edge48.loopexit:                           ; preds = %.lr.ph47
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %.0.copyload = load ptr, ptr %i.al, align 8
  br label %tailrecurse

._crit_edge48:                                    ; preds = %.lr.ph47.split.us.split, %._crit_edge.us.us, %bb.f
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define dso_local void @raxShow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @raxRecursiveShow(i32 noundef 0, i32 noundef 0, ptr noundef %i.a)
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.c = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.b), !inline_history !2 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @raxDebugShowNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr @raxDebugMsg, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4                ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = and i32 %i.c, 1
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.d, ptr noundef nonnull %i.e, i32 noundef %i.f, i32 noundef %i.d) ; 0 uses
  %i.h = load i32, ptr %1, align 4                ; 5 uses
  %i.i = and i32 %i.h, 4
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %i.j = lshr i32 %i.h, 3                         ; 3 uses
  %spec.select = select i1 %.not, i32 %i.j, i32 1 ; 3 uses
  %.not2932 = icmp eq i32 %spec.select, 0
  br i1 %.not2932, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = xor i32 %i.j, 3
  %.neg = add nuw nsw i32 %i.m, 1
  %i.n = and i32 %.neg, 7
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = shl nuw nsw i64 %i.k, 3
  %i.r = select i1 %.not, i64 %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = and i32 %i.h, 1
  %.not23 = icmp eq i32 %i.t, 0
  %i.u = shl i32 %i.h, 2
  %i.v = and i32 %i.u, 8
  %i.w = xor i32 %i.v, 8
  %narrow30 = select i1 %.not23, i32 0, i32 %i.w
  %i.x = zext nneg i32 %narrow30 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %i.z = and i32 %i.h, 3
  %.not31 = icmp eq i32 %i.z, 1
  %i.aa = select i1 %.not31, i64 -12, i64 -4
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  %narrow = sub nsw i32 1, %spec.select
  %i.ac = sext i32 %narrow to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.034 = phi i32 [ %i.ae, %.lr.ph ], [ %spec.select, %.lr.ph.preheader ]
  %.02133 = phi ptr [ %i.af, %.lr.ph ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ae = add nsw i32 %.034, -1                   ; 2 uses
  %.0.copyload = load ptr, ptr %.02133, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.02133, i64 8
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %.0.copyload) ; 0 uses
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.ai = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ah), !inline_history !2 ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !48
  %i.ak = tail call i32 @fflush(ptr noundef %i.aj) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @raxTouch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %accumulator.tr = phi i64 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %.0.copyload, %._crit_edge.loopexit ] ; 3 uses
  %i.a = load i32, ptr %.tr, align 4              ; 5 uses
  %i.b = and i32 %i.a, 3
  %or.cond = icmp eq i32 %i.b, 1
  br i1 %or.cond, label %bb.b, label %.raxGetData.exit_crit_edge

.raxGetData.exit_crit_edge:                       ; preds = %tailrecurse
  %.pre = and i32 %i.a, 4
  %.pre40 = lshr i32 %i.a, 3
  br label %raxGetData.exit

bb.b:                                             ; preds = %tailrecurse
  %i.c = lshr i32 %i.a, 3                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = xor i32 %i.c, 3
  %.neg.i = add nuw nsw i32 %i.e, 1
  %i.f = and i32 %.neg.i, 7
  %i.g = zext nneg i32 %i.f to i64
  %i.h = and i32 %i.a, 4                          ; 2 uses
  %.not11.i = icmp eq i32 %i.h, 0
  %i.i = shl nuw nsw i64 %i.d, 3
  %spec.select.i = select i1 %.not11.i, i64 %i.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i = load ptr, ptr %i.m, align 8
  %i.n = ptrtoint ptr %.0.copyload.i to i64
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %.raxGetData.exit_crit_edge, %bb.b
  %.pre-phi41 = phi i32 [ %.pre40, %.raxGetData.exit_crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre, %.raxGetData.exit_crit_edge ], [ %i.h, %bb.b ]
  %.024 = phi i64 [ 0, %.raxGetData.exit_crit_edge ], [ %i.n, %bb.b ] ; 3 uses
  %.not27 = icmp eq i32 %.pre-phi, 0
  %spec.select = select i1 %.not27, i32 %.pre-phi41, i32 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %raxGetData.exit
  %i.p = zext nneg i32 %.pre-phi41 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = xor i32 %.pre-phi41, 3
  %.neg = add nuw nsw i32 %i.r, 1
  %i.s = and i32 %.neg, 7
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t ; 2 uses
  %.not34 = icmp eq i32 %spec.select, 1
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02232.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %spec.select28.us, %bb.c ]
  %.02331.us = phi ptr [ %i.u, %.lr.ph.split.us.preheader ], [ %i.ae, %bb.c ] ; 2 uses
  %.12530.us = phi i64 [ %.024, %.lr.ph.split.us.preheader ], [ %i.ad, %bb.c ]
  %.0.copyload.us = load ptr, ptr %.02331.us, align 8 ; 2 uses
  %i.v = icmp eq ptr %.0.copyload.us, inttoptr (i64 106764128 to ptr)
  %i.w = zext i1 %i.v to i32
end_hunk_0
