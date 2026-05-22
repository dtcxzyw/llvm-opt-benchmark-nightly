inline.NumInlined: 109
inline.NumDeleted: 5
begin_hunk_0_@ReadFasta:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadOpt(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %i.h = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef %0) ; 0 uses
  %i.i = load i64, ptr %i.a, align 16
  %i.j = xor i64 4412750543122677035, %i.i
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = xor i64 725433661, %i.m
  %i.o = or i64 %i.j, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #33, !inline_history !53
  %i.s = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #33 ; 0 uses
  %i.t = load i32, ptr %i.b, align 4, !tbaa !4
  %sext = shl i64 %i.r, 32
  %i.u = ashr exact i64 %sext, 30
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !4
  %i.w = add nsw i32 %.010, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = add nuw nsw i32 %.089, 1
  %i.y = icmp samesign ult i32 %.089, 9999999
  %i.z = icmp slt i32 %.1, %2
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @ReadOpt2(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.010 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
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
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #33, !inline_history !53
  %i.p = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #33, !inline_history !53
  %i.q = trunc i64 %i.p to i32
  %sext = shl i64 %i.o, 32
  %i.r = ashr exact i64 %sext, 30
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4, !tbaa !4
  %i.t = add nsw i32 %.010, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = add nuw nsw i32 %.089, 1
  %i.v = icmp samesign ult i32 %.089, 9999999
  %i.w = icmp slt i32 %.1, %2
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @writePre(i32 noundef %0, ptr noundef %1, ptr noundef readnone captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %writeData.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @prep_g, align 8, !tbaa !17
  tail call void @rewind(ptr noundef %i.a)
  %i.b = load ptr, ptr @prep_g, align 8, !tbaa !17 ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph18.preheader.i, label %writeData.exit

.lr.ph18.preheader.i:                             ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %._crit_edge.i, %.lr.ph18.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %indvars.iv.next22.i, %._crit_edge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv21.i ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #34
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv21.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.i) #33 ; 0 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph18.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph18.i ] ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.m) #33 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 60 ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.next.i to i32
  %i.p = icmp slt i32 %i.o, %i.g
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph18.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %writeData.exit, label %.lr.ph18.i, !llvm.loop !87

writeData.exit:                                   ; preds = %._crit_edge.i, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readOtherOptions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = load i32, ptr @calledByXced, align 4, !tbaa !4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ErrorExit(ptr noundef nonnull @.str.68)
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 255, ptr noundef nonnull %i.c) ; 0 uses
  %i.e = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.65, ptr noundef %0, ptr noundef %1, ptr noundef %2) #33 ; 0 uses
  %i.f = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !4
  store i32 80, ptr %1, align 4, !tbaa !4
  %i.g = load i32, ptr @dorp, align 4, !tbaa !4
  %i.h = icmp eq i32 %i.g, 100
  %. = select i1 %i.h, i32 100, i32 20
  store i32 %., ptr %2, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @initSignalSM() local_unnamed_addr #22 {
bb.a:
  %i.a = load i32, ptr @ppid, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @signalSM, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initFiles() local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load i32, ptr @ppid, align 4, !tbaa !4   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %i.b) #33 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 6648432, ptr %i.a, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.70) ; 2 uses
  store ptr %i.d, ptr @prep_g, align 8, !tbaa !17
  %.not1 = icmp eq ptr %i.d, null
  br i1 %.not1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ErrorExit(ptr noundef nonnull @.str.71)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = tail call noalias ptr @fopen(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) ; 3 uses
  store ptr %i.e, ptr @trap_g, align 8, !tbaa !17
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ErrorExit(ptr noundef nonnull @.str.73)
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = tail call i32 @getpid() #33
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.74, i32 noundef %i.f) #33 ; 0 uses
  %i.h = load ptr, ptr @trap_g, align 8, !tbaa !17
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteForFasta(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph19.preheader, label %._crit_edge20

.lr.ph19.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.lr.ph19.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv22 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #34
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv22
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %i.f) #33 ; 0 uses
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph19 ] ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.k = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @WriteForFasta.b, ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 60) #33 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @WriteForFasta.b, i64 60), align 4, !tbaa !19
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @WriteForFasta.b) #33 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.m = trunc nuw i64 %indvars.iv.next to i32
  %i.n = icmp slt i32 %i.m, %i.e
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph19
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge20, label %.lr.ph19, !llvm.loop !208

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @readlocalhomtable2(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  %i.i = tail call ptr @fgets(ptr noundef nonnull @readlocalhomtable2.buff, i32 noundef 255, ptr noundef %0)
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @readlocalhomtable2.buff, ptr noundef nonnull @.str.75, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #33 ; 0 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.o = load i32, ptr %i.c, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [80 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = icmp sgt i32 %i.r, 0
  %i.u = load i32, ptr %i.b, align 4, !tbaa !4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !209
  %i.y = load i32, ptr %i.c, align 4, !tbaa !4
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds [80 x i8], ptr %i.x, i64 %i.z ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !210
  %i.ad = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  store i32 -1, ptr %i.af, align 4, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !8
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !209
  %i.ai = getelementptr inbounds [80 x i8], ptr %i.ah, i64 %i.z
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi ptr [ %i.ad, %bb.b ], [ %i.aa, %.lr.ph ] ; 6 uses
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %.031, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = load i32, ptr %i.g, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %.031, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.031, i64 28
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !22
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.031, i64 36
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !23
  %i.as = load double, ptr %i.a, align 8, !tbaa !107
  %i.at = fadd double %i.as, 0.000000e+00
  %i.au = fdiv double %i.at, 5.800000e+00
  %i.av = fmul double %i.au, 6.000000e+02         ; 2 uses
end_hunk_0
