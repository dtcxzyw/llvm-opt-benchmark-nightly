Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/prim?download=true
inline.NumInlined: 26
inline.NumDeleted: 15
begin_hunk_0_@_mi_prim_reuse:bb.a
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_decommit(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 4) #11
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %unix_madvise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !6
  br label %unix_madvise.exit

unix_madvise.exit:                                ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i8 0, ptr %2, align 1, !tbaa !10
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_reset(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr @_mi_prim_reset.advice monotonic, align 8 ; 2 uses
  %i.b = trunc nuw nsw i64 %i.a to i32            ; 2 uses
  %i.c = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 4, 15) %i.b) #11
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge11, label %unix_madvise.exit.lr.ph

unix_madvise.exit.lr.ph:                          ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #12    ; 3 uses
  br label %unix_madvise.exit

unix_madvise.exit:                                ; preds = %unix_madvise.exit.lr.ph, %bb.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !6    ; 4 uses
  switch i32 %i.f, label %.critedge [
    i32 0, label %.critedge11
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %unix_madvise.exit
  store i32 0, ptr %i.e, align 4, !tbaa !6
  %i.g = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 4, 15) %i.b) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge11, label %unix_madvise.exit, !llvm.loop !24

.critedge:                                        ; preds = %unix_madvise.exit
  %i.i = icmp eq i32 %i.f, 22
  %i.j = icmp eq i64 %i.a, 8
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %.critedge11

bb.c:                                             ; preds = %.critedge
  store atomic i64 4, ptr @_mi_prim_reset.advice release, align 8
  %i.k = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 4) #11
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.e, align 4, !tbaa !6
  br label %.critedge11

.critedge11:                                      ; preds = %bb.b, %unix_madvise.exit, %bb.a, %bb.d, %bb.c, %.critedge
  %.0 = phi i32 [ %i.m, %bb.d ], [ %i.f, %.critedge ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.f, %unix_madvise.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_protect(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = select i1 %2, i32 0, i32 3
  %i.b = tail call i32 @mprotect(ptr noundef %0, i64 noundef %1, i32 noundef %i.a) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_prim_alloc_huge_os_pages(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i8 1, ptr %3, align 1, !tbaa !10
  %i.b = tail call zeroext i1 @_mi_os_has_overcommit() #11 ; 0 uses
  %i.c = load atomic i64, ptr @unix_mmap.large_page_try_ok acquire, align 8 ; 0 uses
  %i.d = and i64 %1, 1073741823
  %i.e = icmp ne i64 %i.d, 0
  %.b.i = load i1, ptr @unix_mmap.mi_huge_pages_available, align 1
  %or.cond4.not.i = select i1 %i.e, i1 true, i1 %.b.i
  %spec.select = select i1 %or.cond4.not.i, i32 1409548322, i32 2013528098 ; 2 uses
  %i.f = tail call fastcc ptr @unix_mmap_prim_aligned(ptr noundef %0, i64 noundef %1, i64 noundef 65536, i32 noundef 3, i32 noundef %spec.select) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %unix_mmap.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %spec.select, 2013265920
  %i.i = icmp eq i32 %i.h, 2013265920
  br i1 %i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !12
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @unix_mmap.mi_huge_pages_available, align 1
  %i.j = tail call ptr @__errno_location() #12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.4, i32 noundef %i.k) #11
  %i.l = tail call fastcc ptr @unix_mmap_prim_aligned(ptr noundef %0, i64 noundef %1, i64 noundef 65536, i32 noundef 3, i32 noundef 1409548322)
  br label %unix_mmap.exit

unix_mmap.exit:                                   ; preds = %bb.a, %bb.c
  %.3.i = phi ptr [ %i.f, %bb.a ], [ %i.l, %bb.c ] ; 4 uses
  store ptr %.3.i, ptr %4, align 8, !tbaa !12
  %i.m = icmp ne ptr %.3.i, null
  %i.n = icmp ult i32 %2, 64
  %or.cond3 = and i1 %i.n, %i.m
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %unix_mmap.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.o = zext nneg i32 %2 to i64
  %i.p = shl nuw i64 1, %i.o
  store i64 %i.p, ptr %i.a, align 8, !tbaa !9
  %i.q = call i64 (i64, ...) @syscall(i64 noundef 237, ptr noundef nonnull %.3.i, i64 noundef %1, i64 noundef 1, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0) #11
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__errno_location() #12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str, i32 noundef %2, i64 noundef %i.t, i64 noundef %i.t) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pr = load ptr, ptr %4, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %unix_mmap.exit
  %i.u = phi ptr [ %.3.i, %unix_mmap.exit ], [ %.pr, %bb.f ]
  %.not17 = icmp eq ptr %i.u, null
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.v = tail call ptr @__errno_location() #12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = phi i32 [ %i.w, %bb.h ], [ 0, %bb.g ]
  ret i32 %i.x
}

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_prim_numa_node() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !9
  %i.c = call i64 (i64, ...) @syscall(i64 noundef 309, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) #11
  %.not = icmp eq i64 %i.c, 0
  %i.d = load i64, ptr %i.a, align 8
  %.0 = select i1 %.not, i64 %i.d, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i64 1, 4294967296) i64 @_mi_prim_numa_node_count() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i32 %i.b, 256
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !25

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.b = add nuw nsw i32 %.08, 1                  ; 4 uses
  %i.c = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 127, ptr noundef nonnull @.str.1, i32 noundef %i.b) #11 ; 0 uses
  %i.d = call i64 (i64, ...) @syscall(i64 noundef 21, ptr noundef nonnull %i.a, i32 noundef 4) #11
  %i.e = and i64 %i.d, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.0.lcssa = phi i32 [ %.08, %bb.c ], [ %i.b, %bb.b ]
  %0 = add nuw nsw i32 %.0.lcssa, 1
  %1 = zext nneg i32 %0 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %1
}

declare i32 @_mi_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_prim_clock_now() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #11 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !27
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = sdiv i64 %i.e, 1000000
  %i.g = add nsw i64 %i.f, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i64 %i.g
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_mi_prim_process_info(ptr nofree noundef writeonly captures(none) initializes((8, 24), (32, 40), (56, 64)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rusage, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #11 ; 0 uses
  %.val5 = load i64, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !31
  %i.c = mul nsw i64 %.val5, 1000
  %i.d = sdiv i64 %.val6, 1000
  %i.e = add nsw i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.h, align 8, !tbaa !31
  %i.i = mul nsw i64 %.val, 1000
  %i.j = sdiv i64 %.val4, 1000
  %i.k = add nsw i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = shl nsw i64 %i.q, 10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define hidden void @_mi_prim_out_stderr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.b = tail call i32 @fputs(ptr noundef %0, ptr noundef %i.a) #13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_prim_getenv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_mi_strlen(ptr noundef nonnull %0) #11 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @environ, align 8, !tbaa !42 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.h = tail call i32 @_mi_strnicmp(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.b) #11
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 61
  br i1 %i.l, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !39

.critedge:                                        ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @_mi_strlcpy(ptr noundef %1, ptr noundef nonnull %i.n, i64 noundef %2) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader, %.critedge, %bb.b, %bb.c, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %.critedge ], [ false, %.preheader ], [ false, %bb.f ]
  ret i1 %.5
}

declare i64 @_mi_strlen(ptr noundef) local_unnamed_addr #3

declare i32 @_mi_strnicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_mi_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_prim_random_buf(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr @_mi_prim_random_buf.no_getrandom acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 (i64, ...) @syscall(i64 noundef 318, ptr noundef %0, i64 noundef %1, i32 noundef 1) #11 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, %i.c
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6
  %.not = icmp eq i32 %i.g, 38
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store atomic i64 1, ptr @_mi_prim_random_buf.no_getrandom release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.h = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 524288, i32 noundef 0) #11
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %.thread39, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.042 = phi i64 [ %.2, %bb.i ], [ 0, %.preheader ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.042
  %i.l = sub nuw i64 %1, %.042
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -2147483648) %i.i, ptr noundef %i.k, i64 noundef %i.l) #11 ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call ptr @__errno_location() #12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  switch i32 %i.p, label %.thread39.loopexit [
    i32 11, label %bb.i
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %i.m, %.042
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.2 = phi i64 [ %i.q, %bb.h ], [ %.042, %bb.g ], [ %.042, %bb.g ] ; 3 uses
  %i.r = icmp ult i64 %.2, %1
  br i1 %i.r, label %.lr.ph, label %.thread39.loopexit

.thread39.loopexit:                               ; preds = %bb.g, %bb.i
  %.0.lcssa.ph = phi i64 [ %.2, %bb.i ], [ %.042, %bb.g ]
  %i.s = icmp eq i64 %.0.lcssa.ph, %1
  br label %.thread39

.thread39:                                        ; preds = %.thread39.loopexit, %.preheader
  %.0.lcssa = phi i1 [ true, %.preheader ], [ %i.s, %.thread39.loopexit ]
  %i.t = tail call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %i.i) #11 ; 0 uses
  br label %.thread

end_hunk_0
