Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/threadlocal?download=true
inline.NumInlined: 40
inline.NumDeleted: 25
begin_hunk_0_@_mi_thread_local_create:bb.a
  %0 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_thread_locals_lock) #14 ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef %i.c) #14
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr @mi_thread_locals_free, align 8, !tbaa !23 ; 2 uses
  %.not.i6 = icmp eq ptr %i.d, null
  br i1 %.not.i6, label %mi_thread_local_claim.exit.thread, label %bb.c

bb.c:                                             ; preds = %mi_lock_acquire.exit
  %i.e = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef nonnull %i.d, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull @mi_thread_local_claim_fun, ptr noundef null) #14
  br i1 %i.e, label %mi_thread_local_claim.exit, label %mi_thread_local_claim.exit.thread

mi_thread_local_claim.exit.thread:                ; preds = %bb.c, %mi_lock_acquire.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.d

mi_thread_local_claim.exit:                       ; preds = %bb.c
  %i.f = load i64, ptr @mi_thread_locals_version, align 8, !tbaa !28
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = icmp ugt i64 %i.g, 281474976710654
  %spec.store.select.i = select i1 %i.h, i64 1, i64 %i.g ; 2 uses
  store i64 %spec.store.select.i, ptr @mi_thread_locals_version, align 8
  %i.i = load i64, ptr %i.b, align 8, !tbaa !28
  %i.j = shl i64 %spec.store.select.i, 16
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %mi_thread_local_create_expand.exit.thread

bb.d:                                             ; preds = %mi_thread_local_claim.exit.thread, %mi_thread_local_claim.exit
  %i.m = load ptr, ptr @mi_thread_locals_free, align 8, !tbaa !23 ; 6 uses
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  br i1 %i.n, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i64, ptr %i.m monotonic, align 64
  %i.p = shl i64 %i.o, 9                          ; 2 uses
  %i.q = add i64 %i.p, 1024                       ; 2 uses
  %i.r = icmp ugt i64 %i.q, 65535
  br i1 %i.r, label %mi_thread_local_create_expand.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.s = phi i64 [ %i.q, %bb.e ], [ 1024, %bb.d ] ; 2 uses
  %i.t = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %i.u = call i64 @mi_bitmap_size(i64 noundef %i.s, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.v = call ptr @_mi_subproc_main() #14
  %i.w = call ptr @_mi_meta_zalloc_aligned(ptr noundef %i.v, i64 noundef %i.u, i64 noundef 64, ptr noundef nonnull %0) #14 ; 8 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %mi_thread_local_create_expand.exit, label %bb.f

bb.f:                                             ; preds = %.thread.i
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call i64 @mi_bitmap_size(i64 noundef %i.t, ptr noundef null) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  %i.y = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !28
  %.not.i.i.i = icmp ugt i64 %i.x, %i.y
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.z = call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.w, i64 %i.x, ptr nonnull %i.m) #15, !srcloc !29 ; 0 uses
  br label %_mi_memcpy_aligned.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.m, i64 %i.x, i1 false)
  br label %_mi_memcpy_aligned.exit.i

_mi_memcpy_aligned.exit.i:                        ; preds = %bb.i, %bb.h
  %i.aa = call ptr @_mi_subproc_main() #14
  call void @_mi_meta_free(ptr noundef %i.aa, ptr noundef nonnull %i.m, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 @mi_thread_locals_memid) #14
  br label %bb.j

mi_thread_local_create_expand.exit:               ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  br label %mi_thread_local_create_expand.exit.thread

bb.j:                                             ; preds = %_mi_memcpy_aligned.exit.i, %bb.f
  %i.ab = call i64 @mi_bitmap_init(ptr noundef nonnull %i.w, i64 noundef %i.s, i1 noundef zeroext true) #14 ; 0 uses
  call void @mi_bitmap_unsafe_setN(ptr noundef nonnull %i.w, i64 noundef %i.t, i64 noundef 1024) #14
  store ptr %i.w, ptr @mi_thread_locals_free, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @mi_thread_locals_memid, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !28
  %i.ac = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef nonnull %i.w, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull @mi_thread_local_claim_fun, ptr noundef null) #14
  br i1 %i.ac, label %bb.k, label %mi_thread_local_claim.exit10

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr @mi_thread_locals_version, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 281474976710654
  %spec.store.select.i9 = select i1 %i.af, i64 1, i64 %i.ae ; 2 uses
  store i64 %spec.store.select.i9, ptr @mi_thread_locals_version, align 8
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ah = shl i64 %spec.store.select.i9, 16
  %i.ai = or i64 %i.ah, %i.ag
  br label %mi_thread_local_claim.exit10

mi_thread_local_claim.exit10:                     ; preds = %bb.j, %bb.k
  %.0.i8 = phi i64 [ %i.ai, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %mi_thread_local_create_expand.exit.thread

mi_thread_local_create_expand.exit.thread:        ; preds = %bb.e, %mi_thread_local_create_expand.exit, %mi_thread_local_claim.exit, %mi_thread_local_claim.exit10
  %.1 = phi i64 [ %.0.i8, %mi_thread_local_claim.exit10 ], [ 0, %mi_thread_local_create_expand.exit ], [ %i.k, %mi_thread_local_claim.exit ], [ 0, %bb.e ]
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_thread_locals_lock) #14 ; 0 uses
  ret i64 %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_thread_local_free(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 65535                        ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_thread_locals_lock) #14 ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef %i.c) #14
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr @mi_thread_locals_free, align 8, !tbaa !23 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %mi_lock_acquire.exit
  %i.e = load atomic i64, ptr %i.d monotonic, align 64
  %i.f = shl i64 %i.e, 9
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 @mi_bitmap_set(ptr noundef nonnull %i.d, i64 noundef %i.b) #14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %mi_lock_acquire.exit
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_thread_locals_lock) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a
  ret void
}

declare zeroext i1 @mi_bitmap_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_thread_local_set_expand(i64 noundef range(i64 2, 1) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.mi_memid_s, align 8         ; 8 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %0, 65535                        ; 4 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_thread_locals) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @mi_thread_locals_empty, ptr %i.d ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.f, 1023
  %i.i = shl nuw nsw i64 %i.f, 1
  %i.j = add i64 %i.f, 1024
  %.0.i = select i1 %i.h, i64 %i.j, i64 %i.i
  %i.k = add nuw nsw i64 %i.b, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.0.i, i64 %i.k) ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i, 65535
  br i1 %i.l, label %mi_thread_locals_expand.exit.thread, label %bb.e

.thread.i:                                        ; preds = %bb.b
  %i.m = icmp eq i64 %i.b, 65535
  br i1 %i.m, label %mi_thread_locals_expand.exit.thread, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.n = tail call i64 @llvm.umax.i64(i64 range(i64 0, 65536) %i.b, i64 15)
  %spec.select28.i = add nuw nsw i64 %i.n, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !39
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0192936.i = phi ptr [ %i.e, %bb.e ], [ null, %bb.d ]
  %spec.select3034.i = phi i64 [ %spec.select.i, %bb.e ], [ %spec.select28.i, %bb.d ] ; 2 uses
  %i.p = tail call ptr @_mi_subproc() #14
  %i.q = shl nuw nsw i64 %spec.select3034.i, 4
  %i.r = add nuw nsw i64 %i.q, 48
  %i.s = call ptr @_mi_meta_rezalloc(ptr noundef %i.p, ptr noundef %.0192936.i, i64 noundef %i.r, ptr noundef nonnull %2) #14 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mi_thread_locals_expand.exit, label %bb.g, !prof !21

mi_thread_locals_expand.exit:                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %mi_thread_locals_expand.exit.thread

mi_thread_locals_expand.exit.thread:              ; preds = %.thread.i, %bb.c, %mi_thread_locals_expand.exit
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !27
  store i64 %spec.select3034.i, ptr %i.s, align 8, !tbaa !16
  store ptr %i.s, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.b ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !19
  %i.y = lshr i64 %0, 16
  store i64 %i.y, ptr %i.w, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %mi_thread_locals_expand.exit.thread, %bb.g, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.g ], [ false, %mi_thread_locals_expand.exit.thread ]
  ret i1 %.1
}

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @_mi_meta_rezalloc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #9

declare zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @mi_thread_local_claim_fun(i64 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #10 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !26
  ret i1 true
}

declare i64 @mi_bitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_mi_meta_zalloc_aligned(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i64 @mi_bitmap_init(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @mi_bitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { "no-builtin-malloc" }
attributes #14 = { nounwind "no-builtin-malloc" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTS18mi_thread_locals_s", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_Bool", !4, i64 0}
!14 = !{!"mi_memid_s", !4, i64 0, !5, i64 16, !13, i64 20, !13, i64 21, !13, i64 22}
!15 = !{!"mi_thread_locals_s", !12, i64 0, !14, i64 8, !4, i64 32}
!16 = !{!15, !12, i64 0}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"mi_tls_slot_s", !12, i64 0, !8, i64 8}
!19 = !{!18, !8, i64 8}
!20 = !{!18, !12, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"p1 _ZTS11mi_bitmap_s", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{i64 0, i64 16, !24, i64 16, i64 4, !25, i64 20, i64 1, !26, i64 21, i64 1, !26, i64 22, i64 1, !26}
!28 = !{!12, !12, i64 0}
!29 = !{i64 153813}
!35 = distinct !{!35, i1 false, !"_mi_memid_create"}
!36 = distinct !{!36, !35, !"_mi_memid_create: argument 0"}
!37 = distinct !{!37, i1 false, !"_mi_memid_none"}
!38 = distinct !{!38, !37, !"_mi_memid_none: argument 0"}
!39 = !{!36, !38}
end_hunk_0
