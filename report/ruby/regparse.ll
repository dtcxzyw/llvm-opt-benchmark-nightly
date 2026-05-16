inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@i_names:bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.a, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = getelementptr i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = tail call i32 %i.c(ptr noundef %i.d, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #25 ; 2 uses
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
define dso_local noundef i32 @onig_renumber_name_table(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
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
define dso_local noundef i32 @onig_name_to_group_numbers(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #5 {
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
define dso_local i32 @onig_name_to_backref_number(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #5 {
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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
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
  %i.r = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57
  %.not18 = icmp eq i64 %i.v, -1
  br i1 %.not18, label %bb.c, label %onig_name_to_group_numbers.exit.thread, !llvm.loop !56

.loopexit:                                        ; preds = %bb.c, %.preheader, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge ], [ %i.o, %.preheader ], [ %i.o, %bb.c ]
  %i.w = getelementptr [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit.thread:           ; preds = %.lr.ph, %bb.b, %name_find.exit.i, %name_find.exit.thread.i, %onig_name_to_group_numbers.exit, %.loopexit, %onig_name_to_group_numbers.exit.thread25.thread32
  %.0 = phi i32 [ %i.y, %.loopexit ], [ %i.h, %onig_name_to_group_numbers.exit ], [ %i.j, %onig_name_to_group_numbers.exit.thread25.thread32 ], [ -11, %bb.b ], [ -217, %name_find.exit.i ], [ -217, %name_find.exit.thread.i ], [ %i.s, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @onig_noname_group_capture_is_active(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
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

end_hunk_0
begin_hunk_1_@parse_char_class:bb.a

bb.eb:                                            ; preds = %bb.ea
  %i.nr = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ns = call fastcc i32 @next_state_val(ptr noundef %.0303.ph, ptr noundef %.1295.ph, ptr noundef %i.a, i32 noundef 0, ptr noundef %i.e, i32 noundef 0, i32 noundef %i.nr, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %5) ; 2 uses
  %.not384 = icmp eq i32 %i.ns, 0
  br i1 %.not384, label %bb.ec, label %parse_posix_bracket.exit.thread

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  store i32 3, ptr %i.c, align 4, !tbaa !7
  %.not385 = icmp eq ptr %.0300.ph, null
  br i1 %.not385, label %bb.ej, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nt = call fastcc i32 @and_cclass(ptr noundef nonnull %.0300.ph, ptr noundef %.0303.ph, ptr noundef nonnull %5) ; 2 uses
  %.not387 = icmp eq i32 %i.nt, 0
  br i1 %.not387, label %bb.ee, label %parse_posix_bracket.exit.thread

bb.ee:                                            ; preds = %bb.ed
  %i.nu = getelementptr i8, ptr %.0303.ph, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !63 ; 3 uses
  %.not.i430 = icmp eq ptr %i.nv, null
  br i1 %.not.i430, label %bbuf_free.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !66
  call void @free(ptr noundef %i.nw) #25
  call void @free(ptr noundef nonnull %i.nv) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %bb.ee, %bb.ef
  %.not388 = icmp eq ptr %.1295.ph, null
  br i1 %.not388, label %bbuf_free.exit432, label %bb.eg

bb.eg:                                            ; preds = %bbuf_free.exit
  %i.nx = call fastcc i32 @and_cclass(ptr noundef %.0291.ph, ptr noundef %.1295.ph, ptr noundef nonnull %5) ; 2 uses
  %.not389 = icmp eq i32 %i.nx, 0
  br i1 %.not389, label %bb.eh, label %parse_posix_bracket.exit.thread

bb.eh:                                            ; preds = %bb.eg
  %i.ny = getelementptr i8, ptr %.1295.ph, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !63 ; 3 uses
  %.not.i431 = icmp eq ptr %i.nz, null
  br i1 %.not.i431, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !66
  call void @free(ptr noundef %i.oa) #25
  call void @free(ptr noundef nonnull %i.nz) #25
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ec
  %.not386 = icmp eq ptr %.1295.ph, null
  br i1 %.not386, label %bbuf_free.exit432, label %bb.ek

bbuf_free.exit432:                                ; preds = %bb.ej, %bbuf_free.exit
  %.1304 = phi ptr [ %.0303.ph, %bbuf_free.exit ], [ %6, %bb.ej ] ; 2 uses
  %.1301 = phi ptr [ %.0300.ph, %bbuf_free.exit ], [ %.0303.ph, %bb.ej ]
  %i.ob = getelementptr i8, ptr %.1304, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ob, i8 0, i64 44, i1 false)
  br label %.thread491

bb.ek:                                            ; preds = %bb.ej, %bb.eh, %bb.ei
  %.1304.ph = phi ptr [ %.0303.ph, %bb.ei ], [ %.0303.ph, %bb.eh ], [ %6, %bb.ej ] ; 2 uses
  %.1301.ph = phi ptr [ %.0300.ph, %bb.ei ], [ %.0300.ph, %bb.eh ], [ %.0303.ph, %bb.ej ]
  %.2296.ph = phi ptr [ %.1295.ph, %bb.ei ], [ %.1295.ph, %bb.eh ], [ %7, %bb.ej ] ; 2 uses
  %.1292.ph = phi ptr [ %.0291.ph, %bb.ei ], [ %.0291.ph, %bb.eh ], [ %.1295.ph, %bb.ej ]
  %i.oc = getelementptr i8, ptr %.1304.ph, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.oc, i8 0, i64 44, i1 false)
  %i.od = getelementptr i8, ptr %.2296.ph, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.od, i8 0, i64 44, i1 false)
  br label %.thread491

bb.el:                                            ; preds = %bb.ap
  %.not406 = icmp eq i32 %.6314, 0
  br i1 %.not406, label %.thread491, label %bb.em

bb.em:                                            ; preds = %.thread518, %bb.el
  %i.oe = load i32, ptr %2, align 8, !tbaa !99
  br label %bb.w, !llvm.loop !178

.thread491:                                       ; preds = %bb.el, %bbuf_free.exit432, %bb.ek, %.thread478, %next_state_class.exit
  %.2293513 = phi ptr [ %.0291.ph, %next_state_class.exit ], [ %.0291.ph, %bbuf_free.exit432 ], [ %.1292.ph, %bb.ek ], [ %.0291.ph, %.thread478 ], [ %.0291.ph, %bb.el ]
  %.3297511 = phi ptr [ %.1295.ph, %next_state_class.exit ], [ null, %bbuf_free.exit432 ], [ %.2296.ph, %bb.ek ], [ %.1295.ph, %.thread478 ], [ %.1295.ph, %bb.el ] ; 2 uses
  %.2302509 = phi ptr [ %.0300.ph, %next_state_class.exit ], [ %.1301, %bbuf_free.exit432 ], [ %.1301.ph, %bb.ek ], [ %.0300.ph, %.thread478 ], [ %.0300.ph, %bb.el ]
  %.2305507 = phi ptr [ %.0303.ph, %next_state_class.exit ], [ %.1304, %bbuf_free.exit432 ], [ %.1304.ph, %bb.ek ], [ %.0303.ph, %.thread478 ], [ %.0303.ph, %bb.el ] ; 2 uses
  %.1325503 = phi i32 [ %.0324.ph, %next_state_class.exit ], [ 1, %bbuf_free.exit432 ], [ 1, %bb.ek ], [ %.0324.ph, %.thread478 ], [ %.0324.ph, %bb.el ]
  %i.of = call fastcc i32 @fetch_token_in_cc(ptr noundef %2, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 3 uses
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %parse_posix_bracket.exit.thread, label %.outer, !llvm.loop !178

bb.en:                                            ; preds = %bb.w
  %i.oh = load i32, ptr %i.c, align 4, !tbaa !7
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.oj = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ok = call fastcc i32 @next_state_val(ptr noundef %.0303.ph, ptr noundef %.1295.ph, ptr noundef %i.a, i32 noundef 0, ptr noundef %i.e, i32 noundef 0, i32 noundef %i.oj, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %5) ; 2 uses
  %.not371 = icmp eq i32 %i.ok, 0
  br i1 %.not371, label %bb.ep, label %parse_posix_bracket.exit.thread

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.not372 = icmp eq ptr %.0300.ph, null
  br i1 %.not372, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ol = call fastcc i32 @and_cclass(ptr noundef nonnull %.0300.ph, ptr noundef %.0303.ph, ptr noundef nonnull %5) ; 2 uses
  %.not373 = icmp eq i32 %i.ol, 0
  br i1 %.not373, label %bb.er, label %parse_posix_bracket.exit.thread

bb.er:                                            ; preds = %bb.eq
  %i.om = getelementptr i8, ptr %.0303.ph, i64 40
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !63
  call fastcc void @bbuf_free(ptr noundef %i.on)
  %.not374 = icmp eq ptr %.1295.ph, null
  br i1 %.not374, label %.thread537, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.oo = call fastcc i32 @and_cclass(ptr noundef %.0291.ph, ptr noundef %.1295.ph, ptr noundef nonnull %5) ; 2 uses
  %.not375 = icmp eq i32 %i.oo, 0
  br i1 %.not375, label %bb.et, label %parse_posix_bracket.exit.thread

bb.et:                                            ; preds = %bb.es
  %i.op = getelementptr i8, ptr %.1295.ph, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !63
  call fastcc void @bbuf_free(ptr noundef %i.oq)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %.3306 = phi ptr [ %.0300.ph, %bb.et ], [ %.0303.ph, %bb.ep ] ; 5 uses
  %.4298 = phi ptr [ %.0291.ph, %bb.et ], [ %.1295.ph, %bb.ep ] ; 5 uses
  %i.or = getelementptr i8, ptr %.3306, i64 4     ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !145 ; 2 uses
  %.not377 = icmp eq ptr %.4298, null             ; 2 uses
  br i1 %.not376439444, label %bb.ex, label %bb.ev

.thread537:                                       ; preds = %bb.er
  %i.ot = getelementptr i8, ptr %.0300.ph, i64 4  ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !145 ; 2 uses
  br i1 %.not376439444, label %.thread555, label %.thread550

.thread555:                                       ; preds = %.thread537
  %i.ov = and i32 %i.ou, -2
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !145
  br label %bb.ez

.thread550:                                       ; preds = %.thread537
  %i.ow = or i32 %i.ou, 1
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !145
  br label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.ox = or i32 %i.os, 1
  store i32 %i.ox, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.oy = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !145
  %i.pa = or i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !145
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.pb = and i32 %i.os, -2
  store i32 %i.pb, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pc = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !145
  %i.pe = and i32 %i.pd, -2
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !145
  br label %bb.ez

bb.ez:                                            ; preds = %.thread555, %.thread550, %bb.ex, %bb.ey, %bb.ev, %bb.ew
  %.4298546 = phi ptr [ null, %bb.ex ], [ %.4298, %bb.ey ], [ null, %bb.ev ], [ %.4298, %bb.ew ], [ null, %.thread550 ], [ null, %.thread555 ]
  %.3306543 = phi ptr [ %.3306, %bb.ex ], [ %.3306, %bb.ey ], [ %.3306, %bb.ev ], [ %.3306, %bb.ew ], [ %.0300.ph, %.thread550 ], [ %.0300.ph, %.thread555 ] ; 12 uses
  %i.pf = getelementptr i8, ptr %.3306543, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !145
  %i.ph = and i32 %i.pg, 1
  %.not379 = icmp eq i32 %i.ph, 0
  br i1 %.not379, label %.thread565, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.pi = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !60
  %i.pl = and i32 %i.pk, 1048576
  %.not380 = icmp eq i32 %i.pl, 0
  br i1 %.not380, label %.thread565, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pm = getelementptr i8, ptr %.3306543, i64 40 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !63
  %.not = icmp eq ptr %i.pn, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.fb
  %i.po = getelementptr i8, ptr %.3306543, i64 8
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !7
  %.not381 = icmp eq i32 %i.pp, 0
  br i1 %.not381, label %bb.fc, label %.loopexit

bb.fc:                                            ; preds = %.preheader
  %i.pq = getelementptr i8, ptr %.3306543, i64 12
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !7
  %.not381.1 = icmp eq i32 %i.pr, 0
  br i1 %.not381.1, label %bb.fd, label %.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.ps = getelementptr i8, ptr %.3306543, i64 16
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !7
  %.not381.2 = icmp eq i32 %i.pt, 0
  br i1 %.not381.2, label %bb.fe, label %.loopexit

bb.fe:                                            ; preds = %bb.fd
  %i.pu = getelementptr i8, ptr %.3306543, i64 20
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !7
  %.not381.3 = icmp eq i32 %i.pv, 0
  br i1 %.not381.3, label %bb.ff, label %.loopexit

bb.ff:                                            ; preds = %bb.fe
  %i.pw = getelementptr i8, ptr %.3306543, i64 24
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !7
  %.not381.4 = icmp eq i32 %i.px, 0
  br i1 %.not381.4, label %bb.fg, label %.loopexit

bb.fg:                                            ; preds = %bb.ff
  %i.py = getelementptr i8, ptr %.3306543, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !7
  %.not381.5 = icmp eq i32 %i.pz, 0
  br i1 %.not381.5, label %bb.fh, label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  %i.qa = getelementptr i8, ptr %.3306543, i64 32
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !7
  %.not381.6 = icmp eq i32 %i.qb, 0
  br i1 %.not381.6, label %bb.fi, label %.loopexit

bb.fi:                                            ; preds = %bb.fh
  %i.qc = getelementptr i8, ptr %.3306543, i64 36
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !7
  %.not381.7 = icmp eq i32 %i.qd, 0
  br i1 %.not381.7, label %.thread565, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fb
  %i.qe = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 88
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !72
  %i.qh = call i32 %i.qg(i32 noundef 10, i32 noundef 0, ptr noundef %i.qe) #25
  %.not382 = icmp eq i32 %i.qh, 0
  br i1 %.not382, label %.thread565, label %bb.fj

bb.fj:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !166
  %i.ql = call i32 %i.qk(i32 noundef 10, ptr noundef %i.qi) #25
  %i.qm = icmp eq i32 %i.ql, 1
  br i1 %i.qm, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  %i.qn = getelementptr i8, ptr %.3306543, i64 8  ; 3 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !7  ; 2 uses
  %i.qp = and i32 %i.qo, 1024
  %.not383 = icmp eq i32 %i.qp, 0
  br i1 %.not383, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @CC_DUP_WARN(ptr noundef nonnull %5)
  %.pre678 = load i32, ptr %i.qn, align 8, !tbaa !7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qq = phi i32 [ %.pre678, %bb.fl ], [ %i.qo, %bb.fk ]
  %i.qr = or i32 %i.qq, 1024
  store i32 %i.qr, ptr %i.qn, align 8, !tbaa !7
  br label %.thread565

bb.fn:                                            ; preds = %bb.fj
  %i.qs = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.pm, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %parse_posix_bracket.exit.thread, label %.thread565

.thread565:                                       ; preds = %bb.fi, %bb.fm, %.loopexit, %bb.fn, %bb.fa, %bb.ez
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !69
  store ptr %i.qu, ptr %3, align 8, !tbaa !69
  %i.qv = load i32, ptr %i.i, align 8, !tbaa !113
  %i.qw = add i32 %i.qv, -1
  store i32 %i.qw, ptr %i.i, align 8, !tbaa !113
  br label %bbuf_free.exit436

parse_posix_bracket.exit.thread.loopexit:         ; preds = %bb.w
  br label %parse_posix_bracket.exit.thread

parse_posix_bracket.exit.thread:                  ; preds = %bb.cd, %bb.aw, %bb.dv, %bb.dk, %CC_ESC_WARN.exit427, %bb.z, %bb.ds, %bb.dl, %bb.dh, %parse_posix_bracket.exit, %bb.ap, %bb.ct, %.thread465, %bb.cr, %.thread478, %.thread491, %bb.eg, %bb.ed, %bb.eb, %bb.w, %parse_posix_bracket.exit.thread.loopexit, %bb.fn, %.thread448, %bb.es, %bb.eq, %bb.eo
  %.4307 = phi ptr [ %.0303.ph, %bb.w ], [ %.0303.ph, %bb.eo ], [ %.0303.ph, %bb.eq ], [ %.3306543, %bb.fn ], [ %.0303.ph, %.thread448 ], [ %.0300.ph, %bb.es ], [ %.0303.ph, %bb.cd ], [ %.0303.ph, %bb.aw ], [ %.0303.ph, %bb.dv ], [ %.0303.ph, %bb.dk ], [ %.0303.ph, %CC_ESC_WARN.exit427 ], [ %.0303.ph, %bb.z ], [ %.0303.ph, %bb.ds ], [ %.0303.ph, %bb.dl ], [ %.0303.ph, %bb.dh ], [ %.0303.ph, %parse_posix_bracket.exit ], [ %.0303.ph, %bb.ap ], [ %.0303.ph, %bb.eb ], [ %.0303.ph, %bb.ed ], [ %.0303.ph, %bb.eg ], [ %.2305507, %.thread491 ], [ %.0303.ph, %.thread478 ], [ %.0303.ph, %bb.cr ], [ %.0303.ph, %.thread465 ], [ %.0303.ph, %bb.ct ], [ %.0303.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 2 uses
  %.5299 = phi ptr [ %.1295.ph, %bb.w ], [ %.1295.ph, %bb.eo ], [ %.1295.ph, %bb.eq ], [ %.4298546, %bb.fn ], [ %.1295.ph, %.thread448 ], [ %.1295.ph, %bb.es ], [ %.1295.ph, %bb.cd ], [ %.1295.ph, %bb.aw ], [ %.1295.ph, %bb.dv ], [ %.1295.ph, %bb.dk ], [ %.1295.ph, %CC_ESC_WARN.exit427 ], [ %.1295.ph, %bb.z ], [ %.1295.ph, %bb.ds ], [ %.1295.ph, %bb.dl ], [ %.1295.ph, %bb.dh ], [ %.1295.ph, %parse_posix_bracket.exit ], [ %.1295.ph, %bb.ap ], [ %.1295.ph, %bb.eb ], [ %.1295.ph, %bb.ed ], [ %.1295.ph, %bb.eg ], [ %.3297511, %.thread491 ], [ %.1295.ph, %.thread478 ], [ %.1295.ph, %bb.cr ], [ %.1295.ph, %.thread465 ], [ %.1295.ph, %bb.ct ], [ %.1295.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 3 uses
  %.15 = phi i32 [ -11, %bb.w ], [ %i.ok, %bb.eo ], [ %i.ol, %bb.eq ], [ %i.qs, %bb.fn ], [ %.5.ph, %.thread448 ], [ %i.oo, %bb.es ], [ -121, %bb.aw ], [ %i.ej, %bb.ap ], [ %i.cd, %bb.z ], [ %.0126.i, %parse_posix_bracket.exit ], [ -121, %bb.cd ], [ %i.mf, %bb.dh ], [ %i.ef, %CC_ESC_WARN.exit427 ], [ %i.mk, %bb.dl ], [ %i.mz, %bb.ds ], [ -112, %bb.dk ], [ -112, %bb.dv ], [ %i.ns, %bb.eb ], [ %i.nt, %bb.ed ], [ %i.nx, %bb.eg ], [ %i.of, %.thread491 ], [ %.9, %.thread478 ], [ %i.kv, %bb.cr ], [ -110, %.thread465 ], [ %i.kz, %bb.ct ], [ -103, %parse_posix_bracket.exit.thread.loopexit ] ; 4 uses
  %i.qx = load ptr, ptr %0, align 8, !tbaa !90
  %.not407 = icmp eq ptr %.4307, %i.qx
  br i1 %.not407, label %bbuf_free.exit434, label %bb.fo

bb.fo:                                            ; preds = %parse_posix_bracket.exit.thread
  %i.qy = getelementptr i8, ptr %.4307, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !63 ; 3 uses
  %.not.i433 = icmp eq ptr %i.qz, null
  br i1 %.not.i433, label %bbuf_free.exit434, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !66
  call void @free(ptr noundef %i.ra) #25
  call void @free(ptr noundef nonnull %i.qz) #25
  br label %bbuf_free.exit434

bbuf_free.exit434:                                ; preds = %bb.fp, %bb.fo, %parse_posix_bracket.exit.thread
  %.not408 = icmp eq ptr %.5299, null
  br i1 %.not408, label %bbuf_free.exit436, label %bb.fq

bb.fq:                                            ; preds = %bbuf_free.exit434
  %i.rb = load ptr, ptr %1, align 8, !tbaa !90
  %.not409 = icmp eq ptr %.5299, %i.rb
  br i1 %.not409, label %bbuf_free.exit436, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rc = getelementptr i8, ptr %.5299, i64 40
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !63 ; 3 uses
  %.not.i435 = icmp eq ptr %i.rd, null
  br i1 %.not.i435, label %bbuf_free.exit436, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !66
  call void @free(ptr noundef %i.re) #25
  call void @free(ptr noundef nonnull %i.rd) #25
  br label %bbuf_free.exit436

bbuf_free.exit436:                                ; preds = %bb.q, %bb.df, %bb.dd, %bb.cj, %bb.cg, %fetch_char_property_to_ctype.exit.thread, %bb.h, %bb.fs, %bb.fr, %node_new_cclass.exit415.thread, %node_new_cclass.exit.thread, %bbuf_free.exit434, %bb.fq, %bb.f, %bb.a, %.thread565
  %.4 = phi i32 [ %.0270, %bb.f ], [ -16, %bb.a ], [ %.15, %bb.fs ], [ -5, %node_new_cclass.exit.thread ], [ -102, %bb.h ], [ -5, %node_new_cclass.exit415.thread ], [ 0, %.thread565 ], [ %.046.i, %fetch_char_property_to_ctype.exit.thread ], [ %i.jk, %bb.cj ], [ %.15, %bbuf_free.exit434 ], [ %.15, %bb.fq ], [ %.15, %bb.fr ], [ %i.mb, %bb.dd ], [ %i.md, %bb.df ], [ %i.jf, %bb.cg ], [ -102, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_onechar_cclass(ptr noundef readonly captures(none) %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not40 = icmp eq ptr %i.b, null
  br i1 %.not40, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 6 uses
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.j, 256
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = lshr i32 %i.j, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = and i32 %i.j, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not41 = icmp eq i32 %i.v, 0
  %spec.store.select = select i1 %.not41, i32 %i.j, i32 -1
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.b
  %.232 = phi i32 [ -1, %bb.b ], [ %i.j, %bb.e ], [ %spec.store.select, %bb.f ] ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 3 uses
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = icmp samesign ult i32 %i.y, 2
  %i.aa = icmp eq i32 %.232, -1
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ab = add i32 %i.x, -1
  %i.ac = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ab)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %.5.ph = phi i32 [ %.232, %.thread ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 3 uses
  %.not43.1 = icmp eq i32 %i.ae, 0
  br i1 %.not43.1, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.ag = icmp samesign ult i32 %i.af, 2
  %i.ah = icmp eq i32 %.5.ph, -1
  %or.cond.1 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.1, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = add i32 %i.ae, -1
  %i.aj = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ai)
  %i.ak = or disjoint i32 %i.aj, 32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.5.ph.1 = phi i32 [ %.5.ph, %bb.i ], [ %i.ak, %bb.k ] ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 3 uses
  %.not43.2 = icmp eq i32 %i.am, 0
  br i1 %.not43.2, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.am)
  %i.ao = icmp samesign ult i32 %i.an, 2
  %i.ap = icmp eq i32 %.5.ph.1, -1
  %or.cond.2 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.2, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.aq = add i32 %i.am, -1
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.aq)
  %i.as = or disjoint i32 %i.ar, 64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.5.ph.2 = phi i32 [ %.5.ph.1, %bb.l ], [ %i.as, %bb.n ] ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 3 uses
  %.not43.3 = icmp eq i32 %i.au, 0
  br i1 %.not43.3, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.au)
  %i.aw = icmp samesign ult i32 %i.av, 2
  %i.ax = icmp eq i32 %.5.ph.2, -1
  %or.cond.3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.3, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %i.au, -1
  %i.az = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ay)
  %i.ba = or disjoint i32 %i.az, 96
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.5.ph.3 = phi i32 [ %.5.ph.2, %bb.o ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7  ; 3 uses
  %.not43.4 = icmp eq i32 %i.bc, 0
  br i1 %.not43.4, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bc)
  %i.be = icmp samesign ult i32 %i.bd, 2
  %i.bf = icmp eq i32 %.5.ph.3, -1
  %or.cond.4 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond.4, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bg = add i32 %i.bc, -1
  %i.bh = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.bg)
  %i.bi = or disjoint i32 %i.bh, 128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.5.ph.4 = phi i32 [ %.5.ph.3, %bb.r ], [ %i.bi, %bb.t ] ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 3 uses
  %.not43.5 = icmp eq i32 %i.bk, 0
  br i1 %.not43.5, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bk)
  %i.bm = icmp samesign ult i32 %i.bl, 2
  %i.bn = icmp eq i32 %.5.ph.4, -1
  %or.cond.5 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.5, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bo = add i32 %i.bk, -1
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.bo)
  %i.bq = or disjoint i32 %i.bp, 160
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.5.ph.5 = phi i32 [ %.5.ph.4, %bb.u ], [ %i.bq, %bb.w ] ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 32
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 3 uses
  %.not43.6 = icmp eq i32 %i.bs, 0
  br i1 %.not43.6, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bs)
  %i.bu = icmp samesign ult i32 %i.bt, 2
  %i.bv = icmp eq i32 %.5.ph.5, -1
  %or.cond.6 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.6, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.bw = add i32 %i.bs, -1
  %i.bx = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.bw)
  %i.by = or disjoint i32 %i.bx, 192
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.5.ph.6 = phi i32 [ %.5.ph.5, %bb.x ], [ %i.by, %bb.z ] ; 3 uses
  %i.bz = getelementptr i8, ptr %0, i64 36
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7  ; 3 uses
  %.not43.7 = icmp eq i32 %i.ca, 0
  br i1 %.not43.7, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ca)
  %i.cc = icmp samesign ult i32 %i.cb, 2
  %i.cd = icmp eq i32 %.5.ph.6, -1
  %or.cond.7 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.7, label %.thread64, label %.loopexit

.thread64:                                        ; preds = %bb.ab
  %i.ce = add i32 %i.ca, -1
  %i.cf = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ce)
  %i.cg = or disjoint i32 %i.cf, 224
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %.not42 = icmp eq i32 %.5.ph.6, -1
  br i1 %.not42, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.thread64, %bb.ac
  %.5.ph.767 = phi i32 [ %i.cg, %.thread64 ], [ %.5.ph.6, %bb.ac ]
  store i32 %.5.ph.767, ptr %1, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.m, %bb.p, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.d, %bb.c, %bb.ac, %bb.a, %bb.ad
  %.4 = phi i32 [ 0, %bb.ac ], [ 0, %bb.d ], [ 1, %bb.ad ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @cclass_case_fold(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.IApplyCaseFoldArg, align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %3, ptr %4, align 8, !tbaa !147
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !152
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = getelementptr i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86
  %i.k = call i32 %i.h(i32 noundef %i.j, ptr noundef nonnull @i_apply_case_fold, ptr noundef nonnull %4, ptr noundef %i.f) #25 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !151  ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @onig_node_free(ptr noundef %i.l)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !90
  %i.n = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @onig_node_free(ptr noundef nonnull %i.l)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 9, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store ptr %i.l, ptr %i.q, align 8, !tbaa !13
  store ptr %i.n, ptr %0, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread, %bb.b
  %.1 = phi i32 [ %i.k, %bb.b ], [ -5, %.thread ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @scan_env_add_mem_entry(ptr noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 92         ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = add i32 %i.b, 1                          ; 5 uses
  %i.d = icmp sgt i32 %i.c, 32767
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, 7
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !179  ; 2 uses
  %.not = icmp sgt i32 %i.g, %i.c
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.k, ptr noundef nonnull align 1 dereferenceable(64) %i.m, i64 noundef 64, i1 noundef false) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = shl i32 %i.g, 1                          ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.p) #27 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ 16, %bb.f ], [ %i.n, %bb.g ]  ; 3 uses
  %.0 = phi ptr [ %i.k, %bb.f ], [ %i.q, %bb.g ]  ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.02834 = add i32 %i.s, 1                       ; 3 uses
  %i.t = icmp slt i32 %.02834, %.026
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.u = sext i32 %.02834 to i64
  %i.v = shl nsw i64 %i.u, 3
  %scevgep = getelementptr i8, ptr %.0, i64 %i.v
  %i.w = add i32 %.026, -2
  %i.x = sub i32 %i.w, %i.s
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.aa, i1 false), !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  store ptr %.0, ptr %i.h, align 8, !tbaa !93
  store i32 %.026, ptr %i.f, align 4, !tbaa !179
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %i.c, %bb.c ], [ %.02834, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.i
  %.027 = phi i32 [ -5, %bb.e ], [ -210, %bb.a ], [ %.pre-phi, %bb.i ], [ -5, %bb.g ]
  ret i32 %.027
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -219, 1) i32 @name_add(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr noundef captures(none) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@add_ctype_to_cc_by_range:bb.a

.lr.ph:                                           ; preds = %CC_DUP_WARN.exit127
  %exitcond.not = icmp eq i32 %i.co, %umax
  br i1 %exitcond.not, label %.loopexit141, label %.lr.ph13, !llvm.loop !198

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.110515312 = phi i32 [ %i.co, %.lr.ph ], [ %.0155, %.lr.ph.preheader ] ; 3 uses
  %i.bt = sdiv i32 %.110515312, 32
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %i.d, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = and i32 %.110515312, 31
  %i.by = shl nuw i32 1, %i.bx                    ; 2 uses
  %i.bz = and i32 %i.bw, %i.by
  %.not116 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr @onig_warn, align 8
  %i.cb = icmp eq ptr %i.ca, @onig_null_warn
  %or.cond136 = select i1 %.not116, i1 true, i1 %i.cb
  br i1 %or.cond136, label %CC_DUP_WARN.exit127, label %bb.j

bb.j:                                             ; preds = %.lr.ph13
  %i.cc = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !57
  %i.ce = and i64 %i.cd, -5
  %.not5.i124 = icmp eq i64 %i.ce, 0
  br i1 %.not5.i124, label %CC_DUP_WARN.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !60
  %i.ci = and i32 %i.ch, 67108864
  %.not.i125 = icmp eq i32 %i.ci, 0
  br i1 %.not.i125, label %CC_DUP_WARN.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i32, ptr %i.f, align 4, !tbaa !137 ; 2 uses
  %i.ck = and i32 %i.cj, 67108864
  %.not4.i126 = icmp eq i32 %i.ck, 0
  br i1 %.not4.i126, label %bb.m, label %CC_DUP_WARN.exit127

bb.m:                                             ; preds = %bb.l
  %i.cl = or disjoint i32 %i.cj, 67108864
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit127

CC_DUP_WARN.exit127:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph13
  %i.cm = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.cn = or i32 %i.cm, %i.by
  store i32 %i.cn, ptr %i.bv, align 4, !tbaa !7
  %i.co = add nuw i32 %.110515312, 1              ; 3 uses
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit127, %.preheader142
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cr = shl i32 %indvars.iv.tr, 1
  %i.cs = add i32 %i.cr, 2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %4, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond191.not, label %.preheader140, label %.preheader142, !llvm.loop !199

bb.n:                                             ; preds = %.lr.ph157, %CC_DUP_WARN.exit131
  %.2156 = phi i32 [ %.0.lcssa, %.lr.ph157 ], [ %i.ds, %CC_DUP_WARN.exit131 ] ; 3 uses
  %i.cx = sdiv i32 %.2156, 32
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.bq, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = and i32 %.2156, 31
  %i.dc = shl nuw i32 1, %i.db                    ; 2 uses
  %i.dd = and i32 %i.da, %i.dc
  %.not = icmp eq i32 %i.dd, 0
  %i.de = load ptr, ptr @onig_warn, align 8
  %i.df = icmp eq ptr %i.de, @onig_null_warn
  %or.cond138 = select i1 %.not, i1 true, i1 %i.df
  br i1 %or.cond138, label %CC_DUP_WARN.exit131, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !57
  %i.di = and i64 %i.dh, -5
  %.not5.i128 = icmp eq i64 %i.di, 0
  br i1 %.not5.i128, label %CC_DUP_WARN.exit131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = load ptr, ptr %i.br, align 8, !tbaa !98
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !60
  %i.dm = and i32 %i.dl, 67108864
  %.not.i129 = icmp eq i32 %i.dm, 0
  br i1 %.not.i129, label %CC_DUP_WARN.exit131, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load i32, ptr %i.bs, align 4, !tbaa !137 ; 2 uses
  %i.do = and i32 %i.dn, 67108864
  %.not4.i130 = icmp eq i32 %i.do, 0
  br i1 %.not4.i130, label %bb.r, label %CC_DUP_WARN.exit131

bb.r:                                             ; preds = %bb.q
  %i.dp = or disjoint i32 %i.dn, 67108864
  store i32 %i.dp, ptr %i.bs, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit131

CC_DUP_WARN.exit131:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dq = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.dr = or i32 %i.dq, %i.dc
  store i32 %i.dr, ptr %i.cz, align 4, !tbaa !7
  %i.ds = add i32 %.2156, 1                       ; 2 uses
  %exitcond192.not = icmp eq i32 %i.ds, %3
  br i1 %exitcond192.not, label %.loopexit141, label %bb.n, !llvm.loop !200

.loopexit141:                                     ; preds = %.lr.ph.preheader, %.lr.ph, %CC_DUP_WARN.exit131, %.preheader140
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.loopexit141
  %i.dt = getelementptr i8, ptr %0, i64 40
  %wide.trip.count196 = zext nneg i32 %i.a to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph161, %bb.u
  %indvars.iv193 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next194, %bb.u ] ; 3 uses
  %.1159 = phi i32 [ %3, %.lr.ph161 ], [ %i.eg, %bb.u ] ; 2 uses
  %sext219 = shl i64 %indvars.iv193, 33
  %i.du = ashr exact i64 %sext219, 30
  %i.dv = getelementptr i8, ptr %4, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %i.dy = icmp ult i32 %.1159, %i.dx
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dz = add i32 %i.dx, -1
  %i.ea = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.dt, ptr noundef %2, i32 noundef %.1159, i32 noundef %i.dz, i32 noundef 1) ; 2 uses
  %.not118 = icmp eq i32 %i.ea, 0
  br i1 %.not118, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv193.tr = trunc i64 %indvars.iv193 to i32
  %i.eb = shl i32 %indvars.iv193.tr, 1
  %i.ec = add i32 %i.eb, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr [4 x i8], ptr %4, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = add i32 %i.ef, 1                        ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge162, label %bb.s, !llvm.loop !201

._crit_edge162:                                   ; preds = %bb.u, %.loopexit141
  %.1.lcssa = phi i32 [ %3, %.loopexit141 ], [ %i.eg, %bb.u ] ; 2 uses
  %i.eh = icmp ult i32 %.1.lcssa, 2147483647
  br i1 %i.eh, label %bb.v, label %.thread

bb.v:                                             ; preds = %._crit_edge162
  %i.ei = getelementptr i8, ptr %0, i64 40
  %i.ej = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ei, ptr noundef %2, i32 noundef %.1.lcssa, i32 noundef 2147483647, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.t, %._crit_edge168, %.lr.ph175, %bb.i, %.loopexit, %bb.v, %._crit_edge162, %bb.c
  %.1103 = phi i32 [ 0, %._crit_edge162 ], [ %i.y, %bb.c ], [ 0, %bb.i ], [ %i.ej, %bb.v ], [ 0, %.loopexit ], [ 0, %._crit_edge168 ], [ %i.bj, %.lr.ph175 ], [ %i.ea, %bb.t ]
  ret i32 %.1103
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_cclass(ptr noundef captures(address) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = and i32 %i.ap, %i.ao                    ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = and i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = and i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = and i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = and i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = and i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = and i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = and i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 4, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef 0, ptr noundef %i.t, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull %2)
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cx = call fastcc i32 @and_code_range_buf(ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond3 = and i1 %i.cy, %i.i
  br i1 %or.cond3, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.db = getelementptr i8, ptr %i.f, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47
  %i.dd = icmp sgt i32 %i.dc, 1
  %i.de = select i1 %i.dd, i32 0, i32 128
  br label %.thread.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %i.di = icmp slt i32 %i.dg, 1
  br i1 %i.di, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr i8, ptr %i.f, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.dl = icmp sgt i32 %i.dk, 1
  %i.dm = select i1 %i.dl, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.dg to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %.03350.i = phi i32 [ %i.dm, %bb.o ], [ %i.dw, %bb.s ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.dn = shl i32 %indvars.iv.tr.i, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %i.dh, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7  ; 2 uses
  %i.dt = add i32 %i.dq, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03350.i, %i.dt
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03350.i, i32 noundef %i.dt, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.du, 0
  br i1 %.not44.i, label %bb.r, label %not_code_range_buf.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dv = icmp eq i32 %i.ds, -1
  br i1 %i.dv, label %not_code_range_buf.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = add nuw i32 %i.ds, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.p, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.s, %bb.m
  %.lcssa.sink.i = phi i32 [ %i.de, %bb.m ], [ %i.dw, %bb.s ]
  %i.dx = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.q, %bb.r, %.thread.sink.split.i
  %.032.i = phi i32 [ %i.dx, %.thread.sink.split.i ], [ %i.du, %bb.q ], [ 0, %bb.r ]
  br i1 %i.da, label %bbuf_free.exit, label %bb.t

bb.t:                                             ; preds = %not_code_range_buf.exit
  %i.dy = load ptr, ptr %i.cz, align 8, !tbaa !66
  call void @free(ptr noundef %i.dy) #25
  call void @free(ptr noundef nonnull %i.cz) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.t
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bbuf_free.exit, %bb.j
  %.046 = phi i32 [ %i.cw, %bb.j ], [ %.032.i, %bbuf_free.exit ], [ %i.cx, %bb.k ] ; 3 uses
  %.not48 = icmp eq i32 %.046, 0
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i50 = icmp eq ptr %i.ea, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bb.w:                                             ; preds = %bb.u
  store ptr %i.ea, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %bb.w, %bb.v
  %.sink63 = phi ptr [ %i.ea, %bb.v ], [ %i.m, %bb.w ] ; 2 uses
  %.045.ph = phi i32 [ %.046, %bb.v ], [ 0, %bb.w ]
  %i.eb = load ptr, ptr %.sink63, align 8, !tbaa !66
  call void @free(ptr noundef %i.eb) #25
  call void @free(ptr noundef nonnull %.sink63) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.w, %bb.v, %bb.h
  %.045 = phi i32 [ 0, %bb.w ], [ 0, %bb.h ], [ %.046, %bb.v ], [ %.045.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_cclass(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 6 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.ao                     ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = or i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = or i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 4, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !138
  %i.cw = icmp eq ptr %i.m, null
  br i1 %i.cw, label %bbuf_free.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp eq ptr %i.t, null
  br i1 %i.cx, label %and_code_range_buf.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !66  ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 4      ; 2 uses
  %.not128.i = icmp eq i32 %i.dc, 0
  %.not129.i = icmp eq i32 %i.cz, 0
  %or.cond181.i = select i1 %.not128.i, i1 true, i1 %.not129.i
  br i1 %or.cond181.i, label %and_code_range_buf.exit.thread.thread, label %.lr.ph123.us.preheader.i

.lr.ph123.us.preheader.i:                         ; preds = %bb.l
  %wide.trip.count151.i = zext i32 %i.dc to i64
  %wide.trip.count146.i = zext i32 %i.cz to i64
  br label %.lr.ph123.us.i

.lr.ph123.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph123.us.preheader.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph123.us.preheader.i ], [ %indvars.iv.next149.i, %._crit_edge.us.i ] ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv148.i to i32
  %i.df = shl i32 %i.de, 1                        ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7  ; 2 uses
  %i.dj = or disjoint i32 %i.df, 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph123.us.i
  %indvars.iv143.i = phi i64 [ 0, %.lr.ph123.us.i ], [ %indvars.iv.next144.i, %bb.p ] ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv143.i to i32
  %i.do = shl i32 %i.dn, 1                        ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr %i.da, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.ds = or disjoint i32 %i.do, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.da, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %i.dw = icmp ugt i32 %i.dr, %i.dm
  br i1 %i.dw, label %._crit_edge.us.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp ult i32 %i.dv, %i.di
  br i1 %i.dx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dr)
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dv)
  %i.ea = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef 1) ; 2 uses
  %.not94.us.i = icmp eq i32 %i.ea, 0
  br i1 %.not94.us.i, label %bb.p, label %and_code_range_buf.exit.thread56

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %._crit_edge.us.i, label %bb.m, !llvm.loop !202

._crit_edge.us.i:                                 ; preds = %bb.p, %bb.m
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %and_code_range_buf.exit.thread, label %.lr.ph123.us.i, !llvm.loop !203

bb.q:                                             ; preds = %bb.i
  %i.eb = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %or.cond3 = and i1 %i.ec, %i.i
  br i1 %or.cond3, label %bb.r, label %and_code_range_buf.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ef = getelementptr i8, ptr %i.f, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  %i.eh = icmp sgt i32 %i.eg, 1
  %i.ei = select i1 %i.eh, i32 0, i32 128
  br label %.thread.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !66 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7  ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 4
  %i.em = icmp slt i32 %i.ek, 1
  br i1 %i.em, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr i8, ptr %i.f, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %i.ep = icmp sgt i32 %i.eo, 1
  %i.eq = select i1 %i.ep, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ek to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i, %bb.y ] ; 2 uses
  %.03350.i = phi i32 [ %i.eq, %bb.u ], [ %i.fa, %bb.y ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.er = shl i32 %indvars.iv.tr.i, 1
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [4 x i8], ptr %i.el, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7
  %i.ev = getelementptr i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7  ; 2 uses
  %i.ex = add i32 %i.eu, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03350.i, %i.ex
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03350.i, i32 noundef %i.ex, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.ey, 0
  br i1 %.not44.i, label %bb.x, label %not_code_range_buf.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ez = icmp eq i32 %i.ew, -1
  br i1 %i.ez, label %not_code_range_buf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = add nuw i32 %i.ew, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.v, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.y, %bb.s
  %.lcssa.sink.i = phi i32 [ %i.ei, %bb.s ], [ %i.fa, %bb.y ]
  %i.fb = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.w, %bb.x, %.thread.sink.split.i
  %.032.i = phi i32 [ %i.fb, %.thread.sink.split.i ], [ %i.ey, %bb.w ], [ 0, %bb.x ]
  br i1 %i.ee, label %bbuf_free.exit, label %bb.z

bb.z:                                             ; preds = %not_code_range_buf.exit
  %i.fc = load ptr, ptr %i.ed, align 8, !tbaa !66
  call void @free(ptr noundef %i.fc) #25
  call void @free(ptr noundef nonnull %i.ed) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.z
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %and_code_range_buf.exit

and_code_range_buf.exit:                          ; preds = %bb.q, %bbuf_free.exit
  %.046 = phi i32 [ %i.eb, %bb.q ], [ %.032.i, %bbuf_free.exit ] ; 2 uses
  %.not48 = icmp eq i32 %.046, 0
  br i1 %.not48, label %and_code_range_buf.exit.thread, label %and_code_range_buf.exit.thread56

and_code_range_buf.exit.thread56:                 ; preds = %bb.o, %and_code_range_buf.exit
  %.04659 = phi i32 [ %.046, %and_code_range_buf.exit ], [ %i.ea, %bb.o ] ; 2 uses
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fe, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread.thread:            ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.l, align 8, !tbaa !63
  br label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread:                   ; preds = %._crit_edge.us.i, %and_code_range_buf.exit
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !138
  store ptr %i.ff, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread.thread, %and_code_range_buf.exit.thread56
  %.sink83 = phi ptr [ %i.fe, %and_code_range_buf.exit.thread56 ], [ %i.m, %and_code_range_buf.exit.thread.thread ], [ %i.m, %and_code_range_buf.exit.thread ] ; 2 uses
  %.045.ph = phi i32 [ %.04659, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread.thread ], [ 0, %and_code_range_buf.exit.thread ]
  %i.fg = load ptr, ptr %.sink83, align 8, !tbaa !66
  call void @free(ptr noundef %i.fg) #25
  call void @free(ptr noundef nonnull %.sink83) #25
  br label %bbuf_free.exit51

end_hunk_2
