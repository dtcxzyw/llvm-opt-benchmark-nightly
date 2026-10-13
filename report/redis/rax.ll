Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxRandomWalk:bb.a

bb.y:                                             ; preds = %bb.x, %raxStackPop.exit
  %.2 = phi ptr [ %i.ar, %raxStackPop.exit ], [ %.0.copyload, %bb.x ] ; 5 uses
  %i.ds = load i32, ptr %.2, align 4              ; 3 uses
  %i.dt = and i32 %i.ds, 1
  %sext = sub nsw i32 0, %i.dt
  %i.du = sext i32 %sext to i64
  %spec.select65 = add i64 %.151131, %i.du        ; 2 uses
  %.not = icmp ne i64 %spec.select65, 0
  %i.dv = and i32 %i.ds, 1
  %.not57 = icmp eq i32 %i.dv, 0
  %or.cond = or i1 %.not, %.not57
  br i1 %or.cond, label %.critedge, label %bb.z, !llvm.loop !58

bb.z:                                             ; preds = %bb.y
  store ptr %.2, ptr %i.s, align 8, !tbaa !46
  %i.dw = load i32, ptr %.2, align 4              ; 4 uses
  %i.dx = and i32 %i.dw, 2
  %.not.i78 = icmp eq i32 %i.dx, 0
  br i1 %.not.i78, label %bb.aa, label %raxGetData.exit

bb.aa:                                            ; preds = %bb.z
  %i.dy = lshr i32 %i.dw, 3                       ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = xor i32 %i.dy, 3
  %.neg.i = add nuw nsw i32 %i.ea, 1
  %i.eb = and i32 %.neg.i, 7
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = and i32 %i.dw, 4
  %.not11.i = icmp eq i32 %i.ed, 0
  %i.ee = shl nuw nsw i64 %i.dz, 3
  %spec.select.i80 = select i1 %.not11.i, i64 %i.ee, i64 8
  %i.ef = shl i32 %i.dw, 3
  %i.eg = and i32 %i.ef, 8
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.2, i64 %i.dz
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %spec.select.i80
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4
  %.0.copyload.i = load ptr, ptr %i.em, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.z, %bb.aa
  %.0.i79 = phi ptr [ %.0.copyload.i, %bb.aa ], [ null, %bb.z ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i79, ptr %i.en, align 8, !tbaa !44
  br label %.critedge67

.critedge67:                                      ; preds = %bb.v, %bb.s, %raxIteratorAddChars.exit74.thread, %raxIteratorAddChars.exit, %raxGetData.exit, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ 1, %raxGetData.exit ], [ 0, %raxIteratorAddChars.exit74.thread ], [ 0, %raxIteratorAddChars.exit ], [ 0, %bb.s ], [ 0, %bb.v ]
  ret i32 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @raxCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !24      ; 3 uses
  %i.b = icmp eq i8 %i.a, 61
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = icmp eq i8 %i.d, 61
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not40.not = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %.not44 = icmp eq i8 %i.a, 62                   ; 3 uses
  br i1 %.not44, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i8 %i.a, 60
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %.not = icmp eq i8 %i.h, 61
  br i1 %.not, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %or.cond = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.e ]
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

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.us
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
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
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
  %accumulator.tr = phi i64 [ 0, %bb.a ], [ %1, %._crit_edge.loopexit ] ; 2 uses
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
  %spec.select28.us = add nuw nsw i32 %.02232.us, %i.w ; 2 uses
  %i.x = icmp samesign ugt i32 %spec.select28.us, 1
  br i1 %i.x, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = add i64 %.12530.us, %i.aa
  %i.ac = tail call i64 @raxTouch(ptr noundef %.0.copyload.us)
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02331.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.0.copyload = load ptr, ptr %i.u, align 8
  %1 = add i64 %accumulator.tr, %.024
  br label %tailrecurse

._crit_edge:                                      ; preds = %bb.c, %raxGetData.exit
  %.125.lcssa = phi i64 [ %.024, %raxGetData.exit ], [ %i.ad, %bb.c ]
  %accumulator.ret.tr = add i64 %accumulator.tr, %.125.lcssa
  ret i64 %accumulator.ret.tr

.split.us:                                        ; preds = %.lr.ph.split.us
  tail call void @exit(i32 noundef 1) #30
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{null}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"ThinLTO", i32 0}
!10 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS7raxNode", !16, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!13, !13, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"any p2 pointer", !16, i64 0}
!27 = !{!"p2 _ZTS7raxNode", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"raxStack", !26, i64 0, !19, i64 8, !19, i64 16, !13, i64 24, !14, i64 280}
!32 = !{!31, !19, i64 8}
!33 = !{!31, !19, i64 16}
!34 = !{!31, !26, i64 0}
!35 = !{!31, !14, i64 280}
!36 = !{!"p1 _ZTS3rax", !16, i64 0}
!37 = !{!"p1 omnipotent char", !16, i64 0}
!38 = !{!"raxIterator", !14, i64 0, !36, i64 8, !37, i64 16, !16, i64 24, !19, i64 32, !19, i64 40, !13, i64 48, !21, i64 176, !31, i64 184, !16, i64 472, !16, i64 480}
!39 = !{!38, !14, i64 0}
!40 = !{!38, !36, i64 8}
!41 = !{!38, !19, i64 32}
!42 = !{!38, !37, i64 16}
!43 = !{!38, !19, i64 40}
!44 = !{!38, !16, i64 24}
!45 = !{!38, !19, i64 192}
!46 = !{!38, !21, i64 176}
!47 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!48 = !{!47, !47, i64 0}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = !{!38, !16, i64 472}
!55 = !{!38, !16, i64 480}
!56 = distinct !{!56, !25}
!57 = !{!38, !14, i64 464}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
end_hunk_0
