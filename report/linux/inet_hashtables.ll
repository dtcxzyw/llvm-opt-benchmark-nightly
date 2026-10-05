Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/inet_hashtables?download=true
inline.NumInlined: 321
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@inet_lookup_run_sk_lookup:bb.a
  store i8 %.040.lcssa.i, ptr %i.l, align 4
  %i.bf = load i16, ptr %i.o, align 8             ; 2 uses
  %i.bg = icmp ugt i16 %i.bf, 1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  %i.bh = add i16 %i.bf, -1
  store i16 %i.bh, ptr %i.o, align 8
  br label %__migrate_enable.exit.i

bb.m:                                             ; preds = %._crit_edge.i
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.bi = getelementptr i8, ptr %i.n, i64 1112
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.n, i64 1128
  %.not.i53.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i53.i, label %bb.o, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  call void @___migrate_enable() #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !43
  store i16 0, ptr %i.o, align 8
  %i.bl = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #22, !srcloc !44
  %i.bm = add i64 %i.bl, ptrtoint (ptr @runqueues to i64)
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr i8, ptr %i.bn, i64 3312   ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !37
  %i.br = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #19, !srcloc !38 ; 2 uses
  %i.bs = icmp ult i8 %i.br, 2
  call void @llvm.assume(i1 %i.bs)
  %i.bt = trunc nuw i8 %i.br to i1
  br i1 %i.bt, label %bb.p, label %__migrate_enable.exit.i, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.bu = call i64 @llvm.read_register.i64(metadata !0)
  %i.bv = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.bu) #19, !srcloc !39
  call void @llvm.write_register.i64(metadata !0, i64 %i.bv)
  br label %__migrate_enable.exit.i

__migrate_enable.exit.i:                          ; preds = %bb.p, %bb.o, %bb.l
  %i.bw = icmp ne ptr %.042.lcssa.i, null
  %i.bx = select i1 %.038.lcssa.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %bpf_sk_lookup_run_v4.exit, label %bpf_sk_lookup_run_v4.exit.thread26

bpf_sk_lookup_run_v4.exit.thread26:               ; preds = %__migrate_enable.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @__rcu_read_unlock() #18
  br label %.thread

bpf_sk_lookup_run_v4.exit:                        ; preds = %__migrate_enable.exit.i
  %i.by = load ptr, ptr %i.j, align 8             ; 8 uses
  %i.bz = load i8, ptr %i.l, align 4, !range !19, !noundef !20
  %i.ca = trunc nuw i8 %i.bz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @__rcu_read_unlock() #18
  br i1 %i.ca, label %.thread, label %bb.q

bb.q:                                             ; preds = %bpf_sk_lookup_run_v4.exit
  %.not.i = icmp eq ptr %i.by, null
  %i.cb = icmp ugt ptr %i.by, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.cb
  br i1 %spec.select.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr i8, ptr %i.by, i64 19
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i8 %i.cd, 16
  %.not.i20 = icmp eq i8 %i.ce, 0
  br i1 %.not.i20, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp eq ptr %9, @udp_ehashfn
  br i1 %i.cf, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.cg = call i32 @udp_ehashfn(ptr noundef %0, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %4, i16 noundef zeroext %5) #18
  br label %inet_lookup_reuseport.exit

bb.u:                                             ; preds = %bb.s
  %i.ch = icmp eq ptr %9, @inet_ehashfn
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.ci = call i32 @inet_ehashfn(ptr noundef %0, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %4, i16 noundef zeroext %5) #21
  br label %inet_lookup_reuseport.exit

bb.w:                                             ; preds = %bb.u
  %i.cj = call i32 %9(ptr noundef %0, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %4, i16 noundef zeroext %5) #18, !inline_history !45
  br label %inet_lookup_reuseport.exit

inet_lookup_reuseport.exit:                       ; preds = %bb.t, %bb.v, %bb.w
  %i.ck = phi i32 [ %i.cg, %bb.t ], [ %i.ci, %bb.v ], [ %i.cj, %bb.w ]
  %i.cl = call ptr @reuseport_select_sock(ptr noundef nonnull %i.by, i32 noundef %i.ck, ptr noundef %2, i32 noundef %3) #18 ; 2 uses
  %.not = icmp eq ptr %i.cl, null
  %spec.select = select i1 %.not, ptr %i.by, ptr %i.cl
  br label %.thread

.thread:                                          ; preds = %inet_lookup_reuseport.exit, %bb.r, %bpf_sk_lookup_run_v4.exit.thread26, %bpf_sk_lookup_run_v4.exit.thread, %bpf_sk_lookup_run_v4.exit, %bb.q
  %.0 = phi ptr [ %i.by, %bpf_sk_lookup_run_v4.exit ], [ %i.by, %bb.q ], [ %spec.select, %inet_lookup_reuseport.exit ], [ %i.by, %bb.r ], [ null, %bpf_sk_lookup_run_v4.exit.thread ], [ inttoptr (i64 -111 to ptr), %bpf_sk_lookup_run_v4.exit.thread26 ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__inet_lookup_listener(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @bpf_sk_lookup_enabled, i1 false) #19
          to label %arch_static_branch.exit [label %bb.b], !srcloc !18

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @inet_lookup_run_sk_lookup(ptr noundef %0, i32 noundef 6, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull @inet_ehashfn) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %arch_static_branch.exit, label %bb.d

arch_static_branch.exit:                          ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 1152
  %i.c = load ptr, ptr %i.b, align 64             ; 2 uses
  %i.d = zext i16 %6 to i32                       ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 648        ; 2 uses
  %.val47 = load i32, ptr %i.e, align 8
  %i.f = add i32 %.val47, -559038733              ; 4 uses
  %i.g = add i32 %i.f, %5
  %i.h = tail call noundef i32 @llvm.fshl.i32(i32 %i.f, i32 %i.f, i32 14)
  %i.i = sub i32 0, %i.h                          ; 4 uses
  %i.j = xor i32 %i.g, %i.i
  %i.k = tail call noundef i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 11)
  %i.l = sub i32 %i.j, %i.k                       ; 4 uses
  %i.m = xor i32 %i.l, %i.f
  %i.n = tail call noundef i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 25)
  %i.o = sub i32 %i.m, %i.n                       ; 4 uses
  %i.p = xor i32 %i.o, %i.i
  %i.q = tail call noundef i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 16)
  %i.r = sub i32 %i.p, %i.q                       ; 4 uses
  %i.s = xor i32 %i.r, %i.l
  %i.t = tail call noundef i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 4)
  %i.u = sub i32 %i.s, %i.t                       ; 3 uses
  %i.v = xor i32 %i.u, %i.o
  %i.w = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.u, i32 14)
  %i.x = sub i32 %i.v, %i.w                       ; 3 uses
  %i.y = xor i32 %i.x, %i.r
  %i.z = tail call noundef i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 24)
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.d
  %i.ac = getelementptr i8, ptr %i.c, i64 60      ; 2 uses
  %.val50 = load i32, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.c, i64 64      ; 2 uses
  %.val51 = load ptr, ptr %i.ad, align 64
  %i.ae = and i32 %i.ab, %.val50
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [16 x i8], ptr %.val51, i64 %i.af
  %i.ah = tail call fastcc ptr @inet_lhash2_lookup(ptr noundef %0, ptr noundef %i.ag, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #21, !srcloc !46 ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %arch_static_branch.exit
  %.val = load i32, ptr %i.e, align 8
  %i.ai = add i32 %.val, -559038733               ; 4 uses
  %i.aj = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 14)
  %i.ak = sub i32 0, %i.aj                        ; 4 uses
  %i.al = xor i32 %i.ai, %i.ak
  %i.am = tail call noundef i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 11)
  %i.an = sub i32 %i.al, %i.am                    ; 4 uses
  %i.ao = xor i32 %i.an, %i.ai
  %i.ap = tail call noundef i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 25)
  %i.aq = sub i32 %i.ao, %i.ap                    ; 4 uses
  %i.ar = xor i32 %i.aq, %i.ak
  %i.as = tail call noundef i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 16)
  %i.at = sub i32 %i.ar, %i.as                    ; 4 uses
  %i.au = xor i32 %i.at, %i.an
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 4)
  %i.aw = sub i32 %i.au, %i.av                    ; 3 uses
  %i.ax = xor i32 %i.aw, %i.aq
  %i.ay = tail call noundef i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 14)
  %i.az = sub i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = xor i32 %i.az, %i.at
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 24)
  %i.bc = sub i32 %i.ba, %i.bb
  %i.bd = xor i32 %i.bc, %i.d
  %.val48 = load i32, ptr %i.ac, align 4
  %.val49 = load ptr, ptr %i.ad, align 64
  %i.be = and i32 %i.bd, %.val48
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr [16 x i8], ptr %.val49, i64 %i.bf
  %i.bh = tail call fastcc ptr @inet_lhash2_lookup(ptr noundef %0, ptr noundef %i.bg, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef 0, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #21, !srcloc !47
  br label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit, %bb.b, %bb.c
  %.043 = phi ptr [ %i.a, %bb.b ], [ %i.ah, %arch_static_branch.exit ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bi = icmp ugt ptr %.043, inttoptr (i64 -4096 to ptr)
  %..043 = select i1 %i.bi, ptr null, ptr %.043
  ret ptr %..043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @inet_lhash2_lookup(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !49
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %10 = zext i16 %7 to i32
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not46 = icmp eq i64 %i.d, 0
  br i1 %.not46, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %11 = getelementptr i8, ptr %0, i64 648
  %12 = zext i16 %5 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %inet_lookup_reuseport.exit.thread
  %.03449 = phi ptr [ null, %.lr.ph ], [ %.1, %inet_lookup_reuseport.exit.thread ]
  %.03548 = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %inet_lookup_reuseport.exit.thread ] ; 10 uses
  %.03647 = phi i32 [ 0, %.lr.ph ], [ %.137, %inet_lookup_reuseport.exit.thread ] ; 2 uses
  %i.e = getelementptr i8, ptr %.03548, i64 -104  ; 3 uses
  %i.f = getelementptr i8, ptr %.03548, i64 -56
  %.val.i.a = load ptr, ptr %i.f, align 8
  %.not.i.a = icmp eq ptr %.val.i.a, %0
  br i1 %.not.i.a, label %bb.c, label %compute_score.exit.a

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.03548, i64 -90
  %i.h = load volatile i16, ptr %i.g, align 2
  %i.i = icmp eq i16 %i.h, %7
  br i1 %i.i, label %bb.d, label %compute_score.exit.a

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.03548, i64 -85
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 32
  %.not24.i.a = icmp eq i8 %i.l, 0
  br i1 %.not24.i.a, label %bb.e, label %compute_score.exit.a

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.03548, i64 -100
  %i.n = load i32, ptr %i.m, align 4
  %.not25.i.a = icmp eq i32 %i.n, %6
  br i1 %.not25.i.a, label %bb.f, label %compute_score.exit.a

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.03548, i64 -84
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %.not.i.i.i.a = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.a, label %inet_sk_bound_dev_eq.exit.thread.i.a, label %inet_sk_bound_dev_eq.exit.i.a

inet_sk_bound_dev_eq.exit.i.a:                    ; preds = %bb.f
  %i.q = icmp eq i32 %i.p, %8
  %i.r = icmp eq i32 %i.p, %9
  %i.s = or i1 %i.q, %i.r
  br i1 %i.s, label %inet_sk_bound_dev_eq.exit.thread.i.a, label %compute_score.exit.a

inet_sk_bound_dev_eq.exit.thread.i.a:             ; preds = %inet_sk_bound_dev_eq.exit.i.a, %bb.f
  %i.t = phi i32 [ 1, %bb.f ], [ 2, %inet_sk_bound_dev_eq.exit.i.a ]
  %i.u = getelementptr i8, ptr %.03548, i64 -88
  %i.v = load i16, ptr %i.u, align 8
  %i.w = icmp eq i16 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %spec.select.i.a = add nuw nsw i32 %i.t, %i.x
  %i.y = getelementptr i8, ptr %.03548, i64 20
  %i.z = load volatile i32, ptr %i.y, align 4
  %i.aa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !50
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %spec.select27.i.a = add nuw nsw i32 %spec.select.i.a, %i.ac
  br label %compute_score.exit.a

compute_score.exit.a:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %inet_sk_bound_dev_eq.exit.i.a, %inet_sk_bound_dev_eq.exit.thread.i.a
  %.0.i.a = phi i32 [ -1, %inet_sk_bound_dev_eq.exit.i.a ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.b ], [ %spec.select27.i.a, %inet_sk_bound_dev_eq.exit.thread.i.a ], [ -1, %bb.c ] ; 3 uses
  %i.ad = icmp sgt i32 %.0.i.a, %.03647
  br i1 %i.ad, label %bb.g, label %inet_lookup_reuseport.exit.thread

bb.g:                                             ; preds = %compute_score.exit.a
  %i.ae = getelementptr i8, ptr %.03548, i64 -85
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 16
  %.not.i41.a = icmp eq i8 %i.ag, 0
  br i1 %.not.i41.a, label %inet_lookup_reuseport.exit.thread, label %inet_lookup_reuseport.exit.a

inet_lookup_reuseport.exit.a:                     ; preds = %bb.g
  %13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 100), align 4
  %.val.i43 = load i32, ptr %11, align 8
  %14 = add i32 %13, -559038725
  %15 = add i32 %14, %.val.i43                    ; 3 uses
  %16 = add i32 %15, %6
  %17 = add i32 %15, %4                           ; 4 uses
  %i.ah = add i32 %15, %12
  %18 = xor i32 %i.ah, %17
  %19 = tail call noundef i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 14)
  %20 = sub i32 %18, %19                          ; 4 uses
  %21 = xor i32 %20, %16
  %22 = tail call noundef i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 11)
  %23 = sub i32 %21, %22                          ; 4 uses
  %24 = xor i32 %23, %17
  %25 = tail call noundef i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 25)
  %26 = sub i32 %24, %25                          ; 4 uses
  %27 = xor i32 %26, %20
  %28 = tail call noundef i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16)
  %29 = sub i32 %27, %28                          ; 4 uses
  %30 = xor i32 %29, %23
  %31 = tail call noundef i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 4)
  %32 = sub i32 %30, %31                          ; 3 uses
  %33 = xor i32 %32, %26
  %34 = tail call noundef i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 14)
  %35 = sub i32 %33, %34                          ; 3 uses
  %36 = xor i32 %35, %29
  %37 = tail call noundef i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 24)
  %38 = sub i32 %10, %37
  %i.ai = add i32 %38, %36
  %39 = tail call ptr @reuseport_select_sock(ptr noundef %i.e, i32 noundef %i.ai, ptr noundef %2, i32 noundef %3) #18 ; 2 uses
  %.not40 = icmp eq ptr %39, null
  br i1 %.not40, label %inet_lookup_reuseport.exit.thread, label %.critedge

inet_lookup_reuseport.exit.thread:                ; preds = %bb.g, %inet_lookup_reuseport.exit.a, %compute_score.exit.a
  %.137 = phi i32 [ %.03647, %compute_score.exit.a ], [ %.0.i.a, %inet_lookup_reuseport.exit.a ], [ %.0.i.a, %bb.g ]
  %.1 = phi ptr [ %.03449, %compute_score.exit.a ], [ %i.e, %inet_lookup_reuseport.exit.a ], [ %i.e, %bb.g ] ; 2 uses
  %i.aj = load volatile ptr, ptr %.03548, align 8 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !48

.critedge:                                        ; preds = %inet_lookup_reuseport.exit.a, %inet_lookup_reuseport.exit.thread, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.1, %inet_lookup_reuseport.exit.thread ], [ %39, %inet_lookup_reuseport.exit.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sock_gen_put(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.b = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, i32 -1, ptr elementtype(i32) %i.a) #19, !srcloc !22 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %refcount_dec_and_test.exit.thread, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.a, i32 noundef 3) #18
  br label %refcount_dec_and_test.exit.thread

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !23
  %i.e = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.f = load volatile i8, ptr %i.e, align 2
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @inet_twsk_free(ptr noundef %0) #18
  br label %refcount_dec_and_test.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.h = load volatile i8, ptr %i.e, align 2
  %i.i = icmp eq i8 %i.h, 12
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__reqsk_free(ptr noundef %0) #18
  br label %refcount_dec_and_test.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @sk_free(ptr noundef %0) #18
  br label %refcount_dec_and_test.exit.thread

refcount_dec_and_test.exit.thread:                ; preds = %bb.c, %bb.b, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inet_twsk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sock_edemux(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 128      ; 3 uses
  %i.d = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 -1, ptr elementtype(i32) %i.c) #19, !srcloc !22 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.d, 1
  br i1 %i.f, label %bb.c, label %sock_gen_put.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %i.c, i32 noundef 3) #18
  br label %sock_gen_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !23
  %i.g = getelementptr i8, ptr %i.b, i64 18       ; 2 uses
  %i.h = load volatile i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @inet_twsk_free(ptr noundef %i.b) #18
  br label %sock_gen_put.exit

bb.f:                                             ; preds = %bb.d
  %i.j = load volatile i8, ptr %i.g, align 2
  %i.k = icmp eq i8 %i.j, 12
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__reqsk_free(ptr noundef %i.b) #18
  br label %sock_gen_put.exit

bb.h:                                             ; preds = %bb.f
  tail call void @sk_free(ptr noundef %i.b) #18
  br label %sock_gen_put.exit

sock_gen_put.exit:                                ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @__inet_lookup_established(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6) #1 align 16 prefalign(16) {
bb.a:
  %i.a = zext i16 %4 to i32                       ; 2 uses
  %i.b = shl nuw i32 %i.a, 16
  %i.c = zext i16 %2 to i32                       ; 2 uses
  %i.d = or disjoint i32 %i.b, %i.c               ; 2 uses
  %i.e = zext i32 %3 to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = zext i32 %1 to i64
  %i.h = or disjoint i64 %i.f, %i.g               ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 1152
  %i.j = load ptr, ptr %i.i, align 64             ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 100), align 4
  %i.l = getelementptr i8, ptr %0, i64 648
  %.val.i = load i32, ptr %i.l, align 8
  %i.m = add i32 %i.k, -559038725
  %i.n = add i32 %i.m, %.val.i                    ; 3 uses
  %i.o = add i32 %i.n, %3
  %i.p = add i32 %i.n, %1                         ; 4 uses
  %i.q = add i32 %i.n, %i.c
  %i.r = xor i32 %i.q, %i.p
  %i.s = tail call noundef i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 14)
  %i.t = sub i32 %i.r, %i.s                       ; 4 uses
  %i.u = xor i32 %i.t, %i.o
  %i.v = tail call noundef i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 11)
  %i.w = sub i32 %i.u, %i.v                       ; 4 uses
  %i.x = xor i32 %i.w, %i.p
  %i.y = tail call noundef i32 @llvm.fshl.i32(i32 %i.w, i32 %i.w, i32 25)
  %i.z = sub i32 %i.x, %i.y                       ; 4 uses
  %i.aa = xor i32 %i.z, %i.t
  %i.ab = tail call noundef i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 16)
  %i.ac = sub i32 %i.aa, %i.ab                    ; 4 uses
  %i.ad = xor i32 %i.ac, %i.w
  %i.ae = tail call noundef i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 4)
  %i.af = sub i32 %i.ad, %i.ae                    ; 3 uses
  %i.ag = xor i32 %i.af, %i.z
  %i.ah = tail call noundef i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 14)
  %i.ai = sub i32 %i.ag, %i.ah                    ; 3 uses
  %i.aj = xor i32 %i.ai, %i.ac
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 24)
  %i.al = sub i32 %i.a, %i.ak
  %i.am = add i32 %i.al, %i.aj                    ; 2 uses
  %i.an = getelementptr i8, ptr %i.j, i64 16
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = and i32 %i.am, %i.ao
  %i.aq = load ptr, ptr %i.j, align 64
  %i.ar = zext i32 %i.ap to i64                   ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !53
  %i.at = load volatile ptr, ptr %i.as, align 8   ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = and i64 %i.au, 1
  %.not68 = icmp eq i64 %i.av, 0
  br i1 %.not68, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.backedge, %inet_match.exit.thread
  %.069 = phi ptr [ %i.cc, %inet_match.exit.thread ], [ %i.at, %.backedge ] ; 10 uses
  %i.aw = getelementptr i8, ptr %.069, i64 -104   ; 5 uses
  %i.ax = getelementptr i8, ptr %.069, i64 -96
  %i.ay = load i32, ptr %i.ax, align 8
  %.not46 = icmp eq i32 %i.ay, %i.am
  br i1 %.not46, label %bb.b, label %inet_match.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %.069, i64 -56
  %.val.i48 = load ptr, ptr %i.az, align 8
  %.not.i = icmp eq ptr %.val.i48, %0
  br i1 %.not.i, label %bb.c, label %inet_match.exit.thread, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr i8, ptr %.069, i64 -92
  %i.bb = load volatile i32, ptr %i.ba, align 4
  %.not12.i = icmp eq i32 %i.bb, %i.d
  br i1 %.not12.i, label %bb.d, label %inet_match.exit.thread, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.bc = load i64, ptr %i.aw, align 8
  %.not13.i = icmp eq i64 %i.bc, %i.h
  br i1 %.not13.i, label %bb.e, label %inet_match.exit.thread, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr i8, ptr %.069, i64 -84
  %i.be = load volatile i32, ptr %i.bd, align 4   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %inet_match.exit.thread58, label %inet_match.exit

inet_match.exit:                                  ; preds = %bb.e
  %i.bf = icmp eq i32 %i.be, %5
  %i.bg = icmp eq i32 %i.be, %6
  %i.bh = or i1 %i.bf, %i.bg
  br i1 %i.bh, label %inet_match.exit.thread58, label %inet_match.exit.thread, !prof !54

inet_match.exit.thread58:                         ; preds = %bb.e, %inet_match.exit
  %i.bi = getelementptr i8, ptr %.069, i64 -56
  %i.bj = getelementptr i8, ptr %.069, i64 -92
  %i.bk = getelementptr i8, ptr %.069, i64 -84
  %i.bl = getelementptr i8, ptr %.069, i64 24     ; 4 uses
end_hunk_0
