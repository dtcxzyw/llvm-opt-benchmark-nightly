Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/con?download=true
inline.NumInlined: 50
inline.NumDeleted: 17
begin_hunk_0_@conmgr_get_fd_auth_creds:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @_get_auth_creds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_get_auth_creds(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #14
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__._get_auth_creds) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 2
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.g, 64
  %.not49 = icmp eq i32 %i.i, 0
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.035 = phi i32 [ -1, %bb.e ], [ %i.k, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.1 = phi i32 [ %.035, %bb.g ], [ -1, %bb.d ]   ; 3 uses
  %.0 = phi i32 [ %i.m, %bb.g ], [ -1, %bb.d ]    ; 2 uses
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @__errno_location() #14
  store i32 %i.n, ptr %i.o, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._get_auth_creds) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %.1, 0
  %i.q = icmp slt i32 %.0, 0
  %or.cond5 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond5, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call i32 @net_get_peer(i32 noundef %.1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #13 ; 2 uses
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @__errno_location() #14
  store i32 %i.s, ptr %i.t, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__._get_auth_creds) #12
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not53 = icmp eq i32 %.1, %i.v
  br i1 %.not53, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %.not54 = icmp eq i32 %.0, %i.x
  br i1 %.not54, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = load i32, ptr %i.f, align 8
  %i.z = and i32 %i.y, 64
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.036 = phi i32 [ 1013, %bb.q ], [ 0, %bb.p ]
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not56 = icmp eq i32 %i.aa, 0
  br i1 %.not56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = tail call ptr @__errno_location() #14
  store i32 %i.aa, ptr %i.ab, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__._get_auth_creds) #12
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.k, %bb.j, %bb.a
  %.038 = phi i32 [ 22, %bb.a ], [ 1013, %bb.j ], [ %i.r, %bb.k ], [ %.036, %bb.r ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conmgr_con_get_auth_creds(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @_get_auth_creds(ptr noundef %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ 22, %bb.b ], [ 22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @conmgr_fd_get_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @conmgr_con_get_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @conmgr_fd_get_status(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.conmgr_fd_status_t) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_fd_get_status) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_con_get_status.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i32 %i.d to i8                     ; 3 uses
  %2 = lshr i8 %i.e, 1
  %3 = and i8 %2, 1
  %4 = lshr i8 %i.e, 2
  %i.f = and i8 %4, 1
  %5 = lshr i8 %i.e, 6
  %i.g = and i8 %5, 1
  %i.h = and i32 %i.d, 128
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i8
  store i8 %3, ptr %0, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i, i8 0, i64 15, i1 false)
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.f, ptr %.sroa.31.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i16, ptr %i.k, align 8
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %bb.e, label %_con_get_status.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %_con_get_status.exit

_con_get_status.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not5 = icmp eq i32 %i.p, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_con_get_status.exit
  %i.q = tail call ptr @__errno_location() #14
  store i32 %i.p, ptr %i.q, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_fd_get_status) #12
  unreachable

bb.g:                                             ; preds = %_con_get_status.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 23) i32 @conmgr_con_get_status(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_con_get_status) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_con_get_status.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i32 %i.f to i8                     ; 3 uses
  %2 = lshr i8 %i.g, 1
  %3 = and i8 %2, 1
  %4 = lshr i8 %i.g, 2
  %i.h = and i8 %4, 1
  %5 = lshr i8 %i.g, 6
  %i.i = and i8 %5, 1
  %i.j = and i32 %i.f, 128
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i8
  store i8 %3, ptr %1, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i, i8 0, i64 15, i1 false)
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.h, ptr %.sroa.31.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load i16, ptr %i.m, align 8
  %i.o = icmp eq i16 %i.n, 1
  br i1 %i.o, label %bb.e, label %_con_get_status.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %_con_get_status.exit

_con_get_status.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 22, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not7 = icmp eq i32 %i.r, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_con_get_status.exit
  %i.s = tail call ptr @__errno_location() #14
  store i32 %i.r, ptr %i.s, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_con_get_status) #12
  unreachable

bb.g:                                             ; preds = %_con_get_status.exit
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conmgr_con_fstat_input(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_con_fstat_input) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not32 = icmp eq i32 %i.e, 0
  br i1 %.not32, label %.thread44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @__errno_location() #14
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_con_fstat_input) #12
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 64
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %bb.i, label %bb.h

.thread:                                          ; preds = %bb.f
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not3442 = icmp eq i32 %i.m, 0
  br i1 %.not3442, label %.thread44, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.n = phi i32 [ %i.m, %.thread ], [ %i.l, %bb.g ]
  %i.o = tail call ptr @__errno_location() #14
  store i32 %i.n, ptr %i.o, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_con_fstat_input) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %.thread44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @fstat(i32 noundef %i.k, ptr noundef %1) #13
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %.thread46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @__errno_location() #14
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %.thread46, label %.thread49

.thread46:                                        ; preds = %bb.j, %bb.k
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread46
  %i.u = tail call ptr @__errno_location() #14
  store i32 %i.t, ptr %i.u, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.conmgr_con_fstat_input) #12
  unreachable

bb.m:                                             ; preds = %.thread46
  %i.v = load i32, ptr %i.j, align 8
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mgr, i64 176)) #13 ; 2 uses
  %.not39 = icmp eq i32 %i.w, 0
  br i1 %.not39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @__errno_location() #14
  store i32 %i.w, ptr %i.x, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.conmgr_con_fstat_input) #12
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not38 = icmp eq i32 %i.v, %i.k
  br i1 %.not38, label %.thread44, label %.thread49

.thread49:                                        ; preds = %bb.k, %bb.o
  %.252 = phi i32 [ 9, %bb.o ], [ %i.s, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  br label %.thread44

.thread44:                                        ; preds = %.thread, %bb.o, %.thread49, %bb.i, %bb.d
  %.024 = phi i32 [ 9, %bb.d ], [ 9, %bb.i ], [ %.252, %.thread49 ], [ 0, %bb.o ], [ 9, %.thread ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define dso_local ptr @con_find_by_fd(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 96), align 8
  %i.c = call ptr @list_find_first(ptr noundef %i.b, ptr noundef nonnull @_find_by_fd, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mgr, i64 104), align 8
  %i.e = call ptr @list_find_first(ptr noundef %i.d, ptr noundef nonnull @_find_by_fd, ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_find_by_fd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, %i.a
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %i.a
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 1, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local void @con_close_on_poll_error(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
end_hunk_0
