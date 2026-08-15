inline.NumInlined: 768
inline.NumDeleted: 309
begin_hunk_0_@shmem_xattr_handler_set:bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw i64 %i.j, %i.g
  store i64 %i.l, ptr %i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.h) #19
  %.not41 = icmp eq i64 %i.g, 0
  br i1 %.not41, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.1 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr i8, ptr %.val, i64 176
  %i.n = getelementptr i8, ptr %3, i64 -32
  %i.o = tail call ptr @simple_xattr_set(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.d, ptr noundef %5, i64 noundef %6, i32 noundef %7) #19 ; 6 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 -4096 to ptr)
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %.val, i64 48
  %i.r = load i64, ptr %i.q, align 8
  %.not43 = icmp eq i64 %i.r, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.o, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.o, i64 56
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call i64 @simple_xattr_space(ptr noundef %i.t, i64 noundef %i.v) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.2 = phi i64 [ %i.w, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  tail call void @simple_xattr_free_rcu(ptr noundef %i.o) #19
  %i.x = tail call { i64, i64 } @inode_set_ctime_current(ptr noundef %3) #19 ; 0 uses
  %i.y = tail call zeroext i1 @inode_maybe_inc_iversion(ptr noundef %3, i1 noundef zeroext true) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.036 = phi ptr [ %i.o, %bb.e ], [ null, %bb.i ]
  %.3 = phi i64 [ %.1, %bb.e ], [ %.2, %bb.i ]    ; 2 uses
  %.not44 = icmp eq i64 %.3, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.val, i64 64      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.z) #19
  %i.aa = getelementptr i8, ptr %.val, i64 56     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, %.3
  store i64 %i.ac, ptr %i.aa, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.z) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = ptrtoint ptr %.036 to i64
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.d, %bb.l
  %.0 = phi i32 [ %i.ae, %bb.l ], [ -28, %bb.d ], [ -28, %.thread ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_xattr_space(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @simple_xattr_free_rcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @simple_inode_init_ts(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mpol_shared_policy_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @simple_offset_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shmem_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.a, align 8             ; 27 uses
  %i.b = tail call i32 @setattr_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 -124
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 32
  %.not105 = icmp eq i32 %i.e, 0
  br i1 %.not105, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i16, ptr %.val, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %2, align 8
  %i.g = and i32 %i.f, 1
  %.not106 = icmp eq i32 %i.g, 0
  %.pre138 = load i16, ptr %.val, align 8         ; 3 uses
  br i1 %.not106, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %2, i64 4
  %i.i = load i16, ptr %i.h, align 4
  %i.j = xor i16 %i.i, %.pre138
  %i.k = and i16 %i.j, 73
  %.not107 = icmp eq i16 %i.k, 0
  br i1 %.not107, label %bb.e, label %.thread

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.l = phi i16 [ %.pre, %._crit_edge ], [ %.pre138, %bb.d ], [ %.pre138, %bb.c ]
  %i.m = icmp slt i16 %i.l, -28672
  br i1 %i.m, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %2, align 8
  %i.o = and i32 %i.n, 8
  %.not108 = icmp eq i32 %i.o, 0
  br i1 %.not108, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.val, i64 80      ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 7 uses
  %i.t = icmp sge i64 %i.s, %i.q
  %i.u = and i32 %i.d, 2
  %.not109 = icmp eq i32 %i.u, 0
  %or.cond135 = or i1 %.not109, %i.t
  br i1 %or.cond135, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = icmp sle i64 %i.s, %i.q                  ; 2 uses
  %i.w = and i32 %i.d, 4
  %.not110 = icmp eq i32 %i.w, 0
  %or.cond137 = or i1 %.not110, %i.v
  br i1 %or.cond137, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not111 = icmp eq i64 %i.s, %i.q
  br i1 %.not111, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.val, i64 -120
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 4
  %.not112 = icmp eq i64 %i.z, 0
  br i1 %.not112, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call fastcc i32 @shmem_reacct_size(i64 noundef %i.y, i64 noundef %i.q, i64 noundef %i.s) #20, !srcloc !110 ; 2 uses
  %.not113 = icmp eq i32 %i.aa, 0
  br i1 %.not113, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !87
  store volatile i64 %i.s, ptr %i.p, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.084 = phi i8 [ 1, %bb.l ], [ 0, %bb.i ]       ; 6 uses
  br i1 %i.v, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ab = add i64 %i.s, 4095
  %3 = and i64 %i.ab, -4096                       ; 3 uses
  %i.ac = icmp sgt i64 %i.q, %3                   ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %.val, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @unmap_mapping_range(ptr noundef %i.ae, i64 noundef %3, i64 noundef 0, i32 noundef 1) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr i8, ptr %.val, i64 -112
  %i.ag = load i64, ptr %i.af, align 8
  %.not115 = icmp eq i64 %i.ag, 0
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @shmem_truncate_range(ptr noundef %.val, i64 noundef %i.s, i64 noundef -1) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr i8, ptr %.val, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @unmap_mapping_range(ptr noundef %i.ai, i64 noundef %3, i64 noundef 0, i32 noundef 1) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.m, %bb.f, %bb.e
  %.289 = phi i8 [ 1, %bb.e ], [ 1, %bb.f ], [ %.084, %bb.m ], [ %.084, %bb.r ], [ %.084, %bb.s ]
  %.286 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ %.084, %bb.m ], [ %.084, %bb.r ], [ %.084, %bb.s ]
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = and i32 %i.aj, 8
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.u, label %is_quota_modification.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.al = and i32 %i.aj, 2
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %i_uid_needs_update.exit.thread.i, label %i_uid_needs_update.exit.i

i_uid_needs_update.exit.i:                        ; preds = %bb.u
  %i.am = getelementptr i8, ptr %2, i64 8
  %i.an = getelementptr i8, ptr %.val, i64 24
  %.val.i.i = load i32, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val, i64 40
  %.val4.i.i = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %.val4.i.i, i64 1088
  %.val4.val.i.i = load ptr, ptr %i.ap, align 64
  %i.aq = tail call i32 @make_vfsuid(ptr noundef %0, ptr noundef %.val4.val.i.i, i32 %.val.i.i) #19
  %i.ar = load i32, ptr %i.am, align 8            ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  %i.at = icmp ne i32 %i.ar, %i.aq
  %spec.select.i.not.i.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %spec.select.i.not.i.i, label %is_quota_modification.exit.thread, label %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge.i

i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge.i: ; preds = %i_uid_needs_update.exit.i
  %.pre.i = load i32, ptr %2, align 8
  br label %i_uid_needs_update.exit.thread.i

i_uid_needs_update.exit.thread.i:                 ; preds = %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge.i, %bb.u
  %i.au = phi i32 [ %.pre.i, %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge.i ], [ %i.aj, %bb.u ]
  %i.av = and i32 %i.au, 4
  %.not.i7.i = icmp eq i32 %i.av, 0
  br i1 %.not.i7.i, label %is_quota_modification.exit.thread134, label %is_quota_modification.exit

is_quota_modification.exit:                       ; preds = %i_uid_needs_update.exit.thread.i
  %i.aw = getelementptr i8, ptr %2, i64 12
  %i.ax = getelementptr i8, ptr %.val, i64 28
  %.val.i8.i = load i32, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %.val, i64 40
  %.val4.i9.i = load ptr, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %.val4.i9.i, i64 1088
  %.val4.val.i10.i = load ptr, ptr %i.az, align 64
  %i.ba = tail call i32 @make_vfsgid(ptr noundef %0, ptr noundef %.val4.val.i10.i, i32 %.val.i8.i) #19
  %i.bb = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  %i.bd = icmp ne i32 %i.bb, %i.ba
  %spec.select.i.not.i11.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %spec.select.i.not.i11.i, label %is_quota_modification.exit.thread, label %is_quota_modification.exit.thread134

is_quota_modification.exit.thread:                ; preds = %bb.t, %i_uid_needs_update.exit.i, %is_quota_modification.exit
  %i.be = tail call i32 @dquot_initialize(ptr noundef %.val) #19 ; 2 uses
  %.not116 = icmp eq i32 %i.be, 0
  br i1 %.not116, label %is_quota_modification.exit.thread134, label %.thread

is_quota_modification.exit.thread134:             ; preds = %i_uid_needs_update.exit.thread.i, %is_quota_modification.exit.thread, %is_quota_modification.exit
  %i.bf = load i32, ptr %2, align 8               ; 2 uses
  %i.bg = and i32 %i.bf, 2
  %.not.i121 = icmp eq i32 %i.bg, 0
  br i1 %.not.i121, label %i_uid_needs_update.exit.thread, label %i_uid_needs_update.exit

i_uid_needs_update.exit:                          ; preds = %is_quota_modification.exit.thread134
  %i.bh = getelementptr i8, ptr %2, i64 8
  %i.bi = getelementptr i8, ptr %.val, i64 24
  %.val.i = load i32, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val, i64 40
  %.val4.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val4.i, i64 1088
  %.val4.val.i = load ptr, ptr %i.bk, align 64
  %i.bl = tail call i32 @make_vfsuid(ptr noundef %0, ptr noundef %.val4.val.i, i32 %.val.i) #19
  %i.bm = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = icmp ne i32 %i.bm, %i.bl
  %spec.select.i.not.i = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %spec.select.i.not.i, label %bb.v, label %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge

i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge: ; preds = %i_uid_needs_update.exit
  %.pre139 = load i32, ptr %2, align 8
  br label %i_uid_needs_update.exit.thread

i_uid_needs_update.exit.thread:                   ; preds = %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge, %is_quota_modification.exit.thread134
  %i.bp = phi i32 [ %.pre139, %i_uid_needs_update.exit.i_uid_needs_update.exit.thread_crit_edge ], [ %i.bf, %is_quota_modification.exit.thread134 ]
  %i.bq = and i32 %i.bp, 4
  %.not.i122 = icmp eq i32 %i.bq, 0
  br i1 %.not.i122, label %i_gid_needs_update.exit.thread, label %i_gid_needs_update.exit

i_gid_needs_update.exit:                          ; preds = %i_uid_needs_update.exit.thread
  %i.br = getelementptr i8, ptr %2, i64 12
  %i.bs = getelementptr i8, ptr %.val, i64 28
  %.val.i123 = load i32, ptr %i.bs, align 4
  %i.bt = getelementptr i8, ptr %.val, i64 40
  %.val4.i124 = load ptr, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %.val4.i124, i64 1088
  %.val4.val.i125 = load ptr, ptr %i.bu, align 64
  %i.bv = tail call i32 @make_vfsgid(ptr noundef %0, ptr noundef %.val4.val.i125, i32 %.val.i123) #19
  %i.bw = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  %i.by = icmp ne i32 %i.bw, %i.bv
  %spec.select.i.not.i126 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %spec.select.i.not.i126, label %bb.v, label %i_gid_needs_update.exit.thread

bb.v:                                             ; preds = %i_gid_needs_update.exit, %i_uid_needs_update.exit
  %i.bz = tail call i32 @dquot_transfer(ptr noundef %0, ptr noundef %.val, ptr noundef %2) #19 ; 2 uses
  %.not117 = icmp eq i32 %i.bz, 0
  br i1 %.not117, label %i_gid_needs_update.exit.thread, label %.thread

i_gid_needs_update.exit.thread:                   ; preds = %i_uid_needs_update.exit.thread, %bb.v, %i_gid_needs_update.exit
  tail call void @setattr_copy(ptr noundef %0, ptr noundef %.val, ptr noundef %2) #19
  %i.ca = load i32, ptr %2, align 8
  %i.cb = and i32 %i.ca, 1
  %.not118 = icmp eq i32 %i.cb, 0
  br i1 %.not118, label %bb.x, label %bb.w

bb.w:                                             ; preds = %i_gid_needs_update.exit.thread
  %i.cc = load i16, ptr %.val, align 8
  %i.cd = tail call i32 @posix_acl_chmod(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %i.cc) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %i_gid_needs_update.exit.thread
  %.5 = phi i32 [ %i.cd, %bb.w ], [ 0, %i_gid_needs_update.exit.thread ] ; 2 uses
  %i.ce = icmp eq i32 %.5, 0
  %i.cf = trunc nuw i8 %.289 to i1
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cg = tail call { i64, i64 } @inode_set_ctime_current(ptr noundef %.val) #19 ; 0 uses
  %i.ch = trunc nuw i8 %.286 to i1
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr i8, ptr %.val, i64 104
  %.val119 = load i64, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %.val, i64 120
  %.val120 = load i32, ptr %i.cj, align 8
  %i.ck = and i32 %.val120, 2147483647
  %i.cl = getelementptr i8, ptr %.val, i64 96
  store i64 %.val119, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %.val, i64 116
  store i32 %i.ck, ptr %i.cm, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cn = tail call zeroext i1 @inode_maybe_inc_iversion(ptr noundef %.val, i1 noundef zeroext true) #19 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.j, %bb.k, %bb.x, %bb.aa, %bb.v, %is_quota_modification.exit.thread, %bb.d, %bb.a
  %.1 = phi i32 [ %.5, %bb.x ], [ %i.b, %bb.a ], [ -1, %bb.d ], [ %i.be, %is_quota_modification.exit.thread ], [ %i.bz, %bb.v ], [ 0, %bb.aa ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.g ], [ %i.aa, %bb.k ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @shmem_getattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -112
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 -104
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %i.m = load i64, ptr %i.l, align 8
  %.not = icmp eq i64 %i.i, %i.m
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call zeroext i1 @shmem_recalc_inode(ptr noundef %i.d, i64 noundef 0, i64 noundef 0) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr i8, ptr %i.d, i64 -8       ; 3 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, 32
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = or i64 %i.s, 32
  store i64 %i.t, ptr %i.r, align 8
  %.pre = load i32, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %.pre, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.v = and i32 %i.u, 16
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.g, label %bb.f

end_hunk_0
begin_hunk_1_@shmem_file_splice_read:bb.a
  %i.u = load i64, ptr %1, align 8
  %i.v = load volatile i64, ptr %i.p, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !46
  %.not = icmp slt i64 %i.u, %i.v
  br i1 %.not, label %bb.c, label %folio_put.exit100

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %1, align 8
  %i.x = ashr i64 %i.w, 12
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.val.i = load i32, ptr %i.z, align 8
  %i.aa = call fastcc i32 @shmem_get_folio_gfp(ptr noundef %.val, i64 noundef %i.x, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %.val.i, ptr noundef null, ptr noundef null) #20 ; 3 uses
  %.not86 = icmp eq i32 %i.aa, 0
  br i1 %.not86, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %i.aa, -22
  %spec.store.select = select i1 %i.ab, i32 0, i32 %i.aa
  %i.ac = sext i32 %spec.store.select to i64
  %.pre = load ptr, ptr %i.a, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.a, align 8             ; 9 uses
  %.not87 = icmp eq ptr %i.ad, null               ; 2 uses
  br i1 %.not87, label %bb.f, label %folio_file_page.exit

folio_file_page.exit:                             ; preds = %bb.e
  tail call void @folio_unlock(ptr noundef nonnull %i.ad) #19
  %i.ae = load volatile i64, ptr %i.ad, align 8   ; 0 uses
  %i.af = load volatile i64, ptr %i.ad, align 8   ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %folio_file_page.exit, %bb.e
  %i.ag = load volatile i64, ptr %i.p, align 8    ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !46
  %i.ah = load i64, ptr %1, align 8               ; 3 uses
  %.not88 = icmp slt i64 %i.ah, %i.ag
  br i1 %.not88, label %bb.g, label %.thread, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %.0) ; 2 uses
  br i1 %.not87, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load volatile i32, ptr %i.q, align 4    ; 0 uses
  tail call void @folio_mark_accessed(ptr noundef nonnull %i.ad) #19
  %i.al = load i64, ptr %1, align 8
  %i.am = tail call i64 @splice_folio_into_pipe(ptr noundef %2, ptr noundef nonnull %i.ad, i64 noundef %i.al, i64 noundef %i.aj) #19
  %i.an = getelementptr i8, ptr %i.ad, i64 52     ; 2 uses
  %i.ao = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, ptr elementtype(i32) %i.an) #21, !srcloc !33 ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 2
  tail call void @llvm.assume(i1 %i.ap)
  %.not.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i, label %folio_put.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__folio_put(ptr noundef nonnull %i.ad) #19
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.h, %bb.i
  store ptr null, ptr %i.a, align 8
  br label %splice_zeropage_into_pipe.exit

bb.j:                                             ; preds = %bb.g
  %i.aq = and i64 %i.ah, 4095                     ; 2 uses
  %i.ar = sub nuw nsw i64 4096, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ar) ; 3 uses
  %i.at = load i32, ptr %i.e, align 8             ; 2 uses
  %i.au = load i32, ptr %i.f, align 4
  %i.av = load i32, ptr %i.i, align 8
  %i.aw = sub i32 %i.at, %i.au
  %.not.i97 = icmp ult i32 %i.aw, %i.av
  br i1 %.not.i97, label %bb.k, label %splice_zeropage_into_pipe.exit

bb.k:                                             ; preds = %bb.j
  %.val.i.i98 = load i32, ptr %i.r, align 4
  %.val2.i.i = load ptr, ptr %i.s, align 8
  %i.ax = add i32 %.val.i.i98, -1
  %i.ay = and i32 %i.ax, %i.at
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [40 x i8], ptr %.val2.i.i, i64 %i.az ; 5 uses
  %i.bb = load ptr, ptr @__zero_page, align 8
  %i.bc = trunc nuw nsw i64 %i.aq to i32
  %i.bd = trunc nuw nsw i64 %i.as to i32
  store ptr %i.bb, ptr %i.ba, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.bc, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.bd, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr @zero_pipe_buf_ops, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.be = load i32, ptr %i.e, align 8
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.e, align 8
  br label %splice_zeropage_into_pipe.exit

splice_zeropage_into_pipe.exit:                   ; preds = %bb.k, %bb.j, %folio_put.exit
  %.073 = phi i64 [ %i.am, %folio_put.exit ], [ %i.as, %bb.j ], [ %i.as, %bb.k ] ; 4 uses
  %.not91 = icmp eq i64 %.073, 0
  br i1 %.not91, label %folio_put.exit100, label %bb.l

bb.l:                                             ; preds = %splice_zeropage_into_pipe.exit
  %i.bg = add i64 %.073, %.071                    ; 3 uses
  %i.bh = load i64, ptr %1, align 8
  %i.bi = add i64 %i.bh, %.073                    ; 2 uses
  store i64 %i.bi, ptr %1, align 8
  store i64 %i.bi, ptr %i.t, align 8
  %i.bj = load i32, ptr %i.e, align 8
  %i.bk = load i32, ptr %i.f, align 4
  %i.bl = load i32, ptr %i.i, align 8
  %i.bm = sub i32 %i.bj, %i.bk
  %.not110 = icmp ult i32 %i.bm, %i.bl
  br i1 %.not110, label %bb.m, label %folio_put.exit100

bb.m:                                             ; preds = %bb.l
  %i.bn = sub i64 %.0, %.073                      ; 2 uses
  %i.bo = tail call i32 @__SCT__cond_resched() #19 ; 0 uses
  %.not92 = icmp eq i64 %i.bn, 0
  br i1 %.not92, label %folio_put.exit100, label %bb.b, !llvm.loop !113

.thread:                                          ; preds = %bb.f, %bb.d
  %i.bp = phi ptr [ %.pre, %bb.d ], [ %i.ad, %bb.f ] ; 3 uses
  %.175108 = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.f ] ; 3 uses
  %.not93 = icmp eq ptr %i.bp, null
  br i1 %.not93, label %folio_put.exit100, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bq = getelementptr i8, ptr %i.bp, i64 52     ; 2 uses
  %i.br = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bq, ptr elementtype(i32) %i.bq) #21, !srcloc !33 ; 2 uses
  %i.bs = icmp ult i8 %i.br, 2
  tail call void @llvm.assume(i1 %i.bs)
  %.not.i99 = icmp eq i8 %i.br, 0
  br i1 %.not.i99, label %folio_put.exit100, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__folio_put(ptr noundef nonnull %i.bp) #19
  br label %folio_put.exit100

folio_put.exit100:                                ; preds = %bb.b, %splice_zeropage_into_pipe.exit, %bb.l, %bb.m, %bb.o, %bb.n, %.thread
  %.175108123 = phi i64 [ %.175108, %.thread ], [ %.175108, %bb.o ], [ %.175108, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %splice_zeropage_into_pipe.exit ], [ 0, %bb.b ]
  %.172109122 = phi i64 [ %.071, %.thread ], [ %.071, %bb.o ], [ %.071, %bb.n ], [ %.071, %bb.b ], [ %.071, %splice_zeropage_into_pipe.exit ], [ %i.bg, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 40
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = and i32 %i.bu, 262144
  %.not.i101 = icmp eq i32 %i.bv, 0
  br i1 %.not.i101, label %bb.p, label %file_accessed.exit

bb.p:                                             ; preds = %folio_put.exit100
  %i.bw = getelementptr i8, ptr %0, i64 64
  tail call void @touch_atime(ptr noundef %i.bw) #19
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %folio_put.exit100, %bb.p
  %.not94 = icmp eq i64 %.172109122, 0
  %i.bx = select i1 %.not94, i64 %.175108123, i64 %.172109122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %i.bx
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @shmem_fallocate(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.shmem_falloc, align 8       ; 13 uses
  %5 = alloca %struct.wait_queue_head, align 8    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val121 = load ptr, ptr %i.b, align 8          ; 21 uses
  %i.c = getelementptr i8, ptr %.val121, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 864
  %.val = load ptr, ptr %i.e, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.not = icmp ult i32 %1, 4
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !26
  %i.f = getelementptr i8, ptr %.val121, i64 152  ; 2 uses
  tail call void @down_write(ptr noundef %i.f) #19
  %i.g = getelementptr i8, ptr %.val121, i64 -120
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4
  %.not108 = icmp eq i64 %i.i, 0
  br i1 %.not108, label %bb.c, label %.thread135

bb.c:                                             ; preds = %bb.b
  %.not109 = icmp samesign ult i32 %1, 2
  br i1 %.not109, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = add i64 %2, 4095                         ; 2 uses
  %6 = and i64 %i.l, -4096                        ; 3 uses
  %i.m = add i64 %3, %2                           ; 3 uses
  %i.n = and i64 %i.m, -4096                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %5, align 8
  store ptr %i.o, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val121, i64 -124
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 24
  %.not117 = icmp eq i32 %i.s, 0
  br i1 %.not117, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %i.n, -1
  store ptr %5, ptr %4, align 8
  %i.u = lshr i64 %i.l, 12
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = ashr i64 %i.m, 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val121, i64 128  ; 4 uses
  call void @_raw_spin_lock(ptr noundef %i.y) #19
  %i.z = getelementptr i8, ptr %.val121, i64 536  ; 2 uses
  store ptr %4, ptr %i.z, align 8
  call void @_raw_spin_unlock(ptr noundef %i.y) #19
  %i.aa = icmp ugt i64 %i.t, %6
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = sub i64 %i.n, %6
  call void @unmap_mapping_range(ptr noundef %i.k, i64 noundef %6, i64 noundef %i.ab, i32 noundef 0) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = add i64 %i.m, -1
  call fastcc void @shmem_undo_range(ptr noundef %.val121, i64 noundef %2, i64 noundef %i.ac, i1 noundef zeroext false) #20, !srcloc !28
  %i.ad = call { i64, i64 } @inode_set_ctime_current(ptr noundef %.val121) #19 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = getelementptr i8, ptr %.val121, i64 96
  store i64 %i.ae, ptr %i.ag, align 8
  %i.ah = trunc i64 %i.af to i32
  %i.ai = getelementptr i8, ptr %.val121, i64 116
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = call zeroext i1 @inode_maybe_inc_iversion(ptr noundef %.val121, i1 noundef zeroext true) #19 ; 0 uses
  call void @_raw_spin_lock(ptr noundef %i.y) #19
  store ptr null, ptr %i.z, align 8
  %i.ak = call i32 @__wake_up(ptr noundef nonnull %5, i32 noundef 3, i32 noundef 0, ptr noundef null) #19 ; 0 uses
  %i.al = load volatile ptr, ptr %i.o, align 8
  %.not139 = icmp eq ptr %i.al, %i.o
  br i1 %.not139, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  call void asm sideeffect "741: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 741b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 741) #21, !srcloc !114
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str, i32 3655, i32 2307, i64 16) #21, !srcloc !115
  call void asm sideeffect "742: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 742b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 742) #21, !srcloc !116
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_raw_spin_unlock(ptr noundef %i.y) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %.094 = phi i32 [ 0, %bb.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ab

bb.k:                                             ; preds = %bb.c
  %i.am = add i64 %3, %2                          ; 5 uses
  %i.an = tail call i32 @inode_newsize_ok(ptr noundef %.val121, i64 noundef %i.am) #19 ; 2 uses
  %.not110 = icmp eq i32 %i.an, 0
  br i1 %.not110, label %bb.l, label %.thread135

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.val121, i64 -124
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 4
  %.not111 = icmp eq i32 %i.aq, 0
  br i1 %.not111, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr i8, ptr %.val121, i64 80
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp sgt i64 %i.am, %i.as
  br i1 %i.at, label %.thread135, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = ashr i64 %2, 12                         ; 6 uses
  %i.av = add i64 %i.am, 4095
  %i.aw = lshr i64 %i.av, 12                      ; 5 uses
  %i.ax = load i64, ptr %.val, align 8            ; 2 uses
  %.not112 = icmp ne i64 %i.ax, 0
  %i.ay = sub nsw i64 %i.aw, %i.au
  %i.az = icmp ugt i64 %i.ay, %i.ax
  %or.cond = select i1 %.not112, i1 %i.az, i1 false
  br i1 %or.cond, label %.thread135, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %4, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.au, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %i.au, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = getelementptr i8, ptr %.val121, i64 128 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  tail call void @_raw_spin_lock(ptr noundef %i.be) #19
  %i.bf = getelementptr i8, ptr %.val121, i64 536 ; 2 uses
  store ptr %4, ptr %i.bf, align 8
  call void @_raw_spin_unlock(ptr noundef %i.be) #19
  %i.bg = getelementptr i8, ptr %.val121, i64 -16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.aw, ptr %i.bg, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = icmp ult i64 %i.au, %i.aw
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bk = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !11
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 2152
  %i.bn = getelementptr i8, ptr %.val121, i64 48
  br label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %.lr.ph, %bb.x
  %.093142 = phi i64 [ %i.au, %.lr.ph ], [ %i.cj, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !annotation !26
  %i.bo = load volatile i64, ptr %i.bl, align 8
  %i.bp = and i64 %i.bo, 2
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %.val.i = load i64, ptr %i.bm, align 8
  %i.bq = and i64 %.val.i, 256
  %.not114 = icmp eq i64 %i.bq, 0
  br i1 %.not114, label %fatal_signal_pending.exit.thread, label %.thread

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit
  %i.br = load i64, ptr %i.bd, align 8
  %i.bs = load i64, ptr %i.bc, align 8
  %i.bt = icmp ugt i64 %i.br, %i.bs
  br i1 %i.bt, label %.thread, label %bb.r

bb.r:                                             ; preds = %fatal_signal_pending.exit.thread
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 56
  %.val.i122 = load i32, ptr %i.bv, align 8
  %i.bw = call fastcc i32 @shmem_get_folio_gfp(ptr noundef %.val121, i64 noundef %.093142, ptr noundef nonnull %i.a, i32 noundef 4, i32 noundef %.val.i122, ptr noundef null, ptr noundef null) #20 ; 2 uses
  %.not115 = icmp eq i32 %i.bw, 0
  br i1 %.not115, label %bb.t, label %.thread

.thread:                                          ; preds = %fatal_signal_pending.exit.thread, %fatal_signal_pending.exit, %bb.r
  %.296128 = phi i32 [ %i.bw, %bb.r ], [ -12, %fatal_signal_pending.exit.thread ], [ -4, %fatal_signal_pending.exit ]
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bx = icmp ugt i64 %.093142, %i.au
  br i1 %i.bx, label %bb.s, label %.thread130

bb.s:                                             ; preds = %.thread
  %i.by = and i64 %2, -4096
  %i.bz = shl nuw i64 %.093142, 12
  %i.ca = add i64 %i.bz, -1
  call fastcc void @shmem_undo_range(ptr noundef %.val121, i64 noundef %i.by, i64 noundef %i.ca, i1 noundef zeroext true) #20, !srcloc !117
  br label %.thread130

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.a, align 8             ; 8 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 16
  %i.ce = load volatile i64, ptr %i.cb, align 16
  %i.cf = and i64 %i.ce, 64
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %folio_next_index.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr i8, ptr %i.cb, i64 64
  %.val.i.i = load i64, ptr %i.cg, align 16
  %i.ch = and i64 %.val.i.i, 255
  %i.ci = shl nuw i64 1, %i.ch
  br label %folio_next_index.exit

folio_next_index.exit:                            ; preds = %bb.t, %bb.u
  %.0.i.i = phi i64 [ %i.ci, %bb.u ], [ 1, %bb.t ]
  %i.cj = add i64 %.0.i.i, %i.cd                  ; 3 uses
  %.not116 = icmp eq i64 %i.cj, 0
  %spec.select = select i1 %.not116, i64 -1, i64 %i.cj ; 3 uses
  %i.ck = load volatile i64, ptr %i.cb, align 16
  %i.cl = and i64 %i.ck, 8
  %.not140 = icmp eq i64 %i.cl, 0
  br i1 %.not140, label %folio_test_uptodate.exit, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_next_index.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !30
  br label %bb.v

folio_test_uptodate.exit:                         ; preds = %folio_next_index.exit
  %i.cm = load i64, ptr %i.bb, align 8
  %i.cn = sub i64 %spec.select, %i.cm
  %i.co = load i64, ptr %i.bc, align 8
  %i.cp = add i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.bc, align 8
  br label %bb.v

bb.v:                                             ; preds = %folio_test_uptodate.exit.thread, %folio_test_uptodate.exit
  store i64 %spec.select, ptr %i.bb, align 8
  %i.cq = call zeroext i1 @folio_mark_dirty(ptr noundef %i.cb) #19 ; 0 uses
  call void @folio_unlock(ptr noundef %i.cb) #19
  %i.cr = getelementptr i8, ptr %i.cb, i64 52     ; 2 uses
  %i.cs = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cr, ptr elementtype(i32) %i.cr) #21, !srcloc !33 ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 2
  call void @llvm.assume(i1 %i.ct)
  %.not.i123 = icmp eq i8 %i.cs, 0
  br i1 %.not.i123, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__folio_put(ptr noundef %i.cb) #19
  br label %bb.x

.thread130:                                       ; preds = %bb.s, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_1
