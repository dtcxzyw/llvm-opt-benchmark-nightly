inline.NumInlined: 171
inline.NumDeleted: 65
begin_hunk_0_@je_tcache_stats_merge:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr i8, ptr %2, i64 -896
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.ah, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.f = icmp samesign ult i64 %indvars.iv, 39
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = tail call ptr @je_arena_bin_choose(ptr noundef %0, ptr noundef %2, i32 noundef %i.g, ptr noundef null) #13 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.i) #13
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.h) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.p, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store atomic i8 0, ptr %i.y monotonic, align 8
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #13 ; 0 uses
  %.pre = load i32, ptr @je_nhbins, align 4, !tbaa !7
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ac = getelementptr [48 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = atomicrmw add ptr %i.ad, i64 %i.ab monotonic, align 8 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %malloc_mutex_lock.exit
  %i.ah = phi i32 [ %i.d, %bb.g ], [ %.pre, %malloc_mutex_lock.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !146
}

declare ptr @je_arena_bin_choose(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tcaches_create(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
tsdn_witness_tsdp_get.exit18:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit18
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #13
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit18
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.g = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %tcaches_create_prep.exit

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef 32752, i64 noundef 64) #13 ; 2 uses
  store ptr %i.i, ptr @je_tcaches, align 8, !tbaa !147
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %tcaches_create_prep.exit.thread, label %tcaches_create_prep.exit

tcaches_create_prep.exit:                         ; preds = %malloc_mutex_lock.exit, %bb.d
  %i.k = load ptr, ptr @tcaches_avail, align 8, !tbaa !147
  %i.l = icmp eq ptr %i.k, null
  %i.m = load i32, ptr @tcaches_past, align 4
  %i.n = icmp ugt i32 %i.m, 4093
  %or.cond.i = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond.i, label %tcaches_create_prep.exit.thread, label %bb.e

bb.e:                                             ; preds = %tcaches_create_prep.exit
  %i.o = tail call ptr @je_tcache_create_explicit(ptr noundef %0) ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %tcaches_create_prep.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @tcaches_avail, align 8, !tbaa !147 ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  store ptr %i.r, ptr @tcaches_avail, align 8, !tbaa !147
  store ptr %i.o, ptr %i.q, align 8, !tbaa !35
  %i.s = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %2, align 4, !tbaa !7
  br label %tcaches_create_prep.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.z = load i32, ptr @tcaches_past, align 4, !tbaa !7 ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !35
  store i32 %i.z, ptr %2, align 4, !tbaa !7
  %i.ac = add i32 %i.z, 1
  store i32 %i.ac, ptr @tcaches_past, align 4, !tbaa !7
  br label %tcaches_create_prep.exit.thread

tcaches_create_prep.exit.thread:                  ; preds = %bb.d, %bb.g, %bb.h, %bb.e, %tcaches_create_prep.exit
  %.0 = phi i1 [ true, %bb.e ], [ true, %tcaches_create_prep.exit ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.d ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13 ; 0 uses
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcaches_flush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #13
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %.fr = freeze ptr %i.j                          ; 3 uses
  %i.k = icmp eq ptr %.fr, null
  br i1 %i.k, label %tcaches_elm_remove.exit.thread, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !35
  %i.l = icmp eq ptr %.fr, inttoptr (i64 1 to ptr)
  br i1 %i.l, label %tcaches_elm_remove.exit.thread, label %bb.f

tcaches_elm_remove.exit.thread:                   ; preds = %malloc_mutex_lock.exit, %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13 ; 0 uses
  tail call fastcc void @tcache_destroy(ptr noundef %0, ptr noundef nonnull %.fr)
  br label %bb.g

bb.g:                                             ; preds = %tcaches_elm_remove.exit.thread, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcaches_destroy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #13
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %.fr = freeze ptr %i.j                          ; 2 uses
  %switch = icmp ult ptr %.fr, inttoptr (i64 2 to ptr)
  %i.k = load ptr, ptr @tcaches_avail, align 8, !tbaa !147
  store ptr %i.k, ptr %i.i, align 8, !tbaa !35
  store ptr %i.i, ptr @tcaches_avail, align 8, !tbaa !147
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13 ; 0 uses
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @tcache_destroy(ptr noundef %0, ptr noundef nonnull %.fr)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tcache_boot(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_tcache_max, align 8, !tbaa !12 ; 5 uses
  %i.b = icmp ult i64 %i.a, 4097
  br i1 %i.b, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.a, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  br label %sz_s2u.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.a, 8070450532247928832
  br i1 %i.j, label %sz_s2u.exit.thread, label %bb.d, !prof !11

sz_s2u.exit.thread:                               ; preds = %bb.c
  store i64 0, ptr @je_tcache_maxclass, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.a, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.m
  %i.n = lshr i64 1152921504606846975, %i.m
  %i.o = add nuw nsw i64 %i.a, %i.n
  %i.p = and i64 %i.o, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.d, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.d ] ; 6 uses
  store i64 %.0.i, ptr @je_tcache_maxclass, align 8, !tbaa !12
  %i.q = icmp ult i64 %.0.i, 4097
  br i1 %i.q, label %bb.e, label %bb.f, !prof !149

bb.e:                                             ; preds = %sz_s2u.exit.thread, %sz_s2u.exit
  %.0.i21 = phi i64 [ 0, %sz_s2u.exit.thread ], [ %.0.i, %sz_s2u.exit ]
  %i.r = add nuw nsw i64 %.0.i21, 7
  %i.s = lshr i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  br label %sz_size2index.exit

bb.f:                                             ; preds = %sz_s2u.exit
  %i.w = icmp ugt i64 %.0.i, 8070450532247928832
  br i1 %i.w, label %sz_size2index.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.x = shl nuw i64 %.0.i, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 3 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nuw nsw i64 60, %i.z
  %i.ac = ashr exact i64 -1152921504606846976, %i.z
  %i.ad = add nsw i64 %.0.i, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = lshr i64 %i.ae, %i.ab
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  %i.ai = shl nuw nsw i32 %i.aa, 2
  %reass.sub = sub nsw i32 %i.ah, %i.ai
  %i.aj = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.g, %bb.f, %bb.e
  %.0.i16 = phi i32 [ %i.v, %bb.e ], [ %i.aj, %bb.g ], [ 235, %bb.f ]
  %i.ak = add nuw nsw i32 %.0.i16, 1
  store i32 %i.ak, ptr @je_nhbins, align 4, !tbaa !7
  %i.al = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @tcaches_mtx, ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 0) #13
  br i1 %i.al, label %bb.k, label %bb.h

bb.h:                                             ; preds = %sz_size2index.exit
  %i.am = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.an = tail call i32 @llvm.umax.i32(i32 %i.am, i32 39)
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %i.ap, i64 noundef 64) #13 ; 2 uses
  store ptr %i.aq, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.k, label %.preheader22

.preheader22:                                     ; preds = %bb.h
  %i.as = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.lr.ph25.preheader, label %.lr.ph

.preheader:                                       ; preds = %tcache_ncached_max_compute.exit
  %i.at = icmp ult i32 %i.bp, 39
  br i1 %i.at, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader22, %.preheader
  %i.au = phi i32 [ %i.bp, %.preheader ], [ 0, %.preheader22 ]
  %i.av = zext nneg i32 %i.au to i64
  br label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader22, %tcache_ncached_max_compute.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %tcache_ncached_max_compute.exit ], [ 0, %.preheader22 ] ; 4 uses
  %i.aw = icmp samesign ugt i64 %indvars.iv, 38
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ax = load i32, ptr @je_opt_tcache_nslots_large, align 4, !tbaa !7
  br label %tcache_ncached_max_compute.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !77 ; 2 uses
  %i.bb = load i32, ptr @je_opt_tcache_nslots_small_min, align 4, !tbaa !7 ; 2 uses
  %i.bc = load i32, ptr @je_opt_tcache_nslots_small_max, align 4, !tbaa !7
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 8191)
  %i.bd = and i32 %i.bb, 1
  %spec.select.i = add i32 %i.bd, %i.bb           ; 2 uses
  %.025.i = and i32 %spec.store.select.i, 8190    ; 2 uses
  %spec.store.select2.i = tail call i32 @llvm.umax.i32(i32 %.025.i, i32 2) ; 2 uses
  %i.be = icmp ugt i32 %spec.select.i, %spec.store.select2.i
  %minmaxop.i = select i1 %i.be, i32 %.025.i, i32 %spec.select.i
  %.127.i = tail call i32 @llvm.umax.i32(i32 %minmaxop.i, i32 2) ; 2 uses
  %i.bf = load i64, ptr @je_opt_lg_tcache_nslots_mul, align 8, !tbaa !12 ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 0
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bi = sub i32 0, %i.bh
  %i.bj = lshr i32 %i.ba, %i.bi
  %i.bk = shl i32 %i.ba, %i.bh
  %.0.i19 = select i1 %i.bg, i32 %i.bj, i32 %i.bk ; 2 uses
  %i.bl = and i32 %.0.i19, 1
  %.1.i = add i32 %i.bl, %.0.i19                  ; 2 uses
  %.not35.i = icmp ugt i32 %.1.i, %.127.i
  %spec.store.select2..1.i = tail call i32 @llvm.umin.i32(i32 %.1.i, i32 %spec.store.select2.i)
  %.028.i = select i1 %.not35.i, i32 %spec.store.select2..1.i, i32 %.127.i
  br label %tcache_ncached_max_compute.exit

tcache_ncached_max_compute.exit:                  ; preds = %bb.i, %bb.j
  %.129.i = phi i32 [ %i.ax, %bb.i ], [ %.028.i, %bb.j ]
  %i.bm = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = trunc i32 %.129.i to i16
  tail call void @je_cache_bin_info_init(ptr noundef %i.bn, i16 noundef zeroext %i.bo) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr @je_nhbins, align 4, !tbaa !7 ; 4 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph, label %.preheader, !llvm.loop !150

._crit_edge.loopexit:                             ; preds = %.lr.ph25
  %.pre = load i32, ptr @je_nhbins, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %.preheader ]
  %i.bt = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  tail call void @je_cache_bin_info_compute_alloc(ptr noundef %i.bt, i32 noundef %i.bs, ptr noundef nonnull @tcache_bin_alloc_size, ptr noundef nonnull @tcache_bin_alloc_alignment) #13
  br label %bb.k

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.lr.ph25
  %indvars.iv29 = phi i64 [ %i.av, %.lr.ph25.preheader ], [ %indvars.iv.next30, %.lr.ph25 ] ; 2 uses
  %i.bu = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv29
  tail call void @je_cache_bin_info_init(ptr noundef %i.bv, i16 noundef zeroext 0) #13
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.bw = and i64 %indvars.iv.next30, 4294967295
  %exitcond.not = icmp eq i64 %i.bw, 39
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph25, !llvm.loop !151

bb.k:                                             ; preds = %._crit_edge, %bb.h, %sz_size2index.exit
  %.1 = phi i1 [ true, %sz_size2index.exit ], [ true, %bb.h ], [ false, %._crit_edge ]
  ret i1 %.1
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @je_cache_bin_info_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @je_cache_bin_info_compute_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #13
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
end_hunk_0
