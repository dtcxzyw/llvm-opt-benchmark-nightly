inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@outlocalhom:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.s = load double, ptr %i.r, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !25
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.77, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, double noundef %i.s, double noundef %i.u) #28 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !225

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count27
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !227

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @outlocalhompt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge22.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count27 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next25, %._crit_edge ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv24
  %i.d = trunc nuw nsw i64 %indvars.iv24 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !209
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.76, i32 noundef %i.d, i32 noundef %i.i) #28 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.ab, %bb.c ] ; 8 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.u = load double, ptr %i.t, align 8, !tbaa !224
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.y = load double, ptr %i.x, align 8, !tbaa !231
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.78, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, double noundef %i.u, double noundef %i.w, double noundef %i.y) #28 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !232

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !234

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FreeLocalHomTable(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.79, i64 17, i64 1, ptr %i.a) ; 0 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.preheader.us.preheader, label %._crit_edge30

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count35 = zext nneg i32 %1 to i64    ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge28.us
  %indvars.iv32 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next33, %._crit_edge28.us ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  %.not24.us = icmp eq ptr %i.e, null
  br i1 %.not24.us, label %._crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.d
  %.025.us = phi ptr [ %i.h, %bb.d ], [ %i.f, %.lr.ph.us.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.025.us, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !209
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %indvars.iv
  %.not23.us = icmp eq ptr %.025.us, %i.j
  br i1 %.not23.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  tail call void @free(ptr noundef nonnull %.025.us) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.us
  %.not.us = icmp eq ptr %i.h, null
  br i1 %.not.us, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !235

._crit_edge.us:                                   ; preds = %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count35
  br i1 %exitcond.not, label %._crit_edge28.us, label %bb.b, !llvm.loop !236

._crit_edge28.us:                                 ; preds = %._crit_edge.us
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !209
  tail call void @free(ptr noundef %i.k) #32
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !237

._crit_edge30:                                    ; preds = %._crit_edge28.us, %bb.a
  tail call void @free(ptr noundef %0) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @progName(ptr nofree noundef readonly %0) local_unnamed_addr #23 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.0 = select i1 %.not, ptr %0, ptr %i.b
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @clustalout_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #32 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef nonnull %6, ptr noundef nonnull @.str.81) #32 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.d
  %i.e = icmp sgt i32 %1, 0
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph32.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph32
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %12
  %indvars.iv44 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next45, %12 ] ; 3 uses
  %fputc.us = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %extractfirstword.exit.us
  %indvars.iv41 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next42, %extractfirstword.exit.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv41 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %4, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 6 uses
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 9) #33 ; 2 uses
  %.not2.i.i.us = icmp eq ptr %i.l, null
  br i1 %.not2.i.i.us, label %tabtospace.exit.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.e, %.lr.ph.i.i.us
  %i.m = phi ptr [ %i.n, %.lr.ph.i.i.us ], [ %i.l, %bb.e ]
  store i8 32, ptr %i.m, align 1, !tbaa !19
  %i.n = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 9) #33 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.n, null
  br i1 %.not.i.i.us, label %tabtospace.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !238

tabtospace.exit.i.us:                             ; preds = %.lr.ph.i.i.us, %bb.e
  %i.o = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %.not17.i.us = icmp eq i8 %i.o, 0
  br i1 %.not17.i.us, label %extractfirstword.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %tabtospace.exit.i.us, %bb.i
  %i.p = phi i8 [ %.pr.i.us, %bb.i ], [ %i.o, %tabtospace.exit.i.us ]
  %.019.i.us = phi ptr [ %.1.ph.i.us, %bb.i ], [ %i.k, %tabtospace.exit.i.us ] ; 4 uses
  %.01318.i.us = phi ptr [ %.114.ph.i.us, %bb.i ], [ %i.k, %tabtospace.exit.i.us ] ; 3 uses
  %i.q = icmp eq ptr %.019.i.us, %.01318.i.us
  %i.r = icmp eq i8 %i.p, 32                      ; 2 uses
  %or.cond.i.us = and i1 %i.r, %i.q
  br i1 %or.cond.i.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.us
  br i1 %i.r, label %.thread.i.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.01318.i.us, i64 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.us, i64 1 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.114.ph.i.us = phi ptr [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.1.ph.i.us = phi ptr [ %.019.i.us, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.pr.i.us = load i8, ptr %.114.ph.i.us, align 1, !tbaa !19 ; 2 uses
  %.not.i.us = icmp eq i8 %.pr.i.us, 0
  br i1 %.not.i.us, label %extractfirstword.exit.us, label %.lr.ph.i.us, !llvm.loop !239

.thread.i.us:                                     ; preds = %bb.f
  store i8 0, ptr %.01318.i.us, align 1, !tbaa !19
  br label %extractfirstword.exit.us

extractfirstword.exit.us:                         ; preds = %bb.i, %.thread.i.us, %tabtospace.exit.i.us
  %.0.lcssa.i.us = phi ptr [ %i.k, %tabtospace.exit.i.us ], [ %.019.i.us, %.thread.i.us ], [ %.1.ph.i.us, %bb.i ]
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %.0.lcssa.i.us) #32 ; 0 uses
  %i.v = load i32, ptr %i.f, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %3, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv44
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %i.z) #32 ; 0 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e, !llvm.loop !240

8:                                                ; preds = %._crit_edge.us
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85) #32 ; 0 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv44
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef nonnull %10) #32 ; 0 uses
  br label %12

12:                                               ; preds = %8, %._crit_edge.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 60 ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next45 to i32
  %14 = icmp sgt i32 %2, %13
  br i1 %14, label %.lr.ph.us, label %._crit_edge33, !llvm.loop !241

._crit_edge.us:                                   ; preds = %extractfirstword.exit.us
  br i1 %.not, label %12, label %8

.lr.ph32.split:                                   ; preds = %.lr.ph32
  br i1 %.not, label %.lr.ph32.split.split.us, label %.lr.ph32.split.split

.lr.ph32.split.split.us:                          ; preds = %.lr.ph32.split, %.lr.ph32.split.split.us
  %.02430.us34 = phi i32 [ %i.ab, %.lr.ph32.split.split.us ], [ 0, %.lr.ph32.split ]
  %fputc.us35 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ab = add nuw nsw i32 %.02430.us34, 60        ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %2
  br i1 %i.ac, label %.lr.ph32.split.split.us, label %._crit_edge33, !llvm.loop !241

.lr.ph32.split.split:                             ; preds = %.lr.ph32.split, %.lr.ph32.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph32.split.split ], [ 0, %.lr.ph32.split ] ; 2 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85) #32 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.ae) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.next to i32
  %i.ah = icmp sgt i32 %2, %i.ag
  br i1 %i.ah, label %.lr.ph32.split.split, label %._crit_edge33, !llvm.loop !241

._crit_edge33:                                    ; preds = %.lr.ph32.split.split, %.lr.ph32.split.split.us, %12, %bb.d
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @writeData_reorder_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph20.preheader, label %._crit_edge21

.lr.ph20.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph20.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv23
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %4, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #33
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.k) #32 ; 0 uses
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph20 ] ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.o) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.q = trunc nuw i64 %indvars.iv.next to i32
  %i.r = icmp slt i32 %i.q, %i.h
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !242

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph20
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge21, label %.lr.ph20, !llvm.loop !243

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @writeData_reorder(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph20.preheader, label %._crit_edge21

.lr.ph20.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph20

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph20.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv23
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %4, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #33
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds [256 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.j) #32 ; 0 uses
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph20 ] ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.n) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.p = trunc nuw i64 %indvars.iv.next to i32
  %i.q = icmp slt i32 %i.p, %i.h
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph20
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge21, label %.lr.ph20, !llvm.loop !245

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @loadaamtx() local_unnamed_addr #14 {
bb.a:
  %i.a = tail call ptr @AllocateDoubleMtx(i32 noundef 21, i32 noundef 20) #32 ; 4 uses
  %i.b = tail call ptr @AllocateDoubleVec(i32 noundef 420) #32 ; 22 uses
  %i.c = tail call ptr @AllocateIntVec(i32 noundef 20) #32 ; 24 uses
  %i.d = load i32, ptr @dorp, align 4, !tbaa !4
  %.not = icmp eq i32 %i.d, 112
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.88, i64 45, i64 1, ptr %i.e) #34 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @fopen(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.67) ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.89, i64 28, i64 1, ptr %i.i) #34 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias dereferenceable_or_null(1000) ptr @calloc(i64 noundef 1000, i64 noundef 1) #29 ; 29 uses
  %i.l = tail call noalias dereferenceable_or_null(1000) ptr @calloc(i64 noundef 1000, i64 noundef 1) #29 ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.m = tail call i32 @feof(ptr noundef nonnull %i.g) #32
  %.not140 = icmp eq i32 %i.m, 0
  br i1 %.not140, label %bb.g, label %._crit_edge237

._crit_edge237:                                   ; preds = %bb.f
  %.pre = load i8, ptr %i.k, align 1, !tbaa !19
  br label %split

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @fgets(ptr noundef %i.k, i32 noundef 999, ptr noundef nonnull %i.g) ; 0 uses
  %i.o = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %.not141 = icmp eq i8 %i.o, 35
  br i1 %.not141, label %bb.f, label %split, !llvm.loop !246

split:                                            ; preds = %bb.g, %._crit_edge237
  %i.p = phi i8 [ %.pre, %._crit_edge237 ], [ %i.o, %bb.g ] ; 2 uses
  %.not142177 = icmp eq i8 %i.p, 0
  br i1 %.not142177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %split
  %i.q = tail call ptr @__ctype_b_loc() #31
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.r = phi i8 [ %i.p, %.lr.ph ], [ %i.ae, %bb.j ]
  %.0123179 = phi ptr [ %i.k, %.lr.ph ], [ %i.ad, %bb.j ]
  %.0124178 = phi ptr [ %i.k, %.lr.ph ], [ %.1125, %bb.j ] ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.t = sext i8 %i.r to i64                      ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !57
  %i.w = and i16 %i.v, 1024
  %.not154 = icmp eq i16 %i.w, 0
  br i1 %.not154, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @__ctype_toupper_loc() #31
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.t
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %.0124178, align 1, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.0124178, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1125 = phi ptr [ %i.ac, %bb.i ], [ %.0124178, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0123179, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19  ; 2 uses
  %.not142 = icmp eq i8 %i.ae, 0
  br i1 %.not142, label %._crit_edge, label %bb.h, !llvm.loop !247

._crit_edge:                                      ; preds = %bb.j, %split
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i8 0, ptr %i.af, align 1, !tbaa !19
  %i.ag = ptrtoint ptr %i.k to i64                ; 20 uses
  %i.ah = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 65) #33 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %._crit_edge
  %.lcssa193 = phi i32 [ 65, %._crit_edge ], [ 82, %bb.l ], [ 78, %bb.m ], [ 68, %bb.n ], [ 67, %bb.o ], [ 81, %bb.p ], [ 69, %bb.q ], [ 71, %bb.r ], [ 72, %bb.s ], [ 73, %bb.t ], [ 76, %bb.u ], [ 75, %bb.v ], [ 77, %bb.w ], [ 70, %bb.x ], [ 80, %bb.y ], [ 83, %bb.z ], [ 84, %bb.aa ], [ 87, %bb.ab ], [ 89, %bb.ac ], [ 86, %bb.ad ]
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.90, i32 noundef %.lcssa193) #28 ; 0 uses
  tail call fastcc void @showaamtxexample()
  unreachable

bb.l:                                             ; preds = %._crit_edge
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.al, %i.ag
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.c, align 4, !tbaa !4
  %i.ao = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 82) #33 ; 2 uses
end_hunk_0
