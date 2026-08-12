inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0_@odb_read_object
declare ptr @odb_read_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @read_mailmap(ptr noundef %0, ptr noundef initializes((32, 40)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !55
  %i.c = call i32 @repo_config_get_pathname(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.d = call i32 @repo_config_get_string(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @namemap_cmp, ptr %i.h, align 8, !tbaa !56
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !55
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @is_bare_repository() #12
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @xstrdup(ptr noundef nonnull @.str.6) #12
  store ptr %i.k, ptr %i.b, align 8, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = load ptr, ptr @startup_info, align 8, !tbaa !57
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @is_bare_repository() #12
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr @startup_info, align 8, !tbaa !57
  %.pre16 = load i32, ptr %.pre, align 8, !tbaa !59
  %i.o = icmp ne i32 %.pre16, 0
  %i.p = zext i1 %i.o to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %.not14 = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.d ]
  %i.q = call i32 @read_mailmap_file(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %.not14)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.q, %bb.f ]     ; 2 uses
  %i.r = load ptr, ptr @startup_info, align 8, !tbaa !57
  %i.s = load i32, ptr %i.r, align 8, !tbaa !59
  %.not15 = icmp eq i32 %i.s, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.u = call i32 @read_mailmap_blob(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.t)
  %i.v = or i32 %i.u, %.0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.v, %bb.h ], [ %.0, %bb.g ]
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.x = call i32 @read_mailmap_file(ptr noundef nonnull %1, ptr noundef %i.w, i32 noundef 0)
  %i.y = or i32 %i.x, %.1
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @free(ptr noundef %i.z) #12
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !55
  call void @free(ptr noundef %i.aa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.y
}

declare i32 @repo_config_get_pathname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_config_get_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define internal i32 @namemap_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef %1) #14
  ret i32 %i.a
}

declare i32 @is_bare_repository() local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clear_mailmap(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = or i8 %i.b, 1
  store i8 %i.c, ptr %i.a, align 8
  tail call void @string_list_clear_func(ptr noundef %0, ptr noundef nonnull @free_mailmap_entry) #12
  ret void
}

declare void @string_list_clear_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_mailmap_entry(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  tail call void @string_list_clear_func(ptr noundef nonnull %i.d, ptr noundef nonnull @free_mailmap_info) #12
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @map_user(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !61     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = call i64 @string_list_find_insert_index(ptr noundef %0, ptr noundef %i.c, ptr noundef nonnull %i.b) #12 ; 5 uses
  %i.f = load i8, ptr %i.b, align 1, !tbaa !62, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %.not27.i = icmp eq i8 %i.i, 0                  ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not27.i, label %lookup_prefix.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not2836.i = icmp eq i64 %i.e, 0
  %or.cond.i = select i1 %.not27.i, i1 true, i1 %.not2836.i
  br i1 %or.cond.i, label %lookup_prefix.exit.thread, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %.not2836.old.i = icmp eq i64 %i.e, 0
  br i1 %.not2836.old.i, label %lookup_prefix.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65
  %i.l = add i64 %i.e, -1
  %.first_iter.i = icmp ult i64 %i.l, %i.k
  br i1 %.first_iter.i, label %.lr.ph.i.split, label %lookup_prefix.exit.thread

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.split
  %.in.i = phi i64 [ %i.e, %.lr.ph.i.split ], [ %i.n, %bb.h ]
  %i.n = add i64 %.in.i, -1                       ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 2 uses
  %i.q = call i32 @strncasecmp(ptr noundef %i.p, ptr noundef %i.c, i64 noundef %i.d) #14 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %lookup_prefix.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not29.i = icmp eq i32 %i.q, 0
  br i1 %.not29.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.d
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %.not30.i = icmp eq i8 %i.t, 0
  br i1 %.not30.i, label %lookup_prefix.exit.thread51, label %bb.h

lookup_prefix.exit.thread51:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not28.i = icmp eq i64 %i.n, 0
  br i1 %.not28.i, label %lookup_prefix.exit.thread, label %bb.e

lookup_prefix.exit.thread:                        ; preds = %bb.e, %bb.h, %bb.c, %bb.d, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread

lookup_prefix.exit:                               ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %lookup_prefix.exit.thread51, %lookup_prefix.exit
  %.2.i54 = phi ptr [ %i.o, %lookup_prefix.exit.thread51 ], [ %i.v, %lookup_prefix.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i54, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %.not32 = icmp eq i64 %i.z, 0
  br i1 %.not32, label %.thread57, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !55    ; 3 uses
  %i.ac = load i64, ptr %4, align 8, !tbaa !61    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ad = call i64 @string_list_find_insert_index(ptr noundef nonnull %i.aa, ptr noundef %i.ab, ptr noundef nonnull %i.a) #12 ; 5 uses
  %i.ae = load i8, ptr %i.a, align 1, !tbaa !62, !range !63, !noundef !64
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %.not27.i37 = icmp eq i8 %i.ah, 0               ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not27.i37, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ad
  br label %.loopexit.split

bb.m:                                             ; preds = %bb.j
  %.not2836.i38 = icmp eq i64 %i.ad, 0
  %or.cond.i39 = select i1 %.not27.i37, i1 true, i1 %.not2836.i38
  br i1 %or.cond.i39, label %.loopexit.split, label %.lr.ph.i40

bb.n:                                             ; preds = %bb.k
  %.not2836.old.i47 = icmp eq i64 %i.ad, 0
  br i1 %.not2836.old.i47, label %.loopexit.split, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.n, %bb.m
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !65
  %i.al = add i64 %i.ad, -1
  %.first_iter.i41 = icmp ult i64 %i.al, %i.ak
  br i1 %.first_iter.i41, label %.lr.ph.i40.split, label %.loopexit.split

.lr.ph.i40.split:                                 ; preds = %.lr.ph.i40
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !66
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i40.split
  %.in.i42 = phi i64 [ %i.ad, %.lr.ph.i40.split ], [ %i.an, %bb.r ]
  %i.an = add i64 %.in.i42, -1                    ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %i.aq = call i32 @strncasecmp(ptr noundef %i.ap, ptr noundef %i.ab, i64 noundef %i.ac) #14 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.loopexit.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not29.i44 = icmp eq i32 %i.aq, 0
  br i1 %.not29.i44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ac
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %.not30.i46 = icmp eq i8 %i.at, 0
  br i1 %.not30.i46, label %.loopexit.split, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not28.i45 = icmp eq i64 %i.an, 0
  br i1 %.not28.i45, label %.loopexit.split, label %bb.o

.loopexit.split:                                  ; preds = %bb.r, %bb.q, %bb.o, %.lr.ph.i40, %bb.n, %bb.m, %bb.l
  %.2.i43 = phi ptr [ %i.aj, %bb.l ], [ null, %bb.m ], [ null, %bb.n ], [ null, %.lr.ph.i40 ], [ %i.ao, %bb.q ], [ null, %bb.r ], [ null, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not33 = icmp eq ptr %.2.i43, null
  %spec.select = select i1 %.not33, ptr %.2.i54, ptr %.2.i43 ; 2 uses
  %.not34 = icmp eq ptr %spec.select, null
  br i1 %.not34, label %.thread, label %.loopexit.split..thread57_crit_edge

.loopexit.split..thread57_crit_edge:              ; preds = %.loopexit.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %.thread57

.thread57:                                        ; preds = %.loopexit.split..thread57_crit_edge, %bb.i
  %i.au = phi ptr [ %.pre, %.loopexit.split..thread57_crit_edge ], [ %i.x, %bb.i ] ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null                 ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread57
  br i1 %i.az, label %.thread, label %.thread71

bb.t:                                             ; preds = %.thread57
  br i1 %i.az, label %.thread73, label %.thread71

.thread71:                                        ; preds = %bb.s, %bb.t
  store ptr %i.ay, ptr %1, align 8, !tbaa !55
  %i.ba = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #14
  store i64 %i.ba, ptr %2, align 8, !tbaa !61
  %.pre64 = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %.not36 = icmp eq ptr %.pre64, null
  br i1 %.not36, label %.thread, label %.thread73

.thread73:                                        ; preds = %bb.t, %.thread71
  %i.bb = phi ptr [ %.pre64, %.thread71 ], [ %i.av, %bb.t ] ; 2 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !55
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #14
  store i64 %i.bc, ptr %4, align 8, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %lookup_prefix.exit.thread, %lookup_prefix.exit, %.loopexit.split, %bb.s, %.thread73, %.thread71
  %.1 = phi i32 [ 1, %.thread71 ], [ 0, %bb.s ], [ 1, %.thread73 ], [ 0, %.loopexit.split ], [ 0, %lookup_prefix.exit ], [ 0, %lookup_prefix.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @free_mailmap_info(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.c) #12
  tail call void @free(ptr noundef %0) #12
  ret void
}

declare i64 @string_list_find_insert_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{!19, !21, i64 8}
!19 = !{!"string_list_item", !20, i64 0, !21, i64 8}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !10, i64 0}
!22 = !{!23, !21, i64 48}
!23 = !{!"mailmap_entry", !20, i64 0, !20, i64 8, !24, i64 16}
!24 = !{!"string_list", !25, i64 0, !26, i64 8, !26, i64 16, !9, i64 24, !21, i64 32}
!25 = !{!"p1 _ZTS16string_list_item", !21, i64 0}
!26 = !{!"long", !10, i64 0}
!27 = !{!23, !20, i64 0}
!28 = !{!23, !20, i64 8}
!29 = !{!30, !20, i64 0}
!30 = !{!"mailmap_info", !20, i64 0, !20, i64 8}
!31 = !{!30, !20, i64 8}
!32 = !{!33, !34, i64 16}
!33 = !{!"repository", !20, i64 0, !20, i64 8, !34, i64 16, !35, i64 24, !36, i64 32, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !20, i64 232, !20, i64 240, !20, i64 248, !37, i64 256, !37, i64 257, !20, i64 264, !44, i64 272, !46, i64 416, !47, i64 424, !48, i64 432, !49, i64 440, !50, i64 448, !50, i64 456, !51, i64 464, !9, i64 512, !20, i64 520, !9, i64 528, !9, i64 532, !52, i64 536, !9, i64 544, !38, i64 552, !24, i64 616, !20, i64 656, !53, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !37, i64 689, !37, i64 690}
!34 = !{!"p1 _ZTS15object_database", !21, i64 0}
!35 = !{!"p1 _ZTS18parsed_object_pool", !21, i64 0}
!36 = !{!"p1 _ZTS9ref_store", !21, i64 0}
!37 = !{!"_Bool", !10, i64 0}
!38 = !{!"strmap", !39, i64 0, !42, i64 48, !9, i64 56}
!39 = !{!"hashmap", !40, i64 0, !21, i64 8, !21, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!40 = !{!"p2 _ZTS13hashmap_entry", !41, i64 0}
!41 = !{!"any p2 pointer", !21, i64 0}
!42 = !{!"p1 _ZTS8mem_pool", !21, i64 0}
!43 = !{!"repo_path_cache", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!44 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !45, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !26, i64 96, !26, i64 104, !26, i64 112, !26, i64 120, !9, i64 128, !20, i64 136}
!45 = !{!"p1 _ZTS18fsmonitor_settings", !21, i64 0}
!46 = !{!"p1 _ZTS10config_set", !21, i64 0}
!47 = !{!"p1 _ZTS15submodule_cache", !21, i64 0}
!48 = !{!"p1 _ZTS11index_state", !21, i64 0}
!49 = !{!"p1 _ZTS12remote_state", !21, i64 0}
!50 = !{!"p1 _ZTS13git_hash_algo", !21, i64 0}
!51 = !{!"repo_config_values", !20, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!52 = !{!"p1 _ZTS6strmap", !21, i64 0}
!53 = !{!"p1 _ZTS22promisor_remote_config", !21, i64 0}
!54 = distinct !{!54, !14}
!55 = !{!20, !20, i64 0}
!56 = !{!24, !21, i64 32}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTS12startup_info", !21, i64 0}
!59 = !{!60, !9, i64 0}
!60 = !{!"startup_info", !9, i64 0, !20, i64 8, !20, i64 16}
!61 = !{!26, !26, i64 0}
!62 = !{!37, !37, i64 0}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!24, !26, i64 8}
!66 = !{!24, !25, i64 0}
!67 = !{!19, !20, i64 0}
!68 = !{!23, !26, i64 24}
end_hunk_0
