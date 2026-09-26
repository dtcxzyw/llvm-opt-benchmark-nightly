Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@hostlist_nth:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not32 = icmp eq i32 %i.b, 0
  br i1 %.not32, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.b, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_nth) #23
  unreachable

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02342 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.g ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i8, ptr %i.k, align 4, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %hostrange_count.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.o, 1
  %i.s = sub i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  br label %hostrange_count.exit

hostrange_count.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.t, %bb.e ], [ 1, %bb.d ]   ; 2 uses
  %i.u = add i32 %.02342, -1
  %i.v = add i32 %i.u, %.0.i
  %.not33 = icmp sgt i32 %1, %i.v
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %hostrange_count.exit
  %i.w = sub nsw i32 %1, %.02342
  %i.x = tail call fastcc ptr @_hostrange_string(ptr noundef nonnull %i.j, i32 noundef %i.w)
  br label %.loopexit

bb.g:                                             ; preds = %hostrange_count.exit
  %i.y = add nsw i32 %.0.i, %.02342
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !28

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.f
  %.2 = phi ptr [ %i.x, %bb.f ], [ null, %.preheader ], [ null, %bb.g ]
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aa = tail call ptr @__errno_location() #22
  store i32 %i.z, ptr %i.aa, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_nth) #23
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.a
  %.027 = phi ptr [ null, %bb.a ], [ %.2, %.loopexit ]
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define dso_local void @hostlist_drop(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hostlist_drop) #21 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_drop) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !15, !noundef !16
  %i.s = trunc nuw i8 %i.r to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.s, label %hostrange_count.exit.thread, label %hostrange_count.exit

hostrange_count.exit:                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %.pre, 1
  %.not21 = icmp eq i64 %i.v, %i.u
  br i1 %.not21, label %bb.g, label %hostrange_count.exit.thread

hostrange_count.exit.thread:                      ; preds = %bb.f, %hostrange_count.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = add i64 %.pre, -1
  store i64 %i.x, ptr %i.w, align 8
  %.pre29 = load i32, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %hostrange_count.exit.thread, %hostrange_count.exit
  %i.y = phi i32 [ %.pre29, %hostrange_count.exit.thread ], [ %i.g, %hostrange_count.exit ]
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.f, align 8
  %i.aa = load i8, ptr %i.q, align 4, !range !15, !noundef !16
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.p, i64 8
  %.val = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.p, i64 16
  %.val24 = load i64, ptr %i.ad, align 8          ; 2 uses
  %i.ae = icmp uge i64 %.val24, %.val
  %i.af = icmp ne i64 %.val24, -1
  %narrow.i.not = and i1 %i.ae, %i.af
  br i1 %narrow.i.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ah = load i32, ptr %i.k, align 4
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.k, align 4
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.al, ptr %i.a, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %hostrange_destroy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @slurm_xfree(ptr noundef nonnull %i.al) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  %.pre30 = load ptr, ptr %i.i, align 8
  %.pre31 = load i32, ptr %i.k, align 4
  %.pre32 = sext i32 %.pre31 to i64
  br label %hostrange_destroy.exit

hostrange_destroy.exit:                           ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.aj, %bb.i ], [ %.pre32, %bb.j ]
  %i.an = phi ptr [ %i.ag, %bb.i ], [ %.pre30, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.pre-phi
  store ptr null, ptr %i.ao, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %hostrange_destroy.exit, %bb.e
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not23 = icmp eq i32 %i.ap, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call ptr @__errno_location() #22
  store i32 %i.ap, ptr %i.aq, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_drop) #23
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostlist_pop(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hostlist_pop) #21 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_pop) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = tail call fastcc ptr @hostrange_pop(ptr noundef %i.p) ; 2 uses
  %i.r = load i32, ptr %i.f, align 8
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.f, align 8
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %.val = load i64, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %.val25 = load i64, ptr %i.u, align 8           ; 2 uses
  %i.v = icmp uge i64 %.val25, %.val
  %i.w = icmp ne i64 %.val25, -1
  %narrow.i.not = and i1 %i.v, %i.w
  br i1 %narrow.i.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.y = load i32, ptr %i.k, align 4
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.k, align 4
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %hostrange_destroy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @slurm_xfree(ptr noundef nonnull %i.ac) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  %.pre = load ptr, ptr %i.i, align 8
  %.pre28 = load i32, ptr %i.k, align 4
  %.pre29 = sext i32 %.pre28 to i64
  br label %hostrange_destroy.exit

hostrange_destroy.exit:                           ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %i.aa, %bb.g ], [ %.pre29, %bb.h ]
  %i.ae = phi ptr [ %i.x, %bb.g ], [ %.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.pre-phi
  store ptr null, ptr %i.af, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %hostrange_destroy.exit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.q, %hostrange_destroy.exit ], [ %i.q, %bb.f ]
  %i.ag = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not24 = icmp eq i32 %i.ag, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @__errno_location() #22
  store i32 %i.ag, ptr %i.ah, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_pop) #23
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.b
  %.018 = phi ptr [ null, %bb.b ], [ %.0, %bb.i ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostlist_push(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %hostlist_create.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.b, %bb.c
  %.0.i.in.i = phi i16 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.e = tail call fastcc noundef ptr @_hostlist_create(ptr noundef nonnull readonly %1, i32 noundef %.0.i.i) ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %hostlist_create.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #21 ; 2 uses
  %.not20 = icmp eq i32 %i.g, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_push) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #21 ; 2 uses
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #22
  store i32 %i.k, ptr %i.l, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_push) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 @hostlist_push_list(ptr noundef nonnull %0, ptr noundef nonnull %i.e) ; 0 uses
  tail call void @hostlist_destroy(ptr noundef nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %hostlist_create.exit, %bb.a, %bb.h
  %.0 = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ], [ 0, %hostlist_create.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hostlist_push_host_dims(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.f = zext i16 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016 = phi i32 [ %2, %bb.b ], [ %i.f, %bb.c ]
  %i.g = tail call fastcc ptr @hostname_create_dims(ptr noundef %1, i32 noundef %.016) ; 8 uses
  %.not.i = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %hostname_suffix_is_valid.exit.thread, label %hostname_suffix_is_valid.exit

hostname_suffix_is_valid.exit:                    ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %hostname_suffix_is_valid.exit.thread, label %hostname_suffix_width.exit

hostname_suffix_width.exit:                       ; preds = %hostname_suffix_is_valid.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #24
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 6 uses
  %i.q = tail call ptr @xstrdup(ptr noundef %i.k) #21
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.m, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
end_hunk_0
begin_hunk_1_@hostlist_ranged_string_xmalloc:bb.a
; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hostlist_remove(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #22
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_remove) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %i.k, %i.n
  %i.p = tail call fastcc ptr @hostrange_delete_host(ptr noundef %i.i, i64 noundef %i.o) ; 4 uses
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.d, label %hostrange_destroy.exit

hostrange_destroy.exit:                           ; preds = %bb.c
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add nsw i32 %i.s, 1
  tail call fastcc void @hostlist_insert_range(ptr noundef %i.q, ptr noundef nonnull %i.p, i32 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.p) #21
  call void @slurm_xfree(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.r, align 8
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  store i32 %i.y, ptr %i.r, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.h, align 8
  store i32 -1, ptr %i.l, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val = load i64, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val27 = load i64, ptr %i.ae, align 8          ; 2 uses
  %i.af = icmp uge i64 %.val27, %.val
  %i.ag = icmp ne i64 %.val27, -1
  %narrow.i.not = and i1 %i.af, %i.ag
  br i1 %narrow.i.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i32, ptr %i.ai, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = sext i32 %i.aj to i64                   ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 52 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add nsw i32 %i.aq, -1                   ; 3 uses
  %i.as = icmp slt i32 %i.aj, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.e
  %.pre20.i = sext i32 %i.ar to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.am, %bb.e ] ; 2 uses
  %i.at = load ptr, ptr %i.ak, align 8            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv.next.i
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = load i32, ptr %i.ap, align 4
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.ak, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %.pre-phi21.i = phi i64 [ %.pre20.i, %.._crit_edge_crit_edge.i ], [ %i.az, %._crit_edge.loopexit.i ]
  %i.bb = phi ptr [ %i.al, %.._crit_edge_crit_edge.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.ar, %.._crit_edge_crit_edge.i ], [ %i.ay, %._crit_edge.loopexit.i ]
  store i32 %.lcssa.i, ptr %i.ap, align 4
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.pre-phi21.i
  store ptr null, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %.032.i.i = load ptr, ptr %i.bd, align 8        ; 2 uses
  %.not2933.i.i = icmp eq ptr %.032.i.i, null
  br i1 %.not2933.i.i, label %hostlist_shift_iterators.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %._crit_edge.i, %bb.j
  %.034.i.i = phi ptr [ %.0.i.i, %bb.j ], [ %.032.i.i, %._crit_edge.i ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 3 uses
  %.not30.i.i = icmp slt i32 %i.bf, %i.aj
  br i1 %.not30.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %.not31.i.i = icmp sgt i32 %i.bf, %i.aj
  br i1 %.not31.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32
  store i32 -1, ptr %i.bg, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  %.pre19.i = sext i32 %i.bh to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre19.i, %bb.h ], [ %i.am, %bb.g ]
  %.sink.i.i = phi i32 [ %i.bh, %bb.h ], [ %i.aj, %bb.g ]
  store i32 %.sink.i.i, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.pre-phi.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 24
  store ptr %i.bn, ptr %i.bo, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 40
  %.0.i.i = load ptr, ptr %i.bp, align 8          ; 2 uses
  %.not29.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not29.i.i, label %hostlist_shift_iterators.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1

hostlist_shift_iterators.exit.i:                  ; preds = %bb.j, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ao, ptr %i.a, align 8
  %i.bq = icmp eq ptr %i.ao, null
  br i1 %i.bq, label %hostlist_delete_range.exit, label %bb.k

bb.k:                                             ; preds = %hostlist_shift_iterators.exit.i
  tail call void @slurm_xfree(ptr noundef nonnull %i.ao) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostlist_delete_range.exit

hostlist_delete_range.exit:                       ; preds = %hostlist_shift_iterators.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.br = load i32, ptr %i.l, align 8
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.l, align 8
  br label %bb.m

bb.m:                                             ; preds = %hostlist_delete_range.exit, %bb.l, %hostrange_destroy.exit
  %i.bt = load ptr, ptr %i.c, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 8
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.by) #21 ; 2 uses
  %.not26 = icmp eq i32 %i.bz, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = tail call ptr @__errno_location() #22
  store i32 %i.bz, ptr %i.ca, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_remove) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostlist_shift(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @hostlist_shift_dims(ptr noundef %0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostlist_shift_dims(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hostlist_shift_dims) #21 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.d = zext i16 %i.c to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.017 = phi i32 [ %1, %bb.c ], [ %i.d, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__errno_location() #22
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_shift_dims) #23
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %hostlist_shift_iterators.exit

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = tail call fastcc ptr @hostrange_shift(ptr noundef %i.m, i32 noundef %.017) ; 3 uses
  %i.o = load i32, ptr %i.h, align 8
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.h, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val = load i64, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val27 = load i64, ptr %i.r, align 8           ; 2 uses
  %i.s = icmp uge i64 %.val27, %.val
  %i.t = icmp ne i64 %.val27, -1
  %narrow.i.not = and i1 %i.s, %i.t
  br i1 %narrow.i.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.i
  %i.z = add nsw i32 %i.x, -1                     ; 2 uses
  %.pre20.i = sext i32 %i.z to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.k, align 8             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = load i32, ptr %i.w, align 4
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %.pre-phi21.i = phi i64 [ %.pre20.i, %.._crit_edge_crit_edge.i ], [ %i.ag, %._crit_edge.loopexit.i ]
  %i.ai = phi ptr [ %i.u, %.._crit_edge_crit_edge.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.z, %.._crit_edge_crit_edge.i ], [ %i.af, %._crit_edge.loopexit.i ]
  store i32 %.lcssa.i, ptr %i.w, align 4
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.pre-phi21.i
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.032.i.i = load ptr, ptr %i.ak, align 8        ; 2 uses
  %.not2933.i.i = icmp eq ptr %.032.i.i, null
  br i1 %.not2933.i.i, label %hostlist_shift_iterators.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %._crit_edge.i, %bb.n
  %.034.i.i = phi ptr [ %.0.i.i, %bb.n ], [ %.032.i.i, %._crit_edge.i ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8            ; 3 uses
  %.not30.i.i = icmp slt i32 %i.am, 0
  br i1 %.not30.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %.not31.i.i.not = icmp eq i32 %i.am, 0
  br i1 %.not31.i.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32
  store i32 -1, ptr %i.an, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.am, -1                   ; 2 uses
  %.pre19.i = zext nneg i32 %i.ao to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %.pre19.i, %bb.l ], [ 0, %bb.k ]
  %.sink.i.i = phi i32 [ %i.ao, %bb.l ], [ 0, %bb.k ]
  store i32 %.sink.i.i, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre-phi.i
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 24
  store ptr %i.au, ptr %i.av, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 40
  %.0.i.i = load ptr, ptr %i.aw, align 8          ; 2 uses
  %.not29.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not29.i.i, label %hostlist_shift_iterators.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1

hostlist_shift_iterators.exit.i:                  ; preds = %bb.n, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8
  %i.ax = icmp eq ptr %i.v, null
  br i1 %i.ax, label %hostlist_delete_range.exit, label %bb.o

bb.o:                                             ; preds = %hostlist_shift_iterators.exit.i
  tail call void @slurm_xfree(ptr noundef nonnull %i.v) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostlist_delete_range.exit

hostlist_delete_range.exit:                       ; preds = %hostlist_shift_iterators.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %hostlist_shift_iterators.exit

bb.p:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.032.i = load ptr, ptr %i.ay, align 8          ; 2 uses
  %.not2933.i = icmp eq ptr %.032.i, null
  br i1 %.not2933.i, label %hostlist_shift_iterators.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.p, %bb.s
  %.034.us.i = phi ptr [ %.0.us.i, %bb.s ], [ %.032.i, %bb.p ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 32 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.bc, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.split.us.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.034.us.i, i64 40
  %.0.us.i = load ptr, ptr %i.bg, align 8         ; 2 uses
  %.not29.us.i = icmp eq ptr %.0.us.i, null
  br i1 %.not29.us.i, label %hostlist_shift_iterators.exit, label %.lr.ph.split.us.i, !llvm.loop !1

hostlist_shift_iterators.exit:                    ; preds = %bb.s, %bb.p, %hostlist_delete_range.exit, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ %i.n, %hostlist_delete_range.exit ], [ %i.n, %bb.p ], [ %i.n, %bb.s ]
  %i.bh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.not26 = icmp eq i32 %i.bh, 0
  br i1 %.not26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %hostlist_shift_iterators.exit
  %i.bi = tail call ptr @__errno_location() #22
  store i32 %i.bh, ptr %i.bi, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_shift_dims) #23
  unreachable

bb.u:                                             ; preds = %hostlist_shift_iterators.exit, %bb.b
  %.018 = phi ptr [ null, %bb.b ], [ %.0, %hostlist_shift_iterators.exit ]
  ret ptr %.018
}

end_hunk_1
begin_hunk_2_@hostlist_split_treewidth:bb.a
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq i16 %3, 0
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1584), align 8 ; 2 uses
  %spec.select = select i1 %.not, i16 %i.j, i16 %3 ; 4 uses
  %i.k = icmp slt i32 %i.g, 1
  br i1 %i.k, label %_set_span.exit.thread54, label %bb.f

bb.f:                                             ; preds = %hostlist_count.exit
  %.not.i41 = icmp eq i16 %spec.select, 0
  %spec.select.i = select i1 %.not.i41, i16 %i.j, i16 %spec.select ; 5 uses
  %i.l = zext i16 %spec.select.i to i32           ; 7 uses
  %.not62.i = icmp samesign ugt i32 %i.g, %i.l
  br i1 %.not62.i, label %bb.g, label %_set_span.exit.thread.thread

_set_span.exit.thread.thread:                     ; preds = %bb.f
  %i.m = trunc nuw i32 %i.g to i16
  br label %_set_span.exit.thread.thread64

bb.g:                                             ; preds = %bb.f
  %i.n = zext i16 %spec.select.i to i64           ; 7 uses
  %i.o = tail call ptr @slurm_xcalloc(i64 noundef %i.n, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2497, ptr noundef nonnull @__func__._set_span) #21 ; 9 uses
  store ptr %i.o, ptr %i.a, align 8
  %.not85.i = icmp eq i16 %spec.select.i, 0
  br i1 %.not85.i, label %.preheader.i.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %bb.g
  %min.iters.check = icmp ult i16 %spec.select.i, 4
  %n.vec = and i64 %i.n, 65532                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %bb.h
  %.04876.us.i = phi i32 [ %i.w, %bb.h ], [ %i.l, %.preheader.us.i.preheader ] ; 2 uses
  %.04975.us.i = phi i32 [ %i.v, %bb.h ], [ 1, %.preheader.us.i.preheader ] ; 3 uses
  %.05174.us.i = phi i32 [ %i.y, %bb.h ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %.05573.us.i = phi i32 [ %i.x, %bb.h ], [ %i.g, %.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.04975.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.p, align 4
  %i.q = add <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %i.q, ptr %i.p, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, %.04975.us.i
  store i32 %i.u, ptr %i.s, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !45

bb.h:                                             ; preds = %._crit_edge.us.i
  %i.v = mul i32 %.04975.us.i, %i.l
  %i.w = mul i32 %.04876.us.i, %i.l               ; 2 uses
  %.not63.us.i = icmp ugt i32 %i.w, %i.x
  br i1 %.not63.us.i, label %.split78.us.i, label %.preheader.us.i, !llvm.loop !46

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %i.x = sub nuw nsw i32 %.05573.us.i, %.04876.us.i ; 5 uses
  %i.y = add i32 %.05174.us.i, 1                  ; 2 uses
  %.not65.us.i = icmp eq i32 %i.x, 0
  br i1 %.not65.us.i, label %_set_span.exit.thread, label %bb.h

.split78.us.i:                                    ; preds = %bb.h
  %i.z = udiv i32 %i.x, %i.l                      ; 3 uses
  %.recomposed = urem i32 %i.x, %i.l              ; 5 uses
  %min.iters.check117 = icmp ult i16 %spec.select.i, 4
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %.split78.us.i
  %n.vec119 = and i64 %i.n, 65532                 ; 3 uses
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next125, %vector.body122 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index123 ; 2 uses
  %wide.load124 = load <4 x i32>, ptr %i.aa, align 4
  %i.ab = add <4 x i32> %wide.load124, %broadcast.splat121
  store <4 x i32> %i.ab, ptr %i.aa, align 4
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.ac, label %middle.block126, label %vector.body122, !llvm.loop !47

middle.block126:                                  ; preds = %vector.body122
  %cmp.n127 = icmp eq i64 %n.vec119, %i.n
  br i1 %cmp.n127, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.split78.us.i, %middle.block126
  %indvars.iv96.i.ph = phi i64 [ 0, %.split78.us.i ], [ %n.vec119, %middle.block126 ]
  br label %scalar.ph116

.loopexit:                                        ; preds = %scalar.ph116, %middle.block126
  %i.ad = mul i32 %i.z, %i.l                      ; 0 uses
  %.not6482.i = icmp eq i32 %.recomposed, 0
  br i1 %.not6482.i, label %_set_span.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.ae = zext i32 %.recomposed to i64            ; 2 uses
  %min.iters.check130 = icmp ult i32 %.recomposed, 4
  br i1 %min.iters.check130, label %.lr.ph.i.preheader141, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.preheader
  %n.vec132 = and i64 %i.ae, 4294967292           ; 4 uses
  %i.af = trunc nuw i64 %n.vec132 to i32
  %i.ag = sub i32 %.recomposed, %i.af
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index134 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %i.ah, align 4
  %i.ai = add nsw <4 x i32> %wide.load135, splat (i32 1)
  store <4 x i32> %i.ai, ptr %i.ah, align 4
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.aj, label %middle.block137, label %vector.body133, !llvm.loop !48

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %n.vec132, %i.ae
  br i1 %cmp.n138, label %_set_span.exit, label %.lr.ph.i.preheader141

.lr.ph.i.preheader141:                            ; preds = %.lr.ph.i.preheader, %middle.block137
  %indvars.iv101.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec132, %middle.block137 ]
  %.15683.i.ph = phi i32 [ %.recomposed, %.lr.ph.i.preheader ], [ %i.ag, %middle.block137 ]
  br label %.lr.ph.i

scalar.ph116:                                     ; preds = %scalar.ph116.preheader, %scalar.ph116
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %scalar.ph116 ], [ %indvars.iv96.i.ph, %scalar.ph116.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv96.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, %i.z
  store i32 %i.am, ptr %i.ak, align 4
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %i.n
  br i1 %exitcond100.not.i, label %.loopexit, label %scalar.ph116, !llvm.loop !49

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader141, %.lr.ph.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph.i ], [ %indvars.iv101.i.ph, %.lr.ph.i.preheader141 ] ; 2 uses
  %.15683.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.15683.i.ph, %.lr.ph.i.preheader141 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv101.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1
  %i.aq = add nsw i32 %.15683.i, -1               ; 2 uses
  %.not64.i = icmp eq i32 %i.aq, 0
  br i1 %.not64.i, label %_set_span.exit, label %.lr.ph.i, !llvm.loop !50

.preheader.i.preheader:                           ; preds = %bb.g, %.preheader.i.preheader
  br label %.preheader.i.preheader

_set_span.exit:                                   ; preds = %.lr.ph.i, %middle.block137, %.loopexit
  %i.ar = add nuw nsw i32 %.05174.us.i, 2
  br label %_set_span.exit.thread.thread64

_set_span.exit.thread:                            ; preds = %._crit_edge.us.i
  %i.as = icmp eq i32 %.05174.us.i, 0
  %i.at = trunc i32 %i.g to i16
  %spec.select69 = select i1 %i.as, i16 %i.at, i16 %spec.select
  br label %_set_span.exit.thread.thread64

_set_span.exit.thread.thread64:                   ; preds = %_set_span.exit, %_set_span.exit.thread, %_set_span.exit.thread.thread
  %i.au = phi ptr [ %i.o, %_set_span.exit ], [ %i.o, %_set_span.exit.thread ], [ null, %_set_span.exit.thread.thread ] ; 3 uses
  %.053.i5262 = phi i32 [ %i.ar, %_set_span.exit ], [ %i.y, %_set_span.exit.thread ], [ 1, %_set_span.exit.thread.thread ]
  %i.av = phi i16 [ %spec.select, %_set_span.exit ], [ %spec.select69, %_set_span.exit.thread ], [ %i.m, %_set_span.exit.thread.thread ] ; 3 uses
  %i.aw = zext i16 %i.av to i64
  %i.ax = tail call ptr @slurm_xcalloc(i64 noundef %i.aw, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2566, ptr noundef nonnull @__func__.hostlist_split_treewidth) #21
  store ptr %i.ax, ptr %1, align 8
  %i.ay = zext i16 %i.av to i32
  store i32 0, ptr %2, align 4
  %.not84 = icmp eq i16 %i.av, 0
  br i1 %.not84, label %.critedge, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %_set_span.exit.thread.thread64
  %.not38 = icmp eq ptr %i.au, null
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.o
  %i.az = phi ptr [ %i.au, %.lr.ph82.preheader ], [ %i.bo, %bb.o ] ; 2 uses
  %i.ba = call ptr @hostlist_shift_dims(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %.not37 = icmp eq ptr %i.ba, null
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph82
  %i.bb = call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i, label %bb.j, label %hostlist_create.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.i, %bb.j
  %.0.i.in.i = phi i16 [ %i.bb, %bb.i ], [ %i.bc, %bb.j ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.bd = call fastcc noundef ptr @_hostlist_create(ptr noundef nonnull readonly %i.ba, i32 noundef %.0.i.i)
  %i.be = load ptr, ptr %1, align 8
  %i.bf = load i32, ptr %2, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bg
  store ptr %i.bd, ptr %i.bh, align 8
  call void @free(ptr noundef nonnull %i.ba) #21
  %.not3879 = icmp eq ptr %i.az, null
  br i1 %.not3879, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %hostlist_create.exit, %bb.k
  %i.bi = phi ptr [ %i.au, %bb.k ], [ %i.az, %hostlist_create.exit ] ; 2 uses
  %.080 = phi i32 [ %i.ca, %bb.k ], [ 1, %hostlist_create.exit ] ; 2 uses
  %i.bj = load i32, ptr %2, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp slt i32 %.080, %i.bm
  br i1 %i.bn, label %bb.k, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %bb.k, %hostlist_create.exit
  %i.bo = phi ptr [ null, %hostlist_create.exit ], [ %i.bi, %.lr.ph ], [ null, %bb.k ]
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bq = and i64 %i.bp, 536870912
  %.not39 = icmp eq i64 %i.bq, 0
  %.pre94 = load i32, ptr %2, align 4             ; 2 uses
  br i1 %.not39, label %bb.o, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.br = call ptr @hostlist_shift_dims(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = load i32, ptr %2, align 4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.by = zext i16 %i.bx to i32
  %i.bz = call range(i32 0, 2) i32 @hostlist_push_host_dims(ptr noundef %i.bw, ptr noundef %i.br, i32 noundef %i.by) ; 0 uses
  call void @free(ptr noundef %i.br) #21
  %i.ca = add nuw nsw i32 %.080, 1
  br i1 %.not38, label %.critedge2, label %.lr.ph, !llvm.loop !51

bb.l:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = sext i32 %.pre94 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.cg = zext i16 %i.cf to i32
  %i.ch = call ptr @hostlist_ranged_string_xmalloc_dims(ptr noundef %i.ce, i32 noundef %i.cg, i32 noundef 1)
  store ptr %i.ch, ptr %i.b, align 8
  %i.ci = call i32 @get_log_level() #21
  %i.cj = icmp sgt i32 %i.ci, 4
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = load i32, ptr %2, align 4
  %i.cl = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %i.ck, ptr noundef %i.cl) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @slurm_xfree(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.pre = load i32, ptr %2, align 4
  br label %bb.o

bb.o:                                             ; preds = %.critedge2, %bb.n
  %i.cm = phi i32 [ %.pre94, %.critedge2 ], [ %.pre, %bb.n ]
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  store i32 %i.cn, ptr %2, align 4
  %i.co = icmp slt i32 %i.cn, %i.ay
  br i1 %i.co, label %.lr.ph82, label %.critedge, !llvm.loop !52

.critedge:                                        ; preds = %.lr.ph82, %bb.o, %_set_span.exit.thread.thread64
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %_set_span.exit.thread54

_set_span.exit.thread54:                          ; preds = %hostlist_count.exit, %hostlist_count.exit.thread, %.critedge
  %.032 = phi i32 [ %.053.i5262, %.critedge ], [ -1, %hostlist_count.exit ], [ -1, %hostlist_count.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostlist_cmp_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc i32 @hostrange_cmp(ptr noundef %i.c, ptr noundef %i.f)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @hostlist_uniq(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext nneg i32 %i.e to i64
  tail call void @qsort(ptr noundef %i.j, i64 noundef %i.k, i64 noundef 8, ptr noundef nonnull @_cmp) #21
  %i.l = load i32, ptr %i.d, align 4
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.02028 = phi i32 [ %spec.select, %.lr.ph ], [ 1, %bb.f ] ; 2 uses
  %i.n = tail call fastcc i32 @_attempt_range_join(ptr noundef nonnull %0, i32 noundef %.02028)
  %i.o = lshr i32 %i.n, 31
  %spec.select = add nuw nsw i32 %i.o, %.02028    ; 2 uses
  %i.p = load i32, ptr %i.d, align 4
  %i.q = icmp slt i32 %spec.select, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.029 = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not2530 = icmp eq ptr %.029, null
  br i1 %.not2530, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge, %.lr.ph33
  %.031 = phi ptr [ %.0, %.lr.ph33 ], [ %.029, %._crit_edge ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.031, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.031, i64 24
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 32
  store i32 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %.0 = load ptr, ptr %i.aa, align 8              ; 2 uses
  %.not25 = icmp eq ptr %.0, null
  br i1 %.not25, label %._crit_edge34, label %.lr.ph33, !llvm.loop !54

._crit_edge34:                                    ; preds = %.lr.ph33, %._crit_edge
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge34
  %i.ac = tail call ptr @__errno_location() #22
  store i32 %i.ab, ptr %i.ac, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.h:                                             ; preds = %._crit_edge34, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostset_count(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %hostlist_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #21 ; 2 uses
  %.not12.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #22
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #21 ; 2 uses
  %.not13.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i, label %hostlist_count.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

hostlist_count.exit:                              ; preds = %bb.a, %bb.d
  %.0.i = phi i32 [ -1, %bb.a ], [ %i.f, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_create(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 3368, ptr noundef nonnull @__func__.hostset_create) #21 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
end_hunk_2
begin_hunk_3_@hostset_insert:bb.a
  %i.cu = load i32, ptr %i.r, align 4
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = icmp slt i64 %indvars.iv.next.i.i, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.aj, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.._crit_edge_crit_edge.i.i
  %.pre-phi21.i.i = phi i64 [ %.pre20.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.cw, %._crit_edge.loopexit.i.i ]
  %i.cy = phi ptr [ %i.ck, %.._crit_edge_crit_edge.i.i ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi i32 [ %i.co, %.._crit_edge_crit_edge.i.i ], [ %i.cv, %._crit_edge.loopexit.i.i ]
  store i32 %.lcssa.i.i, ptr %i.r, align 4
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %.pre-phi21.i.i
  store ptr null, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.032.i.i.i = load ptr, ptr %i.da, align 8      ; 2 uses
  %.not2933.i.i.i = icmp eq ptr %.032.i.i.i, null
  br i1 %.not2933.i.i.i, label %hostlist_shift_iterators.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %._crit_edge.i.i, %bb.u
  %.034.i.i.i = phi ptr [ %.0.i.i.i, %bb.u ], [ %.032.i.i.i, %._crit_edge.i.i ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 16 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8            ; 3 uses
  %.not30.i.i.i = icmp slt i32 %i.dc, %i.ch
  br i1 %.not30.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i.i.i
  %.not31.i.i.i = icmp sgt i32 %i.dc, %i.ch
  br i1 %.not31.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 32
  store i32 -1, ptr %i.dd, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.de = add nsw i32 %i.dc, -1                   ; 2 uses
  %.pre19.i.i = sext i32 %i.de to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi.i.i = phi i64 [ %.pre19.i.i, %bb.s ], [ %indvars.iv.i, %bb.r ]
  %.sink.i.i.i = phi i32 [ %i.de, %bb.s ], [ %i.ch, %bb.r ]
  store i32 %.sink.i.i.i, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.pre-phi.i.i
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 24
  store ptr %i.dk, ptr %i.dl, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 40
  %.0.i.i.i = load ptr, ptr %i.dm, align 8        ; 2 uses
  %.not29.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not29.i.i.i, label %hostlist_shift_iterators.exit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !1

hostlist_shift_iterators.exit.i.i:                ; preds = %bb.u, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cm, ptr %i.a, align 8
  %i.dn = icmp eq ptr %i.cm, null
  br i1 %i.dn, label %hostlist_delete_range.exit.i, label %bb.v

bb.v:                                             ; preds = %hostlist_shift_iterators.exit.i.i
  call void @slurm_xfree(ptr noundef nonnull %i.cm) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostlist_delete_range.exit.i

hostlist_delete_range.exit.i:                     ; preds = %bb.v, %hostlist_shift_iterators.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %hostlist_delete_range.exit.i, %hostrange_cmp.exit.thread
  %.0.i = phi i32 [ %i.ci, %hostlist_delete_range.exit.i ], [ 0, %hostrange_cmp.exit.thread ] ; 2 uses
  call fastcc void @hostlist_insert_range(ptr noundef %.val, ptr noundef nonnull %i.o, i32 noundef %i.ch)
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = call fastcc i32 @_attempt_range_join(ptr noundef %.val, i32 noundef %i.ch)
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %spec.select.i = add nuw nsw i32 %i.dp, %.0.i
  br label %bb.y

hostrange_cmp.exit.thread29:                      ; preds = %hostrange_cmp.exit
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = load i32, ptr %i.r, align 4
  %i.dr = sext i32 %i.dq to i64
  %.not44.i = icmp slt i64 %indvars.iv.next.i, %i.dr
  br i1 %.not44.i, label %.lr.ph.i.split, label %.thread.loopexit.i.split, !llvm.loop !55

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.i = phi i32 [ %spec.select.i, %bb.x ], [ %.0.i, %bb.w ] ; 2 uses
  %i.ds = sub i32 %.0.i.i25, %.2.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = add nsw i32 %i.ds, %i.du
  store i32 %i.dv, ptr %i.dt, align 8
  br label %hostset_insert_range.exit

.thread.loopexit.i.split:                         ; preds = %hostrange_cmp.exit.thread29
  %.pre.i.pre = load i8, ptr %i.y, align 4, !range !15
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i.split, %hostrange_count.exit.i
  %i.dw = phi i8 [ %.pre.i.pre, %.thread.loopexit.i.split ], [ %i.z, %hostrange_count.exit.i ]
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = load ptr, ptr %i.o, align 8             ; 2 uses
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread.i
  %i.dz = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 4 uses
  %i.ea = call ptr @xstrdup(ptr noundef %i.dy) #21
  store ptr %i.ea, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  store i8 1, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false)
  br label %hostrange_copy.exit.i

bb.aa:                                            ; preds = %.thread.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = load <2 x i64>, ptr %i.ed, align 8
  %i.eh = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 5 uses
  %i.ei = call ptr @xstrdup(ptr noundef %i.dy) #21
  store ptr %i.ei, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store <2 x i64> %i.eg, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i32 %i.ef, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  store i8 0, ptr %i.el, align 4
  br label %hostrange_copy.exit.i

hostrange_copy.exit.i:                            ; preds = %bb.aa, %bb.z
  %.0.i45.i = phi ptr [ %i.dz, %bb.z ], [ %i.eh, %bb.aa ]
  %i.em = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.r, align 4
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eq
  store ptr %.0.i45.i, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = add nsw i32 %i.et, %.0.i.i25
  store i32 %i.eu, ptr %i.es, align 8
  %i.ev = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.ab, label %hostset_insert_range.exit

bb.ab:                                            ; preds = %hostrange_copy.exit.i
  %i.ex = add nsw i32 %i.ev, -1
  %i.ey = call fastcc i32 @_attempt_range_join(ptr noundef nonnull %.val, i32 noundef %i.ex)
  %spec.store.select1.i = call i32 @llvm.smax.i32(i32 %i.ey, i32 0)
  br label %hostset_insert_range.exit

hostset_insert_range.exit:                        ; preds = %bb.y, %hostrange_copy.exit.i, %bb.ab
  %.4.i = phi i32 [ %spec.store.select1.i, %bb.ab ], [ 0, %hostrange_copy.exit.i ], [ %.2.i, %bb.y ]
  %i.ez = add i32 %.0.i.i25, %.039
  %i.fa = sub i32 %i.ez, %.4.i                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = load i32, ptr %i.h, align 4
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.e, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %hostset_insert_range.exit, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.fa, %hostset_insert_range.exit ]
  %i.fe = load ptr, ptr %0, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ff) #21 ; 2 uses
  %.not24 = icmp eq i32 %i.fg, 0
  br i1 %.not24, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fh = tail call ptr @__errno_location() #22
  store i32 %i.fg, ptr %i.fh, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostset_insert) #23
  unreachable

bb.ad:                                            ; preds = %._crit_edge
  call void @hostlist_destroy(ptr noundef nonnull %i.d)
  br label %bb.ae

bb.ae:                                            ; preds = %hostlist_create.exit, %bb.ad
  %.019 = phi i32 [ %.0.lcssa, %bb.ad ], [ 0, %hostlist_create.exit ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_shift(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @hostlist_shift_dims(ptr noundef %i.a, i32 noundef 0)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hostset_within(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %hostlist_create.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.in.i = phi i16 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.c = tail call fastcc noundef ptr @_hostlist_create(ptr noundef readonly %1, i32 noundef %.0.i.i) ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %hostlist_create.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not12.i = icmp eq i32 %i.e, 0
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #22
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %hostlist_count.exit.preheader, label %bb.f

hostlist_count.exit.preheader:                    ; preds = %bb.e
  %i.j = tail call ptr @hostlist_pop(ptr noundef nonnull %i.c) ; 2 uses
  %.not1314 = icmp eq ptr %i.j, null
  br i1 %.not1314, label %hostlist_count.exit._crit_edge, label %hostlist_count.exit

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @__errno_location() #22
  store i32 %i.i, ptr %i.k, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

hostlist_count.exit:                              ; preds = %hostlist_count.exit.preheader, %hostlist_count.exit
  %i.l = phi ptr [ %i.o, %hostlist_count.exit ], [ %i.j, %hostlist_count.exit.preheader ] ; 2 uses
  %.015 = phi i32 [ %i.n, %hostlist_count.exit ], [ 0, %hostlist_count.exit.preheader ]
  %i.m = tail call fastcc i32 @hostset_find_host(ptr noundef %0, ptr noundef %i.l)
  %i.n = add nuw nsw i32 %i.m, %.015              ; 2 uses
  tail call void @free(ptr noundef nonnull %i.l) #21
  %i.o = tail call ptr @hostlist_pop(ptr noundef nonnull %i.c) ; 2 uses
  %.not13 = icmp eq ptr %i.o, null
  br i1 %.not13, label %hostlist_count.exit._crit_edge, label %hostlist_count.exit, !llvm.loop !57

hostlist_count.exit._crit_edge:                   ; preds = %hostlist_count.exit, %hostlist_count.exit.preheader
  %.0.lcssa = phi i32 [ 0, %hostlist_count.exit.preheader ], [ %i.n, %hostlist_count.exit ]
  tail call void @hostlist_destroy(ptr noundef nonnull %i.c)
  %i.p = icmp eq i32 %i.h, %.0.lcssa
  %i.q = zext i1 %i.p to i32
  br label %bb.g

bb.g:                                             ; preds = %hostlist_create.exit, %hostlist_count.exit._crit_edge
  %.010 = phi i32 [ %i.q, %hostlist_count.exit._crit_edge ], [ 0, %hostlist_create.exit ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @hostset_nth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @hostlist_nth(ptr noundef %i.a, i32 noundef %1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hostrange_cmp(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %hostrange_prefix_cmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %hostrange_prefix_cmp.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = tail call i32 @strnatcmp(ptr noundef %i.c, ptr noundef %i.d) #21 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %hostrange_prefix_cmp.exit, label %hostrange_prefix_cmp.exit.thread

hostrange_prefix_cmp.exit:                        ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i8, ptr %i.g, align 4, !range !15, !noundef !16
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i8, ptr %i.j, align 4, !range !15, !noundef !16
  %i.l = zext nneg i8 %i.k to i32
  %i.m = sub nsw i32 %i.i, %i.l                   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %hostrange_prefix_cmp.exit.thread

bb.d:                                             ; preds = %hostrange_prefix_cmp.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.q, align 8              ; 8 uses
  %i.v = load i32, ptr %i.t, align 8              ; 8 uses
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not8.i.i.i = icmp ult i64 %i.p, 10
  br i1 %.not8.i.i.i, label %_zero_padded.exit.thread.i.i, label %.lr.ph.i.i.i

_zero_padded.exit.thread.i.i:                     ; preds = %bb.e
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  br label %_zero_padded.exit28.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi i32 [ %i.z, %.lr.ph.i.i.i ], [ 1, %bb.e ]
  %.069.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.y = udiv i64 %.069.i.i.i, 10
  %i.z = add nuw nsw i32 %.010.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp ult i64 %.069.i.i.i, 100
  br i1 %.not.i.i.i, label %.lr.ph.i23.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i.i, %.lr.ph.i23.i.i
  %.010.i24.i.i = phi i32 [ %i.ab, %.lr.ph.i23.i.i ], [ 1, %.lr.ph.i.i.i ]
  %.069.i25.i.i = phi i64 [ %i.aa, %.lr.ph.i23.i.i ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = udiv i64 %.069.i25.i.i, 10
  %i.ab = add nuw nsw i32 %.010.i24.i.i, 1        ; 2 uses
  %.not.i26.i.i = icmp ult i64 %.069.i25.i.i, 100
  br i1 %.not.i26.i.i, label %_zero_padded.exit28.loopexit.i.i, label %.lr.ph.i23.i.i, !llvm.loop !3

_zero_padded.exit28.loopexit.i.i:                 ; preds = %.lr.ph.i23.i.i
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.u)
  br label %_zero_padded.exit28.i.i

_zero_padded.exit28.i.i:                          ; preds = %_zero_padded.exit28.loopexit.i.i, %_zero_padded.exit.thread.i.i
  %.pn.i.i = phi i32 [ %i.x, %_zero_padded.exit.thread.i.i ], [ %i.ac, %_zero_padded.exit28.loopexit.i.i ]
  %.0.lcssa.i27.i.i = phi i32 [ 1, %_zero_padded.exit.thread.i.i ], [ %i.ab, %_zero_padded.exit28.loopexit.i.i ]
  %i.ad = sub nsw i32 %i.u, %.pn.i.i
  %i.ae = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i27.i.i, i32 %i.v)
  %i.af = sub nsw i32 %i.v, %i.ae
  %.not8.i29.i.i = icmp ult i64 %i.s, 10
  br i1 %.not8.i29.i.i, label %_zero_padded.exit35.thread.i.i, label %.lr.ph.i30.i.i

_zero_padded.exit35.thread.i.i:                   ; preds = %_zero_padded.exit28.i.i
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.v, i32 1)
  br label %_zero_padded.exit42.i.i

.lr.ph.i30.i.i:                                   ; preds = %_zero_padded.exit28.i.i, %.lr.ph.i30.i.i
  %.010.i31.i.i = phi i32 [ %i.ai, %.lr.ph.i30.i.i ], [ 1, %_zero_padded.exit28.i.i ]
  %.069.i32.i.i = phi i64 [ %i.ah, %.lr.ph.i30.i.i ], [ %i.s, %_zero_padded.exit28.i.i ] ; 2 uses
  %i.ah = udiv i64 %.069.i32.i.i, 10
  %i.ai = add nuw nsw i32 %.010.i31.i.i, 1        ; 2 uses
  %.not.i33.i.i = icmp ult i64 %.069.i32.i.i, 100
  br i1 %.not.i33.i.i, label %.lr.ph.i37.i.i, label %.lr.ph.i30.i.i, !llvm.loop !3

.lr.ph.i37.i.i:                                   ; preds = %.lr.ph.i30.i.i, %.lr.ph.i37.i.i
  %.010.i38.i.i = phi i32 [ %i.ak, %.lr.ph.i37.i.i ], [ 1, %.lr.ph.i30.i.i ]
  %.069.i39.i.i = phi i64 [ %i.aj, %.lr.ph.i37.i.i ], [ %i.s, %.lr.ph.i30.i.i ] ; 2 uses
  %i.aj = udiv i64 %.069.i39.i.i, 10
  %i.ak = add nuw nsw i32 %.010.i38.i.i, 1        ; 2 uses
  %.not.i40.i.i = icmp ult i64 %.069.i39.i.i, 100
  br i1 %.not.i40.i.i, label %_zero_padded.exit42.loopexit.i.i, label %.lr.ph.i37.i.i, !llvm.loop !3

_zero_padded.exit42.loopexit.i.i:                 ; preds = %.lr.ph.i37.i.i
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.v)
  br label %_zero_padded.exit42.i.i

_zero_padded.exit42.i.i:                          ; preds = %_zero_padded.exit42.loopexit.i.i, %_zero_padded.exit35.thread.i.i
  %.pn45.i.i = phi i32 [ %i.ag, %_zero_padded.exit35.thread.i.i ], [ %i.al, %_zero_padded.exit42.loopexit.i.i ]
  %.0.lcssa.i41.i.i = phi i32 [ 1, %_zero_padded.exit35.thread.i.i ], [ %i.ak, %_zero_padded.exit42.loopexit.i.i ]
  %i.am = sub nsw i32 %i.v, %.pn45.i.i
  %i.an = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i41.i.i, i32 %i.u)
  %i.ao = sub nsw i32 %i.u, %i.an
  %.not.i.i = icmp eq i32 %i.ad, %i.af            ; 2 uses
  %.not21.i.i = icmp eq i32 %i.am, %i.ao
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not21.i.i
  br i1 %or.cond.i.i, label %bb.f, label %hostrange_width_combine.exit

bb.f:                                             ; preds = %_zero_padded.exit42.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.u, ptr %i.t, align 8
  %.pre = load i64, ptr %i.o, align 8
  br label %bb.i
end_hunk_3
begin_hunk_4_@hostlist_push_range:bb.a
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.g, label %hostrange_width_combine.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = tail call i32 @strnatcmp(ptr noundef %i.ab, ptr noundef %i.ac) #21
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %hostrange_prefix_cmp.exit, label %hostrange_width_combine.exit

hostrange_prefix_cmp.exit:                        ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !range !15, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ai = load i8, ptr %i.ah, align 4, !range !15, !noundef !16
  %i.aj = icmp eq i8 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %hostrange_width_combine.exit

bb.h:                                             ; preds = %hostrange_prefix_cmp.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.x, align 8             ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 8            ; 7 uses
  %i.aq = load i32, ptr %i.ao, align 8            ; 7 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i.i = icmp ult i64 %i.al, 10
  br i1 %.not8.i.i.i, label %_zero_padded.exit.thread.i.i, label %.lr.ph.i.i.i

_zero_padded.exit.thread.i.i:                     ; preds = %bb.i
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 1)
  br label %_zero_padded.exit28.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ 1, %bb.i ]
  %.069.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.at = udiv i64 %.069.i.i.i, 10
  %i.au = add nuw nsw i32 %.010.i.i.i, 1          ; 2 uses
  %.not.i.i.i = icmp ult i64 %.069.i.i.i, 100
  br i1 %.not.i.i.i, label %.lr.ph.i23.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i.i, %.lr.ph.i23.i.i
  %.010.i24.i.i = phi i32 [ %i.aw, %.lr.ph.i23.i.i ], [ 1, %.lr.ph.i.i.i ]
  %.069.i25.i.i = phi i64 [ %i.av, %.lr.ph.i23.i.i ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %i.av = udiv i64 %.069.i25.i.i, 10
  %i.aw = add nuw nsw i32 %.010.i24.i.i, 1        ; 2 uses
  %.not.i26.i.i = icmp ult i64 %.069.i25.i.i, 100
  br i1 %.not.i26.i.i, label %_zero_padded.exit28.loopexit.i.i, label %.lr.ph.i23.i.i, !llvm.loop !3

_zero_padded.exit28.loopexit.i.i:                 ; preds = %.lr.ph.i23.i.i
  %i.ax = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ap)
  br label %_zero_padded.exit28.i.i

_zero_padded.exit28.i.i:                          ; preds = %_zero_padded.exit28.loopexit.i.i, %_zero_padded.exit.thread.i.i
  %.pn.i.i = phi i32 [ %i.as, %_zero_padded.exit.thread.i.i ], [ %i.ax, %_zero_padded.exit28.loopexit.i.i ]
  %.0.lcssa.i27.i.i = phi i32 [ 1, %_zero_padded.exit.thread.i.i ], [ %i.aw, %_zero_padded.exit28.loopexit.i.i ]
  %i.ay = sub nsw i32 %i.ap, %.pn.i.i
  %i.az = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i27.i.i, i32 %i.aq)
  %i.ba = sub nsw i32 %i.aq, %i.az
  %.not8.i29.i.i = icmp ult i64 %i.an, 10
  br i1 %.not8.i29.i.i, label %_zero_padded.exit35.thread.i.i, label %.lr.ph.i30.i.i

_zero_padded.exit35.thread.i.i:                   ; preds = %_zero_padded.exit28.i.i
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 1)
  br label %_zero_padded.exit42.i.i

.lr.ph.i30.i.i:                                   ; preds = %_zero_padded.exit28.i.i, %.lr.ph.i30.i.i
  %.010.i31.i.i = phi i32 [ %i.bd, %.lr.ph.i30.i.i ], [ 1, %_zero_padded.exit28.i.i ]
  %.069.i32.i.i = phi i64 [ %i.bc, %.lr.ph.i30.i.i ], [ %i.an, %_zero_padded.exit28.i.i ] ; 2 uses
  %i.bc = udiv i64 %.069.i32.i.i, 10
  %i.bd = add nuw nsw i32 %.010.i31.i.i, 1        ; 2 uses
  %.not.i33.i.i = icmp ult i64 %.069.i32.i.i, 100
  br i1 %.not.i33.i.i, label %.lr.ph.i37.i.i, label %.lr.ph.i30.i.i, !llvm.loop !3

.lr.ph.i37.i.i:                                   ; preds = %.lr.ph.i30.i.i, %.lr.ph.i37.i.i
  %.010.i38.i.i = phi i32 [ %i.bf, %.lr.ph.i37.i.i ], [ 1, %.lr.ph.i30.i.i ]
  %.069.i39.i.i = phi i64 [ %i.be, %.lr.ph.i37.i.i ], [ %i.an, %.lr.ph.i30.i.i ] ; 2 uses
  %i.be = udiv i64 %.069.i39.i.i, 10
  %i.bf = add nuw nsw i32 %.010.i38.i.i, 1        ; 2 uses
  %.not.i40.i.i = icmp ult i64 %.069.i39.i.i, 100
  br i1 %.not.i40.i.i, label %_zero_padded.exit42.loopexit.i.i, label %.lr.ph.i37.i.i, !llvm.loop !3

_zero_padded.exit42.loopexit.i.i:                 ; preds = %.lr.ph.i37.i.i
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.aq)
  br label %_zero_padded.exit42.i.i

_zero_padded.exit42.i.i:                          ; preds = %_zero_padded.exit42.loopexit.i.i, %_zero_padded.exit35.thread.i.i
  %.pn45.i.i = phi i32 [ %i.bb, %_zero_padded.exit35.thread.i.i ], [ %i.bg, %_zero_padded.exit42.loopexit.i.i ]
  %.0.lcssa.i41.i.i = phi i32 [ 1, %_zero_padded.exit35.thread.i.i ], [ %i.bf, %_zero_padded.exit42.loopexit.i.i ]
  %i.bh = sub nsw i32 %i.aq, %.pn45.i.i
  %i.bi = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i41.i.i, i32 %i.ap)
  %i.bj = sub nsw i32 %i.ap, %i.bi
  %.not.i.i = icmp eq i32 %i.ay, %i.ba            ; 2 uses
  %.not21.i.i = icmp eq i32 %i.bh, %i.bj
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not21.i.i
  br i1 %or.cond.i.i, label %bb.j, label %hostrange_width_combine.exit

bb.j:                                             ; preds = %_zero_padded.exit42.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.ap, ptr %i.ao, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.aq, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  store i64 %i.bl, ptr %i.v, align 8
  br label %bb.p

hostrange_width_combine.exit:                     ; preds = %bb.g, %_zero_padded.exit42.i.i, %hostrange_prefix_cmp.exit, %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bn = load i8, ptr %i.bm, align 4, !range !15, !noundef !16
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %hostrange_width_combine.exit
  %i.bq = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 4 uses
  %i.br = tail call ptr @xstrdup(ptr noundef %i.bp) #21
  store ptr %i.br, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i8 1, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bt, i8 0, i64 20, i1 false)
  br label %hostrange_copy.exit

bb.o:                                             ; preds = %hostrange_width_combine.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = load <2 x i64>, ptr %i.bu, align 8
  %i.by = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 5 uses
  %i.bz = tail call ptr @xstrdup(ptr noundef %i.bp) #21
  store ptr %i.bz, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x i64> %i.bx, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i32 %i.bw, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  store i8 0, ptr %i.cc, align 4
  br label %hostrange_copy.exit

hostrange_copy.exit:                              ; preds = %bb.n, %bb.o
  %.0.i32 = phi ptr [ %i.bq, %bb.n ], [ %i.by, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.d, align 4
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ch
  store ptr %.0.i32, ptr %i.ci, align 8
  br label %bb.p

bb.p:                                             ; preds = %hostrange_copy.exit, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ck = load i8, ptr %i.cj, align 4, !range !15, !noundef !16
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %hostrange_count.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cn, 1
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i32
  br label %hostrange_count.exit

hostrange_count.exit:                             ; preds = %bb.p, %bb.q
  %.0.i33 = phi i32 [ %i.cs, %bb.q ], [ 1, %bb.p ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add i32 %i.cu, %.0.i33                  ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not31 = icmp eq i32 %i.cw, 0
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %hostrange_count.exit
  %i.cx = tail call ptr @__errno_location() #22
  store i32 %i.cw, ptr %i.cx, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_push_range) #23
  unreachable

bb.s:                                             ; preds = %hostrange_count.exit
  ret i32 %i.cv
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hostrange_pop(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 4 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i8, ptr %i.c, align 4, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %hostrange_count.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call noalias ptr @strdup(ptr noundef %i.i) #21 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 777, ptr noundef nonnull @__func__.hostrange_pop) #21
  tail call void @abort() #23
  unreachable

hostrange_count.exit:                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.m, 1
  %.not = icmp eq i64 %i.p, %i.o
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %hostrange_count.exit
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.r, 16
  %i.w = add i64 %i.v, %i.u                       ; 4 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #25 ; 7 uses
  %.not41 = icmp eq ptr %i.x, null
  br i1 %.not41, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 781, ptr noundef nonnull @__func__.hostrange_pop) #21
  tail call void @abort() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = icmp ugt i16 %i.a, 1
  %.pre = load i32, ptr %i.s, align 8             ; 2 uses
  %i.z = icmp eq i32 %.pre, %i.b
  %or.cond56 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond56, label %.lr.ph.preheader.i, label %bb.j

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.aa = zext i16 %i.a to i64                    ; 2 uses
  %i.ab = tail call ptr @llvm.stacksave.p0()
  %i.ac = alloca i32, i64 %i.aa, align 16         ; 2 uses
  %i.ad = load i64, ptr %i.l, align 8
  %i.ae = trunc i64 %i.ad to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.ae, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.af = srem i32 %.012.i, 36
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = sdiv i32 %.012.i, 36
  %i.ai = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ai, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit, !llvm.loop !6

hostlist_parse_int_to_array.exit:                 ; preds = %.lr.ph.i
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.w, ptr noundef nonnull @.str.13, ptr noundef %i.aj) #21 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, -1
  %i.am = add nuw nsw i32 %i.ak, %i.b
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = icmp ugt i64 %i.w, %i.an
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %hostlist_parse_int_to_array.exit
  %i.ap = load ptr, ptr @alpha_num, align 8
  %i.aq = zext nneg i32 %i.ak to i64
  %wide.trip.count = zext i16 %i.a to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %indvars.iv46 = phi i64 [ %i.aq, %.preheader ], [ %indvars.iv.next47, %bb.g ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv46
  store i8 %i.av, ptr %i.aw, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.g, !llvm.loop !65

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next47
  store i8 0, ptr %i.ax, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %hostlist_parse_int_to_array.exit
  %i.ay = load i64, ptr %i.l, align 8
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.l, align 8
  call void @llvm.stackrestore.p0(ptr %i.ab)
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ba = add i64 %i.m, -1
  store i64 %i.ba, ptr %i.l, align 8
  %i.bb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.x, i64 noundef %i.w, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.q, i32 noundef %.pre, i64 noundef %i.m) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %hostrange_count.exit, %bb.j, %bb.i, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ null, %hostrange_count.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hostrange_shift(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.b = zext i16 %i.a to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.b, %bb.b ]    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i8, ptr %i.c, align 4, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %hostrange_count.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call noalias ptr @strdup(ptr noundef %i.i) #21 ; 2 uses
  %.not44 = icmp eq ptr %i.j, null
  br i1 %.not44, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 819, ptr noundef nonnull @__func__.hostrange_shift) #21
  tail call void @abort() #23
  unreachable

hostrange_count.exit:                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = add i64 %i.l, 1
  %.not42 = icmp eq i64 %i.o, %i.n
  br i1 %.not42, label %bb.l, label %bb.f

bb.f:                                             ; preds = %hostrange_count.exit
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.q, 16
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #25 ; 7 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 823, ptr noundef nonnull @__func__.hostrange_shift) #21
  tail call void @abort() #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp sgt i32 %.0, 1
  %.pre = load i32, ptr %i.r, align 8             ; 2 uses
  %i.y = icmp eq i32 %.pre, %.0
  %or.cond59 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond59, label %.lr.ph.preheader.i, label %bb.k

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.z = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.aa = tail call ptr @llvm.stacksave.p0()
  %i.ab = alloca i32, i64 %i.z, align 16          ; 2 uses
  %i.ac = load i64, ptr %i.m, align 8
  %i.ad = trunc i64 %i.ac to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.ad, %.lr.ph.preheader.i ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ae = srem i32 %.012.i, 36
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = sdiv i32 %.012.i, 36
  %i.ah = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ah, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit, !llvm.loop !6

hostlist_parse_int_to_array.exit:                 ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.w, i64 noundef %i.v, ptr noundef nonnull @.str.13, ptr noundef %i.ai) #21 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  %i.al = add nuw nsw i32 %i.aj, %.0
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp ugt i64 %i.v, %i.am
  %or.cond = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %hostlist_parse_int_to_array.exit
  %i.ao = load ptr, ptr @alpha_num, align 8
  %i.ap = zext nneg i32 %i.aj to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv49 = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next50, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv49
  store i8 %i.au, ptr %i.av, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next50
  store i8 0, ptr %i.aw, align 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %hostlist_parse_int_to_array.exit
  %i.ax = load i64, ptr %i.m, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.m, align 8
  call void @llvm.stackrestore.p0(ptr %i.aa)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.az = add i64 %i.n, 1
  store i64 %i.az, ptr %i.m, align 8
  %i.ba = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.w, i64 noundef %i.v, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.p, i32 noundef %.pre, i64 noundef %i.n) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %hostrange_count.exit, %bb.k, %bb.j, %bb.d
  %.037 = phi ptr [ %i.j, %bb.d ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ null, %hostrange_count.exit ]
  ret ptr %.037
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @_hostrange_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load ptr, ptr %0, align 8
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.13, ptr noundef %i.b) #21 ; 5 uses
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 4 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp slt i32 %i.c, 0
  %i.g = add nuw nsw i32 %i.c, %i.e
  %i.h = icmp sgt i32 %i.g, 79
  %or.cond31 = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond31, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i8, ptr %i.i, align 4, !range !15, !noundef !16
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i16 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.e
  %or.cond43 = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond43, label %.lr.ph.preheader.i, label %._crit_edge

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.p = zext i16 %i.d to i64                     ; 2 uses
  %i.q = tail call ptr @llvm.stacksave.p0()
  %i.r = alloca i32, i64 %i.p, align 16           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %1, %i.u
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.v, %.lr.ph.preheader.i ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.w = srem i32 %.012.i, 36
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i
  store i32 %i.w, ptr %i.x, align 4
  %i.y = sdiv i32 %.012.i, 36
  %i.z = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.z, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit.preheader, !llvm.loop !6

hostlist_parse_int_to_array.exit.preheader:       ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr @alpha_num, align 8
  %i.ab = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i16 %i.d to i64
  br label %hostlist_parse_int_to_array.exit

hostlist_parse_int_to_array.exit:                 ; preds = %hostlist_parse_int_to_array.exit.preheader, %hostlist_parse_int_to_array.exit
  %indvars.iv34 = phi i64 [ %i.ab, %hostlist_parse_int_to_array.exit.preheader ], [ %indvars.iv.next35, %hostlist_parse_int_to_array.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %hostlist_parse_int_to_array.exit.preheader ], [ %indvars.iv.next, %hostlist_parse_int_to_array.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
end_hunk_4
begin_hunk_5_@hostrange_to_string:bb.a
  %.0688.us = phi i64 [ %i.bf, %bb.l ], [ %i.l, %.lr.ph12 ] ; 4 uses
  %i.s = load i64, ptr %i.k, align 8
  %i.t = icmp ugt i64 %.0688.us, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph12.split.us
  %i.u = add nuw nsw i32 %.06710.us, 1
  %i.v = zext nneg i32 %.06710.us to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  store i8 44, ptr %i.w, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph12.split.us
  %.1.us = phi i32 [ %i.u, %bb.g ], [ %.06710.us, %.lr.ph12.split.us ] ; 3 uses
  %i.x = zext nneg i32 %.1.us to i64              ; 5 uses
  %.not78.us = icmp ugt i64 %1, %i.x
  br i1 %.not78.us, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.p, align 8              ; 2 uses
  %i.z = icmp eq i32 %i.y, %.064
  br i1 %i.z, label %.lr.ph.preheader.i.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ab = sub nuw i64 %1, %i.x
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.22, ptr noundef %i.ac, i32 noundef %i.y, i64 noundef %.0688.us) #21 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = add nuw nsw i32 %i.ad, %.1.us           ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %.not79.us = icmp ugt i64 %1, %i.ag
  %or.cond85.us = select i1 %i.ae, i1 %.not79.us, i1 false
  br i1 %or.cond85.us, label %bb.l, label %.loopexit

.lr.ph.preheader.i.us:                            ; preds = %bb.i
  %i.ah = tail call ptr @llvm.stacksave.p0()      ; 2 uses
  %i.ai = alloca i32, i64 %i.q, align 16          ; 2 uses
  %i.aj = trunc i64 %.0688.us to i32
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.q, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph.i.us ] ; 2 uses
  %.012.i.us = phi i32 [ %i.aj, %.lr.ph.preheader.i.us ], [ %i.am, %.lr.ph.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, -1 ; 2 uses
  %i.ak = srem i32 %.012.i.us, 36
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i.us
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = sdiv i32 %.012.i.us, 36
  %i.an = icmp samesign ugt i64 %indvars.iv.i.us, 1
  br i1 %i.an, label %.lr.ph.i.us, label %hostlist_parse_int_to_array.exit.us, !llvm.loop !6

hostlist_parse_int_to_array.exit.us:              ; preds = %.lr.ph.i.us
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.ap = sub nuw i64 %1, %i.x
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.13, ptr noundef %i.aq) #21 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread, label %bb.k

bb.k:                                             ; preds = %hostlist_parse_int_to_array.exit.us
  %i.at = add nuw nsw i32 %i.ar, %.1.us           ; 3 uses
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %.not80.us = icmp ugt i64 %1, %i.au
  %i.av = add nuw nsw i32 %i.at, %.064
  %i.aw = zext nneg i32 %i.av to i64
  %.not81.us = icmp ugt i64 %1, %i.aw
  %or.cond.us = select i1 %.not80.us, i1 %.not81.us, i1 false
  br i1 %or.cond.us, label %.preheader.us, label %.thread

.lr.ph.us:                                        ; preds = %.preheader.us, %.lr.ph.us
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %.lr.ph.us ], [ %i.au, %.preheader.us ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ 0, %.preheader.us ] ; 2 uses
  %i.ax = load ptr, ptr @alpha_num, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv20
  store i8 %i.bc, ptr %i.bd, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge.us.loopexit, label %.lr.ph.us, !llvm.loop !69

._crit_edge.us.loopexit:                          ; preds = %.lr.ph.us
  %i.be = trunc nuw i64 %indvars.iv.next21 to i32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit, %.preheader.us
  %.3.lcssa.us = phi i32 [ %i.at, %.preheader.us ], [ %i.be, %._crit_edge.us.loopexit ]
  call void @llvm.stackrestore.p0(ptr %i.ah)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.us, %bb.j
  %.5.us = phi i32 [ %.3.lcssa.us, %._crit_edge.us ], [ %i.af, %bb.j ] ; 2 uses
  %i.bf = add i64 %.0688.us, 1                    ; 2 uses
  %i.bg = load i64, ptr %i.m, align 8
  %.not77.us = icmp ugt i64 %i.bf, %i.bg
  br i1 %.not77.us, label %._crit_edge13, label %.lr.ph12.split.us, !llvm.loop !70

.preheader.us:                                    ; preds = %bb.k
  br i1 %i.r, label %.lr.ph.us, label %._crit_edge.us

.lr.ph12.split:                                   ; preds = %.lr.ph12, %bb.p
  %.06710 = phi i32 [ %i.bt, %bb.p ], [ 0, %.lr.ph12 ] ; 3 uses
  %.0688 = phi i64 [ %i.bv, %bb.p ], [ %i.l, %.lr.ph12 ] ; 3 uses
  %i.bh = load i64, ptr %i.k, align 8
  %i.bi = icmp ugt i64 %.0688, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph12.split
  %i.bj = add nuw nsw i32 %.06710, 1
  %i.bk = zext nneg i32 %.06710 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %i.bk
  store i8 44, ptr %i.bl, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph12.split
  %.1 = phi i32 [ %i.bj, %bb.m ], [ %.06710, %.lr.ph12.split ] ; 2 uses
  %i.bm = zext nneg i32 %.1 to i64                ; 3 uses
  %.not78 = icmp ugt i64 %1, %i.bm
  br i1 %.not78, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bm
  %i.bo = sub nuw i64 %1, %i.bm
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = load i32, ptr %i.p, align 8
  %i.br = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.22, ptr noundef %i.bp, i32 noundef %i.bq, i64 noundef %.0688) #21 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  %i.bt = add nuw nsw i32 %i.br, %.1              ; 3 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %.not79 = icmp ugt i64 %1, %i.bu
  %or.cond85 = select i1 %i.bs, i1 %.not79, i1 false
  br i1 %or.cond85, label %bb.p, label %.loopexit

.thread:                                          ; preds = %hostlist_parse_int_to_array.exit.us, %bb.k
  call void @llvm.stackrestore.p0(ptr %i.ah)
  br label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bv = add i64 %.0688, 1                       ; 2 uses
  %i.bw = load i64, ptr %i.m, align 8
  %.not77 = icmp ugt i64 %i.bv, %i.bw
  br i1 %.not77, label %._crit_edge13, label %.lr.ph12.split, !llvm.loop !70

._crit_edge13:                                    ; preds = %bb.p, %bb.l, %bb.f
  %.067.lcssa = phi i32 [ 0, %bb.f ], [ %.5.us, %bb.l ], [ %i.bt, %bb.p ]
  %i.bx = zext nneg i32 %.067.lcssa to i64        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  store i8 0, ptr %i.by, align 1
  br label %bb.q

.loopexit:                                        ; preds = %bb.n, %bb.o, %bb.j, %bb.h, %.thread, %bb.e
  %i.bz = getelementptr i8, ptr %2, i64 %1
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  store i8 0, ptr %i.ca, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.c, %.loopexit, %._crit_edge13
  %.0 = phi i64 [ %i.bx, %._crit_edge13 ], [ -1, %.loopexit ], [ 0, %bb.c ], [ %i.j, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @hostlist_parse_int_to_array(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq i32 %3, 0
  %i.a = icmp sgt i32 %2, 1
  %i.b = select i1 %i.a, i32 36, i32 10
  %i.c = select i1 %.not, i32 %i.b, i32 %3        ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.012 = phi i32 [ %0, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.f = srem i32 %.012, %i.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.f, ptr %i.g, align 4
  %i.h = sdiv i32 %.012, %i.c
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @hostlist_ranged_string_malloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #25 ; 2 uses
  %cond11 = icmp eq ptr %i.a, null
  br i1 %cond11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.0912 = phi i32 [ %i.g, %bb.b ], [ 8192, %bb.a ] ; 2 uses
  %i.b = zext nneg i32 %.0912 to i64
  %i.c = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.d = zext i16 %i.c to i32
  %i.e = tail call range(i64 -2147483648, 2147483648) i64 @hostlist_ranged_string_dims(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull %.013, i32 noundef %i.d, i32 noundef 1)
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.g = shl nsw i32 %.0912, 1                    ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @realloc(ptr noundef nonnull %.013, i64 noundef %i.h) #26 ; 2 uses
  %cond = icmp eq ptr %i.i, null
  br i1 %cond, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 3041, ptr noundef nonnull @__func__.hostlist_ranged_string_malloc) #21
  tail call void @abort() #23
  unreachable

.critedge:                                        ; preds = %.lr.ph
  ret ptr %.013
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare void @log_oom(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #2

declare void @bit_clear_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_grid(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 2, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 7 uses
  %i.b = alloca i32, i64 %i.a, align 16           ; 4 uses
  %i.c = alloca i32, i64 %i.a, align 16           ; 4 uses
  %i.d = trunc i64 %0 to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %indvars.iv.i = phi i64 [ %i.a, %bb.a ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.d, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.e = srem i32 %.012.i, 36
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store i32 %i.e, ptr %i.f, align 4
  %i.g = sdiv i32 %.012.i, 36
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.h, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit, !llvm.loop !6

hostlist_parse_int_to_array.exit:                 ; preds = %.lr.ph.i
  %i.i = trunc i64 %1 to i32
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %hostlist_parse_int_to_array.exit
  %indvars.iv.i26 = phi i64 [ %i.a, %hostlist_parse_int_to_array.exit ], [ %indvars.iv.next.i28, %.lr.ph.i25 ] ; 2 uses
  %.012.i27 = phi i32 [ %i.i, %hostlist_parse_int_to_array.exit ], [ %i.l, %.lr.ph.i25 ] ; 2 uses
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i26, -1 ; 2 uses
  %i.j = srem i32 %.012.i27, 36
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i28
  store i32 %i.j, ptr %i.k, align 4
  %i.l = sdiv i32 %.012.i27, 36
  %i.m = icmp samesign ugt i64 %indvars.iv.i26, 1
  br i1 %i.m, label %.lr.ph.i25, label %hostlist_parse_int_to_array.exit29.preheader, !llvm.loop !6

hostlist_parse_int_to_array.exit29.preheader:     ; preds = %.lr.ph.i25
  %min.iters.check = icmp samesign ult i32 %2, 4
  br i1 %min.iters.check, label %hostlist_parse_int_to_array.exit29.preheader35, label %vector.ph

vector.ph:                                        ; preds = %hostlist_parse_int_to_array.exit29.preheader
  %n.vec = and i64 %i.a, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  %wide.load32 = load <4 x i32>, ptr %i.o, align 16
  %i.p = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load32)
  store <4 x i32> %i.p, ptr %i.n, align 16
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %index ; 2 uses
  %wide.load33 = load <4 x i32>, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load34 = load <4 x i32>, ptr %i.r, align 16
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load33, <4 x i32> %wide.load34)
  store <4 x i32> %i.s, ptr %i.q, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %.loopexit, label %hostlist_parse_int_to_array.exit29.preheader35

hostlist_parse_int_to_array.exit29.preheader35:   ; preds = %hostlist_parse_int_to_array.exit29.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %hostlist_parse_int_to_array.exit29.preheader ], [ %n.vec, %middle.block ]
  br label %hostlist_parse_int_to_array.exit29

hostlist_parse_int_to_array.exit29:               ; preds = %hostlist_parse_int_to_array.exit29.preheader35, %hostlist_parse_int_to_array.exit29
  %indvars.iv = phi i64 [ %indvars.iv.next, %hostlist_parse_int_to_array.exit29 ], [ %indvars.iv.ph, %hostlist_parse_int_to_array.exit29.preheader35 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.x)
  store i32 %., ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %indvars.iv ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %i.ab)
  store i32 %i.ac, ptr %i.y, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.loopexit, label %hostlist_parse_int_to_array.exit29, !llvm.loop !73

.loopexit:                                        ; preds = %hostlist_parse_int_to_array.exit29, %middle.block
  call fastcc void @_set_box_in_grid(i32 noundef 0, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.c, i1 noundef zeroext true, i32 noundef %2)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_get_boxes(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %2 to i64                  ; 5 uses
  %i.b = alloca i32, i64 %i.a, align 16           ; 6 uses
  %i.c = alloca i32, i64 %i.a, align 16           ; 4 uses
  store i32 -1, ptr %i.b, align 16
  %i.d = call fastcc i32 @_get_next_box(ptr noundef %i.b, ptr noundef %i.c, i32 noundef %2)
  %.not79 = icmp eq i32 %i.d, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %1 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.080 = phi i32 [ %.4, %bb.j ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i32, ptr @dim_grid_size, align 4
  %i.g = sext i32 %i.f to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.c, i64 %i.g)
  %.not53 = icmp eq i32 %bcmp, 0
  %i.h = sext i32 %.080 to i64                    ; 4 uses
  br i1 %.not53, label %.preheader.preheader, label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %.080, i32 %1)
  %i.i = sub i32 %smax, %.080
  %wide.trip.count = zext i32 %i.i to i64
  %i.j = add i32 %.080, 2
  br label %.preheader61

.preheader.preheader:                             ; preds = %.lr.ph
  %smax114 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.e)
  %i.k = sub nsw i64 %smax114, %i.h
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.b
  %indvars.iv109 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next110, %bb.b ] ; 3 uses
  %indvars.iv107 = phi i64 [ %i.h, %.preheader.preheader ], [ %indvars.iv.next108, %bb.b ] ; 4 uses
  %exitcond115.not = icmp eq i64 %indvars.iv109, %i.k
  br i1 %exitcond115.not, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.l = load ptr, ptr @alpha_num, align 8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv109
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %indvars.iv107
  store i8 %i.q, ptr %i.r, align 1
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next110, %i.a
end_hunk_5
begin_hunk_6_@hostlist_next_dims:bb.a

._crit_edge:                                      ; preds = %bb.j
  %i.bw = zext nneg i32 %i.an to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = sub nsw i32 80, %i.an
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = load i32, ptr %i.az, align 8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add i64 %i.cb, %i.cd
  %i.cf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bx, i64 noundef %i.bz, ptr noundef nonnull @.str.14, i32 noundef %i.ax, i64 noundef %i.ce) #21
  %or.cond = icmp ugt i32 %i.cf, 79
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %hostlist_parse_int_to_array.exit._crit_edge, %._crit_edge, %bb.i
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ch) #21 ; 2 uses
  %.not49 = icmp eq i32 %i.ci, 0
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = tail call ptr @__errno_location() #22
  store i32 %i.ci, ptr %i.cj, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_next_dims) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ck = call noalias ptr @strdup(ptr noundef nonnull %i.a) #21
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cm) #21 ; 2 uses
  %.not50 = icmp eq i32 %i.cn, 0
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = tail call ptr @__errno_location() #22
  store i32 %i.cn, ptr %i.co, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_next_dims) #23
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.ck, %bb.m ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hostset_intersects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %hostlist_create.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.in.i = phi i16 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.c = tail call fastcc noundef ptr @_hostlist_create(ptr noundef readonly %1, i32 noundef %.0.i.i) ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %hostlist_create.exit
  %i.d = tail call ptr @hostlist_pop(ptr noundef %i.c) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @hostset_find_host(ptr noundef %0, ptr noundef %i.d)
  tail call void @free(ptr noundef nonnull %i.d) #21
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.c, label %bb.e, !llvm.loop !79

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @hostlist_destroy(ptr noundef %i.c)
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hostset_find_host(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostset_find_host) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.g = zext i16 %i.f to i32
  %i.h = tail call fastcc ptr @hostname_create_dims(ptr noundef nonnull %1, i32 noundef %i.g) ; 6 uses
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 52
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre.pre, %bb.d ], [ %i.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call fastcc i32 @hostrange_hn_within(ptr noundef %i.u, ptr noundef %i.h, i32 noundef 0)
  %.not17 = icmp eq i32 %i.v, 0
  %.pre.pre = load ptr, ptr %0, align 8           ; 4 uses
  br i1 %.not17, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %i.w = phi ptr [ %i.i, %bb.c ], [ %.pre.pre, %.lr.ph ], [ %.pre.pre, %bb.d ]
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.x) #21 ; 2 uses
  %.not18 = icmp eq i32 %i.y, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.z = tail call ptr @__errno_location() #22
  store i32 %i.y, ptr %i.z, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostset_find_host) #23
  unreachable

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %hostname_destroy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ab, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.ac) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostname_destroy.exit

hostname_destroy.exit:                            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @hostset_delete_host(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %hostlist_delete_host.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @hostlist_find_dims(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @hostlist_delete_nth(ptr noundef nonnull %i.a, i32 noundef %i.b) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = zext i1 %i.c to i32
  br label %hostlist_delete_host.exit

hostlist_delete_host.exit:                        ; preds = %bb.a, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_pop(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @hostlist_pop(ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @hostset_ranged_string(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.c = zext i16 %i.b to i32
  %i.d = tail call range(i64 -2147483648, 2147483648) i64 @hostlist_ranged_string_dims(ptr noundef %i.a, i64 noundef %1, ptr noundef %2, i32 noundef %i.c, i32 noundef 1)
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, 2147483648) i64 @hostset_deranged_string(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.c = zext i16 %i.b to i32
  %i.d = tail call range(i64 -1, 2147483648) i64 @hostlist_deranged_string_dims(ptr noundef %i.a, i64 noundef %1, ptr noundef %2, i32 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_deranged_string_xmalloc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.c = zext i16 %i.b to i32
  %i.d = tail call ptr @hostlist_deranged_string_xmalloc_dims(ptr noundef %i.a, i32 noundef %i.c)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_ranged_string_xmalloc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.c = zext i16 %i.b to i32
  %i.d = tail call ptr @hostlist_ranged_string_xmalloc_dims(ptr noundef %i.a, i32 noundef %i.c, i32 noundef 1)
  ret ptr %i.d
}

declare i32 @strnatcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_parse_range_list(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4
  %i.b = icmp sgt i32 %3, 1
  %i.c = zext nneg i32 %3 to i64
  %i.d = shl nuw nsw i32 %3, 1
  %i.e = or disjoint i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  br i1 %i.b, label %.split.us, label %.split.preheader

.split.us:                                        ; preds = %bb.a, %bb.j
  %i.g = phi i32 [ %i.ad, %bb.j ], [ 0, %bb.a ]   ; 4 uses
  %.02331.us = phi ptr [ %.0.us, %bb.j ], [ %0, %bb.a ] ; 5 uses
  %i.h = icmp eq i32 %i.g, 262144
  br i1 %i.h, label %.split33.us, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.i = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.02331.us, i32 noundef 44) #24 ; 3 uses
  %.not27.us = icmp eq ptr %i.i, null
  br i1 %.not27.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.us = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02331.us, i64 %i.c
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 120
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02331.us) #24
  %i.o = icmp eq i64 %i.n, %i.f
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load i32, ptr %2, align 4                ; 4 uses
  %.not28.us = icmp slt i32 %i.g, %i.p
  br i1 %.not28.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i32 %i.p, 262143
  br i1 %i.q, label %.split35.us, label %_grow_ranges.exit.us

_grow_ranges.exit.us:                             ; preds = %bb.g
  %i.r = shl nsw i32 %i.p, 1
  %i.s = add nsw i32 %i.r, 10
  %i.t = icmp sgt i32 %i.p, 131067
  %spec.select.i.us = select i1 %i.t, i32 262144, i32 %i.s ; 2 uses
  %i.u = sext i32 %spec.select.i.us to i64
  %i.v = mul nsw i64 %i.u, 24
  %i.w = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %1, i64 noundef 1, i64 noundef %i.v, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1483, ptr noundef nonnull @__func__._grow_ranges) #21 ; 0 uses
  store i32 %spec.select.i.us, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %_grow_ranges.exit.us, %bb.f
  %i.x = load ptr, ptr %1, align 8
  %i.y = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.y, ptr %i.a, align 4
  %i.z = sext i32 %i.g to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.z
  %i.ab = tail call fastcc i32 @_parse_single_range(ptr noundef %.02331.us, ptr noundef %i.aa, i32 noundef %3)
  %.not29.us = icmp eq i32 %i.ab, 0
  br i1 %.not29.us, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ac = call fastcc i32 @_parse_box_range(ptr noundef %.02331.us, ptr noundef %1, ptr noundef %2, ptr noundef %i.a, i32 noundef %3)
  %.not30.us = icmp eq i32 %i.ac, 0
  %.pre = load i32, ptr %i.a, align 4
  br i1 %.not30.us, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i32 [ %.pre, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !81

.split:                                           ; preds = %bb.o
  %i.ae = icmp eq i64 %indvars.iv.next, 262144
  br i1 %i.ae, label %.split33.us, label %.split.preheader, !llvm.loop !81

.split33.us:                                      ; preds = %.split, %.split.us
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._parse_range_list) #23
  unreachable

.split.preheader:                                 ; preds = %bb.a, %.split
  %.023315 = phi ptr [ %.0, %.split ], [ %0, %bb.a ] ; 2 uses
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.split ], [ 0, %bb.a ] ; 3 uses
  %i.af = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.023315, i32 noundef 44) #24 ; 3 uses
  %.not27 = icmp eq ptr %i.af, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.split.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 0, ptr %i.af, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.preheader
  %.0 = phi ptr [ %i.ag, %bb.k ], [ null, %.split.preheader ] ; 2 uses
  %i.ah = load i32, ptr %2, align 4               ; 4 uses
  %i.ai = sext i32 %i.ah to i64
  %.not28 = icmp slt i64 %indvars.iv4, %i.ai
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp sgt i32 %i.ah, 262143
  br i1 %i.aj, label %.split35.us, label %_grow_ranges.exit

.split35.us:                                      ; preds = %bb.m, %bb.g
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._grow_ranges) #23
  unreachable

_grow_ranges.exit:                                ; preds = %bb.m
  %i.ak = shl nsw i32 %i.ah, 1
  %i.al = add nsw i32 %i.ak, 10
  %i.am = icmp sgt i32 %i.ah, 131067
  %spec.select.i = select i1 %i.am, i32 262144, i32 %i.al ; 2 uses
  %i.an = sext i32 %spec.select.i to i64
  %i.ao = mul nsw i64 %i.an, 24
  %i.ap = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %1, i64 noundef 1, i64 noundef %i.ao, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1483, ptr noundef nonnull @__func__._grow_ranges) #21 ; 0 uses
  store i32 %spec.select.i, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %_grow_ranges.exit, %bb.l
  %i.aq = load ptr, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv4
  %i.as = tail call fastcc i32 @_parse_single_range(ptr noundef %.023315, ptr noundef %i.ar, i32 noundef %3)
  %.not29 = icmp eq i32 %i.as, 0
  br i1 %.not29, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1 ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.split37, label %.split, !llvm.loop !81

.split37:                                         ; preds = %bb.o
  %i.at = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.i, %bb.h, %bb.j, %.split37
  %.022 = phi i32 [ %i.at, %.split37 ], [ -1, %bb.i ], [ -1, %bb.h ], [ %i.ad, %bb.j ], [ -1, %bb.n ]
end_hunk_6
