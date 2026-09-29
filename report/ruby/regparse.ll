Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regparse?download=true
inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@onig_name_to_backref_number:bb.a
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
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !125
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i64 %indvars.iv38, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !123

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv38 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv38, -1 ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !56
  %.not18 = icmp eq i64 %i.v, -1
  br i1 %.not18, label %bb.c, label %onig_name_to_group_numbers.exit.thread, !llvm.loop !123

.loopexit:                                        ; preds = %bb.c, %.preheader, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %onig_name_to_group_numbers.exit.thread25..loopexit_crit_edge ], [ %i.o, %.preheader ], [ %i.o, %bb.c ]
  %i.w = getelementptr [4 x i8], ptr %i.l, i64 %.pre-phi
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  br label %onig_name_to_group_numbers.exit.thread

onig_name_to_group_numbers.exit.thread:           ; preds = %.lr.ph, %bb.b, %name_find.exit.i, %name_find.exit.thread.i, %onig_name_to_group_numbers.exit, %.loopexit, %onig_name_to_group_numbers.exit.thread25.thread32
  %.015 = phi i32 [ %i.y, %.loopexit ], [ %i.h, %onig_name_to_group_numbers.exit ], [ %i.j, %onig_name_to_group_numbers.exit.thread25.thread32 ], [ -11, %bb.b ], [ -217, %name_find.exit.i ], [ -217, %name_find.exit.thread.i ], [ %i.s, %.lr.ph ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @onig_noname_group_capture_is_active(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %onig_number_of_names.exit.thread, label %onig_number_of_names.exit

onig_number_of_names.exit:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %onig_number_of_names.exit.thread

bb.c:                                             ; preds = %onig_number_of_names.exit
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
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
  %i.b = load i32, ptr %.029, align 8, !tbaa !21
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bbuf_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.029, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 3 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void @onig_node_free(ptr noundef %i.i)
  %i.j = getelementptr i8, ptr %.029, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  tail call void @free(ptr noundef nonnull %.029) #25
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.029, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bbuf_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.o) #25
  tail call void @free(ptr noundef nonnull %i.n) #25
  br label %bbuf_free.exit

bb.h:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %.029, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  tail call void @onig_node_free(ptr noundef %i.q)
  br label %bbuf_free.exit

bb.i:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.029, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  tail call void @onig_node_free(ptr noundef %i.s)
  br label %bbuf_free.exit

bb.j:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %.029, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.u) #25
  br label %bbuf_free.exit

bb.k:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %.029, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
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
  store ptr %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !21
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
  store ptr %1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %onig_node_new_list.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.09 = phi ptr [ %i.f, %.preheader ], [ %0, %bb.b ] ; 2 uses
  %i.e = getelementptr i8, ptr %.09, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.c, label %.preheader, !llvm.loop !127

bb.c:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %.09, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !21
  br label %onig_node_new_list.exit.thread

onig_node_new_list.exit.thread:                   ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_alt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 9, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_anchor(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @onig_node_new_enclose(i32 noundef %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !21
  %i.i = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.i, align 4, !tbaa !21
  br label %node_new_enclose.exit

node_new_enclose.exit:                            ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_enclose(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store i32 %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.h, align 4, !tbaa !21
  %i.i = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.i, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @onig_node_str_cat(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 7 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 8 uses
  %i.l = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = add i64 %i.k, %i.c                       ; 4 uses
  %i.p = icmp sgt i64 %i.o, 23
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.c, label %onig_strcpy.exit54

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %i.o, 16                         ; 2 uses
  %i.r = sext i32 %i.m to i64
  %.not = icmp sgt i64 %i.q, %i.r
  br i1 %.not, label %bb.d, label %onig_strcpy.exit

onig_strcpy.exit:                                 ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.h, i64 %i.k     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %1, i64 noundef %i.c, i1 noundef false) #25
  %i.t = getelementptr i8, ptr %i.s, i64 %i.c
  store i8 0, ptr %i.t, align 1, !tbaa !21
  br label %.critedge52

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %0, i64 32
  %i.v = icmp eq ptr %i.h, %i.u
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.o, 17
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #26 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp sgt i64 %i.k, 0
  br i1 %i.z, label %bb.g, label %strcat_capa_from_static.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.x, ptr noundef nonnull align 1 %i.h, i64 noundef %i.k, i1 noundef false) #25
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.k
  store i8 0, ptr %i.aa, align 1, !tbaa !21
  br label %strcat_capa_from_static.exit

bb.h:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.h, null
  %i.ab = add i64 %i.o, 17                        ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.ab) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ae = icmp eq ptr %.0.i, null
  br i1 %i.ae, label %.critedge, label %strcat_capa_from_static.exit

strcat_capa_from_static.exit:                     ; preds = %bb.k, %bb.g, %bb.f
  %.sink63 = phi ptr [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %.0.i, %bb.k ] ; 2 uses
  %i.af = getelementptr i8, ptr %.sink63, i64 %i.k ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.af, ptr noundef nonnull align 1 %1, i64 noundef %i.c, i1 noundef false) #25
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.c
  store i8 0, ptr %i.ag, align 1, !tbaa !21
  store ptr %.sink63, ptr %i.g, align 8, !tbaa !21
  %i.ah = trunc i64 %i.q to i32
  store i32 %i.ah, ptr %i.l, align 4, !tbaa !21
  br label %.critedge52

onig_strcpy.exit54:                               ; preds = %bb.b
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.k    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull align 1 %1, i64 noundef %i.c, i1 noundef false) #25
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.c
  store i8 0, ptr %i.aj, align 1, !tbaa !21
  br label %.critedge52

.critedge52:                                      ; preds = %strcat_capa_from_static.exit, %onig_strcpy.exit, %onig_strcpy.exit54
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.k
  %i.am = getelementptr i8, ptr %i.al, i64 %i.c
  store ptr %i.am, ptr %i.e, align 8, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.e, %bb.a, %.critedge52
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %.critedge52 ], [ -5, %bb.e ], [ -5, %bb.k ]
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @onig_node_str_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %onig_node_str_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not11.i = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %0, i64 32
  %.not12.i = icmp eq ptr %i.d, %i.e
  %or.cond.i = or i1 %.not11.i, %.not12.i
  br i1 %or.cond.i, label %onig_node_str_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #25
  br label %onig_node_str_clear.exit

onig_node_str_clear.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !21
  %i.j = tail call i32 @onig_node_str_cat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @onig_node_str_clear(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not11 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %0, i64 32
  %.not12 = icmp eq ptr %i.d, %i.e
  %or.cond = or i1 %.not11, %.not12
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !21
  ret void
}
end_hunk_0
begin_hunk_1_@fetch_token:bb.a

bb.la:                                            ; preds = %bb.kz
  tail call fastcc void @CLOSE_BRACKET_WITHOUT_ESC_WARN(ptr noundef nonnull %3)
  br label %.thread986

bb.lb:                                            ; preds = %bb.hn
  %i.zy = load i32, ptr %3, align 8, !tbaa !79
  %i.zz = and i32 %i.zy, 2
  %.not916 = icmp eq i32 %i.zz, 0
  br i1 %.not916, label %.thread986, label %.preheader

.preheader:                                       ; preds = %bb.lb, %bb.lh
  %i.aaa = phi ptr [ %i.aao, %bb.lh ], [ %i.au, %bb.lb ] ; 6 uses
  %.not917 = icmp ult ptr %i.aaa, %2
  br i1 %.not917, label %bb.lc, label %.backedge

bb.lc:                                            ; preds = %.preheader
  %i.aab = load i32, ptr %i.s, align 8, !tbaa !67
  %i.aac = icmp eq i32 %i.aab, 1
  br i1 %i.aac, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.aad = load i8, ptr %i.aaa, align 1, !tbaa !21
  %i.aae = zext i8 %i.aad to i32
  br label %bb.lf

bb.le:                                            ; preds = %bb.lc
  %i.aaf = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.aag = tail call i32 %i.aaf(ptr noundef %i.aaa, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1218 = load i32, ptr %i.s, align 8, !tbaa !67
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %i.aah = phi i32 [ 1, %bb.ld ], [ %.pre1218, %bb.le ] ; 2 uses
  %i.aai = phi i32 [ %i.aae, %bb.ld ], [ %i.aag, %bb.le ]
  %i.aaj = load i32, ptr %i.u, align 4, !tbaa !52
  %i.aak = icmp eq i32 %i.aah, %i.aaj
  br i1 %i.aak, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.aal = tail call i32 @onigenc_mbclen(ptr noundef %i.aaa, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lf, %bb.lg
  %i.aam = phi i32 [ %i.aal, %bb.lg ], [ %i.aah, %bb.lf ]
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr i8, ptr %i.aaa, i64 %i.aan ; 3 uses
  store ptr %i.aao, ptr %i.a, align 8, !tbaa !66
  %i.aap = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.aaq = tail call i32 %i.aap(i32 noundef %i.aai, i32 noundef 0, ptr noundef nonnull %i.l) #25
  %.not918 = icmp eq i32 %i.aaq, 0
  br i1 %.not918, label %.preheader, label %.backedge, !llvm.loop !131

.backedge:                                        ; preds = %.preheader, %bb.lh, %bb.iw, %bb.li
  %i.aar = phi ptr [ %i.ui, %bb.iw ], [ %i.au, %bb.li ], [ %i.aao, %bb.lh ], [ %i.aaa, %.preheader ] ; 2 uses
  %i.aas = icmp ult ptr %i.aar, %2
  br i1 %i.aas, label %bb.b, label %._crit_edge

bb.li:                                            ; preds = %bb.hn, %bb.hn, %bb.hn, %bb.hn, %bb.hn
  %i.aat = load i32, ptr %3, align 8, !tbaa !79
  %i.aau = and i32 %i.aat, 2
  %.not915 = icmp eq i32 %i.aau, 0
  br i1 %.not915, label %.thread986, label %.backedge

.thread986:                                       ; preds = %bb.hf, %bb.hn, %bb.li, %bb.lb, %.thread, %.thread1012, %bb.jz, %.critedge976, %bb.he, %.thread995, %bb.hu, %bb.ap, %bb.gv, %bb.gw, %bb.gt, %bb.gu, %bb.gr, %bb.gs, %.critedge, %bb.gp, %bb.gq, %bb.gh, %bb.gi, %bb.ga, %bb.gb, %bb.fe, %bb.fd, %bb.fz, %bb.ek, %bb.ej, %bb.er, %bb.es, %bb.ef, %bb.ei, %bb.dd, %bb.de, %bb.dr, %bb.dq, %bb.dc, %bb.cy, %bb.db, %bb.cx, %bb.ct, %bb.cs, %bb.cw, %bb.cu, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.an, %bb.aa, %bb.am, %bb.al, %bb.s, %bb.r, %bb.q, %bb.ec, %bb.dy, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.kz, %bb.la, %bb.kx, %bb.kv, %bb.kt, %bb.kr, %.critedge967, %bb.hw, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.ky, %bb.kw, %bb.ku, %bb.ks, %bb.kq, %bb.hx, %.loopexit1016, %bb.hm
  %i.aav = load ptr, ptr %i.a, align 8, !tbaa !66
  store ptr %i.aav, ptr %1, align 8, !tbaa !66
  %i.aaw = load i32, ptr %0, align 8, !tbaa !93
  br label %.loopexit

.critedge965:                                     ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ij, %bb.ix, %.thread1007, %.thread1001, %.critedge976.thread, %bb.fy, %bb.ht, %.critedge965, %bb.fb, %bb.er, %bb.ee, %bb.dw, %bb.dx, %bb.dh, %bb.da, %bb.cz, %bb.cv, %bb.cl, %bb.cj, %bb.ao, %bb.j, %bb.dj, %.thread986, %._crit_edge
  %.9 = phi i32 [ %i.aaw, %.thread986 ], [ %i.rg, %.critedge965 ], [ %i.sk, %bb.ht ], [ %.5776.ph, %.critedge976.thread ], [ %i.xn, %.thread1001 ], [ %.8.ph, %.thread1007 ], [ %i.nf, %bb.fb ], [ -104, %bb.j ], [ %i.dr, %bb.ao ], [ -401, %bb.cj ], [ -212, %bb.cl ], [ -200, %bb.cv ], [ -211, %bb.cz ], [ -200, %bb.da ], [ -212, %bb.dj ], [ -208, %bb.dw ], [ -401, %bb.dh ], [ -200, %bb.ee ], [ %i.ml, %bb.er ], [ %i.pf, %bb.fy ], [ 0, %._crit_edge ], [ -208, %bb.dx ], [ -118, %bb.ix ], [ -118, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.9
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_subexp(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 16) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr i8, ptr %5, i64 176        ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !100
  %i.e = load i32, ptr @ParseDepthLimit, align 4, !tbaa !18
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call fastcc i32 @parse_branch(ptr noundef %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  tail call void @onig_node_free(ptr noundef %i.i)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, %2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.g, 13
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %onig_node_new_alt.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 9, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !21
  br label %onig_node_new_alt.exit.preheader

onig_node_new_alt.exit.preheader:                 ; preds = %bb.g, %bb.h
  br label %onig_node_new_alt.exit

onig_node_new_alt.exit:                           ; preds = %onig_node_new_alt.exit.preheader, %onig_node_new_alt.exit49
  %.pn = phi ptr [ %i.w, %onig_node_new_alt.exit49 ], [ %i.n, %onig_node_new_alt.exit.preheader ]
  %.055 = getelementptr i8, ptr %.pn, i64 16
  %i.r = tail call fastcc i32 @fetch_token(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %onig_node_new_alt.exit
  tail call void @onig_node_free(ptr noundef %i.n)
  br label %bb.q

bb.j:                                             ; preds = %onig_node_new_alt.exit
  %i.t = call fastcc i32 @parse_branch(ptr noundef %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 4 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @onig_node_free(ptr noundef %i.n)
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.w = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %onig_node_new_alt.exit49, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 9, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %i.w, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !21
  br label %onig_node_new_alt.exit49

onig_node_new_alt.exit49:                         ; preds = %bb.l, %bb.m
  store ptr %i.w, ptr %.055, align 8, !tbaa !84
  %i.aa = icmp eq i32 %i.t, 13
  br i1 %i.aa, label %onig_node_new_alt.exit, label %bb.n, !llvm.loop !137

bb.n:                                             ; preds = %onig_node_new_alt.exit49
  %i.ab = load i32, ptr %1, align 8, !tbaa !93
  %.not = icmp eq i32 %i.ab, %2
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n
  %.sink = phi ptr [ %i.n, %bb.n ], [ %i.m, %bb.f ]
  tail call void @onig_node_free(ptr noundef %.sink)
  %i.ac = icmp eq i32 %2, 15
  %. = select i1 %i.ac, i32 -117, i32 -11
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.e
  %storemerge = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.n ]
  %.1 = phi i32 [ %2, %bb.e ], [ %i.t, %bb.n ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !84
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !100
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.a, %bb.p, %bb.k, %bb.i, %bb.c
  %.042 = phi i32 [ -16, %bb.a ], [ %i.g, %bb.c ], [ %.1, %bb.p ], [ %i.r, %bb.i ], [ %i.t, %bb.k ], [ %., %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.042
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_enclose_memory(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 6, i32 0, i32 1, i32 0>, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 4
  store i32 1024, ptr %i.g, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %0, ptr %i.c, align 8, !tbaa !21
  br label %node_new_enclose.exit.thread

node_new_enclose.exit.thread:                     ; preds = %bb.a, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -202, 3) i32 @fetch_range_quantifier(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 14 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60
  %i.h = and i32 %i.g, 8
  %.not = icmp eq i32 %i.h, 0                     ; 3 uses
  %i.i = icmp ult ptr %i.c, %1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %. = select i1 %.not, i32 -100, i32 1
  br label %onig_scan_unsigned_number.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = tail call i32 %i.k(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef %i.b) #25
  switch i32 %i.l, label %..lr.ph.i_crit_edge [
    i32 124, label %onig_scan_unsigned_number.exit.thread
    i32 41, label %onig_scan_unsigned_number.exit.thread
    i32 40, label %onig_scan_unsigned_number.exit.thread
  ]

..lr.ph.i_crit_edge:                              ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.c
  %i.m = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.b, %bb.c ] ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 32
  %i.p = getelementptr i8, ptr %i.m, i64 20
  %i.q = getelementptr i8, ptr %i.m, i64 88
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.lr.ph.i
  %.039.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.ae, %bb.l ] ; 5 uses
  %.03138.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %bb.l ] ; 3 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !67
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %.039.i, align 1, !tbaa !21
  %i.u = zext i8 %i.t to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.w = tail call i32 %i.v(ptr noundef %.039.i, ptr noundef nonnull %1, ptr noundef nonnull %i.m) #25, !inline_history !101
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ 1, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.y = phi i32 [ %i.u, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = load i32, ptr %i.p, align 4, !tbaa !52
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @onigenc_mbclen(ptr noundef %.039.i, ptr noundef nonnull %1, ptr noundef nonnull %i.m) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi i32 [ %i.ab, %bb.i ], [ %i.x, %bb.h ]
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %.039.i, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.ag = tail call i32 %i.af(i32 noundef %i.y, i32 noundef 4, ptr noundef nonnull %i.m) #25, !inline_history !101
  %.not34.i = icmp eq i32 %i.ag, 0
  br i1 %.not34.i, label %onig_scan_unsigned_number.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.y, -48                       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 2147483647, %i.ai
  %i.ak = udiv i64 %i.aj, 10
  %i.al = zext i32 %.03138.i to i64
  %i.am = icmp samesign ult i64 %i.ak, %i.al
  br i1 %i.am, label %onig_scan_unsigned_number.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = mul i32 %.03138.i, 10
  %i.ao = add i32 %i.ah, %i.an                    ; 2 uses
  %.not.i = icmp ult ptr %i.ae, %1
  br i1 %.not.i, label %bb.e, label %onig_scan_unsigned_number.exit, !llvm.loop !0

onig_scan_unsigned_number.exit:                   ; preds = %bb.j, %bb.l
  %.2142 = phi ptr [ %.039.i, %bb.j ], [ %i.ae, %bb.l ] ; 7 uses
  %.032.i = phi i32 [ %.03138.i, %bb.j ], [ %i.ao, %bb.l ] ; 2 uses
  %or.cond = icmp ugt i32 %.032.i, 100000
  br i1 %or.cond, label %onig_scan_unsigned_number.exit.thread, label %bb.m

bb.m:                                             ; preds = %onig_scan_unsigned_number.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !66
  %.not101.not = icmp ne ptr %.2142, %i.ap        ; 3 uses
  br i1 %.not101.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60
  %i.at = and i32 %i.as, 16
  %.not99 = icmp eq i32 %i.at, 0
  br i1 %.not99, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.085 = phi i32 [ %.032.i, %bb.m ], [ 0, %bb.n ] ; 3 uses
  %i.au = icmp ult ptr %.2142, %1
  br i1 %i.au, label %bb.p, label %bb.av

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr i8, ptr %i.b, i64 16      ; 6 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !67
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load i8, ptr %.2142, align 1, !tbaa !21
  %i.az = zext i8 %i.ay to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ba = getelementptr i8, ptr %i.b, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = tail call i32 %i.bb(ptr noundef %.2142, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #25
  %.pre161 = load i32, ptr %i.av, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = phi i32 [ 1, %bb.q ], [ %.pre161, %bb.r ] ; 2 uses
  %i.be = phi i32 [ %i.az, %bb.q ], [ %i.bc, %bb.r ]
  %i.bf = getelementptr i8, ptr %i.b, i64 20      ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !52
  %i.bh = icmp eq i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = tail call i32 @onigenc_mbclen(ptr noundef %.2142, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bj = phi i32 [ %i.bi, %bb.t ], [ %i.bd, %bb.s ]
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %.2142, i64 %i.bk ; 4 uses
  %i.bm = icmp eq i32 %i.be, 44
  br i1 %i.bm, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !90  ; 7 uses
  %.not37.i114 = icmp ult ptr %i.bl, %1
  br i1 %.not37.i114, label %.lr.ph.i119, label %onig_scan_unsigned_number.exit125.thread

.lr.ph.i119:                                      ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %i.bn, i64 16     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 32
  %i.bq = getelementptr i8, ptr %i.bn, i64 20
  %i.br = getelementptr i8, ptr %i.bn, i64 88
  br label %bb.w

end_hunk_1
begin_hunk_2_@parse_exp:bb.a
  %i.ce = tail call fastcc ptr @node_new_enclose(i32 noundef 4), !inline_history !150 ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !84
  br label %bb.ef

bb.x:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !97
  %.not390.i = icmp sgt i32 %i.ch, -1
  br i1 %.not390.i, label %parse_enclose.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = tail call fastcc ptr @node_new_enclose(i32 noundef 16), !inline_history !150 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !84
  br label %bb.ef

bb.z:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !97
  %i.cm = and i32 %i.cl, 128
  %.not388.i = icmp eq i32 %i.cm, 0
  br i1 %.not388.i, label %parse_enclose.exit.thread, label %bb.av

bb.aa:                                            ; preds = %bb.p
  %i.cn = icmp ult ptr %i.bm, %4
  br i1 %i.cn, label %bb.ab, label %parse_enclose.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !97
  %i.cr = and i32 %i.cq, 1073741824
  %.not387.i = icmp eq i32 %i.cr, 0
  br i1 %.not387.i, label %parse_enclose.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load i32, ptr %i.ap, align 8, !tbaa !67
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.cv = zext i8 %i.cu to i32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.cx = tail call i32 %i.cw(ptr noundef %i.bm, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.pre505 = load i32, ptr %i.ap, align 8, !tbaa !67
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cy = phi i32 [ 1, %bb.ad ], [ %.pre505, %bb.ae ] ; 2 uses
  %i.cz = phi i32 [ %i.cv, %bb.ad ], [ %i.cx, %bb.ae ]
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.db = icmp eq i32 %i.cy, %i.da
  br i1 %i.db, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.dd = phi i32 [ %i.dc, %bb.ag ], [ %i.cy, %bb.af ]
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %i.bm, i64 %i.de  ; 2 uses
  store ptr %i.df, ptr %i.l, align 8, !tbaa !66
  %i.dg = icmp eq i32 %i.cz, 60
  br i1 %i.dg, label %bb.av, label %parse_enclose.exit.thread

bb.ai:                                            ; preds = %bb.p
  %i.dh = icmp ult ptr %i.bm, %4
  br i1 %i.dh, label %bb.aj, label %parse_enclose.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i32, ptr %i.ap, align 8, !tbaa !67
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.dl = zext i8 %i.dk to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dm = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.dn = tail call i32 %i.dm(ptr noundef %i.bm, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.pre504 = load i32, ptr %i.ap, align 8, !tbaa !67
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.do = phi i32 [ 1, %bb.ak ], [ %.pre504, %bb.al ] ; 2 uses
  %i.dp = phi i32 [ %i.dl, %bb.ak ], [ %i.dn, %bb.al ]
  %i.dq = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.dt = phi i32 [ %i.ds, %bb.an ], [ %i.do, %bb.am ]
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.bm, i64 %i.du
  store ptr %i.dv, ptr %i.l, align 8, !tbaa !66
  switch i32 %i.dp, label %bb.at [
    i32 61, label %bb.ap
    i32 33, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dw = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %onig_node_new_anchor.exit395, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 7, ptr %i.dw, align 1
  %i.dy = getelementptr i8, ptr %i.dw, i64 4
  store i32 4096, ptr %i.dy, align 4, !tbaa !21
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  store ptr null, ptr %i.dz, align 8, !tbaa !21
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  store i32 -1, ptr %i.ea, align 8, !tbaa !21
  %i.eb = getelementptr i8, ptr %i.dw, i64 20
  store i32 0, ptr %i.eb, align 4, !tbaa !21
  br label %onig_node_new_anchor.exit395

onig_node_new_anchor.exit395:                     ; preds = %bb.ap, %bb.aq
  store ptr %i.dw, ptr %0, align 8, !tbaa !84
  br label %bb.ef

bb.ar:                                            ; preds = %bb.ao
  %i.ec = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %onig_node_new_anchor.exit394, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 7, ptr %i.ec, align 1
  %i.ee = getelementptr i8, ptr %i.ec, i64 4
  store i32 8192, ptr %i.ee, align 4, !tbaa !21
  %i.ef = getelementptr i8, ptr %i.ec, i64 8
  store ptr null, ptr %i.ef, align 8, !tbaa !21
  %i.eg = getelementptr i8, ptr %i.ec, i64 16
  store i32 -1, ptr %i.eg, align 8, !tbaa !21
  %i.eh = getelementptr i8, ptr %i.ec, i64 20
  store i32 0, ptr %i.eh, align 4, !tbaa !21
  br label %onig_node_new_anchor.exit394

onig_node_new_anchor.exit394:                     ; preds = %bb.ar, %bb.as
  store ptr %i.ec, ptr %0, align 8, !tbaa !84
  br label %bb.ef

bb.at:                                            ; preds = %bb.ao
  %i.ei = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !97
  %i.el = and i32 %i.ek, 128
  %.not386.i = icmp eq i32 %i.el, 0
  br i1 %.not386.i, label %parse_enclose.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.bm, ptr %i.l, align 8, !tbaa !66
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ah, %bb.z
  %i.em = phi ptr [ %i.bm, %bb.z ], [ %i.df, %bb.ah ], [ %i.bm, %bb.au ]
  %.0316.i = phi i32 [ 39, %bb.z ], [ 60, %bb.ah ], [ 60, %bb.au ]
  %i.en = call fastcc i32 @fetch_name(i32 noundef %.0316.i, ptr noundef %i.l, ptr noundef %4, ptr noundef %i.m, ptr noundef nonnull %5, ptr noundef %i.j, i32 noundef 0), !inline_history !150 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %parse_enclose.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = tail call fastcc i32 @scan_env_add_mem_entry(ptr noundef nonnull %5), !inline_history !150 ; 4 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %parse_enclose.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = getelementptr i8, ptr %5, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !83
  %i.et = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.eu = tail call fastcc i32 @name_add(ptr noundef %i.es, ptr noundef %i.em, ptr noundef %i.et, i32 noundef %i.ep, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  %.not389.i = icmp eq i32 %i.eu, 0
  br i1 %.not389.i, label %bb.ay, label %parse_enclose.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ev = load i32, ptr %5, align 8, !tbaa !79
  %i.ew = tail call fastcc ptr @node_new_enclose_memory(i32 noundef %i.ev, i32 noundef 1), !inline_history !150 ; 3 uses
  store ptr %i.ew, ptr %0, align 8, !tbaa !84
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %parse_enclose.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ey = getelementptr i8, ptr %i.ew, i64 12
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !21
  %i.ez = getelementptr i8, ptr %5, i64 96        ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !161
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !161
  br label %thread-pre-split

bb.ba:                                            ; preds = %bb.p
  %i.fc = icmp ult ptr %i.bm, %4
  br i1 %i.fc, label %bb.bb, label %parse_enclose.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !97
  %i.fg = and i32 %i.ff, 536870912
  %.not380.i = icmp eq i32 %i.fg, 0
  br i1 %.not380.i, label %parse_enclose.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.fh = load i32, ptr %i.ap, align 8, !tbaa !67
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fj = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.fk = zext i8 %i.fj to i32
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.fl = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.fm = tail call i32 %i.fl(ptr noundef %i.bm, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.pre503 = load i32, ptr %i.ap, align 8, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fn = phi i32 [ 1, %bb.bd ], [ %.pre503, %bb.be ] ; 2 uses
  %i.fo = phi i32 [ %i.fk, %bb.bd ], [ %i.fm, %bb.be ] ; 3 uses
  %i.fp = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fr = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.fs = phi i32 [ %i.fr, %bb.bg ], [ %i.fn, %bb.bf ]
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr i8, ptr %i.bm, i64 %i.ft  ; 2 uses
  store ptr %i.fu, ptr %i.l, align 8, !tbaa !66
  %i.fv = getelementptr i8, ptr %i.ac, i64 88
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !69
  %i.fx = tail call i32 %i.fw(i32 noundef %i.fo, i32 noundef 4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.not381.i = icmp eq i32 %i.fx, 0
  br i1 %.not381.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.bm, ptr %i.l, align 8, !tbaa !66
  %i.fy = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.l, ptr noundef %4, ptr noundef %i.n, ptr noundef nonnull %5, ptr noundef %i.j, i32 noundef 1), !inline_history !150 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.critedge.i.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ga = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !60
  %i.gd = and i32 %i.gc, 32
  %.not383.i = icmp eq i32 %i.gd, 0
  br i1 %.not383.i, label %bb.bx, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ge = load i32, ptr %i.j, align 4, !tbaa !18  ; 2 uses
  %i.gf = getelementptr i8, ptr %5, i64 92
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !86
  %i.gh = icmp sgt i32 %i.ge, %i.gg
  br i1 %i.gh, label %.critedge.i.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gi = getelementptr i8, ptr %5, i64 168
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !87 ; 2 uses
  %.not384.i = icmp eq ptr %i.gj, null
  %i.gk = getelementptr i8, ptr %5, i64 104
  %i.gl = select i1 %.not384.i, ptr %i.gk, ptr %i.gj
  %i.gm = sext i32 %i.ge to i64
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !84
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.critedge.i.thread, label %bb.bx

bb.bm:                                            ; preds = %bb.bh
  switch i32 %i.fo, label %.critedge.i.thread [
    i32 60, label %bb.bn
    i32 39, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.gq = call fastcc i32 @fetch_named_backref_token(i32 noundef %i.fo, ptr noundef nonnull %1, ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %.critedge.i.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gs = load ptr, ptr %i.l, align 8, !tbaa !66  ; 4 uses
  %i.gt = icmp ult ptr %i.gs, %4
  br i1 %i.gt, label %bb.bp, label %.critedge.i.thread

bb.bp:                                            ; preds = %bb.bo
  %i.gu = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.gv = tail call i32 %i.gu(ptr noundef %i.gs, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %i.gw = icmp eq i32 %i.gv, 41
  br i1 %i.gw, label %bb.bq, label %.critedge.i.thread

bb.bq:                                            ; preds = %bb.bp
  %i.gx = load i32, ptr %i.ap, align 8, !tbaa !67 ; 2 uses
  %i.gy = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.gz = icmp eq i32 %i.gx, %i.gy
  br i1 %i.gz, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = tail call i32 @onigenc_mbclen(ptr noundef %i.gs, ptr noundef nonnull %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.hb = phi i32 [ %i.ha, %bb.br ], [ %i.gx, %bb.bq ]
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr i8, ptr %i.gs, i64 %i.hc
  store ptr %i.hd, ptr %i.l, align 8, !tbaa !66
  %i.he = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !60
  %i.hh = and i32 %i.hg, 2048
  %.not382.i = icmp eq i32 %i.hh, 0
  br i1 %.not382.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hi = getelementptr i8, ptr %1, i64 28
  br label %.sink.split

bb.bu:                                            ; preds = %bb.bs
  %i.hj = getelementptr i8, ptr %1, i64 24
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !21
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hm = getelementptr i8, ptr %1, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !21
  br label %.sink.split

bb.bw:                                            ; preds = %bb.bu
  %i.ho = getelementptr i8, ptr %1, i64 28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bv, %bb.bw, %bb.bt
  %.sink.in = phi ptr [ %i.hi, %bb.bt ], [ %i.hn, %bb.bv ], [ %i.ho, %bb.bw ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !21
  store i32 %.sink, ptr %i.j, align 4, !tbaa !18
  %i.hp = icmp eq ptr %i.fu, null
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bl, %bb.bj
  %.0312.i = phi i1 [ true, %bb.bl ], [ true, %bb.bj ], [ %i.hp, %.sink.split ]
  %i.hq = tail call fastcc ptr @node_new_enclose(i32 noundef 8), !inline_history !150 ; 3 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !84
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.critedge.i.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hs = load i32, ptr %i.j, align 4, !tbaa !18
  %i.ht = getelementptr i8, ptr %i.hq, i64 12
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !21
  br i1 %.0312.i, label %.critedge.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %7 = load ptr, ptr %0, align 8, !tbaa !84
  %i.hu = getelementptr i8, ptr %7, i64 4         ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !21
  %i.hw = or i32 %i.hv, 2048
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !21
  br label %.critedge.i

.critedge.i.thread:                               ; preds = %bb.bp, %bb.bi, %bb.bm, %bb.bx, %bb.bk, %bb.bn, %bb.bl, %bb.bo
  %.0313.i.ph = phi i32 [ -119, %bb.bo ], [ -208, %bb.bl ], [ %i.gq, %bb.bn ], [ -208, %bb.bk ], [ -5, %bb.bx ], [ -124, %bb.bm ], [ %i.fy, %bb.bi ], [ -119, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %parse_enclose.exit.thread

.critedge.i:                                      ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %thread-pre-split

bb.ca:                                            ; preds = %bb.p
  %i.hx = icmp ult ptr %i.bm, %4
  br i1 %i.hx, label %bb.cb, label %parse_enclose.exit.thread

bb.cb:                                            ; preds = %bb.ca
  %i.hy = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.hz = getelementptr i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !97
  %i.ib = and i32 %i.ia, 4
  %.not370.i = icmp eq i32 %i.ib, 0
  br i1 %.not370.i, label %parse_enclose.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ic = and i32 %i.af, -8208
  %i.id = or disjoint i32 %i.ic, 8
  %i.ie = load i32, ptr %i.ap, align 8, !tbaa !67
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ig = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.ih = zext i8 %i.ig to i32
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ii = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ij = tail call i32 %i.ii(ptr noundef %i.bm, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.pre500 = load i32, ptr %i.ap, align 8, !tbaa !67
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ik = phi i32 [ 1, %bb.cd ], [ %.pre500, %bb.ce ] ; 2 uses
  %i.il = phi i32 [ %i.ih, %bb.cd ], [ %i.ij, %bb.ce ]
  %i.im = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.in = icmp eq i32 %i.ik, %i.im
  br i1 %i.in, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.io = tail call i32 @onigenc_mbclen(ptr noundef %i.bm, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.ip = phi i32 [ %i.io, %bb.cg ], [ %i.ik, %bb.cf ]
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr i8, ptr %i.bm, i64 %i.iq
  br label %.preheader

.preheader:                                       ; preds = %bb.ch, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %.ph = phi ptr [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.bm, %bb.p ], [ %i.ir, %bb.ch ]
  %.1320.i.ph = phi i32 [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.af, %bb.p ], [ %i.id, %bb.ch ]
  %.2318.i.ph = phi i32 [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.il, %bb.ch ]
  br label %bb.ci

bb.ci:                                            ; preds = %.preheader, %bb.ea
  %i.is = phi ptr [ %i.lu, %bb.ea ], [ %.ph, %.preheader ] ; 7 uses
  %.1320.i = phi i32 [ %.2321.i403, %bb.ea ], [ %.1320.i.ph, %.preheader ] ; 19 uses
  %.2318.i = phi i32 [ %i.lo, %bb.ea ], [ %.2318.i.ph, %.preheader ]
  %.0.i = phi i32 [ %.1.i404, %bb.ea ], [ 0, %.preheader ] ; 11 uses
  switch i32 %.2318.i, label %parse_enclose.exit.thread [
    i32 108, label %bb.dn
    i32 100, label %bb.dj
    i32 45, label %.thread
    i32 120, label %bb.cj
    i32 105, label %bb.cm
    i32 115, label %bb.cp
    i32 109, label %bb.ct
    i32 97, label %bb.db
    i32 117, label %bb.df
    i32 41, label %bb.dp
    i32 58, label %bb.dq
  ]

bb.cj:                                            ; preds = %bb.ci
  %.not379.i = icmp eq i32 %.0.i, 0
  br i1 %.not379.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.it = and i32 %.1320.i, -3
  br label %.thread

bb.cl:                                            ; preds = %bb.cj
  %i.iu = or i32 %.1320.i, 2
  br label %.thread

bb.cm:                                            ; preds = %bb.ci
  %.not378.i = icmp eq i32 %.0.i, 0
  br i1 %.not378.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iv = and i32 %.1320.i, -2
  br label %.thread

bb.co:                                            ; preds = %bb.cm
  %i.iw = or i32 %.1320.i, 1
  br label %.thread

bb.cp:                                            ; preds = %bb.ci
  %i.ix = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !97
  %i.ja = and i32 %i.iz, 4
  %.not376.i = icmp eq i32 %i.ja, 0
  br i1 %.not376.i, label %parse_enclose.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not377.i = icmp eq i32 %.0.i, 0
  br i1 %.not377.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jb = and i32 %.1320.i, -5
  br label %.thread

bb.cs:                                            ; preds = %bb.cq
  %i.jc = or i32 %.1320.i, 4
  br label %.thread

bb.ct:                                            ; preds = %bb.ci
  %i.jd = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !97 ; 2 uses
  %i.jg = and i32 %i.jf, 4
  %.not373.i = icmp eq i32 %i.jg, 0
  br i1 %.not373.i, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jh = icmp eq i32 %.0.i, 0
  br i1 %i.jh, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ji = and i32 %.1320.i, -9
  br label %.thread

bb.cw:                                            ; preds = %bb.cu
  %i.jj = or i32 %.1320.i, 8
  br label %.thread

bb.cx:                                            ; preds = %bb.ct
  %i.jk = and i32 %i.jf, 8
  %.not374.i = icmp eq i32 %i.jk, 0
  br i1 %.not374.i, label %parse_enclose.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not375.i = icmp eq i32 %.0.i, 0
  br i1 %.not375.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jl = and i32 %.1320.i, -5
  br label %.thread

bb.da:                                            ; preds = %bb.cy
  %i.jm = or i32 %.1320.i, 4
  br label %.thread

bb.db:                                            ; preds = %bb.ci
  %i.jn = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !97 ; 2 uses
  %i.jq = and i32 %i.jp, 4
  %.not372.i = icmp eq i32 %i.jq, 0
  br i1 %.not372.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.jr = and i32 %i.jp, 8
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = icmp eq i32 %.0.i, 0
  %or.cond5.i = and i1 %i.jt, %i.js
  br i1 %or.cond5.i, label %bb.de, label %parse_enclose.exit.thread

bb.dd:                                            ; preds = %bb.db
  %.old4.i = icmp eq i32 %.0.i, 0
  br i1 %.old4.i, label %bb.de, label %parse_enclose.exit.thread

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ju = and i32 %.1320.i, -57345
  %i.jv = or disjoint i32 %i.ju, 8192
  br label %.thread

bb.df:                                            ; preds = %bb.ci
  %i.jw = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !97 ; 2 uses
  %i.jz = and i32 %i.jy, 4
  %.not371.i = icmp eq i32 %i.jz, 0
  br i1 %.not371.i, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ka = and i32 %i.jy, 8
  %i.kb = icmp ne i32 %i.ka, 0
  %i.kc = icmp eq i32 %.0.i, 0
  %or.cond8.i = and i1 %i.kc, %i.kb
  br i1 %or.cond8.i, label %bb.di, label %parse_enclose.exit.thread

bb.dh:                                            ; preds = %bb.df
  %.old7.i = icmp eq i32 %.0.i, 0
  br i1 %.old7.i, label %bb.di, label %parse_enclose.exit.thread

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.kd = and i32 %.1320.i, -57345
  br label %.thread

bb.dj:                                            ; preds = %bb.ci
  %i.ke = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.kf = getelementptr i8, ptr %i.ke, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !97 ; 2 uses
  %i.kh = and i32 %i.kg, 4
  %i.ki = icmp ne i32 %i.kh, 0
  %i.kj = icmp eq i32 %.0.i, 0                    ; 2 uses
  %or.cond11.i = and i1 %i.kj, %i.ki
  br i1 %or.cond11.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kk = and i32 %.1320.i, -8193
  br label %.thread

bb.dl:                                            ; preds = %bb.dj
  %i.kl = and i32 %i.kg, 8
  %i.km = icmp ne i32 %i.kl, 0
  %or.cond14.i = and i1 %i.kj, %i.km
  br i1 %or.cond14.i, label %bb.dm, label %parse_enclose.exit.thread

bb.dm:                                            ; preds = %bb.dl
  %i.kn = or i32 %.1320.i, 57344
  br label %.thread

bb.dn:                                            ; preds = %bb.ci
  %i.ko = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.kp = getelementptr i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !97
  %i.kr = and i32 %i.kq, 4
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = icmp eq i32 %.0.i, 0
  %or.cond17.i = and i1 %i.kt, %i.ks
  br i1 %or.cond17.i, label %bb.do, label %parse_enclose.exit.thread

bb.do:                                            ; preds = %bb.dn
  %i.ku = and i32 %.1320.i, -8193
  br label %.thread

bb.dp:                                            ; preds = %bb.ci
  %i.kv = tail call fastcc ptr @node_new_option(i32 noundef %.1320.i), !inline_history !150 ; 3 uses
  store ptr %i.kv, ptr %0, align 8, !tbaa !84
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %parse_enclose.exit.thread, label %bb.es

bb.dq:                                            ; preds = %bb.ci
  store ptr %i.is, ptr %i.l, align 8
  %i.kx = load i32, ptr %5, align 8, !tbaa !79    ; 2 uses
  store i32 %.1320.i, ptr %5, align 8, !tbaa !79
  %i.ky = call fastcc i32 @fetch_token(ptr noundef nonnull %1, ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 %i.kx, ptr %5, align 8, !tbaa !79
  br label %parse_enclose.exit.thread

bb.ds:                                            ; preds = %bb.dq
  %i.la = call fastcc i32 @parse_subexp(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i32 noundef 15, ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  store i32 %i.kx, ptr %5, align 8, !tbaa !79
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %parse_enclose.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lc = tail call fastcc ptr @node_new_option(i32 noundef %.1320.i), !inline_history !150 ; 3 uses
  store ptr %i.lc, ptr %0, align 8, !tbaa !84
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %parse_enclose.exit.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.le = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.lf = getelementptr i8, ptr %i.lc, i64 24
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !21
  br label %.fold.split

.thread:                                          ; preds = %bb.ci, %bb.ck, %bb.cl, %bb.cn, %bb.co, %bb.cr, %bb.cs, %bb.cv, %bb.cw, %bb.cz, %bb.da, %bb.de, %bb.di, %bb.dk, %bb.dm, %bb.do
  %.1.i404 = phi i32 [ 1, %bb.ci ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.di ], [ 0, %bb.de ], [ 0, %bb.da ], [ 1, %bb.cz ], [ 1, %bb.cw ], [ 0, %bb.cv ], [ 0, %bb.cs ], [ 1, %bb.cr ], [ 0, %bb.co ], [ 1, %bb.cn ], [ 0, %bb.cl ], [ 1, %bb.ck ]
  %.2321.i403 = phi i32 [ %.1320.i, %bb.ci ], [ %i.ku, %bb.do ], [ %i.kn, %bb.dm ], [ %i.kk, %bb.dk ], [ %i.kd, %bb.di ], [ %i.jv, %bb.de ], [ %i.jm, %bb.da ], [ %i.jl, %bb.cz ], [ %i.jj, %bb.cw ], [ %i.ji, %bb.cv ], [ %i.jc, %bb.cs ], [ %i.jb, %bb.cr ], [ %i.iw, %bb.co ], [ %i.iv, %bb.cn ], [ %i.iu, %bb.cl ], [ %i.it, %bb.ck ]
  %i.lg = icmp ult ptr %i.is, %4
  br i1 %i.lg, label %bb.dv, label %parse_enclose.exit.thread

bb.dv:                                            ; preds = %.thread
  %i.lh = load i32, ptr %i.ap, align 8, !tbaa !67
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.lj = load i8, ptr %i.is, align 1, !tbaa !21
  %i.lk = zext i8 %i.lj to i32
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.ll = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.lm = tail call i32 %i.ll(ptr noundef %i.is, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  %.pre502 = load i32, ptr %i.ap, align 8, !tbaa !67
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ln = phi i32 [ 1, %bb.dw ], [ %.pre502, %bb.dx ] ; 2 uses
  %i.lo = phi i32 [ %i.lk, %bb.dw ], [ %i.lm, %bb.dx ]
  %i.lp = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.lq = icmp eq i32 %i.ln, %i.lp
  br i1 %i.lq, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.lr = tail call i32 @onigenc_mbclen(ptr noundef %i.is, ptr noundef %4, ptr noundef nonnull %i.ac) #25, !inline_history !150
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  %i.ls = phi i32 [ %i.lr, %bb.dz ], [ %i.ln, %bb.dy ]
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr i8, ptr %i.is, i64 %i.lt
  br label %bb.ci

bb.eb:                                            ; preds = %bb.g, %bb.f
  %i.lv = load i32, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.lw = and i32 %i.lv, 128
  %.not369.i = icmp eq i32 %i.lw, 0
  br i1 %.not369.i, label %bb.ec, label %bb.q

bb.ec:                                            ; preds = %bb.eb
  %i.lx = tail call fastcc ptr @node_new_enclose_memory(i32 noundef %i.lv, i32 noundef 0), !inline_history !150 ; 2 uses
  store ptr %i.lx, ptr %0, align 8, !tbaa !84
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %parse_enclose.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.lz = tail call fastcc i32 @scan_env_add_mem_entry(ptr noundef nonnull %5), !inline_history !150 ; 4 uses
  store i32 %i.lz, ptr %i.j, align 4, !tbaa !18
  %i.ma = icmp slt i32 %i.lz, 0
  br i1 %i.ma, label %parse_enclose.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.mb = load ptr, ptr %0, align 8, !tbaa !84
  %i.mc = getelementptr i8, ptr %i.mb, i64 12
  store i32 %i.lz, ptr %i.mc, align 4, !tbaa !21
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.az, %bb.ee, %.critedge.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !84
  br label %bb.ef

bb.ef:                                            ; preds = %thread-pre-split, %onig_node_new_anchor.exit394, %onig_node_new_anchor.exit395, %bb.y, %bb.w, %onig_node_new_anchor.exit396, %onig_node_new_anchor.exit397
  %i.md = phi ptr [ %.pr, %thread-pre-split ], [ %i.ec, %onig_node_new_anchor.exit394 ], [ %i.dw, %onig_node_new_anchor.exit395 ], [ %i.ci, %bb.y ], [ %i.ce, %bb.w ], [ %i.by, %onig_node_new_anchor.exit396 ], [ %i.bs, %onig_node_new_anchor.exit397 ]
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %parse_enclose.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mf = call fastcc i32 @fetch_token(ptr noundef nonnull %1, ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %parse_enclose.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mh = call fastcc i32 @parse_subexp(ptr noundef nonnull %i.k, ptr noundef nonnull %1, i32 noundef 15, ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %5), !inline_history !150 ; 2 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.mj = load ptr, ptr %i.k, align 8, !tbaa !84
  tail call void @onig_node_free(ptr noundef %i.mj), !inline_history !150
  br label %parse_enclose.exit.thread

bb.ej:                                            ; preds = %bb.eh
  %i.mk = load ptr, ptr %0, align 8, !tbaa !84    ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !21
  %i.mm = icmp eq i32 %i.ml, 7
  %i.mn = load ptr, ptr %i.k, align 8, !tbaa !84  ; 4 uses
  br i1 %i.mm, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.mo = getelementptr i8, ptr %i.mk, i64 8
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !21
  br label %.fold.split

bb.el:                                            ; preds = %bb.ej
  %i.mp = getelementptr i8, ptr %i.mk, i64 24
  store ptr %i.mn, ptr %i.mp, align 8, !tbaa !21
  %i.mq = load ptr, ptr %0, align 8, !tbaa !84    ; 4 uses
  %i.mr = getelementptr i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !21
  switch i32 %i.ms, label %.fold.split [
    i32 1, label %bb.em
    i32 8, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %i.mt = getelementptr i8, ptr %i.mq, i64 12
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !21 ; 2 uses
  %i.mv = getelementptr i8, ptr %5, i64 92
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !86
  %.not.i392 = icmp slt i32 %i.mw, %i.mu
  br i1 %.not.i392, label %parse_enclose.exit.thread, label %scan_env_set_mem_node.exit.thread

scan_env_set_mem_node.exit.thread:                ; preds = %bb.em
  %i.mx = getelementptr i8, ptr %5, i64 168
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !87 ; 2 uses
  %.not9.i = icmp eq ptr %i.my, null
  %i.mz = getelementptr i8, ptr %5, i64 104
  %i.na = select i1 %.not9.i, ptr %i.mz, ptr %i.my
  %i.nb = sext i32 %i.mu to i64
  %i.nc = getelementptr [8 x i8], ptr %i.na, i64 %i.nb
  store ptr %i.mq, ptr %i.nc, align 8, !tbaa !84
  br label %.fold.split

bb.en:                                            ; preds = %bb.el
  %i.nd = load i32, ptr %i.mn, align 8, !tbaa !21
  %.not391.i = icmp eq i32 %i.nd, 9
  br i1 %.not391.i, label %.fold.split, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ne = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %node_new_empty.exit391.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.ne, align 1
  %i.ng = getelementptr i8, ptr %i.ne, i64 28
  store i32 0, ptr %i.ng, align 4, !tbaa !21
  %i.nh = getelementptr i8, ptr %i.ne, i64 24
  store i32 0, ptr %i.nh, align 8, !tbaa !21
  %i.ni = getelementptr i8, ptr %i.ne, i64 32     ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ne, i64 8
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !21
  %i.nk = getelementptr i8, ptr %i.ne, i64 16
  store ptr %i.ni, ptr %i.nk, align 8, !tbaa !21
  %i.nl = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 6 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %node_new_empty.exit391.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store i32 9, ptr %i.nl, align 1
  %i.nn = getelementptr i8, ptr %i.nl, i64 8
  store ptr %i.ne, ptr %i.nn, align 8, !tbaa !21
  %i.no = getelementptr i8, ptr %i.nl, i64 16
  store ptr null, ptr %i.no, align 8, !tbaa !21
  %i.np = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %node_new_empty.exit391.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store i32 9, ptr %i.np, align 1
  %i.nr = getelementptr i8, ptr %i.np, i64 8
  store ptr %i.mn, ptr %i.nr, align 8, !tbaa !21
  %i.ns = getelementptr i8, ptr %i.np, i64 16
  store ptr %i.nl, ptr %i.ns, align 8, !tbaa !21
  %i.nt = getelementptr i8, ptr %i.mq, i64 24
  store ptr %i.np, ptr %i.nt, align 8, !tbaa !21
  br label %.fold.split

node_new_empty.exit391.thread:                    ; preds = %bb.eq, %bb.ep, %bb.eo
  %.0323.i = phi ptr [ %i.ne, %bb.ep ], [ null, %bb.eo ], [ null, %bb.eq ]
  %.0322.i = phi ptr [ null, %bb.ep ], [ null, %bb.eo ], [ %i.nl, %bb.eq ]
  tail call void @onig_node_free(ptr noundef %.0323.i), !inline_history !150
  tail call void @onig_node_free(ptr noundef %.0322.i), !inline_history !150
  %i.nu = load ptr, ptr %0, align 8, !tbaa !84
  tail call void @onig_node_free(ptr noundef %i.nu), !inline_history !150
  store ptr null, ptr %0, align 8, !tbaa !84
  br label %parse_enclose.exit.thread

parse_enclose.exit.thread:                        ; preds = %bb.ci, %.thread, %bb.dn, %bb.dl, %bb.cp, %bb.cx, %bb.dc, %bb.dg, %bb.dd, %bb.dh, %bb.j, %bb.q, %bb.ed, %bb.ef, %bb.ei, %bb.eg, %node_new_empty.exit391.thread, %bb.r, %bb.ai, %bb.av, %bb.ec, %bb.aw, %bb.ax, %bb.x, %bb.z, %bb.ay, %bb.ab, %.critedge.i.thread, %bb.at, %bb.cb, %bb.bb, %bb.e, %bb.p, %bb.ah, %bb.aa, %bb.ba, %bb.ca, %bb.dp, %bb.dt, %bb.dr, %bb.ds, %bb.em
  %.3.i.ph = phi i32 [ -11, %bb.em ], [ %i.la, %bb.ds ], [ %i.ky, %bb.dr ], [ -117, %bb.ai ], [ %i.bp, %bb.r ], [ -5, %node_new_empty.exit391.thread ], [ %i.mf, %bb.eg ], [ %i.mh, %bb.ei ], [ -5, %bb.ef ], [ %i.lz, %bb.ed ], [ -5, %bb.dt ], [ -5, %bb.dp ], [ %i.bn, %bb.q ], [ -118, %bb.j ], [ -119, %bb.ca ], [ -119, %bb.ba ], [ -119, %bb.aa ], [ -119, %bb.ah ], [ -119, %bb.p ], [ -117, %bb.e ], [ -119, %bb.bb ], [ -119, %bb.cb ], [ -119, %bb.at ], [ %.0313.i.ph, %.critedge.i.thread ], [ -119, %bb.ab ], [ -5, %bb.ay ], [ -119, %bb.z ], [ -119, %bb.x ], [ %i.eu, %bb.ax ], [ %i.ep, %bb.aw ], [ -5, %bb.ec ], [ %i.en, %bb.av ], [ -118, %.thread ], [ -119, %bb.dn ], [ -119, %bb.ci ], [ -119, %bb.dl ], [ -119, %bb.cp ], [ -119, %bb.cx ], [ -119, %bb.dc ], [ -119, %bb.dg ], [ -119, %bb.dd ], [ -119, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %node_new_quantifier.exit379

bb.es:                                            ; preds = %bb.dp
  store ptr %i.is, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  %i.nv = load i32, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.nw = getelementptr i8, ptr %i.kv, i64 16
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !21
  store i32 %i.nx, ptr %5, align 8, !tbaa !79
  %i.ny = tail call fastcc i32 @fetch_token(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 %i.nv, ptr %5, align 8, !tbaa !79
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.oa = call fastcc i32 @parse_subexp(ptr noundef nonnull %i.o, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  store i32 %i.nv, ptr %5, align 8, !tbaa !79
  %i.ob = icmp slt i32 %i.oa, 0
  %i.oc = load ptr, ptr %i.o, align 8, !tbaa !84  ; 2 uses
  br i1 %i.ob, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  tail call void @onig_node_free(ptr noundef %i.oc)
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.od = load ptr, ptr %0, align 8, !tbaa !84
  %i.oe = getelementptr i8, ptr %i.od, i64 24
  store ptr %i.oc, ptr %i.oe, align 8, !tbaa !21
  %i.of = load i32, ptr %1, align 8, !tbaa !93
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.et
  %.0279 = phi i32 [ %i.ny, %bb.et ], [ %i.oa, %bb.ev ], [ %i.of, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  br label %node_new_quantifier.exit379

bb.ey:                                            ; preds = %bb.b
  %i.og = getelementptr i8, ptr %5, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !91
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !60
  %i.ok = and i32 %i.oj, 4
  %.not335 = icmp eq i32 %i.ok, 0
  br i1 %.not335, label %node_new_quantifier.exit379, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ol = getelementptr i8, ptr %1, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !98
  %.not336 = icmp eq i32 %i.om, 0
  br i1 %.not336, label %bb.ib, label %bb.il

bb.fa:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.on = getelementptr i8, ptr %5, i64 8         ; 4 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !90 ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 48
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !102
  %i.or = call i32 %i.oq(i32 noundef 13, ptr noundef nonnull %i.i, ptr noundef %i.oo) #25, !inline_history !151 ; 3 uses
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %node_linebreak.exit.thread, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !90 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 48
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !102
  %i.ow = zext nneg i32 %i.or to i64
  %i.ox = getelementptr i8, ptr %i.i, i64 %i.ow   ; 2 uses
  %i.oy = call i32 %i.ov(i32 noundef 10, ptr noundef %i.ox, ptr noundef %i.ot) #25, !inline_history !151 ; 3 uses
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %node_linebreak.exit.thread, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pa = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 16 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %node_new_str_raw.exit.thread.i, label %bb.fd
end_hunk_2
begin_hunk_3_@scan_env_add_mem_entry:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -219, 1) i32 @name_add(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr nofree noundef captures(none) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %name_find.exit

name_find.exit:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !24
  %i.i = ptrtoint ptr %5 to i64
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.c, i64 noundef %i.i, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !20 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.k = icmp eq ptr %.pre.i, null
  br i1 %i.k, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.l = tail call ptr @rb_st_init_table_with_size(ptr noundef nonnull @onig_st_init_strend_table_with_size.hashType, i64 noundef 5) #25 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %name_find.exit, %bb.c
  %.062 = phi ptr [ %i.l, %bb.c ], [ %i.c, %name_find.exit ]
  %i.m = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 20
  %.val = load i32, ptr %i.q, align 4, !tbaa !52  ; 3 uses
  %i.r = sext i32 %.val to i64
  %i.s = add i64 %i.f, %i.r
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #26 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %1, i64 noundef %i.f, i1 noundef false) #25
  %i.v = icmp sgt i32 %.val, 0
  br i1 %i.v, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.t, i64 %i.f
  %i.x = zext nneg i32 %.val to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false), !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.m) #25
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %.lr.ph.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !53
  %i.y = getelementptr i8, ptr %i.t, i64 %i.f
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !24
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = call i32 @rb_st_insert(ptr noundef %.062, i64 noundef %i.ac, i64 noundef %i.z) #25
  %.not.i75 = icmp eq i32 %i.ad, 0
  br i1 %.not.i75, label %.thread94, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aa) #25
  br label %.thread94

.thread94:                                        ; preds = %bb.h, %bb.i
  %i.ae = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %i.m, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !48
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !47
  br label %bb.n

bb.j:                                             ; preds = %name_find.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !47 ; 4 uses
  %i.ai = getelementptr i8, ptr %.pre.i, i64 16   ; 3 uses
  %i.aj = icmp sgt i32 %.pre, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, 256
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %4, i64 56
  store ptr %1, ptr %i.ap, align 8, !tbaa !88
  %i.aq = getelementptr i8, ptr %4, i64 64
  store ptr %2, ptr %i.aq, align 8, !tbaa !89
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !47
  %i.as = icmp eq i32 %.pre, 0
  br i1 %i.as, label %bb.n, label %.thread77

bb.n:                                             ; preds = %.thread94, %bb.m
  %.0639396 = phi ptr [ %i.m, %.thread94 ], [ %.pre.i, %bb.m ]
  %i.at = getelementptr i8, ptr %.0639396, i64 24
  store i32 %3, ptr %i.at, align 8, !tbaa !49
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.au = add nuw i32 %.pre, 1                    ; 3 uses
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !47
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.p, label %.thread77

bb.p:                                             ; preds = %bb.o
  %i.aw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %i.ax = getelementptr i8, ptr %.pre.i, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !50
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %.pre.i, i64 20
  store i32 8, ptr %i.az, align 4, !tbaa !48
  %i.ba = getelementptr i8, ptr %.pre.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !49
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !18
  %i.bc = getelementptr i8, ptr %i.aw, i64 4
  store i32 %3, ptr %i.bc, align 4, !tbaa !18
  br label %.critedge

.thread77:                                        ; preds = %bb.m, %bb.o
  %i.bd = phi i32 [ %i.au, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %i.be = getelementptr i8, ptr %.pre.i, i64 20   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !48 ; 2 uses
  %i.bg = icmp sgt i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.r, label %.thread77._crit_edge

.thread77._crit_edge:                             ; preds = %.thread77
  %.phi.trans.insert78 = getelementptr i8, ptr %.pre.i, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !50
  br label %bb.t

bb.r:                                             ; preds = %.thread77
  %i.bh = shl i32 %i.bf, 1                        ; 2 uses
  %i.bi = getelementptr i8, ptr %.pre.i, i64 32   ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bl) #27 ; 3 uses
  %.not73 = icmp eq ptr %i.bm, null
  br i1 %.not73, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !50
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !48
  %.pre80 = load i32, ptr %i.ai, align 8, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %.thread77._crit_edge, %bb.s
  %i.bn = phi i32 [ %i.bd, %.thread77._crit_edge ], [ %.pre80, %bb.s ]
  %i.bo = phi ptr [ %.pre79, %.thread77._crit_edge ], [ %i.bm, %bb.s ]
  %i.bp = add i32 %i.bn, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %3, ptr %i.br, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.n, %bb.t, %bb.q, %bb.p, %bb.d, %bb.a, %bb.l, %bb.g
  %.1 = phi i32 [ -219, %bb.l ], [ -214, %bb.a ], [ -5, %bb.g ], [ 0, %bb.n ], [ -5, %bb.d ], [ -5, %bb.r ], [ -5, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_option(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !21
  store i32 %0, ptr %i.c, align 8, !tbaa !21
  br label %node_new_enclose.exit.thread

node_new_enclose.exit.thread:                     ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_str_raw(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !21
  %i.h = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %node_new_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @onig_node_free(ptr noundef nonnull %i.a)
  br label %node_new_str.exit.thread

node_new_str.exit:                                ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !21
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8, !tbaa !21
  br label %node_new_str.exit.thread

node_new_str.exit.thread:                         ; preds = %bb.c, %bb.a, %node_new_str.exit
  %.0.i7 = phi ptr [ %i.a, %node_new_str.exit ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0.i7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bitset_set_range(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp sle i32 %2, %3
  %i.b = icmp slt i32 %2, 256
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %3, i32 255)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CC_DUP_WARN.exit
  %.014 = phi i32 [ %2, %.lr.ph ], [ %i.aa, %CC_DUP_WARN.exit ] ; 4 uses
  %i.f = sdiv i32 %.014, 32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.j = and i32 %.014, 31
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr @onig_warn, align 8
  %i.n = icmp eq ptr %i.m, @onig_null_warn
  %or.cond = select i1 %.not, i1 true, i1 %i.n
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = and i64 %i.p, -5
  %.not5.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.e, align 4, !tbaa !104  ; 2 uses
  %i.w = and i32 %i.v, 67108864
  %.not4.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i, label %bb.f, label %CC_DUP_WARN.exit

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i32 %i.v, 67108864
  store i32 %i.x, ptr %i.e, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = load i32, ptr %i.h, align 4, !tbaa !18
  %i.z = or i32 %i.y, %i.k
  store i32 %i.z, ptr %i.h, align 4, !tbaa !18
  %i.aa = add nsw i32 %.014, 1
  %i.ab = icmp slt i32 %.014, %invariant.smin
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_code_range_to_buf0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %2, %3                      ; 2 uses
  %spec.select = select i1 %i.a, i32 %3, i32 %2   ; 7 uses
  %spec.select356 = select i1 %i.a, i32 %2, i32 %3 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !105
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge230, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef 20) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %.critedge230

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !115  ; 2 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !65
  br label %bb.g

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.j = phi i32 [ %i.k, %.preheader.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 1                  ; 3 uses
  %i.l = icmp samesign ult i32 %i.j, 2
  br i1 %i.l, label %.preheader.i, label %bb.e, !llvm.loop !186

bb.e:                                             ; preds = %.preheader.i
  store i32 %i.k, ptr %i.g, align 4, !tbaa !115
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.n = zext nneg i32 %i.k to i64
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #27 ; 3 uses
  %.not29.i = icmp eq ptr %i.o, null
  br i1 %.not29.i, label %.critedge230, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.d, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.f ]
  store i32 0, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !116
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.q, align 8, !tbaa !116
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr i8, ptr %.pre, i64 4
  br label %._crit_edge263

bb.i:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18   ; 7 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4        ; 4 uses
  %i.y = icmp eq i32 %spec.select, 0
  %.not272 = icmp eq i32 %i.w, 0
  %.not = select i1 %i.y, i1 true, i1 %.not272
end_hunk_3
