Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/x_tables?download=true
inline.NumInlined: 106
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@xt_check_target:bb.a
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr [8 x i8], ptr @xt_prefix, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = getelementptr i8, ptr %i.aj, i64 88
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8
  %i.ao = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.an) #21 ; 0 uses
  br label %xt_checkentry_target.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ap = getelementptr i8, ptr %0, i64 44        ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = icmp eq i8 %i.aq, 3
  br i1 %i.ar, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr i8, ptr %i.d, i64 110
  %i.at = load i16, ptr %i.as, align 2
  %.not41.i = icmp eq i16 %i.at, 3
  br i1 %.not41.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = tail call i32 @___ratelimit(ptr noundef nonnull @xt_check_target_common._rs.41, ptr noundef nonnull @__func__.xt_check_target_common) #17
  %.not47.i = icmp eq i32 %i.au, 0
  br i1 %.not47.i, label %xt_checkentry_target.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr %i.ap, align 4
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr [8 x i8], ptr @xt_prefix, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %i.ay, ptr noundef %i.ba) #21 ; 0 uses
  br label %xt_checkentry_target.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr i8, ptr %i.d, i64 104
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %.not42.i = icmp eq i32 %i.bd, 0
  br i1 %.not42.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = xor i32 %i.bd, -1
  %i.bh = and i32 %i.bf, %i.bg
  %.not43.i = icmp eq i32 %i.bh, 0
  br i1 %.not43.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !22
  %i.bi = tail call i32 @___ratelimit(ptr noundef nonnull @xt_check_target_common._rs.43, ptr noundef nonnull @__func__.xt_check_target_common) #17
  %.not46.i = icmp eq i32 %i.bi, 0
  br i1 %.not46.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %i.ap, align 4             ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr @xt_prefix, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.be, align 8
  %i.bq = call fastcc ptr @textify_hooks(ptr noundef nonnull %i.a, i32 noundef %i.bp, i8 noundef zeroext %i.bj) #18 ; 0 uses
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 104
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = load i8, ptr %i.ap, align 4
  %i.bv = call fastcc ptr @textify_hooks(ptr noundef nonnull %i.b, i32 noundef %i.bt, i8 noundef zeroext %i.bu) #18 ; 0 uses
  %i.bw = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %xt_checkentry_target.exit

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.bx = getelementptr i8, ptr %i.d, i64 108
  %i.by = load i16, ptr %i.bx, align 4            ; 2 uses
  %.not44.i = icmp ne i16 %i.by, 0
  %i.bz = icmp ne i16 %i.by, %2
  %or.cond.i = or i1 %3, %i.bz
  %or.cond50.i = and i1 %.not44.i, %or.cond.i
  br i1 %or.cond50.i, label %bb.r, label %xt_check_target_common.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call i32 @___ratelimit(ptr noundef nonnull @xt_check_target_common._rs.45, ptr noundef nonnull @__func__.xt_check_target_common) #17
  %.not45.i = icmp eq i32 %i.ca, 0
  br i1 %.not45.i, label %xt_checkentry_target.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %i.ap, align 4
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr @xt_prefix, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %i.ch = getelementptr i8, ptr %i.cf, i64 108
  %i.ci = load i16, ptr %i.ch, align 4
  %i.cj = zext i16 %i.ci to i32
  %i.ck = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %i.ce, ptr noundef %i.cg, i32 noundef %i.cj) #21 ; 0 uses
  br label %xt_checkentry_target.exit

xt_check_target_common.exit:                      ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %i.d, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i12 = icmp eq ptr %i.cm, null
  br i1 %.not.i12, label %xt_check_hooks_target.exit.thread, label %xt_check_hooks_target.exit

xt_check_hooks_target.exit:                       ; preds = %xt_check_target_common.exit
  %i.cn = tail call i32 %i.cm(ptr noundef %0) #17, !inline_history !42 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %xt_checkentry_target.exit, label %xt_check_hooks_target.exit.xt_check_hooks_target.exit.thread_crit_edge

xt_check_hooks_target.exit.xt_check_hooks_target.exit.thread_crit_edge: ; preds = %xt_check_hooks_target.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %xt_check_hooks_target.exit.thread

xt_check_hooks_target.exit.thread:                ; preds = %xt_check_hooks_target.exit.xt_check_hooks_target.exit.thread_crit_edge, %xt_check_target_common.exit
  %i.cp = phi ptr [ %.pre, %xt_check_hooks_target.exit.xt_check_hooks_target.exit.thread_crit_edge ], [ %i.d, %xt_check_target_common.exit ]
  %i.cq = getelementptr i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i14 = icmp eq ptr %i.cr, null
  br i1 %.not.i14, label %bb.v, label %bb.t

bb.t:                                             ; preds = %xt_check_hooks_target.exit.thread
  %i.cs = tail call i32 %i.cr(ptr noundef %0) #17, !inline_history !41 ; 3 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %xt_checkentry_target.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not8.i = icmp eq i32 %i.cs, 0
  br i1 %.not8.i, label %bb.v, label %xt_checkentry_target.exit

bb.v:                                             ; preds = %bb.u, %xt_check_hooks_target.exit.thread
  br label %xt_checkentry_target.exit

xt_checkentry_target.exit:                        ; preds = %bb.s, %bb.k, %bb.g, %bb.c, %bb.j, %bb.p, %bb.f, %bb.b, %bb.r, %bb.v, %bb.u, %bb.t, %xt_check_hooks_target.exit
  %.0 = phi i32 [ %i.cn, %xt_check_hooks_target.exit ], [ -5, %bb.u ], [ 0, %bb.v ], [ %i.cs, %bb.t ], [ -22, %bb.r ], [ -22, %bb.b ], [ -22, %bb.f ], [ -22, %bb.p ], [ -22, %bb.j ], [ -22, %bb.c ], [ -22, %bb.g ], [ -22, %bb.k ], [ -22, %bb.s ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xt_copy_counters(ptr %0, i8 %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult i32 %2, 41
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i8 %1 to i1                        ; 2 uses
  br i1 %i.b, label %copy_from_sockptr.exit.thread, label %copy_from_sockptr.exit

copy_from_sockptr.exit.thread:                    ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(40) %3, ptr noundef align 1 dereferenceable(40) %0, i64 40, i1 false)
  br label %bb.c

copy_from_sockptr.exit:                           ; preds = %bb.b
  %i.c = tail call i64 @_copy_from_user(ptr noundef %3, ptr noundef %0, i64 noundef range(i64 1, 4294967256) 40) #17
  %i.d = and i64 %i.c, 4294967295
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %copy_from_sockptr.exit.thread, %copy_from_sockptr.exit
  %i.e = add i32 %2, -40                          ; 2 uses
  %i.f = getelementptr i8, ptr %3, i64 31
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %3, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4                  ; 4 uses
  %i.k = zext i32 %i.e to i64
  %.not24 = icmp eq i64 %i.j, %i.k
  br i1 %.not24, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @vmalloc_noprof(i64 noundef %i.j) #22 ; 6 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br i1 %i.b, label %copy_from_sockptr_offset.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp slt i32 %i.e, 0
  br i1 %i.n, label %bb.g, label %copy_from_sockptr_offset.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "202: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 202b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #19, !srcloc !13
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.20, i32 57, i32 2307, i64 16) #19, !srcloc !14
  tail call void asm sideeffect "203: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 203b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #19, !srcloc !15
  br label %copy_from_sockptr_offset.exit.thread37

copy_from_sockptr_offset.exit:                    ; preds = %bb.f
  %i.o = tail call i64 @_copy_from_user(ptr noundef nonnull %i.l, ptr noundef %i.m, i64 noundef range(i64 1, 4294967256) %i.j) #17
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %copy_from_sockptr_offset.exit.thread37

copy_from_sockptr_offset.exit.thread:             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.l, ptr noundef align 1 %i.m, i64 range(i64 1, 4294967256) %i.j, i1 false)
  br label %bb.h

copy_from_sockptr_offset.exit.thread37:           ; preds = %bb.g, %copy_from_sockptr_offset.exit
  tail call void @vfree(ptr noundef nonnull %i.l) #17
  br label %bb.h

bb.h:                                             ; preds = %copy_from_sockptr_offset.exit.thread, %bb.d, %bb.c, %copy_from_sockptr.exit, %bb.a, %copy_from_sockptr_offset.exit, %copy_from_sockptr_offset.exit.thread37
  %.0 = phi ptr [ %i.l, %copy_from_sockptr_offset.exit ], [ inttoptr (i64 -22 to ptr), %bb.a ], [ inttoptr (i64 -14 to ptr), %copy_from_sockptr.exit ], [ inttoptr (i64 -22 to ptr), %bb.c ], [ inttoptr (i64 -14 to ptr), %copy_from_sockptr_offset.exit.thread37 ], [ %i.l, %copy_from_sockptr_offset.exit.thread ], [ inttoptr (i64 -12 to ptr), %bb.d ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_noprof(i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xt_alloc_table_info(i32 noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %0, 536870847
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = add nuw nsw i32 %0, 64
  %i.b = zext nneg i32 %narrow to i64
  %i.c = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.b, i64 noundef 1, i32 noundef 4197568, i32 noundef -1) #22 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store i32 %0, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xt_free_table_info(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.d = load i64, ptr @__cpu_possible_mask, align 8
  %i.e = shl nsw i64 -1, %i.c
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %.preheader
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #20, !srcloc !44 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %find_next_bit.exit.thread

bb.b:                                             ; preds = %find_next_bit.exit
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = and i64 %i.g, 63
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @kvfree(ptr noundef %i.m) #17
  %i.n = add nuw nsw i64 %i.g, 1
  %i.o = and i64 %i.n, 127                        ; 2 uses
  %i.p = icmp samesign ugt i64 %i.o, 63
  br i1 %i.p, label %find_next_bit.exit.thread, label %.preheader, !prof !45, !llvm.loop !43

find_next_bit.exit.thread:                        ; preds = %.preheader, %bb.b, %find_next_bit.exit
  %i.q = load ptr, ptr %i.a, align 8
  tail call void @kvfree(ptr noundef %i.q) #17
  br label %bb.c

bb.c:                                             ; preds = %find_next_bit.exit.thread, %bb.a
  tail call void @kvfree(ptr noundef %0) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xt_find_table(ptr nofree noundef captures(address) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @xt_pernet_id, align 4
  tail call void @__rcu_read_lock() #17
  %i.b = getelementptr i8, ptr %0, i64 2984
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @__rcu_read_unlock() #17
  %i.g = load ptr, ptr @xt, align 8
  %i.h = zext i8 %1 to i64                        ; 3 uses
  %i.i = getelementptr [56 x i8], ptr %i.g, i64 %i.h
  tail call void @mutex_lock(ptr noundef %i.i) #17
  %i.j = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.017.in = phi ptr [ %i.j, %bb.a ], [ %.017, %bb.c ]
  %.017 = load ptr, ptr %.017.in, align 8         ; 4 uses
  %.not = icmp eq ptr %.017, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.017, i64 56
  %i.l = tail call i32 @strcmp(ptr noundef %i.k, ptr noundef %2) #17
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.b, !llvm.loop !46

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %.017, %bb.c ], [ null, %bb.b ]
  %i.n = load ptr, ptr @xt, align 8
  %i.o = getelementptr [56 x i8], ptr %i.n, i64 %i.h
  tail call void @mutex_unlock(ptr noundef %i.o) #17
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xt_find_table_lock(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @xt_pernet_id, align 4
  tail call void @__rcu_read_lock() #17
  %i.b = getelementptr i8, ptr %0, i64 2984
  %i.c = load volatile ptr, ptr %i.b, align 8
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @__rcu_read_unlock() #17
  %i.g = load ptr, ptr @xt, align 8
  %i.h = zext i8 %1 to i64                        ; 6 uses
  %i.i = getelementptr [56 x i8], ptr %i.g, i64 %i.h
  tail call void @mutex_lock(ptr noundef %i.i) #17
  %i.j = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.05782 = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not83 = icmp eq ptr %.05782, %i.j
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.05784 = phi ptr [ %.057, %bb.c ], [ %.05782, %bb.a ] ; 4 uses
  %i.k = getelementptr i8, ptr %.05784, i64 56
  %i.l = tail call i32 @strcmp(ptr noundef %i.k, ptr noundef %2) #17
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %.05784, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call zeroext i1 @try_module_get(ptr noundef %i.o) #17
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.057 = load ptr, ptr %.05784, align 8          ; 2 uses
  %.not = icmp eq ptr %.057, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.q = getelementptr [16 x i8], ptr @xt_templates, i64 %i.h ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge
  %.056.in = phi ptr [ %i.q, %._crit_edge ], [ %.056, %bb.e ]
  %.056 = load ptr, ptr %.056.in, align 8         ; 5 uses
  %.not75 = icmp eq ptr %.056, %i.q
  br i1 %.not75, label %.loopexit77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.056, i64 32
  %i.s = tail call i32 @strcmp(ptr noundef %i.r, ptr noundef %2) #17
  %.not62 = icmp eq i32 %i.s, 0
  br i1 %.not62, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.056, i64 24      ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call zeroext i1 @try_module_get(ptr noundef %i.u) #17
  br i1 %i.v, label %bb.g, label %.thread71

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.x = load ptr, ptr @xt, align 8
  %i.y = getelementptr [56 x i8], ptr %i.x, i64 %i.h
  tail call void @mutex_unlock(ptr noundef %i.y) #17
  %i.z = getelementptr i8, ptr %.056, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %0) #17 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %.thread67

.thread:                                          ; preds = %bb.g
end_hunk_0
