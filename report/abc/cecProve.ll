inline.NumInlined: 174
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cec_GiaInitThreads:bb.a
  store ptr %13, ptr %i.am, align 8, !tbaa !12
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #17 ; 0 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.lr.ph.preheader.i, label %.lr.ph.split.us, !llvm.loop !174

.lr.ph.split:                                     ; preds = %.lr.ph, %Cec_CopyGiaName.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Cec_CopyGiaName.exit ], [ 0, %.lr.ph ] ; 5 uses
  %i.ao = tail call ptr @Gia_ManDup(ptr noundef %2) #17 ; 4 uses
  %i.ap = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv ; 19 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !107
  %i.aq = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %.lr.ph.split
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %Cec_CopyGiaName.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %.lr.ph.split
  %i.at = phi ptr [ %i.ar, %bb.f ], [ %i.aq, %.lr.ph.split ] ; 4 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.aw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.at) #18
  %i.ax = add i64 %i.aw, 1
  %i.ay = tail call noalias noundef ptr @malloc(i64 noundef %i.ax) #19 ; 2 uses
  %i.az = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull readonly dereferenceable(1) %i.at) #17 ; 0 uses
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.i, label %Cec_CopyGiaName.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.at) #18
  %i.be = add i64 %i.bd, 1
  %i.bf = tail call noalias noundef ptr @malloc(i64 noundef %i.be) #19 ; 2 uses
  %i.bg = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull readonly dereferenceable(1) %i.at) #17 ; 0 uses
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !56
  br label %Cec_CopyGiaName.exit

Cec_CopyGiaName.exit:                             ; preds = %bb.f, %bb.h, %bb.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.bl, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %3, ptr %i.bm, align 4, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 -1, ptr %i.bn, align 8, !tbaa !110
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %7, ptr %i.bo, align 4, !tbaa !109
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %4, ptr %i.bp, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %5, ptr %i.bq, align 8, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %6, ptr %i.br, align 8, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  store i32 %11, ptr %i.bu, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i32 %12, ptr %i.bv, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  store i32 0, ptr %i.bw, align 4, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store ptr %9, ptr %i.bx, align 8, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr %13, ptr %i.by, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ca = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.bz, ptr noundef null) #17 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.cc = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.cb, ptr noundef null) #17 ; 0 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %i.ce = tail call i32 @pthread_create(ptr noundef nonnull %i.cd, ptr noundef null, ptr noundef nonnull @Cec_GiaProveWorkerThread, ptr noundef nonnull %i.ap) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count122
  br i1 %exitcond.not, label %.lr.ph.preheader.i, label %.lr.ph.split, !llvm.loop !174

.lr.ph.preheader.i:                               ; preds = %Cec_CopyGiaName.exit, %Cec_CopyGiaName.exit115.us
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.ch = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cg) #17 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 1, ptr %i.ci, align 4, !tbaa !103
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %i.ck = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.cj) #17 ; 0 uses
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cg) #17 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cec_GiaStartThreads.exit, label %.lr.ph.i, !llvm.loop !175

Cec_GiaStartThreads.exit:                         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Cec_GiaStopThreads(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph24.preheader:                               ; preds = %.lr.ph
  %wide.trip.count29 = zext nneg i32 %2 to i64
  br label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #17 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.f) #17 ; 0 uses
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph24.preheader, label %.lr.ph, !llvm.loop !176

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %.lr.ph24
  %indvars.iv26 = phi i64 [ 0, %.lr.ph24.preheader ], [ %indvars.iv.next27, %.lr.ph24 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv26
  %i.j = load i64, ptr %i.i, align 8, !tbaa !177
  %i.k = tail call i32 @pthread_join(i64 noundef %i.j, ptr noundef null) #17 ; 0 uses
  %i.l = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv26 ; 3 uses
  tail call void @Gia_ManStopP(ptr noundef nonnull %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.m) #17 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.o) #17 ; 0 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %._crit_edge, label %.lr.ph24, !llvm.loop !178

._crit_edge:                                      ; preds = %.lr.ph24, %bb.a
  ret void
}

declare void @Gia_ManStopP(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #6

declare void @Cec_ManCorSetDefaultParams(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Cec_ScorrStop(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load volatile i32, ptr %i.b, align 4, !tbaa !95
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !155
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #17
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !8
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.m, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.n = load i64, ptr %i.d, align 8, !tbaa !155
  %.not12 = icmp slt i64 %.0.i, %i.n
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Abc_Clock.exit, %bb.c
  %.sink15 = phi i64 [ 16, %bb.c ], [ 20, %Abc_Clock.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i32 1, ptr %i.o, align 4, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %Abc_Clock.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %Abc_Clock.exit ], [ 0, %bb.d ], [ 1, %bb.g ]
  ret i32 %.0
}

declare ptr @Cec_ManLSCorrespondence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Ssw_ManSetDefaultParams(ptr noundef) local_unnamed_addr #3

declare ptr @Ssw_SignalCorrespondence(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManFromAigSimple(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_CexDup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 10) i32 @Cec_SproveParseEngineName(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #14 {
Cec_SolveEngineName.exit:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.13) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.a, label %Cec_SolveEngineName.exit.1

Cec_SolveEngineName.exit.1:                       ; preds = %Cec_SolveEngineName.exit
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.14) #18
  %.not.1 = icmp eq i32 %i.b, 0
  br i1 %.not.1, label %bb.a, label %Cec_SolveEngineName.exit.2

Cec_SolveEngineName.exit.2:                       ; preds = %Cec_SolveEngineName.exit.1
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.15) #18
  %.not.2 = icmp eq i32 %i.c, 0
  br i1 %.not.2, label %bb.a, label %Cec_SolveEngineName.exit.3

Cec_SolveEngineName.exit.3:                       ; preds = %Cec_SolveEngineName.exit.2
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.16) #18
  %.not.3 = icmp eq i32 %i.d, 0
  br i1 %.not.3, label %bb.a, label %Cec_SolveEngineName.exit.4

Cec_SolveEngineName.exit.4:                       ; preds = %Cec_SolveEngineName.exit.3
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.17) #18
  %.not.4 = icmp eq i32 %i.e, 0
  br i1 %.not.4, label %bb.a, label %Cec_SolveEngineName.exit.5

Cec_SolveEngineName.exit.5:                       ; preds = %Cec_SolveEngineName.exit.4
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.18) #18
  %.not.5 = icmp eq i32 %i.f, 0
  br i1 %.not.5, label %bb.a, label %Cec_SolveEngineName.exit.6

Cec_SolveEngineName.exit.6:                       ; preds = %Cec_SolveEngineName.exit.5
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.19) #18
  %.not.6 = icmp eq i32 %i.g, 0
  br i1 %.not.6, label %bb.a, label %Cec_SolveEngineName.exit.7

Cec_SolveEngineName.exit.7:                       ; preds = %Cec_SolveEngineName.exit.6
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.10) #18
  %.not.7 = icmp eq i32 %i.h, 0
  br i1 %.not.7, label %bb.a, label %Cec_SolveEngineName.exit.8

Cec_SolveEngineName.exit.8:                       ; preds = %Cec_SolveEngineName.exit.7
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #18
  %.not.8 = icmp eq i32 %i.i, 0
  br i1 %.not.8, label %bb.a, label %Cec_SolveEngineName.exit.9

Cec_SolveEngineName.exit.9:                       ; preds = %Cec_SolveEngineName.exit.8
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20) #18
  %.not.9 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not.9, i32 9, i32 -1
  br label %bb.a

bb.a:                                             ; preds = %Cec_SolveEngineName.exit.9, %Cec_SolveEngineName.exit.8, %Cec_SolveEngineName.exit.7, %Cec_SolveEngineName.exit.6, %Cec_SolveEngineName.exit.5, %Cec_SolveEngineName.exit.4, %Cec_SolveEngineName.exit.3, %Cec_SolveEngineName.exit.2, %Cec_SolveEngineName.exit.1, %Cec_SolveEngineName.exit
  %.05 = phi i32 [ 0, %Cec_SolveEngineName.exit ], [ 5, %Cec_SolveEngineName.exit.5 ], [ 1, %Cec_SolveEngineName.exit.1 ], [ %spec.select, %Cec_SolveEngineName.exit.9 ], [ 2, %Cec_SolveEngineName.exit.2 ], [ 7, %Cec_SolveEngineName.exit.7 ], [ 3, %Cec_SolveEngineName.exit.3 ], [ 8, %Cec_SolveEngineName.exit.8 ], [ 4, %Cec_SolveEngineName.exit.4 ], [ 6, %Cec_SolveEngineName.exit.6 ]
  ret i32 %.05
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"timespec", !10, i64 0, !10, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!13, !19, i64 80}
!13 = !{!"Par_ThData_t_", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !16, i64 40, !17, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !18, i64 72, !19, i64 80, !6, i64 88, !6, i64 128}
!14 = !{!"p1 _ZTS10Gia_Man_t_", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS10Wlc_Ntk_t_", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"p1 _ZTS12Par_Share_t_", !15, i64 0}
!19 = !{!"p1 _ZTS18Cec_SproveTrace_t_", !15, i64 0}
!20 = !{!13, !5, i64 60}
!21 = !{!13, !5, i64 64}
!22 = !{!13, !5, i64 56}
!23 = !{!24, !10, i64 16}
!24 = !{!"Cec_SproveTrace_t_", !25, i64 0, !5, i64 8, !10, i64 16, !6, i64 24}
!25 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!26 = !{!27, !5, i64 16}
!27 = !{!"Gia_Man_t_", !17, i64 0, !17, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !28, i64 32, !29, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !30, i64 64, !30, i64 72, !31, i64 80, !31, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !31, i64 128, !29, i64 144, !29, i64 152, !30, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !29, i64 184, !32, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !5, i64 224, !5, i64 228, !29, i64 232, !5, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !33, i64 272, !33, i64 280, !30, i64 288, !15, i64 296, !30, i64 304, !30, i64 312, !34, i64 320, !17, i64 328, !30, i64 336, !30, i64 344, !30, i64 352, !30, i64 360, !30, i64 368, !35, i64 376, !35, i64 384, !36, i64 392, !31, i64 400, !31, i64 416, !30, i64 432, !30, i64 440, !30, i64 448, !30, i64 456, !30, i64 464, !30, i64 472, !30, i64 480, !30, i64 488, !30, i64 496, !30, i64 504, !30, i64 512, !17, i64 520, !37, i64 528, !14, i64 536, !38, i64 544, !38, i64 552, !30, i64 560, !30, i64 568, !30, i64 576, !30, i64 584, !30, i64 592, !5, i64 600, !39, i64 604, !39, i64 608, !30, i64 616, !29, i64 624, !5, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !30, i64 664, !30, i64 672, !30, i64 680, !30, i64 688, !30, i64 696, !30, i64 704, !30, i64 712, !30, i64 720, !30, i64 728, !40, i64 736, !38, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !10, i64 776, !10, i64 784, !15, i64 792, !29, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !41, i64 856, !41, i64 864, !41, i64 872, !41, i64 880, !30, i64 888, !30, i64 896, !30, i64 904, !42, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !30, i64 936, !5, i64 944, !5, i64 948, !30, i64 952, !30, i64 960, !36, i64 968, !41, i64 976, !30, i64 984, !30, i64 992, !5, i64 1000, !5, i64 1004, !41, i64 1008, !31, i64 1016, !31, i64 1032, !31, i64 1048, !43, i64 1064, !34, i64 1072, !34, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !34, i64 1104, !30, i64 1112, !30, i64 1120, !30, i64 1128, !36, i64 1136}
!28 = !{!"p1 _ZTS10Gia_Obj_t_", !15, i64 0}
!29 = !{!"p1 int", !15, i64 0}
!30 = !{!"p1 _ZTS10Vec_Int_t_", !15, i64 0}
!31 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !29, i64 8}
!32 = !{!"p1 _ZTS10Gia_Rpr_t_", !15, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wec_t_", !15, i64 0}
!34 = !{!"p1 _ZTS10Vec_Str_t_", !15, i64 0}
!35 = !{!"p1 _ZTS10Abc_Cex_t_", !15, i64 0}
!36 = !{!"p1 _ZTS10Vec_Ptr_t_", !15, i64 0}
!37 = !{!"p1 _ZTS10Gia_Plc_t_", !15, i64 0}
!38 = !{!"p1 _ZTS10Vec_Flt_t_", !15, i64 0}
!39 = !{!"float", !6, i64 0}
!40 = !{!"p1 _ZTS10Vec_Vec_t_", !15, i64 0}
!41 = !{!"p1 _ZTS10Vec_Wrd_t_", !15, i64 0}
!42 = !{!"p1 _ZTS10Vec_Bit_t_", !15, i64 0}
!43 = !{!"p1 _ZTS10Gia_Dat_t_", !15, i64 0}
!44 = !{!45, !5, i64 24}
!45 = !{!"Ssw_RarPars_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !35, i64 80, !15, i64 88, !15, i64 96, !15, i64 104}
!46 = !{!45, !5, i64 48}
!47 = !{!13, !18, i64 72}
!48 = !{!45, !15, i64 96}
!49 = !{!45, !15, i64 104}
!50 = !{!51, !5, i64 20}
!51 = !{!"Saig_ParBmc_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !17, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !10, i64 120, !15, i64 128, !5, i64 136, !15, i64 144, !15, i64 152, !15, i64 160}
!52 = !{!51, !5, i64 104}
!53 = !{!51, !15, i64 152}
!54 = !{!51, !15, i64 160}
!55 = !{!27, !17, i64 0}
!56 = !{!27, !17, i64 8}
!57 = !{!58, !17, i64 0}
!58 = !{!"Aig_Man_t_", !17, i64 0, !17, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !59, i64 48, !60, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !5, i64 156, !61, i64 160, !5, i64 168, !29, i64 176, !5, i64 184, !40, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !29, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !61, i64 248, !61, i64 256, !5, i64 264, !63, i64 272, !30, i64 280, !5, i64 288, !15, i64 296, !15, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !61, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !29, i64 368, !29, i64 376, !36, i64 384, !30, i64 392, !30, i64 400, !35, i64 408, !36, i64 416, !64, i64 424, !36, i64 432, !5, i64 440, !30, i64 448, !40, i64 456, !30, i64 464, !30, i64 472, !5, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !36, i64 512, !36, i64 520}
!59 = !{!"p1 _ZTS10Aig_Obj_t_", !15, i64 0}
!60 = !{!"Aig_Obj_t_", !6, i64 0, !59, i64 8, !59, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !6, i64 40}
!61 = !{!"p2 _ZTS10Aig_Obj_t_", !62, i64 0}
!62 = !{!"any p2 pointer", !15, i64 0}
!63 = !{!"p1 _ZTS14Aig_MmFixed_t_", !15, i64 0}
!64 = !{!"p1 _ZTS10Aig_Man_t_", !15, i64 0}
!65 = !{!58, !17, i64 8}
!66 = !{!58, !35, i64 408}
!67 = !{!27, !35, i64 384}
!68 = !{!69, !5, i64 20}
!69 = !{!"Pdr_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !10, i64 184, !30, i64 192, !17, i64 200, !5, i64 208}
!70 = !{!69, !5, i64 112}
!71 = !{!69, !15, i64 168}
!72 = !{!69, !15, i64 176}
!73 = !{!51, !5, i64 68}
!74 = !{!69, !5, i64 92}
!75 = !{!76, !5, i64 24}
!76 = !{!"Bmc_AndPar_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!77 = !{!76, !5, i64 8}
!78 = !{!76, !5, i64 60}
!79 = !{!76, !5, i64 16}
!80 = !{!76, !15, i64 80}
!81 = !{!76, !15, i64 88}
!82 = !{!13, !16, i64 40}
!83 = !{!18, !18, i64 0}
!84 = !{!13, !5, i64 32}
!85 = !{!13, !17, i64 48}
!86 = !{!27, !30, i64 72}
!87 = !{!31, !5, i64 4}
!88 = !{!89, !5, i64 32}
!89 = !{!"Abs_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !17, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !15, i64 128, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148}
!90 = !{!89, !5, i64 92}
!91 = !{!89, !5, i64 112}
!92 = !{!89, !5, i64 116}
!93 = !{!89, !5, i64 120}
!94 = !{!89, !15, i64 128}
!95 = !{!96, !5, i64 0}
!96 = !{!"Par_Share_t_", !5, i64 0, !5, i64 4, !5, i64 8}
!97 = !{!96, !5, i64 4}
!98 = !{!13, !5, i64 8}
!99 = !{!96, !5, i64 8}
!100 = !{!13, !5, i64 68}
!101 = !{!24, !5, i64 8}
!102 = !{!24, !25, i64 0}
!103 = !{!13, !5, i64 12}
!104 = !{!13, !5, i64 16}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!13, !14, i64 0}
!108 = !{!13, !5, i64 20}
!109 = !{!13, !5, i64 28}
!110 = !{!13, !5, i64 24}
!111 = !{!112, !5, i64 0}
!112 = !{!"Cec_SprovePlan_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !17, i64 32, !5, i64 40, !6, i64 44}
!113 = !{!5, !5, i64 0}
!114 = !{!112, !5, i64 4}
!115 = !{!112, !5, i64 8}
!116 = !{!112, !5, i64 12}
!117 = !{!112, !5, i64 16}
!118 = !{!112, !17, i64 32}
!119 = !{!120, !5, i64 12}
!120 = !{!"Cec_SproveStage_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !6, i64 36, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84}
!121 = !{!120, !5, i64 8}
!122 = !{!6, !6, i64 0}
!123 = distinct !{!123, !106}
!124 = distinct !{null}
!125 = distinct !{!125, !106}
!126 = !{!112, !5, i64 20}
!127 = !{!112, !5, i64 24}
!128 = distinct !{!128, !106}
!129 = !{!112, !5, i64 40}
!130 = distinct !{!130, !106, !131, !132}
!131 = !{!"llvm.loop.isvectorized", i32 1}
!132 = !{!"llvm.loop.unroll.runtime.disable"}
!133 = distinct !{!133, !106, !132, !131}
!134 = !{!120, !5, i64 0}
!135 = !{!120, !5, i64 20}
!136 = !{!120, !5, i64 24}
!137 = !{!120, !5, i64 28}
!138 = !{!120, !5, i64 32}
!139 = !{!120, !5, i64 84}
!140 = !{!120, !5, i64 4}
!141 = !{!120, !5, i64 16}
!142 = !{!120, !5, i64 68}
!143 = !{!14, !14, i64 0}
!144 = !{!25, !25, i64 0}
!145 = distinct !{!145, !106, !146}
!146 = !{!"llvm.loop.peeled.count", i32 1}
!147 = !{!120, !5, i64 72}
!148 = !{!120, !5, i64 76}
!149 = !{!120, !5, i64 80}
!150 = distinct !{!150, !106}
!151 = !{!27, !5, i64 24}
!152 = !{!27, !30, i64 64}
!153 = !{!154, !18, i64 0}
!154 = !{!"Cec_ScorrStop_t_", !18, i64 0, !10, i64 8, !5, i64 16, !5, i64 20}
!155 = !{!154, !10, i64 8}
!156 = !{!157, !5, i64 16}
!157 = !{!"Cec_ParCor_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !15, i64 136, !15, i64 144}
!158 = !{!157, !5, i64 28}
!159 = !{!157, !5, i64 128}
!160 = !{!157, !5, i64 68}
!161 = !{!157, !15, i64 144}
!162 = !{!157, !15, i64 136}
!163 = !{!164, !15, i64 176}
!164 = !{!"Ssw_Pars_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !15, i64 168, !15, i64 176}
!165 = !{!164, !15, i64 168}
!166 = distinct !{!166, !106}
!167 = distinct !{!167, !106}
!168 = distinct !{!168, !106}
!169 = distinct !{!169, !106}
!170 = !{!171}
!171 = distinct !{!171, !172, !"vprintf: argument 0"}
!172 = distinct !{!172, !"vprintf"}
!173 = distinct !{null}
!174 = distinct !{!174, !106}
!175 = distinct !{!175, !106}
!176 = distinct !{!176, !106}
!177 = !{!10, !10, i64 0}
!178 = distinct !{!178, !106}
end_hunk_0
