inline.NumInlined: 852
inline.NumDeleted: 45
begin_hunk_0_@thread_allocated_ctl:bb.a
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.e, ptr %3, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_allocatedp_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !159
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_deallocated_ctl(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !11
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.h, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.e, ptr %3, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_deallocatedp_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !159
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @thread_idle_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_flush(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i32, ptr @je_opt_narenas, align 4, !tbaa !7
  %i.h = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.i = shl i32 %i.h, 1
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc ptr @arena_choose(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i1 noundef zeroext false, i1 noundef zeroext true) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %arena_choose_impl.exit, !prof !158

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_choose_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.j, !prof !158

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 7 uses
  %i.k = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not43.i = icmp eq ptr %i.p, %i.j
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.037.i = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.j
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val47.i = load i32, ptr %i.s, align 8, !tbaa !116
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.037.val47.i, %.0.i.i
  br i1 %i.y, label %bb.k, label %arena_choose_impl.exit

bb.k:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !168
  %.not44.i = icmp eq ptr %i.aa, %0
  br i1 %.not44.i, label %arena_choose_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i32 @sched_getcpu() #15       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.m, %bb.l
  %.0.i46.i = phi i32 [ %i.ab, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !116
  %.not45.i = icmp eq i32 %.037.val.i, %.0.i46.i
  br i1 %.not45.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !64  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !116
  %.not.i49.i = icmp eq i32 %.val.i.i, %.0.i46.i
  br i1 %.not.i49.i, label %percpu_arena_update.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = zext i32 %.0.i46.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %arena_get.exit.i.i, !prof !158

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i46.i, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.p, %bb.o
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef %.0.i18.i.i) #15
  %i.ap = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %percpu_arena_update.exit.i

bb.q:                                             ; preds = %arena_get.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ar, ptr noundef %.0.i18.i.i) #15
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.q, %arena_get.exit.i.i, %bb.n
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.at, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.au, align 8, !tbaa !168
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.b, %bb.c, %bb.j, %percpu_arena_ind_limit.exit.i, %bb.k, %bb.r
  %.0.i = phi ptr [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.j ], [ %.1.i, %bb.r ], [ %.037.i, %bb.k ], [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_tcache_enabled_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53 ; 3 uses
  %i.b = trunc nuw i8 %.val to i1
  store i8 %.val, ptr %i.a, align 1, !tbaa !115
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not24 = icmp eq i64 %6, 1
  br i1 %.not24, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %5, align 1, !tbaa !115, !range !52, !noundef !53 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %.not.i = xor i1 %i.b, true                     ; 2 uses
  %or.cond.i = and i1 %.not.i, %i.d
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @je_tsd_tcache_data_init(ptr noundef nonnull %0) #15 ; 0 uses
  br label %tcache_enabled_set.exit

bb.e:                                             ; preds = %bb.c
  %or.cond4.i = or i1 %.not.i, %i.d
  br i1 %or.cond4.i, label %tcache_enabled_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @je_tcache_cleanup(ptr noundef nonnull %0) #15
  br label %tcache_enabled_set.exit

tcache_enabled_set.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  store i8 %i.c, ptr %0, align 1, !tbaa !115
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %tcache_enabled_set.exit
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.h = load i64, ptr %4, align 8, !tbaa !11
  switch i64 %i.h, label %bb.j [
    i64 1, label %bb.k
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.i = phi i64 [ 0, %bb.i ], [ 1, %bb.h ]       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %i.a, i64 %i.i, i1 false)
  store i64 %i.i, ptr %4, align 8, !tbaa !11
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i8 %.val, ptr %3, align 1, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.b, %bb.k, %bb.g
  %.019 = phi i32 [ 22, %bb.b ], [ 22, %bb.j ], [ 0, %bb.k ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @thread_tcache_flush_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %3, null
  %i.d = icmp ne ptr %4, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.e
  %i.f = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.f
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_flush(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 14, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare zeroext i1 @je_tsd_tcache_data_init(ptr noundef) local_unnamed_addr #2

declare void @je_tcache_cleanup(ptr noundef) local_unnamed_addr #2

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #2

declare void @je_tcache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_peak_read_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_peak_event_update(ptr noundef %0) #15
  %i.d = tail call i64 @je_peak_event_max(ptr noundef %0) #15 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.d, ptr %3, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.020 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @thread_peak_reset_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_peak_event_zero(ptr noundef %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @je_peak_event_update(ptr noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@stats_background_thread_num_runs_ctl:bb.a

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.l, ptr %3, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %malloc_mutex_lock.exit, %bb.g
  %.020 = phi i32 [ 1, %malloc_mutex_lock.exit ], [ 22, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @stats_background_thread_run_interval_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %5, null
  %i.i = icmp ne i64 %6, 0
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load ptr, ptr @ctl_stats, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = tail call i64 @je_nstime_ns(ptr noundef nonnull %i.k) #15 ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !11
  %i.m = icmp ne ptr %3, null
  %i.n = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.m, %i.n
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.o, 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.l, ptr %3, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %malloc_mutex_lock.exit, %bb.g
  %.020 = phi i32 [ 1, %malloc_mutex_lock.exit ], [ 22, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.020
}

declare i64 @je_nstime_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @stats_mutexes_reset_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4, ptr readnone captures(none) %5, i64 %6) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15
  %.not.i84 = icmp eq i32 %i.h, 0
  br i1 %.not.i84, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_background_thread_lock) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %.not.i.i85 = icmp eq ptr %i.k, %0
  br i1 %.not.i.i85, label %malloc_mutex_lock.exit86, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit86

malloc_mutex_lock.exit86:                         ; preds = %bb.f, %bb.g
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull @je_background_thread_lock) #15
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15 ; 0 uses
  %i.o = tail call i32 @je_narenas_total_get() #15 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge123, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %malloc_mutex_lock.exit86
  %wide.trip.count = zext i32 %i.o to i64
  br label %.lr.ph122

._crit_edge123:                                   ; preds = %arena_get.exit.thread, %malloc_mutex_lock.exit86
  ret i32 0

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %arena_get.exit.thread
  %indvars.iv129 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next130, %arena_get.exit.thread ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv129
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 59 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %arena_get.exit.thread, label %arena_get.exit, !prof !158

arena_get.exit:                                   ; preds = %.lr.ph122
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 10536 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 10600 ; 2 uses
  %i.u = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.t) #15
  %.not.i87 = icmp eq i32 %i.u, 0
  br i1 %.not.i87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %arena_get.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.s) #15
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 10640
  store atomic i8 1, ptr %i.v monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %arena_get.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 10592 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 10584 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %.not.i.i88 = icmp eq ptr %i.aa, %0
  br i1 %.not.i.i88, label %malloc_mutex_lock.exit89, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 10576 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit89

malloc_mutex_lock.exit89:                         ; preds = %bb.i, %bb.j
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.s) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10640
  store atomic i8 0, ptr %i.ae monotonic, align 1
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.t) #15 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 78768 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 78832 ; 2 uses
  %i.ai = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ah) #15
  %.not.i90 = icmp eq i32 %i.ai, 0
  br i1 %.not.i90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %malloc_mutex_lock.exit89
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ag) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 78872
  store atomic i8 1, ptr %i.aj monotonic, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %malloc_mutex_lock.exit89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 78824 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 78816 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %.not.i.i91 = icmp eq ptr %i.ao, %0
  br i1 %.not.i.i91, label %malloc_mutex_lock.exit92, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 78808 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit92

malloc_mutex_lock.exit92:                         ; preds = %bb.l, %bb.m
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.ag) #15
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 78872
  store atomic i8 0, ptr %i.as monotonic, align 1
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #15 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 10728 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 10792 ; 2 uses
  %i.aw = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.av) #15
  %.not.i93 = icmp eq i32 %i.aw, 0
  br i1 %.not.i93, label %bb.o, label %bb.n

bb.n:                                             ; preds = %malloc_mutex_lock.exit92
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.au) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 10832
  store atomic i8 1, ptr %i.ax monotonic, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %malloc_mutex_lock.exit92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 10784 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 10776 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %.not.i.i94 = icmp eq ptr %i.bc, %0
  br i1 %.not.i.i94, label %malloc_mutex_lock.exit95, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %0, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 10768 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit95

malloc_mutex_lock.exit95:                         ; preds = %bb.o, %bb.p
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.au) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 10832
  store atomic i8 0, ptr %i.bg monotonic, align 1
  %i.bh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.av) #15 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 30168 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 30232 ; 2 uses
  %i.bk = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bj) #15
  %.not.i96 = icmp eq i32 %i.bk, 0
  br i1 %.not.i96, label %bb.r, label %bb.q

bb.q:                                             ; preds = %malloc_mutex_lock.exit95
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bi) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 30272
  store atomic i8 1, ptr %i.bl monotonic, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_lock.exit95
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 30224 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !22
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 30216 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27
  %.not.i.i97 = icmp eq ptr %i.bq, %0
  br i1 %.not.i.i97, label %malloc_mutex_lock.exit98, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %0, ptr %i.bp, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 30208 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit98

malloc_mutex_lock.exit98:                         ; preds = %bb.r, %bb.s
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.bi) #15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 30272
  store atomic i8 0, ptr %i.bu monotonic, align 1
  %i.bv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bj) #15 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 49608 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 49672 ; 2 uses
  %i.by = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bx) #15
  %.not.i99 = icmp eq i32 %i.by, 0
  br i1 %.not.i99, label %bb.u, label %bb.t

bb.t:                                             ; preds = %malloc_mutex_lock.exit98
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bw) #15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 49712
  store atomic i8 1, ptr %i.bz monotonic, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %malloc_mutex_lock.exit98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 49664 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !22
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 49656 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27
  %.not.i.i100 = icmp eq ptr %i.ce, %0
  br i1 %.not.i.i100, label %malloc_mutex_lock.exit101, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %0, ptr %i.cd, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 49648 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit101

malloc_mutex_lock.exit101:                        ; preds = %bb.u, %bb.v
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.bw) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 49712
  store atomic i8 0, ptr %i.ci monotonic, align 1
  %i.cj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bx) #15 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 69320 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 69384 ; 2 uses
  %i.cm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cl) #15
  %.not.i102 = icmp eq i32 %i.cm, 0
  br i1 %.not.i102, label %bb.x, label %bb.w

bb.w:                                             ; preds = %malloc_mutex_lock.exit101
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ck) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 69424
  store atomic i8 1, ptr %i.cn monotonic, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %malloc_mutex_lock.exit101
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 69376 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 69368 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !27
  %.not.i.i103 = icmp eq ptr %i.cs, %0
  br i1 %.not.i.i103, label %malloc_mutex_lock.exit104, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %0, ptr %i.cr, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 69360 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit104

malloc_mutex_lock.exit104:                        ; preds = %bb.x, %bb.y
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.ck) #15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 69424
  store atomic i8 0, ptr %i.cw monotonic, align 1
  %i.cx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cl) #15 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 71104 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 71168 ; 2 uses
  %i.da = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cz) #15
  %.not.i105 = icmp eq i32 %i.da, 0
  br i1 %.not.i105, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %malloc_mutex_lock.exit104
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.cy) #15
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 71208
  store atomic i8 1, ptr %i.db monotonic, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %malloc_mutex_lock.exit104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 71160 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 71152 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !27
  %.not.i.i106 = icmp eq ptr %i.dg, %0
  br i1 %.not.i.i106, label %malloc_mutex_lock.exit107, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %0, ptr %i.df, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 71144 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit107

malloc_mutex_lock.exit107:                        ; preds = %bb.aa, %bb.ab
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.cy) #15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 71208
  store atomic i8 0, ptr %i.dk monotonic, align 1
  %i.dl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cz) #15 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 10408 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 10472 ; 2 uses
  %i.do = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dn) #15
  %.not.i108 = icmp eq i32 %i.do, 0
  br i1 %.not.i108, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %malloc_mutex_lock.exit107
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.dm) #15
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 10512
  store atomic i8 1, ptr %i.dp monotonic, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %malloc_mutex_lock.exit107
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 10464 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 10456 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !27
  %.not.i.i109 = icmp eq ptr %i.du, %0
  br i1 %.not.i.i109, label %malloc_mutex_lock.exit110, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %0, ptr %i.dt, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 10448 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !28
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit110

malloc_mutex_lock.exit110:                        ; preds = %bb.ad, %bb.ae
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.dm) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 10512
  store atomic i8 0, ptr %i.dy monotonic, align 1
  %i.dz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dn) #15 ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 78936 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !217 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  %i.ed = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ec) #15
  %.not.i111 = icmp eq i32 %i.ed, 0
  br i1 %.not.i111, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %malloc_mutex_lock.exit110
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ee) #15
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 136
  store atomic i8 1, ptr %i.ef monotonic, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %malloc_mutex_lock.exit110
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 88 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !22
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 80 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !27
  %.not.i.i112 = icmp eq ptr %i.ek, %0
  br i1 %.not.i.i112, label %malloc_mutex_lock.exit113, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %0, ptr %i.ej, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 72 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !28
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit113

malloc_mutex_lock.exit113:                        ; preds = %bb.ag, %bb.ah
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !217
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.ep) #15
  %i.eq = load ptr, ptr %i.ea, align 8, !tbaa !217 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 136
  store atomic i8 0, ptr %i.er monotonic, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.et = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.es) #15 ; 0 uses
  %i.eu = ptrtoint ptr %i.q to i64
  br label %.preheader

.preheader:                                       ; preds = %malloc_mutex_lock.exit113, %._crit_edge
  %indvars.iv126 = phi i64 [ 0, %malloc_mutex_lock.exit113 ], [ %indvars.iv.next127, %._crit_edge ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv126
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 20 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !212
  %.not124 = icmp eq i32 %i.ex, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %indvars.iv126
  br label %bb.ai

._crit_edge:                                      ; preds = %malloc_mutex_lock.exit116, %.preheader
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next127, 39
  br i1 %exitcond.not, label %arena_get.exit.thread, label %.preheader, !llvm.loop !218

bb.ai:                                            ; preds = %.lr.ph, %malloc_mutex_lock.exit116
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %malloc_mutex_lock.exit116 ] ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add i64 %i.fa, %i.eu
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw [224 x i8], ptr %i.fc, i64 %indvars.iv ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64 ; 2 uses
  %i.ff = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.fe) #15
  %.not.i114 = icmp eq i32 %i.ff, 0
  br i1 %.not.i114, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.fd) #15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  store atomic i8 1, ptr %i.fg monotonic, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 56 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !22
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !27
  %.not.i.i115 = icmp eq ptr %i.fl, %0
  br i1 %.not.i.i115, label %malloc_mutex_lock.exit116, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %0, ptr %i.fk, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !28
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit116

malloc_mutex_lock.exit116:                        ; preds = %bb.ak, %bb.al
  tail call void @je_malloc_mutex_prof_data_reset(ptr noundef %0, ptr noundef nonnull %i.fd) #15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  store atomic i8 0, ptr %i.fp monotonic, align 1
  %i.fq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fe) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fr = load i32, ptr %i.ew, align 4, !tbaa !212
  %i.fs = zext i32 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next, %i.fs
  br i1 %i.ft, label %bb.ai, label %._crit_edge, !llvm.loop !219

arena_get.exit.thread:                            ; preds = %._crit_edge, %.lr.ph122
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count
  br i1 %exitcond132.not, label %._crit_edge123, label %.lr.ph122, !llvm.loop !220
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @stats_mutexes_background_thread_num_ops_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %5, null
  %i.i = icmp ne i64 %6, 0
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load ptr, ptr @ctl_stats, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !11
  %i.m = icmp ne ptr %3, null
  %i.n = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.m, %i.n
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.o, 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.l, ptr %3, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %malloc_mutex_lock.exit, %bb.g
  %.020 = phi i32 [ 1, %malloc_mutex_lock.exit ], [ 22, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @stats_mutexes_background_thread_num_wait_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %5, null
  %i.i = icmp ne i64 %6, 0
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load ptr, ptr @ctl_stats, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load i64, ptr %i.k, align 8, !tbaa !221  ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !11
  %i.m = icmp ne ptr %3, null
  %i.n = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.m, %i.n
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.o, 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.l, ptr %3, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %malloc_mutex_lock.exit, %bb.g
  %.020 = phi i32 [ 1, %malloc_mutex_lock.exit ], [ 22, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @stats_mutexes_background_thread_num_spin_acq_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %5, null
  %i.i = icmp ne i64 %6, 0
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.j = load ptr, ptr @ctl_stats, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load i64, ptr %i.k, align 8, !tbaa !222  ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !11
  %i.m = icmp ne ptr %3, null
  %i.n = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.m, %i.n
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.o, 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_1
