inline.NumInlined: 102
inline.NumDeleted: 52
begin_hunk_0_@load_misc_binary:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr i8, ptr %i.cg, i64 32
  %.val.i.i = load ptr, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %.val.i.i, i64 320 ; 3 uses
  %i.ck = load volatile i32, ptr %i.cj, align 4   ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i.i56, label %exe_file_deny_write_access.exit.thread, !prof !21

.lr.ph.i.i56:                                     ; preds = %bb.z, %arch_atomic_try_cmpxchg.exit.i.i
  %.04.i.i = phi i32 [ %i.cr, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.ck, %bb.z ] ; 2 uses
  %i.cm = add i32 %.04.i.i, -1
  %i.cn = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cj, i32 range(i32 2147483647, 0) %i.cm, ptr elementtype(i32) %i.cj, i32 %.04.i.i) #15, !srcloc !22 ; 2 uses
  %i.co = extractvalue { i8, i32 } %i.cn, 0       ; 2 uses
  %i.cp = icmp ult i8 %i.co, 2
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = trunc nuw i8 %i.co to i1
  br i1 %i.cq, label %exe_file_deny_write_access.exit, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i56
  %i.cr = extractvalue { i8, i32 } %i.cn, 1       ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %.lr.ph.i.i56, label %exe_file_deny_write_access.exit.thread, !prof !23

exe_file_deny_write_access.exit.thread:           ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %bb.z
  tail call void @fput(ptr noundef %i.cg) #14
  br label %bb.af

bb.aa:                                            ; preds = %bb.x
  %i.ct = load ptr, ptr %i.bo, align 8
  %i.cu = tail call ptr @open_exec(ptr noundef %i.ct) #14
  br label %exe_file_deny_write_access.exit

exe_file_deny_write_access.exit:                  ; preds = %.lr.ph.i.i56, %bb.y, %bb.aa
  %.1 = phi ptr [ %i.cg, %bb.y ], [ %i.cu, %bb.aa ], [ %i.cg, %.lr.ph.i.i56 ] ; 3 uses
  %i.cv = ptrtoint ptr %.1 to i64
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp ugt ptr %.1, inttoptr (i64 -4096 to ptr)
  br i1 %i.cx, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %exe_file_deny_write_access.exit
  %i.cy = getelementptr i8, ptr %0, i64 72
  store ptr %.1, ptr %i.cy, align 8
  %i.cz = load i64, ptr %i.n, align 8             ; 2 uses
  %i.da = and i64 %i.cz, 1073741824
  %.not53 = icmp eq i64 %i.da, 0
  br i1 %.not53, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = or i8 %i.dc, 1
  store i8 %i.dd, ptr %i.db, align 8
  %.pre = load i64, ptr %i.n, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.de = phi i64 [ %.pre, %bb.ac ], [ %i.cz, %bb.ab ]
  %i.df = and i64 %i.de, 536870912
  %.not54 = icmp eq i64 %i.df, 0
  br i1 %.not54, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8
  %i.di = or i8 %i.dh, 2
  store i8 %i.di, ptr %i.dg, align 8
  br label %bb.af

bb.af:                                            ; preds = %exe_file_deny_write_access.exit.thread, %bb.ad, %bb.ae, %exe_file_deny_write_access.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q
  %.0 = phi i32 [ -2, %bb.q ], [ %i.bj, %bb.u ], [ %i.bq, %bb.v ], [ %i.bv, %bb.w ], [ %i.cw, %exe_file_deny_write_access.exit ], [ %i.bh, %bb.t ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ -26, %exe_file_deny_write_access.exit.thread ] ; 3 uses
  %i.dj = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ax, i32 -1, ptr elementtype(i32) %i.ax) #15, !srcloc !18 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = icmp slt i32 %i.dj, 1
  br i1 %i.dl, label %bb.ah, label %put_binfmt_handler.exit, !prof !19

bb.ah:                                            ; preds = %bb.ag
  tail call void @refcount_warn_saturate(ptr noundef %i.ax, i32 noundef 3) #14
  br label %put_binfmt_handler.exit

bb.ai:                                            ; preds = %bb.af
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !24
  %i.dm = load i64, ptr %i.n, align 8
  %i.dn = and i64 %i.dm, 268435456
  %.not.i57 = icmp eq i64 %i.dn, 0
  br i1 %.not.i57, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr i8, ptr %.05785.i.i, i64 72 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i58, label %exe_file_allow_write_access.exit.i, label %allow_write_access.exit.i.i, !prof !19

allow_write_access.exit.i.i:                      ; preds = %bb.aj
  %i.dq = getelementptr i8, ptr %i.dp, i64 32
  %.val.i.i.i = load ptr, ptr %i.dq, align 8
  %i.dr = getelementptr i8, ptr %.val.i.i.i, i64 320 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dr, ptr elementtype(i32) %i.dr) #15, !srcloc !25
  %.pre.i = load ptr, ptr %i.do, align 8
  br label %exe_file_allow_write_access.exit.i

exe_file_allow_write_access.exit.i:               ; preds = %allow_write_access.exit.i.i, %bb.aj
  %i.ds = phi ptr [ null, %bb.aj ], [ %.pre.i, %allow_write_access.exit.i.i ]
  %i.dt = tail call i32 @filp_close(ptr noundef %i.ds, ptr noundef null) #14 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %exe_file_allow_write_access.exit.i, %bb.ai
  tail call void @kfree(ptr noundef nonnull %.05785.i.i) #14
  br label %put_binfmt_handler.exit

put_binfmt_handler.exit:                          ; preds = %bb.ak, %bb.ah, %bb.ag, %get_binfmt_handler.exit.thread, %load_binfmt_misc.exit
  %.041 = phi i32 [ -8, %get_binfmt_handler.exit.thread ], [ -8, %load_binfmt_misc.exit ], [ %.0, %bb.ag ], [ %.0, %bb.ah ], [ %.0, %bb.ak ]
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @remove_arg_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @copy_string_kernel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bprm_change_interp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal noundef i32 @bm_init_fs_context(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) #6 align 16 prefalign(16) {
bb.a:
  store ptr @bm_context_ops, ptr %0, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bm_kill_sb(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  tail call void @kill_anon_super(ptr noundef %0) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @bm_free(ptr nofree readonly captures(none) %0) #7 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bm_get_tree(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @get_tree_keyed(ptr noundef %0, ptr noundef nonnull @bm_fill_super, ptr noundef nonnull @init_user_ns) #14
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_tree_keyed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bm_fill_super(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 64
  %.not = icmp eq ptr %i.b, @init_user_ns
  br i1 %.not, label %.critedge, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "667: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 667b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 667) #15, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 940, i32 2305, i64 16) #15, !srcloc !27
  tail call void asm sideeffect "668: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 668b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 668) #15, !srcloc !28
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = or i64 %i.d, 6
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %0, i64 1184
  store i32 2, ptr %i.f, align 32
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_user_ns, i64 848), align 16 ; 2 uses
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.i = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef 32) #16 ; 9 uses
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store volatile ptr %i.i, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store volatile ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 16
  store i32 0, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.i, i64 20
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !29
  store volatile ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @init_user_ns, i64 848), align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.026 = phi ptr [ %i.g, %.critedge ], [ %i.i, %bb.d ]
  %i.l = getelementptr i8, ptr %.026, i64 24
  store i8 1, ptr %i.l, align 8
  %i.m = tail call i32 @simple_fill_super(ptr noundef %0, i64 noundef 1112100429, ptr noundef nonnull @bm_fill_super.bm_files) #14 ; 2 uses
  %.not32 = icmp eq i32 %i.m, 0
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 48
  store ptr @s_ops, ptr %i.n, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.c
  %.0 = phi i32 [ -22, %bb.b ], [ -12, %bb.c ], [ 0, %bb.f ], [ %i.m, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bm_status_read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val6 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val6, i64 40
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 1088
  %.val.val = load ptr, ptr %i.c, align 64
  %i.d = getelementptr i8, ptr %.val.val, i64 848
  %.val.val.val = load ptr, ptr %i.d, align 16
  %i.e = getelementptr i8, ptr %.val.val.val, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.g, ptr @.str.7, ptr @.str.8
  %i.i = select i1 %i.g, i64 8, i64 9
  %i.j = tail call i64 @simple_read_from_buffer(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %i.h, i64 noundef %i.i) #14
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -22, 4) i64 @bm_status_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp ugt i64 %2, 3
  br i1 %i.b, label %bb.j, label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !30
  %i.c = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef range(i64 0, 1921) %2) #14
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %copy_from_user.exit.i
  %.not26.i = icmp eq i64 %2, 0
  br i1 %.not26.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 %2
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 10
  %i.h = sext i1 %i.g to i64
  %spec.select.i = add nsw i64 %2, %i.h           ; 2 uses
  %i.i = icmp eq i64 %spec.select.i, 1            ; 2 uses
  %i.j = load i8, ptr %i.a, align 4               ; 3 uses
  %i.k = icmp eq i8 %i.j, 48
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i8 %i.j, 49
  %or.cond7.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %spec.select.i, 2
  %i.n = icmp eq i8 %i.j, 45
  %or.cond11.i = select i1 %i.m, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 49
  %or.cond15.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  br i1 %or.cond15.i, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.r = getelementptr i8, ptr %0, i64 32
  %.val2838 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val2838, i64 40
  %.val39 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val39, i64 1088
  %.val.val40 = load ptr, ptr %i.t, align 64
  %i.u = getelementptr i8, ptr %.val.val40, i64 848
  %.val.val.val41 = load ptr, ptr %i.u, align 16
  %i.v = getelementptr i8, ptr %.val.val.val41, i64 24
  store i8 0, ptr %i.v, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val2845 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val2845, i64 40
  %.val46 = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val46, i64 1088
  %.val.val47 = load ptr, ptr %i.y, align 64
  %i.z = getelementptr i8, ptr %.val.val47, i64 848
  %.val.val.val48 = load ptr, ptr %i.z, align 16
  %i.aa = getelementptr i8, ptr %.val.val.val48, i64 24
  store i8 1, ptr %i.aa, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ab = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %.val28, i64 40
  %.val = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %.val, i64 1088
  %.val.val = load ptr, ptr %i.ad, align 64
  %i.ae = getelementptr i8, ptr %.val.val, i64 848
  %.val.val.val = load ptr, ptr %i.ae, align 16   ; 4 uses
  %i.af = getelementptr i8, ptr %.val, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %.val29 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val29, i64 152  ; 2 uses
  call void @down_write(ptr noundef %i.ai) #14
  %i.aj = load ptr, ptr %.val.val.val, align 8    ; 2 uses
  %.not50 = icmp eq ptr %i.aj, %.val.val.val
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.val.val.val, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.02551 = phi ptr [ %i.aj, %.lr.ph ], [ %.026, %bb.i ] ; 7 uses
  %.026 = load ptr, ptr %.02551, align 8          ; 2 uses
  call void @_raw_write_lock(ptr noundef %i.ak) #14
  %i.al = getelementptr i8, ptr %.02551, i64 8    ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %.02551, align 8          ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  store volatile ptr %i.an, ptr %i.am, align 8
  store volatile ptr %.02551, ptr %.02551, align 8
  store volatile ptr %.02551, ptr %i.al, align 8
  call void @_raw_write_unlock(ptr noundef %i.ak) #14
  %i.ap = getelementptr i8, ptr %.02551, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @locked_recursive_removal(ptr noundef %i.aq, ptr noundef null) #14
  %.not = icmp eq ptr %.026, %.val.val.val
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @up_write(ptr noundef %i.ai) #14
  br label %bb.k

bb.j:                                             ; preds = %copy_from_user.exit.i, %bb.a, %bb.b, %bb.e
  %.024.i.ph = phi i64 [ -22, %bb.e ], [ 0, %bb.b ], [ -22, %bb.a ], [ -14, %copy_from_user.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %._crit_edge, %bb.j
  %.0 = phi i64 [ %.024.i.ph, %bb.j ], [ %2, %._crit_edge ], [ %2, %bb.g ], [ %2, %bb.f ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @locked_recursive_removal(ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
