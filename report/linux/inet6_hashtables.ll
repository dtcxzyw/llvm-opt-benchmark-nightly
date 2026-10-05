Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/inet6_hashtables?download=true
inline.NumInlined: 124
inline.NumDeleted: 58
begin_hunk_0_@inet6_lookup_run_sk_lookup:bb.a
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.ci = call i32 @inet6_ehashfn(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #11
  br label %inet6_lookup_reuseport.exit

bb.w:                                             ; preds = %bb.u
  %i.cj = call i32 %9(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #10, !inline_history !39
  br label %inet6_lookup_reuseport.exit

inet6_lookup_reuseport.exit:                      ; preds = %bb.t, %bb.v, %bb.w
  %i.ck = phi i32 [ %i.cg, %bb.t ], [ %i.ci, %bb.v ], [ %i.cj, %bb.w ]
  %i.cl = call ptr @reuseport_select_sock(ptr noundef nonnull %i.by, i32 noundef %i.ck, ptr noundef %2, i32 noundef %3) #10 ; 2 uses
  %.not = icmp eq ptr %i.cl, null
  %spec.select = select i1 %.not, ptr %i.by, ptr %i.cl
  br label %.thread

.thread:                                          ; preds = %inet6_lookup_reuseport.exit, %bb.r, %bpf_sk_lookup_run_v6.exit.thread26, %bpf_sk_lookup_run_v6.exit.thread, %bpf_sk_lookup_run_v6.exit, %bb.q
  %.0 = phi ptr [ %i.by, %bpf_sk_lookup_run_v6.exit ], [ %i.by, %bb.q ], [ %spec.select, %inet6_lookup_reuseport.exit ], [ %i.by, %bb.r ], [ null, %bpf_sk_lookup_run_v6.exit.thread ], [ inttoptr (i64 -111 to ptr), %bpf_sk_lookup_run_v6.exit.thread26 ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @inet6_lookup_listener(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @bpf_sk_lookup_enabled, i1 false) #9
          to label %arch_static_branch.exit [label %bb.b], !srcloc !17

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @inet6_lookup_run_sk_lookup(ptr noundef %0, i32 noundef 6, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull @inet6_ehashfn) #11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %arch_static_branch.exit, label %bb.d

arch_static_branch.exit:                          ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 1152
  %i.c = load ptr, ptr %i.b, align 64             ; 2 uses
  %i.d = zext i16 %6 to i32                       ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 648        ; 2 uses
  %.val47 = load i32, ptr %i.e, align 8
  %i.f = tail call fastcc i32 @ipv6_portaddr_hash(i32 %.val47, ptr noundef %5, i32 noundef %i.d) #11
  %i.g = getelementptr i8, ptr %i.c, i64 60       ; 2 uses
  %.val50 = load i32, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %i.c, i64 64       ; 2 uses
  %.val51 = load ptr, ptr %i.h, align 64
  %i.i = and i32 %.val50, %i.f
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [16 x i8], ptr %.val51, i64 %i.j
  %i.l = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %0, ptr noundef %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #11, !srcloc !40 ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %arch_static_branch.exit
  %.val = load i32, ptr %i.e, align 8
  %i.m = tail call fastcc i32 @ipv6_portaddr_hash(i32 %.val, ptr noundef nonnull @in6addr_any, i32 noundef %i.d) #11
  %.val48 = load i32, ptr %i.g, align 4
  %.val49 = load ptr, ptr %i.h, align 64
  %i.n = and i32 %.val48, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr [16 x i8], ptr %.val49, i64 %i.o
  %i.q = tail call fastcc ptr @inet6_lhash2_lookup(ptr noundef %0, ptr noundef %i.p, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef nonnull @in6addr_any, i16 noundef zeroext %6, i32 noundef %7, i32 noundef %8) #11, !srcloc !41
  br label %bb.d

bb.d:                                             ; preds = %arch_static_branch.exit, %bb.b, %bb.c
  %.043 = phi ptr [ %i.a, %bb.b ], [ %i.l, %arch_static_branch.exit ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = icmp ugt ptr %.043, inttoptr (i64 -4096 to ptr)
  %..043 = select i1 %i.r, ptr null, ptr %.043
  ret ptr %..043
}

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc i32 @ipv6_portaddr_hash(i32 %.648.val, ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #4 align 16 {
bb.a:
  %.val9 = load i64, ptr %0, align 8              ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.a, align 8           ; 4 uses
  %i.b = or i64 %.val10, %.val9
  %i.c = icmp eq i64 %i.b, 0
  %i.d = trunc i64 %.val10 to i32                 ; 2 uses
  %i.e = trunc i64 %.val9 to i32
  %i.f = lshr i64 %.val9, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = lshr i64 %.val10, 32
  %i.i = trunc nuw i64 %i.h to i32                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %.648.val, -559038733            ; 4 uses
  %i.k = tail call noundef i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 14)
  %i.l = sub i32 0, %i.k                          ; 4 uses
  %i.m = xor i32 %i.j, %i.l
  %i.n = tail call noundef i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 11)
  %i.o = sub i32 %i.m, %i.n                       ; 4 uses
  %i.p = xor i32 %i.o, %i.j
  %i.q = tail call noundef i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 25)
  %i.r = sub i32 %i.p, %i.q                       ; 4 uses
  %i.s = xor i32 %i.r, %i.l
  %i.t = tail call noundef i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 16)
  %i.u = sub i32 %i.s, %i.t                       ; 4 uses
  %i.v = xor i32 %i.u, %i.o
  %i.w = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.u, i32 4)
  %i.x = sub i32 %i.v, %i.w                       ; 3 uses
  %i.y = xor i32 %i.x, %i.r
  %i.z = tail call noundef i32 @llvm.fshl.i32(i32 %i.x, i32 %i.x, i32 14)
  %i.aa = sub i32 %i.y, %i.z                      ; 3 uses
  %i.ab = xor i32 %i.aa, %i.u
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 24)
  %i.ad = sub i32 %i.ab, %i.ac
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ae = and i64 %.val10, 4294967295
  %i.af = xor i64 %i.ae, 4294901760
  %i.ag = or i64 %.val9, %i.af
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = add i32 %.648.val, -559038733           ; 4 uses
  %i.aj = add i32 %i.ai, %i.i
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 14)
  %i.al = sub i32 0, %i.ak                        ; 4 uses
  %i.am = xor i32 %i.aj, %i.al
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 11)
  %i.ao = sub i32 %i.am, %i.an                    ; 4 uses
  %i.ap = xor i32 %i.ao, %i.ai
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 25)
  %i.ar = sub i32 %i.ap, %i.aq                    ; 4 uses
  %i.as = xor i32 %i.ar, %i.al
  %i.at = tail call noundef i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 16)
  %i.au = sub i32 %i.as, %i.at                    ; 4 uses
  %i.av = xor i32 %i.au, %i.ao
  %i.aw = tail call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 4)
  %i.ax = sub i32 %i.av, %i.aw                    ; 3 uses
  %i.ay = xor i32 %i.ax, %i.ar
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 14)
  %i.ba = sub i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = xor i32 %i.ba, %i.au
  %i.bc = tail call noundef i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.ba, i32 24)
  %i.bd = sub i32 %i.bb, %i.bc
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.be = add i32 %.648.val, -559038721           ; 2 uses
  %i.bf = add i32 %i.be, %i.g                     ; 2 uses
  %i.bg = add i32 %i.be, %i.d                     ; 3 uses
  %i.bh = sub i32 %i.e, %i.d
  %i.bi = tail call noundef i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 4)
  %i.bj = xor i32 %i.bh, %i.bi                    ; 4 uses
  %i.bk = add i32 %i.bf, %i.bg                    ; 2 uses
  %i.bl = sub i32 %i.bf, %i.bj
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 6)
  %i.bn = xor i32 %i.bl, %i.bm                    ; 4 uses
  %i.bo = add i32 %i.bk, %i.bj                    ; 2 uses
  %i.bp = sub i32 %i.bk, %i.bn
  %i.bq = tail call noundef i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 8)
  %i.br = xor i32 %i.bp, %i.bq                    ; 4 uses
  %i.bs = add i32 %i.bn, %i.bo                    ; 2 uses
  %i.bt = sub i32 %i.bo, %i.br
  %i.bu = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 16)
  %i.bv = xor i32 %i.bt, %i.bu                    ; 4 uses
  %i.bw = add i32 %i.br, %i.bs                    ; 2 uses
  %i.bx = sub i32 %i.bs, %i.bv
  %i.by = tail call noundef i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 19)
  %i.bz = xor i32 %i.bx, %i.by                    ; 4 uses
  %i.ca = add i32 %i.bv, %i.bw                    ; 2 uses
  %i.cb = sub i32 %i.bw, %i.bz
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 4)
  %i.cd = xor i32 %i.cb, %i.cc
  %i.ce = add i32 %i.bz, %i.ca                    ; 4 uses
  %i.cf = add i32 %i.ca, %i.i
  %i.cg = xor i32 %i.cd, %i.ce
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 14)
  %i.ci = sub i32 %i.cg, %i.ch                    ; 4 uses
  %i.cj = xor i32 %i.ci, %i.cf
  %i.ck = tail call noundef i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 11)
  %i.cl = sub i32 %i.cj, %i.ck                    ; 4 uses
  %i.cm = xor i32 %i.cl, %i.ce
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 25)
  %i.co = sub i32 %i.cm, %i.cn                    ; 4 uses
  %i.cp = xor i32 %i.co, %i.ci
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 16)
  %i.cr = sub i32 %i.cp, %i.cq                    ; 4 uses
  %i.cs = xor i32 %i.cr, %i.cl
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 4)
  %i.cu = sub i32 %i.cs, %i.ct                    ; 3 uses
  %i.cv = xor i32 %i.cu, %i.co
  %i.cw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 14)
  %i.cx = sub i32 %i.cv, %i.cw                    ; 3 uses
  %i.cy = tail call noundef i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 24)
  %i.cz = xor i32 %i.cx, %i.cr
  %i.da = sub i32 %i.cz, %i.cy
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ %i.ad, %bb.b ], [ %i.bd, %bb.d ], [ %i.da, %bb.e ]
  %i.db = xor i32 %.0, %1
  ret i32 %i.db
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @inet6_lhash2_lookup(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !43
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not45 = icmp eq i64 %i.d, 0
  br i1 %.not45, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %10 = getelementptr i8, ptr %6, i64 8           ; 2 uses
  %11 = icmp eq ptr @inet6_ehashfn, @udp6_ehashfn
  br i1 %11, label %.lr.ph.split.us, label %bb.b, !prof !14

.lr.ph.split.us:                                  ; preds = %.lr.ph, %inet6_lookup_reuseport.exit.thread.us
  %.03448.us = phi ptr [ %.1.us, %inet6_lookup_reuseport.exit.thread.us ], [ null, %.lr.ph ]
  %.03547.us = phi ptr [ %46, %inet6_lookup_reuseport.exit.thread.us ], [ %i.b, %.lr.ph ] ; 10 uses
  %.03646.us = phi i32 [ %.137.us, %inet6_lookup_reuseport.exit.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %12 = getelementptr i8, ptr %.03547.us, i64 -104 ; 3 uses
  %13 = getelementptr i8, ptr %.03547.us, i64 -56
  %.val.i.us = load ptr, ptr %13, align 8
  %.not.i.us = icmp eq ptr %.val.i.us, %0
  br i1 %.not.i.us, label %14, label %compute_score.exit.us

14:                                               ; preds = %.lr.ph.split.us
  %15 = getelementptr i8, ptr %.03547.us, i64 -90
  %16 = load volatile i16, ptr %15, align 2
  %17 = icmp eq i16 %16, %7
  br i1 %17, label %18, label %compute_score.exit.us

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %.03547.us, i64 -88
  %20 = load i16, ptr %19, align 8
  %21 = icmp eq i16 %20, 10
  br i1 %21, label %22, label %compute_score.exit.us

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %.03547.us, i64 -32
  %.val25.i.us = load i64, ptr %23, align 8
  %24 = getelementptr i8, ptr %.03547.us, i64 -24
  %.val26.i.us = load i64, ptr %24, align 8
  %.val27.i.us = load i64, ptr %6, align 8
  %.val28.i.us = load i64, ptr %10, align 8
  %25 = icmp eq i64 %.val25.i.us, %.val27.i.us
  %26 = icmp eq i64 %.val26.i.us, %.val28.i.us
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %compute_score.exit.us

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %.03547.us, i64 -84
  %30 = load i32, ptr %29, align 4                ; 3 uses
  %.not.i.i.i.us = icmp eq i32 %30, 0
  br i1 %.not.i.i.i.us, label %.lr.ph.a, label %inet_sk_bound_dev_eq.exit.i.us

inet_sk_bound_dev_eq.exit.i.us:                   ; preds = %28
  %31 = icmp eq i32 %30, %8
  %32 = icmp eq i32 %30, %9
  %33 = or i1 %31, %32
  br i1 %33, label %.lr.ph.a, label %compute_score.exit.us

.lr.ph.a:                                         ; preds = %inet_sk_bound_dev_eq.exit.i.us, %28
  %34 = phi i32 [ 1, %28 ], [ 2, %inet_sk_bound_dev_eq.exit.i.us ]
  %i.e = getelementptr i8, ptr %.03547.us, i64 20
  %35 = load volatile i32, ptr %i.e, align 4
  %36 = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !44
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %spec.select.i.us = add nuw nsw i32 %34, %38
  br label %compute_score.exit.us

compute_score.exit.us:                            ; preds = %.lr.ph.a, %inet_sk_bound_dev_eq.exit.i.us, %22, %18, %14, %.lr.ph.split.us
  %.0.i.us = phi i32 [ -1, %inet_sk_bound_dev_eq.exit.i.us ], [ -1, %22 ], [ -1, %.lr.ph.split.us ], [ %spec.select.i.us, %.lr.ph.a ], [ -1, %18 ], [ -1, %14 ] ; 3 uses
  %39 = icmp sgt i32 %.0.i.us, %.03646.us
  br i1 %39, label %40, label %inet6_lookup_reuseport.exit.thread.us

40:                                               ; preds = %compute_score.exit.us
  %41 = getelementptr i8, ptr %.03547.us, i64 -85
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 16
  %.not.i41.us = icmp eq i8 %43, 0
  br i1 %.not.i41.us, label %inet6_lookup_reuseport.exit.thread.us, label %inet6_lookup_reuseport.exit.us

inet6_lookup_reuseport.exit.us:                   ; preds = %40
  %44 = tail call i32 @udp6_ehashfn(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #10
  %45 = tail call ptr @reuseport_select_sock(ptr noundef %12, i32 noundef %44, ptr noundef %2, i32 noundef %3) #10 ; 2 uses
  %.not40.us = icmp eq ptr %45, null
  br i1 %.not40.us, label %inet6_lookup_reuseport.exit.thread.us, label %.critedge

inet6_lookup_reuseport.exit.thread.us:            ; preds = %inet6_lookup_reuseport.exit.us, %40, %compute_score.exit.us
  %.137.us = phi i32 [ %.03646.us, %compute_score.exit.us ], [ %.0.i.us, %inet6_lookup_reuseport.exit.us ], [ %.0.i.us, %40 ]
  %.1.us = phi ptr [ %.03448.us, %compute_score.exit.us ], [ %12, %inet6_lookup_reuseport.exit.us ], [ %12, %40 ] ; 2 uses
  %46 = load volatile ptr, ptr %.03547.us, align 8 ; 2 uses
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 1
  %.not.us = icmp eq i64 %48, 0
  br i1 %.not.us, label %.lr.ph.split.us, label %.critedge, !llvm.loop !42

bb.b:                                             ; preds = %.lr.ph, %inet6_lookup_reuseport.exit.thread
  %.03448 = phi ptr [ %.1, %inet6_lookup_reuseport.exit.thread ], [ null, %.lr.ph ]
  %.03547 = phi ptr [ %i.aj, %inet6_lookup_reuseport.exit.thread ], [ %i.b, %.lr.ph ] ; 10 uses
  %.03646 = phi i32 [ %.137, %inet6_lookup_reuseport.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr i8, ptr %.03547, i64 -104  ; 3 uses
  %i.g = getelementptr i8, ptr %.03547, i64 -56
  %.val.i = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %.val.i, %0
  br i1 %.not.i, label %bb.c, label %compute_score.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.03547, i64 -90
  %i.i = load volatile i16, ptr %i.h, align 2
  %i.j = icmp eq i16 %i.i, %7
  br i1 %i.j, label %bb.d, label %compute_score.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.03547, i64 -88
  %i.l = load i16, ptr %i.k, align 8
  %i.m = icmp eq i16 %i.l, 10
  br i1 %i.m, label %bb.e, label %compute_score.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.03547, i64 -32
  %.val25.i = load i64, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.03547, i64 -24
  %.val26.i = load i64, ptr %i.o, align 8
  %.val27.i = load i64, ptr %6, align 8
  %.val28.i = load i64, ptr %10, align 8
  %i.p = icmp eq i64 %.val25.i, %.val27.i
  %i.q = icmp eq i64 %.val26.i, %.val28.i
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %compute_score.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %.03547, i64 -84
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %inet_sk_bound_dev_eq.exit.thread.i, label %inet_sk_bound_dev_eq.exit.i

inet_sk_bound_dev_eq.exit.i:                      ; preds = %bb.f
  %i.u = icmp eq i32 %i.t, %8
  %i.v = icmp eq i32 %i.t, %9
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %inet_sk_bound_dev_eq.exit.thread.i, label %compute_score.exit

inet_sk_bound_dev_eq.exit.thread.i:               ; preds = %inet_sk_bound_dev_eq.exit.i, %bb.f
  %i.x = phi i32 [ 1, %bb.f ], [ 2, %inet_sk_bound_dev_eq.exit.i ]
  %i.y = getelementptr i8, ptr %.03547, i64 20
  %i.z = load volatile i32, ptr %i.y, align 4
  %i.aa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !44
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %spec.select.i = add nuw nsw i32 %i.x, %i.ac
  br label %compute_score.exit

compute_score.exit:                               ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %inet_sk_bound_dev_eq.exit.i, %inet_sk_bound_dev_eq.exit.thread.i
  %.0.i = phi i32 [ -1, %inet_sk_bound_dev_eq.exit.i ], [ -1, %bb.e ], [ -1, %bb.b ], [ %spec.select.i, %inet_sk_bound_dev_eq.exit.thread.i ], [ -1, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %i.ad = icmp sgt i32 %.0.i, %.03646
  br i1 %i.ad, label %bb.g, label %inet6_lookup_reuseport.exit.thread

bb.g:                                             ; preds = %compute_score.exit
  %i.ae = getelementptr i8, ptr %.03547, i64 -85
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 16
  %.not.i41 = icmp eq i8 %i.ag, 0
  br i1 %.not.i41, label %inet6_lookup_reuseport.exit.thread, label %inet6_lookup_reuseport.exit

inet6_lookup_reuseport.exit:                      ; preds = %bb.g
  %i.ah = tail call i32 @inet6_ehashfn(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %7, ptr noundef %4, i16 noundef zeroext %5) #11
  %i.ai = tail call ptr @reuseport_select_sock(ptr noundef %i.f, i32 noundef %i.ah, ptr noundef %2, i32 noundef %3) #10 ; 2 uses
  %.not40 = icmp eq ptr %i.ai, null
  br i1 %.not40, label %inet6_lookup_reuseport.exit.thread, label %.critedge

inet6_lookup_reuseport.exit.thread:               ; preds = %bb.g, %inet6_lookup_reuseport.exit, %compute_score.exit
  %.137 = phi i32 [ %.03646, %compute_score.exit ], [ %.0.i, %inet6_lookup_reuseport.exit ], [ %.0.i, %bb.g ]
  %.1 = phi ptr [ %.03448, %compute_score.exit ], [ %i.f, %inet6_lookup_reuseport.exit ], [ %i.f, %bb.g ] ; 2 uses
  %i.aj = load volatile ptr, ptr %.03547, align 8 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %inet6_lookup_reuseport.exit, %inet6_lookup_reuseport.exit.thread, %inet6_lookup_reuseport.exit.us, %inet6_lookup_reuseport.exit.thread.us, %bb.a
  %.0 = phi ptr [ %.1.us, %inet6_lookup_reuseport.exit.thread.us ], [ null, %bb.a ], [ %45, %inet6_lookup_reuseport.exit.us ], [ %.1, %inet6_lookup_reuseport.exit.thread ], [ %i.ai, %inet6_lookup_reuseport.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @inet6_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6, i32 noundef %7) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i16 @llvm.bswap.i16(i16 %6)    ; 2 uses
  %i.b = tail call ptr @__inet6_lookup_established(ptr noundef %0, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %i.a, i32 noundef %7, i32 noundef 0) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__inet6_lookup.exit, label %__inet6_lookup.exit.thread

__inet6_lookup.exit:                              ; preds = %bb.a
  %i.c = tail call ptr @inet6_lookup_listener(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %i.a, i32 noundef %7, i32 noundef 0) #11 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %__inet6_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %__inet6_lookup.exit
  %i.e = getelementptr i8, ptr %i.c, i64 128      ; 4 uses
  %i.f = load volatile i32, ptr %i.e, align 4     ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.l, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = add i32 %.0.i.i.i, 1
  %i.h = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 %i.g, ptr elementtype(i32) %i.e, i32 %.0.i.i.i) #9, !srcloc !13 ; 2 uses
  %i.i = extractvalue { i8, i32 } %i.h, 0         ; 2 uses
  %i.j = icmp ult i8 %i.i, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc nuw i8 %i.i to i1
  br i1 %i.k, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.l = extractvalue { i8, i32 } %i.h, 1         ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.b
  %.2.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.n = add i32 %.2.i.i.i, 1
  %i.o = or i32 %i.n, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.c
  %.not = icmp eq i32 %.2.i.i.i, 0
  %spec.select = select i1 %.not, ptr null, ptr %i.c
  br label %__inet6_lookup.exit.thread

__inet6_lookup.exit.thread:                       ; preds = %bb.a, %refcount_inc_not_zero.exit, %__inet6_lookup.exit
  %.0 = phi ptr [ null, %__inet6_lookup.exit ], [ %spec.select, %refcount_inc_not_zero.exit ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @inet6_hash_connect(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 14
  %i.c = load i16, ptr %i.b, align 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 72
  %i.e = getelementptr i8, ptr %1, i64 56
  %i.f = getelementptr i8, ptr %1, i64 12
  %i.g = load i16, ptr %i.f, align 4
  %i.h = tail call i64 @secure_ipv6_port_ephemeral(ptr noundef %i.d, ptr noundef %i.e, i16 noundef zeroext %i.g) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %i.i = getelementptr i8, ptr %1, i64 12
  %i.j = getelementptr i8, ptr %1, i64 56
  %i.k = getelementptr i8, ptr %1, i64 72
  tail call void @inet6_init_ehash_secret() #11
  %i.l = load i16, ptr %i.i, align 4
  %i.m = tail call i32 @inet6_ehashfn(ptr noundef %.val, ptr noundef %i.k, i16 noundef zeroext 0, ptr noundef %i.j, i16 noundef zeroext %i.l) #11
  %i.n = tail call i32 @__inet_hash_connect(ptr noundef %0, ptr noundef %1, i64 noundef %.0, i32 noundef %i.m, ptr noundef nonnull @__inet6_check_established) #10
  ret i32 %i.n
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__inet_hash_connect(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -99, 1) i32 @__inet6_check_established(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64             ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val91 = load ptr, ptr %i.g, align 8           ; 3 uses
  %i.h = zext i16 %2 to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = getelementptr i8, ptr %1, i64 12
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %.val92 = load ptr, ptr %i.b, align 64
  %i.n = getelementptr i8, ptr %i.b, i64 16
  %.val93 = load i32, ptr %i.n, align 16
  %i.o = and i32 %.val93, %5
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %.val92, i64 %i.p ; 5 uses
  br i1 %4, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %.082127 = load ptr, ptr %i.q, align 8          ; 2 uses
  %i.r = ptrtoint ptr %.082127 to i64
  %i.s = and i64 %i.r, 1
  %.not89128 = icmp eq i64 %i.s, 0
  br i1 %.not89128, label %.lr.ph130, label %.critedge

.lr.ph130:                                        ; preds = %.preheader
  %i.t = getelementptr i8, ptr %1, i64 64
  %i.u = getelementptr i8, ptr %1, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %inet6_match.exit.thread
  %.082129 = phi ptr [ %.082127, %.lr.ph130 ], [ %.082, %inet6_match.exit.thread ] ; 11 uses
  %i.v = getelementptr i8, ptr %.082129, i64 -96
  %i.w = load i32, ptr %i.v, align 8
  %.not90 = icmp eq i32 %i.w, %5
  br i1 %.not90, label %bb.c, label %inet6_match.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %.082129, i64 -56
  %.val.i = load ptr, ptr %i.x, align 8
  %.not.i = icmp eq ptr %.val.i, %.val91
  br i1 %.not.i, label %bb.d, label %inet6_match.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.082129, i64 -88
  %i.z = load i16, ptr %i.y, align 8
  %.not15.i = icmp eq i16 %i.z, 10
  br i1 %.not15.i, label %bb.e, label %inet6_match.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %.082129, i64 -92
  %i.ab = load volatile i32, ptr %i.aa, align 4
  %.not16.i = icmp eq i32 %i.ab, %i.m
  br i1 %.not16.i, label %bb.f, label %inet6_match.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.082129, i64 -48
  %.val21.i = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %.082129, i64 -40
  %.val22.i = load i64, ptr %i.ad, align 8
  %.val23.i = load i64, ptr %i.d, align 8
  %.val24.i = load i64, ptr %i.t, align 8
  %i.ae = icmp eq i64 %.val21.i, %.val23.i
  %i.af = icmp eq i64 %.val22.i, %.val24.i
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %inet6_match.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %.082129, i64 -32
  %.val17.i = load i64, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.082129, i64 -24
  %.val18.i = load i64, ptr %i.ai, align 8
  %.val19.i = load i64, ptr %i.c, align 8
  %.val20.i = load i64, ptr %i.u, align 8
  %i.aj = icmp eq i64 %.val17.i, %.val19.i
  %i.ak = icmp eq i64 %.val18.i, %.val20.i
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %inet6_match.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.082129, i64 -84
  %i.an = load volatile i32, ptr %i.am, align 4   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.an, 0
  %i.ao = icmp eq i32 %i.an, %i.f
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %i.ao
  br i1 %or.cond, label %inet6_match.exit.thread116, label %inet6_match.exit.thread

inet6_match.exit.thread116:                       ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %.082129, i64 -86
  %i.aq = load volatile i8, ptr %i.ap, align 2
  %i.ar = icmp eq i8 %i.aq, 6
  br i1 %i.ar, label %.critedge, label %bb.ae

inet6_match.exit.thread:                          ; preds = %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c, %bb.b
  %.082 = load ptr, ptr %.082129, align 8         ; 2 uses
  %i.as = ptrtoint ptr %.082 to i64
  %i.at = and i64 %i.as, 1
  %.not89 = icmp eq i64 %i.at, 0
  br i1 %.not89, label %bb.b, label %.critedge, !llvm.loop !45
end_hunk_0
