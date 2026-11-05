Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs3proc?download=true
inline.NumInlined: 131
inline.NumDeleted: 43
begin_hunk_0_@nfs3_proc_access:bb.a

nfs3_rpc_wrapper.exit.thread:                     ; preds = %fatal_signal_pending.exit.i, %fatal_signal_pending.exit.thread.i
  %i.z = load ptr, ptr %4, align 8
  %i.aa = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %i.z) #11 ; 0 uses
  br label %bb.g

nfs3_rpc_wrapper.exit:                            ; preds = %bb.c
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %i.ab) #11 ; 0 uses
  %i.ad = icmp eq i32 %i.n, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %nfs3_rpc_wrapper.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  call void @nfs_access_set_mask(ptr noundef %1, i32 noundef %i.af) #11
  br label %bb.g

bb.g:                                             ; preds = %nfs3_rpc_wrapper.exit.thread, %bb.f, %nfs3_rpc_wrapper.exit
  %.0.i8 = phi i32 [ -512, %nfs3_rpc_wrapper.exit.thread ], [ 0, %bb.f ], [ %i.n, %nfs3_rpc_wrapper.exit ]
  %i.ag = load ptr, ptr %4, align 8
  call void @kfree(ptr noundef %i.ag) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ -12, %bb.a ], [ %.0.i8, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -527, -528) i32 @nfs3_proc_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %struct.nfs3_readlinkargs, align 8  ; 7 uses
  %5 = alloca %struct.rpc_message, align 8        ; 7 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr i8, ptr %0, i64 -424
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr getelementptr (i8, ptr @nfs3_procedures, i64 240), ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.g, align 8
  %i.h = call ptr @nfs_alloc_fattr() #11          ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.l, align 32
  %i.m = getelementptr i8, ptr %.val.val, i64 40
  %.val.val.val = load ptr, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %fatal_signal_pending.exit.thread.i, %bb.b
  %i.n = call i32 @rpc_call_sync(ptr noundef %.val.val.val, ptr noundef nonnull %5, i32 noundef 0) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.n, -528
  br i1 %.not.i, label %bb.d, label %nfs3_rpc_wrapper.exit

bb.d:                                             ; preds = %bb.c
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #10
          to label %arch_static_branch.exit.i [label %bb.e], !srcloc !11

bb.e:                                             ; preds = %bb.d
  call void @__trace_set_current_state(i32 noundef 8450) #11
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %bb.e, %bb.d
  %i.o = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !12
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  store volatile i32 8450, ptr %i.q, align 8
  %i.r = call i64 @schedule_timeout(i64 noundef 5000) #11 ; 0 uses
  %i.s = load volatile i64, ptr %i.p, align 8
  %i.t = and i64 %i.s, 2
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %arch_static_branch.exit.i
  %i.u = getelementptr i8, ptr %i.p, i64 2152
  %.val.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val.i.i, 256
  %.not7.i = icmp eq i64 %i.v, 0
  br i1 %.not7.i, label %fatal_signal_pending.exit.thread.i, label %nfs3_rpc_wrapper.exit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %arch_static_branch.exit.i
  %i.w = getelementptr i8, ptr %i.p, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 4
  %.not10.i = icmp eq i32 %i.y, 0
  br i1 %.not10.i, label %bb.c, label %nfs3_rpc_wrapper.exit, !llvm.loop !0

nfs3_rpc_wrapper.exit:                            ; preds = %bb.c, %fatal_signal_pending.exit.i, %fatal_signal_pending.exit.thread.i
  %.0.i = phi i32 [ %i.n, %bb.c ], [ -512, %fatal_signal_pending.exit.i ], [ -512, %fatal_signal_pending.exit.thread.i ]
  %i.z = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef nonnull %i.h) #11 ; 0 uses
  call void @kfree(ptr noundef nonnull %i.h) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nfs3_rpc_wrapper.exit
  %.0 = phi i32 [ -12, %bb.a ], [ %.0.i, %nfs3_rpc_wrapper.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nfs3_proc_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !annotation !14
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(736) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef 736) #13 ; 20 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %posix_acl_release.exit63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 80       ; 4 uses
  %i.h = getelementptr i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.d, i64 104
  %i.j = getelementptr i8, ptr %i.d, i64 88
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.d, i64 240      ; 2 uses
  %i.l = getelementptr i8, ptr %i.d, i64 96       ; 4 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.d, i64 488
  store ptr %i.m, ptr %i.g, align 8
  tail call void @nfs_fattr_init(ptr noundef %i.k) #11
  %i.n = load ptr, ptr %i.g, align 8
  tail call void @nfs_fattr_init(ptr noundef %i.n) #11
  store ptr getelementptr (i8, ptr @nfs3_procedures, i64 384), ptr %i.d, align 8
  %i.o = getelementptr i8, ptr %0, i64 -424
  store ptr %i.o, ptr %i.e, align 8
  %i.p = getelementptr i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.d, i64 40
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %i.d, i64 48
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.d, i64 56
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.d, i64 64       ; 5 uses
  store i32 0, ptr %i.w, align 8
  %i.x = and i32 %3, 128
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.w, align 8
  %i.y = load volatile i64, ptr @jiffies, align 64
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr i8, ptr %i.d, i64 68
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !12
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 1528
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = getelementptr i8, ptr %i.d, i64 72
  store i32 %i.ag, ptr %i.ah, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = getelementptr i8, ptr %2, i64 4
  %i.aj = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not53 = icmp eq i32 %i.aj, 0
  br i1 %.not53, label %.preheader, label %posix_acl_release.exit63

.preheader:                                       ; preds = %bb.d
  %i.ak = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef %i.d) #9, !srcloc !22 ; 3 uses
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 -4096 to ptr)
  br i1 %i.al, label %PTR_ERR_OR_ZERO.exit, label %PTR_ERR_OR_ZERO.exit.thread

PTR_ERR_OR_ZERO.exit:                             ; preds = %.preheader, %bb.g
  %i.am = phi ptr [ %i.aq, %bb.g ], [ %i.ak, %.preheader ] ; 2 uses
  %4 = ptrtoint ptr %i.am to i64
  %5 = trunc i64 %4 to i32                        ; 2 uses
  switch i32 %5, label %.loopexit [
    i32 -524, label %bb.e
    i32 0, label %PTR_ERR_OR_ZERO.exit.thread
  ]

bb.e:                                             ; preds = %PTR_ERR_OR_ZERO.exit
  %i.an = load i32, ptr %i.w, align 8
  switch i32 %i.an, label %bb.g [
    i32 2, label %.sink.split
    i32 1, label %bb.f
    i32 0, label %.loopexit
  ]

bb.f:                                             ; preds = %bb.e
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  store i32 %.sink, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.ao = load ptr, ptr %i.g, align 8
  call void @nfs_fattr_init(ptr noundef %i.ao) #11
  %i.ap = load ptr, ptr %i.l, align 8
  call void @nfs_fattr_init(ptr noundef %i.ap) #11
  %i.aq = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef %i.d) #9, !srcloc !22 ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, inttoptr (i64 -4096 to ptr)
  br i1 %i.ar, label %PTR_ERR_OR_ZERO.exit, label %PTR_ERR_OR_ZERO.exit.thread

PTR_ERR_OR_ZERO.exit.thread:                      ; preds = %PTR_ERR_OR_ZERO.exit, %bb.g, %.preheader
  %.lcssa = phi ptr [ %i.ak, %.preheader ], [ %i.aq, %bb.g ], [ %i.am, %PTR_ERR_OR_ZERO.exit ] ; 4 uses
  %.not56 = icmp eq ptr %.lcssa, null
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %PTR_ERR_OR_ZERO.exit.thread
  %.val = load i32, ptr %.lcssa, align 8
  %i.as = and i32 %.val, 3145728
  %spec.select.i = icmp eq i32 %i.as, 1048576
  br i1 %spec.select.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %PTR_ERR_OR_ZERO.exit.thread
  %.0 = phi ptr [ %1, %PTR_ERR_OR_ZERO.exit.thread ], [ %.lcssa, %bb.h ] ; 3 uses
  %i.at = load i32, ptr %i.w, align 8
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %2, align 8               ; 3 uses
  %i.aw = and i32 %i.av, 128
  %.not57 = icmp eq i32 %i.aw, 0                  ; 2 uses
  %i.ax = or i32 %i.av, 16
  %i.ay = select i1 %.not57, i32 %i.ax, i32 %i.av ; 3 uses
  %i.az = and i32 %i.ay, 256
  %.not58 = icmp eq i32 %i.az, 0                  ; 2 uses
  %i.ba = or i1 %.not57, %.not58
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = or i32 %i.ay, 32
  %simplifycfg.merge = select i1 %.not58, i32 %i.bb, i32 %i.ay
  store i32 %simplifycfg.merge, ptr %2, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bc = load ptr, ptr %i.l, align 8
  %i.bd = call i32 @nfs3_proc_setattr(ptr noundef %.0, ptr noundef %i.bc, ptr noundef %2) #9, !srcloc !23 ; 2 uses
  %i.be = getelementptr i8, ptr %.0, i64 48
  %.0.val60 = load ptr, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.l, align 8
  %i.bg = call i32 @nfs_post_op_update_inode(ptr noundef %.0.val60, ptr noundef %i.bf) #11 ; 0 uses
  %.not59 = icmp eq i32 %i.bd, 0
  br i1 %.not59, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.bh = getelementptr i8, ptr %.0, i64 48
  %.0.val = load ptr, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.b, align 8
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = call i32 @nfs3_proc_setacls(ptr noundef %.0.val, ptr noundef %i.bi, ptr noundef %i.bj) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.l, %bb.m
  %.046 = phi i32 [ %i.bk, %bb.m ], [ %i.bd, %bb.l ], [ -21, %bb.h ]
  call void @dput(ptr noundef %.lcssa) #11
  br label %.loopexit

.loopexit:                                        ; preds = %PTR_ERR_OR_ZERO.exit, %bb.e, %bb.n
  %.1 = phi i32 [ %.046, %bb.n ], [ -524, %bb.e ], [ %5, %PTR_ERR_OR_ZERO.exit ] ; 4 uses
  %i.bl = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not.i61 = icmp eq ptr %i.bl, null
  br i1 %.not.i61, label %posix_acl_release.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bm = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bl, i32 -1, ptr nonnull elementtype(i32) %i.bl) #10, !srcloc !15 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %bb.q, label %posix_acl_release.exit, !prof !16

bb.q:                                             ; preds = %bb.p
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bl, i32 noundef 3) #11
  br label %posix_acl_release.exit

bb.r:                                             ; preds = %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !17
  %i.bp = getelementptr i8, ptr %i.bl, i64 8
  call void @kvfree_call_rcu(ptr noundef %i.bp, ptr noundef nonnull %i.bl) #11
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %.loopexit, %bb.p, %bb.q, %bb.r
  %i.bq = load ptr, ptr %i.a, align 8             ; 6 uses
  %.not.i62 = icmp eq ptr %i.bq, null
  br i1 %.not.i62, label %posix_acl_release.exit63, label %bb.s

bb.s:                                             ; preds = %posix_acl_release.exit
  %i.br = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.bq, i32 -1, ptr nonnull elementtype(i32) %i.bq) #10, !srcloc !15 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = icmp slt i32 %i.br, 1
  br i1 %i.bt, label %bb.u, label %posix_acl_release.exit63, !prof !16

bb.u:                                             ; preds = %bb.t
  call void @refcount_warn_saturate(ptr noundef nonnull %i.bq, i32 noundef 3) #11
  br label %posix_acl_release.exit63

bb.v:                                             ; preds = %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !17
  %i.bu = getelementptr i8, ptr %i.bq, i64 8
  call void @kvfree_call_rcu(ptr noundef %i.bu, ptr noundef nonnull %i.bq) #11
  br label %posix_acl_release.exit63

posix_acl_release.exit63:                         ; preds = %bb.a, %bb.v, %bb.u, %bb.t, %posix_acl_release.exit, %bb.d
  %.2 = phi i32 [ %.1, %bb.v ], [ %i.aj, %bb.d ], [ %.1, %posix_acl_release.exit ], [ %.1, %bb.t ], [ %.1, %bb.u ], [ -12, %bb.a ]
  call void @kfree(ptr noundef %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -527, -528) i32 @nfs3_proc_remove(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.nfs_removeargs, align 8     ; 6 uses
  %3 = alloca %struct.nfs_removeres, align 8      ; 5 uses
  %4 = alloca %struct.rpc_message, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr i8, ptr %0, i64 -424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr getelementptr (i8, ptr @nfs3_procedures, i64 576), ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.g, align 8
  %i.h = call ptr @nfs_alloc_fattr() #11          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.l, align 32
  %i.m = getelementptr i8, ptr %.val.val, i64 40
  %.val.val.val = load ptr, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %fatal_signal_pending.exit.thread.i, %bb.b
  %i.n = call i32 @rpc_call_sync(ptr noundef %.val.val.val, ptr noundef nonnull %4, i32 noundef 0) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.n, -528
  br i1 %.not.i, label %bb.d, label %nfs3_rpc_wrapper.exit

bb.d:                                             ; preds = %bb.c
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #10
          to label %arch_static_branch.exit.i [label %bb.e], !srcloc !11

bb.e:                                             ; preds = %bb.d
  call void @__trace_set_current_state(i32 noundef 8450) #11
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %bb.e, %bb.d
  %i.o = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !12
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  store volatile i32 8450, ptr %i.q, align 8
  %i.r = call i64 @schedule_timeout(i64 noundef 5000) #11 ; 0 uses
  %i.s = load volatile i64, ptr %i.p, align 8
  %i.t = and i64 %i.s, 2
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %arch_static_branch.exit.i
  %i.u = getelementptr i8, ptr %i.p, i64 2152
  %.val.i.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val.i.i, 256
  %.not7.i = icmp eq i64 %i.v, 0
  br i1 %.not7.i, label %fatal_signal_pending.exit.thread.i, label %nfs3_rpc_wrapper.exit

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %arch_static_branch.exit.i
  %i.w = getelementptr i8, ptr %i.p, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 4
  %.not10.i = icmp eq i32 %i.y, 0
  br i1 %.not10.i, label %bb.c, label %nfs3_rpc_wrapper.exit, !llvm.loop !0

nfs3_rpc_wrapper.exit:                            ; preds = %bb.c, %fatal_signal_pending.exit.i, %fatal_signal_pending.exit.thread.i
  %.0.i = phi i32 [ %i.n, %bb.c ], [ -512, %fatal_signal_pending.exit.i ], [ -512, %fatal_signal_pending.exit.thread.i ]
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = call i32 @nfs_post_op_update_inode(ptr noundef %0, ptr noundef %i.z) #11 ; 0 uses
  %i.ab = load ptr, ptr %i.i, align 8
  call void @kfree(ptr noundef %i.ab) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nfs3_rpc_wrapper.exit
  %.0 = phi i32 [ -12, %bb.a ], [ %.0.i, %nfs3_rpc_wrapper.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal void @nfs3_proc_unlink_setup(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  store ptr getelementptr (i8, ptr @nfs3_procedures, i64 576), ptr %0, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nfs3_proc_unlink_rpc_prepare(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @rpc_call_start(ptr noundef %0) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @nfs3_proc_unlink_done(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.b, -528
  br i1 %.not.i, label %nfs3_async_handle_jukebox.exit, label %bb.b

nfs3_async_handle_jukebox.exit:                   ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val.i, i64 864
  %.val.val.i = load ptr, ptr %i.d, align 32
  %i.e = getelementptr i8, ptr %.val.val.i, i64 64
  %.val.val.val.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val.val.val.i, i64 256 ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #10, !srcloc !18
  store i32 0, ptr %i.a, align 4
  %i.g = tail call i32 @rpc_restart_call(ptr noundef %0) #11 ; 0 uses
  tail call void @rpc_delay(ptr noundef %0, i64 noundef 5000) #11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @nfs_post_op_update_inode(ptr noundef %1, ptr noundef %i.k) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %nfs3_async_handle_jukebox.exit, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %nfs3_async_handle_jukebox.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal void @nfs3_proc_rename_setup(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #2 align 16 prefalign(16) {
bb.a:
end_hunk_0
