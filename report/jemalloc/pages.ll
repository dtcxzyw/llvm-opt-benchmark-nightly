Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/pages?download=true
inline.NumInlined: 31
inline.NumDeleted: 18
begin_hunk_0_@je_pages_map:bb.a
bb.s:                                             ; preds = %os_pages_unmap.exit.i.i
  %i.ax = icmp eq ptr %i.ab, null
  br i1 %i.ax, label %bb.g, label %os_pages_trim.exit.loopexit.split.loop.exit.i, !llvm.loop !19

os_pages_trim.exit.loopexit.split.loop.exit.i:    ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  br label %pages_map_slow.exit

pages_map_slow.exit:                              ; preds = %bb.i, %os_pages_trim.exit.loopexit.split.loop.exit.i, %bb.r, %bb.o, %os_pages_unmap.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ null, %os_pages_unmap.exit ], [ %i.an, %bb.o ], [ %i.an, %bb.r ], [ %i.ay, %os_pages_trim.exit.loopexit.split.loop.exit.i ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_pages_map(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load i8, ptr @os_overcommits, align 1, !tbaa !14, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %2, align 1, !tbaa !14, !range !15
  %i.d = trunc nuw i8 %.pre to i1
  %i.e = select i1 %i.d, i32 3, i32 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi i32 [ %i.e, %._crit_edge ], [ 3, %bb.b ]
  %i.g = load i32, ptr @mmap_flags, align 4, !tbaa !12
  %i.h = tail call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef -1, i64 noundef 0) #9 ; 4 uses
  %i.i = icmp eq ptr %i.h, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %os_pages_unmap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %0, null
  %.not14 = icmp eq ptr %i.h, %0
  %or.cond = or i1 %.not, %.not14
  br i1 %or.cond, label %os_pages_unmap.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @munmap(ptr noundef %i.h, i64 noundef %1) #9
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %os_pages_unmap.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.l = tail call ptr @__errno_location() #10
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = call i32 @je_buferror(i32 noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 64) #9 ; 0 uses
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #9
  %i.o = load i8, ptr @je_opt_abort, align 1, !tbaa !14, !range !15, !noundef !16
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @abort() #11
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %os_pages_unmap.exit

os_pages_unmap.exit:                              ; preds = %bb.h, %bb.e, %bb.c, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @je_pages_unmap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #9
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %os_pages_unmap.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = tail call ptr @__errno_location() #10
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = call i32 @je_buferror(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 64) #9 ; 0 uses
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #9
  %i.g = load i8, ptr @je_opt_abort, align 1, !tbaa !14, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %os_pages_unmap.exit

os_pages_unmap.exit:                              ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pages_commit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load i8, ptr @os_overcommits, align 1, !tbaa !14, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %os_pages_commit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = select i1 %2, i32 3, i32 0
  %i.e = load i32, ptr @mmap_flags, align 4, !tbaa !12
  %i.f = or i32 %i.e, 16
  %i.g = tail call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef %i.d, i32 noundef %i.f, i32 noundef -1, i64 noundef 0) #9 ; 3 uses
  %i.h = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %os_pages_commit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.g, %0
  br i1 %.not.i, label %os_pages_commit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @munmap(ptr noundef %i.g, i64 noundef %1) #9
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %os_pages_commit.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.k = tail call ptr @__errno_location() #10
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = call i32 @je_buferror(i32 noundef %i.l, ptr noundef nonnull %i.a, i64 noundef 64) #9 ; 0 uses
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #9
  %i.n = load i8, ptr @je_opt_abort, align 1, !tbaa !14, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @abort() #11
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %os_pages_commit.exit

os_pages_commit.exit:                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pages_decommit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @je_pages_mark_guards(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @mprotect(ptr noundef nonnull %0, i64 noundef 4096, i32 noundef 0) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @mprotect(ptr noundef nonnull %1, i64 noundef 4096, i32 noundef 0) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_pages_unmark_guards(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.c, %i.d
  %i.e = add i64 %reass.sub, 4096                 ; 2 uses
  %2 = icmp ult i64 %i.e, 16385
  %3 = and i1 %i.b, %2
  %i.f = and i1 %i.a, %3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @mprotect(ptr noundef nonnull %0, i64 noundef %i.e, i32 noundef 3) #9 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @mprotect(ptr noundef nonnull %0, i64 noundef 4096, i32 noundef 3) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @mprotect(ptr noundef nonnull %1, i64 noundef 4096, i32 noundef 3) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_purge_lazy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @pages_can_purge_lazy_runtime, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 8) #9
  %i.b = icmp ne i32 %i.a, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_purge_forced(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @madvise_dont_need_zeros_is_faulty, align 4, !tbaa !12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 4) #9
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_huge(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 14) #9
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_nohuge(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 15) #9
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_collapse(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 25) #9
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_dontdump(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 16) #9
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_pages_dodump(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 17) #9
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @je_pages_purge_process_madvise(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_pages_set_thp_state(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @je_opt_thp, align 4, !tbaa !12 ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %pages_should_skip_set_thp_state.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 1                      ; 2 uses
  %i.d = load i32, ptr @je_init_system_thp_mode, align 4 ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  %or.cond.i = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond.i, label %pages_should_skip_set_thp_state.exit.thread, label %pages_should_skip_set_thp_state.exit

pages_should_skip_set_thp_state.exit:             ; preds = %bb.b
  %i.f = icmp eq i32 %i.a, 2                      ; 2 uses
  %i.g = icmp eq i32 %i.d, 2
  %or.cond3.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond3.i, label %pages_should_skip_set_thp_state.exit.thread, label %bb.c

bb.c:                                             ; preds = %pages_should_skip_set_thp_state.exit
  %i.h = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.h, i1 false    ; 2 uses
  %brmerge = or i1 %or.cond, %i.f
  br i1 %brmerge, label %pages_should_skip_set_thp_state.exit.thread.sink.split, label %pages_should_skip_set_thp_state.exit.thread

pages_should_skip_set_thp_state.exit.thread.sink.split: ; preds = %bb.c
  %.mux = select i1 %or.cond, i32 14, i32 15
  %i.i = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef %.mux) #9 ; 0 uses
  br label %pages_should_skip_set_thp_state.exit.thread

pages_should_skip_set_thp_state.exit.thread:      ; preds = %bb.c, %pages_should_skip_set_thp_state.exit.thread.sink.split, %bb.b, %bb.a, %pages_should_skip_set_thp_state.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_pages_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = tail call i64 @sysconf(i32 noundef 30) #9 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %..i = select i1 %i.e, i64 4096, i64 %i.d       ; 2 uses
  store i64 %..i, ptr @je_os_page, align 8, !tbaa !18
  %i.f = icmp ugt i64 %..i, 4096
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_write(ptr noundef nonnull @.str.5) #9
  %i.g = load i8, ptr @je_opt_abort, align 1, !tbaa !14, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %os_pages_unmap.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.i = load i8, ptr @je_opt_trust_madvise, align 1, !tbaa !14, !range !15, !noundef !16
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @mmap(ptr noundef null, i64 noundef 4096, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9 ; 5 uses
  %i.l = icmp eq ptr %i.k, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @je_malloc_write(ptr noundef nonnull @.str.9) #9
  %i.m = load i8, ptr @je_opt_abort, align 1, !tbaa !14, !range !15, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #11
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.k, i8 65, i64 4096, i1 false)
  %i.o = tail call i32 @madvise(ptr noundef nonnull %i.k, i64 noundef 4096, i32 noundef 4) #9
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 65, i64 noundef 4096) #12
  %i.r = icmp eq ptr %i.q, null
  %i.s = zext i1 %i.r to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i32 [ %i.s, %bb.i ], [ 1, %bb.h ]   ; 2 uses
  %i.t = tail call i32 @munmap(ptr noundef nonnull %i.k, i64 noundef 4096) #9
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %madvise_MADV_DONTNEED_zeroes_pages.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @je_malloc_write(ptr noundef nonnull @.str.10) #9
end_hunk_0
