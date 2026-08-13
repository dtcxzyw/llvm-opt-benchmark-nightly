inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@i_names:bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.s, ptr %i.t, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @onig_renumber_name_table(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.b, ptr noundef nonnull @i_renumber_name, i64 noundef %i.c) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @i_renumber_name(i64 %0, i64 noundef %1, i64 noundef %2) #11 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  store i32 %i.l, ptr %i.h, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !43
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.loopexit, !llvm.loop !52

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.d, 1
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %i.b, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !50
  store i32 %i.u, ptr %i.q, align 8, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @onig_name_to_group_numbers(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %name_find.exit.thread, label %name_find.exit

name_find.exit.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.f

name_find.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !14
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i32 @rb_st_lookup(ptr noundef nonnull %.val, i64 noundef %i.d, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.f = icmp eq ptr %.pre.i, null
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %name_find.exit
  %i.g = getelementptr i8, ptr %.pre.i, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  switch i32 %i.h, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !53
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.pre.i, i64 24
  store ptr %i.i, ptr %3, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.pre.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  store ptr %i.k, ptr %3, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %name_find.exit.thread, %name_find.exit
  %.0 = phi i32 [ -217, %name_find.exit.thread ], [ -217, %name_find.exit ], [ %i.h, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @onig_name_to_backref_number(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %name_find.exit.thread.i, label %name_find.exit.i

name_find.exit.thread.i:                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %onig_name_to_group_numbers.exit.thread

name_find.exit.i:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !14
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call i32 @rb_st_lookup(ptr noundef nonnull %.val.i, i64 noundef %i.d, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.f = icmp eq ptr %.pre.i.i, null
  br i1 %i.f, label %onig_name_to_group_numbers.exit.thread, label %bb.b

bb.b:                                             ; preds = %name_find.exit.i
  %i.g = getelementptr i8, ptr %.pre.i.i, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43   ; 6 uses
  switch i32 %i.h, label %onig_name_to_group_numbers.exit [
    i32 0, label %onig_name_to_group_numbers.exit.thread
    i32 1, label %onig_name_to_group_numbers.exit.thread25.thread32
  ]

onig_name_to_group_numbers.exit.thread25.thread32: ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.pre.i.i, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit:                  ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.pre.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = icmp slt i32 %i.h, 0
  br i1 %i.m, label %onig_name_to_group_numbers.exit.thread, label %onig_name_to_group_numbers.exit.thread25

onig_name_to_group_numbers.exit.thread25:         ; preds = %onig_name_to_group_numbers.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge, label %.preheader

onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge: ; preds = %onig_name_to_group_numbers.exit.thread25
  %.pre = zext nneg i32 %i.h to i64
  br label %.loopexit

.preheader:                                       ; preds = %onig_name_to_group_numbers.exit.thread25
  %i.n = getelementptr i8, ptr %3, i64 8
  %i.o = zext nneg i32 %i.h to i64                ; 3 uses
  %.not40 = icmp eq i32 %i.h, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !54
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i64 %indvars.iv39, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv39 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %5 = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.r = load i32, ptr %5, align 4, !tbaa !7      ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57
  %.not18 = icmp eq i64 %i.u, -1
  br i1 %.not18, label %bb.c, label %onig_name_to_group_numbers.exit.thread, !llvm.loop !56

.loopexit:                                        ; preds = %bb.c, %.preheader, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge ], [ %i.o, %.preheader ], [ %i.o, %bb.c ]
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit.thread:           ; preds = %.lr.ph, %bb.b, %name_find.exit.i, %name_find.exit.thread.i, %onig_name_to_group_numbers.exit, %.loopexit, %onig_name_to_group_numbers.exit.thread25.thread32
  %.0 = phi i32 [ %i.x, %.loopexit ], [ %i.h, %onig_name_to_group_numbers.exit ], [ %i.j, %onig_name_to_group_numbers.exit.thread25.thread32 ], [ -11, %bb.b ], [ -217, %name_find.exit.i ], [ -217, %name_find.exit.thread.i ], [ %i.r, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @onig_noname_group_capture_is_active(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %onig_number_of_names.exit.thread, label %onig_number_of_names.exit

onig_number_of_names.exit:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %onig_number_of_names.exit.thread

bb.c:                                             ; preds = %onig_number_of_names.exit
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %i.n = and i32 %i.m, 128
  %.not4 = icmp ne i32 %i.n, 0
  %i.o = and i32 %i.b, 256
  %.not5 = icmp eq i32 %i.o, 0
  %or.cond = and i1 %.not5, %.not4
  br i1 %or.cond, label %bb.d, label %onig_number_of_names.exit.thread

onig_number_of_names.exit.thread:                 ; preds = %bb.b, %bb.c, %onig_number_of_names.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %onig_number_of_names.exit.thread
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %onig_number_of_names.exit.thread ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @onig_node_free(ptr noundef captures(address) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.029 = phi ptr [ %i.k, %bb.e ], [ %0, %bb.a ]  ; 13 uses
  %i.b = load i32, ptr %.029, align 8, !tbaa !13
  switch i32 %i.b, label %bbuf_free.exit [
    i32 0, label %bb.b
    i32 8, label %bb.e
    i32 9, label %bb.e
    i32 1, label %bb.f
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr i8, ptr %.029, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bbuf_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.029, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %.not19 = icmp eq ptr %i.f, null
  %i.g = getelementptr i8, ptr %.029, i64 32
  %.not20 = icmp eq ptr %i.f, %i.g
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %bbuf_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #25
  br label %bbuf_free.exit

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.h = getelementptr i8, ptr %.029, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  tail call void @onig_node_free(ptr noundef %i.i)
  %i.j = getelementptr i8, ptr %.029, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  tail call void @free(ptr noundef nonnull %.029) #25
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.029, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bbuf_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.o) #25
  tail call void @free(ptr noundef nonnull %i.n) #25
  br label %bbuf_free.exit

bb.h:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %.029, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  tail call void @onig_node_free(ptr noundef %i.q)
  br label %bbuf_free.exit

bb.i:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.029, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  tail call void @onig_node_free(ptr noundef %i.s)
  br label %bbuf_free.exit

bb.j:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %.029, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.u) #25
  br label %bbuf_free.exit

bb.k:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %.029, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  tail call void @onig_node_free(ptr noundef %i.w)
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %.lr.ph, %bb.g, %bb.f, %bb.b, %bb.c, %bb.d, %bb.k, %bb.j, %bb.i, %bb.h
  tail call void @free(ptr noundef nonnull %.029) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a, %bbuf_free.exit
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @bbuf_free(ptr noundef captures(address_is_null) %0) unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.a) #25
  tail call void @free(ptr noundef nonnull %0) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !13
  br label %node_new_list.exit

node_new_list.exit:                               ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_list_add(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %onig_node_new_list.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %i.a, i64 16
end_hunk_0
