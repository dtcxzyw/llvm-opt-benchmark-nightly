inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@launch_complete_add:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, -5
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 -5, ptr %i.l, align 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.g, 0
  %i.n = icmp eq i32 %.046, -1
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %or.cond, i32 %i.o, i32 %.046 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit40, label %bb.c, !llvm.loop !8

.loopexit40:                                      ; preds = %bb.f
  %i.p = icmp eq i32 %spec.select, -1
  %i.q = add nuw nsw i32 %spec.select, 1
  %spec.select39 = select i1 %i.p, i32 1, i32 %i.q ; 3 uses
  %i.r = icmp slt i32 %spec.select39, 64
  br i1 %i.r, label %select.unfold.preheader, label %select.unfold._crit_edge

select.unfold.preheader:                          ; preds = %.loopexit40
  %i.s = sext i32 %spec.select39 to i64
  %i.t = mul nsw i64 %i.s, 24                     ; 2 uses
  %i.u = getelementptr i8, ptr @active_job_id, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 -24
  %scevgep55 = getelementptr i8, ptr @active_job_id, i64 %i.t
  %i.v = sub i32 63, %spec.select39
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = add nuw nsw i64 %i.x, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep55, i64 %i.y, i1 false)
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold.preheader, %.loopexit40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1520), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1528), align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 64
  br i1 %exitcond62.not, label %.loopexit, label %bb.h, !llvm.loop !11

bb.h:                                             ; preds = %select.unfold._crit_edge, %bb.g
  %indvars.iv59 = phi i64 [ 0, %select.unfold._crit_edge ], [ %indvars.iv.next60, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @active_job_id, i64 %indvars.iv59 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.d, %bb.i
  %i.ad = tail call i32 @pthread_cond_signal(ptr noundef nonnull @job_state_cond) #7 ; 2 uses
  %.not37 = icmp eq i32 %i.ad, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ae = tail call ptr @__errno_location() #8
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef nonnull @__func__.launch_complete_add) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not38 = icmp eq i32 %i.ag, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call ptr @__errno_location() #8
  store i32 %i.ag, ptr %i.ah, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.launch_complete_add) #9
  unreachable

bb.m:                                             ; preds = %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @launch_job_test(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #8
  store i32 %i.a, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.launch_job_test) #9
  unreachable

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr @active_job_id, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, -5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e
  %.09 = phi i1 [ %i.k, %bb.e ], [ false, %bb.c ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.m = tail call ptr @__errno_location() #8
  store i32 %i.l, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.launch_job_test) #9
  unreachable

bb.g:                                             ; preds = %.loopexit
  ret i1 %.09
}

; Function Attrs: nounwind uwtable
define dso_local void @launch_complete_rm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader19, label %bb.b

.preheader19:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #8
  store i32 %i.a, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.launch_complete_rm) #9
  unreachable

bb.c:                                             ; preds = %.preheader19, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader19 ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr @active_job_id, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.i = icmp samesign ult i64 %indvars.iv, 63
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = mul nuw nsw i64 %indvars.iv, 24          ; 2 uses
  %scevgep = getelementptr nuw i8, ptr @active_job_id, i64 %i.j
  %i.k = getelementptr i8, ptr @active_job_id, i64 %i.j
  %scevgep26 = getelementptr i8, ptr %i.k, i64 24
  %i.l = sub nuw nsw i64 62, %indvars.iv
  %i.m = mul nuw nsw i64 %i.l, 24
  %i.n = add nuw nsw i64 %i.m, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep26, i64 %i.n, i1 false)
  br label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1520), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1528), align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %._crit_edge
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.p = tail call ptr @__errno_location() #8
  store i32 %i.o, ptr %i.p, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.launch_complete_rm) #9
  unreachable

bb.f:                                             ; preds = %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @launch_complete_wait(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = tail call i64 @time(ptr noundef null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #8
  store i32 %i.b, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.launch_complete_wait) #9
  unreachable

bb.c:                                             ; preds = %.backedge, %.preheader
  %i.g = load i32, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.042 = phi i32 [ -1, %bb.c ], [ %spec.select, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr @active_job_id, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.g, %i.j
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.j, 0
  %i.m = icmp eq i32 %.042, -1
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %or.cond, i32 %i.n, i32 %.042 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !14

.critedge:                                        ; preds = %bb.e
  %i.o = call i64 @time(ptr noundef null) #7
  %i.p = call double @difftime(i64 noundef %i.o, i64 noundef %i.a) #8
  %i.q = fcmp ugt double %i.p, 9.000000e+00
  br i1 %i.q, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.r = call i32 @get_log_level() #7
  %i.s = icmp sgt i32 %i.r, 5
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.6, ptr noundef %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #7 ; 0 uses
  %i.u = load i64, ptr %1, align 8
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %2, align 8
  %i.w = load i64, ptr %i.d, align 8
  %i.x = mul nsw i64 %i.w, 1000
  store i64 %i.x, ptr %i.e, align 8
  %i.y = call i32 @pthread_cond_timedwait(ptr noundef nonnull @job_state_cond, ptr noundef nonnull @job_state_mutex, ptr noundef nonnull %2) #7 ; 2 uses
  switch i32 %i.y, label %bb.i [
    i32 110, label %.backedge
    i32 0, label %.backedge
  ]

.backedge:                                        ; preds = %bb.h, %bb.h, %bb.i
  br label %bb.c, !llvm.loop !15

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @__errno_location() #8
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 164, ptr noundef nonnull @__func__.launch_complete_wait) #7 ; 0 uses
  br label %.backedge

bb.j:                                             ; preds = %.critedge
  %i.ab = icmp eq i32 %spec.select, -1
  %i.ac = add nuw nsw i32 %spec.select, 1
  %spec.select38 = select i1 %i.ab, i32 1, i32 %i.ac ; 3 uses
  %i.ad = icmp slt i32 %spec.select38, 64
  br i1 %i.ad, label %select.unfold.preheader, label %select.unfold._crit_edge

select.unfold.preheader:                          ; preds = %bb.j
  %i.ae = sext i32 %spec.select38 to i64
  %i.af = mul nsw i64 %i.ae, 24                   ; 2 uses
  %i.ag = getelementptr i8, ptr @active_job_id, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ag, i64 -24
  %scevgep49 = getelementptr i8, ptr @active_job_id, i64 %i.af
  %i.ah = sub i32 63, %spec.select38
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.aj, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep49, i64 %i.ak, i1 false)
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold.preheader, %bb.j
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1520), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @active_job_id, i64 1528), align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 64
  br i1 %exitcond56.not, label %.loopexit, label %bb.l, !llvm.loop !16

bb.l:                                             ; preds = %select.unfold._crit_edge, %bb.k
  %indvars.iv53 = phi i64 [ 0, %select.unfold._crit_edge ], [ %indvars.iv.next54, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @active_job_id, i64 %indvars.iv53 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i32, ptr %i.c, align 8
  store i32 %i.aq, ptr %i.ap, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.k, %bb.m
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull @job_state_mutex) #7 ; 2 uses
  %.not37 = icmp eq i32 %i.ar, 0
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.as = tail call ptr @__errno_location() #8
  store i32 %i.ar, ptr %i.as, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.launch_complete_wait) #9
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @get_log_level() local_unnamed_addr #5

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
