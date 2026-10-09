Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mempolicy?download=true
inline.NumInlined: 517
inline.NumDeleted: 227
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mpol_parse_str:bb.a
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.045, ptr noundef nonnull dereferenceable(7) @.str.5) #22
  %.not65 = icmp eq i32 %i.r, 0
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.045, ptr noundef nonnull dereferenceable(9) @.str.6) #22
  %.not66 = icmp eq i32 %i.s, 0
  br i1 %.not66, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.047 = phi i16 [ -32768, %bb.q ], [ 0, %bb.p ], [ 16384, %bb.r ]
  %i.t = trunc i32 %i.j to i16                    ; 2 uses
  %i.u = load i64, ptr %2, align 8                ; 4 uses
  switch i16 %i.t, label %bb.w [
    i16 0, label %bb.t
    i16 1, label %bb.u
    i16 4, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %mpol_new.exit.thread77, label %.thread

bb.u:                                             ; preds = %bb.s
  %.not.i34.i = icmp ne i64 %i.u, 0               ; 2 uses
  %brmerge = or i1 %.not64, %.not.i34.i
  %.mux = select i1 %.not.i34.i, i16 1, i16 4
  br i1 %brmerge, label %bb.x, label %.thread

bb.v:                                             ; preds = %bb.s
  %.not.i35.i = icmp eq i64 %i.u, 0
  %or.cond33.i = and i1 %.not64, %.not.i35.i
  br i1 %or.cond33.i, label %bb.x, label %.thread

bb.w:                                             ; preds = %bb.s
  %.not.i36.i = icmp eq i64 %i.u, 0
  br i1 %.not.i36.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v
  %.023.i = phi i16 [ %i.t, %bb.w ], [ %.mux, %bb.u ], [ 4, %bb.v ]
  %i.v = load ptr, ptr @policy_cache, align 8
  %i.w = call noalias align 8 ptr @kmem_cache_alloc_noprof(ptr noundef %i.v, i32 noundef 3264) #22 ; 8 uses
  %.not30.i = icmp eq ptr %i.w, null
  br i1 %.not30.i, label %.thread, label %mpol_new.exit

mpol_new.exit:                                    ; preds = %bb.x
  store volatile i32 1, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4
  store i16 %.023.i, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.w, i64 6
  store i16 %.047, ptr %i.y, align 2
  %i.z = getelementptr i8, ptr %i.w, i64 16
  store i32 -1, ptr %i.z, align 8
  %i.aa = icmp ugt ptr %i.w, inttoptr (i64 -4096 to ptr)
  br i1 %i.aa, label %.thread, label %mpol_new.exit.thread77

mpol_new.exit.thread77:                           ; preds = %bb.t, %mpol_new.exit
  %.0.i79 = phi ptr [ %i.w, %mpol_new.exit ], [ null, %bb.t ] ; 5 uses
  %.not67 = icmp eq i32 %i.j, 1
  br i1 %.not67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %mpol_new.exit.thread77
  %i.ab = getelementptr i8, ptr %.0.i79, i64 8
  %i.ac = load i64, ptr %2, align 8
  store i64 %i.ac, ptr %i.ab, align 8
  br label %arch_set_bit.exit

bb.z:                                             ; preds = %mpol_new.exit.thread77
  %.not68 = icmp eq ptr %.046, null
  br i1 %.not68, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ad = getelementptr i8, ptr %.0.i79, i64 8    ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = load i64, ptr %2, align 8               ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %find_first_bit.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.af = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ae) #25, !srcloc !21
  %i.ag = call i64 @llvm.umin.i64(i64 %i.af, i64 64)
  br label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.ab, %bb.aa
  %i.ah = phi i64 [ %i.ag, %bb.ab ], [ 64, %bb.aa ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, i64 range(i64 -2147483648, 2147483648) %i.ah) #24, !srcloc !34
  br label %arch_set_bit.exit

bb.ac:                                            ; preds = %bb.z
  %i.ai = getelementptr i8, ptr %.0.i79, i64 4
  store i16 4, ptr %i.ai, align 4
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %find_first_bit.exit, %bb.ac, %bb.y
  %i.aj = getelementptr i8, ptr %.0.i79, i64 24
  %i.ak = load i64, ptr %2, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.w, %bb.t, %bb.x, %bb.v, %mpol_new.exit, %bb.r, %bb.g, %bb.e, %bb.d, %arch_set_bit.exit
  %.048 = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.r ], [ %i.w, %mpol_new.exit ], [ %.0.i79, %arch_set_bit.exit ], [ inttoptr (i64 -22 to ptr), %bb.v ], [ null, %bb.e ], [ inttoptr (i64 -12 to ptr), %bb.x ], [ inttoptr (i64 -22 to ptr), %bb.u ], [ inttoptr (i64 -22 to ptr), %bb.w ], [ inttoptr (i64 -22 to ptr), %bb.t ] ; 2 uses
  %.1 = phi ptr [ %i.d, %bb.d ], [ %.046, %bb.g ], [ %.046, %bb.r ], [ %.046, %mpol_new.exit ], [ %.046, %arch_set_bit.exit ], [ %.046, %bb.v ], [ %i.d, %bb.e ], [ %.046, %bb.x ], [ %.046, %bb.u ], [ %.046, %bb.w ], [ %.046, %bb.t ] ; 2 uses
  %.not71 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.r ], [ false, %mpol_new.exit ], [ true, %arch_set_bit.exit ], [ false, %bb.v ], [ false, %bb.e ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.t ] ; 2 uses
  %.044 = phi i32 [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.r ], [ 1, %mpol_new.exit ], [ 0, %arch_set_bit.exit ], [ 1, %bb.v ], [ 1, %bb.e ], [ 1, %bb.x ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.t ] ; 2 uses
  %.not69 = icmp eq ptr %.1, null
  br i1 %.not69, label %.thread81, label %.thread91

.thread91:                                        ; preds = %bb.j, %bb.n, %bb.m, %.thread
  %.044100 = phi i32 [ %.044, %.thread ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.j ]
  %.not7199 = phi i1 [ %.not71, %.thread ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.j ]
  %.198 = phi ptr [ %.1, %.thread ], [ %.046, %bb.m ], [ %.046, %bb.n ], [ %.046, %bb.j ]
  %.04897 = phi ptr [ %.048, %.thread ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.j ]
  %i.al = getelementptr i8, ptr %.198, i64 -1
  store i8 58, ptr %i.al, align 1
  br label %.thread81

.thread81:                                        ; preds = %bb.n, %bb.o, %.thread91, %.thread
  %.04489 = phi i32 [ %.044, %.thread ], [ %.044100, %.thread91 ], [ 1, %bb.o ], [ 0, %bb.n ]
  %.not7188 = phi i1 [ %.not71, %.thread ], [ %.not7199, %.thread91 ], [ false, %bb.o ], [ true, %bb.n ]
  %.04887 = phi ptr [ %.048, %.thread ], [ %.04897, %.thread91 ], [ null, %bb.o ], [ null, %bb.n ]
  %.not70 = icmp eq ptr %.045, null
  br i1 %.not70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread81
  %i.am = getelementptr i8, ptr %.045, i64 -1
  store i8 61, ptr %i.am, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread81
  br i1 %.not7188, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.04887, ptr %1, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %.04489
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @mpol_to_str(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.nodemask_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 0, ptr %3, align 8
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne ptr %2, @default_policy
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %2, @preferred_node_policy
  %i.d = icmp ule ptr %2, getelementptr inbounds nuw (i8, ptr @preferred_node_policy, i64 3024)
  %or.cond3 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 4
  %i.f = load i16, ptr %i.e, align 4              ; 4 uses
  %i.g = getelementptr i8, ptr %2, i64 6
  %i.h = load i16, ptr %i.g, align 2              ; 3 uses
  switch i16 %i.f, label %bb.e [
    i16 0, label %.thread
    i16 4, label %.thread
    i16 1, label %bb.d
    i16 5, label %bb.d
    i16 2, label %bb.d
    i16 3, label %bb.d
    i16 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.i = getelementptr i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  store i64 %i.j, ptr %3, align 8
  %i.k = icmp eq i64 %i.j, 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  tail call void asm sideeffect "759: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 759b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 759) #24, !srcloc !145
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3582, i32 2307, i64 16) #24, !srcloc !146
  tail call void asm sideeffect "760: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 760b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 760) #24, !srcloc !147
  %i.l = sext i32 %1 to i64
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.l, ptr noundef nonnull @.str.7) #22 ; 0 uses
  br label %bb.n

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.c, %bb.d
  %.not.i = phi i1 [ %i.k, %bb.d ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ]
  %.05568 = phi i16 [ %i.f, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.05667.shrunk = phi i16 [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.n = sext i32 %1 to i64                       ; 5 uses
  %i.o = zext nneg i16 %.05568 to i64
  %i.p = getelementptr [8 x i8], ptr @policy_modes, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.n, ptr noundef nonnull @.str.8, ptr noundef %i.q) #22
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 3 uses
  %.not = icmp ult i16 %.05667.shrunk, 8192
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.u = getelementptr i8, ptr %0, i64 %i.n
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %gepdiff = sub nsw i64 %i.n, %i.s
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.t, i64 noundef %gepdiff, ptr noundef nonnull @.str.9) #22
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr i8, ptr %i.t, i64 %i.x     ; 3 uses
  %.not59 = icmp sgt i16 %.05667.shrunk, -1
  br i1 %.not59, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %.not60 = icmp samesign ult i16 %.05667.shrunk, 16384
  br i1 %.not60, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.str.6.sink = phi ptr [ @.str.5, %bb.f ], [ @.str.6, %bb.g ]
  %4 = add nsw i64 %i.s, %i.x
  %gepdiff61 = sub nsw i64 %i.n, %4
  %i.z = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.y, i64 noundef %gepdiff61, ptr noundef nonnull %.str.6.sink) #22
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.0 = phi ptr [ %i.y, %bb.g ], [ %i.ab, %.sink.split ] ; 5 uses
  %i.ac = and i16 %.05667.shrunk, 8192
  %.not63 = icmp eq i16 %i.ac, 0
  br i1 %.not63, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp ult i16 %.05667.shrunk, 16384
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = ptrtoint ptr %.0 to i64
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0, i64 noundef %i.af, ptr noundef nonnull @.str.10) #22
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %.0, i64 %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %.0, %bb.i ], [ %i.ai, %bb.j ]  ; 3 uses
  %i.aj = ptrtoint ptr %.1 to i64
  %i.ak = sub i64 %i.v, %i.aj
  %i.al = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.1, i64 noundef %i.ak, ptr noundef nonnull @.str.11) #22
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %.1, i64 %i.am
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %.thread
  %.2 = phi ptr [ %i.an, %bb.k ], [ %.0, %bb.h ], [ %i.t, %.thread ] ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 %i.n
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.2 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %.2, i64 noundef %i.ar, ptr noundef nonnull @.str.12, i32 noundef 64, ptr noundef nonnull %3) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mempolicy_sysfs_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @mm_kobj, align 8
  %i.b = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.26, ptr noundef %i.a) #22 ; 3 uses
  store ptr %i.b, ptr @mempolicy_sysfs_init.mempolicy_kobj, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @add_weighted_interleave_group(ptr noundef %i.b) #29, !srcloc !148 ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @mempolicy_sysfs_init.mempolicy_kobj, align 8
  tail call void @kobject_del(ptr noundef %i.d) #22
  %i.e = load ptr, ptr @mempolicy_sysfs_init.mempolicy_kobj, align 8
  tail call void @kobject_put(ptr noundef %i.e) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ -12, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none)
declare dso_local i64 @gcd(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @mpol_rebind_default(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #16 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @mpol_new_preferred(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not.i4 = icmp eq i64 %i.a, 0
  br i1 %.not.i4, label %arch_set_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %find_first_bit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.c) #25, !srcloc !21
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.d, i64 64)
  br label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %i.e, %bb.c ], [ 64, %bb.b ]
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.b, i64 range(i64 -2147483648, 2147483648) %i.f) #24, !srcloc !34
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %find_first_bit.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %find_first_bit.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @mpol_rebind_preferred(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1) #17 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %1, align 8
  store i64 %i.b, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal range(i32 -22, 1) i32 @mpol_new_nodemask(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mpol_rebind_nodemask(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.nodemask_t, align 8         ; 5 uses
  %3 = alloca %struct.nodemask_t, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp sgt i16 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, %i.d
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !annotation !36
  %.not13 = icmp samesign ult i16 %i.b, 16384
  br i1 %.not13, label %bb.d, label %mpol_relative_nodemask.exit

mpol_relative_nodemask.exit:                      ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = load i64, ptr %1, align 8
  %i.i = tail call i64 @llvm.read_register.i64(metadata !6)
  %i.j = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.h, i64 %i.i) #25, !srcloc !33 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 1
  tail call void @llvm.write_register.i64(metadata !6, i64 %i.k)
  %i.l = extractvalue { i64, i64 } %i.j, 0
  store i64 0, ptr %2, align 8, !annotation !36
  %i.m = trunc i64 %i.l to i32
  call void @bitmap_fold(ptr noundef nonnull %2, ptr noundef %i.g, i32 noundef %i.m, i32 noundef 64) #22
  call void @bitmap_onto(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %1, i32 noundef 64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  call void @bitmap_remap(ptr noundef nonnull %3, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %1, i32 noundef 64) #22
  %i.p = load i64, ptr %1, align 8
  store i64 %i.p, ptr %i.o, align 8
  br label %thread-pre-split
end_hunk_0
