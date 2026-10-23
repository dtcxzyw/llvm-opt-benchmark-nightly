Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_builtin_functions?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zif_enum_exists:bb.a
  call void @zend_wrong_parameter_error(i32 noundef %.04877.i, i32 noundef %.05174.i, ptr noundef null, i32 noundef %.04976.i, ptr noundef %.05075.i) #13
  br label %class_exists_impl.exit

.critedge.i:                                      ; preds = %zend_parse_arg_bool_ex.exit..critedge_crit_edge.i, %.split78.thread.i, %bb.d
  %i.q = phi i8 [ %.pre.i, %zend_parse_arg_bool_ex.exit..critedge_crit_edge.i ], [ %storemerge.i.i, %.split78.thread.i ], [ 1, %bb.d ]
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.s = trunc nuw i8 %i.q to i1
  call fastcc void @_class_exists_impl(ptr noundef %1, ptr noundef %i.r, i1 noundef zeroext %i.s, i32 noundef 268435456, i32 noundef 0)
  br label %class_exists_impl.exit

class_exists_impl.exit:                           ; preds = %.thread68.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_function_exists(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread55, !prof !89

.thread55:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split65.thread, label %zend_parse_arg_str_ex.exit, !prof !64

.split65.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !71
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %cond.fr45 = freeze i1 %i.i
  br i1 %cond.fr45, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !74

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread55
  %.03664 = phi i32 [ 1, %.thread55 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03763 = phi i32 [ 0, %.thread55 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.03862 = phi ptr [ null, %.thread55 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.03961 = phi i32 [ 0, %.thread55 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03664, i32 noundef %.03961, ptr noundef null, i32 noundef %.03763, ptr noundef %.03862) #13
  br label %bb.h

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split65.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split65.thread ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !33
  %i.m = icmp eq i8 %i.l, 92
  br i1 %i.m, label %zend_string_alloc.exit, label %bb.d

zend_string_alloc.exit:                           ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76
  %i.p = add i64 %i.o, -1                         ; 2 uses
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 32
  %i.s = call noalias ptr @_emalloc(i64 noundef %i.r) #15 ; 6 uses
  store i32 1, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 22, ptr %i.t, align 4, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.p, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ab = add i64 %i.aa, -1
  %i.ac = call ptr @zend_str_tolower_copy(ptr noundef nonnull %i.w, ptr noundef nonnull %i.y, i64 noundef %i.ab) #13 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.ad = call ptr @zend_string_tolower_ex(ptr noundef nonnull %i.j, i1 noundef zeroext false) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %zend_string_alloc.exit
  %.040 = phi ptr [ %i.s, %zend_string_alloc.exit ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 456), align 8, !tbaa !129
  %i.af = call ptr @zend_hash_find(ptr noundef %i.ae, ptr noundef %.040) #13
  %.not = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = and i32 %i.ah, 64
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %.040, align 4, !tbaa !34 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.al, ptr %.040, align 4, !tbaa !34
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %zend_string_release_ex.exit

bb.g:                                             ; preds = %bb.f
  call void @_efree(ptr noundef nonnull %.040) #13
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.e, %bb.f, %bb.g
  %i.an = select i1 %.not, i32 2, i32 3
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %zend_string_release_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare ptr @zend_str_tolower_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_class_alias(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 1, ptr %i.c, align 1, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33   ; 2 uses
  %i.f = and i32 %i.e, -2
  %or.cond.not = icmp eq i32 %i.f, 2
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 3) #13
  br label %.thread90

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !64

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !33
  store ptr %i.k, ptr %i.a, align 8, !tbaa !71
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.l, label %bb.d, label %.thread90, !prof !74

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !33
  %i.p = icmp eq i8 %i.o, 6
  br i1 %i.p, label %zend_parse_arg_str_ex.exit76.thread, label %zend_parse_arg_str_ex.exit76, !prof !64

zend_parse_arg_str_ex.exit76.thread:              ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !33
  store ptr %i.q, ptr %i.b, align 8, !tbaa !71
  br label %bb.e

zend_parse_arg_str_ex.exit76:                     ; preds = %bb.d
  %i.r = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #13
  br i1 %i.r, label %bb.e, label %.thread90, !prof !74

bb.e:                                             ; preds = %zend_parse_arg_str_ex.exit76.thread, %zend_parse_arg_str_ex.exit76
  %i.s = icmp eq i32 %i.e, 2
  br i1 %i.s, label %.critedge.a, label %bb.f, !prof !65

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i8, ptr %i.t, align 8, !tbaa !33
  switch i8 %i.u, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split100.thread
    i8 2, label %.split100.thread.fold.split
  ], !prof !73

.split100.thread.fold.split:                      ; preds = %bb.f
  br label %.split100.thread

.split100.thread:                                 ; preds = %bb.f, %.split100.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.f ], [ 0, %.split100.thread.fold.split ] ; 2 uses
  store i8 %storemerge.i, ptr %i.c, align 1, !tbaa !93
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c, i32 noundef 3) #13
  %cond.fr80 = freeze i1 %i.w
  br i1 %cond.fr80, label %zend_parse_arg_bool_ex.exit..critedge_crit_edge, label %.thread90, !prof !74

zend_parse_arg_bool_ex.exit..critedge_crit_edge:  ; preds = %zend_parse_arg_bool_ex.exit
  %.pre = load i8, ptr %i.c, align 1, !tbaa !93, !range !79
  %2 = freeze i8 %.pre
  br label %.critedge

.thread90:                                        ; preds = %zend_parse_arg_bool_ex.exit, %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit76, %bb.b
  %.06599 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit76 ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.06698 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit76 ], [ 4, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.06797 = phi ptr [ null, %bb.b ], [ %i.m, %zend_parse_arg_str_ex.exit76 ], [ %i.g, %zend_parse_arg_str_ex.exit ], [ %i.v, %zend_parse_arg_bool_ex.exit ]
  %.06896 = phi i32 [ 0, %bb.b ], [ 2, %zend_parse_arg_str_ex.exit76 ], [ 1, %zend_parse_arg_str_ex.exit ], [ 3, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.06599, i32 noundef %.06896, ptr noundef null, i32 noundef %.06698, ptr noundef %.06797) #13
  br label %bb.k

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit..critedge_crit_edge, %.split100.thread
  %.fr = phi i8 [ %2, %zend_parse_arg_bool_ex.exit..critedge_crit_edge ], [ %storemerge.i, %.split100.thread ]
  %.not71.not = icmp eq i8 %.fr, 0
  %spec.select = select i1 %.not71.not, i32 128, i32 0
  br label %.critedge.a

.critedge.a:                                      ; preds = %bb.e, %.critedge
  %3 = phi i32 [ %spec.select, %.critedge ], [ 0, %bb.e ]
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.y = call ptr @zend_lookup_class_ex(ptr noundef %i.x, ptr noundef null, i32 noundef %3) #13 ; 3 uses
  %.not71 = icmp eq ptr %i.y, null
  br i1 %.not71, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.critedge.a
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !76
  %i.ad = call i32 @zend_register_class_alias_ex(ptr noundef nonnull %i.aa, i64 noundef %i.ac, ptr noundef nonnull %i.y, i1 noundef zeroext false) #13
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !33
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @zend_class_redeclaration_error_ex(i32 noundef 2, ptr noundef %i.ag, ptr noundef nonnull %i.y) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ah, align 8, !tbaa !33
  br label %bb.k

bb.j:                                             ; preds = %.critedge.a
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.aj) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ak, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %.thread90, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare ptr @zend_lookup_class_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @zend_register_class_alias_ex(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @zend_class_redeclaration_error_ex(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_get_included_files(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @_zend_new_array_0() #13
  store ptr %i.c, ptr %1, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.d, align 8, !tbaa !33
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 376), align 8, !tbaa !33 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 384), align 8, !tbaa !85 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not2022 = icmp eq i32 %i.f, 0
  br i1 %.not2022, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.023 = phi ptr [ %i.t, %bb.g ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !33
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.d, !prof !65

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 5 uses
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = and i32 %i.o, 64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %zend_string_copy.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.m, align 4, !tbaa !34
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !34
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.e, %bb.f
  %i.s = tail call i32 @add_next_index_str(ptr noundef nonnull %1, ptr noundef nonnull %i.m) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %zend_string_copy.exit, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %.not20 = icmp eq ptr %i.t, %i.h
  br i1 %.not20, label %.loopexit, label %.lr.ph, !llvm.loop !193

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.b
  ret void
}

declare i32 @add_next_index_str(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_trigger_error(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 1024, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %i.h = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.split, label %bb.d

.split:                                           ; preds = %bb.b
  %i.j = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true)
  switch i64 %i.j, label %bb.d [
    i64 8, label %bb.c
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 14, label %bb.e
  ]

bb.c:                                             ; preds = %.split
  call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.38) #13
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !77
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.f, !prof !64

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !72
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %.split
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.39) #13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge, %.split, %.split, %.split
  %i.l = phi i64 [ %.pre, %._crit_edge ], [ %i.g, %.split ], [ %i.g, %.split ], [ %i.g, %.split ]
  %i.m = trunc i64 %i.l to i32
  %i.n = call ptr @zend_get_executed_filename_ex() #13
  %i.o = call i32 @zend_get_executed_lineno() #13
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !71
  call void @zend_error_zstr_at(i32 noundef %i.m, ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @zend_error_zstr_at(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zend_get_executed_filename_ex() local_unnamed_addr #1

declare i32 @zend_get_executed_lineno() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_set_error_handler(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zend_fcall_info, align 8   ; 7 uses
  %3 = alloca %struct._zend_fcall_info_cache, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 30719, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !126
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !63

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #13
  br label %.thread

end_hunk_0
