inline.NumInlined: 517
inline.NumDeleted: 227
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@alloc_pages_bulk_mempolicy_noprof:bb.a
  ret i64 %.022
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @alloc_pages_bulk_noprof(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @vma_dup_policy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16             ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %mpol_dup.exit.thread, label %mpol_dup.exit

mpol_dup.exit:                                    ; preds = %bb.a
  %i.c = tail call ptr @__mpol_dup(ptr noundef nonnull readonly %i.b) #23 ; 3 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  br i1 %i.d, label %bb.b, label %mpol_dup.exit.thread

bb.b:                                             ; preds = %mpol_dup.exit
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

mpol_dup.exit.thread:                             ; preds = %bb.a, %mpol_dup.exit
  %.0.i6 = phi ptr [ %i.c, %mpol_dup.exit ], [ null, %bb.a ]
  %i.g = getelementptr i8, ptr %1, i64 112
  store ptr %.0.i6, ptr %i.g, align 16
  br label %bb.c

bb.c:                                             ; preds = %mpol_dup.exit.thread, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %mpol_dup.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__mpol_dup(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.nodemask_t, align 8         ; 4 uses
  %i.a = load ptr, ptr @policy_cache, align 8
  %i.b = tail call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.a, i32 noundef 3264) #22 ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #25, !srcloc !44
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2664
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 2272     ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.h) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_raw_spin_unlock(ptr noundef %i.h) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef align 8 dereferenceable(48) %0, i64 48, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call zeroext i1 @current_cpuset_is_being_rebound() #22
  br i1 %i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.j = tail call i64 @cpuset_mems_allowed(ptr noundef %i.d) #22 ; 2 uses
  store i64 %i.j, ptr %1, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 4
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i16 %i.l, 4
  br i1 %i.m, label %mpol_rebind_policy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.b, i64 6
  %.val.i = load i16, ptr %i.n, align 2
  %.not8.i = icmp ult i16 %.val.i, 16384
  br i1 %.not8.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.b, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %.not.i.i = icmp eq i64 %i.p, %i.j
  br i1 %.not.i.i, label %mpol_rebind_policy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = zext i16 %i.l to i64
  %i.r = getelementptr [16 x i8], ptr @mpol_ops, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #22, !inline_history !29
  br label %mpol_rebind_policy.exit

mpol_rebind_policy.exit:                          ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.j

bb.j:                                             ; preds = %mpol_rebind_policy.exit, %bb.e
  store volatile i32 1, ptr %i.b, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi ptr [ %i.b, %bb.j ], [ inttoptr (i64 -12 to ptr), %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @current_cpuset_is_being_rebound() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @cpuset_mems_allowed(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @__mpol_equal(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %.not = icmp eq i16 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 6
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 6
  %i.j = load i16, ptr %i.i, align 2
  %.not18 = icmp eq i16 %i.h, %i.j
  br i1 %.not18, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %.not19 = icmp eq i32 %i.l, %i.n
  br i1 %.not19, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not20 = icmp ult i16 %i.h, 16384
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.o, align 8
  %i.r = load i64, ptr %i.p, align 8
  %.not.i = icmp eq i64 %i.q, %i.r
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i16 %i.d, label %bb.i [
    i16 2, label %bb.h
    i16 3, label %bb.h
    i16 1, label %bb.h
    i16 5, label %bb.h
    i16 6, label %bb.h
    i16 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.s, align 8
  %i.v = load i64, ptr %i.t, align 8
  %.not.i21 = icmp eq i64 %i.u, %i.v
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "752: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 752b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 752) #24, !srcloc !124
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2872, i32 0, i64 16) #24, !srcloc !125
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %.not.i21, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @mpol_shared_policy_lookup(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  tail call void @_raw_read_lock(ptr noundef %i.b) #22
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %.val, null
  br i1 %.not11.i, label %sp_lookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.02512.i = phi ptr [ %.1.i, %bb.d ], [ %.val, %bb.b ] ; 4 uses
  %i.c = getelementptr i8, ptr %.02512.i, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.not29.i = icmp ult i64 %1, %i.d
  br i1 %.not29.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr i8, ptr %.02512.i, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.not30.i.not = icmp ult i64 %1, %i.f
  br i1 %.not30.i.not, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 8, %.lr.ph.i ], [ 16, %bb.c ]
  %i.g = getelementptr i8, ptr %.02512.i, i64 %.sink.i
  %.1.i = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %sp_lookup.exit.thread, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c, %bb.e
  %.4.i = phi ptr [ %i.h, %bb.e ], [ %.02512.i, %bb.c ] ; 2 uses
  %i.h = tail call ptr @rb_prev(ptr noundef nonnull %.4.i) #22 ; 3 uses
  %.not32.i = icmp eq ptr %i.h, null
  br i1 %.not32.i, label %sp_lookup.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %.not33.i = icmp ugt i64 %i.j, %1
  br i1 %.not33.i, label %.preheader.i, label %sp_lookup.exit

sp_lookup.exit:                                   ; preds = %bb.e, %.preheader.i
  %i.k = getelementptr i8, ptr %.4.i, i64 40      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i13 = icmp eq ptr %i.l, null
  br i1 %.not.i13, label %sp_lookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %sp_lookup.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.l, ptr nonnull elementtype(i32) %i.l) #24, !srcloc !56
  %.pre = load ptr, ptr %i.k, align 8
  br label %sp_lookup.exit.thread

sp_lookup.exit.thread:                            ; preds = %bb.d, %bb.f, %sp_lookup.exit, %bb.b
  %.0 = phi ptr [ %.pre, %bb.f ], [ null, %bb.b ], [ null, %sp_lookup.exit ], [ null, %bb.d ]
  tail call void @_raw_read_unlock(ptr noundef %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %sp_lookup.exit.thread
  %.010 = phi ptr [ %.0, %sp_lookup.exit.thread ], [ null, %bb.a ]
  ret ptr %.010
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mpol_misplaced(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.val = load i64, ptr %0, align 16
  %i.b = lshr i64 %.val, 58                       ; 3 uses
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = load ptr, ptr %1, align 8                ; 5 uses
  %i.e = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #24, !srcloc !126 ; 0 uses
  %i.f = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #27, !srcloc !27 ; 3 uses
  %i.g = load volatile i64, ptr %0, align 16
  %i.h = and i64 %i.g, 64
  %.not.i77 = icmp eq i64 %i.h, 0
  br i1 %.not.i77, label %folio_order.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.i, align 16
  %i.j = trunc i64 %.val.i to i32
  %i.k = and i32 %i.j, 255
  br label %folio_order.exit

folio_order.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  store i64 0, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %i.d, i64 72
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %folio_order.exit
  %i.n = getelementptr i8, ptr %i.m, i64 120
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call ptr %i.o(ptr noundef %i.d, i64 noundef %2, ptr noundef nonnull %i.a) #22, !inline_history !95
  br label %__get_vma_policy.exit.i

bb.e:                                             ; preds = %bb.c, %folio_order.exit
  %i.q = getelementptr i8, ptr %i.d, i64 112
  %i.r = load ptr, ptr %i.q, align 16
  br label %__get_vma_policy.exit.i

__get_vma_policy.exit.i:                          ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.not.i78 = icmp eq ptr %i.s, null
  br i1 %.not.i78, label %bb.f, label %get_task_policy.exit.i

bb.f:                                             ; preds = %__get_vma_policy.exit.i
  %i.t = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #25, !srcloc !44
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 2664
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i15.i = icmp eq ptr %i.w, null
  br i1 %.not.i15.i, label %bb.g, label %get_task_policy.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #27, !srcloc !27 ; 2 uses
  %.not9.i.i = icmp eq i32 %i.x, -1
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [48 x i8], ptr @preferred_node_policy, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load i16, ptr %i.aa, align 4
  %.not10.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not10.i.i, label %bb.i, label %get_task_policy.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %get_task_policy.exit.i

get_task_policy.exit.i:                           ; preds = %bb.i, %bb.h, %bb.f, %__get_vma_policy.exit.i
  %.0.i79 = phi ptr [ %i.s, %__get_vma_policy.exit.i ], [ @default_policy, %bb.i ], [ %i.w, %bb.f ], [ %i.z, %bb.h ] ; 12 uses
  %i.ac = getelementptr i8, ptr %.0.i79, i64 4    ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4
  switch i16 %i.ad, label %get_vma_policy.exit [
    i16 3, label %bb.j
    i16 6, label %bb.j
  ]

bb.j:                                             ; preds = %get_task_policy.exit.i, %get_task_policy.exit.i
  %i.ae = getelementptr i8, ptr %i.d, i64 80
  %i.af = load i64, ptr %i.ae, align 16
  %i.ag = zext nneg i32 %.0.i to i64
  %i.ah = lshr i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.a, align 8
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = load i64, ptr %i.d, align 64
  %i.al = sub i64 %2, %i.ak
  %i.am = add nuw nsw i32 %.0.i, 12
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %i.al, %i.an
  %i.ap = add i64 %i.ao, %i.aj
  store i64 %i.ap, ptr %i.a, align 8
  br label %get_vma_policy.exit

get_vma_policy.exit:                              ; preds = %get_task_policy.exit.i, %bb.j
  %i.aq = getelementptr i8, ptr %.0.i79, i64 6    ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2            ; 2 uses
  %i.as = and i16 %i.ar, 8
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.z, label %bb.k

bb.k:                                             ; preds = %get_vma_policy.exit
  %i.at = load i16, ptr %i.ac, align 4
  switch i16 %i.at, label %bb.w [
    i16 3, label %read_once_policy_nodemask.exit.i
    i16 6, label %bb.q
    i16 1, label %arch_test_bit.exit
    i16 4, label %bb.s
    i16 2, label %bb.t
    i16 5, label %bb.t
  ]

read_once_policy_nodemask.exit.i:                 ; preds = %bb.k
  %i.au = load i64, ptr %i.a, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !100
  %i.av = getelementptr i8, ptr %.0.i79, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 4 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !101
  %i.ax = call i64 @llvm.read_register.i64(metadata !0)
  %i.ay = call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.aw, i64 %i.ax) #25, !srcloc !38 ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 1
  call void @llvm.write_register.i64(metadata !0, i64 %i.az)
  %i.ba = extractvalue { i64, i64 } %i.ay, 0
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  %.not.i80 = icmp eq i64 %i.bb, 0
  br i1 %.not.i80, label %bb.l, label %bb.m

bb.l:                                             ; preds = %read_once_policy_nodemask.exit.i
  %i.bc = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @numa_node) #27, !srcloc !27
  br label %interleave_nid.exit

bb.m:                                             ; preds = %read_once_policy_nodemask.exit.i
  %i.bd = urem i64 %i.au, %i.bb                   ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i32
  %.not.i.i81 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i81, label %find_first_bit.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.aw) #25, !srcloc !19
  %i.bg = call i64 @llvm.umin.i64(i64 %i.bf, i64 64)
  br label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %bb.n, %bb.m
  %i.bh = phi i64 [ %i.bg, %bb.n ], [ 64, %bb.m ] ; 2 uses
  %.not17.i = icmp eq i64 %i.bd, 0
  br i1 %.not17.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_0
