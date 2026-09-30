Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fsopen?download=true
inline.NumInlined: 19
inline.NumDeleted: 16
begin_hunk_0_@fscontext_read:bb.a
  %i.z = add i8 %i.l, 1
  store i8 %i.z, ptr %i.k, align 1
  tail call void @mutex_unlock(ptr noundef %i.c) #6
  %i.aa = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %fetch_message_locked.exit.thread, %fetch_message_locked.exit
  %.0.i1722 = phi ptr [ %.0.i17.ph, %fetch_message_locked.exit.thread ], [ %i.r, %fetch_message_locked.exit ]
  %i.ab = ptrtoint ptr %.0.i1722 to i64
  br label %__free_kfree.exit

bb.f:                                             ; preds = %fetch_message_locked.exit
  %i.ac = lshr i8 %i.v, %i.n
  %i.ad = trunc i8 %i.ac to i1
  %spec.select = select i1 %i.ad, ptr %i.r, ptr null ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef %i.r) #6
  %sext = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext, 32                ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 2147483647
  br i1 %i.ag, label %bb.g, label %check_copy_size.exit, !prof !10

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "277: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 277b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 277) #7, !srcloc !11
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 57, i32 2307, i64 16) #7, !srcloc !12
  tail call void asm sideeffect "278: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 278b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 278) #7, !srcloc !13
  br label %check_copy_size.exit.thread

check_copy_size.exit:                             ; preds = %bb.f
  %i.ah = tail call i64 @_copy_to_user(ptr noundef %1, ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.af) #6
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 %i.af, i64 -14
  br label %check_copy_size.exit.thread

check_copy_size.exit.thread:                      ; preds = %bb.g, %check_copy_size.exit
  %.0.i = phi i64 [ %i.aj, %check_copy_size.exit ], [ -14, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %spec.select, null
  %i.ak = icmp ugt ptr %spec.select, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.ak
  br i1 %spec.select.i, label %__free_kfree.exit, label %bb.h

bb.h:                                             ; preds = %check_copy_size.exit.thread
  tail call void @kfree(ptr noundef nonnull %i.r) #6
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.e, %bb.b, %check_copy_size.exit.thread, %bb.h
  %.028 = phi i64 [ %.0.i, %bb.h ], [ %.0.i, %check_copy_size.exit.thread ], [ %i.ab, %bb.e ], [ %i.f, %bb.b ]
  ret i64 %.028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @fscontext_release(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  tail call void @put_fs_context(ptr noundef nonnull %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_fsopen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc i64 @__se_sys_fsopen(i64 noundef %i.b, i64 noundef %i.d) #8, !srcloc !14
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @__se_sys_fsopen(i64 noundef %0, i64 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = tail call zeroext i1 @may_mount() #6
  br i1 %i.c, label %bb.b, label %__do_sys_fsopen.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i32 %i.b, 2
  br i1 %.not.i, label %bb.c, label %__do_sys_fsopen.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @strndup_user(ptr noundef %i.a, i64 noundef 4096) #6 ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 -4096 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %__do_sys_fsopen.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @get_fs_type(ptr noundef %i.d) #6 ; 3 uses
  tail call void @kfree(ptr noundef %i.d) #6
  %.not20.i = icmp eq ptr %i.g, null
  br i1 %.not20.i, label %__do_sys_fsopen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @fs_context_for_mount(ptr noundef nonnull %i.g, i32 noundef 0) #6 ; 8 uses
  tail call void @put_filesystem(ptr noundef nonnull %i.g) #6
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 -4096 to ptr)
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %i.h to i64
  br label %__do_sys_fsopen.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %i.h, i64 140      ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -65281
  store i32 %i.m, ptr %i.k, align 4
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.o = tail call noalias noundef align 8 dereferenceable_or_null(80) ptr @__kmalloc_cache_noprof(ptr noundef %i.n, i32 noundef 3520, i64 noundef 80) #9 ; 4 uses
  %i.p = getelementptr i8, ptr %i.h, i64 96
  store ptr %i.o, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store volatile i32 1, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.h, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %.not21.i = icmp eq i32 %i.b, 0
  %i.v = select i1 %.not21.i, i32 2, i32 524290
  %i.w = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.3, ptr noundef nonnull @fscontext_fops, ptr noundef %i.h, i32 noundef %i.v) #6 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %fscontext_create_fd.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @put_fs_context(ptr noundef %i.h) #6
  br label %fscontext_create_fd.exit.i

fscontext_create_fd.exit.i:                       ; preds = %bb.j, %bb.i
  %i.y = sext i32 %i.w to i64
  br label %__do_sys_fsopen.exit

bb.k:                                             ; preds = %bb.h
  tail call void @put_fs_context(ptr noundef %i.h) #6
  br label %__do_sys_fsopen.exit

__do_sys_fsopen.exit:                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.g, %fscontext_create_fd.exit.i, %bb.k
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ -12, %bb.k ], [ %i.y, %fscontext_create_fd.exit.i ], [ -22, %bb.b ], [ -19, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_fsopen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = tail call fastcc i64 @__se_sys_fsopen(i64 noundef %i.c, i64 noundef %i.f) #8, !srcloc !15
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_fspick(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc i64 @__se_sys_fspick(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #8, !srcloc !16
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_fspick(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.path, align 8               ; 8 uses
  %i.a = trunc i64 %0 to i32
  %i.b = inttoptr i64 %1 to ptr
  %i.c = trunc i64 %2 to i32                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.d = tail call zeroext i1 @may_mount() #6
  br i1 %i.d, label %bb.b, label %__do_sys_fspick.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i32 %i.c, 16
  br i1 %.not.i, label %bb.c, label %__do_sys_fspick.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !17
  %4 = and i32 %i.c, 2
  %.not26.i = icmp eq i32 %4, 0
  %spec.select.i = select i1 %.not26.i, i32 5, i32 4 ; 2 uses
  %i.e = and i32 %i.c, 4
  %.not27.i = icmp eq i32 %i.e, 0
  %5 = and i32 %spec.select.i, 1
  %.120.i = select i1 %.not27.i, i32 %spec.select.i, i32 %5
  %i.f = and i32 %i.c, 8
  %i.g = tail call ptr @getname_flags(ptr noundef %i.b, i32 noundef range(i32 0, 9) %i.f) #6 ; 2 uses
  %i.h = call i32 @filename_lookup(i32 noundef %i.a, ptr noundef %i.g, i32 noundef %.120.i, ptr noundef nonnull %3, ptr noundef null) #6 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not29.i = icmp eq ptr %i.k, %i.m
  br i1 %.not29.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @fs_context_for_reconfigure(ptr noundef %i.m, i32 noundef 0, i32 noundef 0) #6 ; 7 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = trunc i64 %i.p to i32
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.n, i64 140      ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -65281
  %i.u = or disjoint i32 %i.t, 1024
  store i32 %i.u, ptr %i.r, align 4
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.w = call noalias noundef align 8 dereferenceable_or_null(80) ptr @__kmalloc_cache_noprof(ptr noundef %i.v, i32 noundef 3520, i64 noundef 80) #9 ; 4 uses
  %i.x = getelementptr i8, ptr %i.n, i64 96
  store ptr %i.w, ptr %i.x, align 8
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store volatile i32 1, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.n, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @path_put(ptr noundef nonnull %3) #6
  %i.ad = shl nuw nsw i32 %i.c, 19
  %i.ae = and i32 %i.ad, 524288
  %i.af = call fastcc i32 @fscontext_create_fd(ptr noundef %i.n, i32 noundef %i.ae) #8, !srcloc !18
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @put_fs_context(ptr noundef %i.n) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.d
  %.0.i = phi i32 [ -22, %bb.d ], [ %i.q, %bb.f ], [ -12, %bb.i ]
  call void @path_put(ptr noundef nonnull %3) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.c
  %.021.in.i = phi i32 [ %i.af, %bb.h ], [ %i.h, %bb.c ], [ %.0.i, %bb.j ]
  %.021.i = sext i32 %.021.in.i to i64
  call void @putname(ptr noundef %i.g) #6
  br label %__do_sys_fspick.exit

__do_sys_fspick.exit:                             ; preds = %bb.a, %bb.b, %bb.k
  %.122.i = phi i64 [ -1, %bb.a ], [ %.021.i, %bb.k ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.122.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_fspick(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
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
  %i.j = tail call fastcc i64 @__se_sys_fspick(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i) #8, !srcloc !19
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_fsconfig(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call fastcc i64 @__se_sys_fsconfig(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j) #8, !srcloc !20
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @__se_sys_fsconfig(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.fs_parameter, align 8       ; 23 uses
  %i.a = trunc i64 %0 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 4 uses
  %i.c = inttoptr i64 %2 to ptr
  %i.d = inttoptr i64 %3 to ptr                   ; 3 uses
  %i.e = trunc i64 %4 to i32                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.f = icmp slt i32 %i.a, 0
  br i1 %i.f, label %__do_sys_fsconfig.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %__do_sys_fsconfig.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 8, label %bb.i
    i32 7, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp ne i64 %3, 0
  %or.cond.i = or i1 %i.g, %i.h
  %i.i = icmp ne i32 %i.e, 0
  %or.cond3.i = or i1 %or.cond.i, %i.i
  br i1 %or.cond3.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %2, 0
  %i.k = icmp eq i64 %3, 0
  %or.cond5.not78.i = or i1 %i.j, %i.k
  %i.l = icmp ne i32 %i.e, 0
  %or.cond7.i = or i1 %or.cond5.not78.i, %i.l
  br i1 %or.cond7.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %2, 0
  %i.n = icmp eq i64 %3, 0
  %or.cond9.not76.i = or i1 %i.m, %i.n
  %i.o = add i32 %i.e, -1048577
  %i.p = icmp ult i32 %i.o, -1048576
  %or.cond13.i = or i1 %or.cond9.not76.i, %i.p
  br i1 %or.cond13.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.q = icmp ne i64 %2, 0
  %i.r = icmp ne i64 %3, 0
  %or.cond15.i = and i1 %i.q, %i.r
  br i1 %or.cond15.i, label %bb.g, label %__do_sys_fsconfig.exit

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ne i32 %i.e, -100
  %i.t = icmp slt i32 %i.e, 0
  %or.cond17.i = and i1 %i.s, %i.t
  br i1 %or.cond17.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %2, 0
  %i.v = icmp ne i64 %3, 0
  %or.cond19.i = or i1 %i.u, %i.v
  %i.w = icmp slt i32 %i.e, 0
  %or.cond21.i = or i1 %or.cond19.i, %i.w
  br i1 %or.cond21.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.x = or i64 %3, %2
  %or.cond23.i = icmp ne i64 %i.x, 0
  %i.y = icmp ne i32 %i.e, 0
  %or.cond25.i = or i1 %or.cond23.i, %i.y
  br i1 %or.cond25.i, label %__do_sys_fsconfig.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %i.z = tail call i64 @fdget(i32 noundef range(i32 0, -2147483648) %i.a) #6 ; 3 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %__do_sys_fsconfig.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = and i64 %i.z, -4
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.ad, @fscontext_fops
  br i1 %.not.i, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
end_hunk_0
