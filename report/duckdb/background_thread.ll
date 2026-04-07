inline.NumInlined: 91
inline.NumDeleted: 25
begin_hunk_0_@background_thread_entry:bb.a
  %i.i = getelementptr inbounds nuw [208 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #12, !inline_history !39
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %atomic_store_b.exit.i.i

atomic_store_b.exit.i.i:                          ; preds = %tsd_fetch_impl.exit
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #12, !inline_history !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %bb.c
end_hunk_0
begin_hunk_1_@background_thread_entry:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  store atomic i8 1, ptr %i.v release, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  tail call void @duckdb_je_nstime_init(ptr noundef nonnull %i.w, i64 noundef -1) #12, !inline_history !39
  %i.x = icmp eq i32 %i.b, 0
  br i1 %i.x, label %bb.e, label %.preheader.i

end_hunk_1
begin_hunk_2_@background_thread_entry:bb.a
  br label %.backedge.i

bb.e:                                             ; preds = %malloc_mutex_lock.exit.i
  tail call fastcc void @background_thread0_work(ptr noundef %.0.i), !inline_history !39
  br label %background_work.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
end_hunk_2
begin_hunk_3_@background_thread_entry:bb.a
  switch i32 %i.aa, label %bb.f [
    i32 0, label %background_work.exit
    i32 2, label %background_thread_pause_check.exit.i
  ], !prof !40

background_thread_pause_check.exit.i:             ; preds = %.backedge.i
  store atomic i8 0, ptr %i.z monotonic, align 1
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #12, !inline_history !39 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_background_thread_lock), !inline_history !39
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #12, !inline_history !39 ; 0 uses
  tail call fastcc void @malloc_mutex_lock(ptr noundef %.0.i, ptr noundef nonnull %i.j), !inline_history !39
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %.backedge.i
  tail call fastcc void @background_work_sleep_once(ptr noundef %.0.i, ptr noundef nonnull %i.i, i32 noundef %i.b), !inline_history !39
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.f, %background_thread_pause_check.exit.i
end_hunk_3
begin_hunk_4_@background_thread_entry:bb.a

background_work.exit:                             ; preds = %.backedge.i, %bb.e
  store atomic i8 0, ptr %i.v release, align 1
  tail call void @duckdb_je_nstime_init(ptr noundef nonnull %i.w, i64 noundef 0) #12, !inline_history !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store atomic i8 0, ptr %i.ad monotonic, align 1
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #12, !inline_history !39 ; 0 uses
  ret ptr null
}

end_hunk_4
begin_hunk_5_@background_thread0_work:bb.a
  store <16 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
end_hunk_5
begin_hunk_6_@background_thread0_work:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_6
begin_hunk_7_@background_thread0_work:bb.a
  store <8 x i8> zeroinitializer, ptr %i.s, align 1, !tbaa !28
  %index.next82 = add nuw i64 %index81, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.d, %n.vec79
end_hunk_7
begin_hunk_8_@background_thread0_work:bb.a
  %i.y = add i32 %.045, 1                         ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp ugt i64 %.fr54, %i.z
  br i1 %i.aa, label %.lr.ph, label %.outer.split.us.lr.ph, !llvm.loop !46

.outer.split:                                     ; preds = %bb.a, %.outer.split.backedge
  %i.ab = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18 ; 8 uses
end_hunk_8
begin_hunk_9_@background_thread0_work:bb.a
  switch i32 %i.ad, label %bb.b [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit
  ], !prof !40

.preheader:                                       ; preds = %.outer.split, %.backedge.us
  %i.ae = phi ptr [ %i.be, %.backedge.us ], [ %i.ab, %.outer.split ]
end_hunk_9
begin_hunk_10_@background_thread0_work:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store atomic i8 0, ptr %i.am monotonic, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #12, !inline_history !47 ; 0 uses
  %i.ap = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.aq), !inline_history !47
  %.pre59 = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  br label %check_background_thread_creation.exit.thread

bb.c:                                             ; preds = %.split.us
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !47
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.c, %.split.us
  %i.ar = inttoptr i64 %indvars.iv to ptr
  %i.as = tail call fastcc i32 @background_thread_create_signals_masked(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.ar), !inline_history !47 ; 2 uses
  %i.at = load i8, ptr %i.v, align 1, !tbaa !27
  %i.au = add i8 %i.at, -1                        ; 2 uses
  store i8 %i.au, ptr %i.v, align 1, !tbaa !27
end_hunk_10
begin_hunk_11_@background_thread0_work:bb.a
  br i1 %i.av, label %bb.d, label %post_reentrancy.exit.i

bb.d:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #12, !inline_history !47
  br label %post_reentrancy.exit.i

post_reentrancy.exit.i:                           ; preds = %bb.d, %pre_reentrancy.exit.i
end_hunk_11
begin_hunk_12_@background_thread0_work:bb.a
  br label %check_background_thread_creation.exit

bb.f:                                             ; preds = %post_reentrancy.exit.i
  tail call void (ptr, ...) @duckdb_je_malloc_printf(ptr noundef nonnull @.str.4, i32 noundef %i.as) #12, !inline_history !47
  %i.ay = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !28, !range !20, !noundef !21
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %check_background_thread_creation.exit

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #13, !inline_history !47
  unreachable

check_background_thread_creation.exit:            ; preds = %bb.e, %bb.f
  %.134 = phi i32 [ %.033.ph51, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ba = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef nonnull %0, ptr noundef nonnull %i.bb), !inline_history !47
  %i.bc = zext i32 %.134 to i64
  br label %.outer.split.us

end_hunk_12
begin_hunk_13_@background_thread0_work:bb.a
  switch i32 %i.bg, label %bb.h [
    i32 0, label %.preheader
    i32 2, label %background_thread_pause_check.exit.us
  ], !prof !40

background_thread_pause_check.exit.us:            ; preds = %.backedge.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 56
end_hunk_13
begin_hunk_14_@background_thread0_work:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  store atomic i8 0, ptr %i.bo monotonic, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bp) #12, !inline_history !47 ; 0 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.l, %.lr.ph.preheader.i.us
end_hunk_14
begin_hunk_15_@background_thread0_work:bb.a
  %.not.i.us = icmp eq i32 %i.cj, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store atomic i8 0, ptr %i.ck monotonic, align 8
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bw) #12, !inline_history !47 ; 0 uses
  br i1 %.not.i.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit31.us, %.lr.ph.i.us
end_hunk_15
begin_hunk_16_@background_thread0_work:bb.a
check_background_thread_creation.exit.thread38.loopexit.us: ; preds = %bb.l
  %i.cn = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  tail call fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef nonnull %i.co), !inline_history !47
  %.pre60 = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !18
  br label %check_background_thread_creation.exit.thread.us

end_hunk_16
begin_hunk_17_@background_work_sleep_once:bb.a
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 0, ptr %i.s, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.u = load i64, ptr %3, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = mul nsw i64 %i.w, 1000
  call void @duckdb_je_nstime_init2(ptr noundef nonnull %4, i64 noundef %i.u, i64 noundef %i.x) #12
  %i.y = icmp eq i64 %.022.lcssa, -1
end_hunk_17
begin_hunk_18_@background_work_sleep_once:bb.a
  call void @duckdb_je_nstime_iadd(ptr noundef nonnull %6, i64 noundef %i.ad) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ai = call i64 @duckdb_je_nstime_sec(ptr noundef nonnull %6) #12
  store i64 %i.ai, ptr %7, align 8, !tbaa !52
  %i.aj = call i64 @duckdb_je_nstime_nsec(ptr noundef nonnull %6) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %7) #12 ; 0 uses
end_hunk_18
begin_hunk_19_@background_work_sleep_once:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ap = load i64, ptr %3, align 8, !tbaa !49
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !51
  %i.ar = mul nsw i64 %i.aq, 1000
  call void @duckdb_je_nstime_init2(ptr noundef nonnull %8, i64 noundef %i.ap, i64 noundef %i.ar) #12
  %i.as = call i32 @duckdb_je_nstime_compare(ptr noundef nonnull %8, ptr noundef nonnull %4) #12
end_hunk_19
begin_hunk_20_@llvm.umin.i64
!36 = !{!9, !4, i64 32}
!37 = !{!14, !14, i64 0}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = distinct !{null}
!40 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 8, i32 24}
!45 = distinct !{!45, !42, !43}
!46 = distinct !{!46, !42}
!47 = distinct !{null}
!48 = !{!23, !11, i64 184}
!49 = !{!50, !11, i64 0}
!50 = !{!"timeval", !11, i64 0, !11, i64 8}
!51 = !{!50, !11, i64 8}
!52 = !{!53, !11, i64 0}
!53 = !{!"timespec", !11, i64 0, !11, i64 8}
!54 = !{!53, !11, i64 8}
end_hunk_20
