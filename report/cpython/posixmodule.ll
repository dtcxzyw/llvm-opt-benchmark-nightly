Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/posixmodule?download=true
inline.NumInlined: 800
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DirEntry_test_mode:bb.a

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %Py_DECREF.exit50
  %i.x = and i64 %i.o, 61440
  %i.y = zext i16 %3 to i64
  %i.z = icmp eq i64 %i.x, %i.y
  %i.aa = zext i1 %i.z to i32
  br label %Py_XDECREF.exit55

bb.m:                                             ; preds = %bb.a
  br i1 %i.c, label %Py_XDECREF.exit55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = icmp eq i16 %3, 16384
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp eq i8 %i.b, 4
  %i.ad = zext i1 %i.ac to i32
  br label %Py_XDECREF.exit55

bb.p:                                             ; preds = %bb.n
  %i.ae = icmp eq i8 %i.b, 8
  %i.af = zext i1 %i.ae to i32
  br label %Py_XDECREF.exit55

bb.q:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !123 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i.i, label %bb.r, label %.thread65

bb.r:                                             ; preds = %bb.q
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !123
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %.thread65

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #19
  br label %.thread65

.thread65:                                        ; preds = %bb.d, %bb.q, %bb.r, %bb.s
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !123 ; 2 uses
  %.not.i.i54 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i54, label %bb.t, label %Py_XDECREF.exit55

bb.t:                                             ; preds = %.thread65
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !123
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.u, label %Py_XDECREF.exit55

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %Py_XDECREF.exit55

Py_XDECREF.exit55:                                ; preds = %bb.u, %bb.t, %.thread65, %bb.b, %bb.l, %bb.o, %bb.p, %bb.m, %bb.c
  %.028 = phi i32 [ 0, %bb.c ], [ 0, %bb.m ], [ %i.aa, %bb.l ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ], [ -1, %bb.b ], [ -1, %.thread65 ], [ -1, %bb.t ], [ -1, %bb.u ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @os_DirEntry_stat_impl(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @PyType_GetModule(ptr noundef %1) #19
  %i.d = tail call fastcc ptr @DirEntry_fetch_stat(ptr noundef %i.c, ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !186
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %DirEntry_get_lstat.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %DirEntry_get_lstat.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8, !tbaa !123
  br label %DirEntry_get_lstat.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !185  ; 2 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.f, label %.thread27

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !183   ; 2 uses
  %.not.i20 = icmp eq i8 %i.l, 0
  br i1 %.not.i20, label %os_DirEntry_is_symlink_impl.exit, label %os_DirEntry_is_symlink_impl.exit.thread

os_DirEntry_is_symlink_impl.exit.thread:          ; preds = %bb.f
  %i.m = icmp eq i8 %i.l, 10
  %i.n = zext i1 %i.m to i32
  br label %bb.g

os_DirEntry_is_symlink_impl.exit:                 ; preds = %bb.f
  %i.o = tail call fastcc i32 @DirEntry_test_mode(ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0, i16 noundef zeroext -24576), !inline_history !5 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %DirEntry_get_lstat.exit, label %bb.g

bb.g:                                             ; preds = %os_DirEntry_is_symlink_impl.exit.thread, %os_DirEntry_is_symlink_impl.exit
  %.0.i26 = phi i32 [ %i.n, %os_DirEntry_is_symlink_impl.exit.thread ], [ %i.o, %os_DirEntry_is_symlink_impl.exit ]
  %.not19 = icmp eq i32 %.0.i26, 0
  br i1 %.not19, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %.not.i21 = icmp eq ptr %i.r, null
  br i1 %.not.i21, label %bb.i, label %.thread.i22

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @PyType_GetModule(ptr noundef %1) #19
  %i.t = tail call fastcc ptr @DirEntry_fetch_stat(ptr noundef %i.s, ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !186
  %.not.i.i.i23 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i23, label %.thread32, label %.thread.i22

.thread32:                                        ; preds = %bb.i
  store ptr null, ptr %i.i, align 8, !tbaa !185
  br label %DirEntry_get_lstat.exit

.thread.i22:                                      ; preds = %bb.i, %bb.h
  %i.u = phi ptr [ %i.t, %bb.i ], [ %i.r, %bb.h ] ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !123  ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %.thread29, label %bb.j

bb.j:                                             ; preds = %.thread.i22
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %i.u, align 8, !tbaa !123
  br label %.thread29

.thread29:                                        ; preds = %.thread.i22, %bb.j
  store ptr %i.u, ptr %i.i, align 8, !tbaa !185
  br label %.thread27

bb.k:                                             ; preds = %bb.g
  %i.y = tail call ptr @PyType_GetModule(ptr noundef %1) #19
  %i.z = tail call fastcc ptr @DirEntry_fetch_stat(ptr noundef %i.y, ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !185
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %DirEntry_get_lstat.exit, label %.thread27

.thread27:                                        ; preds = %bb.e, %.thread29, %bb.k
  %i.aa = phi ptr [ %i.u, %.thread29 ], [ %i.z, %bb.k ], [ %i.j, %bb.e ] ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %DirEntry_get_lstat.exit, label %bb.l

bb.l:                                             ; preds = %.thread27
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !123
  br label %DirEntry_get_lstat.exit

DirEntry_get_lstat.exit:                          ; preds = %bb.l, %.thread27, %bb.k, %.thread32, %os_DirEntry_is_symlink_impl.exit, %bb.d, %.thread.i, %bb.c
  %.1 = phi ptr [ null, %os_DirEntry_is_symlink_impl.exit ], [ %i.e, %bb.d ], [ null, %bb.c ], [ %i.e, %.thread.i ], [ null, %bb.k ], [ %i.aa, %.thread27 ], [ %i.aa, %bb.l ], [ null, %.thread32 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @DirEntry_fetch_stat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.d = call i32 @PyUnicode_FSConverter(ptr noundef %i.c, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.f = getelementptr i8, ptr %i.e, i64 32       ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !180
  %.not16 = icmp eq i32 %i.h, -100
  %i.i = call ptr @PyEval_SaveThread() #19
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 8, !tbaa !180
  %.not18 = icmp eq i32 %2, 0
  %4 = select i1 %.not18, i32 256, i32 0
  %i.k = call i32 @fstatat64(i32 noundef %i.j, ptr noundef %i.f, ptr noundef nonnull %3, i32 noundef %4) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %2, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @stat64(ptr noundef %i.f, ptr noundef nonnull %3) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = call i32 @lstat64(ptr noundef %i.f, ptr noundef nonnull %3) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.115 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  call void @PyEval_RestoreThread(ptr noundef %i.i) #19
  %i.n = tail call ptr @__errno_location() #21    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !123  ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !123
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  %.not19 = icmp eq i32 %.115, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit
  store i32 %i.o, ptr %i.n, align 4, !tbaa !16
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !114
  %i.v = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.u, ptr noundef %i.t) #19 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.w = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.x = call fastcc ptr @_pystat_fromstructstat(ptr %.val, ptr noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_faccessat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fchmodat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fchownat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fdopendir() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fstatat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_futimens() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_linkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mkdirat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mkfifoat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mknodat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_openat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_readlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_renameat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_symlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_unlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_utimensat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_ptsname_r() #18 {
bb.a:
  ret i32 1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null}
!1 = distinct !{!1, !124}
!2 = distinct !{!2, !124}
!3 = distinct !{null}
!4 = distinct !{!4, !124}
!5 = distinct !{null}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
end_hunk_0
