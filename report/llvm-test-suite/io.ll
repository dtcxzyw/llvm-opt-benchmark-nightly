inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@WriteGapFill:bb.a
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 60 ; 2 uses
  %i.ca = trunc nuw i64 %indvars.iv.next50 to i32
  %i.cb = icmp slt i32 %i.ca, %i.y
  br i1 %i.cb, label %.lr.ph39, label %._crit_edge40, !llvm.loop !80

._crit_edge40:                                    ; preds = %strncpy_caseC.exit, %.lr.ph43
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge44, label %.lr.ph43, !llvm.loop !81

._crit_edge44.critedge:                           ; preds = %bb.a
  store i8 0, ptr @WriteGapFill.gap, align 16, !tbaa !19
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #32 ; 0 uses
  %fputc.c = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge40, %._crit_edge44.critedge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @writeDataforgaln(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph18.preheader, label %._crit_edge19

.lr.ph18.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph18.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv21 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv21
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.h) #32 ; 0 uses
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph18 ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.l) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.n = trunc nuw i64 %indvars.iv.next to i32
  %i.o = icmp slt i32 %i.n, %i.e
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph18
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19, label %.lr.ph18, !llvm.loop !83

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @writeData_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph18.preheader, label %._crit_edge19

.lr.ph18.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph18.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv21 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv21
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.h) #32 ; 0 uses
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph18 ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.l) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.n = trunc nuw i64 %indvars.iv.next to i32
  %i.o = icmp slt i32 %i.n, %i.e
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph18
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19, label %.lr.ph18, !llvm.loop !85

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @writeData(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph18.preheader, label %._crit_edge19

.lr.ph18.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.lr.ph18.preheader ], [ %indvars.iv.next22, %._crit_edge ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv21 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #33
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.g) #32 ; 0 uses
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph18 ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.k) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.m = trunc nuw i64 %indvars.iv.next to i32
  %i.n = icmp slt i32 %i.m, %i.e
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph18
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge19, label %.lr.ph18, !llvm.loop !87

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @write1seq(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef nonnull %i.d) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.f = trunc nuw i64 %indvars.iv.next to i32
  %i.g = icmp slt i32 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2_floathalf_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not46 = icmp eq i32 %1, 1
  br i1 %.not46, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count39 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph28

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.026 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !19
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.026, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !89

.loopexit:                                        ; preds = %.lr.ph.i23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !90

.lr.ph28:                                         ; preds = %.loopexit, %.lr.ph30
  %indvars.iv36 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next37, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph30 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv36
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph28, %.lr.ph.i23
  %indvars.iv32 = phi i64 [ %indvars.iv, %.lr.ph28 ], [ %indvars.iv.next33, %.lr.ph.i23 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i22 = icmp eq i32 %i.y, 10
  br i1 %.not.i22, label %.lr.ph.i23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !19
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !19
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !19
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !19
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !19
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ap = sub nuw nsw i64 %indvars.iv32, %indvars.iv36
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store float %i.an, ptr %i.aq, align 4, !tbaa !60
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond35.not, label %.loopexit, label %bb.f, !llvm.loop !93

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2_floathalf(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not46 = icmp eq i32 %1, 1
  br i1 %.not46, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count39 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph28

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.026 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !19
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.026, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !94

.loopexit:                                        ; preds = %.lr.ph.i23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !95

.lr.ph28:                                         ; preds = %.loopexit, %.lr.ph30
  %indvars.iv36 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next37, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph30 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv36
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph28, %.lr.ph.i23
  %indvars.iv32 = phi i64 [ %indvars.iv, %.lr.ph28 ], [ %indvars.iv.next33, %.lr.ph.i23 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i22 = icmp eq i32 %i.y, 10
  br i1 %.not.i22, label %.lr.ph.i23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !19
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !19
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !19
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !19
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !19
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ap = sub nuw nsw i64 %indvars.iv32, %indvars.iv36
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store float %i.an, ptr %i.aq, align 4, !tbaa !60
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond35.not, label %.loopexit, label %bb.f, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2_float(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not45 = icmp eq i32 %1, 1
  br i1 %.not45, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count38 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph27

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.025 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !19
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.025, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !97

.loopexit:                                        ; preds = %.lr.ph.i22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph27, !llvm.loop !98

.lr.ph27:                                         ; preds = %.loopexit, %.lr.ph29
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %.lr.ph.i22
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph27 ], [ %indvars.iv.next32, %.lr.ph.i22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 10
  br i1 %.not.i21, label %.lr.ph.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !19
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !19
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !19
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !19
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !19
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv31
  store float %i.an, ptr %i.ap, align 4, !tbaa !60
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %.loopexit, label %bb.f, !llvm.loop !99

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2_int(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not45 = icmp eq i32 %1, 1
  br i1 %.not45, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count38 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph27

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.025 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !19
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.025, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph.i22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph27, !llvm.loop !101

.lr.ph27:                                         ; preds = %.loopexit, %.lr.ph29
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %.lr.ph.i22
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph27 ], [ %indvars.iv.next32, %.lr.ph.i22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 10
  br i1 %.not.i21, label %.lr.ph.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !19
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !19
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !19
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !19
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !19
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = fpext float %i.an to double
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double 1.000000e+06, double 5.000000e-01)
  %i.aq = fptosi double %i.ap to i32
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv31
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %.loopexit, label %bb.f, !llvm.loop !102

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !19
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not45 = icmp eq i32 %1, 1
  br i1 %.not45, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count38 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph27

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.025 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !19
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.025, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph.i22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph27, !llvm.loop !104

.lr.ph27:                                         ; preds = %.loopexit, %.lr.ph29
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %.lr.ph.i22
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph27 ], [ %indvars.iv.next32, %.lr.ph.i22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 10
  br i1 %.not.i21, label %.lr.ph.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !19
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !19
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !19
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !19
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !19
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !19
  store i8 0, ptr %i.k, align 1, !tbaa !19
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = fpext float %i.an to double
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv31
  store double %i.ao, ptr %i.aq, align 8, !tbaa !107
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %.loopexit, label %bb.f, !llvm.loop !108

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteFloatHat2_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader51.preheader, label %._crit_edge56

.preheader51.preheader:                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = zext nneg i32 %1 to i64
  %wide.trip.count72 = zext nneg i32 %i.b to i64
  %invariant.op = add nsw i64 %i.c, -1
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %._crit_edge
  %indvars.iv69 = phi i64 [ 0, %.preheader51.preheader ], [ %indvars.iv.next70, %._crit_edge ] ; 3 uses
  %indvars.iv67 = phi i32 [ %1, %.preheader51.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 3 uses
  %.055 = phi double [ 0.000000e+00, %.preheader51.preheader ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.d = zext i32 %indvars.iv67 to i64
  %i.e = add nsw i64 %i.d, -1                     ; 3 uses
  %i.f = icmp slt i64 %indvars.iv69, %invariant.op
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader51
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.i = icmp eq i32 %indvars.iv67, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.153 = phi double [ %.055, %.lr.ph.new ], [ %.2.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !60
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = fcmp olt double %.153, %i.l
  %.2 = select i1 %i.m, double %i.l, double %.153 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !60
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = fcmp olt double %.2, %i.q
  %.2.1 = select i1 %i.r, double %i.q, double %.2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !109

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.153.epil.init = phi double [ %.055, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil.init
  %i.t = load float, ptr %i.s, align 4, !tbaa !60
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = fcmp olt double %.153.epil.init, %i.u
  %.2.epil = select i1 %i.v, double %i.u, double %.153.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader51
  %.1.lcssa = phi double [ %.055, %.preheader51 ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next68 = add i32 %indvars.iv67, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge56.loopexit, label %.preheader51, !llvm.loop !110

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %i.w = fmul double %.1.lcssa, 2.500000e+00
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge56.loopexit ]
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph60.preheader, label %._crit_edge65

.lr.ph60.preheader:                               ; preds = %._crit_edge56
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader.preheader:                             ; preds = %.lr.ph60
  %i.ab = zext nneg i32 %1 to i64
  %wide.trip.count89 = zext nneg i32 %1 to i64
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv74 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next75, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ae, ptr noundef %i.ad) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !111

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge63
  %indvars.iv86 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next87, %._crit_edge63 ] ; 3 uses
  %indvars.iv82 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next83, %._crit_edge63 ] ; 2 uses
  %i.ag = sub nsw i64 %i.ab, %indvars.iv86        ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.aj = add nuw i64 %i.ag, 4294967295
  %i.ak = and i64 %i.aj, 4294967295
  %wide.trip.count84 = zext i32 %indvars.iv82 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv79 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv79
  %i.an = load float, ptr %i.am, align 4, !tbaa !60
  %i.ao = fpext float %i.an to double
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.ao) #32 ; 0 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.ar = urem i32 %i.aq, 12
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp eq i64 %indvars.iv79, %i.ak
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge63, label %bb.c, !llvm.loop !112

._crit_edge63:                                    ; preds = %bb.e, %.preheader
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge65, label %.preheader, !llvm.loop !113

._crit_edge65:                                    ; preds = %._crit_edge63, %._crit_edge56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteFloatHat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader51.preheader, label %._crit_edge56

.preheader51.preheader:                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %i.c = zext nneg i32 %1 to i64
  %wide.trip.count72 = zext nneg i32 %i.b to i64
  %invariant.op = add nsw i64 %i.c, -1
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %._crit_edge
  %indvars.iv69 = phi i64 [ 0, %.preheader51.preheader ], [ %indvars.iv.next70, %._crit_edge ] ; 3 uses
  %indvars.iv67 = phi i32 [ %1, %.preheader51.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 3 uses
  %.055 = phi double [ 0.000000e+00, %.preheader51.preheader ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.d = zext i32 %indvars.iv67 to i64
  %i.e = add nsw i64 %i.d, -1                     ; 3 uses
  %i.f = icmp slt i64 %indvars.iv69, %invariant.op
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader51
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.i = icmp eq i32 %indvars.iv67, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.153 = phi double [ %.055, %.lr.ph.new ], [ %.2.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !60
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = fcmp olt double %.153, %i.l
  %.2 = select i1 %i.m, double %i.l, double %.153 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !60
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = fcmp olt double %.2, %i.q
  %.2.1 = select i1 %i.r, double %i.q, double %.2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !114

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.153.epil.init = phi double [ %.055, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil.init
  %i.t = load float, ptr %i.s, align 4, !tbaa !60
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = fcmp olt double %.153.epil.init, %i.u
  %.2.epil = select i1 %i.v, double %i.u, double %.153.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader51
  %.1.lcssa = phi double [ %.055, %.preheader51 ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next68 = add i32 %indvars.iv67, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge56.loopexit, label %.preheader51, !llvm.loop !115

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %i.w = fmul double %.1.lcssa, 2.500000e+00
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge56.loopexit ]
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph60.preheader, label %._crit_edge65

.lr.ph60.preheader:                               ; preds = %._crit_edge56
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader.preheader:                             ; preds = %.lr.ph60
  %i.ab = zext nneg i32 %1 to i64
  %wide.trip.count89 = zext nneg i32 %1 to i64
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv74 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next75, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv74
  %i.ad = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ad, ptr noundef %i.ac) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !116

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge63
  %indvars.iv86 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next87, %._crit_edge63 ] ; 3 uses
  %indvars.iv82 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next83, %._crit_edge63 ] ; 2 uses
  %i.af = sub nsw i64 %i.ab, %indvars.iv86        ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.ai = add nuw i64 %i.af, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %wide.trip.count84 = zext i32 %indvars.iv82 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv79 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv79
  %i.am = load float, ptr %i.al, align 4, !tbaa !60
  %i.an = fpext float %i.am to double
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.an) #32 ; 0 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.aq = urem i32 %i.ap, 12
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp eq i64 %indvars.iv79, %i.aj
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge63, label %bb.c, !llvm.loop !117

._crit_edge63:                                    ; preds = %bb.e, %.preheader
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge65, label %.preheader, !llvm.loop !118

._crit_edge65:                                    ; preds = %._crit_edge63, %._crit_edge56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2_int(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = icmp sgt i32 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %bb.a
  %wide.trip.count73 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit50:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.2.lcssa = phi double [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.1, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

.lr.ph:                                           ; preds = %.loopexit50, %.lr.ph55.preheader
  %indvars.iv70 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next71, %.loopexit50 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph55.preheader ], [ %indvars.iv.next, %.loopexit50 ] ; 4 uses
  %.054 = phi double [ 0.000000e+00, %.lr.ph55.preheader ], [ %.2.lcssa, %.loopexit50 ] ; 3 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = sub nsw i64 %indvars.iv70, %wide.trip.count
  %i.g = and i64 %i.f, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = sitofp i32 %i.i to double                ; 2 uses
  %i.k = fcmp olt double %.054, %i.j
  %.2.prol = select i1 %i.k, double %i.j, double %.054 ; 2 uses
  %indvars.iv.next68.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.2.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv67.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next68.prol, %.prol.loopexit.unr-lcssa ]
  %.152.unr = phi double [ %.054, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.c, %indvars.iv70
  br i1 %i.l, label %.loopexit50, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph.new ], [ %indvars.iv67.unr, %.prol.loopexit ] ; 3 uses
  %.152 = phi double [ %.2.1, %.lr.ph.new ], [ %.152.unr, %.prol.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sitofp i32 %i.n to double                ; 2 uses
  %i.p = fcmp olt double %.152, %i.o
  %.2 = select i1 %i.p, double %i.o, double %.152 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sitofp i32 %i.s to double                ; 2 uses
  %i.u = fcmp olt double %.2, %i.t
  %.2.1 = select i1 %i.u, double %i.t, double %.2 ; 2 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph.new, !llvm.loop !120

._crit_edge:                                      ; preds = %.loopexit50, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.2.lcssa, %.loopexit50 ]
  %i.v = fdiv double %.0.lcssa, 1.000000e+06
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.y = fmul double %i.v, 2.500000e+00
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %i.y) #32 ; 0 uses
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph60.preheader, label %._crit_edge66

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %wide.trip.count78 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader:                                       ; preds = %.lr.ph60
  br i1 %i.b, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.ab = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count85 = zext nneg i32 %1 to i64
  br label %.lr.ph63

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv75 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next76, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv75
  %i.ad = trunc nuw nsw i64 %indvars.iv.next76 to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ad, ptr noundef %i.ac) #32 ; 0 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader, label %.lr.ph60, !llvm.loop !121

.loopexit:                                        ; preds = %bb.d
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %i.ab
  br i1 %exitcond91.not, label %._crit_edge66, label %.lr.ph63, !llvm.loop !122

.lr.ph63:                                         ; preds = %.loopexit, %.lr.ph65.preheader
  %indvars.iv87 = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next88, %.loopexit ] ; 3 uses
  %indvars.iv80 = phi i64 [ 1, %.lr.ph65.preheader ], [ %indvars.iv.next81, %.loopexit ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv87
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph63, %bb.d
  %indvars.iv82 = phi i64 [ %indvars.iv80, %.lr.ph63 ], [ %indvars.iv.next83, %bb.d ] ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv82
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fpext float %i.aj to double
  %i.al = fdiv double %i.ak, 1.000000e+06
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.al) #32 ; 0 uses
  %i.an = sub nuw nsw i64 %indvars.iv82, %indvars.iv87
  %i.ao = trunc nsw i64 %i.an to i32
  %i.ap = srem i32 %i.ao, 12
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = icmp eq i64 %indvars.iv82, %i.ab
  %or.cond = or i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %bb.b, !llvm.loop !123

._crit_edge66:                                    ; preds = %.loopexit, %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = icmp sgt i32 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %bb.a
  %wide.trip.count72 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit49:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.2.lcssa = phi double [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.3, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !124

.lr.ph:                                           ; preds = %.loopexit49, %.lr.ph54.preheader
  %indvars.iv69 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next70, %.loopexit49 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph54.preheader ], [ %indvars.iv.next, %.loopexit49 ] ; 3 uses
  %.053 = phi double [ 0.000000e+00, %.lr.ph54.preheader ], [ %.2.lcssa, %.loopexit49 ] ; 2 uses
  %i.d = xor i64 %indvars.iv69, -1
  %i.e = add nsw i64 %i.d, %wide.trip.count
  %i.f = sub i64 %i.c, %indvars.iv69
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv66.prol = phi i64 [ %indvars.iv.next67.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph ] ; 2 uses
  %.151.prol = phi double [ %.2.prol, %.prol.preheader ], [ %.053, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66.prol
  %i.j = load double, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.k = fcmp ogt double %i.j, %.151.prol
  %.2.prol = select i1 %i.k, double %i.j, double %.151.prol ; 3 uses
  %indvars.iv.next67.prol = add nuw nsw i64 %indvars.iv66.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !125

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.2.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.2.prol, %.prol.preheader ]
  %indvars.iv66.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next67.prol, %.prol.preheader ]
  %.151.unr = phi double [ %.053, %.lr.ph ], [ %.2.prol, %.prol.preheader ]
  %i.l = icmp ult i64 %i.f, 3
  br i1 %i.l, label %.loopexit49, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.3, %.lr.ph.new ], [ %indvars.iv66.unr, %.prol.loopexit ] ; 5 uses
  %.151 = phi double [ %.2.3, %.lr.ph.new ], [ %.151.unr, %.prol.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.n = load double, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %i.o = fcmp ogt double %i.n, %.151
  %.2 = select i1 %i.o, double %i.n, double %.151 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !107 ; 2 uses
  %i.s = fcmp ogt double %i.r, %.2
  %.2.1 = select i1 %i.s, double %i.r, double %.2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !107 ; 2 uses
  %i.w = fcmp ogt double %i.v, %.2.1
  %.2.2 = select i1 %i.w, double %i.v, double %.2.1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv66
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !107 ; 2 uses
  %i.aa = fcmp ogt double %i.z, %.2.2
  %.2.3 = select i1 %i.aa, double %i.z, double %.2.2 ; 2 uses
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next67.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit49, label %.lr.ph.new, !llvm.loop !126

._crit_edge.loopexit:                             ; preds = %.loopexit49
  %i.ab = fmul double %.2.lcssa, 2.500000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %.lr.ph59.preheader, label %._crit_edge65

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph59

.preheader:                                       ; preds = %.lr.ph59
  br i1 %i.b, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %.preheader
  %i.ag = zext nneg i32 %i.a to i64               ; 2 uses
  %wide.trip.count84 = zext nneg i32 %1 to i64
  br label %.lr.ph62

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %indvars.iv74 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next75, %.lr.ph59 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv74
  %i.ai = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ai, ptr noundef %i.ah) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader, label %.lr.ph59, !llvm.loop !127

.loopexit:                                        ; preds = %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %i.ag
  br i1 %exitcond90.not, label %._crit_edge65, label %.lr.ph62, !llvm.loop !128

.lr.ph62:                                         ; preds = %.loopexit, %.lr.ph64.preheader
  %indvars.iv86 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next87, %.loopexit ] ; 3 uses
  %indvars.iv79 = phi i64 [ 1, %.lr.ph64.preheader ], [ %indvars.iv.next80, %.loopexit ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %bb.d
  %indvars.iv81 = phi i64 [ %indvars.iv79, %.lr.ph62 ], [ %indvars.iv.next82, %bb.d ] ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv81
  %i.an = load double, ptr %i.am, align 8, !tbaa !107
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.an) #32 ; 0 uses
  %i.ap = sub nuw nsw i64 %indvars.iv81, %indvars.iv86
  %i.aq = trunc nsw i64 %i.ap to i32
  %i.ar = srem i32 %i.aq, 12
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp eq i64 %indvars.iv81, %i.ag
  %or.cond = or i1 %i.at, %i.as
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %bb.b, !llvm.loop !129

._crit_edge65:                                    ; preds = %.loopexit, %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2plain(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count22 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph15.preheader
  %indvars.iv19 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next20, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph15.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv19
  %i.d = trunc nuw nsw i64 %indvars.iv.next20 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next17, %bb.b ] ; 2 uses
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv16
  %i.g = load double, ptr %i.f, align 8, !tbaa !107
  %i.h = trunc nuw i64 %indvars.iv.next17 to i32
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.d, i32 noundef %i.h, double noundef %i.g) #32 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadFasta_sub(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca [50000 x i32], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.030 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 3 uses
  %.02229 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.e = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 4412750543122677035, %i.f
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = xor i64 725433661, %i.j
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.p = trunc i64 %i.o to i32
  %i.q = sext i32 %.030 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !4
  %i.s = add nsw i32 %.030, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.030, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = add nuw nsw i32 %.02229, 1
  %i.u = icmp samesign ult i32 %.02229, 9999999
  %i.v = icmp slt i32 %.1, %2
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.b, label %.lr.ph35.preheader, !llvm.loop !132

.lr.ph35.preheader:                               ; preds = %bb.d
  %i.x = zext nneg i32 %2 to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.y, i1 false), !tbaa !107
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %bb.g
  %.234 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph35.preheader ] ; 3 uses
  %.22433 = phi i32 [ %i.ak, %bb.g ], [ 0, %.lr.ph35.preheader ] ; 2 uses
  %i.z = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0)
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph35
  %i.aa = sext i32 %.234 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [256 x i8], ptr %3, i64 %i.ad
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 20) #33
  %.not26 = icmp eq i32 %i.af, 0
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.ah = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !52
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  store double %i.ah, ptr %i.ai, align 8, !tbaa !107
  %i.aj = add nsw i32 %.234, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.3 = phi i32 [ %.234, %bb.e ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = add nuw nsw i32 %.22433, 1
  %i.al = icmp samesign ult i32 %.22433, 99999
  %i.am = icmp slt i32 %.3, %2
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph35, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.g, %.lr.ph35, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadSsearch(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 75
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.g = load i64, ptr %i.a, align 16
  %i.h = xor i64 4412750543122677035, %i.g
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = xor i64 725433661, %i.k
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #32, !inline_history !53
  %i.q = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.b) #32 ; 0 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !4
  %i.s = sitofp i32 %i.r to double
  %sext = shl i64 %i.p, 32
  %i.t = ashr exact i64 %sext, 29
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  store double %i.s, ptr %i.u, align 8, !tbaa !107
  %i.v = add nsw i32 %.010, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = add nuw nsw i32 %.089, 1
  %i.x = icmp samesign ult i32 %.089, 9999999
  %i.y = icmp slt i32 %.1, %2
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ReadBlastm7_avscore(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = sext i32 %2 to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #29 ; 3 uses
  %i.d = tail call i32 @feof(ptr noundef %0) #32
  %.not94 = icmp eq i32 %i.d, 0
  br i1 %.not94, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  br label %.preheader

end_hunk_0
