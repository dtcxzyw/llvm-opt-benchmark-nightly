Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_output?download=true
inline.NumInlined: 896
inline.NumDeleted: 350
begin_hunk_0_@tcp_send_probe0:bb.a
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 range(i64 0, 4294967296) %i.aq)
  %i.ar = load volatile i64, ptr @jiffies, align 64
  %i.as = add i64 %spec.select.i.i, %i.ar
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.at = getelementptr i8, ptr %0, i64 1258
  store volatile i8 3, ptr %i.at, align 2
  %i.au = getelementptr i8, ptr %0, i64 432
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %i.au, i64 noundef %i.as) #18
  br label %bb.j

bb.j:                                             ; preds = %tcp_reset_xmit_timer.exit, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcp_rtx_synack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.flowi, align 8              ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 256
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.c = getelementptr i8, ptr %0, i64 652
  %i.d = load volatile i8, ptr %i.c, align 4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @get_random_u32() #18
  %..i = tail call range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %i.g = getelementptr i8, ptr %1, i64 276
  store volatile i32 %..i, ptr %i.g, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false), !annotation !34
  %i.h = getelementptr i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef null, ptr noundef nonnull %2, ptr noundef %1, ptr noundef null, i32 noundef 3, ptr noundef null) #18 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val25 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val25, i64 736
  %i.m = load ptr, ptr %i.l, align 16
  %i.n = getelementptr i8, ptr %i.m, i64 96       ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, ptr elementtype(i64) %i.n) #19, !srcloc !175
  %.val = load ptr, ptr %i.k, align 8
  %i.o = getelementptr i8, ptr %.val, i64 744
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 808      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #19, !srcloc !176
  %i.r = getelementptr i8, ptr %0, i64 18
  %i.s = load volatile i8, ptr %i.r, align 2
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %tcp_passive_fastopen.exit, label %tcp_passive_fastopen.exit.thread

tcp_passive_fastopen.exit:                        ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 2320
  %i.v = load volatile ptr, ptr %i.u, align 16
  %.not26 = icmp eq ptr %i.v, null
  br i1 %.not26, label %tcp_passive_fastopen.exit.thread, label %bb.e, !prof !54

bb.e:                                             ; preds = %tcp_passive_fastopen.exit
  %i.w = getelementptr i8, ptr %0, i64 2240       ; 2 uses
  %i.x = load i32, ptr %i.w, align 64
  %i.y = add i32 %i.x, 1
  store volatile i32 %i.y, ptr %i.w, align 64
  br label %tcp_passive_fastopen.exit.thread

tcp_passive_fastopen.exit.thread:                 ; preds = %bb.d, %bb.e, %tcp_passive_fastopen.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_retransmit_synack, i64 8), i1 false) #19
          to label %trace_tcp_retransmit_synack.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !35

cpumask_test_cpu.exit.i.i:                        ; preds = %tcp_passive_fastopen.exit.thread
  %i.z = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !177
  %i.aa = zext i32 %i.z to i64
  %i.ab = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aa) #19, !srcloc !44 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %bb.f, label %trace_tcp_retransmit_synack.exit

bb.f:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.ae = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ae, ptr elementtype(i64) %i.ae) #19, !srcloc !45
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !46
  %i.af = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_retransmit_synack, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i32 @__SCT__tp_func_tcp_retransmit_synack(ptr noundef %i.ah, ptr noundef %0, ptr noundef %1) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !47
  %i.aj = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aj, ptr elementtype(i64) %i.aj) #19, !srcloc !48
  br label %trace_tcp_retransmit_synack.exit

trace_tcp_retransmit_synack.exit:                 ; preds = %tcp_passive_fastopen.exit.thread, %cpumask_test_cpu.exit.i.i, %bb.h
  %i.ak = getelementptr i8, ptr %1, i64 146       ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = add i8 %i.al, 1
  store volatile i8 %i.am, ptr %i.ak, align 2
  br label %bb.i

bb.i:                                             ; preds = %trace_tcp_retransmit_synack.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__skb_unclone_keeptruesize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @napi_pp_put_page(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__put_netmem(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip6_mtu(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv4_mtu(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc i32 @tcp_options_fit_accecn(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef %2) unnamed_addr #15 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7          ; 5 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val = load i16, ptr %i.c, align 4             ; 2 uses
  %i.d = and i16 %.val, 3
  %i.e = icmp eq i16 %i.d, 1
  %i.f = lshr i16 %.val, 3
  %i.g = and i16 %i.f, 1
  %narrow.i = select i1 %i.e, i16 2, i16 %i.g
  %.0.i = zext nneg i16 %narrow.i to i32
  br label %.lr.ph.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1
  %.not42 = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not42, i32 0, i32 2
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b, %bb.c
  %.037 = phi i32 [ %.0.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = and i8 %i.b, -128
  %i.l = or disjoint i8 %i.k, 3                   ; 3 uses
  store i8 %i.l, ptr %i.a, align 1
  %i.m = getelementptr i8, ptr %0, i64 3          ; 2 uses
  %.not98 = icmp eq i32 %1, 0
  br i1 %.not98, label %.lr.ph.split.us.preheader, label %.lr.ph.us

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph.lr.ph
  %.not44.us122 = icmp slt i32 %2, 12
  br i1 %.not44.us122, label %.lr.ph.split.us, label %.thread

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %.036.ph83.us = phi i32 [ %i.ad, %.outer.us ], [ %2, %.lr.ph.lr.ph ] ; 2 uses
  %.038.ph82.us = phi i32 [ %i.ac, %.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.promoted7981.us = phi i8 [ %i.af, %.outer.us ], [ %i.l, %.lr.ph.lr.ph ]
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.g
  %i.n = phi i32 [ 3, %.lr.ph.us ], [ %i.aa, %bb.g ]
  %.03961.us85 = phi i32 [ 11, %.lr.ph.us ], [ %i.z, %bb.g ] ; 4 uses
  %i.o = phi i8 [ %.promoted7981.us, %.lr.ph.us ], [ %i.y, %bb.g ] ; 3 uses
  %i.p = and i32 %.03961.us85, 3
  %i.q = icmp samesign ugt i32 %i.p, %.037
  %i.r = add i32 %.03961.us85, 3
  %.0.in.us86 = select i1 %i.q, i32 %i.r, i32 %.03961.us85
  %.0.us87 = and i32 %.0.in.us86, -4              ; 2 uses
  %.not44.us88 = icmp slt i32 %.036.ph83.us, %.0.us87
  br i1 %.not44.us88, label %bb.e, label %.thread.loopexit99

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %1, %i.n
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1               ; 2 uses
  %i.u = icmp ugt i8 %i.t, 2
  br i1 %i.u, label %.outer.us, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = add i8 %i.o, 127
  %i.w = and i8 %i.v, 127                         ; 2 uses
  %i.x = and i8 %i.o, -128
  %i.y = or disjoint i8 %i.w, %i.x                ; 2 uses
  store i8 %i.y, ptr %i.a, align 1
  %i.z = add i32 %.03961.us85, -3
  %i.aa = zext nneg i8 %i.w to i32                ; 2 uses
  %.not43.us89 = icmp samesign ugt i32 %1, %i.aa
  br i1 %.not43.us89, label %.outer._crit_edge, label %bb.d, !llvm.loop !178

.outer.us:                                        ; preds = %bb.f
  %i.ab = add i8 %i.t, -1
  store i8 %i.ab, ptr %i.m, align 1
  %i.ac = add i32 %.038.ph82.us, 1
  %i.ad = add i32 %.036.ph83.us, 8
  %i.ae = and i8 %i.o, -128
  %i.af = or disjoint i8 %i.ae, 3                 ; 2 uses
  store i8 %i.af, ptr %i.a, align 1
  br label %.lr.ph.us, !llvm.loop !178

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.ag = phi i8 [ %i.ak, %.lr.ph.split.us ], [ %i.l, %.lr.ph.split.us.preheader ] ; 2 uses
  %.03961.us123 = phi i32 [ %i.al, %.lr.ph.split.us ], [ 11, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.ah = add i8 %i.ag, 127
  %i.ai = and i8 %i.ah, 127
  %i.aj = and i8 %i.ag, -128
  %i.ak = or disjoint i8 %i.ai, %i.aj             ; 2 uses
  %i.al = add i32 %.03961.us123, -3               ; 3 uses
  %i.am = and i32 %i.al, 3
  %i.an = icmp samesign ugt i32 %i.am, %.037
  %.0.in.us = select i1 %i.an, i32 %.03961.us123, i32 %i.al
  %.0.us = and i32 %.0.in.us, -4                  ; 2 uses
  %.not44.us = icmp slt i32 %2, %.0.us
  br i1 %.not44.us, label %.lr.ph.split.us, label %.thread.loopexit

.outer._crit_edge:                                ; preds = %bb.g
  %i.ao = icmp sgt i32 %.038.ph82.us, 0
  br i1 %i.ao, label %bb.h, label %bb.i

.thread.loopexit99:                               ; preds = %bb.d
  %i.ap = tail call i32 @llvm.smax.i32(i32 %.038.ph82.us, i32 0)
  %i.aq = shl i32 %i.ap, 3
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph.split.us
  store i8 %i.ak, ptr %i.a, align 1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.lr.ph.split.us.preheader, %.thread.loopexit99
  %.us-phi = phi i32 [ %i.aq, %.thread.loopexit99 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %.thread.loopexit ]
  %.us-phi63 = phi i32 [ %.0.us87, %.thread.loopexit99 ], [ 12, %.lr.ph.split.us.preheader ], [ %.0.us, %.thread.loopexit ]
  %.253 = sub i32 %.us-phi63, %.us-phi
  %i.ar = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = or i16 %i.as, 4096
  store i16 %i.at, ptr %i.ar, align 4
  br label %bb.i

bb.h:                                             ; preds = %.outer._crit_edge
  %i.au = getelementptr i8, ptr %0, i64 3         ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = trunc i32 %.038.ph82.us to i8
  %i.ax = add i8 %i.av, %i.aw
  store i8 %i.ax, ptr %i.au, align 1
  br label %bb.i

bb.i:                                             ; preds = %.outer._crit_edge, %bb.h, %.thread
  %.040 = phi i32 [ %.253, %.thread ], [ 0, %bb.h ], [ 0, %.outer._crit_edge ]
  ret i32 %.040
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal fastcc void @tcp_init_tso_segs(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #12 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load i16, ptr %i.a, align 8
  switch i16 %.val, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 50
  %.val11 = load i16, ptr %i.b, align 2
  %i.c = zext i16 %.val11 to i32
  %.not10 = icmp eq i32 %1, %i.c
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %1
  br i1 %.not.i, label %bb.d, label %tcp_set_skb_tso_segs.exit

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i32 %1 to i16
  %i.g = add i32 %1, -1
  %i.h = add i32 %i.g, %i.e
  %i.i = udiv i32 %i.h, %1
  %i.j = trunc i32 %i.i to i16
  br label %tcp_set_skb_tso_segs.exit

tcp_set_skb_tso_segs.exit:                        ; preds = %bb.c, %bb.d
  %.sink13.i = phi i16 [ %i.f, %bb.d ], [ 0, %bb.c ]
  %.sink.i = phi i16 [ %i.j, %bb.d ], [ 1, %bb.c ]
  %i.k = getelementptr i8, ptr %0, i64 50
  store i16 %.sink13.i, ptr %i.k, align 2
  store i16 %.sink.i, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %tcp_set_skb_tso_segs.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @tcp_mtu_check_reprobe(ptr noundef %0) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 1480
  %i.c = load volatile i32, ptr %i.b, align 8
  %i.d = load volatile i64, ptr @jiffies, align 64
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 1292       ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub i32 %i.e, %i.g
  %i.i = mul i32 %i.c, 1000
  %.not = icmp ult i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 1280
  %i.k = tail call i32 @tcp_current_mss(ptr noundef %0) #21
  %i.l = getelementptr i8, ptr %0, i64 1288       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, -2147483648
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %0, i64 1786
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, 20
  %i.s = getelementptr i8, ptr %0, i64 1224
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = zext i16 %i.v to i32
  %i.x = add nuw nsw i32 %i.r, %i.w
  store i32 %i.x, ptr %i.j, align 8
  %i.y = getelementptr i8, ptr %0, i64 1468
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = zext i16 %i.z to i32
  %i.ab = add i32 %i.k, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 1262
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = add i32 %i.ab, %i.ae
  %i.ag = load i16, ptr %i.u, align 8
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = getelementptr i8, ptr %0, i64 1284
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load volatile i64, ptr @jiffies, align 64
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc noundef zeroext i1 @tcp_can_coalesce_send_queue_head(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) unnamed_addr #16 align 16 prefalign(16) {
bb.a:
end_hunk_0
