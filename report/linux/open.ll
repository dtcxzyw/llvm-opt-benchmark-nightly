inline.NumInlined: 247
inline.NumDeleted: 137
begin_hunk_0_@do_ftruncate:bb.a
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ag)
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %bb.j, %bb.k
  %i.ah = getelementptr i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = load volatile ptr, ptr %i.aj, align 8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.al = icmp slt i64 %1, 0
  br i1 %i.al, label %do_truncate.exit, label %bb.l

bb.l:                                             ; preds = %sb_start_write.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !11
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.am, align 8
  store i32 104, ptr %3, align 8
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %0, ptr %i.an, align 8
  store i32 8296, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = phi i32 [ 8808, %bb.m ], [ 616, %bb.l ]
  %i.ap = tail call i32 @dentry_needs_remove_privs(ptr noundef %i.ak, ptr noundef %i.b) #14 ; 4 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %do_truncate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not22.i = icmp eq i32 %i.ap, 0
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = or i32 %i.ao, %i.ap
  store i32 %i.ar, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 152
  %i.au = tail call i32 @down_write_killable(ptr noundef %i.at) #14 ; 2 uses
  %.not23.i = icmp eq i32 %i.au, 0
  br i1 %.not23.i, label %bb.r, label %do_truncate.exit

bb.r:                                             ; preds = %bb.q
  %i.av = call i32 @notify_change(ptr noundef %i.ak, ptr noundef %i.b, ptr noundef nonnull %3, ptr noundef null) #14
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 152
  call void @up_write(ptr noundef %i.ax) #14
  br label %do_truncate.exit

do_truncate.exit:                                 ; preds = %sb_start_write.exit, %bb.n, %bb.q, %bb.r
  %.0.i = phi i32 [ %i.av, %bb.r ], [ -22, %sb_start_write.exit ], [ %i.ap, %bb.n ], [ %i.au, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !21
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !28
  %i.ay = load volatile i32, ptr %i.w, align 8
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %do_truncate.exit
  %i.az = getelementptr i8, ptr %i.v, i64 624
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba, ptr elementtype(i32) %i.ba) #13, !srcloc !29
  br label %bb.u

bb.t:                                             ; preds = %do_truncate.exit
  call void @__percpu_up_read(ptr noundef %i.w) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !30
  %i.bb = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !25 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %bb.v, label %sb_end_write.exit, !prof !26

bb.v:                                             ; preds = %bb.u
  %i.be = call i64 @llvm.read_register.i64(metadata !0)
  %i.bf = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #13, !srcloc !31
  call void @llvm.write_register.i64(metadata !0, i64 %i.bf)
  br label %sb_end_write.exit

sb_end_write.exit:                                ; preds = %bb.v, %bb.u, %bb.f, %bb.e, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.d ], [ -1, %bb.e ], [ -22, %bb.a ], [ %i.t, %bb.f ], [ -22, %bb.b ], [ %.0.i, %bb.u ], [ %.0.i, %bb.v ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_file_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ksys_ftruncate(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %fdput.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @fdget(i32 noundef %0) #14 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %fdput.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = tail call i32 @do_ftruncate(ptr noundef %i.d, i64 noundef %1, i32 noundef %2) #15 ; 2 uses
  %i.f = and i64 %i.b, 1
  %.not.i6 = icmp eq i64 %i.f, 0
  br i1 %.not.i6, label %fdput.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @fput(ptr noundef %i.d) #14
  br label %fdput.exit

fdput.exit:                                       ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ -22, %bb.a ], [ %i.e, %bb.d ], [ %i.e, %bb.c ], [ -9, %bb.b ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_ftruncate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %__se_sys_ftruncate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @fdget(i32 noundef %i.f) #14 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %__se_sys_ftruncate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = tail call i32 @do_ftruncate(ptr noundef %i.i, i64 noundef %i.b, i32 noundef 0) #15 ; 2 uses
  %i.k = and i64 %i.g, 1
  %.not.i6.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i6.i.i.i, label %__se_sys_ftruncate.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @fput(ptr noundef %i.i) #14
  br label %__se_sys_ftruncate.exit

__se_sys_ftruncate.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i.i.i = phi i32 [ -22, %bb.a ], [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ -9, %bb.b ]
  %i.l = sext i32 %.1.i.i.i to i64
  ret i64 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_ftruncate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32                 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %__se_sys_ftruncate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i64 @fdget(i32 noundef %i.g) #14 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %__se_sys_ftruncate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = tail call i32 @do_ftruncate(ptr noundef %i.j, i64 noundef %i.c, i32 noundef 0) #15 ; 2 uses
  %i.l = and i64 %i.h, 1
  %.not.i6.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i6.i.i.i, label %__se_sys_ftruncate.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @fput(ptr noundef %i.j) #14
  br label %__se_sys_ftruncate.exit

__se_sys_ftruncate.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i.i.i = phi i32 [ -22, %bb.a ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ -9, %bb.b ]
  %i.m = sext i32 %.1.i.i.i to i64
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_ftruncate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %.not.i = icmp samesign ult i64 %i.c, 2147483648
  br i1 %.not.i, label %bb.b, label %__se_compat_sys_ftruncate.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @fdget(i32 noundef %i.f) #14 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %__se_compat_sys_ftruncate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = tail call i32 @do_ftruncate(ptr noundef %i.i, i64 noundef range(i64 0, 4294967296) %i.c, i32 noundef 0) #15 ; 2 uses
  %i.k = and i64 %i.g, 1
  %.not.i6.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i6.i.i.i, label %__se_compat_sys_ftruncate.exit, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void @fput(ptr noundef %i.i) #14
  br label %__se_compat_sys_ftruncate.exit

__se_compat_sys_ftruncate.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i.i.i = phi i32 [ -22, %bb.a ], [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ -9, %bb.b ]
  %i.l = sext i32 %.1.i.i.i to i64
  ret i64 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @vfs_fallocate(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = icmp slt i64 %2, 0
  %i.c = icmp slt i64 %3, 1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, -252
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i32 %1 to i8
  %trunc = and i8 %i.e, -6
  switch i8 %trunc, label %bb.s [
    i8 0, label %bb.f
    i8 64, label %bb.f
    i8 16, label %bb.f
    i8 2, label %bb.d
    i8 8, label %bb.e
    i8 32, label %bb.e
    i8 -128, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %1, 1
  %.not41 = icmp eq i32 %i.f, 0
  br i1 %.not41, label %bb.s, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.g = and i32 %1, 1
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.c, %bb.c
  %i.h = getelementptr i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 2
  %.not42 = icmp eq i32 %i.j, 0
  br i1 %.not42, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %1, 250
  %.not43 = icmp eq i32 %i.k, 0
  %.phi.trans.insert = getelementptr i8, ptr %.val, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 3 uses
  %i.l = and i32 %.pre, 4
  %.not44 = icmp eq i32 %i.l, 0
  %or.cond57 = select i1 %.not43, i1 true, i1 %.not44
  %i.m = and i32 %.pre, 8
  %.not45 = icmp eq i32 %i.m, 0
  %or.cond58 = select i1 %or.cond57, i1 %.not45, i1 false
  br i1 %or.cond58, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %.pre, 256
  %.not46 = icmp eq i32 %i.n, 0
  br i1 %.not46, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @security_file_permission(ptr noundef %0, i32 noundef 2) #14 ; 2 uses
  %.not47 = icmp eq i32 %i.o, 0
  br i1 %.not47, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.p = load i16, ptr %.val, align 8             ; 2 uses
  %i.q = and i16 %i.p, -4096                      ; 2 uses
  switch i16 %i.q, label %bb.l [
    i16 4096, label %bb.s
    i16 16384, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.r = icmp slt i16 %i.p, -28672
  %i.s = icmp eq i16 %i.q, 24576
  %or.cond49 = or i1 %i.r, %i.s
  br i1 %or.cond49, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = getelementptr i8, ptr %.val, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 32
  %i.aa = icmp sgt i64 %i.v, %i.z
  br i1 %i.aa, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not48 = icmp eq ptr %i.ae, null
  br i1 %.not48, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val50 = load ptr, ptr %i.a, align 8
  tail call fastcc void @file_start_write(ptr %.val50) #15
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i64 %i.ah(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #14
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @fsnotify_modify(ptr noundef %0) #15, !srcloc !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.val51 = load ptr, ptr %i.a, align 8
  tail call fastcc void @file_end_write(ptr %.val51) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b, %bb.a, %bb.r, %bb.k
  %.0 = phi i32 [ -95, %bb.b ], [ -22, %bb.a ], [ -95, %bb.e ], [ -9, %bb.f ], [ -1, %bb.g ], [ -95, %bb.o ], [ -26, %bb.h ], [ -95, %bb.d ], [ %i.o, %bb.i ], [ -21, %bb.k ], [ -19, %bb.l ], [ -27, %bb.m ], [ %i.aj, %bb.r ], [ -27, %bb.n ], [ -29, %bb.j ], [ -95, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_file_permission(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @file_start_write(ptr nofree readonly captures(none) %.32.val) unnamed_addr #4 align 16 {
bb.a:
  %i.a = load i16, ptr %.32.val, align 8
  %i.b = icmp slt i16 %i.a, -28672
  br i1 %i.b, label %bb.b, label %sb_start_write.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.32.val, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 576      ; 2 uses
  %i.f = tail call i32 @__SCT__might_resched() #14 ; 0 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !22
  %i.g = load volatile i32, ptr %i.e, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 624
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #13, !srcloc !23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @__percpu_down_read(ptr noundef %i.e, i1 noundef zeroext false, i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !24
  %i.k = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #13, !srcloc !25 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.f, label %sb_start_write.exit, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.o = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.n) #13, !srcloc !27
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.o)
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @fsnotify_modify(ptr noundef %0) unnamed_addr #4 align 16 prefalign(16) {
end_hunk_0
