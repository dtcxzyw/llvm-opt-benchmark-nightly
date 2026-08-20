inline.NumInlined: 31
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@php_stream_context_set_option:bb.a
bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %3, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi ptr [ %i.y, %bb.f ], [ %3, %bb.e ]    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %.0, align 8, !tbaa !27   ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load ptr, ptr %.037, align 8, !tbaa !27 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !49
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %zend_gc_try_delref.exit, !prof !28

bb.j:                                             ; preds = %bb.i
  %i.ah = call ptr @zend_array_dup(ptr noundef nonnull %i.ae) #25 ; 2 uses
  store ptr %i.ah, ptr %.037, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.037, i64 8
  store i32 775, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = and i32 %i.ak, 64
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.k, label %zend_gc_try_delref.exit

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !49
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.ae, align 4, !tbaa !49
  %.pre41 = load ptr, ptr %.037, align 8, !tbaa !27
  br label %zend_gc_try_delref.exit

zend_gc_try_delref.exit:                          ; preds = %bb.k, %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre41, %bb.k ], [ %i.ah, %bb.j ], [ %i.ae, %bb.i ]
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.aq = call ptr @zend_hash_str_update(ptr noundef %i.ao, ptr noundef nonnull %2, i64 noundef %i.ap, ptr noundef nonnull %.0) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #6

declare ptr @zend_hash_str_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @php_stream_context_unset_option(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = tail call ptr @zend_hash_str_find(ptr noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c) #25 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49
  %i.h = icmp ugt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %zend_gc_try_delref.exit26, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @zend_array_dup(ptr noundef nonnull %i.f) #25
  store ptr %i.i, ptr %i.a, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 775, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = and i32 %i.l, 64
  %.not.i25 = icmp eq i32 %i.m, 0
  br i1 %.not.i25, label %bb.d, label %zend_gc_try_delref.exit26

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.f, align 4, !tbaa !49
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.f, align 4, !tbaa !49
  br label %zend_gc_try_delref.exit26

zend_gc_try_delref.exit26:                        ; preds = %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !27   ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %zend_gc_try_delref.exit, !prof !28

bb.e:                                             ; preds = %zend_gc_try_delref.exit26
  %i.s = tail call ptr @zend_array_dup(ptr noundef nonnull %i.p) #25 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 775, ptr %i.t, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = and i32 %i.v, 64
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.f, label %zend_gc_try_delref.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.p, align 4, !tbaa !49
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.p, align 4, !tbaa !49
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %zend_gc_try_delref.exit

zend_gc_try_delref.exit:                          ; preds = %bb.f, %bb.e, %zend_gc_try_delref.exit26
  %i.z = phi ptr [ %.pre, %bb.f ], [ %i.s, %bb.e ], [ %i.p, %zend_gc_try_delref.exit26 ]
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.ab = tail call i32 @zend_hash_str_del(ptr noundef %i.z, ptr noundef nonnull %2, i64 noundef %i.aa) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %zend_gc_try_delref.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @php_stream_context_get_uri_parser(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.e = tail call ptr @zend_hash_str_find(ptr noundef %i.c, ptr noundef nonnull %0, i64 noundef %i.d) #25 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.sink.split, label %php_stream_context_get_option.exit

php_stream_context_get_option.exit:               ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.h = tail call ptr @zend_hash_str_find(ptr noundef %i.g, ptr noundef nonnull @.str.28, i64 noundef 16) #25 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %php_stream_context_get_option.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27
  switch i8 %i.k, label %bb.e [
    i8 1, label %.sink.split
    i8 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %php_stream_context_get_option.exit, %bb.b, %bb.c, %bb.a, %bb.d
  %.sink = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %php_stream_context_get_option.exit ]
  %i.m = tail call ptr @php_uri_get_parser(ptr noundef %.sink) #25
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.m, %.sink.split ]
  ret ptr %.1
}

declare ptr @php_uri_get_parser(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local i32 @php_stream_dirent_alphasort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %1, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call i32 @strcoll(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #26
  ret i32 %i.e
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local i32 @php_stream_dirent_alphasortr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %0, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call i32 @strcoll(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #26
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_php_stream_scandir(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct._php_stream_dirent, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_php_stream_opendir(ptr noundef %0, i32 noundef 8, ptr noundef %3) ; 5 uses
  %.not47 = icmp eq ptr %i.a, null
  br i1 %.not47, label %bb.i, label %.split41

.split41:                                         ; preds = %bb.b
  %i.b = call i64 @_php_stream_read(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 4097)
  %.not62 = icmp eq i64 %i.b, 4097
  br i1 %.not62, label %.lr.ph, label %select.unfold50._crit_edge

.lr.ph:                                           ; preds = %.split41, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ 0, %.split41 ] ; 5 uses
  %.03656 = phi i32 [ %.2, %.split ], [ 0, %.split41 ] ; 5 uses
  %.03755 = phi ptr [ %.138, %.split ], [ null, %.split41 ] ; 3 uses
  %i.c = zext i32 %.03656 to i64
  %i.d = icmp eq i64 %indvars.iv, %i.c
  br i1 %i.d, label %bb.c, label %zend_string_init.exit

bb.c:                                             ; preds = %.lr.ph
  %i.e = icmp eq i32 %.03656, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %.03656, 0
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = shl nuw i32 %.03656, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.g, %bb.e ], [ 10, %bb.c ]    ; 2 uses
  %i.h = zext i32 %.1 to i64
  %i.i = call ptr @_safe_erealloc(ptr noundef %.03755, i64 noundef %i.h, i64 noundef 8, i64 noundef 0) #25
  br label %zend_string_init.exit

zend_string_init.exit:                            ; preds = %bb.f, %.lr.ph
  %.138 = phi ptr [ %i.i, %bb.f ], [ %.03755, %.lr.ph ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.f ], [ %.03656, %.lr.ph ] ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26 ; 4 uses
  %i.k = and i64 %i.j, -8
  %i.l = add i64 %i.k, 32
  %i.m = call noalias ptr @_emalloc(i64 noundef %i.l) #27 ; 6 uses
  store i32 1, ptr %i.m, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 22, ptr %i.n, align 4, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.j, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 1 %5, i64 %i.j, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store i8 0, ptr %i.r, align 1, !tbaa !27
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.138, i64 %indvars.iv
  store ptr %i.m, ptr %i.s, align 8, !tbaa !161
  %i.t = icmp ult i32 %.2, 10
  br i1 %i.t, label %bb.h, label %.split

.split:                                           ; preds = %zend_string_init.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = call i64 @_php_stream_read(ptr noundef nonnull %i.a, ptr noundef nonnull %5, i64 noundef 4097)
  %.not63 = icmp eq i64 %i.u, 4097
  br i1 %.not63, label %.lr.ph, label %select.unfold50._crit_edge.loopexit

select.unfold50._crit_edge.loopexit:              ; preds = %.split
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %select.unfold50._crit_edge

select.unfold50._crit_edge:                       ; preds = %select.unfold50._crit_edge.loopexit, %.split41
  %.037.lcssa = phi ptr [ null, %.split41 ], [ %.138, %select.unfold50._crit_edge.loopexit ] ; 2 uses
  %.035.lcssa = phi i32 [ 0, %.split41 ], [ %indvars.le, %select.unfold50._crit_edge.loopexit ] ; 4 uses
  %i.v = call i32 @_php_stream_free(ptr noundef nonnull %i.a, i32 noundef 3) ; 0 uses
  store ptr %.037.lcssa, ptr %1, align 8, !tbaa !179
  %i.w = icmp ne i32 %.035.lcssa, 0
  %i.x = icmp ne ptr %4, null
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %select.unfold50._crit_edge
  %i.y = zext i32 %.035.lcssa to i64
  call void @qsort(ptr noundef %.037.lcssa, i64 noundef %i.y, i64 noundef 8, ptr noundef nonnull %4) #25
  br label %bb.i

bb.h:                                             ; preds = %zend_string_init.exit, %bb.d
  %.239 = phi ptr [ %.03755, %bb.d ], [ %.138, %zend_string_init.exit ] ; 2 uses
  %i.z = call i32 @_php_stream_free(ptr noundef nonnull %i.a, i32 noundef 3) ; 0 uses
  %.not64 = icmp eq i64 %indvars.iv, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph61

._crit_edge:                                      ; preds = %.lr.ph61, %bb.h
  call void @_efree(ptr noundef %.239) #25
  br label %bb.i

.lr.ph61:                                         ; preds = %bb.h, %.lr.ph61
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph61 ], [ 0, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv67
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  call void @_efree(ptr noundef %i.ab) #25
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %indvars.iv
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph61, !llvm.loop !199

bb.i:                                             ; preds = %select.unfold50._crit_edge, %bb.g, %bb.b, %bb.a, %._crit_edge
  %.040 = phi i32 [ -1, %._crit_edge ], [ -1, %bb.b ], [ -1, %bb.a ], [ %.035.lcssa, %bb.g ], [ %.035.lcssa, %select.unfold50._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.040
}

declare ptr @_safe_erealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @zend_llist_destroy(ptr noundef) local_unnamed_addr #6

declare ptr @zend_memnstr_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @zend_hash_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_hash_find_known_hash(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @zend_llist_count(ptr noundef) local_unnamed_addr #6

declare ptr @zend_llist_get_first_ex(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @zend_llist_get_next_ex(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #22

declare ptr @php_socket_strerror(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind allocsize(0,1) }

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
!13 = !{!14, !20, i64 64}
!14 = !{!"", !9, i64 0, !15, i64 8, !16, i64 16, !15, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !19, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !9, i64 88, !21, i64 96, !17, i64 128, !15, i64 136}
!15 = !{!"long", !10, i64 0}
!16 = !{!"_Bool", !10, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!"p1 _ZTS19_php_stream_context", !18, i64 0}
!20 = !{!"p1 _ZTS11_zend_array", !18, i64 0}
!21 = !{!"hostent", !17, i64 0, !22, i64 8, !9, i64 16, !9, i64 20, !22, i64 24}
!22 = !{!"p2 omnipotent char", !23, i64 0}
!23 = !{!"any p2 pointer", !18, i64 0}
!24 = !{!25, !9, i64 24}
!25 = !{!"_zend_array", !26, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !18, i64 48}
!26 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!27 = !{!10, !10, i64 0}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!30, !9, i64 16}
!30 = !{!"_zend_resource", !26, i64 0, !15, i64 8, !9, i64 16, !18, i64 24}
!31 = !{!30, !18, i64 24}
!32 = !{!33, !41, i64 120}
!33 = !{!"_php_stream", !34, i64 0, !18, i64 8, !35, i64 16, !35, i64 40, !38, i64 64, !18, i64 72, !39, i64 80, !40, i64 96, !40, i64 96, !40, i64 96, !40, i64 96, !40, i64 96, !40, i64 96, !40, i64 97, !40, i64 97, !10, i64 98, !9, i64 116, !41, i64 120, !42, i64 128, !17, i64 136, !41, i64 144, !15, i64 152, !17, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !37, i64 200}
!34 = !{!"p1 _ZTS15_php_stream_ops", !18, i64 0}
!35 = !{!"_php_stream_filter_chain", !36, i64 0, !36, i64 8, !37, i64 16}
!36 = !{!"p1 _ZTS18_php_stream_filter", !18, i64 0}
!37 = !{!"p1 _ZTS11_php_stream", !18, i64 0}
!38 = !{!"p1 _ZTS19_php_stream_wrapper", !18, i64 0}
!39 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!40 = !{!"short", !10, i64 0}
!41 = !{!"p1 _ZTS14_zend_resource", !18, i64 0}
!42 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!43 = !{!33, !41, i64 144}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!33, !37, i64 200}
!47 = !{}
!48 = !{!37, !37, i64 0}
!49 = !{!26, !9, i64 0}
!50 = distinct !{!50, !45}
!51 = !{!52, !15, i64 8}
!52 = !{!"_zend_string", !26, i64 0, !15, i64 8, !15, i64 16, !10, i64 24}
!53 = !{!52, !15, i64 16}
!54 = distinct !{!54, !45}
!55 = !{!38, !38, i64 0}
!56 = !{!17, !17, i64 0}
!57 = !{!14, !20, i64 80}
!58 = !{!33, !37, i64 32}
!59 = !{!33, !37, i64 56}
!60 = !{!33, !34, i64 0}
!61 = !{!33, !18, i64 8}
!62 = !{!14, !15, i64 8}
!63 = !{!33, !15, i64 192}
!64 = !{!14, !16, i64 16}
!65 = !{i8 0, i8 2}
!66 = !{!33, !9, i64 116}
!67 = !{!33, !17, i64 160}
!68 = !{!69, !10, i64 1089}
!69 = !{!"_zend_executor_globals", !39, i64 0, !39, i64 16, !10, i64 32, !70, i64 288, !70, i64 296, !25, i64 304, !25, i64 360, !71, i64 416, !9, i64 424, !16, i64 428, !39, i64 432, !9, i64 448, !20, i64 456, !20, i64 464, !20, i64 472, !72, i64 480, !72, i64 488, !73, i64 496, !15, i64 504, !74, i64 512, !75, i64 520, !9, i64 528, !74, i64 536, !9, i64 544, !15, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !16, i64 572, !16, i64 573, !76, i64 574, !76, i64 575, !20, i64 576, !15, i64 584, !18, i64 592, !18, i64 600, !25, i64 608, !25, i64 664, !9, i64 720, !16, i64 724, !39, i64 728, !39, i64 744, !77, i64 760, !77, i64 784, !77, i64 808, !75, i64 832, !9, i64 840, !9, i64 844, !15, i64 848, !20, i64 856, !20, i64 864, !78, i64 872, !79, i64 880, !81, i64 904, !82, i64 960, !82, i64 968, !83, i64 976, !10, i64 984, !84, i64 1080, !16, i64 1088, !10, i64 1089, !15, i64 1096, !9, i64 1104, !9, i64 1108, !85, i64 1112, !10, i64 1120, !18, i64 1376, !10, i64 1384, !86, i64 1640, !25, i64 1672, !15, i64 1728, !87, i64 1736, !88, i64 1760, !88, i64 1768, !89, i64 1776, !15, i64 1784, !16, i64 1792, !9, i64 1796, !90, i64 1800, !91, i64 1808, !15, i64 1816, !92, i64 1824, !15, i64 1840, !15, i64 1848, !93, i64 1856, !10, i64 1936}
!70 = !{!"p2 _ZTS11_zend_array", !23, i64 0}
!71 = !{!"p1 _ZTS13__jmp_buf_tag", !18, i64 0}
!72 = !{!"p1 _ZTS12_zval_struct", !18, i64 0}
!73 = !{!"p1 _ZTS14_zend_vm_stack", !18, i64 0}
!74 = !{!"p1 _ZTS18_zend_execute_data", !18, i64 0}
!75 = !{!"p1 _ZTS17_zend_class_entry", !18, i64 0}
!76 = !{!"zend_atomic_bool_s", !10, i64 0}
!77 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !18, i64 16}
!78 = !{!"p1 _ZTS15_zend_ini_entry", !18, i64 0}
!79 = !{!"_zend_objects_store", !80, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!80 = !{!"p2 _ZTS12_zend_object", !23, i64 0}
!81 = !{!"_zend_lazy_objects_store", !25, i64 0}
!82 = !{!"p1 _ZTS12_zend_object", !18, i64 0}
!83 = !{!"p1 _ZTS8_zend_op", !18, i64 0}
!84 = !{!"p1 _ZTS18_zend_module_entry", !18, i64 0}
!85 = !{!"p1 _ZTS18_HashTableIterator", !18, i64 0}
!86 = !{!"_zend_op", !18, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!87 = !{!"", !72, i64 0, !72, i64 8, !72, i64 16}
!88 = !{!"p1 _ZTS19_zend_fiber_context", !18, i64 0}
!89 = !{!"p1 _ZTS11_zend_fiber", !18, i64 0}
!90 = !{!"p2 _ZTS16_zend_error_info", !23, i64 0}
!91 = !{!"p1 _ZTS12_zend_string", !18, i64 0}
!92 = !{!"_zend_call_stack", !18, i64 0, !15, i64 8}
!93 = !{!"_zend_strtod_state", !10, i64 0, !94, i64 64, !17, i64 72}
!94 = !{!"p1 _ZTS19_zend_strtod_bigint", !18, i64 0}
!95 = !{!33, !36, i64 40}
!96 = !{!97, !18, i64 0}
!97 = !{!"_php_stream_ops", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !17, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!98 = !{!97, !18, i64 24}
!99 = !{ptr @_php_stream_flush}
!100 = !{!33, !42, i64 128}
!101 = !{!97, !18, i64 16}
!102 = !{!33, !36, i64 16}
!103 = !{!104, !41, i64 72}
!104 = !{!"_php_stream_filter", !105, i64 0, !39, i64 8, !36, i64 24, !36, i64 32, !9, i64 40, !106, i64 48, !107, i64 56, !41, i64 72}
!105 = !{!"p1 _ZTS22_php_stream_filter_ops", !18, i64 0}
!106 = !{!"p1 _ZTS24_php_stream_filter_chain", !18, i64 0}
!107 = !{!"_php_stream_bucket_brigade", !108, i64 0, !108, i64 8}
!108 = !{!"p1 _ZTS18_php_stream_bucket", !18, i64 0}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !45}
!111 = !{!33, !38, i64 64}
!112 = !{!113, !114, i64 0}
!113 = !{!"_php_stream_wrapper", !114, i64 0, !18, i64 8, !9, i64 16}
!114 = !{!"p1 _ZTS23_php_stream_wrapper_ops", !18, i64 0}
!115 = !{!116, !18, i64 8}
end_hunk_0
