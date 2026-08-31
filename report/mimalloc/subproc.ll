Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/subproc?download=true
inline.NumInlined: 76
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mi_subproc_s = type { i64, ptr, ptr, ptr, i64, [160 x ptr], %struct.mi_lock_s, i64, ptr, ptr, %struct.mi_lock_s, ptr, %struct.mi_lock_s, i64, i64, i64, i64, %struct.mi_memid_s, ptr, %struct.mi_stats_s }
%struct.mi_lock_s = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.mi_memid_s = type { %union.anon, i32, i8, i8, i8 }
%union.anon = type { %struct.mi_memid_os_info }
%struct.mi_memid_os_info = type { ptr, i64 }
%struct.mi_stats_s = type { i64, i64, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, [4 x %struct.mi_stat_count_s], [4 x %struct.mi_stat_counter_s], [74 x %struct.mi_stat_count_s], [74 x %struct.mi_stat_count_s], [6 x %struct.mi_stat_count_s] }
%struct.mi_stat_count_s = type { i64, i64, i64 }
%struct.mi_stat_counter_s = type { i64 }

@mi_process_subproc_main = internal global %struct.mi_subproc_s zeroinitializer, align 64
@mi_subprocs_lock = internal global %struct.mi_lock_s zeroinitializer, align 8
@mi_subprocs = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [88 x i8] c"unable to add thread to the subprocess as it was already in another subprocess (at %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"internal error: lock cannot be acquired (err %i)\0A\00", align 1
@_mi_cpu_movsb_max = external hidden local_unnamed_addr global i64, align 8
@__mi_theap_default = external hidden thread_local(initialexec) local_unnamed_addr global ptr, align 8
@mi_subproc_init.subproc_total_count = internal global i64 0, align 8

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_meta_zalloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.b) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %.not = icmp eq ptr %2, null
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = tail call noalias ptr @mi_theap_zalloc(ptr noundef %i.d, i64 noundef %1) #10 ; 3 uses
  br i1 %.not, label %.split, label %mi_lock_acquire.exit.split

.split:                                           ; preds = %mi_lock_acquire.exit, %bb.c, %bb.d
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret ptr %i.e

mi_lock_acquire.exit.split:                       ; preds = %mi_lock_acquire.exit
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %mi_lock_acquire.exit.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.split

bb.d:                                             ; preds = %mi_lock_acquire.exit.split
  %3 = ptrtoint ptr %i.e to i64
  store i64 %3, ptr %2, align 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  store i64 282578783305735, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.split
}

declare noalias ptr @mi_theap_zalloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_meta_zalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.b) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %.not = icmp eq ptr %3, null
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = tail call noalias ptr @mi_theap_zalloc_aligned(ptr noundef %i.d, i64 noundef %1, i64 noundef %2) #10 ; 3 uses
  br i1 %.not, label %.split, label %mi_lock_acquire.exit.split

.split:                                           ; preds = %mi_lock_acquire.exit, %bb.c, %bb.d
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret ptr %i.e

mi_lock_acquire.exit.split:                       ; preds = %mi_lock_acquire.exit
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %mi_lock_acquire.exit.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.split

bb.d:                                             ; preds = %mi_lock_acquire.exit.split
  %4 = ptrtoint ptr %i.e to i64
  store i64 %4, ptr %3, align 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  store i64 282578783305735, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.split
}

declare noalias ptr @mi_theap_zalloc_aligned(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_meta_rezalloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.b) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = tail call noalias ptr @mi_theap_zalloc(ptr noundef %i.d, i64 noundef %2) #10 ; 5 uses
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %mi_lock_acquire.exit
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i64 @mi_usable_size(ptr noundef nonnull %1) #10
  %i.h = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 3 uses
  %i.i = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !22
  %.not.i33 = icmp ugt i64 %i.h, %i.i
  br i1 %.not.i33, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.j = tail call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.e, i64 %i.h, ptr nonnull %1) #11, !srcloc !24 ; 0 uses
  br label %_mi_memcpy.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %_mi_memcpy.exit

_mi_memcpy.exit:                                  ; preds = %bb.e, %bb.f
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.thread, label %bb.g

bb.g:                                             ; preds = %_mi_memcpy.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %i.k = icmp ult i32 %.sroa.6.0.copyload, 3
  br i1 %i.k, label %.thread35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %.sroa.6.0.copyload, 7
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @mi_free(ptr noundef nonnull %1) #10
  br label %.thread35

bb.j:                                             ; preds = %bb.h
  %i.m = icmp ult i32 %.sroa.6.0.copyload, 6
  br i1 %i.m, label %_mi_memid_size.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %.sroa.6.0.copyload, label %_mi_memid_size.exit.i [
    i32 6, label %bb.l
    i32 7, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.n = lshr i64 %.sroa.3.0.copyload, 16
  %i.o = and i64 %i.n, 281474976645120
  br label %_mi_memid_size.exit.i

bb.m:                                             ; preds = %bb.k
  br label %_mi_memid_size.exit.i

_mi_memid_size.exit.i:                            ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %.0.i.i = phi i64 [ 0, %bb.k ], [ %i.o, %bb.l ], [ %.sroa.3.0.copyload, %bb.m ], [ %.sroa.3.0.copyload, %bb.j ]
  tail call void @_mi_arenas_free(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0.i.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3) #10
  br label %.thread35

.thread:                                          ; preds = %_mi_memcpy.exit
  tail call void @mi_free(ptr noundef nonnull %1) #10
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.q, label %.thread35

.thread35:                                        ; preds = %bb.g, %bb.i, %_mi_memid_size.exit.i, %bb.n
  %4 = ptrtoint ptr %i.e to i64
  store i64 %4, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 282578783305735, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.o:                                             ; preds = %mi_lock_acquire.exit
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.o, %bb.p, %bb.n, %.thread35
  ret ptr %i.e
}

declare i64 @mi_usable_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_meta_free(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i32, ptr %i.b, align 8, !tbaa !25  ; 4 uses
  %i.c = icmp ult i32 %.val, 3
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %.val, 7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @mi_free(ptr noundef nonnull %1) #10
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i32 %.val, 6
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  br label %_mi_memid_size.exit

bb.g:                                             ; preds = %bb.e
  switch i32 %.val, label %_mi_memid_size.exit [
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  br label %_mi_memid_size.exit

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  br label %_mi_memid_size.exit

_mi_memid_size.exit:                              ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.g, %bb.f ], [ %i.k, %bb.h ], [ %i.m, %bb.i ], [ 0, %bb.g ]
  tail call void @_mi_arenas_free(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %2) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %_mi_memid_size.exit, %bb.d
  ret void
}

declare void @mi_free(ptr noundef) local_unnamed_addr #1

declare void @_mi_arenas_free(ptr noundef, ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_mi_meta_is_meta_page(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.c, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_mi_subproc_main() local_unnamed_addr #4 {
bb.a:
  ret ptr @mi_process_subproc_main
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_mi_subproc_is_main(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, @mi_process_subproc_main
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_mi_subproc() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ @mi_process_subproc_main, %bb.b ], [ @mi_process_subproc_main, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_heap_main() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_mi_subproc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_mi_subproc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %_mi_subproc.exit

_mi_subproc.exit:                                 ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @mi_process_subproc_main, %bb.b ], [ @mi_process_subproc_main, %bb.a ]
  %i.i = tail call ptr @_mi_subproc_heap_main(ptr noundef %.0.i) #10
  ret ptr %i.i
}

declare ptr @_mi_subproc_heap_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_mi_subproc_from_id(ptr nofree readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_mi_subproc_to_id(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @mi_subproc_main() local_unnamed_addr #4 {
bb.a:
  ret ptr @mi_process_subproc_main
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mi_subproc_current() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_mi_subproc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_mi_subproc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %_mi_subproc.exit

_mi_subproc.exit:                                 ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @mi_process_subproc_main, %bb.b ], [ @mi_process_subproc_main, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_subproc_new() local_unnamed_addr #0 {
bb.a:
  tail call void @mi_thread_init() #10
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_mi_subproc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_mi_subproc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  br label %_mi_subproc.exit

_mi_subproc.exit:                                 ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ @mi_process_subproc_main, %bb.b ], [ @mi_process_subproc_main, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 1432 ; 5 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #10 ; 3 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %mi_lock_acquire.exit.i, label %bb.d

bb.d:                                             ; preds = %_mi_subproc.exit
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.j, ptr noundef nonnull @.str.1, i32 noundef %i.j) #10
  br label %mi_lock_acquire.exit.i

mi_lock_acquire.exit.i:                           ; preds = %bb.d, %_mi_subproc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1424 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = tail call noalias ptr @mi_theap_zalloc(ptr noundef %i.l, i64 noundef 5904) #10 ; 20 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %0, label %bb.e

0:                                                ; preds = %mi_lock_acquire.exit.i
  %1 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #10 ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %mi_lock_acquire.exit.i
  %2 = ptrtoint ptr %i.m to i64                   ; 2 uses
  %3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #10 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1504
  store i64 %2, ptr %i.o, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1512
  store i64 5904, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !21
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1520
  store i64 282578783305735, ptr %.sroa.8.0..sroa_idx, align 8
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #10 ; 3 uses
  %.not.i.i25 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i25, label %mi_lock_acquire.exit.i26, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.p, ptr noundef nonnull @.str.1, i32 noundef %i.p) #10
  br label %mi_lock_acquire.exit.i26

mi_lock_acquire.exit.i26:                         ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.r = tail call noalias ptr @mi_theap_zalloc(ptr noundef %i.q, i64 noundef 8104) #10 ; 10 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #10 ; 0 uses
  br i1 %i.s, label %_mi_meta_free.exit, label %bb.g

_mi_meta_free.exit:                               ; preds = %mi_lock_acquire.exit.i26
  tail call void @mi_free(ptr noundef nonnull %i.m) #10
  br label %bb.r

bb.g:                                             ; preds = %mi_lock_acquire.exit.i26
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 3712 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.r, i64 3720
  store i64 5904, ptr %.sroa.7.0..sroa_idx39, align 8, !tbaa !21
  %.sroa.8.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.r, i64 3728
  store i64 282578783305735, ptr %.sroa.8.0..sroa_idx43, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1528
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !39
  %i.w = atomicrmw add ptr @mi_subproc_init.subproc_total_count, i64 1 monotonic, align 8
  store i64 %i.w, ptr %i.m, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 1536
  store i64 4368, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 1544
  store i64 5, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 1384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 1432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 3 uses
  %.not.i.i30 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i30, label %mi_lock_acquire.exit.i31, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.ac, ptr noundef nonnull @.str.1, i32 noundef %i.ac) #10
  br label %mi_lock_acquire.exit.i31

mi_lock_acquire.exit.i31:                         ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr @mi_subprocs, align 8, !tbaa !43 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %mi_subproc_init.exit, label %bb.i

bb.i:                                             ; preds = %mi_lock_acquire.exit.i31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.m, ptr %i.af, align 8, !tbaa !45
  br label %mi_subproc_init.exit

mi_subproc_init.exit:                             ; preds = %mi_lock_acquire.exit.i31, %bb.i
  store ptr %i.m, ptr @mi_subprocs, align 8, !tbaa !43
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 0 uses
  %i.ah = tail call ptr @_mi_heap_new_for_subproc(ptr noundef nonnull %i.m, ptr noundef null, i1 noundef zeroext true) #10 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.q

bb.j:                                             ; preds = %mi_subproc_init.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 3720
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 3728
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %i.aj = icmp ult i32 %.sroa.6.0.copyload, 3
  br i1 %i.aj, label %mi_subproc_destroy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i32 %.sroa.6.0.copyload, 7
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @mi_free(ptr noundef nonnull %i.r) #10
  br label %mi_subproc_destroy.exit

bb.m:                                             ; preds = %bb.k
  %i.al = icmp ult i32 %.sroa.6.0.copyload, 6
  br i1 %i.al, label %_mi_memid_size.exit.i33, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %.sroa.6.0.copyload, label %_mi_memid_size.exit.i33 [
    i32 6, label %bb.o
    i32 7, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = lshr i64 %.sroa.3.0.copyload, 16
  %i.an = and i64 %i.am, 281474976645120
  br label %_mi_memid_size.exit.i33

bb.p:                                             ; preds = %bb.n
  br label %_mi_memid_size.exit.i33

_mi_memid_size.exit.i33:                          ; preds = %bb.m, %bb.p, %bb.o, %bb.n
  %.0.i.i34 = phi i64 [ 0, %bb.n ], [ %i.an, %bb.o ], [ %.sroa.3.0.copyload, %bb.p ], [ %.sroa.3.0.copyload, %bb.m ]
  tail call void @_mi_arenas_free(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.r, i64 noundef %.0.i.i34, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.u) #10
  br label %mi_subproc_destroy.exit

mi_subproc_destroy.exit:                          ; preds = %bb.j, %bb.l, %_mi_memid_size.exit.i33
  tail call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull %i.m, i1 noundef zeroext true) #12
  br label %bb.r

bb.q:                                             ; preds = %mi_subproc_init.exit
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1032
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32
  tail call void @_mi_theap_init(ptr noundef nonnull %i.r, ptr noundef nonnull %i.ah, ptr noundef %i.aq) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 1424
  store ptr %i.r, ptr %i.ar, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %_mi_meta_free.exit, %bb.q, %mi_subproc_destroy.exit, %0
  %.sroa.022.2 = phi ptr [ null, %0 ], [ null, %_mi_meta_free.exit ], [ null, %mi_subproc_destroy.exit ], [ %i.m, %bb.q ]
  ret ptr %.sroa.022.2
}

declare void @mi_thread_init() local_unnamed_addr #1

declare ptr @_mi_heap_new_for_subproc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_subproc_destroy(ptr %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @mi_process_subproc_main
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull %0, i1 noundef zeroext true) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_mi_theap_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_subproc_unsafe_destroy(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %mi_lock_acquire.exit.split

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit.split.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.b) #10
  br label %mi_lock_acquire.exit.split.us

mi_lock_acquire.exit.split.us:                    ; preds = %bb.d, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !44   ; 4 uses
  %.not42.us = icmp eq ptr %i.e, null
  %.pre50 = load ptr, ptr %i.d, align 8, !tbaa !45 ; 3 uses
  br i1 %.not42.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_lock_acquire.exit.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.pre50, ptr %i.f, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_lock_acquire.exit.split.us
  %.not43.us = icmp eq ptr %.pre50, null
  br i1 %.not43.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.pre50, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !44
  br label %.split.us

bb.h:                                             ; preds = %bb.f
  store ptr %i.e, ptr @mi_subprocs, align 8, !tbaa !43
  br label %.split.us

.split.us:                                        ; preds = %bb.h, %bb.g
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.p, %bb.o, %.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #10 ; 3 uses
  %.not.i44 = icmp eq i32 %i.j, 0
  br i1 %.not.i44, label %mi_lock_acquire.exit45, label %bb.i

bb.i:                                             ; preds = %.split
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.j, ptr noundef nonnull @.str.1, i32 noundef %i.j) #10
  br label %mi_lock_acquire.exit45

mi_lock_acquire.exit45:                           ; preds = %.split, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 5 uses
  %i.m = icmp eq ptr %0, @mi_process_subproc_main ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %.not46.us = icmp eq ptr %i.n, null             ; 2 uses
  br i1 %i.m, label %mi_lock_acquire.exit45.split.us, label %mi_lock_acquire.exit45.split

mi_lock_acquire.exit45.split.us:                  ; preds = %mi_lock_acquire.exit45
  br i1 %.not46.us, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %mi_lock_acquire.exit45.split.us, %bb.k
  %.03547.us = phi ptr [ %i.p, %bb.k ], [ %i.n, %mi_lock_acquire.exit45.split.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03547.us, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %i.q = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !50
  %.not41.us = icmp eq ptr %.03547.us, %i.q
  br i1 %.not41.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.us
  tail call void @_mi_heap_force_destroy(ptr noundef nonnull %.03547.us, i1 noundef zeroext false) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.us
  %.not.us = icmp eq ptr %i.p, null
  br i1 %.not.us, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !51

._crit_edge.us:                                   ; preds = %bb.k, %mi_lock_acquire.exit45.split.us
  %i.r = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !50
  %.not40.us = icmp eq ptr %i.r, null
  br i1 %.not40.us, label %.split49, label %bb.l

bb.l:                                             ; preds = %._crit_edge.us
  tail call void @_mi_thread_locals_thread_done() #10
  tail call void @_mi_thread_locals_done() #10
  br label %.split49.sink.split

mi_lock_acquire.exit.split:                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !44   ; 4 uses
  %.not42 = icmp eq ptr %i.u, null
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !45  ; 3 uses
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %mi_lock_acquire.exit.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.pre, ptr %i.v, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %mi_lock_acquire.exit.split
  %.not43 = icmp eq ptr %.pre, null
  br i1 %.not43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !44
  br label %.split

bb.p:                                             ; preds = %bb.n
  store ptr %i.u, ptr @mi_subprocs, align 8, !tbaa !43
  br label %.split

.split49.sink.split:                              ; preds = %bb.s, %bb.l
  %i.x = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !50
  tail call void @_mi_heap_force_destroy(ptr noundef %i.x, i1 noundef zeroext false) #10
  br label %.split49

.split49:                                         ; preds = %.split49.sink.split, %._crit_edge.us, %._crit_edge
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #10 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store ptr null, ptr %i.z, align 8, !tbaa !8
  br i1 %i.m, label %bb.u, label %bb.t

mi_lock_acquire.exit45.split:                     ; preds = %mi_lock_acquire.exit45
  br i1 %.not46.us, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_lock_acquire.exit45.split, %bb.r
  %.03547 = phi ptr [ %i.ab, %bb.r ], [ %i.n, %mi_lock_acquire.exit45.split ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03547, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !50
  %.not41 = icmp eq ptr %.03547, %i.ac
  br i1 %.not41, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  tail call void @_mi_heap_force_destroy(ptr noundef nonnull %.03547, i1 noundef zeroext false) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.r, %mi_lock_acquire.exit45.split
  %i.ad = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !50
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %.split49, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  tail call void @_mi_thread_locals_thread_done() #10
  br label %.split49.sink.split

bb.t:                                             ; preds = %.split49
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1536
  tail call void @_mi_stats_merge_into(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1536), ptr noundef nonnull %i.ae) #10
  tail call void @_mi_arenas_unsafe_destroy_all(ptr noundef nonnull %0) #10
  br label %bb.x

bb.u:                                             ; preds = %.split49
  tail call void @_mi_arenas_unsafe_destroy_all(ptr noundef nonnull %0) #10
  %i.af = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 1) #10
  br i1 %i.af, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 2) #10
  br i1 %i.ag, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @mi_subproc_stats_print_out(ptr nonnull @mi_process_subproc_main, ptr noundef null, ptr noundef null) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ai = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ah) #10 ; 0 uses
  %i.aj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.i) #10 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.al = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ak) #10 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %i.ap = icmp ult i32 %.sroa.6.0.copyload, 3
  br i1 %i.ap, label %_mi_meta_free.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = icmp eq i32 %.sroa.6.0.copyload, 7
  br i1 %i.aq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @mi_free(ptr noundef nonnull %0) #10
  br label %_mi_meta_free.exit

bb.aa:                                            ; preds = %bb.y
  %i.ar = icmp ult i32 %.sroa.6.0.copyload, 6
  br i1 %i.ar, label %_mi_memid_size.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.sroa.6.0.copyload, label %_mi_memid_size.exit.i [
    i32 6, label %bb.ac
    i32 7, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.as = lshr i64 %.sroa.3.0.copyload, 16
  %i.at = and i64 %i.as, 281474976645120
  br label %_mi_memid_size.exit.i

bb.ad:                                            ; preds = %bb.ab
  br label %_mi_memid_size.exit.i

_mi_memid_size.exit.i:                            ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.ab
  %.0.i.i = phi i64 [ 0, %bb.ab ], [ %i.at, %bb.ac ], [ %.sroa.3.0.copyload, %bb.ad ], [ %.sroa.3.0.copyload, %bb.aa ]
  tail call void @_mi_arenas_free(ptr noundef %i.an, ptr noundef nonnull %0, i64 noundef %.0.i.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ao) #10
  br label %_mi_meta_free.exit

_mi_meta_free.exit:                               ; preds = %bb.x, %bb.z, %_mi_memid_size.exit.i
  br i1 %i.m, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_mi_meta_free.exit
  tail call void @_mi_page_map_unsafe_destroy() #10
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae, %_mi_meta_free.exit
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_subprocs_unsafe_destroy_all() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.a, ptr noundef nonnull @.str.1, i32 noundef %i.a) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @mi_subprocs, align 8, !tbaa !43 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_lock_acquire.exit, %bb.d
  %.08 = phi ptr [ %i.d, %bb.d ], [ %i.b, %mi_lock_acquire.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not6 = icmp eq ptr %.08, @mi_process_subproc_main
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull %.08, i1 noundef zeroext false) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.d, %mi_lock_acquire.exit
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 0 uses
  tail call fastcc void @mi_subproc_unsafe_destroy(ptr noundef nonnull @mi_process_subproc_main, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_subproc_add_current_thread(ptr nofree captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b seq_cst, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %mi_theap_is_initialized.exit.thread, label %mi_theap_is_initialized.exit

mi_theap_is_initialized.exit:                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1040
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %mi_theap_is_initialized.exit.thread, label %bb.d

bb.d:                                             ; preds = %mi_theap_is_initialized.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1032
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %.not10 = icmp eq ptr %i.l, %0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str, ptr noundef %i.l) #10
  br label %bb.g

mi_theap_is_initialized.exit.thread:              ; preds = %bb.c, %mi_theap_is_initialized.exit
  %i.m = load atomic ptr, ptr %i.b seq_cst, align 8, !tbaa !50
  %i.n = tail call ptr @_mi_thread_init_with_heap(ptr noundef %i.m) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %mi_theap_is_initialized.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_mi_thread_init_with_heap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @mi_subproc_visit_heaps(ptr %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef %i.c) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.016 = load ptr, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %.not = icmp eq ptr %.016, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %mi_lock_acquire.exit
  %.1.lcssa = phi i1 [ true, %mi_lock_acquire.exit ], [ %i.f, %.lr.ph ]
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.d

.lr.ph:                                           ; preds = %mi_lock_acquire.exit, %.lr.ph
  %.017 = phi ptr [ %.0, %.lr.ph ], [ %.016, %mi_lock_acquire.exit ] ; 2 uses
  %i.f = tail call zeroext i1 %1(ptr noundef nonnull %.017, ptr noundef %2) #10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %.0 = load ptr, ptr %i.g, align 8, !tbaa !54    ; 2 uses
  %i.h = icmp ne ptr %.0, null
  %i.i = select i1 %i.h, i1 %i.f, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !55

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.014 = phi i1 [ %.1.lcssa, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.014
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef nonnull ptr @_mi_subproc_main_init() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @mi_subprocs_lock, i8 0, i64 40, i1 false)
  store i64 ptrtoint (ptr @mi_process_subproc_main to i64), ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1504), align 32
  store i64 5904, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1512), align 8, !tbaa !21
  store i64 1103806595074, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1520), align 16
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1528), align 8, !tbaa !39
  %i.a = atomicrmw add ptr @mi_subproc_init.subproc_total_count, i64 1 monotonic, align 8
  store i64 %i.a, ptr @mi_process_subproc_main, align 64, !tbaa !40
  store i64 4368, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1536), align 64, !tbaa !41
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1544), align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1320), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1384), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 1432), i8 0, i64 40, i1 false)
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 3 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %mi_lock_acquire.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.1, i32 noundef %i.b) #10
  br label %mi_lock_acquire.exit.i

mi_lock_acquire.exit.i:                           ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @mi_subprocs, align 8, !tbaa !43 ; 3 uses
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @mi_process_subproc_main, i64 8), align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %mi_subproc_init.exit, label %bb.c

bb.c:                                             ; preds = %mi_lock_acquire.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @mi_process_subproc_main, ptr %i.d, align 8, !tbaa !45
  br label %mi_subproc_init.exit

mi_subproc_init.exit:                             ; preds = %mi_lock_acquire.exit.i, %bb.c
  store ptr @mi_process_subproc_main, ptr @mi_subprocs, align 8, !tbaa !43
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_subprocs_lock) #10 ; 0 uses
  ret ptr @mi_process_subproc_main
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_subproc_main_done() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull @mi_subprocs_lock) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

declare void @_mi_heap_force_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_mi_thread_locals_thread_done() local_unnamed_addr #1

declare void @_mi_thread_locals_done() local_unnamed_addr #1

declare void @_mi_stats_merge_into(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_mi_arenas_unsafe_destroy_all(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @mi_option_is_enabled(i32 noundef) local_unnamed_addr #1

declare void @mi_subproc_stats_print_out(ptr, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_mi_page_map_unsafe_destroy() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-builtin-malloc" }
attributes #11 = { nounwind }
attributes #12 = { "no-builtin-malloc" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !15, i64 1424}
!9 = !{!"mi_subproc_s", !10, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !13, i64 1320, !6, i64 1360, !6, i64 1368, !14, i64 1376, !13, i64 1384, !15, i64 1424, !13, i64 1432, !6, i64 1472, !6, i64 1480, !6, i64 1488, !6, i64 1496, !16, i64 1504, !11, i64 1528, !18, i64 1536}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 _ZTS12mi_subproc_s", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"mi_lock_s", !6, i64 0}
!14 = !{!"p1 _ZTS9mi_heap_s", !12, i64 0}
!15 = !{!"p1 _ZTS10mi_theap_s", !12, i64 0}
!16 = !{!"mi_memid_s", !6, i64 0, !5, i64 16, !17, i64 20, !17, i64 21, !17, i64 22}
!17 = !{!"_Bool", !6, i64 0}
!18 = !{!"mi_stats_s", !10, i64 0, !10, i64 8, !19, i64 16, !19, i64 40, !19, i64 64, !20, i64 88, !20, i64 96, !19, i64 104, !19, i64 128, !19, i64 152, !19, i64 176, !19, i64 200, !19, i64 224, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !20, i64 296, !20, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !19, i64 360, !19, i64 384, !19, i64 408, !19, i64 432, !19, i64 456, !19, i64 480, !20, i64 504, !20, i64 512, !20, i64 520, !20, i64 528, !20, i64 536, !6, i64 544, !6, i64 640, !6, i64 672, !6, i64 2448, !6, i64 4224}
!19 = !{!"mi_stat_count_s", !10, i64 0, !10, i64 8, !10, i64 16}
!20 = !{!"mi_stat_counter_s", !10, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 153242}
!25 = !{!16, !5, i64 16}
!26 = !{!27, !15, i64 72}
!27 = !{!"mi_page_s", !6, i64 0, !6, i64 8, !28, i64 16, !10, i64 24, !28, i64 32, !10, i64 40, !10, i64 48, !29, i64 56, !29, i64 58, !29, i64 60, !6, i64 62, !17, i64 63, !6, i64 64, !15, i64 72, !14, i64 80, !30, i64 88, !30, i64 96, !16, i64 104}
!28 = !{!"p1 _ZTS10mi_block_s", !12, i64 0}
!29 = !{!"short", !6, i64 0}
!30 = !{!"p1 _ZTS9mi_page_s", !12, i64 0}
!31 = !{!15, !15, i64 0}
!32 = !{!33, !34, i64 1032}
!33 = !{!"mi_theap_s", !6, i64 0, !34, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !35, i64 1064, !10, i64 1072, !36, i64 1080, !10, i64 1216, !10, i64 1224, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !15, i64 1264, !15, i64 1272, !15, i64 1280, !15, i64 1288, !10, i64 1296, !17, i64 1304, !17, i64 1305, !17, i64 1306, !6, i64 1312, !16, i64 3712, !18, i64 3736}
!34 = !{!"p1 _ZTS8mi_tld_s", !12, i64 0}
!35 = !{!"long long", !6, i64 0}
!36 = !{!"mi_random_cxt_s", !6, i64 0, !6, i64 64, !5, i64 128, !17, i64 132}
!37 = !{!38, !11, i64 24}
!38 = !{!"mi_tld_s", !10, i64 0, !10, i64 8, !5, i64 16, !11, i64 24, !15, i64 32, !13, i64 40, !17, i64 80, !17, i64 81, !16, i64 88}
!39 = !{!9, !11, i64 1528}
!40 = !{!9, !10, i64 0}
!41 = !{!18, !10, i64 0}
!42 = !{!18, !10, i64 8}
!43 = !{!11, !11, i64 0}
!44 = !{!9, !11, i64 8}
!45 = !{!9, !11, i64 16}
!46 = !{!9, !14, i64 1376}
!47 = !{!48, !14, i64 16}
!48 = !{!"mi_heap_s", !11, i64 0, !10, i64 8, !14, i64 16, !14, i64 24, !10, i64 32, !49, i64 40, !5, i64 48, !15, i64 56, !13, i64 64, !6, i64 104, !30, i64 704, !13, i64 712, !6, i64 752, !13, i64 2032, !16, i64 2072, !18, i64 2096}
!49 = !{!"p1 _ZTS10mi_arena_s", !12, i64 0}
!50 = !{!9, !6, i64 1368}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!14, !14, i64 0}
!55 = distinct !{!55, !52}
end_hunk_0
