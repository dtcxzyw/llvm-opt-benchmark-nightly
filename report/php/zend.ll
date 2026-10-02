Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
begin_hunk_0_@zend_error_unchecked:bb.a
  br i1 %.not5.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.m) #31
  br label %zend_error_va_list.exit

bb.j:                                             ; preds = %bb.h
  call void @_efree(ptr noundef nonnull %i.m) #31
  br label %zend_error_va_list.exit

zend_error_va_list.exit:                          ; preds = %get_filename_lineno.exit, %bb.g, %bb.i, %bb.j
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @zend_error_at_noreturn(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #12 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %get_filename_lineno.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split.i, label %.thread.i

.split.i:                                         ; preds = %bb.b
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  switch i32 %i.c, label %.thread.i [
    i32 12, label %bb.c
    i32 14, label %bb.c
    i32 2, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.c
    i32 13, label %bb.c
    i32 1, label %bb.c
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
  ]

bb.c:                                             ; preds = %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i
  %i.d = tail call zeroext i1 @zend_is_compiling() #31
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @zend_get_compiled_filename() #31
  %i.f = tail call i32 @zend_get_compiled_lineno() #31 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @zend_is_executing() #31
  br i1 %i.g, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @zend_get_executed_filename_ex() #31
  %i.i = tail call i32 @zend_get_executed_lineno() #31 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.e, %bb.d ], [ %i.h, %bb.f ]  ; 2 uses
  %.not.i = icmp eq ptr %.1, null
  br i1 %.not.i, label %.thread.i, label %get_filename_lineno.exit

.thread.i:                                        ; preds = %bb.b, %.split.i, %bb.e, %bb.g
  %i.j = load ptr, ptr @zend_known_strings, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %get_filename_lineno.exit

get_filename_lineno.exit:                         ; preds = %.thread.i, %bb.g, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.l, %.thread.i ], [ %.1, %bb.g ]
  call void @llvm.va_start.p0(ptr nonnull %4)
  call fastcc void @zend_error_va_list(i32 noundef %0, ptr noundef %.0, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @abort() #36
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #24

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @zend_error_noreturn(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call fastcc void @get_filename_lineno(i32 noundef %0, ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.d = load i32, ptr %i.b, align 4, !tbaa !54
  call fastcc void @zend_error_va_list(i32 noundef %0, ptr noundef %i.c, i32 noundef %i.d, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @abort() #36
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @zend_error_noreturn_unchecked(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call fastcc void @get_filename_lineno(i32 noundef %0, ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.d = load i32, ptr %i.b, align 4, !tbaa !54
  call fastcc void @zend_error_va_list(i32 noundef %0, ptr noundef %i.c, i32 noundef %i.d, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @abort() #36
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define dso_local void @zend_strerror_noreturn(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #31
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef %0, ptr noundef nonnull @.str.9, ptr noundef %2, ptr noundef %i.b, i32 noundef %1) #38
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @zend_error_zstr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split.i, label %.thread.i

.split.i:                                         ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  switch i32 %i.c, label %.thread.i [
    i32 12, label %bb.b
    i32 14, label %bb.b
    i32 2, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 13, label %bb.b
    i32 1, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i, %.split.i
  %i.d = tail call zeroext i1 @zend_is_compiling() #31
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @zend_get_compiled_filename() #31
  %i.f = tail call i32 @zend_get_compiled_lineno() #31
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @zend_is_executing() #31
  br i1 %i.g, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @zend_get_executed_filename_ex() #31
  %i.i = tail call i32 @zend_get_executed_lineno() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.02 = phi ptr [ %i.e, %bb.c ], [ %i.h, %bb.e ] ; 2 uses
  %storemerge.i = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.02, null
  br i1 %.not.i, label %.thread.i, label %get_filename_lineno.exit

.thread.i:                                        ; preds = %bb.a, %.split.i, %bb.d, %bb.f
  %.0 = phi i32 [ %storemerge.i, %bb.f ], [ 0, %bb.d ], [ 0, %.split.i ], [ 0, %bb.a ]
  %i.j = load ptr, ptr @zend_known_strings, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  br label %get_filename_lineno.exit

get_filename_lineno.exit:                         ; preds = %bb.f, %.thread.i
  %.13 = phi ptr [ %i.l, %.thread.i ], [ %.02, %bb.f ]
  %.1 = phi i32 [ %.0, %.thread.i ], [ %storemerge.i, %bb.f ]
  tail call void @zend_error_zstr_at(i32 noundef %0, ptr noundef %.13, i32 noundef %.1, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_begin_record_errors() local_unnamed_addr #26 {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_emit_recorded_errors() local_unnamed_addr #0 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1792), align 8, !tbaa !111
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %zend_emit_recorded_errors_ex.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121
  tail call void @zend_error_zstr_at(i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k), !inline_history !122
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zend_emit_recorded_errors_ex.exit, label %.lr.ph.i, !llvm.loop !1

zend_emit_recorded_errors_ex.exit:                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_free_recorded_errors() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.j, label %.lr.ph

._crit_edge:                                      ; preds = %zend_string_release.exit
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  tail call void @_efree(ptr noundef %i.b) #31
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a, %zend_string_release.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %zend_string_release.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1800), align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = and i32 %i.i, 64
  %.not.i5 = icmp eq i32 %i.j, 0
  br i1 %.not.i5, label %bb.b, label %zend_string_release.exit7

bb.b:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.m, ptr %i.g, align 4, !tbaa !32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %zend_string_release.exit7

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.i, 128
  %.not5.i6 = icmp eq i32 %i.o, 0
  br i1 %.not5.i6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #31
  br label %zend_string_release.exit7

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.g) #31
  br label %zend_string_release.exit7

zend_string_release.exit7:                        ; preds = %.lr.ph, %bb.b, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !121  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 2 uses
  %i.t = and i32 %i.s, 64
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %zend_string_release.exit

bb.f:                                             ; preds = %zend_string_release.exit7
  %i.u = load i32, ptr %i.q, align 4, !tbaa !32   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.w, ptr %i.q, align 4, !tbaa !32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %zend_string_release.exit

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %i.s, 128
  %.not5.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.q) #31
  br label %zend_string_release.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_efree(ptr noundef nonnull %i.q) #31
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %zend_string_release.exit7, %bb.f, %bb.h, %bb.i
  tail call void @_efree(ptr noundef nonnull %i.e) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1796), align 4, !tbaa !114
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !193

bb.j:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_efree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zend_throw_error(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.smart_string, align 8       ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr @zend_ce_error, align 8
  %spec.select = select i1 %.not, ptr %i.a, ptr %0
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !105
  %i.c = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr @zend_printf_to_smart_string, align 8, !tbaa !15
  call void %i.d(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3) #31, !inline_history !23
  %i.e = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %smart_string_0.exit.thread.i, label %smart_string_0.exit.i

smart_string_0.exit.i:                            ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !21
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %.not12.i = icmp eq ptr %.pr.i, null
  br i1 %.not12.i, label %smart_string_0.exit.thread.i, label %zend_vspprintf.exit

smart_string_0.exit.thread.i:                     ; preds = %smart_string_0.exit.i, %bb.b
  %i.i = call noalias ptr @_estrndup(ptr noundef nonnull @.str, i64 noundef 0) #31
  br label %zend_vspprintf.exit

zend_vspprintf.exit:                              ; preds = %smart_string_0.exit.i, %smart_string_0.exit.thread.i
  %.0 = phi ptr [ %i.i, %smart_string_0.exit.thread.i ], [ %.pr.i, %smart_string_0.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !110
  %i.k = icmp eq ptr %i.j, null
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 81), align 1, !range !112
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %zend_vspprintf.exit
  %i.n = call ptr @zend_throw_exception(ptr noundef %spec.select, ptr noundef %.0, i64 noundef 0) #31 ; 0 uses
  call void @_efree(ptr noundef %.0) #31
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %bb.e

bb.d:                                             ; preds = %zend_vspprintf.exit
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef %.0) #38
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_illegal_container_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.e [
end_hunk_0
begin_hunk_1_@zend_gc_enabled_displayer_cb:bb.a
}

; Function Attrs: nounwind uwtable
define internal i32 @OnUpdateScriptEncoding(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 440), align 8, !tbaa !206, !range !112, !noundef !50
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @zend_multibyte_get_functions() #31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5 = icmp eq ptr %1, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = select i1 %.not5, ptr null, ptr %i.d
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %i.i = tail call i32 @zend_multibyte_set_script_encoding_by_string(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ -1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnSetExceptionStringParamMaxLen(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #31, !inline_history !207 ; 2 uses
  %or.cond = icmp ult i64 %i.b, 1000001
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1728), align 8, !tbaa !208
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateFiberStackSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = tail call i64 @zend_ini_parse_quantity_warn(ptr noundef nonnull %1, ptr noundef %i.a) #31 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1784), align 8, !tbaa !209
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.49)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 2097152, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1784), align 8, !tbaa !209
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ 0, %.thread ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateMaxAllowedStackSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = tail call i64 @zend_ini_parse_quantity_warn(ptr noundef %1, ptr noundef %i.a) #31 ; 3 uses
  %i.c = icmp slt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.e, i32 noundef -1, i64 noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1840), align 8, !tbaa !210
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @OnUpdateReservedStackSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = tail call i64 @zend_ini_parse_uquantity_warn(ptr noundef %1, ptr noundef %i.a) #31 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.b, 49152
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.f, i64 noundef 49152, i64 noundef %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 49152, %bb.a ]
  store i64 %.0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1848), align 8, !tbaa !211
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.010
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare i64 @zend_ini_parse_quantity_warn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @zend_ini_parse_bool(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @gc_enable(i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @gc_enabled() local_unnamed_addr #3

declare ptr @zend_multibyte_get_functions() local_unnamed_addr #3

declare i32 @zend_multibyte_set_script_encoding_by_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare i64 @zend_ini_parse_uquantity_warn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_zend_observer_error_notify(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_get_executed_filename_ex() local_unnamed_addr #3

declare zeroext i1 @zend_string_equal_val(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zend_objects_store_del(ptr noundef) local_unnamed_addr #3

declare void @gc_possible_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind returns_twice }
attributes #38 = { noreturn }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!"", !16, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !16, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{ptr @zend_vspprintf}
!24 = !{!"p1 _ZTS12_zend_string", !14, i64 0}
!25 = !{!"", !24, i64 0, !17, i64 8}
!26 = !{!25, !24, i64 0}
!27 = !{!24, !24, i64 0}
!28 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
!29 = !{!"_zend_string", !28, i64 0, !17, i64 8, !17, i64 16, !10, i64 24}
!30 = !{!29, !17, i64 16}
!31 = !{!25, !17, i64 8}
!32 = !{!28, !11, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"p1 _ZTS17_zend_class_entry", !14, i64 0}
!36 = !{!"p1 _ZTS21_zend_object_handlers", !14, i64 0}
!37 = !{!"p1 _ZTS11_zend_array", !14, i64 0}
!38 = !{!"_zend_object", !28, i64 0, !11, i64 8, !11, i64 12, !35, i64 16, !36, i64 24, !37, i64 32, !10, i64 40}
!39 = !{!38, !36, i64 24}
!40 = !{!"_zend_object_handlers", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200}
!41 = !{!40, !14, i64 136}
!42 = !{!"_zend_array", !28, i64 0, !10, i64 8, !11, i64 12, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !17, i64 40, !14, i64 48}
!43 = !{!42, !11, i64 24}
!44 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!45 = !{!"_Bucket", !44, i64 0, !17, i64 16, !24, i64 24}
!46 = !{!45, !17, i64 16}
!47 = !{!45, !24, i64 24}
!48 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{}
!51 = !{!"p1 _ZTS12_zval_struct", !14, i64 0}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!"p1 _ZTS14_zend_function", !14, i64 0}
!54 = !{!11, !11, i64 0}
!55 = !{!"_zend_stack", !11, i64 0, !11, i64 4, !11, i64 8, !14, i64 16}
!56 = !{!"p1 _ZTS14_zend_op_array", !14, i64 0}
!57 = !{!"_Bool", !10, i64 0}
!58 = !{!"p1 _ZTS19_zend_llist_element", !14, i64 0}
!59 = !{!"_zend_llist", !58, i64 0, !58, i64 8, !17, i64 16, !17, i64 24, !14, i64 32, !10, i64 40, !58, i64 48}
!60 = !{!"p1 _ZTS22_zend_ini_parser_param", !14, i64 0}
!61 = !{!"p1 _ZTS21_zend_oparray_context", !14, i64 0}
!62 = !{!"p1 _ZTS22_zend_brk_cont_element", !14, i64 0}
!63 = !{!"_zend_oparray_context", !61, i64 0, !56, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !62, i64 48, !37, i64 56, !24, i64 64, !11, i64 72, !57, i64 76, !57, i64 77}
!64 = !{!"_zend_declarables", !17, i64 0}
!65 = !{!"_zend_file_context", !64, i64 0, !24, i64 8, !57, i64 16, !57, i64 17, !37, i64 24, !37, i64 32, !37, i64 40, !42, i64 48}
!66 = !{!"p1 _ZTS11_zend_arena", !14, i64 0}
!67 = !{!"p2 _ZTS14_zend_encoding", !52, i64 0}
!68 = !{!"p1 _ZTS9_zend_ast", !14, i64 0}
!69 = !{!"_zend_compiler_globals", !55, i64 0, !35, i64 24, !24, i64 32, !11, i64 40, !56, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !10, i64 80, !57, i64 81, !57, i64 82, !57, i64 83, !57, i64 84, !59, i64 88, !60, i64 144, !57, i64 152, !57, i64 153, !57, i64 154, !57, i64 155, !24, i64 160, !11, i64 168, !11, i64 172, !63, i64 176, !65, i64 256, !66, i64 360, !42, i64 368, !67, i64 424, !17, i64 432, !57, i64 440, !57, i64 441, !57, i64 442, !68, i64 448, !66, i64 456, !55, i64 464, !37, i64 488, !11, i64 496, !14, i64 504, !14, i64 512, !17, i64 520, !17, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !35, i64 560, !11, i64 568, !14, i64 576, !11, i64 584, !55, i64 592}
!70 = !{!69, !37, i64 56}
!71 = !{!69, !37, i64 64}
!72 = !{!69, !37, i64 72}
!73 = !{!"p2 _ZTS11_zend_array", !52, i64 0}
!74 = !{!"p1 _ZTS13__jmp_buf_tag", !14, i64 0}
!75 = !{!"p1 _ZTS14_zend_vm_stack", !14, i64 0}
!76 = !{!"p1 _ZTS18_zend_execute_data", !14, i64 0}
!77 = !{!"zend_atomic_bool_s", !10, i64 0}
!78 = !{!"p1 _ZTS15_zend_ini_entry", !14, i64 0}
!79 = !{!"p2 _ZTS12_zend_object", !52, i64 0}
!80 = !{!"_zend_objects_store", !79, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!81 = !{!"_zend_lazy_objects_store", !42, i64 0}
!82 = !{!"p1 _ZTS12_zend_object", !14, i64 0}
!83 = !{!"p1 _ZTS8_zend_op", !14, i64 0}
!84 = !{!"p1 _ZTS18_zend_module_entry", !14, i64 0}
!85 = !{!"p1 _ZTS18_HashTableIterator", !14, i64 0}
!86 = !{!"_zend_op", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !11, i64 20, !11, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!87 = !{!"", !51, i64 0, !51, i64 8, !51, i64 16}
!88 = !{!"p1 _ZTS19_zend_fiber_context", !14, i64 0}
!89 = !{!"p1 _ZTS11_zend_fiber", !14, i64 0}
!90 = !{!"p2 _ZTS16_zend_error_info", !52, i64 0}
!91 = !{!"_zend_call_stack", !14, i64 0, !17, i64 8}
!92 = !{!"p1 _ZTS19_zend_strtod_bigint", !14, i64 0}
!93 = !{!"_zend_strtod_state", !10, i64 0, !92, i64 64, !16, i64 72}
!94 = !{!"_zend_executor_globals", !44, i64 0, !44, i64 16, !10, i64 32, !73, i64 288, !73, i64 296, !42, i64 304, !42, i64 360, !74, i64 416, !11, i64 424, !57, i64 428, !44, i64 432, !11, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !51, i64 480, !51, i64 488, !75, i64 496, !17, i64 504, !76, i64 512, !35, i64 520, !11, i64 528, !76, i64 536, !11, i64 544, !17, i64 552, !11, i64 560, !11, i64 564, !11, i64 568, !57, i64 572, !57, i64 573, !77, i64 574, !77, i64 575, !37, i64 576, !17, i64 584, !14, i64 592, !14, i64 600, !42, i64 608, !42, i64 664, !11, i64 720, !57, i64 724, !44, i64 728, !44, i64 744, !55, i64 760, !55, i64 784, !55, i64 808, !35, i64 832, !11, i64 840, !11, i64 844, !17, i64 848, !37, i64 856, !37, i64 864, !78, i64 872, !80, i64 880, !81, i64 904, !82, i64 960, !82, i64 968, !83, i64 976, !10, i64 984, !84, i64 1080, !57, i64 1088, !10, i64 1089, !17, i64 1096, !11, i64 1104, !11, i64 1108, !85, i64 1112, !10, i64 1120, !14, i64 1376, !10, i64 1384, !86, i64 1640, !42, i64 1672, !17, i64 1728, !87, i64 1736, !88, i64 1760, !88, i64 1768, !89, i64 1776, !17, i64 1784, !57, i64 1792, !11, i64 1796, !90, i64 1800, !24, i64 1808, !17, i64 1816, !91, i64 1824, !17, i64 1840, !17, i64 1848, !93, i64 1856, !10, i64 1936}
!95 = !{!94, !37, i64 472}
!96 = !{!69, !14, i64 504}
!97 = !{!17, !17, i64 0}
!98 = !{!69, !14, i64 512}
!99 = !{!94, !11, i64 424}
!100 = !{!94, !57, i64 428}
!101 = !{!86, !10, i64 28}
!102 = !{!69, !17, i64 528}
!103 = !{!69, !17, i64 520}
!104 = !{!57, !57, i64 0}
!105 = !{!94, !82, i64 960}
!106 = !{!35, !35, i64 0}
!107 = !{!94, !74, i64 416}
!108 = !{!69, !35, i64 24}
!109 = !{!69, !57, i64 81}
!110 = !{!94, !76, i64 512}
!111 = !{!94, !57, i64 1792}
!112 = !{i8 0, i8 2}
!113 = !{!94, !90, i64 1800}
!114 = !{!94, !11, i64 1796}
!115 = !{!"p1 _ZTS16_zend_error_info", !14, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"_zend_error_info", !11, i64 0, !11, i64 4, !24, i64 8, !24, i64 16}
!118 = !{!117, !11, i64 0}
!119 = !{!117, !24, i64 8}
!120 = !{!117, !11, i64 4}
!121 = !{!117, !24, i64 16}
!122 = !{ptr @zend_emit_recorded_errors_ex}
!123 = !{!"p2 _ZTS12_zend_string", !52, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!"p1 _ZTS19_zend_ini_entry_def", !14, i64 0}
!126 = !{!"_zend_ini_entry", !24, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !24, i64 40, !24, i64 48, !14, i64 56, !11, i64 64, !10, i64 68, !10, i64 69, !10, i64 70, !125, i64 72}
!127 = !{!126, !24, i64 0}
!128 = !{!29, !17, i64 8}
!129 = !{!40, !14, i64 112}
!130 = distinct !{!130, !49}
!131 = !{!38, !35, i64 16}
!132 = !{!"p1 _ZTS24_zend_class_mutable_data", !14, i64 0}
!133 = !{!"p1 _ZTS29_zend_inheritance_cache_entry", !14, i64 0}
!134 = !{!"p2 _ZTS19_zend_property_info", !52, i64 0}
!135 = !{!"p1 _ZTS26_zend_class_iterator_funcs", !14, i64 0}
!136 = !{!"p1 _ZTS29_zend_class_arrayaccess_funcs", !14, i64 0}
!137 = !{!"p1 _ZTS16_zend_class_name", !14, i64 0}
!138 = !{!"p2 _ZTS17_zend_trait_alias", !52, i64 0}
!139 = !{!"p2 _ZTS22_zend_trait_precedence", !52, i64 0}
!140 = !{!"_zend_class_entry", !10, i64 0, !24, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !51, i64 40, !51, i64 48, !51, i64 56, !42, i64 64, !42, i64 120, !42, i64 176, !132, i64 232, !133, i64 240, !134, i64 248, !53, i64 256, !53, i64 264, !53, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !53, i64 312, !53, i64 320, !53, i64 328, !53, i64 336, !53, i64 344, !53, i64 352, !36, i64 360, !135, i64 368, !136, i64 376, !10, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !11, i64 424, !11, i64 428, !11, i64 432, !11, i64 436, !10, i64 440, !137, i64 448, !138, i64 456, !139, i64 464, !37, i64 472, !11, i64 480, !37, i64 488, !24, i64 496, !10, i64 504}
!141 = !{!140, !11, i64 28}
!142 = !{!140, !11, i64 480}
!143 = !{!"_zend_utility_functions", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112}
!144 = !{!143, !14, i64 104}
!145 = !{!143, !14, i64 112}
!146 = !{!143, !14, i64 0}
!147 = !{!143, !14, i64 8}
!148 = !{!143, !14, i64 16}
!149 = !{!143, !14, i64 24}
!150 = !{!143, !14, i64 64}
!151 = !{!143, !14, i64 32}
!152 = !{!143, !14, i64 40}
!153 = !{!143, !14, i64 48}
!154 = !{!143, !14, i64 56}
!155 = !{!143, !14, i64 72}
!156 = !{!143, !14, i64 80}
!157 = !{!143, !14, i64 88}
!158 = !{!143, !14, i64 96}
!159 = !{!69, !57, i64 82}
!160 = !{!69, !11, i64 172}
!161 = !{!69, !11, i64 568}
!162 = !{!94, !10, i64 1668}
!163 = !{!"p2 _ZTS14_zend_function", !52, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!52, !52, i64 0}
!166 = !{!69, !67, i64 424}
!167 = !{!69, !14, i64 576}
!168 = !{!69, !10, i64 80}
!169 = !{!69, !57, i64 83}
!170 = !{!69, !11, i64 496}
!171 = !{!"_zend_extension", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !11, i64 200}
!172 = !{!171, !16, i64 0}
!173 = !{!171, !16, i64 8}
!174 = !{!171, !16, i64 32}
!175 = !{!171, !16, i64 16}
!176 = !{!42, !11, i64 28}
!177 = distinct !{!177, !49}
!178 = !{!94, !11, i64 844}
!179 = !{!94, !11, i64 720}
!180 = !{!76, !76, i64 0}
!181 = !{!"_zend_execute_data", !83, i64 0, !76, i64 8, !51, i64 16, !53, i64 24, !44, i64 32, !76, i64 48, !37, i64 56, !52, i64 64, !37, i64 72}
!182 = !{!181, !53, i64 24}
end_hunk_1
