Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/client?download=true
inline.NumInlined: 182
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@p9_client_create:bb.a
  %i.p = tail call i64 @strlen(ptr noundef %i.n) #19
  %i.q = add i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr align 1 %i.n, i64 %i.q, i1 false)
  store i32 0, ptr %i.d, align 8
  %i.r = getelementptr i8, ptr %i.d, i64 56
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.d, i64 60
  store i32 33554436, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.d, i64 64
  %i.u = getelementptr i8, ptr %i.d, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  store i32 33554436, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.d, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.x = load i32, ptr %.val, align 8
  %i.y = getelementptr i8, ptr %i.d, i64 4        ; 7 uses
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %.val, i64 8       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.e, align 8
  store ptr null, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %.val, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %i.d, i64 8       ; 4 uses
  store i8 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.af = tail call ptr @v9fs_get_default_trans() #19 ; 3 uses
  store ptr %i.af, ptr %i.e, align 8
  %.not57 = icmp eq ptr %i.af, null
  br i1 %.not57, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.af, %bb.c ], [ %i.ae, %bb.b ]
  %i.ah = getelementptr i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %i.d, ptr noundef %0) #19 ; 2 uses
  %.not58 = icmp eq i32 %i.aj, 0
  br i1 %.not58, label %bb.d, label %bb.z

bb.d:                                             ; preds = %.thread
  %i.ak = load i32, ptr %i.y, align 4             ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.an, ptr %i.y, align 4
  %i.ap = getelementptr i8, ptr %i.al, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.77, i32 noundef %i.an, ptr noundef %i.aq) #25 ; 0 uses
  %.pr = load i32, ptr %i.y, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = phi i32 [ %.pr, %bb.e ], [ %i.ak, %bb.d ] ; 2 uses
  %i.at = icmp ult i32 %i.as, 4096
  br i1 %i.at, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.au = load i8, ptr %i.ad, align 8
  switch i8 %i.au, label %p9_client_version.exit.thread [
    i8 2, label %bb.j
    i8 1, label %bb.h
    i8 0, label %bb.i
  ]

p9_client_version.exit.thread:                    ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.y

bb.h:                                             ; preds = %bb.g
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.str.147.sink.i = phi ptr [ @.str.147, %bb.i ], [ @.str.146, %bb.h ], [ @.str.145, %bb.g ]
  %i.av = tail call ptr (ptr, i8, ptr, ...) @p9_client_rpc(ptr noundef nonnull %i.d, i8 noundef signext 100, ptr noundef @.str.144, i32 noundef %i.as, ptr noundef nonnull %.str.147.sink.i) #22 ; 4 uses
  %i.aw = icmp ugt ptr %i.av, inttoptr (i64 -4096 to ptr)
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = trunc i64 %i.ax to i32
  br label %p9_client_version.exit

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.b, align 4, !annotation !17
  %i.az = getelementptr i8, ptr %i.av, i64 88     ; 2 uses
  %i.ba = load i8, ptr %i.ad, align 8
  %i.bb = zext i8 %i.ba to i32
  %i.bc = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %i.az, i32 noundef %i.bb, ptr noundef @.str.144, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19 ; 4 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_protocol_dump, i64 8), i1 false) #20
          to label %trace_9p_protocol_dump.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !23

arch_test_bit.exit.i.i.i:                         ; preds = %bb.m
  %i.bd = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #20, !srcloc !31
  %i.be = zext i32 %i.bd to i64
  %i.bf = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.be) #20, !srcloc !25 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 2
  call void @llvm.assume(i1 %i.bg)
  %i.bh = trunc nuw i8 %i.bf to i1
  br i1 %i.bh, label %bb.n, label %trace_9p_protocol_dump.exit.i

bb.n:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.bi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bi, ptr elementtype(i64) %i.bi) #20, !srcloc !26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !27
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_protocol_dump, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i32 @__SCT__tp_func_9p_protocol_dump(ptr noundef %i.bl, ptr noundef nonnull %i.d, ptr noundef %i.az) #19 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !28
  %i.bn = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #20, !srcloc !29
  br label %trace_9p_protocol_dump.exit.i

bb.q:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bp = call i32 @strncmp(ptr noundef %i.bo, ptr noundef dereferenceable(9) @.str.145, i64 noundef 8) #19
  %.not26.i = icmp eq i32 %i.bp, 0
  br i1 %.not26.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = call i32 @strncmp(ptr noundef %i.bo, ptr noundef dereferenceable(9) @.str.146, i64 noundef 8) #19
  %.not27.i = icmp eq i32 %i.bq, 0
  br i1 %.not27.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = call i32 @strncmp(ptr noundef %i.bo, ptr noundef dereferenceable(7) @.str.147, i64 noundef 6) #19
  %.not28.i = icmp eq i32 %i.br, 0
  br i1 %.not28.i, label %bb.t, label %trace_9p_protocol_dump.exit.i

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sink.i = phi i8 [ 2, %bb.q ], [ 1, %bb.r ], [ 0, %bb.s ]
  store i8 %.sink.i, ptr %i.ad, align 8
  %i.bs = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bt = icmp slt i32 %i.bs, 4096
  br i1 %i.bt, label %trace_9p_protocol_dump.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.y, align 4
  %i.bv = icmp ult i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.v, label %trace_9p_protocol_dump.exit.i

bb.v:                                             ; preds = %bb.u
  store i32 %i.bs, ptr %i.y, align 4
  br label %trace_9p_protocol_dump.exit.i

trace_9p_protocol_dump.exit.i:                    ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %arch_test_bit.exit.i.i.i, %bb.m
  %.022.i = phi i32 [ -121, %bb.t ], [ 0, %bb.u ], [ -121, %bb.s ], [ 0, %bb.v ], [ %i.bc, %bb.m ], [ %i.bc, %bb.p ], [ %i.bc, %arch_test_bit.exit.i.i.i ]
  %i.bw = load ptr, ptr %i.a, align 8
  call void @kfree(ptr noundef %i.bw) #19
  %i.bx = call i32 @p9_req_put(ptr noundef nonnull %i.d, ptr noundef %i.av) #22 ; 0 uses
  br label %p9_client_version.exit

p9_client_version.exit:                           ; preds = %bb.k, %trace_9p_protocol_dump.exit.i
  %.0.i = phi i32 [ %.022.i, %trace_9p_protocol_dump.exit.i ], [ %i.ay, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not59 = icmp eq i32 %.0.i, 0
  br i1 %.not59, label %bb.w, label %bb.y

bb.w:                                             ; preds = %p9_client_version.exit
  %i.by = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @p9_client_create.seqno, i32 1, ptr elementtype(i32) @p9_client_create.seqno) #20, !srcloc !53
  %i.bz = add i32 %i.by, 1
  %i.ca = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.78, i32 noundef %i.bz) #19 ; 3 uses
  %.not60 = icmp eq ptr %i.ca, null
  br i1 %.not60, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = load i32, ptr %i.y, align 4             ; 2 uses
  %i.cc = add i32 %i.cb, -11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 47244640256, ptr %1, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ce, i8 0, i64 28, i1 false)
  %i.cf = call ptr @__kmem_cache_create_args(ptr noundef nonnull %i.ca, i32 noundef %i.cb, ptr noundef nonnull %1, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store ptr %i.cf, ptr %i.g, align 8
  call void @kfree(ptr noundef nonnull %i.ca) #19
  br label %bb.ab

bb.y:                                             ; preds = %p9_client_version.exit.thread, %bb.w, %bb.f, %p9_client_version.exit
  %.048 = phi i32 [ -22, %bb.f ], [ %.0.i, %p9_client_version.exit ], [ -12, %bb.w ], [ -22, %p9_client_version.exit.thread ]
  %i.cg = load ptr, ptr %i.e, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull %i.d) #19
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %.1 = phi i32 [ %i.aj, %.thread ], [ %.048, %bb.y ]
  %i.cj = load ptr, ptr %i.e, align 8
  call void @v9fs_put_trans(ptr noundef %i.cj) #19
  %i.ck = sext i32 %.1 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.c, %bb.z
  %.2 = phi i64 [ %i.ck, %bb.z ], [ -93, %bb.c ]
  call void @kfree(ptr noundef nonnull %i.d) #19
  %i.cl = inttoptr i64 %.2 to ptr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.x
  %.0 = phi ptr [ %i.cl, %bb.aa ], [ %i.d, %bb.x ], [ inttoptr (i64 -12 to ptr), %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @v9fs_get_default_trans() local_unnamed_addr #0

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @v9fs_put_trans(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @p9_client_destroy(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef %0) #19
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  tail call void @v9fs_put_trans(ptr noundef %i.g) #19
  %i.h = getelementptr i8, ptr %0, i64 56         ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.i = call ptr @idr_get_next(ptr noundef %i.h, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not1112 = icmp eq ptr %i.i, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.j = phi ptr [ %i.p, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = call i32 (ptr, ...) @_printk(ptr noundef @.str.79, i32 noundef %i.l) #25 ; 0 uses
  call fastcc void @p9_fid_destroy(ptr noundef nonnull %i.j) #22, !srcloc !56
  %i.n = load i32, ptr %i.b, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 4
  %i.p = call ptr @idr_get_next(ptr noundef %i.h, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not11 = icmp eq ptr %i.p, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @__rcu_read_lock() #19
  %i.q = getelementptr i8, ptr %0, i64 80         ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.r = call ptr @idr_get_next(ptr noundef %i.q, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not4.i = icmp eq ptr %i.r, null
  br i1 %.not4.i, label %p9_tag_cleanup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.s = phi ptr [ %i.ad, %bb.e ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.t = load i32, ptr %i.a, align 4
  %i.u = call i32 (ptr, ...) @_printk(ptr noundef @.str.148, i32 noundef %i.t) #25 ; 0 uses
  %i.v = call i32 @p9_req_put(ptr noundef %0, ptr noundef nonnull %i.s) #22
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.s, i64 46
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  %i.aa = call i32 (ptr, ...) @_printk(ptr noundef @.str.149, i32 noundef %i.z) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = call ptr @idr_get_next(ptr noundef %i.q, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %p9_tag_cleanup.exit, label %.lr.ph.i, !llvm.loop !55

p9_tag_cleanup.exit:                              ; preds = %bb.e, %._crit_edge
  call void @__rcu_read_unlock() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ae = getelementptr i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  call void @kmem_cache_destroy(ptr noundef %i.af) #19
  call void @kfree(ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @p9_fid_destroy(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 8), i1 false) #20
          to label %trace_9p_fid_ref.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #20, !srcloc !24
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #20, !srcloc !25 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_9p_fid_ref.exit

bb.b:                                             ; preds = %arch_test_bit.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #20, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !27
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_9p_fid_ref, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_9p_fid_ref(ptr noundef %i.i, ptr noundef %0, i8 noundef zeroext range(i8 0, 4) 3) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !28
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #20, !srcloc !29
  br label %trace_9p_fid_ref.exit

trace_9p_fid_ref.exit:                            ; preds = %bb.a, %arch_test_bit.exit.i.i, %bb.d
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %i.m = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.l) #19
  %i.n = getelementptr i8, ptr %i.l, i64 56
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @idr_remove(ptr noundef %i.n, i64 noundef %i.q) #19 ; 0 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.l, i64 noundef %i.m) #19
  %i.s = getelementptr i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @kvfree(ptr noundef %i.t) #19
  tail call void @kfree(ptr noundef %0) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @p9_client_disconnect(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store i32 2, ptr %i.a, align 8
  ret void
}
end_hunk_0
