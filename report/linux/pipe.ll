Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pipe?download=true
inline.NumInlined: 180
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pipe_fcntl:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %i.ao, label %pipe_is_unprivileged_user.exit.thread.i, label %pipe_is_unprivileged_user.exit.i

pipe_is_unprivileged_user.exit.i:                 ; preds = %bb.i
  %i.ap = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %i.ap, label %pipe_is_unprivileged_user.exit.thread.i, label %bb.k

pipe_is_unprivileged_user.exit.thread.i:          ; preds = %pipe_is_unprivileged_user.exit.i, %bb.i, %bb.h, %bb.f
  %i.aq = tail call i32 @pipe_resize_ring(ptr noundef nonnull %i.b, i32 noundef %i.n) #19 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i32 %i.aq, 0
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %pipe_is_unprivileged_user.exit.thread.i
  %i.at = load i32, ptr %i.o, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 12
  br label %pipe_set_size.exit

bb.k:                                             ; preds = %pipe_is_unprivileged_user.exit.thread.i, %pipe_is_unprivileged_user.exit.i
  %.0.i12 = phi i64 [ %i.ar, %pipe_is_unprivileged_user.exit.thread.i ], [ -1, %pipe_is_unprivileged_user.exit.i ]
  %i.aw = load ptr, ptr %i.u, align 8
  %i.ax = load i32, ptr %i.w, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nsw i64 %i.ay, %i.z
  %i.ba = getelementptr i8, ptr %i.aw, i64 56     ; 2 uses
  %i.bb = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ba, i64 %i.az, ptr elementtype(i64) %i.ba) #15, !srcloc !15 ; 0 uses
  br label %pipe_set_size.exit

bb.l:                                             ; preds = %get_pipe_info.exit
  %i.bc = getelementptr i8, ptr %i.b, i64 80
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 12
  br label %pipe_set_size.exit

pipe_set_size.exit:                               ; preds = %bb.k, %bb.j, %bb.e, %round_pipe_size.exit.i, %bb.c, %get_pipe_info.exit, %bb.l
  %.0 = phi i64 [ %i.bf, %bb.l ], [ -22, %get_pipe_info.exit ], [ -22, %round_pipe_size.exit.i ], [ %.0.i12, %bb.k ], [ %i.av, %bb.j ], [ -1, %bb.e ], [ -22, %bb.c ]
  tail call void @mutex_unlock(ptr noundef nonnull %i.b) #14
  br label %get_pipe_info.exit.thread

get_pipe_info.exit.thread:                        ; preds = %bb.b, %bb.a, %pipe_set_size.exit
  %.09 = phi i64 [ %.0, %pipe_set_size.exit ], [ -9, %bb.a ], [ -9, %bb.b ]
  ret i64 %.09
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_pipe_fs() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @register_filesystem(ptr noundef nonnull @pipe_fs_type) #14 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @kern_mount(ptr noundef nonnull @pipe_fs_type) #14 ; 3 uses
  store ptr %i.b, ptr @pipe_mnt, align 8
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @unregister_filesystem(ptr noundef nonnull @pipe_fs_type) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.e, %bb.c ], [ 0, %bb.b ]
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.11, ptr noundef nonnull @fs_pipe_sysctls, ptr noundef nonnull @.str.12, i64 noundef 3) #14
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @simple_inode_init_ts(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__audit_fd_pair(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @do_pipe2(ptr noundef %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !annotation !18
  %i.c = call fastcc i32 @__do_pipe_flags(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %1) #19, !srcloc !56 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %copy_to_user.exit, label %bb.d

copy_to_user.exit:                                ; preds = %bb.a
  %i.d = call i64 @_copy_to_user(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 8) #14
  %.not4 = icmp eq i64 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !57

bb.b:                                             ; preds = %copy_to_user.exit
  %i.e = load ptr, ptr %i.a, align 16
  call void @fput(ptr noundef %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void @fput(ptr noundef %i.g) #14
  %i.h = load i32, ptr %i.b, align 8
  call void @put_unused_fd(i32 noundef %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4
  call void @put_unused_fd(i32 noundef %i.j) #14
  br label %bb.d

bb.c:                                             ; preds = %copy_to_user.exit
  %i.k = load i32, ptr %i.b, align 8
  %i.l = load ptr, ptr %i.a, align 16
  call void @fd_install(i32 noundef %i.k, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void @fd_install(i32 noundef %i.n, ptr noundef %i.p) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ -14, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @anon_pipe_read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 24
  %.val130 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = icmp eq i64 %.val130, 0
  br i1 %i.e, label %.thread175, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef %i.d) #14
  %i.f = getelementptr i8, ptr %i.d, i64 72       ; 5 uses
  %i.g = getelementptr i8, ptr %i.d, i64 76       ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 84
  %i.i = getelementptr i8, ptr %i.d, i64 152
  %i.j = getelementptr i8, ptr %i.d, i64 80
  %i.k = getelementptr i8, ptr %i.d, i64 96       ; 4 uses
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = getelementptr i8, ptr %i.d, i64 24       ; 3 uses
  br label %.thread233.outer

.thread233.outer:                                 ; preds = %.critedge, %bb.b
  %.0104.ph = phi i1 [ true, %.critedge ], [ false, %bb.b ]
  %.091.ph = phi i8 [ %.394, %.critedge ], [ 0, %bb.b ]
  %.083.ph = phi i64 [ %.3, %.critedge ], [ %.val130, %bb.b ]
  br label %.thread233.outer267

.thread233.outer267:                              ; preds = %.thread233.outer, %bb.k
  %.099.ph = phi i64 [ 0, %.thread233.outer ], [ %i.an, %bb.k ]
  %.091.ph268 = phi i8 [ %.091.ph, %.thread233.outer ], [ %4, %bb.k ] ; 6 uses
  %.083.ph269 = phi i64 [ %.083.ph, %.thread233.outer ], [ %i.be, %bb.k ]
  br label %.thread233

.thread233:                                       ; preds = %.thread233.outer267, %.thread
  %.099 = phi i64 [ %i.an, %.thread ], [ %.099.ph, %.thread233.outer267 ] ; 8 uses
  %.083 = phi i64 [ %i.bf, %.thread ], [ %.083.ph269, %.thread233.outer267 ] ; 5 uses
  %i.o = load volatile i32, ptr %i.f, align 8     ; 3 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !59
  %i.p = load i32, ptr %i.g, align 4              ; 4 uses
  %.not.i = icmp eq i32 %i.o, %i.p
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread233
  %.val = load i32, ptr %i.h, align 4
  %.val129 = load ptr, ptr %i.i, align 8
  %i.q = add i32 %.val, -1
  %i.r = and i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [40 x i8], ptr %.val129, i64 %i.s ; 9 uses
  %i.u = getelementptr i8, ptr %i.t, i64 12       ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ult i64 %.083, %i.w
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.t, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 32
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %.099, 0
  %spec.store.select = select i1 %i.ab, i64 -105, i64 %.099
  br label %.thread166

bb.f:                                             ; preds = %bb.d, %bb.c
  %.089 = phi i64 [ %i.w, %bb.c ], [ %.083, %bb.d ] ; 6 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i133 = icmp eq ptr %i.ae, null
  br i1 %.not.i133, label %pipe_buf_confirm.exit.thread, label %pipe_buf_confirm.exit

pipe_buf_confirm.exit:                            ; preds = %bb.f
  %i.af = call i32 %i.ae(ptr noundef %i.d, ptr noundef %i.t) #14, !inline_history !0 ; 2 uses
  %.not113 = icmp eq i32 %i.af, 0
  br i1 %.not113, label %pipe_buf_confirm.exit.thread, label %bb.g

bb.g:                                             ; preds = %pipe_buf_confirm.exit
  %.not118 = icmp eq i64 %.099, 0
  %i.ag = sext i32 %i.af to i64
  %spec.select = select i1 %.not118, i64 %i.ag, i64 %.099
  br label %.thread166

pipe_buf_confirm.exit.thread:                     ; preds = %bb.f, %pipe_buf_confirm.exit
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = getelementptr i8, ptr %i.t, i64 8       ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = call i64 @copy_page_to_iter(ptr noundef %i.ah, i64 noundef %i.ak, i64 noundef %.089, ptr noundef %1) #14
  %i.am = icmp ult i64 %i.al, %.089
  br i1 %i.am, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %pipe_buf_confirm.exit.thread
  %.not117 = icmp eq i64 %.099, 0
  %spec.store.select1 = select i1 %.not117, i64 -14, i64 %.099
  br label %.thread166

bb.i:                                             ; preds = %pipe_buf_confirm.exit.thread
  %i.an = add i64 %.089, %.099                    ; 5 uses
  %i.ao = load i32, ptr %i.ai, align 8
  %i.ap = trunc nuw i64 %.089 to i32              ; 2 uses
  %i.aq = add i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.ai, align 8
  %i.ar = load i32, ptr %i.u, align 4
  %i.as = sub i32 %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.t, i64 24
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 8
  %.not114 = icmp ne i32 %i.av, 0                 ; 3 uses
  %spec.store.select124 = select i1 %.not114, i32 0, i32 %i.as ; 2 uses
  store i32 %spec.store.select124, ptr %i.u, align 4
  %.not115 = icmp eq i32 %spec.store.select124, 0
  br i1 %.not115, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.t, i64 16      ; 2 uses
  %i.ax = load i32, ptr %i.j, align 8
  %i.ay = sub i32 %i.o, %i.p
  %i.az = icmp uge i32 %i.ay, %i.ax
  %3 = zext i1 %i.az to i8
  %4 = or i8 %.091.ph268, %3                      ; 3 uses
  %i.ba = load ptr, ptr %i.aw, align 8
  store ptr null, ptr %i.aw, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef %i.d, ptr noundef %i.t) #14, !inline_history !58
  %i.bd = add i32 %i.p, 1                         ; 2 uses
  store i32 %i.bd, ptr %i.g, align 4
  %i.be = sub i64 %.083, %.089                    ; 3 uses
  %.not116252 = icmp eq i64 %i.be, 0
  %.not116 = select i1 %.not114, i1 true, i1 %.not116252
  br i1 %.not116, label %.thread166, label %bb.k

.thread:                                          ; preds = %bb.i
  %i.bf = sub i64 %.083, %.089                    ; 2 uses
  %.not116230251 = icmp eq i64 %i.bf, 0
  %.not116230 = select i1 %.not114, i1 true, i1 %.not116230251
  br i1 %.not116230, label %.thread166, label %.thread233

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp eq i32 %i.o, %i.bd
  br i1 %i.bg, label %.loopexit, label %.thread233.outer267

.loopexit:                                        ; preds = %bb.k, %.thread233
  %.3102 = phi i64 [ %.099, %.thread233 ], [ %i.an, %bb.k ] ; 2 uses
  %.394 = phi i8 [ %.091.ph268, %.thread233 ], [ %4, %bb.k ] ; 4 uses
  %.3 = phi i64 [ %.083, %.thread233 ], [ %i.be, %bb.k ]
  %i.bh = load i32, ptr %i.k, align 8
  %.not119 = icmp ne i32 %i.bh, 0
  %.not120 = icmp eq i64 %.3102, 0
  %or.cond = select i1 %.not119, i1 %.not120, i1 false
  br i1 %or.cond, label %bb.l, label %.thread166

bb.l:                                             ; preds = %.loopexit
  %i.bi = load i32, ptr %i.l, align 8
  %i.bj = and i32 %i.bi, 2048
  %.not121 = icmp eq i32 %i.bj, 0
  br i1 %.not121, label %bb.m, label %.thread166

bb.m:                                             ; preds = %bb.l
  %i.bk = load i32, ptr %i.m, align 8
  %i.bl = and i32 %i.bk, 8
  %.not122 = icmp eq i32 %i.bl, 0
  br i1 %.not122, label %bb.n, label %.thread166

bb.n:                                             ; preds = %bb.m
  call void @mutex_unlock(ptr noundef %i.d) #14
  %i.bm = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.bn = load volatile i64, ptr %i.f, align 8    ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bn to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %i.bn, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %i.bo = load volatile i32, ptr %i.k, align 8
  %.not.i.i = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.5.0.extract.trunc.i
  %.not.i135 = icmp eq i32 %i.bo, 0
  %spec.select.i = select i1 %.not.i.i, i1 true, i1 %.not.i135
  br i1 %spec.select.i, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 1) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bp = call i64 @prepare_to_wait_event(ptr noundef %i.n, ptr noundef nonnull %2, i32 noundef 1) #14 ; 2 uses
  %i.bq = load volatile i64, ptr %i.f, align 8    ; 2 uses
  %.sroa.0.0.extract.trunc.i136 = trunc i64 %i.bq to i32
  %.sroa.5.0.extract.shift.i137 = lshr i64 %i.bq, 32
  %.sroa.5.0.extract.trunc.i138 = trunc nuw i64 %.sroa.5.0.extract.shift.i137 to i32
  %i.br = load volatile i32, ptr %i.k, align 8
  %.not.i.i139 = icmp ne i32 %.sroa.0.0.extract.trunc.i136, %.sroa.5.0.extract.trunc.i138
  %.not.i140 = icmp eq i32 %i.br, 0
  %spec.select.i141 = select i1 %.not.i.i139, i1 true, i1 %.not.i140
  br i1 %spec.select.i141, label %.thread162.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not123 = icmp eq i64 %i.bp, 0
  br i1 %.not123, label %bb.r, label %.thread162

bb.r:                                             ; preds = %bb.q
  call void @schedule() #14
  %i.bs = load volatile i64, ptr %i.f, align 8    ; 2 uses
  %.sroa.0.0.extract.trunc.i142 = trunc i64 %i.bs to i32
  %.sroa.5.0.extract.shift.i143 = lshr i64 %i.bs, 32
  %.sroa.5.0.extract.trunc.i144 = trunc nuw i64 %.sroa.5.0.extract.shift.i143 to i32
  %i.bt = load volatile i32, ptr %i.k, align 8
  %.not.i.i145 = icmp ne i32 %.sroa.0.0.extract.trunc.i142, %.sroa.5.0.extract.trunc.i144
  %.not.i146 = icmp eq i32 %i.bt, 0
  %spec.select.i147 = select i1 %.not.i.i145, i1 true, i1 %.not.i146
  br i1 %spec.select.i147, label %.thread162.thread, label %bb.p

.thread162.thread:                                ; preds = %bb.p, %bb.r
  call void @finish_wait(ptr noundef %i.n, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.critedge

.thread162:                                       ; preds = %bb.q
  %i.bu = and i64 %i.bp, 2147483648
  %i.bv = icmp eq i64 %i.bu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.bv, label %.critedge, label %.thread175

.critedge:                                        ; preds = %.thread162.thread, %bb.n, %.thread162
  call void @mutex_lock(ptr noundef %i.d) #14
  br label %.thread233.outer

.thread166:                                       ; preds = %bb.j, %.thread, %bb.m, %bb.l, %.loopexit, %bb.h, %bb.g, %bb.e
  %.495174 = phi i8 [ %.091.ph268, %bb.e ], [ %.091.ph268, %bb.h ], [ %.091.ph268, %bb.g ], [ %4, %bb.j ], [ %.091.ph268, %.thread ], [ %.394, %bb.m ], [ %.394, %bb.l ], [ %.394, %.loopexit ]
  %.4103173 = phi i64 [ %spec.store.select, %bb.e ], [ %spec.store.select1, %bb.h ], [ %spec.select, %bb.g ], [ %i.an, %.thread ], [ %i.an, %bb.j ], [ -11, %bb.l ], [ %.3102, %.loopexit ], [ -11, %bb.m ]
  %.val131 = load i32, ptr %i.f, align 8
  %.val132 = load i32, ptr %i.g, align 4
  %.not.i.i148 = icmp ne i32 %.val131, %.val132
  call void @mutex_unlock(ptr noundef %i.d) #14
  %5 = trunc nuw i8 %.495174 to i1
  br i1 %5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread166
  %i.bw = getelementptr i8, ptr %i.d, i64 48
  call void @__wake_up_sync_key(ptr noundef %i.bw, i32 noundef 1, ptr noundef nonnull inttoptr (i64 260 to ptr)) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread166
  %i.bx = and i1 %.not.i.i148, %.0104.ph
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__wake_up_sync_key(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull inttoptr (i64 65 to ptr)) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.by = getelementptr i8, ptr %i.d, i64 144
  call void @kill_fasync(ptr noundef %i.by, i32 noundef 29, i32 noundef 2) #14
  br label %.thread175

.thread175:                                       ; preds = %.thread162, %bb.a, %bb.v
  %.2 = phi i64 [ %.4103173, %bb.v ], [ 0, %bb.a ], [ -512, %.thread162 ]
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @anon_pipe_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.anon_pipe_prealloc, align 8 ; 9 uses
  %3 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val146 = load i64, ptr %i.d, align 8          ; 4 uses
  %i.e = icmp eq i64 %.val146, 0
  br i1 %i.e, label %bb.ap, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false), !annotation !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.g = icmp ult i64 %.val146, 4097
  br i1 %i.g, label %anon_pipe_get_page_prealloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.val146, 4095
  %i.i = lshr i64 %i.h, 12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 8)
  %.not21.i = icmp eq i32 %i.j, 0
  br i1 %.not21.i, label %anon_pipe_get_page_prealloc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.019.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.l = tail call ptr @alloc_pages_noprof(i32 noundef 5246146, i32 noundef 0) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %anon_pipe_get_page_prealloc.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.f, align 8              ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr [8 x i8], ptr %2, i64 %i.o
  store ptr %i.l, ptr %i.p, align 8
  %i.q = add nuw nsw i32 %.019.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.q, %i.k
  br i1 %exitcond.not.i, label %anon_pipe_get_page_prealloc.exit, label %.lr.ph.i, !llvm.loop !60

anon_pipe_get_page_prealloc.exit:                 ; preds = %.lr.ph.i, %bb.d, %bb.b, %bb.c
  tail call void @mutex_lock(ptr noundef %i.c) #14
  %i.r = getelementptr i8, ptr %i.c, i64 92       ; 6 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %anon_pipe_get_page_prealloc.exit
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 256
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call i32 @send_sig(i32 noundef 13, ptr noundef %i.y, i32 noundef 0) #14 ; 0 uses
  br label %select.unfold

bb.g:                                             ; preds = %anon_pipe_get_page_prealloc.exit
  %i.aa = getelementptr i8, ptr %i.c, i64 72      ; 7 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 76      ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %.not.i150 = icmp eq i32 %i.ab, %i.ad           ; 2 uses
  %i.ae = zext i1 %.not.i150 to i8                ; 5 uses
  %i.af = and i64 %.val146, 4095                  ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %.not.i150
  br i1 %or.cond, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add i32 %i.ab, -1
  %i.ai = getelementptr i8, ptr %i.c, i64 84
  %.val141 = load i32, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.c, i64 152
  %.val142 = load ptr, ptr %i.aj, align 8
  %i.ak = add i32 %.val141, -1
  %i.al = and i32 %i.ak, %i.ah
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [40 x i8], ptr %.val142, i64 %i.am ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 12     ; 3 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 24
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 16
  %.not122 = icmp eq i32 %i.ar, 0
  br i1 %.not122, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr i8, ptr %i.an, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = load i32, ptr %i.ao, align 4
  %i.av = add i32 %i.au, %i.at
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = add nsw i64 %i.af, %i.aw
  %i.ay = icmp ult i64 %i.ax, 4097
  br i1 %i.ay, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.an, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i151 = icmp eq ptr %i.bb, null
  br i1 %.not.i151, label %pipe_buf_confirm.exit.thread, label %pipe_buf_confirm.exit

pipe_buf_confirm.exit:                            ; preds = %bb.j
  %i.bc = tail call i32 %i.bb(ptr noundef %i.c, ptr noundef %i.an) #14, !inline_history !0 ; 2 uses
  %.not123 = icmp eq i32 %i.bc, 0
  br i1 %.not123, label %pipe_buf_confirm.exit.thread, label %bb.k

bb.k:                                             ; preds = %pipe_buf_confirm.exit
  %i.bd = sext i32 %i.bc to i64
  br label %select.unfold

pipe_buf_confirm.exit.thread:                     ; preds = %bb.j, %pipe_buf_confirm.exit
  %i.be = load ptr, ptr %i.an, align 8
  %i.bf = tail call i64 @copy_page_from_iter(ptr noundef %i.be, i64 noundef %i.aw, i64 noundef %i.af, ptr noundef %1) #14 ; 5 uses
  %i.bg = icmp slt i64 %i.bf, %i.af
  br i1 %i.bg, label %select.unfold, label %bb.l, !prof !12

bb.l:                                             ; preds = %pipe_buf_confirm.exit.thread
  %i.bh = load i32, ptr %i.ao, align 4
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = add i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.ao, align 4
  %.val145 = load i64, ptr %i.d, align 8
  %.not124 = icmp eq i64 %.val145, 0
  br i1 %.not124, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.l
  %.pre = load i32, ptr %i.r, align 4
  %i.bk = icmp eq i32 %.pre, 0
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %.2116257 = phi i64 [ %i.bf, %.thread ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.bl = getelementptr i8, ptr %i.c, i64 80      ; 4 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 40      ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 32
  %i.bo = getelementptr i8, ptr %i.c, i64 24
  %i.bp = getelementptr i8, ptr %i.c, i64 136
  %i.bq = getelementptr i8, ptr %i.c, i64 48      ; 2 uses
  %i.br = getelementptr i8, ptr %i.c, i64 120     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.c, i64 128
  %i.bt = getelementptr i8, ptr %i.c, i64 84
  %i.bu = getelementptr i8, ptr %i.c, i64 152
  br label %bb.o

._crit_edge:                                      ; preds = %.backedge, %.thread
  %.3.lcssa = phi i64 [ %i.bf, %.thread ], [ %.3.be, %.backedge ] ; 2 uses
  %.0112.lcssa = phi i8 [ %i.ae, %.thread ], [ %.0112.be, %.backedge ]
  %.0109.lcssa = phi i1 [ false, %.thread ], [ %.0109.be, %.backedge ]
  %i.bv = getelementptr i8, ptr %0, i64 32
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = and i32 %i.bw, 256
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %bb.n

end_hunk_0
