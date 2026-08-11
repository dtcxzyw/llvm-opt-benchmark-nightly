inline.NumInlined: 63
inline.NumDeleted: 27
begin_hunk_0_@dentry_path_raw:bb.a
  %.sink = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sink, ptr %i.g, align 8
  %i.h = call fastcc ptr @__dentry_path(ptr noundef %0, ptr noundef nonnull %3) #10, !srcloc !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__dentry_path(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #11
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %need_seqretry.exit, %bb.a
  %.not.i = phi i1 [ true, %bb.a ], [ false, %need_seqretry.exit ]
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load volatile i32, ptr @rename_lock, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  %i.c = and i32 %i.b, 1
  %.not3.i.i = icmp eq i32 %i.c, 0
  br i1 %.not3.i.i, label %read_seqbegin_or_lock.exit, label %.lr.ph.i.i, !prof !13

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.d = load volatile i32, ptr @rename_lock, align 4 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  %i.e = and i32 %i.d, 1
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %read_seqbegin_or_lock.exit, label %.lr.ph.i.i, !prof !15, !llvm.loop !16

bb.d:                                             ; preds = %bb.b
  tail call void @_raw_spin_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rename_lock, i64 4)) #11
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ %i.b, %bb.c ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not60 = icmp eq ptr %0, %i.f
  br i1 %.not60, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %read_seqbegin_or_lock.exit, %bb.j
  %i.g = phi ptr [ %i.ad, %bb.j ], [ %i.f, %read_seqbegin_or_lock.exit ] ; 4 uses
  %.0963 = phi ptr [ %i.g, %bb.j ], [ %0, %read_seqbegin_or_lock.exit ] ; 2 uses
  %.sroa.13.062 = phi i32 [ %i.aa, %bb.j ], [ %.sroa.13.0.copyload, %read_seqbegin_or_lock.exit ] ; 6 uses
  %.sroa.0.061 = phi ptr [ %i.ab, %bb.j ], [ %.sroa.0.0.copyload, %read_seqbegin_or_lock.exit ] ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = getelementptr i8, ptr %.0963, i64 40
  %i.i = load volatile ptr, ptr %i.h, align 8     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !22
  %i.j = getelementptr i8, ptr %.0963, i64 36
  %i.k = load volatile i32, ptr %i.j, align 4     ; 4 uses
  %i.l = icmp slt i32 %.sroa.13.062, 0
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = icmp slt i32 %.sroa.13.062, %i.k
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = sub nsw i32 %i.k, %.sroa.13.062
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.i, i64 %i.o
  %i.q = zext nneg i32 %.sroa.13.062 to i64       ; 3 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %.sroa.0.061, i64 %i.r ; 4 uses
  %i.t = tail call i64 @copy_from_kernel_nofault(ptr noundef %i.s, ptr noundef %i.p, i64 noundef %i.q) #11
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 120, i64 %i.q, i1 false)
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.u = sub i32 %.sroa.13.062, %i.k              ; 3 uses
  %i.v = sext i32 %i.k to i64                     ; 3 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %.sroa.0.061, i64 %i.w ; 5 uses
  %i.y = tail call i64 @copy_from_kernel_nofault(ptr noundef %i.x, ptr noundef %i.i, i64 noundef %i.v) #11
  %.not.i21.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i21.i.i, label %prepend.exit.i, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 120, i64 %i.v, i1 false)
  br label %.thread

prepend.exit.i:                                   ; preds = %bb.h
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %bb.j, label %.thread, !prof !10

bb.j:                                             ; preds = %prepend.exit.i
  %i.aa = add nsw i32 %i.u, -1                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 -1      ; 3 uses
  store i8 47, ptr %i.ab, align 1
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.g, %i.ad
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.j, %prepend.exit.i, %.lr.ph, %read_seqbegin_or_lock.exit, %bb.f, %bb.i, %bb.g
  %.sroa.0.1 = phi ptr [ %i.s, %bb.f ], [ %i.x, %bb.i ], [ %i.s, %bb.g ], [ %.sroa.0.0.copyload, %read_seqbegin_or_lock.exit ], [ %i.x, %prepend.exit.i ], [ %i.ab, %bb.j ], [ %.sroa.0.061, %.lr.ph ] ; 2 uses
  %.sroa.13.1 = phi i32 [ -1, %bb.f ], [ %i.u, %bb.i ], [ -1, %bb.g ], [ %.sroa.13.0.copyload, %read_seqbegin_or_lock.exit ], [ -1, %prepend.exit.i ], [ %i.aa, %bb.j ], [ %.sroa.13.062, %.lr.ph ] ; 3 uses
  %i.ae = and i32 %.1, 1
  %.not10 = icmp eq i32 %i.ae, 0
  br i1 %.not10, label %need_seqretry.exit, label %bb.k

need_seqretry.exit:                               ; preds = %.thread
  tail call void @__rcu_read_unlock() #11
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !23
  %i.af = load volatile i32, ptr @rename_lock, align 4
  %.not42 = icmp eq i32 %i.af, %.1
  br i1 %.not42, label %done_seqretry.exit, label %bb.b

bb.k:                                             ; preds = %.thread
  tail call void @_raw_spin_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rename_lock, i64 4)) #11
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %need_seqretry.exit, %bb.k
  %i.ag = load i32, ptr %.sroa.13.0..sroa_idx, align 8
  %i.ah = icmp eq i32 %.sroa.13.1, %i.ag
  br i1 %i.ah, label %bb.l, label %prepend_char.exit

bb.l:                                             ; preds = %done_seqretry.exit
  %i.ai = icmp sgt i32 %.sroa.13.1, 0
  br i1 %i.ai, label %prepend_char.exit.thread, label %prepend_char.exit.thread39, !prof !10

prepend_char.exit.thread:                         ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %.sroa.0.1, i64 -1 ; 2 uses
  store i8 47, ptr %i.aj, align 1
  br label %extract_string.exit

prepend_char.exit:                                ; preds = %done_seqretry.exit
  %i.ak = icmp sgt i32 %.sroa.13.1, -1
  br i1 %i.ak, label %extract_string.exit, label %prepend_char.exit.thread39, !prof !32

prepend_char.exit.thread39:                       ; preds = %bb.l, %prepend_char.exit
  br label %extract_string.exit

extract_string.exit:                              ; preds = %prepend_char.exit.thread, %prepend_char.exit, %prepend_char.exit.thread39
  %.0.i = phi ptr [ inttoptr (i64 -36 to ptr), %prepend_char.exit.thread39 ], [ %.sroa.0.1, %prepend_char.exit ], [ %i.aj, %prepend_char.exit.thread ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @dentry_path(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.prepend_buffer, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 2 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.e, align 8
  %.not.i.i.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.not.i, label %d_unlinked.exit, label %d_unlinked.exit.thread

d_unlinked.exit:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %.not5 = icmp eq ptr %0, %i.g
  br i1 %.not5, label %d_unlinked.exit.thread, label %bb.b, !prof !27

bb.b:                                             ; preds = %d_unlinked.exit
  call fastcc void @prepend(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 10) #10
  br label %prepend_char.exit

d_unlinked.exit.thread:                           ; preds = %bb.a, %d_unlinked.exit
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %d_unlinked.exit.thread
  %i.i = add nsw i32 %2, -1
  store i32 %i.i, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 -1       ; 2 uses
  store ptr %i.j, ptr %3, align 8
  store i8 0, ptr %i.j, align 1
  br label %prepend_char.exit

bb.d:                                             ; preds = %d_unlinked.exit.thread
  store i32 -1, ptr %i.c, align 8
  br label %prepend_char.exit

prepend_char.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.k = call fastcc ptr @__dentry_path(ptr noundef %0, ptr noundef nonnull %3) #10, !srcloc !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -36, 4097) i64 @__x64_sys_getcwd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_getcwd(i64 noundef %i.b, i64 noundef %i.d) #10, !srcloc !34
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -36, 4097) i64 @__se_sys_getcwd(i64 noundef %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.path, align 8               ; 5 uses
  %3 = alloca %struct.path, align 8               ; 4 uses
  %4 = alloca %struct.prepend_buffer, align 8     ; 8 uses
  %i.a = inttoptr i64 %0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.c = tail call noalias align 8 dereferenceable_or_null(4096) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3264, i64 noundef 4096) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %__do_sys_getcwd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #11
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !25
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 2056
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4        ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 24
  %i.j = getelementptr i8, ptr %i.g, i64 40
  br label %bb.c

bb.c:                                             ; preds = %read_seqbegin.exit.i.i, %bb.b
  %i.k = load volatile i32, ptr %i.h, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  %i.l = and i32 %i.k, 1
  %.not3.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i.i.i, label %read_seqbegin.exit.i.i, label %.lr.ph.i.i.i, !prof !13

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.m = load volatile i32, ptr %i.h, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  %i.n = and i32 %i.m, 1
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %read_seqbegin.exit.i.i, label %.lr.ph.i.i.i, !prof !15, !llvm.loop !16

read_seqbegin.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.c
  %.lcssa.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !23
  %i.o = load volatile i32, ptr %i.h, align 4
  %.not6.i.i = icmp eq i32 %i.o, %.lcssa.i.i.i
  br i1 %.not6.i.i, label %get_fs_root_and_pwd_rcu.exit.i, label %bb.c, !llvm.loop !35

get_fs_root_and_pwd_rcu.exit.i:                   ; preds = %read_seqbegin.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i.i = load ptr, ptr %i.r, align 8
  %.not.i.i.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.not.i.i, label %d_unlinked.exit.i, label %prepend_char.exit.i

d_unlinked.exit.i:                                ; preds = %get_fs_root_and_pwd_rcu.exit.i
  %i.s = getelementptr i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %.not20.i = icmp eq ptr %i.q, %i.t
  br i1 %.not20.i, label %prepend_char.exit.i, label %bb.d, !prof !27

bb.d:                                             ; preds = %d_unlinked.exit.i
  tail call void @__rcu_read_unlock() #11
  br label %bb.i

prepend_char.exit.i:                              ; preds = %d_unlinked.exit.i, %get_fs_root_and_pwd_rcu.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.v, align 4
  store i32 4095, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.c, i64 4095     ; 2 uses
  store ptr %i.w, ptr %4, align 8
  store i8 0, ptr %i.w, align 1
  %i.x = call fastcc i32 @prepend_path(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !srcloc !36
  %.not21.i = icmp eq i32 %i.x, 0
  br i1 %.not21.i, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %prepend_char.exit.i
  call fastcc void @prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i32 noundef 13) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %prepend_char.exit.i
  tail call void @__rcu_read_unlock() #11
  %i.y = load i32, ptr %i.u, align 8              ; 2 uses
  %i.z = icmp ugt i32 %i.y, 4096
  br i1 %i.z, label %bb.h, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  %5 = sub nuw nsw i32 4096, %i.y
  %i.aa = zext nneg i32 %5 to i64                 ; 3 uses
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %bb.h, label %check_copy_size.exit.i, !prof !18

check_copy_size.exit.i:                           ; preds = %bb.g
  %i.ac = load ptr, ptr %4, align 8
  %i.ad = tail call i64 @_copy_to_user(ptr noundef %i.a, ptr noundef %i.ac, i64 noundef range(i64 0, 4097) %i.aa) #11
  %.not18.i = icmp eq i64 %i.ad, 0
  %spec.select.i = select i1 %.not18.i, i64 %i.aa, i64 -14
  br label %bb.h

bb.h:                                             ; preds = %check_copy_size.exit.i, %bb.g, %bb.f
  %.013.i = phi i64 [ %spec.select.i, %check_copy_size.exit.i ], [ -36, %bb.f ], [ -34, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.1.i = phi i64 [ -2, %bb.d ], [ %.013.i, %bb.h ]
  tail call void @kfree(ptr noundef nonnull %i.c) #11
  br label %__do_sys_getcwd.exit

__do_sys_getcwd.exit:                             ; preds = %bb.a, %bb.i
  %.0.i = phi i64 [ %.1.i, %bb.i ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -36, 4097) i64 @__ia32_sys_getcwd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_getcwd(i64 noundef %i.c, i64 noundef %i.f) #10, !srcloc !37
  ret i64 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{i64 2158436428}
!12 = !{i64 2151213979}
!13 = !{!"branch_weights", i32 1999, i32 1}
!14 = !{i64 2513848}
!15 = !{!"branch_weights", i32 1, i32 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = distinct !{!19, !17}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{i64 2158425479}
!23 = !{i64 2151255512}
!24 = !{i64 2158436588}
!25 = !{i64 2148392092}
!26 = distinct !{!26, !17}
!27 = !{!"branch_weights", !"expected", i32 2144621768, i32 2861880}
!28 = !{i64 8266}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!31 = !{i64 10003}
!32 = !{!"branch_weights", !"expected", i32 2146410444, i32 1073204}
!33 = !{i64 10275}
!34 = !{i64 2158448322}
!35 = distinct !{!35, !17}
!36 = !{i64 2158458023}
!37 = !{i64 2158450225}
end_hunk_0
