inline.NumInlined: 27
inline.NumDeleted: 16
begin_hunk_0_@duckdb_je_pages_map:bb.a
pages_map_slow.exit:                              ; preds = %bb.i, %os_pages_trim.exit.loopexit.split.loop.exit.i, %bb.r, %bb.o, %os_pages_unmap.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ null, %os_pages_unmap.exit ], [ %i.an, %bb.o ], [ %i.an, %bb.r ], [ %i.ay, %os_pages_trim.exit.loopexit.split.loop.exit.i ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_pages_map(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load i8, ptr @os_overcommits, align 1, !tbaa !7, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %2, align 1, !tbaa !7, !range !9
  %i.d = trunc nuw i8 %.pre to i1
  %i.e = select i1 %i.d, i32 3, i32 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi i32 [ %i.e, %._crit_edge ], [ 3, %bb.b ]
  %i.g = load i32, ptr @mmap_flags, align 4, !tbaa !3
  %i.h = tail call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef -1, i64 noundef 0) #10 ; 4 uses
  %i.i = icmp eq ptr %i.h, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %os_pages_unmap.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %0, null
  %.not14 = icmp eq ptr %i.h, %0
  %or.cond = or i1 %.not, %.not14
  br i1 %or.cond, label %os_pages_unmap.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @munmap(ptr noundef %i.h, i64 noundef %1) #10
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %os_pages_unmap.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.l = tail call ptr @__errno_location() #11
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = call i32 @duckdb_je_buferror(i32 noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 64) #10 ; 0 uses
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #10
  %i.o = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @abort() #12
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %os_pages_unmap.exit

os_pages_unmap.exit:                              ; preds = %bb.h, %bb.e, %bb.c, %bb.d
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @duckdb_je_pages_unmap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #10
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %os_pages_unmap.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = tail call ptr @__errno_location() #11
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = call i32 @duckdb_je_buferror(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 64) #10 ; 0 uses
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #10
  %i.g = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @abort() #12
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %os_pages_unmap.exit

os_pages_unmap.exit:                              ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_pages_commit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load i8, ptr @os_overcommits, align 1, !tbaa !7, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %os_pages_commit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = select i1 %2, i32 3, i32 0
  %i.e = load i32, ptr @mmap_flags, align 4, !tbaa !3
  %i.f = or i32 %i.e, 16
  %i.g = tail call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef %i.d, i32 noundef %i.f, i32 noundef -1, i64 noundef 0) #10 ; 3 uses
  %i.h = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %os_pages_commit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.g, %0
  br i1 %.not.i, label %os_pages_commit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @munmap(ptr noundef %i.g, i64 noundef %1) #10
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %os_pages_commit.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.k = tail call ptr @__errno_location() #11
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = call i32 @duckdb_je_buferror(i32 noundef %i.l, ptr noundef nonnull %i.a, i64 noundef 64) #10 ; 0 uses
  call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #10
  %i.n = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @abort() #12
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %os_pages_commit.exit

os_pages_commit.exit:                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_pages_decommit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @pages_commit_impl(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_pages_mark_guards(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @mprotect(ptr noundef nonnull %0, i64 noundef 4096, i32 noundef 0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @mprotect(ptr noundef nonnull %1, i64 noundef 4096, i32 noundef 0) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_pages_unmark_guards(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = and i1 %i.a, %i.b                        ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 4096
  %i.g = select i1 %i.c, i64 %i.f, i64 -1         ; 2 uses
  %i.h = icmp ult i64 %i.g, 16385
  %i.i = and i1 %i.c, %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @mprotect(ptr noundef nonnull %0, i64 noundef 4096, i32 noundef 3) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sink17 = phi i64 [ %i.g, %bb.a ], [ 4096, %bb.d ]
  %.sink = phi ptr [ %0, %bb.a ], [ %1, %bb.d ]
  %i.k = tail call i32 @mprotect(ptr noundef nonnull %.sink, i64 noundef %.sink17, i32 noundef 3) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_pages_purge_lazy(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @pages_can_purge_lazy_runtime, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 8) #10
  %i.b = icmp ne i32 %i.a, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_pages_purge_forced(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @madvise_dont_need_zeros_is_faulty, align 4, !tbaa !3
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 4) #10
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @duckdb_je_pages_huge(ptr noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @duckdb_je_pages_nohuge(ptr noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_pages_dontdump(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 16) #10
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_pages_dodump(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @madvise(ptr noundef %0, i64 noundef %1, i32 noundef 17) #10
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @duckdb_je_pages_set_thp_state(ptr noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_pages_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = tail call i64 @sysconf(i32 noundef 30) #10 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %..i = select i1 %i.d, i64 12, i64 %i.c         ; 2 uses
  store i64 %..i, ptr @duckdb_je_os_page, align 8, !tbaa !11
  %i.e = icmp ugt i64 %..i, 4096
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.4) #10
  %i.f = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %os_pages_unmap.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #12
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr @duckdb_je_opt_trust_madvise, align 1, !tbaa !7, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @mmap(ptr noundef null, i64 noundef 4096, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #10 ; 5 uses
  %i.k = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.8) #10
  %i.l = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #12
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.j, i8 65, i64 4096, i1 false)
  %i.n = tail call i32 @madvise(ptr noundef nonnull %i.j, i64 noundef 4096, i32 noundef 4) #10
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 65, i64 noundef 4096) #13
  %i.q = icmp eq ptr %i.p, null
  %i.r = zext i1 %i.q to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i32 [ %i.r, %bb.i ], [ 1, %bb.h ]   ; 2 uses
  %i.s = tail call i32 @munmap(ptr noundef nonnull %i.j, i64 noundef 4096) #10
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %madvise_MADV_DONTNEED_zeroes_pages.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.9) #10
  %i.t = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !7, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %madvise_MADV_DONTNEED_zeroes_pages.exit

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #12
  unreachable

madvise_MADV_DONTNEED_zeroes_pages.exit:          ; preds = %bb.j, %bb.k
  %.not = icmp eq i32 %.0.i, 0
  %i.v = xor i32 %.0.i, 1
  store i32 %i.v, ptr @madvise_dont_need_zeros_is_faulty, align 4, !tbaa !3
  br i1 %.not, label %bb.m, label %bb.o

bb.m:                                             ; preds = %madvise_MADV_DONTNEED_zeroes_pages.exit
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.5) #10
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.6) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  store i32 0, ptr @madvise_dont_need_zeros_is_faulty, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %madvise_MADV_DONTNEED_zeroes_pages.exit, %bb.m, %bb.n
  store i32 34, ptr @mmap_flags, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 48, ptr %i.b, align 1
  %i.w = tail call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 524288) #10
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.p
  %.014.i.i = phi i64 [ %.1.i.i, %bb.p ], [ undef, %bb.o ]
  %i.z = call i64 (i64, ...) @syscall(i64 noundef 0, i32 noundef range(i32 0, -1) %i.x, ptr noundef nonnull %i.b, i64 noundef 1) #10 ; 5 uses
  %i.aa = icmp slt i64 %i.z, 0                    ; 2 uses
  %i.ab = icmp eq i64 %i.z, 0
  %.19.i.i = select i1 %i.ab, i32 2, i32 0
  %.1.i.i = select i1 %i.aa, i64 %i.z, i64 %.014.i.i ; 2 uses
  %.0.i.i = select i1 %i.aa, i32 1, i32 %.19.i.i
  switch i32 %.0.i.i, label %os_overcommits_proc.exit [
    i32 0, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %.preheader.i
  %i.ac = icmp slt i64 %i.z, 1
  br i1 %i.ac, label %.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.116.le.i.i = call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  br label %os_overcommits_proc.exit

os_overcommits_proc.exit:                         ; preds = %.preheader.i, %bb.q
  %.2.i.i = phi i64 [ %.116.le.i.i, %bb.q ], [ %.1.i.i, %.preheader.i ]
  %i.ad = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef %i.x) #10 ; 0 uses
  %i.ae = icmp sgt i64 %.2.i.i, 0
  %i.af = load i8, ptr %i.b, align 1
  %i.ag = and i8 %i.af, -2
  %i.ah = icmp eq i8 %i.ag, 48
  %.0.i6 = select i1 %i.ae, i1 %i.ah, i1 false    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.ai = zext i1 %.0.i6 to i8
  store i8 %i.ai, ptr @os_overcommits, align 1, !tbaa !7
  br i1 %.0.i6, label %bb.r, label %bb.s
end_hunk_0
