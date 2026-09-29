Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/namei?download=true
inline.NumInlined: 729
inline.NumDeleted: 219
begin_hunk_0_@vfs_mkdir:bb.a
  %i.h = getelementptr i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %.not41 = icmp eq ptr %i.i, null
  br i1 %.not41, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call zeroext i16 @mode_strip_sgid(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %3) #18 ; 3 uses
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 80
  %i.l = load i64, ptr %i.k, align 16
  %i.m = and i64 %i.l, 65536
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.d, label %vfs_prepare_mode.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.val.i, i64 88
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 4096
  %.not3.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i, label %bb.e, label %vfs_prepare_mode.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 2056
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i16
  %i.x = xor i16 %i.w, -1
  %i.y = and i16 %i.j, %i.x
  br label %vfs_prepare_mode.exit

vfs_prepare_mode.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i16 [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.y, %bb.e ]
  %i.z = and i16 %.0.i.i, 1023                    ; 2 uses
  %i.aa = tail call i32 @security_inode_mkdir(ptr noundef %1, ptr noundef %2, i16 noundef zeroext %i.z) #18 ; 2 uses
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %bb.f, label %bb.m

bb.f:                                             ; preds = %vfs_prepare_mode.exit
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %1, i64 72
  %i.ac = load i32, ptr %i.ab, align 8
  %.not44 = icmp ult i32 %i.ac, %i.d
  br i1 %.not44, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr i8, ptr %1, i64 2
  %i.ae = load volatile i16, ptr %i.ad, align 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !57
  %i.af = and i16 %i.ae, 256
  %.not.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i.i, label %try_break_deleg.exit.thread, label %locks_inode_context.exit.i.i, !prof !31

locks_inode_context.exit.i.i:                     ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %1, i64 336
  %i.ah = load volatile ptr, ptr %i.ag, align 8   ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i47, label %try_break_deleg.exit.thread, label %bb.i

bb.i:                                             ; preds = %locks_inode_context.exit.i.i
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !58
  %i.ai = getelementptr i8, ptr %i.ah, i64 40     ; 3 uses
  %i.aj = load volatile ptr, ptr %i.ai, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !59
  %.not.i8.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i8.i.i, label %list_empty_careful.exit.i.i, label %break_deleg.exit.i

list_empty_careful.exit.i.i:                      ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 48
  %i.al = load volatile ptr, ptr %i.ak, align 8
  %.not12.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not12.i.i, label %try_break_deleg.exit.thread, label %break_deleg.exit.i

break_deleg.exit.i:                               ; preds = %list_empty_careful.exit.i.i, %bb.i
  %i.am = tail call i32 @__break_lease(ptr noundef %1, i32 noundef 42) #18 ; 3 uses
  %i.an = icmp eq i32 %i.am, -11
  %i.ao = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.ao, %i.an
  br i1 %or.cond.i, label %try_break_deleg.exit.thread50, label %try_break_deleg.exit

try_break_deleg.exit.thread50:                    ; preds = %break_deleg.exit.i
  store ptr %1, ptr %4, align 8
  tail call void @ihold(ptr noundef %1) #18
  br label %bb.m

try_break_deleg.exit:                             ; preds = %break_deleg.exit.i
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %try_break_deleg.exit.thread, label %bb.m

try_break_deleg.exit.thread:                      ; preds = %bb.h, %list_empty_careful.exit.i.i, %locks_inode_context.exit.i.i, %try_break_deleg.exit
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call ptr %i.ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %i.z) #18 ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp ugt ptr %i.as, inttoptr (i64 -4096 to ptr)
  br i1 %i.av, label %bb.m, label %bb.j

bb.j:                                             ; preds = %try_break_deleg.exit.thread
  %.not46 = icmp eq ptr %i.as, null
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @dput(ptr noundef %2) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.035 = phi ptr [ %i.as, %bb.k ], [ %2, %bb.j ] ; 2 uses
  tail call fastcc void @fsnotify_mkdir(ptr noundef %1, ptr noundef %.035) #19, !srcloc !170
  br label %bb.o

bb.m:                                             ; preds = %try_break_deleg.exit.thread50, %try_break_deleg.exit.thread, %try_break_deleg.exit, %bb.g, %vfs_prepare_mode.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.aa, %vfs_prepare_mode.exit ], [ -31, %bb.g ], [ %i.am, %try_break_deleg.exit ], [ %i.au, %try_break_deleg.exit.thread ], [ -1, %bb.b ], [ -11, %try_break_deleg.exit.thread50 ]
  %i.aw = icmp ugt ptr %2, inttoptr (i64 -4096 to ptr)
  br i1 %i.aw, label %end_creating.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 152
  tail call void @up_write(ptr noundef %i.bb) #18
  tail call void @dput(ptr noundef %2) #18
  br label %end_creating.exit

end_creating.exit:                                ; preds = %bb.m, %bb.n
  %i.bc = sext i32 %.0 to i64
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %bb.o

bb.o:                                             ; preds = %end_creating.exit, %bb.l
  %.034 = phi ptr [ %i.bd, %end_creating.exit ], [ %.035, %bb.l ]
  ret ptr %.034
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_inode_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @fsnotify_mkdir(ptr noundef %0, ptr noundef %1) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 16             ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %audit_inode_child.exit, label %audit_dummy_context.exit.i

audit_dummy_context.exit.i:                       ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %audit_inode_child.exit, !prof !26

bb.b:                                             ; preds = %audit_dummy_context.exit.i
  tail call void @__audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #18
  br label %audit_inode_child.exit

audit_inode_child.exit:                           ; preds = %bb.a, %audit_dummy_context.exit.i, %bb.b
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 904
  %i.j = load volatile ptr, ptr %i.i, align 8     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %fsnotify_dirent.exit, label %fsnotify_sb_has_watchers.exit.i.i

fsnotify_sb_has_watchers.exit.i.i:                ; preds = %audit_inode_child.exit
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load volatile i64, ptr %i.k, align 8
  %.not.i.i4 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i4, label %fsnotify_dirent.exit, label %bb.c

bb.c:                                             ; preds = %fsnotify_sb_has_watchers.exit.i.i
  %i.m = tail call i32 @fsnotify(i32 noundef range(i32 64, 1342177281) 1073742080, ptr noundef %1, i32 noundef 4, ptr noundef %0, ptr noundef %i.f, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  br label %fsnotify_dirent.exit

fsnotify_dirent.exit:                             ; preds = %audit_inode_child.exit, %fsnotify_sb_has_watchers.exit.i.i, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @filename_mkdirat(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.path, align 8               ; 6 uses
  %4 = alloca %struct.delegated_inode, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i64 0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.a
  %.0.ph = phi i32 [ 130, %bb.j ], [ 2, %bb.a ]   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %break_deleg_wait.exit
  %i.b = call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %.0.ph) #19, !srcloc !171 ; 3 uses
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = trunc i64 %i.d to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.j = getelementptr i8, ptr %.val, i64 80
  %i.k = load i64, ptr %i.j, align 16
  %i.l = and i64 %i.k, 65536
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %mode_strip_umask.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.val, i64 88
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4096
  %.not3.i = icmp eq i64 %i.o, 0
  br i1 %.not3.i, label %bb.f, label %mode_strip_umask.exit

bb.f:                                             ; preds = %bb.e
  %i.p = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25 ; 0 uses
  br label %mode_strip_umask.exit

mode_strip_umask.exit:                            ; preds = %bb.d, %bb.e, %bb.f
  %i.q = load ptr, ptr %3, align 8                ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load volatile ptr, ptr %i.r, align 8
  %i.t = call ptr @vfs_mkdir(ptr noundef %i.s, ptr noundef %i.h, ptr noundef %i.b, i16 noundef zeroext %2, ptr noundef nonnull %4) #19 ; 4 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  br i1 %i.u, label %.thread, label %bb.g

.thread:                                          ; preds = %mode_strip_umask.exit
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = trunc i64 %i.v to i32
  br label %end_creating_path.exit

bb.g:                                             ; preds = %mode_strip_umask.exit
  %i.x = getelementptr i8, ptr %i.t, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 152
  call void @up_write(ptr noundef %i.ab) #18
  call void @dput(ptr noundef %i.t) #18
  br label %end_creating_path.exit

end_creating_path.exit:                           ; preds = %.thread, %bb.g
  %.01827 = phi i32 [ %i.w, %.thread ], [ 0, %bb.g ]
  call void @mnt_drop_write(ptr noundef %i.q) #18
  call void @dput(ptr noundef %i.f) #18
  call void @mntput(ptr noundef %i.q) #18
  %.val24 = load ptr, ptr %4, align 8             ; 5 uses
  %.not28 = icmp eq ptr %.val24, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %end_creating_path.exit
  %i.ac = getelementptr i8, ptr %.val24, i64 2
  %i.ad = load volatile i16, ptr %i.ac, align 2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !57
  %i.ae = and i16 %i.ad, 256
  %.not.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i, label %break_deleg_wait.exit, label %locks_inode_context.exit.i.i, !prof !31

locks_inode_context.exit.i.i:                     ; preds = %bb.h
  %i.af = getelementptr i8, ptr %.val24, i64 336
  %i.ag = load volatile ptr, ptr %i.af, align 8   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %break_deleg_wait.exit, label %bb.i

bb.i:                                             ; preds = %locks_inode_context.exit.i.i
  call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !58
  %i.ah = getelementptr i8, ptr %i.ag, i64 40     ; 3 uses
  %i.ai = load volatile ptr, ptr %i.ah, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !59
  %.not.i8.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i8.i.i, label %list_empty_careful.exit.i.i, label %list_empty_careful.exit.thread.i.i

list_empty_careful.exit.i.i:                      ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.ag, i64 48
  %i.ak = load volatile ptr, ptr %i.aj, align 8
  %.not12.i.i = icmp eq ptr %i.ah, %i.ak
  br i1 %.not12.i.i, label %break_deleg_wait.exit, label %list_empty_careful.exit.thread.i.i

list_empty_careful.exit.thread.i.i:               ; preds = %list_empty_careful.exit.i.i, %bb.i
  %i.al = call i32 @__break_lease(ptr noundef nonnull %.val24, i32 noundef 2) #18
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %bb.h, %locks_inode_context.exit.i.i, %list_empty_careful.exit.i.i, %list_empty_careful.exit.thread.i.i
  %.0.i.i = phi i32 [ 0, %locks_inode_context.exit.i.i ], [ %i.al, %list_empty_careful.exit.thread.i.i ], [ 0, %list_empty_careful.exit.i.i ], [ 0, %bb.h ] ; 2 uses
  call void @iput(ptr noundef nonnull %.val24) #18
  store ptr null, ptr %4, align 8
  %.not = icmp eq i32 %.0.i.i, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.j:                                             ; preds = %break_deleg_wait.exit, %end_creating_path.exit
  %.1 = phi i32 [ %.0.i.i, %break_deleg_wait.exit ], [ %.01827, %end_creating_path.exit ] ; 2 uses
  %5 = icmp eq i32 %.1, -116
  %6 = and i32 %.0.ph, 128
  %i.am = icmp eq i32 %6, 0
  %i.an = and i1 %i.am, %5
  br i1 %i.an, label %.outer, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.c
  %.020 = phi i32 [ %i.e, %bb.c ], [ %.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_mkdirat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc i64 @__se_sys_mkdirat(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #19, !srcloc !172
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_mkdirat(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = inttoptr i64 %1 to ptr
  %i.c = trunc i64 %2 to i16
  %i.d = tail call fastcc ptr @do_getname(ptr noundef %i.b, i32 noundef 0, i1 noundef zeroext false) #19, !srcloc !19 ; 7 uses
  %i.e = tail call i32 @filename_mkdirat(i32 noundef %i.a, ptr noundef %i.d, i16 noundef zeroext %i.c) #19
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.f = icmp ugt ptr %i.d, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i.i = or i1 %.not.i.i.i, %i.f
  br i1 %spec.select.i.i.i, label %__do_sys_mkdirat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  switch i32 %i.h, label %.critedge.i.i [
    i32 1, label %bb.d
    i32 0, label %bb.c
  ], !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "751: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 751b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 751) #17, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 302, i32 2307, i64 16) #17, !srcloc !29
  tail call void asm sideeffect "752: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 752b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 752) #17, !srcloc !30
  br label %__do_sys_mkdirat.exit

.critedge.i.i:                                    ; preds = %bb.b
  %i.i = add i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8
  br label %__do_sys_mkdirat.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.d, i64 24
  %.not13.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not13.i.i, label %bb.f, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef %i.j) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call ptr asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr___names_cache,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #20, !srcloc !32
  tail call void @kmem_cache_free(ptr noundef %i.l, ptr noundef nonnull %i.d) #18
  br label %__do_sys_mkdirat.exit

__do_sys_mkdirat.exit:                            ; preds = %bb.a, %bb.c, %.critedge.i.i, %bb.f
  %i.m = sext i32 %i.e to i64
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_mkdirat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call fastcc i64 @__se_sys_mkdirat(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i) #19, !srcloc !173
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_mkdir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_mkdir(i64 noundef %i.b, i64 noundef %i.d) #19, !srcloc !174
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_mkdir(i64 noundef %0, i64 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = trunc i64 %1 to i16
  %i.c = tail call fastcc ptr @do_getname(ptr noundef %i.a, i32 noundef 0, i1 noundef zeroext false) #19, !srcloc !19 ; 7 uses
  %i.d = tail call i32 @filename_mkdirat(i32 noundef -100, ptr noundef %i.c, i16 noundef zeroext %i.b) #19
  %.not.i.i.i = icmp eq ptr %i.c, null
  %i.e = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i.i = or i1 %.not.i.i.i, %i.e
  br i1 %spec.select.i.i.i, label %__do_sys_mkdir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  switch i32 %i.g, label %.critedge.i.i [
    i32 1, label %bb.d
    i32 0, label %bb.c
  ], !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "751: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 751b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 751) #17, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 302, i32 2307, i64 16) #17, !srcloc !29
  tail call void asm sideeffect "752: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 752b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 752) #17, !srcloc !30
  br label %__do_sys_mkdir.exit

.critedge.i.i:                                    ; preds = %bb.b
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8
  br label %__do_sys_mkdir.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 24
  %.not13.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not13.i.i, label %bb.f, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef %i.i) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call ptr asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr___names_cache,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #20, !srcloc !32
  tail call void @kmem_cache_free(ptr noundef %i.k, ptr noundef nonnull %i.c) #18
  br label %__do_sys_mkdir.exit

__do_sys_mkdir.exit:                              ; preds = %bb.a, %bb.c, %.critedge.i.i, %bb.f
  %i.l = sext i32 %i.d to i64
  ret i64 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_mkdir(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_mkdir(i64 noundef %i.c, i64 noundef %i.f) #19, !srcloc !175
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @vfs_rmdir(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @may_delete_dentry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 16
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %dget.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %2, i64 128
  tail call void @lockref_get(ptr noundef %i.f) #18
  br label %dget.exit

dget.exit:                                        ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %2, i64 48         ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 152
  tail call void @down_write(ptr noundef %i.i) #18
  %.val.i = load i32, ptr %2, align 8
  %i.j = and i32 %.val.i, 32768
  %.not.i41 = icmp eq i32 %i.j, 0
  br i1 %.not.i41, label %is_local_mountpoint.exit.thread, label %is_local_mountpoint.exit

is_local_mountpoint.exit:                         ; preds = %dget.exit
end_hunk_0
