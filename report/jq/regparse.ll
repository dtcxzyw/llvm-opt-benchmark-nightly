Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regparse?download=true
inline.NumInlined: 358
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@onig_renumber_name_table
define dso_local noundef i32 @onig_renumber_name_table(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = tail call i32 @onig_st_foreach(ptr noundef nonnull %i.b, ptr noundef nonnull @i_renumber_name, i64 noundef %i.c) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @i_renumber_name(i64 %0, i64 noundef %1, i64 noundef %2) #11 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !179
  store i32 %i.l, ptr %i.h, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !53
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.loopexit, !llvm.loop !177

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.d, 1
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !179
  store i32 %i.u, ptr %i.q, align 4, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @onig_number_of_names(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @onig_name_to_group_numbers(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %name_find.exit.thread, label %name_find.exit

name_find.exit.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

name_find.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %1, ptr %4, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !31
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i32 @onig_st_lookup(ptr noundef nonnull %.val, i64 noundef %i.d, ptr noundef nonnull %i.a) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.f = icmp eq ptr %.pre.i, null
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %name_find.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53   ; 3 uses
  switch i32 %i.h, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 20
  store ptr %i.i, ptr %3, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  store ptr %i.k, ptr %3, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %name_find.exit.thread, %name_find.exit
  %.0 = phi i32 [ -217, %name_find.exit.thread ], [ -217, %name_find.exit ], [ %i.h, %bb.d ], [ 1, %bb.c ], [ %i.h, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @onig_name_to_backref_number(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %name_find.exit.thread.i, label %name_find.exit.i

name_find.exit.thread.i:                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %onig_name_to_group_numbers.exit.thread

name_find.exit.i:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %1, ptr %4, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !31
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i32 @onig_st_lookup(ptr noundef nonnull %.val.i, i64 noundef %i.d, ptr noundef nonnull %i.a) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.f = icmp eq ptr %.pre.i.i, null
  br i1 %i.f, label %onig_name_to_group_numbers.exit.thread, label %bb.b

bb.b:                                             ; preds = %name_find.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53   ; 6 uses
  switch i32 %i.h, label %onig_name_to_group_numbers.exit [
    i32 0, label %onig_name_to_group_numbers.exit.thread
    i32 1, label %onig_name_to_group_numbers.exit.thread25.thread32
  ]

onig_name_to_group_numbers.exit.thread25.thread32: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit:                  ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = icmp slt i32 %i.h, 0
  br i1 %i.m, label %onig_name_to_group_numbers.exit.thread, label %onig_name_to_group_numbers.exit.thread25

onig_name_to_group_numbers.exit.thread25:         ; preds = %onig_name_to_group_numbers.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge, label %.preheader

onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge: ; preds = %onig_name_to_group_numbers.exit.thread25
  %.pre = zext nneg i32 %i.h to i64
  br label %.loopexit

.preheader:                                       ; preds = %onig_name_to_group_numbers.exit.thread25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = zext nneg i32 %i.h to i64                ; 3 uses
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !183
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv38, -1
  %i.q = icmp sgt i64 %indvars.iv38, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !180

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv38 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %5 = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv38
  %6 = getelementptr i8, ptr %5, i64 -4
  %i.r = load i32, ptr %6, align 4, !tbaa !26     ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %.not18 = icmp eq i32 %i.u, -1
  br i1 %.not18, label %bb.c, label %onig_name_to_group_numbers.exit.thread, !llvm.loop !180

.loopexit:                                        ; preds = %bb.c, %.preheader, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge ], [ %i.o, %.preheader ], [ %i.o, %bb.c ]
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit.thread:           ; preds = %.lr.ph, %bb.b, %name_find.exit.i, %name_find.exit.thread.i, %onig_name_to_group_numbers.exit, %.loopexit, %onig_name_to_group_numbers.exit.thread25.thread32
  %.015 = phi i32 [ %i.x, %.loopexit ], [ %i.h, %onig_name_to_group_numbers.exit ], [ %i.j, %onig_name_to_group_numbers.exit.thread25.thread32 ], [ -11, %bb.b ], [ -217, %name_find.exit.i ], [ -217, %name_find.exit.thread.i ], [ %i.r, %.lr.ph ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @onig_noname_group_capture_is_active(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %onig_number_of_names.exit.thread, label %onig_number_of_names.exit

onig_number_of_names.exit:                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %onig_number_of_names.exit.thread

bb.c:                                             ; preds = %onig_number_of_names.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !66
  %i.m = and i32 %i.l, 128
  %.not4 = icmp ne i32 %i.m, 0
  %i.n = and i32 %i.b, 256
  %.not5 = icmp eq i32 %i.n, 0
  %or.cond = and i1 %.not5, %.not4
  br i1 %or.cond, label %bb.d, label %onig_number_of_names.exit.thread

onig_number_of_names.exit.thread:                 ; preds = %bb.b, %bb.c, %onig_number_of_names.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %onig_number_of_names.exit.thread
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %onig_number_of_names.exit.thread ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @onig_set_callout_of_name(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %8 to i64
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %7, 4
  %or.cond135 = icmp ugt i32 %9, %7
  %or.cond142 = or i1 %or.cond, %or.cond135
  br i1 %or.cond142, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %5, null
  %i.d = icmp eq ptr %6, null
  %or.cond5 = and i1 %i.c, %i.d
  %i.e = and i32 %4, 3
  %or.cond137 = icmp eq i32 %i.e, 0
  %or.cond143 = or i1 %or.cond137, %or.cond5
  br i1 %or.cond143, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not199 = icmp eq i32 %7, 0                    ; 2 uses
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = sub nuw nsw i32 %7, %9                   ; 3 uses
  %i.g = load i32, ptr %8, align 4, !tbaa !26     ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not133.not = icmp eq i32 %7, %9
  br i1 %.not133.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.split, label %.critedge

.split:                                           ; preds = %bb.e
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true)
  switch i32 %i.k, label %.critedge [
    i32 4, label %bb.g
    i32 2, label %bb.g
    i32 1, label %bb.g
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.d
  switch i32 %i.g, label %.critedge [
    i32 1, label %bb.g
    i32 17, label %bb.g
    i32 16, label %bb.g
    i32 5, label %bb.g
    i32 4, label %bb.g
    i32 3, label %bb.g
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %.split, %.split, %.split, %.split
  %exitcond.not = icmp eq i32 %7, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26   ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not133.1 = icmp ugt i32 %i.f, 1
  br i1 %.not133.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.m)
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.split.1, label %.critedge

.split.1:                                         ; preds = %bb.j
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.m, i1 true)
  switch i32 %i.q, label %.critedge [
    i32 4, label %bb.l
    i32 2, label %bb.l
    i32 1, label %bb.l
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.i
  switch i32 %i.m, label %.critedge [
    i32 1, label %bb.l
    i32 17, label %bb.l
    i32 16, label %bb.l
    i32 5, label %bb.l
    i32 4, label %bb.l
    i32 3, label %bb.l
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %.split.1, %.split.1, %.split.1, %.split.1
  %exitcond.not.1 = icmp eq i32 %7, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26   ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not133.2 = icmp ugt i32 %i.f, 2
  br i1 %.not133.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %.split.2, label %.critedge

.split.2:                                         ; preds = %bb.o
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  switch i32 %i.w, label %.critedge [
    i32 4, label %bb.q
    i32 2, label %bb.q
    i32 1, label %bb.q
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %bb.n
  switch i32 %i.s, label %.critedge [
    i32 1, label %bb.q
    i32 17, label %bb.q
    i32 16, label %bb.q
    i32 5, label %bb.q
    i32 4, label %bb.q
    i32 3, label %bb.q
    i32 2, label %bb.q
  ]

end_hunk_0
begin_hunk_1_@onig_new_cclass_with_code_list:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.f, %node_new_cclass.exit
  store ptr %calloc.i.i, ptr %0, align 8, !tbaa !110
  br label %node_new_cclass.exit.thread

node_new_cclass.exit.thread:                      ; preds = %bb.a, %._crit_edge
  %.022 = phi i32 [ 0, %._crit_edge ], [ -5, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -205, 1) i32 @add_code_range_to_buf(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
bb.a:
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %2) ; 3 uses
  %spec.select205 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2) ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 7 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !111
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #27 ; 5 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !107
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bbuf_init.exit.i, label %.thread

bbuf_init.exit.i:                                 ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #26
  store ptr null, ptr %0, align 8, !tbaa !111
  br label %.critedge

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 20, ptr %i.g, align 4, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.e, align 1
  store i32 4, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %._crit_edge

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.m = icmp sgt i32 %i.k, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0166228 = phi i32 [ %.1167, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %.0172227 = phi i32 [ %.1173, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.n = add nuw nsw i32 %.0166228, %.0172227     ; 2 uses
  %i.o = lshr i32 %i.n, 1                         ; 2 uses
  %i.p = or i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = icmp ugt i32 %spec.select, %i.s          ; 2 uses
  %i.u = add nuw nsw i32 %i.o, 1
  %.1173 = select i1 %i.t, i32 %i.u, i32 %.0172227 ; 3 uses
  %.1167 = select i1 %i.t, i32 %.0166228, i32 %i.o ; 2 uses
  %i.v = icmp slt i32 %.1173, %.1167
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %.lr.ph, %.thread, %bb.d
  %i.w = phi ptr [ %i.l, %bb.d ], [ %i.i, %.thread ], [ %i.l, %.lr.ph ] ; 3 uses
  %.0164276 = phi ptr [ %i.a, %bb.d ], [ %i.c, %.thread ], [ %i.a, %.lr.ph ] ; 17 uses
  %.0165275 = phi i32 [ %i.k, %bb.d ], [ 0, %.thread ], [ %i.k, %.lr.ph ] ; 6 uses
  %i.x = phi ptr [ %i.j, %bb.d ], [ %i.e, %.thread ], [ %i.j, %.lr.ph ] ; 4 uses
  %.0172.lcssa = phi i32 [ 0, %bb.d ], [ 0, %.thread ], [ %.1173, %.lr.ph ] ; 4 uses
  %i.y = icmp eq i32 %spec.select205, -1
  %i.z = select i1 %i.y, i32 %.0165275, i32 %.0172.lcssa ; 3 uses
  %i.aa = icmp slt i32 %i.z, %.0165275
  br i1 %i.aa, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %._crit_edge
  %i.ab = add i32 %spec.select205, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph232, %bb.e
  %.2168230 = phi i32 [ %.0165275, %.lr.ph232 ], [ %.3169, %bb.e ] ; 2 uses
  %.0170229 = phi i32 [ %i.z, %.lr.ph232 ], [ %.1171, %bb.e ] ; 2 uses
  %i.ac = add nsw i32 %.2168230, %.0170229        ; 2 uses
  %i.ad = ashr i32 %i.ac, 1                       ; 2 uses
  %i.ae = and i32 %i.ac, -2
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26
  %.not204 = icmp ult i32 %i.ab, %i.ah            ; 2 uses
  %i.ai = add nsw i32 %i.ad, 1
  %.1171 = select i1 %.not204, i32 %.0170229, i32 %i.ai ; 3 uses
  %.3169 = select i1 %.not204, i32 %i.ad, i32 %.2168230 ; 2 uses
  %i.aj = icmp slt i32 %.1171, %.3169
  br i1 %i.aj, label %bb.e, label %._crit_edge233, !llvm.loop !200

._crit_edge233:                                   ; preds = %bb.e, %._crit_edge
  %.0170.lcssa = phi i32 [ %i.z, %._crit_edge ], [ %.1171, %bb.e ] ; 6 uses
  %i.ak = add nuw nsw i32 %.0172.lcssa, 1         ; 3 uses
  %i.al = sub nsw i32 %i.ak, %.0170.lcssa         ; 3 uses
  %i.am = add i32 %i.al, %.0165275                ; 2 uses
  %i.an = icmp ugt i32 %i.am, 10000
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %._crit_edge233
  %.not201 = icmp eq i32 %i.al, 1
  br i1 %.not201, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = shl nuw nsw i32 %.0172.lcssa, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %spec.select206 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ar)
  %i.as = shl i32 %.0170.lcssa, 1
  %i.at = add i32 %i.as, -1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %spec.select214 = tail call i32 @llvm.umax.i32(i32 %spec.select205, i32 %i.aw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2178 = phi i32 [ %spec.select, %bb.f ], [ %spec.select206, %bb.g ]
  %.1175 = phi i32 [ %spec.select205, %bb.f ], [ %spec.select214, %bb.g ]
  %.not202 = icmp ne i32 %i.ak, %.0170.lcssa
  %i.ax = icmp ult i32 %.0170.lcssa, %.0165275
  %or.cond = and i1 %.not202, %i.ax
  br i1 %or.cond, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ay = shl i32 %.0170.lcssa, 3                 ; 2 uses
  %i.az = or disjoint i32 %i.ay, 4                ; 3 uses
  %i.ba = shl i32 %i.ak, 3                        ; 2 uses
  %i.bb = or disjoint i32 %i.ba, 4                ; 3 uses
  %i.bc = sub nuw i32 %.0165275, %.0170.lcssa
  %i.bd = shl i32 %i.bc, 3                        ; 2 uses
  %i.be = icmp sgt i32 %i.al, 0
  br i1 %i.be, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bf = add nsw i32 %i.bd, %i.bb                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0164276, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !112 ; 2 uses
  %i.bi = icmp ugt i32 %i.bf, %i.bh
  br i1 %i.bi, label %.preheader221, label %bb.l

.preheader221:                                    ; preds = %bb.j, %.preheader221
  %i.bj = phi i32 [ %i.bk, %.preheader221 ], [ %i.bh, %bb.j ]
  %i.bk = shl i32 %i.bj, 1                        ; 4 uses
  %i.bl = icmp ult i32 %i.bk, %i.bf
  br i1 %i.bl, label %.preheader221, label %bb.k, !llvm.loop !201

bb.k:                                             ; preds = %.preheader221
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !112
  %i.bm = zext i32 %i.bk to i64
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %i.bm) #28 ; 3 uses
  store ptr %i.bn, ptr %.0164276, align 8, !tbaa !107
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi ptr [ %i.bn, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %i.bq = sext i32 %i.bb to i64
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %i.bs = sext i32 %i.az to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = sext i32 %i.bd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %i.bt, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.0164276, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !113
  %i.bx = icmp ugt i32 %i.bf, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i32 %i.bf, ptr %i.bv, align 8, !tbaa !113
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.by = sext i32 %i.bb to i64
  %i.bz = getelementptr inbounds i8, ptr %i.x, i64 %i.by
  %i.ca = sext i32 %i.az to i64
  %i.cb = getelementptr inbounds i8, ptr %i.x, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.0164276, i64 8 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !113
  %i.ce = sub i32 %i.cd, %i.az
  %i.cf = zext i32 %i.ce to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.cb, i64 %i.cf, i1 false)
  %.neg = sub i32 %i.ba, %i.ay
  %i.cg = load i32, ptr %i.cc, align 8, !tbaa !113
  %i.ch = add i32 %.neg, %i.cg
  store i32 %i.ch, ptr %i.cc, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.h
  %i.ci = shl i32 %.0172.lcssa, 3                 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0164276, i64 12 ; 7 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !112 ; 3 uses
  %i.cl = add i32 %i.ci, 12                       ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i32 [ %i.ck, %bb.o ], [ %i.cn, %bb.p ] ; 6 uses
  %i.cm = icmp ult i32 %.0, %i.cl
  %i.cn = shl i32 %.0, 1
  br i1 %i.cm, label %bb.p, label %bb.q, !llvm.loop !202

bb.q:                                             ; preds = %bb.p
  %i.co = or disjoint i32 %i.ci, 4
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %.not203 = icmp eq i32 %i.ck, %.0
  br i1 %.not203, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %.0164276, align 8, !tbaa !107
  %i.cr = zext i32 %.0 to i64
  %i.cs = tail call ptr @realloc(ptr noundef %i.cq, i64 noundef %i.cr) #28 ; 2 uses
  store ptr %i.cs, ptr %.0164276, align 8, !tbaa !107
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.0, ptr %i.cj, align 4, !tbaa !112
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.promoted236 = phi i32 [ %.0, %bb.s ], [ %i.ck, %bb.q ] ; 2 uses
  %3 = add i32 %i.ci, 8                           ; 4 uses
  %i.cu = icmp ult i32 %.promoted236, %3
  br i1 %i.cu, label %.preheader220, label %._crit_edge245

._crit_edge245:                                   ; preds = %bb.t
  %.pre = load ptr, ptr %.0164276, align 8, !tbaa !107
  br label %bb.v

.preheader220:                                    ; preds = %bb.t, %.preheader220
  %i.cv = phi i32 [ %i.cw, %.preheader220 ], [ %.promoted236, %bb.t ]
  %i.cw = shl i32 %i.cv, 1                        ; 4 uses
  %i.cx = icmp ult i32 %i.cw, %3
  br i1 %i.cx, label %.preheader220, label %bb.u, !llvm.loop !203

bb.u:                                             ; preds = %.preheader220
  store i32 %i.cw, ptr %i.cj, align 4, !tbaa !112
  %i.cy = load ptr, ptr %.0164276, align 8, !tbaa !107
  %i.cz = zext i32 %i.cw to i64
  %i.da = tail call ptr @realloc(ptr noundef %i.cy, i64 noundef %i.cz) #28 ; 3 uses
  store ptr %i.da, ptr %.0164276, align 8, !tbaa !107
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.critedge, label %bb.v

bb.v:                                             ; preds = %._crit_edge245, %bb.u
  %i.dc = phi ptr [ %.pre, %._crit_edge245 ], [ %i.da, %bb.u ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cp
  store i32 %.2178, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.0164276, i64 8 ; 6 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !113
  %i.dg = icmp ult i32 %i.df, %3
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %3, ptr %i.de, align 8, !tbaa !113
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dh = load i32, ptr %i.cj, align 4, !tbaa !112 ; 2 uses
  %i.di = icmp ult i32 %i.dh, %i.cl
  br i1 %i.di, label %.preheader219, label %._crit_edge246

._crit_edge246:                                   ; preds = %bb.x
  %.pre247 = load ptr, ptr %.0164276, align 8, !tbaa !107
  br label %bb.z

.preheader219:                                    ; preds = %bb.x, %.preheader219
  %i.dj = phi i32 [ %i.dk, %.preheader219 ], [ %i.dh, %bb.x ]
  %i.dk = shl i32 %i.dj, 1                        ; 4 uses
  %i.dl = icmp ult i32 %i.dk, %i.cl
  br i1 %i.dl, label %.preheader219, label %bb.y, !llvm.loop !204

bb.y:                                             ; preds = %.preheader219
  store i32 %i.dk, ptr %i.cj, align 4, !tbaa !112
  %i.dm = load ptr, ptr %.0164276, align 8, !tbaa !107
  %i.dn = zext i32 %i.dk to i64
  %i.do = tail call ptr @realloc(ptr noundef %i.dm, i64 noundef %i.dn) #28 ; 3 uses
  store ptr %i.do, ptr %.0164276, align 8, !tbaa !107
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.critedge, label %bb.z

bb.z:                                             ; preds = %._crit_edge246, %bb.y
  %i.dq = phi ptr [ %.pre247, %._crit_edge246 ], [ %i.do, %bb.y ]
  %4 = getelementptr i8, ptr %i.dq, i64 %i.cp
  %i.dr = getelementptr i8, ptr %4, i64 4
  store i32 %.1175, ptr %i.dr, align 1
  %i.ds = load i32, ptr %i.de, align 8, !tbaa !113
  %i.dt = icmp ult i32 %i.ds, %i.cl
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.cl, ptr %i.de, align 8, !tbaa !113
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.du = load i32, ptr %i.cj, align 4, !tbaa !112 ; 2 uses
  %i.dv = icmp ult i32 %i.du, 4
  br i1 %i.dv, label %.preheader, label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.ab
  %.pre249 = load ptr, ptr %.0164276, align 8, !tbaa !107
  br label %bb.ad

.preheader:                                       ; preds = %bb.ab, %.preheader
  %i.dw = phi i32 [ %i.dx, %.preheader ], [ %i.du, %bb.ab ] ; 2 uses
  %i.dx = shl nuw nsw i32 %i.dw, 1                ; 3 uses
  %i.dy = icmp samesign ult i32 %i.dw, 2
  br i1 %i.dy, label %.preheader, label %bb.ac, !llvm.loop !205

bb.ac:                                            ; preds = %.preheader
  store i32 %i.dx, ptr %i.cj, align 4, !tbaa !112
  %i.dz = load ptr, ptr %.0164276, align 8, !tbaa !107
  %i.ea = zext nneg i32 %i.dx to i64
  %i.eb = tail call ptr @realloc(ptr noundef %i.dz, i64 noundef %i.ea) #28 ; 3 uses
  store ptr %i.eb, ptr %.0164276, align 8, !tbaa !107
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge248, %bb.ac
  %i.ed = phi ptr [ %.pre249, %._crit_edge248 ], [ %i.eb, %bb.ac ]
  store i32 %i.am, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.de, align 8, !tbaa !113
  %i.ef = icmp ult i32 %i.ee, 4
  br i1 %i.ef, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  store i32 4, ptr %i.de, align 8, !tbaa !113
  br label %.critedge

.critedge:                                        ; preds = %bbuf_init.exit.i, %bb.b, %bb.ac, %bb.ae, %bb.ad, %bb.y, %bb.u, %bb.r, %bb.k, %._crit_edge233
  %.6 = phi i32 [ -5, %bb.y ], [ 0, %bb.ad ], [ -205, %._crit_edge233 ], [ -5, %bb.k ], [ -5, %bb.u ], [ -5, %bb.r ], [ -5, %bb.ac ], [ 0, %bb.ae ], [ -5, %bb.b ], [ -5, %bbuf_init.exit.i ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @onig_parse_tree(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr noundef initializes((32, 60), (80, 84), (88, 96)) %3, ptr noundef initializes((0, 36), (40, 272)) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 16    ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.PToken, align 8             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.e, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.f, align 8, !tbaa !209
  %i.g = getelementptr i8, ptr %3, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  %.val = load ptr, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %names_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @onig_st_foreach(ptr noundef nonnull %.val, ptr noundef nonnull @i_free_name_entry, i64 noundef 0) #26 ; 0 uses
  br label %names_clear.exit

names_clear.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !210
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !211
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.m, i8 0, i64 192, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !62
  store i32 %i.o, ptr %4, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !212
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !126
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.y, align 8, !tbaa !127
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %2, ptr %i.z, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.aa, align 8, !tbaa !129
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130
  %i.ad = tail call i32 %i.ac(ptr noundef %1, ptr noundef %2) #26
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %setup_ext_callout_list_values.exit, label %bb.c

bb.c:                                             ; preds = %names_clear.exit
  store ptr %1, ptr %i.b, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !133
  %i.af = call fastcc i32 @fetch_token(ptr noundef %6, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %4) ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %prs_regexp.exit.thread, label %prs_regexp.exit

prs_regexp.exit.thread:                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %setup_ext_callout_list_values.exit

prs_regexp.exit:                                  ; preds = %bb.c
  %i.ah = call fastcc i32 @prs_alts(ptr noundef nonnull %0, ptr noundef %6, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not53 = icmp sgt i32 %i.ah, -1
  br i1 %.not53, label %bb.d, label %setup_ext_callout_list_values.exit

bb.d:                                             ; preds = %prs_regexp.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !134
  %i.ak = and i32 %i.aj, 1
  %.not54 = icmp eq i32 %i.ak, 0
  br i1 %.not54, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 84
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !135
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %0, align 8, !tbaa !110
  %calloc.i.i.i.i = call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 9 uses
  %i.am = icmp eq ptr %calloc.i.i.i.i, null
  br i1 %i.am, label %setup_ext_callout_list_values.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 5, ptr %calloc.i.i.i.i, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 36
  store i32 -1, ptr %i.an, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 40
  store i32 1, ptr %i.ao, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %calloc.i.i.i.i, i64 16
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !135 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ar, 0
  br i1 %.not.i.i, label %onig_node_free.exit.i, label %bb.g

onig_node_free.exit.i:                            ; preds = %bb.f
  call fastcc void @node_free_body(ptr noundef nonnull %calloc.i.i.i.i), !inline_history !101
  call void @free(ptr noundef nonnull %calloc.i.i.i.i) #26, !inline_history !101
  br label %setup_ext_callout_list_values.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !136 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.av = select i1 %.not9.i.i, ptr %i.au, ptr %i.at
  store ptr %calloc.i.i.i.i, ptr %i.av, align 8, !tbaa !138
  store ptr %calloc.i.i.i.i, ptr %0, align 8, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.aw = phi i32 [ %.pre, %._crit_edge ], [ %i.ar, %bb.g ]
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !213
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 5 uses
  %.not56 = icmp eq ptr %i.ay, null
  br i1 %.not56, label %setup_ext_callout_list_values.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !91 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %setup_ext_callout_list_values.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bd, null
  br i1 %.not.i58, label %.lr.ph48.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = call i32 @onig_st_foreach(ptr noundef nonnull %i.bd, ptr noundef nonnull @i_callout_callout_list_set, i64 noundef %i.be) #26 ; 0 uses
end_hunk_1
