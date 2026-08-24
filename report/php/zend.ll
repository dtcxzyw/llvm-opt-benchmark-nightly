Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
begin_hunk_0_@zend_shutdown:bb.a
  tail call void @virtual_cwd_deactivate() #31
  tail call void @virtual_cwd_shutdown() #31
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !85
  tail call void @zend_hash_destroy(ptr noundef %i.a) #31
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 64), align 8, !tbaa !101
  tail call void @zend_hash_graceful_reverse_destroy(ptr noundef %i.b) #31
  store i64 0, ptr @zend_flf_capacity, align 8, !tbaa !130
  store i64 0, ptr @zend_flf_count, align 8, !tbaa !130
  %i.c = load ptr, ptr @zend_flf_functions, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.c) #31
  %i.d = load ptr, ptr @zend_flf_handlers, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.d) #31
  store ptr null, ptr @zend_flf_functions, align 8, !tbaa !137
  store ptr null, ptr @zend_flf_handlers, align 8, !tbaa !139
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 72), align 8, !tbaa !102
  tail call void @zend_hash_destroy(ptr noundef %i.e) #31
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 72), align 8, !tbaa !102
  tail call void @free(ptr noundef %i.f) #31
  tail call void @zend_shutdown_extensions() #31
  %i.g = load ptr, ptr @zend_version_info, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.g) #31
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !85
  tail call void @free(ptr noundef %i.h) #31
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 64), align 8, !tbaa !101
  tail call void @free(ptr noundef %i.i) #31
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 472), align 8, !tbaa !103
  tail call void @zend_hash_destroy(ptr noundef %i.j) #31
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 472), align 8, !tbaa !103
  tail call void @free(ptr noundef %i.k) #31
  %i.l = tail call i32 @zend_shutdown_strtod() #31 ; 0 uses
  tail call void @zend_attributes_shutdown() #31
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 504), align 8, !tbaa !129 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.m) #31
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 504), align 8, !tbaa !129
  %i.n = load i64, ptr @zend_map_ptr_static_size, align 8, !tbaa !130
  %i.o = shl i64 %i.n, 3
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !131
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 520), align 8, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 424), align 8, !tbaa !141 ; 2 uses
  %.not3 = icmp eq ptr %i.r, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.r) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 424), i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 576), align 8, !tbaa !142 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.s) #31
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 576), align 8, !tbaa !142
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 0, ptr @zend_map_ptr_static_last, align 8, !tbaa !130
  store i64 0, ptr @zend_map_ptr_static_size, align 8, !tbaa !130
  tail call void @zend_destroy_rsrc_list_dtors() #31
  tail call void @zend_unload_modules() #31
  %i.t = tail call i32 @zend_optimizer_shutdown() #31 ; 0 uses
  store i1 false, ptr @startup_done, align 1
  ret void
}

declare void @zend_vm_dtor() local_unnamed_addr #3

declare void @zend_destroy_rsrc_list(ptr noundef) local_unnamed_addr #3

declare void @zend_destroy_modules() local_unnamed_addr #3

declare void @virtual_cwd_deactivate() local_unnamed_addr #3

declare void @virtual_cwd_shutdown() local_unnamed_addr #3

declare void @zend_hash_destroy(ptr noundef) local_unnamed_addr #3

declare void @zend_hash_graceful_reverse_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare void @zend_shutdown_extensions() local_unnamed_addr #3

declare i32 @zend_shutdown_strtod() local_unnamed_addr #3

declare void @zend_attributes_shutdown() local_unnamed_addr #3

declare void @zend_destroy_rsrc_list_dtors() local_unnamed_addr #3

declare void @zend_unload_modules() local_unnamed_addr #3

declare i32 @zend_optimizer_shutdown() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @zend_set_utility_values(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !143
  store i8 %i.a, ptr @zend_uv, align 1, !tbaa !143
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @zenderror(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 80), align 8, !tbaa !144
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !145
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @zend_ce_parse_error, align 8, !tbaa !146
  %i.c = tail call ptr @zend_throw_exception(ptr noundef %i.b, ptr noundef %0, i64 noundef 0) #31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @zend_throw_exception(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local void @_zend_bailout(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef -1) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @gc_protect(i1 noundef zeroext true) #31 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 83), align 1, !tbaa !148
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 24), align 8, !tbaa !149
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 81), align 1, !tbaa !150
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 496), align 8, !tbaa !151
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !152
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  tail call void @siglongjmp(ptr noundef %i.c, i32 noundef -1) #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @zend_output_debug_string(i1 noundef zeroext %0, ptr nofree noundef readnone captures(none) %1, ...) local_unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

declare zeroext i1 @gc_protect(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i64 @zend_get_page_size() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #31
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @zend_append_version_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #34
  %i.c = add i64 %i.b, 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #34
  %i.g = add i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156  ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #34
  %i.k = add i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !157  ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #34
  %i.o = add i64 %i.k, %i.n                       ; 3 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = add i64 %i.o, 1
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #33 ; 3 uses
  %i.t = and i64 %i.o, 4294967295                 ; 2 uses
  %i.u = tail call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m) #31 ; 0 uses
  %i.v = load ptr, ptr @zend_version_info, align 8, !tbaa !20
  %i.w = load i32, ptr @zend_version_info_length, align 4, !tbaa !68
  %i.x = add i32 %i.w, %i.p                       ; 2 uses
  %i.y = add i32 %i.x, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @realloc(ptr noundef %i.v, i64 noundef %i.z) #32 ; 2 uses
  store ptr %i.aa, ptr @zend_version_info, align 8, !tbaa !20
  %i.ab = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef %i.s, i64 noundef %i.t) #31 ; 0 uses
  store i32 %i.x, ptr @zend_version_info_length, align 4, !tbaa !68
  tail call void @free(ptr noundef %i.s) #31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @get_zend_version() local_unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr @zend_version_info, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_activate() local_unnamed_addr #0 {
bb.a:
  tail call void @gc_reset() #31
  tail call void @init_compiler() #31
  tail call void @init_executor() #31
  tail call void @startup_scanner() #31
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !136 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 504), align 8, !tbaa !129
  %i.c = load i64, ptr @zend_map_ptr_static_size, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = shl i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.e, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @zend_reset_internal_run_time_cache() #31
  tail call void @zend_observer_activate() #31
  ret void
}

declare void @gc_reset() local_unnamed_addr #3

declare void @init_compiler() local_unnamed_addr #3

declare void @init_executor() local_unnamed_addr #3

declare void @startup_scanner() local_unnamed_addr #3

declare void @zend_reset_internal_run_time_cache() local_unnamed_addr #3

declare void @zend_observer_activate() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zend_call_destructors() local_unnamed_addr #0 {
bb.a:
  %0 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %0, i32 noundef 0) #37
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @shutdown_destructors() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  ret void
}

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #20

declare void @shutdown_destructors() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zend_deactivate() local_unnamed_addr #0 {
bb.a:
  %0 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !152
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %0, i32 noundef 0) #37
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @shutdown_scanner() #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  call void @shutdown_executor() #31
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  %i.e = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #37
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @zend_ini_deactivate() #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  %i.g = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #37
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @shutdown_compiler() #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @zend_destroy_rsrc_list(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @executor_globals, i64 608)) #31
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 396), align 4, !tbaa !158
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load i64, ptr @global_map_ptr_last, align 8, !tbaa !130
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @shutdown_scanner() local_unnamed_addr #3

declare void @shutdown_executor() local_unnamed_addr #3

declare void @zend_ini_deactivate() local_unnamed_addr #3

declare void @shutdown_compiler() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_map_ptr_reset() local_unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr @global_map_ptr_last, align 8, !tbaa !130
  store i64 %i.a, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_message_dispatcher(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_message_dispatcher_p, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(i64 noundef %0, ptr noundef %1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_get_configuration_directive(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @zend_get_configuration_directive_p, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(ptr noundef %0) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_error_zstr_at(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [4 x %struct._zval_struct], align 16 ; 12 uses
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 7 uses
end_hunk_0
