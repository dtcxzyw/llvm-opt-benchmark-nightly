Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/inet_hashtables?download=true
inline.NumInlined: 321
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@inet_ehash_insert:bb.a
  %i.be = getelementptr i8, ptr %0, i64 8         ; 3 uses
  store i32 %.0.i, ptr %i.be, align 8
  %.val35 = load ptr, ptr %.val.val, align 64
  %i.bf = getelementptr i8, ptr %.val.val, i64 16
  %.val36 = load i32, ptr %i.bf, align 16
  %i.bg = and i32 %.val36, %.0.i
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr [8 x i8], ptr %.val35, i64 %i.bh ; 4 uses
  %i.bj = getelementptr i8, ptr %.val.val, i64 8
  %.val37 = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val.val, i64 20
  %.val38 = load i32, ptr %i.bk, align 4
  %i.bl = and i32 %.val38, %.0.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %.val37, i64 %i.bm ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.bn) #18
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %sk_ehashfn.exit
  %i.bo = load i32, ptr %i.be, align 8
  %i.bp = getelementptr i8, ptr %1, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %.not33 = icmp eq i32 %i.bo, %i.bq
  br i1 %.not33, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "1218: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1218b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1218) #19, !srcloc !60
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 725, i32 2307, i64 16) #19, !srcloc !61
  tail call void asm sideeffect "1219: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1219b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1219) #19, !srcloc !62
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.br = getelementptr i8, ptr %1, i64 112       ; 3 uses
  %.val.i39 = load ptr, ptr %i.br, align 8
  %.not.i.i.i.i.not = icmp eq ptr %.val.i39, null
  br i1 %.not.i.i.i.i.not, label %__sk_nulls_add_node_rcu.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr i8, ptr %1, i64 104
  %i.bt = getelementptr i8, ptr %0, i64 104       ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8            ; 3 uses
  store volatile ptr %i.bu, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.br, align 8
  store volatile ptr %i.bv, ptr %i.c, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !63
  %i.bw = load ptr, ptr %i.c, align 8
  store volatile ptr %i.bt, ptr %i.bw, align 8
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i, label %bb.k, label %hlist_nulls_replace_init_rcu.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr i8, ptr %i.bu, i64 8
  store volatile ptr %i.bt, ptr %i.bz, align 8
  br label %hlist_nulls_replace_init_rcu.exit.i

hlist_nulls_replace_init_rcu.exit.i:              ; preds = %bb.k, %bb.j
  store volatile ptr null, ptr %i.br, align 8
  %i.ca = getelementptr i8, ptr %1, i64 128       ; 3 uses
  %i.cb = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ca, i32 -1, ptr elementtype(i32) %i.ca) #19, !srcloc !22
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.l, label %__sk_nulls_add_node_rcu.exit, !prof !16

bb.l:                                             ; preds = %hlist_nulls_replace_init_rcu.exit.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ca, i32 noundef 4) #18
  br label %__sk_nulls_add_node_rcu.exit

bb.m:                                             ; preds = %sk_ehashfn.exit
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr i8, ptr %0, i64 12
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 20
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %.val.i40 = load ptr, ptr %i.a, align 8         ; 2 uses
  %i.ch = load i64, ptr %0, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !64
  %i.ci = load volatile ptr, ptr %i.bi, align 8   ; 2 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not51.i = icmp eq i64 %i.ck, 0
  br i1 %.not51.i, label %.lr.ph.i, label %inet_ehash_lookup_by_sk.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.cl = load i32, ptr %i.be, align 8
  %i.cm = getelementptr i8, ptr %0, i64 56
  %i.cn = getelementptr i8, ptr %0, i64 72
  %i.co = getelementptr i8, ptr %0, i64 64
  %i.cp = getelementptr i8, ptr %0, i64 80
  br label %bb.o

bb.o:                                             ; preds = %inet_match.exit.thread.i, %.lr.ph.i
  %.03752.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %i.dt, %inet_match.exit.thread.i ] ; 14 uses
  %i.cq = getelementptr i8, ptr %.03752.i, i64 -104
  %i.cr = getelementptr i8, ptr %.03752.i, i64 -96
  %i.cs = load i32, ptr %i.cr, align 8
  %.not39.i = icmp eq i32 %i.cs, %i.cl
  br i1 %.not39.i, label %bb.p, label %inet_match.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ct = load i16, ptr %i.d, align 8
  switch i16 %i.ct, label %inet_match.exit.thread.i [
    i16 2, label %bb.q
    i16 10, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr i8, ptr %.03752.i, i64 -56
  %.val.i.i41 = load ptr, ptr %i.cu, align 8
  %.not.i.i42 = icmp eq ptr %.val.i.i41, %.val.i40
  br i1 %.not.i.i42, label %bb.r, label %inet_match.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %.03752.i, i64 -92
  %i.cw = load volatile i32, ptr %i.cv, align 4
  %.not12.i.i = icmp eq i32 %i.cw, %i.ce
  br i1 %.not12.i.i, label %bb.s, label %inet_match.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cx = load i64, ptr %i.cq, align 8
  %.not13.i.i = icmp eq i64 %i.cx, %i.ch
  br i1 %.not13.i.i, label %bb.t, label %inet_match.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr i8, ptr %.03752.i, i64 -84
  %i.cz = load volatile i32, ptr %i.cy, align 4   ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.cz, 0
  %i.da = icmp eq i32 %i.cz, %i.cg
  %or.cond.i = select i1 %.not.i.i.i.i43, i1 true, i1 %i.da, !prof !65
  br i1 %or.cond.i, label %bb.aa, label %inet_match.exit.thread.i, !prof !65

bb.u:                                             ; preds = %bb.p
  %i.db = getelementptr i8, ptr %.03752.i, i64 -56
  %.val.i40.i = load ptr, ptr %i.db, align 8
  %.not.i41.i = icmp eq ptr %.val.i40.i, %.val.i40
  br i1 %.not.i41.i, label %bb.v, label %inet_match.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr i8, ptr %.03752.i, i64 -88
  %i.dd = load i16, ptr %i.dc, align 8
  %.not15.i.i = icmp eq i16 %i.dd, 10
  br i1 %.not15.i.i, label %bb.w, label %inet_match.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr i8, ptr %.03752.i, i64 -92
  %i.df = load volatile i32, ptr %i.de, align 4
  %.not16.i.i = icmp eq i32 %i.df, %i.ce
  br i1 %.not16.i.i, label %bb.x, label %inet_match.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr i8, ptr %.03752.i, i64 -48
  %.val21.i.i = load i64, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %.03752.i, i64 -40
  %.val22.i.i = load i64, ptr %i.dh, align 8
  %.val23.i.i = load i64, ptr %i.cm, align 8
  %.val24.i.i = load i64, ptr %i.co, align 8
  %i.di = icmp eq i64 %.val21.i.i, %.val23.i.i
  %i.dj = icmp eq i64 %.val22.i.i, %.val24.i.i
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %bb.y, label %inet_match.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr i8, ptr %.03752.i, i64 -32
  %.val17.i.i = load i64, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %.03752.i, i64 -24
  %.val18.i.i = load i64, ptr %i.dm, align 8
  %.val19.i.i = load i64, ptr %i.cn, align 8
  %.val20.i.i = load i64, ptr %i.cp, align 8
  %i.dn = icmp eq i64 %.val17.i.i, %.val19.i.i
  %i.do = icmp eq i64 %.val18.i.i, %.val20.i.i
  %i.dp = and i1 %i.dn, %i.do
  br i1 %i.dp, label %bb.z, label %inet_match.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr i8, ptr %.03752.i, i64 -84
  %i.dr = load volatile i32, ptr %i.dq, align 4   ; 2 uses
  %.not.i.i.i43.i = icmp eq i32 %i.dr, 0
  %i.ds = icmp eq i32 %i.dr, %i.cg
  %or.cond50.i = select i1 %.not.i.i.i43.i, i1 true, i1 %i.ds, !prof !66
  br i1 %or.cond50.i, label %bb.aa, label %inet_match.exit.thread.i, !prof !66

inet_match.exit.thread.i:                         ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.dt = load volatile ptr, ptr %.03752.i, align 8 ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, 1
  %.not.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i, label %bb.o, label %inet_ehash_lookup_by_sk.exit, !llvm.loop !56

inet_ehash_lookup_by_sk.exit:                     ; preds = %inet_match.exit.thread.i, %bb.n
  store i8 0, ptr %2, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t, %bb.z
  store i8 1, ptr %2, align 1
  br label %__sk_nulls_add_node_rcu.exit

bb.ab:                                            ; preds = %bb.m, %inet_ehash_lookup_by_sk.exit
  %i.dw = getelementptr i8, ptr %0, i64 104       ; 3 uses
  %i.dx = load ptr, ptr %i.bi, align 8            ; 3 uses
  store volatile ptr %i.dx, ptr %i.dw, align 8
  store volatile ptr %i.bi, ptr %i.c, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !25
  store volatile ptr %i.dw, ptr %i.bi, align 8
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i44 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i44, label %bb.ac, label %__sk_nulls_add_node_rcu.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr i8, ptr %i.dx, i64 8
  store volatile ptr %i.dw, ptr %i.ea, align 8
  br label %__sk_nulls_add_node_rcu.exit

__sk_nulls_add_node_rcu.exit:                     ; preds = %bb.l, %hlist_nulls_replace_init_rcu.exit.i, %bb.i, %bb.ac, %bb.ab, %bb.aa
  %.1 = phi i1 [ true, %bb.ac ], [ false, %bb.aa ], [ true, %bb.ab ], [ false, %bb.i ], [ true, %hlist_nulls_replace_init_rcu.exit.i ], [ true, %bb.l ]
  tail call void @_raw_spin_unlock(ptr noundef %i.bn) #18
  ret i1 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @inet_ehash_nolisten(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @inet_ehash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21 ; 2 uses
  br i1 %i.a, label %bb.b, label %sock_set_flag.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %.val, i64 704
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = getelementptr i8, ptr %i.d, i64 208
  %i.i = load i32, ptr %i.h, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.g, i64 %i.j ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, ptr elementtype(i32) %i.k) #19, !srcloc !26
  br label %bb.c

sock_set_flag.exit:                               ; preds = %bb.a
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @tcp_orphan_count, ptr nonnull elementtype(i32) @tcp_orphan_count) #19, !srcloc !27
  tail call void @inet_sk_set_state(ptr noundef %0, i32 noundef 7) #18
  %i.l = getelementptr i8, ptr %0, i64 96
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, i64 range(i64 0, 24) 0) #19, !srcloc !28
  tail call void @inet_csk_destroy_sock(ptr noundef %0) #18
  br label %bb.c

bb.c:                                             ; preds = %sock_set_flag.exit, %bb.b
  ret i1 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inet_sk_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inet_csk_destroy_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @inet_hash(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i44.i = alloca i32, align 4            ; 3 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %.val33 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val33, i64 1152
  %.val33.val = load ptr, ptr %i.b, align 64      ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.d = load volatile i8, ptr %i.c, align 2
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i8, ptr %i.c, align 2
  %.not = icmp eq i8 %i.f, 10
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !13
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !15
  %i.h = tail call zeroext i1 @inet_ehash_insert(ptr noundef %0, ptr noundef null, ptr noundef null) #21
  br i1 %i.h, label %bb.d, label %sock_set_flag.exit.i

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %.val.i, i64 704
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = getelementptr i8, ptr %i.j, i64 208
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, ptr elementtype(i32) %i.q) #19, !srcloc !26
  br label %inet_ehash_nolisten.exit

sock_set_flag.exit.i:                             ; preds = %bb.c
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @tcp_orphan_count, ptr nonnull elementtype(i32) @tcp_orphan_count) #19, !srcloc !27
  tail call void @inet_sk_set_state(ptr noundef %0, i32 noundef 7) #18
  %i.r = getelementptr i8, ptr %0, i64 96
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 range(i64 0, 24) 0) #19, !srcloc !28
  tail call void @inet_csk_destroy_sock(ptr noundef %0) #18
  br label %inet_ehash_nolisten.exit

inet_ehash_nolisten.exit:                         ; preds = %bb.d, %sock_set_flag.exit.i
  tail call void @__local_bh_enable_ip(i64 noundef %i.g, i32 noundef 512) #18
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.t = load i16, ptr %i.s, align 8
  %i.u = icmp eq i16 %i.t, 10
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @inet6_init_ehash_secret() #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @inet_init_ehash_secret.___once_key, i1 false) #19
          to label %inet_init_ehash_secret.exit [label %bb.h], !srcloc !29

bb.h:                                             ; preds = %bb.g
  %i.v = tail call zeroext i1 @__do_once_sleepable_start(ptr noundef nonnull @inet_init_ehash_secret.___done) #18
  br i1 %i.v, label %bb.i, label %inet_init_ehash_secret.exit, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @get_random_bytes(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 100), i64 noundef 4) #18
  tail call void @__do_once_sleepable_done(ptr noundef nonnull @inet_init_ehash_secret.___done, ptr noundef nonnull @inet_init_ehash_secret.___once_key, ptr noundef null) #18
  br label %inet_init_ehash_secret.exit

inet_init_ehash_secret.exit:                      ; preds = %bb.g, %bb.h, %bb.i
  %i.w = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %.val34 = load ptr, ptr %i.w, align 8
  %.not.i.i = icmp eq ptr %.val34, null
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !17

bb.j:                                             ; preds = %inet_init_ehash_secret.exit
  tail call void asm sideeffect "1224: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1224b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1224) #19, !srcloc !69
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 805, i32 2305, i64 16) #19, !srcloc !70
  tail call void asm sideeffect "1225: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1225b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1225) #19, !srcloc !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %inet_init_ehash_secret.exit
  %i.x = load i16, ptr %i.s, align 8
  %i.y = icmp eq i16 %i.x, 10
  %.val14.i = load ptr, ptr %i.a, align 8         ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = getelementptr i8, ptr %0, i64 14
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr i8, ptr %.val14.i, i64 648
  %.val15.i = load i32, ptr %i.ad, align 8
  %i.ae = tail call fastcc i32 @ipv6_portaddr_hash(i32 %.val15.i, ptr noundef readonly %i.z, i32 noundef %i.ac) #21
  br label %inet_lhash2_bucket_sk.exit

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr i8, ptr %0, i64 14
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr i8, ptr %.val14.i, i64 648
  %.val16.i = load i32, ptr %i.ak, align 8
  %i.al = add i32 %.val16.i, -559038733           ; 4 uses
  %i.am = add i32 %i.al, %i.ag
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 14)
  %i.ao = sub i32 0, %i.an                        ; 4 uses
  %i.ap = xor i32 %i.am, %i.ao
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 11)
  %i.ar = sub i32 %i.ap, %i.aq                    ; 4 uses
  %i.as = xor i32 %i.ar, %i.al
  %i.at = tail call noundef i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 25)
  %i.au = sub i32 %i.as, %i.at                    ; 4 uses
  %i.av = xor i32 %i.au, %i.ao
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 16)
  %i.ax = sub i32 %i.av, %i.aw                    ; 4 uses
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 4)
  %i.ba = sub i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = tail call noundef i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 14)
  %i.bd = sub i32 %i.bb, %i.bc                    ; 3 uses
  %i.be = xor i32 %i.bd, %i.ax
  %i.bf = tail call noundef i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 24)
  %i.bg = sub i32 %i.be, %i.bf
  %i.bh = xor i32 %i.bg, %i.aj
  br label %inet_lhash2_bucket_sk.exit

inet_lhash2_bucket_sk.exit:                       ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.ae, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = getelementptr i8, ptr %.val33.val, i64 60
  %.val17.i = load i32, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %.val33.val, i64 64
  %.val18.i = load ptr, ptr %i.bj, align 64
  %i.bk = and i32 %.val17.i, %.0.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr [16 x i8], ptr %.val18.i, i64 %i.bl ; 5 uses
  tail call void @_raw_spin_lock(ptr noundef %i.bm) #18
  %i.bn = getelementptr i8, ptr %0, i64 19        ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = and i8 %i.bo, 16
  %.not30 = icmp eq i8 %i.bp, 0
  br i1 %.not30, label %sock_set_flag.exit, label %bb.n

bb.n:                                             ; preds = %inet_lhash2_bucket_sk.exit
  %i.bq = getelementptr i8, ptr %0, i64 1096
  %i.br = load ptr, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bs = getelementptr i8, ptr %0, i64 528
end_hunk_0
