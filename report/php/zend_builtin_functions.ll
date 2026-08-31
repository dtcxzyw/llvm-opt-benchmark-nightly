Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_builtin_functions?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zm_startup_core:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.l = call ptr @zend_add_attribute(ptr noundef nonnull %i.k, ptr noundef %i.h, i32 noundef 0, i32 noundef %i.j, i32 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35   ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %register_class_stdClass.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.h, align 4, !tbaa !37
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %register_class_stdClass.exit

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %i.n, 128
  %.not5.i.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.h) #13
  br label %register_class_stdClass.exit

bb.e:                                             ; preds = %bb.c
  call void @_efree(ptr noundef nonnull %i.h) #13
  br label %register_class_stdClass.exit

register_class_stdClass.exit:                     ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  store ptr %i.f, ptr @zend_standard_class_def, align 8, !tbaa !38
  ret i32 0
}

declare void @zend_register_default_classes() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_startup_builtin_functions() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_register_module_ex(ptr noundef nonnull @zend_builtin_module, i32 noundef 1) #13 ; 2 uses
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1080), align 8, !tbaa !40
  %i.b = icmp eq ptr %i.a, null
  %spec.select = sext i1 %i.b to i32
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @zend_register_module_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @zif_clone(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = add i32 %i.b, -3
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #13
  br label %zend_parse_arg_obj.exit.thread82

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %bb.d, label %zend_parse_arg_obj.exit.thread82, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.critedge, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp eq i8 %i.l, 7
  br i1 %i.m, label %zend_parse_arg_obj.exit.thread94, label %zend_parse_arg_obj.exit.thread82, !prof !68

zend_parse_arg_obj.exit.thread94:                 ; preds = %bb.e
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !35
  br label %.critedge

zend_parse_arg_obj.exit.thread82:                 ; preds = %bb.e, %bb.c, %bb.b
  %.06093 = phi i32 [ 1, %bb.b ], [ 9, %bb.c ], [ 9, %bb.e ]
  %.06192 = phi i32 [ 0, %bb.b ], [ 18, %bb.c ], [ 6, %bb.e ]
  %.06291 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %i.j, %bb.e ]
  %.06390 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.e ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.06093, i32 noundef %.06390, ptr noundef null, i32 noundef %.06192, ptr noundef %.06291) #13
  br label %bb.u

.critedge:                                        ; preds = %zend_parse_arg_obj.exit.thread94, %bb.d
  %.1 = phi ptr [ %i.n, %zend_parse_arg_obj.exit.thread94 ], [ @zend_empty_array, %bb.d ] ; 2 uses
  %i.o = tail call ptr @zend_get_executed_scope() #13 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.g, !prof !69

bb.f:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %i.aa) #13
  br label %bb.u

bb.g:                                             ; preds = %.critedge
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %zend_check_method_accessible.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35 ; 2 uses
  %i.ad = and i32 %i.ac, 1
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.i, label %zend_check_method_accessible.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %.not12.i = icmp eq ptr %i.af, %i.o
  br i1 %.not12.i, label %zend_check_method_accessible.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.ac, 4
  %.not13.i = icmp eq i32 %i.ag, 0
  br i1 %.not13.i, label %bb.k, label %bb.n, !prof !68

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 2 uses
  %.not14.i = icmp eq ptr %i.ai, null
  br i1 %.not14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = phi ptr [ %i.ak, %bb.l ], [ %i.af, %bb.k ]
  %i.am = tail call zeroext i1 @zend_check_protected(ptr noundef %i.al, ptr noundef %i.o) #13
  br i1 %i.am, label %zend_check_method_accessible.exit, label %bb.n, !prof !68

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  tail call void @zend_bad_method_call(ptr noundef nonnull %i.s, ptr noundef %i.ao, ptr noundef %i.o) #13
  br label %bb.u

zend_check_method_accessible.exit:                ; preds = %bb.m, %bb.i, %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !76
  %.not67 = icmp eq i32 %i.aq, 0
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !73  ; 2 uses
  br i1 %.not67, label %bb.r, label %bb.o

bb.o:                                             ; preds = %zend_check_method_accessible.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77 ; 2 uses
  %.not68 = icmp eq ptr %i.at, null
  br i1 %.not68, label %bb.p, label %bb.q, !prof !69

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.aw) #13
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ax = tail call ptr %i.at(ptr noundef nonnull %i.h, ptr noundef %i.o, ptr noundef nonnull %.1) #13
  br label %bb.s

bb.r:                                             ; preds = %zend_check_method_accessible.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74
  %i.ba = tail call ptr %i.az(ptr noundef nonnull %i.h) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.ax, %bb.q ], [ %i.ba, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.u, label %bb.t, !prof !69

bb.t:                                             ; preds = %bb.s
  store ptr %.0, ptr %1, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 776, ptr %i.bb, align 8, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %zend_parse_arg_obj.exit.thread82, %bb.f, %bb.n, %bb.s, %bb.t, %bb.p
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @zend_get_executed_scope() local_unnamed_addr #1

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @zend_bad_method_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_exit(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %.thread61, label %bb.b, !prof !69

.thread61:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 1) #13
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.critedge._crit_edge, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !35
  switch i8 %i.i, label %zend_parse_arg_str_or_long.exit [
    i8 6, label %bb.d
    i8 4, label %.critedge.thread
  ], !prof !80

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

.critedge.thread:                                 ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !78
  %i.k = load i64, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !79
  br label %bb.h

zend_parse_arg_str_or_long.exit:                  ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_or_long_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #13
  %cond.fr = freeze i1 %i.l
  br i1 %cond.fr, label %zend_parse_arg_str_or_long.exit..critedgethread-pre-split_crit_edge, label %bb.e, !prof !81

zend_parse_arg_str_or_long.exit..critedgethread-pre-split_crit_edge: ; preds = %zend_parse_arg_str_or_long.exit
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

bb.e:                                             ; preds = %zend_parse_arg_str_or_long.exit, %.thread61
  %.03570 = phi i32 [ 1, %.thread61 ], [ 9, %zend_parse_arg_str_or_long.exit ]
  %.03669 = phi i32 [ 0, %.thread61 ], [ 28, %zend_parse_arg_str_or_long.exit ]
  %.03768 = phi ptr [ null, %.thread61 ], [ %i.g, %zend_parse_arg_str_or_long.exit ]
  %.03867 = phi i32 [ 0, %.thread61 ], [ 1, %zend_parse_arg_str_or_long.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03570, i32 noundef %.03867, ptr noundef null, i32 noundef %.03669, ptr noundef %.03768) #13
  br label %bb.i

.critedge:                                        ; preds = %zend_parse_arg_str_or_long.exit..critedgethread-pre-split_crit_edge, %bb.d
  %i.m = phi ptr [ %i.j, %bb.d ], [ %.pr.pre, %zend_parse_arg_str_or_long.exit..critedgethread-pre-split_crit_edge ] ; 3 uses
  %.not42 = icmp eq ptr %i.m, null
  br i1 %.not42, label %.critedge._crit_edge, label %bb.f

.critedge._crit_edge:                             ; preds = %bb.b, %.critedge
  %.pre = load i64, ptr %i.b, align 8, !tbaa !79
  br label %bb.h

bb.f:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !82   ; 2 uses
  %.not43 = icmp eq i64 %i.o, 0
  br i1 %.not43, label %.critedge49, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @zend_write, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = call i64 %i.p(ptr noundef nonnull %i.q, i64 noundef %i.o) #13 ; 0 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !84
  %.not44 = icmp eq ptr %i.s, null
  br i1 %.not44, label %.critedge49, label %bb.i

bb.h:                                             ; preds = %.critedge._crit_edge, %.critedge.thread
  %i.t = phi i64 [ %.pre, %.critedge._crit_edge ], [ %i.k, %.critedge.thread ]
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 448), align 8, !tbaa !85
  br label %.critedge49

.critedge49:                                      ; preds = %bb.f, %bb.g, %bb.h
  call void @zend_throw_unwind_exit() #13
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %.critedge49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @zend_throw_unwind_exit() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_zend_version(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @_emalloc_32() #13 ; 7 uses
  store i32 1, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 5, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !35
  store ptr %i.c, ptr %1, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @zend_wrong_parameters_none_error() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_gc_mem_caches(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @zend_mm_get_heap() #13
  %i.d = tail call i64 @zend_mm_gc(ptr noundef %i.c) #13
  store i64 %i.d, ptr %1, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.e, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i64 @zend_mm_gc(ptr noundef) local_unnamed_addr #1

declare ptr @zend_mm_get_heap() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @zif_gc_collect_cycles(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @gc_collect_cycles, align 8, !tbaa !12
  %i.d = tail call i32 %i.c() #13
end_hunk_0
