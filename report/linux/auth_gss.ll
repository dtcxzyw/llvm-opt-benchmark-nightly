Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/auth_gss?download=true
inline.NumInlined: 386
inline.NumDeleted: 139
begin_hunk_0_@gss_marshal:bb.a

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi i32 [ %i.s, %bb.e ], [ -2147483648, %bb.d ]
  %i.w = getelementptr i8, ptr %i.b, i64 188      ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = icmp ult i32 %i.x, 3
  br i1 %i.y, label %bb.g, label %xprt_rqst_add_seqno.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.x, 1
  store i32 %i.z, ptr %i.w, align 4
  br label %xprt_rqst_add_seqno.exit

xprt_rqst_add_seqno.exit:                         ; preds = %bb.f, %bb.g
  %i.aa = getelementptr i8, ptr %i.b, i64 176     ; 4 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 180
  %i.ac = load i64, ptr %i.aa, align 8
  store i64 %i.ac, ptr %i.ab, align 4
  store i32 %i.v, ptr %i.aa, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.q) #16
  %i.ad = load i32, ptr %i.aa, align 8
  %i.ae = icmp eq i32 %i.ad, -2147483648
  br i1 %i.ae, label %bb.q, label %bb.h

bb.h:                                             ; preds = %xprt_rqst_add_seqno.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_seqno, i64 8), i1 false) #19
          to label %trace_rpcgss_seqno.exit [label %arch_test_bit.exit.i.i], !srcloc !18

arch_test_bit.exit.i.i:                           ; preds = %bb.h
  %i.af = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !78
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ag) #19, !srcloc !19 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %bb.i, label %trace_rpcgss_seqno.exit

bb.i:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ak = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, ptr elementtype(i64) %i.ak) #19, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.al = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_seqno, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 @__SCT__tp_func_rpcgss_seqno(ptr noundef %i.an, ptr noundef %0) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.ap = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ap, ptr elementtype(i64) %i.ap) #19, !srcloc !23
  br label %trace_rpcgss_seqno.exit

trace_rpcgss_seqno.exit:                          ; preds = %bb.h, %arch_test_bit.exit.i.i, %bb.k
  %i.aq = getelementptr i8, ptr %i.n, i64 12
  store i32 16777216, ptr %i.p, align 4
  %i.ar = getelementptr i8, ptr %i.f, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = getelementptr i8, ptr %i.n, i64 16
  store i32 %i.at, ptr %i.aq, align 4
  %i.av = load i32, ptr %i.aa, align 8
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = getelementptr i8, ptr %i.n, i64 20
  store i32 %i.aw, ptr %i.au, align 4
  %i.ay = getelementptr i8, ptr %i.d, i64 96
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.ba, ptr %i.ax, align 4
  %i.bc = tail call ptr @xdr_encode_netobj(ptr noundef %i.bb, ptr noundef %i.j) #16
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.p to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.o, align 4
  %i.bi = getelementptr i8, ptr %i.b, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  store ptr %i.bj, ptr %3, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bd, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bl, ptr %i.bm, align 8
  call void @xdr_buf_from_iov(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %i.bn = call ptr @xdr_reserve_space(ptr noundef %1, i64 noundef 4) #16 ; 3 uses
  %.not36 = icmp eq ptr %i.bn, null
  br i1 %.not36, label %trace_rpcgss_get_mic.exit, label %bb.l

bb.l:                                             ; preds = %trace_rpcgss_seqno.exit
  store i32 100663296, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %i.f, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i32 @gss_get_mic(ptr noundef %i.br, ptr noundef nonnull %4, ptr noundef nonnull %2) #16 ; 2 uses
  switch i32 %i.bs, label %bb.r [
    i32 786432, label %bb.q
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %2, align 8               ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 8589934588
  %i.bx = add nuw nsw i64 %i.bw, 4
  %i.by = call ptr @xdr_reserve_space(ptr noundef %1, i64 noundef %i.bx) #16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.by, null
  br i1 %.not.i38, label %trace_rpcgss_get_mic.exit, label %xdr_stream_encode_opaque_inline.exit, !prof !15

xdr_stream_encode_opaque_inline.exit:             ; preds = %bb.m
  %i.bz = call ptr @xdr_encode_opaque(ptr noundef nonnull %i.by, ptr noundef null, i32 noundef %i.bt) #16 ; 0 uses
  br label %trace_rpcgss_get_mic.exit

trace_rpcgss_get_mic.exit:                        ; preds = %bb.m, %bb.u, %arch_test_bit.exit.i.i39, %bb.r, %gss_cred_get_ctx.exit, %trace_rpcgss_seqno.exit, %xdr_stream_encode_opaque_inline.exit, %bb.q
  %.0 = phi i32 [ -127, %bb.q ], [ -90, %gss_cred_get_ctx.exit ], [ 0, %xdr_stream_encode_opaque_inline.exit ], [ -5, %bb.u ], [ -90, %trace_rpcgss_seqno.exit ], [ -5, %bb.r ], [ -90, %bb.m ], [ -5, %arch_test_bit.exit.i.i39 ]
  %i.ca = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, i32 -1, ptr elementtype(i32) %i.f) #19, !srcloc !14 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.p, label %bb.n

bb.n:                                             ; preds = %trace_rpcgss_get_mic.exit
  %i.cc = icmp slt i32 %i.ca, 1
  br i1 %i.cc, label %bb.o, label %gss_put_ctx.exit, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @refcount_warn_saturate(ptr noundef %i.f, i32 noundef 3) #16
  br label %gss_put_ctx.exit

bb.p:                                             ; preds = %trace_rpcgss_get_mic.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !17
  %i.cd = getelementptr i8, ptr %i.f, i64 80
  call void @call_rcu(ptr noundef %i.cd, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %.0

bb.q:                                             ; preds = %bb.l, %xprt_rqst_add_seqno.exit
  %i.ce = getelementptr i8, ptr %i.d, i64 72      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ce, i32 -3, ptr elementtype(i8) %i.ce) #19, !srcloc !30
  br label %trace_rpcgss_get_mic.exit

bb.r:                                             ; preds = %bb.l
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_get_mic, i64 8), i1 false) #19
          to label %trace_rpcgss_get_mic.exit [label %arch_test_bit.exit.i.i39], !srcloc !18

arch_test_bit.exit.i.i39:                         ; preds = %bb.r
  %i.cf = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !33
  %i.cg = zext i32 %i.cf to i64
  %i.ch = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cg) #19, !srcloc !19 ; 2 uses
  %i.ci = icmp ult i8 %i.ch, 2
  call void @llvm.assume(i1 %i.ci)
  %i.cj = trunc nuw i8 %i.ch to i1
  br i1 %i.cj, label %bb.s, label %trace_rpcgss_get_mic.exit

bb.s:                                             ; preds = %arch_test_bit.exit.i.i39
  %i.ck = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ck, ptr elementtype(i64) %i.ck) #19, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.cl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_get_mic, i64 56), align 8 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i40, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call i32 @__SCT__tp_func_rpcgss_get_mic(ptr noundef %i.cn, ptr noundef %0, i32 noundef range(i32 786433, 786432) %i.bs) #16 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.cp = getelementptr i8, ptr %i.ck, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cp, ptr elementtype(i64) %i.cp) #19, !srcloc !23
  br label %trace_rpcgss_get_mic.exit
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_refresh(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.auth_cred, align 8          ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %i.d, i64 72       ; 3 uses
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 8
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 128
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @gss_expired_cred_retry_delay, align 4
  %i.n = mul i32 %i.m, 1000
  %i.o = zext i32 %i.n to i64
  %2 = add i64 %i.j, %i.o
  %3 = sub i64 %i.h, %2
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %gss_cred_is_negative_entry.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.p = load volatile i64, ptr %i.e, align 8
  %i.q = and i64 %i.p, 1
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.thread.i
  %i.r = load volatile i64, ptr %i.e, align 8
  %i.s = and i64 %i.r, 2
  %.not45 = icmp eq i64 %i.s, 0
  br i1 %.not45, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.d, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.v = getelementptr i8, ptr %i.d, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr i8, ptr %i.d, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  store ptr %i.z, ptr %i.x, align 8
  %i.aa = tail call i32 @rpc_task_gfp_mask() #16
  %i.ab = call ptr @rpcauth_lookup_credcache(ptr noundef %i.u, ptr noundef nonnull %1, i32 noundef 1, i32 noundef %i.aa) #16 ; 3 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %gss_renew_cred.exit, label %gss_renew_cred.exit.thread

gss_renew_cred.exit.thread:                       ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 160
  store ptr %i.ab, ptr %i.ae, align 8
  call void @put_rpccred(ptr noundef %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

gss_renew_cred.exit:                              ; preds = %bb.e
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %gss_cred_is_negative_entry.exit, label %bb.f

bb.f:                                             ; preds = %gss_renew_cred.exit.thread, %gss_renew_cred.exit
  %.0.i43 = phi i32 [ 0, %gss_renew_cred.exit.thread ], [ %i.ag, %gss_renew_cred.exit ]
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.d, %bb.f
  %i.al = phi ptr [ %i.d, %.thread.i ], [ %i.d, %bb.d ], [ %i.ak, %bb.f ] ; 6 uses
  %.0 = phi i32 [ 0, %.thread.i ], [ 0, %bb.d ], [ %.0.i43, %bb.f ]
  %i.am = getelementptr i8, ptr %i.al, i64 72
  %i.an = load volatile i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 1
  %.not47 = icmp eq i64 %i.ao, 0
  br i1 %.not47, label %gss_cred_is_negative_entry.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.al, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = getelementptr i8, ptr %i.al, i64 88     ; 2 uses
  %.val.i = load ptr, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.al, i64 120
  %.val33.i = load ptr, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load i32, ptr %i.au, align 8
  %i.av = call fastcc ptr @gss_setup_upcall(ptr noundef %i.ar, i32 %.val.val.i, ptr %.val33.i) #17 ; 14 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = icmp eq ptr %i.av, inttoptr (i64 -11 to ptr)
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load volatile i64, ptr @jiffies, align 64
  %i.az = add i64 %i.ay, 15000
  call void @rpc_sleep_on_timeout(ptr noundef nonnull @pipe_version_rpc_waitqueue, ptr noundef %0, ptr noundef null, i64 noundef %i.az) #16
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ba = icmp ugt ptr %i.av, inttoptr (i64 -4096 to ptr)
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc i64 %i.aw to i32
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr i8, ptr %i.av, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 160    ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.be) #16
  %i.bf = getelementptr i8, ptr %i.al, i64 112    ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.bg, null
  br i1 %.not.i37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %i.bg, i64 96
  call void @rpc_sleep_on(ptr noundef %i.bh, ptr noundef %0, ptr noundef null) #16
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr i8, ptr %i.av, i64 320
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %i.av, i64 56
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  store ptr %i.av, ptr %i.bf, align 8
  %i.bo = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av, i32 1, ptr elementtype(i32) %i.av) #19, !srcloc !14 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.bp = add i32 %i.bo, 1
  %i.bq = or i32 %i.bp, %i.bo
  %.not10.i.i.i.i = icmp sgt i32 %i.bq, -1
  br i1 %.not10.i.i.i.i, label %refcount_inc.exit.i, label %.sink.split.i.i.i.i, !prof !16

.sink.split.i.i.i.i:                              ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  call void @refcount_warn_saturate(ptr noundef %i.av, i32 noundef %.sink.i.i.i.i) #16
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %.sink.split.i.i.i.i, %bb.q
  %i.br = getelementptr i8, ptr %i.av, i64 96
  call void @rpc_sleep_on(ptr noundef %i.br, ptr noundef %0, ptr noundef nonnull @gss_upcall_callback) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.n
  call fastcc void @gss_handle_downcall_result(ptr noundef %i.al, ptr noundef %i.av) #17, !srcloc !79
  %i.bs = getelementptr i8, ptr %i.av, i64 56
  %i.bt = load i32, ptr %i.bs, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %refcount_inc.exit.i, %bb.m
  %.0.i38 = phi i32 [ 0, %bb.m ], [ 0, %refcount_inc.exit.i ], [ %i.bt, %bb.r ]
  call void @_raw_spin_unlock(ptr noundef %i.be) #16
  call fastcc void @gss_release_msg(ptr noundef %i.av) #17, !srcloc !80
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k, %bb.i
  %.1.i39 = phi i32 [ -11, %bb.i ], [ %i.bb, %bb.k ], [ %.0.i38, %bb.s ] ; 4 uses
  %i.bu = load ptr, ptr %i.as, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_upcall_result, i64 8), i1 false) #19
          to label %gss_cred_is_negative_entry.exit [label %arch_test_bit.exit.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i:                         ; preds = %bb.t
  %i.bx = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !31
  %i.by = zext i32 %i.bx to i64
  %i.bz = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.by) #19, !srcloc !19 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc nuw i8 %i.bz to i1
  br i1 %i.cb, label %bb.u, label %gss_cred_is_negative_entry.exit

bb.u:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.cc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cc, ptr elementtype(i64) %i.cc) #19, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !21
  %i.cd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_rpcgss_upcall_result, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call i32 @__SCT__tp_func_rpcgss_upcall_result(ptr noundef %i.cf, i32 noundef %i.bw, i32 noundef %.1.i39) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.ch = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ch, ptr elementtype(i64) %i.ch) #19, !srcloc !23
  br label %gss_cred_is_negative_entry.exit

gss_cred_is_negative_entry.exit:                  ; preds = %bb.w, %arch_test_bit.exit.i.i.i, %bb.t, %bb.c, %gss_renew_cred.exit, %bb.g
  %.034 = phi i32 [ %i.ag, %gss_renew_cred.exit ], [ -127, %bb.c ], [ %.1.i39, %bb.w ], [ %.0, %bb.g ], [ %.1.i39, %bb.t ], [ %.1.i39, %arch_test_bit.exit.i.i.i ]
  ret i32 %.034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -13, 1) i32 @gss_validate(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.kvec, align 8               ; 5 uses
  %3 = alloca %struct.xdr_buf, align 8            ; 5 uses
  %4 = alloca %struct.xdr_netobj, align 8         ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
