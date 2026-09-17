Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_packet?download=true
inline.NumInlined: 737
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fanout_add:bb.a
  %i.db = getelementptr i8, ptr %0, i64 1296
  %i.dc = load volatile i64, ptr %i.db, align 16
  %i.dd = and i64 %i.dc, 16
  %.not160 = icmp eq i64 %i.dd, 0
  br i1 %.not160, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %packet_sock_flag.exit
  tail call void @__dev_remove_pack(ptr noundef %i.cl) #20
  %.val140 = load ptr, ptr %i.i, align 8
  tail call fastcc void @__fanout_link(ptr noundef %0, ptr %.val140) #22
  br label %bb.ai

bb.ai:                                            ; preds = %packet_sock_flag.exit, %bb.ah
  tail call void @_raw_spin_unlock(ptr noundef %i.cd) #20
  br label %.critedge

bb.aj:                                            ; preds = %bb.ac, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0117.ph = phi i32 [ -22, %bb.ad ], [ -22, %bb.ae ], [ -22, %bb.af ], [ -28, %bb.ag ], [ -22, %bb.ac ] ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.cd) #20
  %i.de = getelementptr i8, ptr %.1115, i64 52
  %i.df = load volatile i32, ptr %i.de, align 4
  %.not137 = icmp eq i32 %i.df, 0
  br i1 %.not137, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr i8, ptr %.1115, i64 32    ; 2 uses
  %i.dh = getelementptr i8, ptr %.1115, i64 40    ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.di, ptr %i.dk, align 8
  store volatile ptr %i.dj, ptr %i.di, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.dg, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.dh, align 8
  tail call void @kvfree(ptr noundef nonnull %.1115) #20
  br label %.critedge

.critedge:                                        ; preds = %__fanout_id_is_free.exit.i.1, %bb.ai, %bb.y, %bb.g, %bb.aj, %bb.ak, %.thread, %bb.v, %bb.t, %_kzalloc_noprof.exit, %bb.c
  %.1118 = phi i32 [ -114, %bb.c ], [ -12, %_kzalloc_noprof.exit ], [ -22, %bb.t ], [ -22, %bb.v ], [ %.0117.ph, %bb.aj ], [ %.0117.ph, %bb.ak ], [ 0, %bb.ai ], [ -22, %.thread ], [ -12, %bb.y ], [ -22, %bb.g ], [ -12, %__fanout_id_is_free.exit.i.1 ]
  %.2 = phi ptr [ null, %bb.c ], [ null, %_kzalloc_noprof.exit ], [ %.0111, %bb.t ], [ %.0111, %bb.v ], [ %.0111, %bb.aj ], [ %.0111, %bb.ak ], [ null, %bb.ai ], [ %.0111, %.thread ], [ %.0111, %bb.y ], [ %.0111, %bb.g ], [ %.0111, %__fanout_id_is_free.exit.i.1 ]
  tail call void @kfree(ptr noundef %.2) #20
  tail call void @mutex_unlock(ptr noundef nonnull @fanout_mutex) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.b, %.critedge
  %.0 = phi i32 [ -22, %bb.b ], [ %.1118, %.critedge ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @fanout_set_data(ptr nofree noundef captures(address) %0, ptr %1, i8 %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.sock_fprog, align 8         ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 776        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 18
  %i.f = load i8, ptr %i.e, align 2
  switch i8 %i.f, label %bb.h [
    i8 6, label %sock_flag.exit.i
    i8 7, label %sock_flag.exit.i8
  ]

sock_flag.exit.i:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 2097152
  %.not10.i = icmp eq i64 %i.i, 0
  br i1 %.not10.i, label %bb.b, label %fanout_set_data_cbpf.exit

bb.b:                                             ; preds = %sock_flag.exit.i
  store ptr null, ptr %i.b, align 8, !annotation !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !31
  %i.j = call i32 @copy_bpf_fprog_from_user(ptr noundef nonnull %4, ptr %1, i8 %2, i32 noundef %3) #20 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %fanout_set_data_cbpf.exit

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @bpf_prog_create_from_user(ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef null, i1 noundef zeroext false) #20 ; 2 uses
  %.not9.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i, label %bb.d, label %fanout_set_data_cbpf.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = getelementptr i8, ptr %i.l, i64 48       ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.n) #20
  %i.o = getelementptr i8, ptr %i.l, i64 24       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !32
  store volatile ptr %i.m, ptr %i.o, align 8
  call void @_raw_spin_unlock(ptr noundef %i.n) #20
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %fanout_set_data_cbpf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @synchronize_net() #20
  call void @bpf_prog_destroy(ptr noundef nonnull %i.p) #20
  br label %fanout_set_data_cbpf.exit

fanout_set_data_cbpf.exit:                        ; preds = %sock_flag.exit.i, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ -1, %sock_flag.exit.i ], [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.h

sock_flag.exit.i8:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr i8, ptr %0, i64 96
  %i.r = load volatile i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 2097152
  %.not14.i = icmp eq i64 %i.s, 0
  br i1 %.not14.i, label %bb.f, label %fanout_set_data_ebpf.exit

bb.f:                                             ; preds = %sock_flag.exit.i8
  %.not.i10 = icmp eq i32 %3, 4
  br i1 %.not.i10, label %bb.g, label %fanout_set_data_ebpf.exit

bb.g:                                             ; preds = %bb.f
  %i.t = trunc i8 %2 to i1
  br i1 %i.t, label %copy_from_sockptr.exit.thread.i, label %copy_from_sockptr.exit.i

copy_from_sockptr.exit.i:                         ; preds = %bb.g
  store i32 0, ptr %i.a, align 4, !annotation !31
  %i.u = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef range(i64 -2147483648, 4294967296) 4) #20
  %i.v = and i64 %i.u, 4294967295
  %.not8.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i, label %copy_from_sockptr.exit.thread.i, label %fanout_set_data_ebpf.exit

copy_from_sockptr.exit.thread.i:                  ; preds = %copy_from_sockptr.exit.i, %bb.g
  br label %fanout_set_data_ebpf.exit

fanout_set_data_ebpf.exit:                        ; preds = %sock_flag.exit.i8, %bb.f, %copy_from_sockptr.exit.i, %copy_from_sockptr.exit.thread.i
  %.0.i9 = phi i32 [ -95, %copy_from_sockptr.exit.thread.i ], [ -1, %sock_flag.exit.i8 ], [ -22, %bb.f ], [ -14, %copy_from_sockptr.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %fanout_set_data_ebpf.exit, %fanout_set_data_cbpf.exit
  %.0 = phi i32 [ %.0.i9, %fanout_set_data_ebpf.exit ], [ %.0.i, %fanout_set_data_cbpf.exit ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__copy_overflow(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @packet_rcv_fanout(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load volatile i32, ptr %i.c, align 8     ; 11 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 264
  %.val56 = load ptr, ptr %i.e, align 8
  %i.f = icmp eq ptr %.val56, %.val
  %i.g = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #20
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 19       ; 2 uses
  %.val58 = load i8, ptr %i.h, align 1
  %.not83 = icmp sgt i8 %.val58, -1
  br i1 %.not83, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @ip_check_defrag(ptr noundef %.val, ptr noundef %0, i32 noundef 196613) #20 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi ptr [ %i.i, %bb.d ], [ %0, %bb.c ]  ; 10 uses
  %i.j = getelementptr i8, ptr %i.b, i64 18
  %i.k = load i8, ptr %i.j, align 2
  switch i8 %i.k, label %bb.f [
    i8 7, label %bb.r
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 3, label %bb.k
    i8 6, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @__skb_get_hash_symmetric_net(ptr noundef null, ptr noundef %.052) #20
  %4 = zext i32 %i.l to i64
  %5 = zext i32 %i.d to i64
  %6 = mul nuw i64 %4, %5
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  br label %fanout_demux_rnd.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, i32 1, ptr elementtype(i32) %i.m) #21, !srcloc !44
  %i.o = add i32 %i.n, 1
  %i.p = urem i32 %i.o, %i.d
  br label %fanout_demux_rnd.exit

bb.h:                                             ; preds = %bb.e
  %i.q = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #25, !srcloc !193
  %i.r = urem i32 %i.q, %i.d
  br label %fanout_demux_rnd.exit

bb.i:                                             ; preds = %bb.e
  %i.s = tail call i32 @__get_random_u32_below(i32 noundef range(i32 1, 0) %i.d) #20
  br label %fanout_demux_rnd.exit

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.052, i64 124
  %.052.val = load i16, ptr %i.t, align 4
  %i.u = zext i16 %.052.val to i32
  %i.v = urem i32 %i.u, %i.d
  br label %fanout_demux_rnd.exit

bb.k:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.b, i64 136      ; 2 uses
  %i.x = load volatile ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 1312     ; 4 uses
  %i.z = load ptr, ptr %i.y, align 32
  %i.aa = load i32, ptr %i.z, align 64
  %i.ab = add i32 %i.d, -1
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ab) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.k
  %.050.i = phi i32 [ %i.ac, %bb.k ], [ %spec.store.select.i, %bb.p ] ; 5 uses
  %i.ad = zext i32 %.050.i to i64
  %i.ae = getelementptr [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load volatile ptr, ptr %i.ae, align 8   ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.p, label %packet_sock_flag.exit.i

packet_sock_flag.exit.i:                          ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.af, i64 1296   ; 6 uses
  %i.ah = load volatile i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 32
  %.not64.i = icmp eq i64 %i.ai, 0
  br i1 %.not64.i, label %packet_sock_flag.exit.i58.i, label %bb.p

packet_sock_flag.exit.i58.i:                      ; preds = %packet_sock_flag.exit.i
  %i.aj = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef nonnull %i.af, ptr noundef readonly %.052) #22, !srcloc !194 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 2                    ; 2 uses
  %i.al = load volatile i64, ptr %i.ag, align 8
  %.in.i.in.i60.i = and i64 %i.al, 32
  %.in.i.i61.i = icmp ne i64 %.in.i.in.i60.i, 0
  %i.am = xor i1 %i.ak, %.in.i.i61.i
  br i1 %i.am, label %bb.m, label %packet_rcv_has_room.exit62.i

bb.m:                                             ; preds = %packet_sock_flag.exit.i58.i
  br i1 %i.ak, label %packet_rcv_has_room.exit62.thread63.i, label %packet_rcv_has_room.exit62.thread.i

packet_rcv_has_room.exit62.thread63.i:            ; preds = %bb.m
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ag, i32 32, ptr elementtype(i8) %i.ag) #21, !srcloc !23
  br label %bb.p

packet_rcv_has_room.exit62.thread.i:              ; preds = %bb.m
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ag, i32 -33, ptr elementtype(i8) %i.ag) #21, !srcloc !17
  br label %.loopexit.i

packet_rcv_has_room.exit62.i:                     ; preds = %packet_sock_flag.exit.i58.i
  %i.an = icmp eq i32 %i.aj, 2
  br i1 %i.an, label %.loopexit.i, label %bb.p

.loopexit.i:                                      ; preds = %packet_rcv_has_room.exit62.i, %packet_rcv_has_room.exit62.thread.i
  %.not54.i = icmp eq i32 %.050.i, %i.ac
  br i1 %.not54.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.ao = load ptr, ptr %i.y, align 32
  store i32 %.050.i, ptr %i.ao, align 64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit.i
  %i.ap = load ptr, ptr %i.y, align 32
  %i.aq = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aq, ptr elementtype(i64) %i.aq) #21, !srcloc !51
  br label %fanout_demux_rnd.exit

bb.p:                                             ; preds = %packet_rcv_has_room.exit62.i, %packet_rcv_has_room.exit62.thread63.i, %packet_sock_flag.exit.i, %bb.l
  %i.ar = add i32 %.050.i, 1                      ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.d
  %spec.store.select.i = select i1 %i.as, i32 0, i32 %i.ar ; 2 uses
  %.not55.i = icmp eq i32 %spec.store.select.i, %i.ac
  br i1 %.not55.i, label %bb.q, label %bb.l, !llvm.loop !192

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.y, align 32
  %i.au = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.au, ptr elementtype(i64) %i.au) #21, !srcloc !51
  br label %fanout_demux_rnd.exit

bb.r:                                             ; preds = %bb.e, %bb.e
  tail call void @__rcu_read_lock() #20
  %i.av = getelementptr i8, ptr %i.b, i64 24
  %i.aw = load volatile ptr, ptr %i.av, align 8   ; 2 uses
  %.not.i59 = icmp eq ptr %i.aw, null
  br i1 %.not.i59, label %fanout_demux_bpf.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc i32 @bpf_prog_run_clear_cb(ptr noundef nonnull %i.aw, ptr noundef %.052) #22, !srcloc !195
  %i.ay = urem i32 %i.ax, %i.d
  br label %fanout_demux_bpf.exit

fanout_demux_bpf.exit:                            ; preds = %bb.r, %bb.s
  %.0.i60 = phi i32 [ %i.ay, %bb.s ], [ 0, %bb.r ]
  tail call void @__rcu_read_unlock() #20
  br label %fanout_demux_rnd.exit

fanout_demux_rnd.exit:                            ; preds = %bb.o, %bb.q, %bb.i, %fanout_demux_bpf.exit, %bb.j, %bb.h, %bb.g, %bb.f
  %.053 = phi i32 [ %8, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %.0.i60, %fanout_demux_bpf.exit ], [ %i.v, %bb.j ], [ %.050.i, %bb.o ], [ %i.s, %bb.i ], [ 0, %bb.q ] ; 2 uses
  %.val57 = load i8, ptr %i.h, align 1
  %i.az = and i8 %.val57, 16
  %.not84 = icmp eq i8 %i.az, 0
  br i1 %.not84, label %fanout_demux_rnd.exit.fanout_demux_rollover.exit82_crit_edge, label %packet_sock_flag.exit.i.i

fanout_demux_rnd.exit.fanout_demux_rollover.exit82_crit_edge: ; preds = %fanout_demux_rnd.exit
  %.pre = zext i32 %.053 to i64
  br label %fanout_demux_rollover.exit82

packet_sock_flag.exit.i.i:                        ; preds = %fanout_demux_rnd.exit
  %i.ba = getelementptr i8, ptr %i.b, i64 136     ; 2 uses
  %i.bb = zext i32 %.053 to i64                   ; 5 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load volatile ptr, ptr %i.bc, align 8   ; 5 uses
  %i.be = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %i.bd, ptr noundef readonly %.052) #22, !srcloc !194 ; 3 uses
  %i.bf = icmp ne i32 %i.be, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 1296   ; 5 uses
  %i.bh = load volatile i64, ptr %i.bg, align 8
  %.in.i.in.i.i = and i64 %i.bh, 32
  %.in.i.i.i = icmp ne i64 %.in.i.in.i.i, 0
  %i.bi = xor i1 %i.bf, %.in.i.i.i
  br i1 %i.bi, label %bb.t, label %packet_rcv_has_room.exit.i

bb.t:                                             ; preds = %packet_sock_flag.exit.i.i
  br i1 %i.bf, label %bb.u, label %packet_rcv_has_room.exit.thread.i

bb.u:                                             ; preds = %bb.t
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bg, i32 32, ptr elementtype(i8) %i.bg) #21, !srcloc !23
  br label %packet_rcv_has_room.exit.i

packet_rcv_has_room.exit.thread.i:                ; preds = %bb.t
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bg, i32 -33, ptr elementtype(i8) %i.bg) #21, !srcloc !17
  br label %fanout_demux_rollover.exit82

packet_rcv_has_room.exit.i:                       ; preds = %bb.u, %packet_sock_flag.exit.i.i
  switch i32 %i.be, label %bb.y [
    i32 2, label %fanout_demux_rollover.exit82
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %packet_rcv_has_room.exit.i
  %i.bj = getelementptr i8, ptr %i.bd, i64 1312
  %.val.i = load ptr, ptr %i.bj, align 32         ; 16 uses
  %i.bk = getelementptr i8, ptr %.val.i, i64 64   ; 2 uses
  %i.bl = getelementptr i8, ptr %.052, i64 129
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = and i32 %i.bm, 1536
  %or.cond.i.i56.i = icmp eq i32 %i.bn, 0
  br i1 %or.cond.i.i56.i, label %bb.w, label %skb_get_hash.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @__skb_get_hash_net(ptr noundef null, ptr noundef %.052) #20
  br label %skb_get_hash.exit.i.i

skb_get_hash.exit.i.i:                            ; preds = %bb.w, %bb.v
  %i.bo = getelementptr i8, ptr %.052, i64 152
  %i.bp = load i32, ptr %i.bo, align 8            ; 18 uses
  %i.bq = load volatile i32, ptr %i.bk, align 4
  %i.br = getelementptr i8, ptr %.val.i, i64 68
  %i.bs = load volatile i32, ptr %i.br, align 4
  %i.bt = getelementptr i8, ptr %.val.i, i64 72
  %i.bu = load volatile i32, ptr %i.bt, align 4
  %i.bv = getelementptr i8, ptr %.val.i, i64 76
  %i.bw = load volatile i32, ptr %i.bv, align 4
  %i.bx = getelementptr i8, ptr %.val.i, i64 80
  %i.by = load volatile i32, ptr %i.bx, align 4
  %i.bz = getelementptr i8, ptr %.val.i, i64 84
  %i.ca = load volatile i32, ptr %i.bz, align 4
  %i.cb = getelementptr i8, ptr %.val.i, i64 88
  %i.cc = load volatile i32, ptr %i.cb, align 4
  %i.cd = getelementptr i8, ptr %.val.i, i64 92
  %i.ce = load volatile i32, ptr %i.cd, align 4
  %i.cf = getelementptr i8, ptr %.val.i, i64 96
  %i.cg = load volatile i32, ptr %i.cf, align 4
  %i.ch = getelementptr i8, ptr %.val.i, i64 100
  %i.ci = load volatile i32, ptr %i.ch, align 4
  %i.cj = getelementptr i8, ptr %.val.i, i64 104
  %i.ck = load volatile i32, ptr %i.cj, align 4
  %i.cl = getelementptr i8, ptr %.val.i, i64 108
  %i.cm = load volatile i32, ptr %i.cl, align 4
  %i.cn = getelementptr i8, ptr %.val.i, i64 112
  %i.co = load volatile i32, ptr %i.cn, align 4
  %i.cp = getelementptr i8, ptr %.val.i, i64 116
  %i.cq = load volatile i32, ptr %i.cp, align 4
  %i.cr = getelementptr i8, ptr %.val.i, i64 120
  %i.cs = load volatile i32, ptr %i.cr, align 4
  %i.ct = getelementptr i8, ptr %.val.i, i64 124
  %i.cu = load volatile i32, ptr %i.ct, align 4
  %i.cv = tail call zeroext i8 @get_random_u8() #20
  %i.cw = lshr i8 %i.cv, 4
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.bk, i64 %i.cx ; 2 uses
  %i.cz = load volatile i32, ptr %i.cy, align 4
  %.not.i.i61 = icmp eq i32 %i.cz, %i.bp
  br i1 %.not.i.i61, label %fanout_flow_is_huge.exit.i, label %bb.x

bb.x:                                             ; preds = %skb_get_hash.exit.i.i
  store volatile i32 %i.bp, ptr %i.cy, align 4
  br label %fanout_flow_is_huge.exit.i

fanout_flow_is_huge.exit.i:                       ; preds = %bb.x, %skb_get_hash.exit.i.i
  %i.da = icmp eq i32 %i.bq, %i.bp
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.bs, %i.bp
  %i.dd = zext i1 %i.dc to i32
  %spec.select.1.i.i = add nuw nsw i32 %i.dd, %i.db
  %i.de = icmp eq i32 %i.bu, %i.bp
  %i.df = zext i1 %i.de to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %i.df
  %i.dg = icmp eq i32 %i.bw, %i.bp
  %i.dh = zext i1 %i.dg to i32
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %i.dh
  %i.di = icmp eq i32 %i.by, %i.bp
  %i.dj = zext i1 %i.di to i32
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %i.dj
  %i.dk = icmp eq i32 %i.ca, %i.bp
  %i.dl = zext i1 %i.dk to i32
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %i.dl
  %i.dm = icmp eq i32 %i.cc, %i.bp
  %i.dn = zext i1 %i.dm to i32
  %spec.select.6.i.i = add nuw nsw i32 %spec.select.5.i.i, %i.dn
  %i.do = icmp eq i32 %i.ce, %i.bp
  %i.dp = zext i1 %i.do to i32
  %spec.select.7.i.i = add nuw nsw i32 %spec.select.6.i.i, %i.dp
  %i.dq = icmp eq i32 %i.cg, %i.bp
  %i.dr = zext i1 %i.dq to i32
  %spec.select.8.i.i = add nuw nsw i32 %spec.select.7.i.i, %i.dr
  %i.ds = icmp eq i32 %i.ci, %i.bp
  %i.dt = zext i1 %i.ds to i32
  %spec.select.9.i.i = add nuw nsw i32 %spec.select.8.i.i, %i.dt
  %i.du = icmp eq i32 %i.ck, %i.bp
  %i.dv = zext i1 %i.du to i32
  %spec.select.10.i.i = add nuw nsw i32 %spec.select.9.i.i, %i.dv
  %i.dw = icmp eq i32 %i.cm, %i.bp
  %i.dx = zext i1 %i.dw to i32
  %spec.select.11.i.i = add nuw nsw i32 %spec.select.10.i.i, %i.dx
  %i.dy = icmp eq i32 %i.co, %i.bp
  %i.dz = zext i1 %i.dy to i32
  %spec.select.12.i.i = add nuw nsw i32 %spec.select.11.i.i, %i.dz
  %i.ea = icmp eq i32 %i.cq, %i.bp
  %i.eb = zext i1 %i.ea to i32
  %spec.select.13.i.i = add nuw nsw i32 %spec.select.12.i.i, %i.eb
  %i.ec = icmp eq i32 %i.cs, %i.bp
  %i.ed = zext i1 %i.ec to i32
  %spec.select.14.i.i = add nuw nsw i32 %spec.select.13.i.i, %i.ed
  %i.ee = icmp eq i32 %i.cu, %i.bp
  %i.ef = zext i1 %i.ee to i32
  %spec.select.15.i.i = add nuw nsw i32 %spec.select.14.i.i, %i.ef
  %i.eg = icmp samesign ugt i32 %spec.select.15.i.i, 8
  br i1 %i.eg, label %bb.y, label %fanout_demux_rollover.exit82

bb.y:                                             ; preds = %fanout_flow_is_huge.exit.i, %packet_rcv_has_room.exit.i
  %i.eh = icmp eq i32 %i.be, 1
  %i.ei = getelementptr i8, ptr %i.bd, i64 1312   ; 5 uses
  %i.ej = load ptr, ptr %i.ei, align 32
  %i.ek = load i32, ptr %i.ej, align 64
  %i.el = add i32 %i.d, -1
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.el) ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %bb.y
  %.050.i63 = phi i32 [ %i.em, %bb.y ], [ %spec.store.select.i68, %bb.ae ] ; 4 uses
  %i.en = zext i32 %.050.i63 to i64               ; 3 uses
  %i.eo = getelementptr [8 x i8], ptr %i.ba, i64 %i.en
  %i.ep = load volatile ptr, ptr %i.eo, align 8   ; 3 uses
  %.not.i64 = icmp eq ptr %i.ep, %i.bd
  br i1 %.not.i64, label %bb.ae, label %packet_sock_flag.exit.i66

packet_sock_flag.exit.i66:                        ; preds = %bb.z
  %i.eq = getelementptr i8, ptr %i.ep, i64 1296   ; 6 uses
  %i.er = load volatile i64, ptr %i.eq, align 8
  %i.es = and i64 %i.er, 32
  %.not64.i67 = icmp eq i64 %i.es, 0
  br i1 %.not64.i67, label %packet_sock_flag.exit.i58.i71, label %bb.ae

packet_sock_flag.exit.i58.i71:                    ; preds = %packet_sock_flag.exit.i66
  %i.et = tail call fastcc i32 @__packet_rcv_has_room(ptr noundef %i.ep, ptr noundef readonly %.052) #22, !srcloc !194 ; 2 uses
  %i.eu = icmp ne i32 %i.et, 2                    ; 2 uses
  %i.ev = load volatile i64, ptr %i.eq, align 8
  %.in.i.in.i60.i73 = and i64 %i.ev, 32
  %.in.i.i61.i74 = icmp ne i64 %.in.i.in.i60.i73, 0
  %i.ew = xor i1 %i.eu, %.in.i.i61.i74
  br i1 %i.ew, label %bb.aa, label %packet_rcv_has_room.exit62.i75

bb.aa:                                            ; preds = %packet_sock_flag.exit.i58.i71
  br i1 %i.eu, label %packet_rcv_has_room.exit62.thread63.i79, label %packet_rcv_has_room.exit62.thread.i78

packet_rcv_has_room.exit62.thread63.i79:          ; preds = %bb.aa
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.eq, i32 32, ptr elementtype(i8) %i.eq) #21, !srcloc !23
  br label %bb.ae

packet_rcv_has_room.exit62.thread.i78:            ; preds = %bb.aa
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.eq, i32 -33, ptr elementtype(i8) %i.eq) #21, !srcloc !17
  br label %.loopexit.i76

packet_rcv_has_room.exit62.i75:                   ; preds = %packet_sock_flag.exit.i58.i71
  %i.ex = icmp eq i32 %i.et, 2
  br i1 %i.ex, label %.loopexit.i76, label %bb.ae

.loopexit.i76:                                    ; preds = %packet_rcv_has_room.exit62.i75, %packet_rcv_has_room.exit62.thread.i78
end_hunk_0
begin_hunk_1_@packet_sendmsg_spkt:bb.a
  %i.cf = tail call zeroext i1 @capable(i32 noundef 17) #20
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %i.ca, i64 %2
  %i.ch = load i16, ptr %i.by, align 4
  %i.ci = zext i16 %i.ch to i64
  %i.cj = sub nsw i64 %i.ci, %2
  %sext = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 0, i64 %i.ck, i1 false)
  br label %dev_validate_header.exit.thread119

bb.u:                                             ; preds = %bb.s
  %i.cl = getelementptr i8, ptr %i.r, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16           ; 2 uses
  %.not16.i = icmp eq ptr %i.cm, null
  br i1 %.not16.i, label %dev_validate_header.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.co, null
  br i1 %.not17.i, label %dev_validate_header.exit.thread, label %dev_validate_header.exit

dev_validate_header.exit:                         ; preds = %bb.v
  %i.cp = tail call zeroext i1 %i.co(ptr noundef %i.ca, i32 noundef %i.n) #20, !inline_history !210
  br i1 %i.cp, label %dev_validate_header.exit.thread119, label %dev_validate_header.exit.thread

dev_validate_header.exit.thread119:               ; preds = %bb.t, %bb.q, %dev_validate_header.exit
  %i.cq = getelementptr i8, ptr %.086, i64 112
  %i.cr = load i32, ptr %i.cq, align 8
  %.not102 = icmp eq i32 %i.cr, 0
  br i1 %.not102, label %dev_validate_header.exit.thread, label %bb.w

bb.w:                                             ; preds = %dev_validate_header.exit.thread119
  %i.cs = load i32, ptr %i.bx, align 8
  %i.ct = load i16, ptr %i.by, align 4
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add i32 %i.cs, %.181
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ugt i64 %2, %i.cx
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr i8, ptr %i.r, i64 544
  %.val108 = load i16, ptr %i.cz, align 32
  %.not.i109 = icmp eq i16 %.val108, 1
  br i1 %.not.i109, label %packet_extra_vlan_len_allowed.exit, label %dev_validate_header.exit.thread, !prof !22

packet_extra_vlan_len_allowed.exit:               ; preds = %bb.x
  %i.da = load ptr, ptr %i.bz, align 8
  %i.db = getelementptr i8, ptr %.086, i64 200
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = trunc i64 %i.df to i16
  %i.dh = getelementptr i8, ptr %.086, i64 186
  store i16 %i.dg, ptr %i.dh, align 2
  %i.di = and i64 %i.df, 65535
  %i.dj = getelementptr i8, ptr %i.dc, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 12
  %i.dl = load i16, ptr %i.dk, align 1
  %i.dm = icmp eq i16 %i.dl, 129
  br i1 %i.dm, label %bb.y, label %dev_validate_header.exit.thread

bb.y:                                             ; preds = %packet_extra_vlan_len_allowed.exit, %bb.w
  %i.dn = getelementptr i8, ptr %i.b, i64 524
  %i.do = load volatile i32, ptr %i.dn, align 4
  %i.dp = getelementptr i8, ptr %i.b, i64 352
  %i.dq = load volatile i32, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.b, i64 520
  %i.ds = load volatile i32, ptr %i.dr, align 8
  store i64 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.do, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.dq, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 %i.ds, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  %i.dt = getelementptr i8, ptr %1, i64 72
  %i.du = load i64, ptr %i.dt, align 8
  %.not103 = icmp eq i64 %i.du, 0
  br i1 %.not103, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = call i32 @sock_cmsg_send(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull %3) #20 ; 2 uses
  %.not104 = icmp eq i32 %i.dv, 0
  br i1 %.not104, label %bb.aa, label %dev_validate_header.exit.thread, !prof !22

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dw = getelementptr i8, ptr %.086, i64 180
  store i16 %.085, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %.086, i64 16
  store ptr %i.r, ptr %i.dx, align 8
  %i.dy = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.dz = getelementptr i8, ptr %.086, i64 144
  store i32 %i.dy, ptr %i.dz, align 8
  %i.ea = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.eb = getelementptr i8, ptr %.086, i64 168
  store i32 %i.ea, ptr %i.eb, align 8
  %i.ec = load i64, ptr %3, align 8
  %i.ed = getelementptr i8, ptr %i.b, i64 653
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  call fastcc void @skb_set_delivery_type_by_clockid(ptr noundef %.086, i64 noundef %i.ec, i32 noundef %i.ef) #22, !srcloc !211
  call fastcc void @skb_setup_tx_timestamp(ptr noundef %.086, ptr noundef nonnull %3) #22, !srcloc !212
  %.not105 = icmp eq i32 %.181, 0
  br i1 %.not105, label %bb.ac, label %bb.ab, !prof !22

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr i8, ptr %.086, i64 129    ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = or i32 %i.eh, 8192
  store i32 %i.ei, ptr %i.eg, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call fastcc void @packet_parse_headers(ptr noundef %.086, ptr noundef %0) #22, !srcloc !213
  %i.ej = call i32 @__dev_queue_xmit(ptr noundef nonnull %.086, ptr noundef null) #20 ; 0 uses
  call void @__rcu_read_unlock() #20
  br label %.thread

dev_validate_header.exit.thread:                  ; preds = %bb.h, %bb.i, %bb.g, %bb.f, %bb.x, %bb.u, %bb.v, %bb.r, %packet_extra_vlan_len_allowed.exit, %dev_validate_header.exit, %dev_validate_header.exit.thread119, %bb.z
  %.183 = phi i32 [ -22, %bb.u ], [ -22, %bb.r ], [ %i.dv, %bb.z ], [ -22, %dev_validate_header.exit ], [ -22, %bb.v ], [ -90, %bb.x ], [ -22, %dev_validate_header.exit.thread119 ], [ -90, %packet_extra_vlan_len_allowed.exit ], [ -100, %bb.g ], [ -93, %bb.h ], [ -90, %bb.i ], [ -19, %bb.f ]
  call void @__rcu_read_unlock() #20
  br label %bb.ad

bb.ad:                                            ; preds = %.thread114, %dev_validate_header.exit.thread
  %.187 = phi ptr [ %.086, %dev_validate_header.exit.thread ], [ %i.ax, %.thread114 ]
  %.284 = phi i32 [ %.183, %dev_validate_header.exit.thread ], [ -14, %.thread114 ]
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %.187, i32 noundef 2) #20
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.a, %bb.b, %bb.ad, %bb.ac
  %.2 = phi i32 [ -22, %bb.b ], [ %.284, %bb.ad ], [ %i.n, %bb.ac ], [ -107, %bb.a ], [ -105, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @pcpu_alloc_noprof(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb_reason(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nocallback nounwind }
attributes #16 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #17 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { noredzone nounwind "no-builtin-wcslen" }
attributes #21 = { nounwind }
attributes #22 = { noredzone "no-builtin-wcslen" }
attributes #23 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #24 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #25 = { nounwind memory(read) }
attributes #26 = { nounwind memory(none) }
attributes #27 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = !{!"rsp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 2159805418}
!16 = !{i64 10266}
!17 = !{i64 2148178771, i64 2148178810, i64 2148178831, i64 2148178868, i64 2148178891, i64 2148178762}
!18 = !{i64 2149148824, i64 2149148863, i64 2149148884, i64 2149148921, i64 2149148944, i64 2149148953}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{i64 2162848600}
!21 = !{i64 2162849538}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{i64 2148177459, i64 2148177498, i64 2148177519, i64 2148177556, i64 2148177579, i64 2148177450}
!24 = !{i64 53847}
!25 = !{i64 2157098162, i64 2157098037}
!26 = !{i64 2157098685, i64 2157099161, i64 2157099194, i64 2157099229, i64 2157099245, i64 2157100086, i64 2157100144, i64 2157100193, i64 2157100003, i64 2157099304, i64 2157099336}
!27 = !{i64 2149135912, i64 2149135951, i64 2149135972, i64 2149136009, i64 2149136032, i64 2149135903}
!28 = !{i64 2150890659}
!29 = !{i64 2148451802, i64 2148451842, i64 2148451959, i64 2148451980, i64 2148452023, i64 2148452038, i64 2148452071, i64 2148452105, i64 2148452129}
!30 = !{i64 2149138618, i64 2149138657, i64 2149138678, i64 2149138715, i64 2149138738, i64 2149138609}
!31 = !{!"auto-init"}
!32 = !{i64 2162877912}
!33 = !{i64 2148178397}
!34 = !{i64 2162617542}
!35 = !{i64 2162630267, i64 2162630294, i64 2162630689, i64 2162630722, i64 2162630757, i64 2162630773, i64 2162631614, i64 2162631672, i64 2162631721, i64 2162631531, i64 2162630832, i64 2162630864}
!36 = !{i64 2162624591}
!37 = !{i64 2162632197, i64 2162632067}
!38 = !{i64 2162632728, i64 2162633204, i64 2162633237, i64 2162633272, i64 2162633288, i64 2162634129, i64 2162634187, i64 2162634236, i64 2162634046, i64 2162633347, i64 2162633379}
!39 = !{i64 35849}
!40 = !{i64 2159817578}
!41 = !{i64 2157136024, i64 2157135899}
!42 = !{i64 2157136547, i64 2157137586, i64 2157137619, i64 2157137654, i64 2157137670, i64 2157138597, i64 2157138655, i64 2157138704, i64 2157138514, i64 2157137729, i64 2157137761, i64 2157137844}
!43 = !{i64 2157139007, i64 2157138883}
!44 = !{i64 2149146580, i64 2149146619, i64 2149146640, i64 2149146677, i64 2149146700, i64 2149146709}
!45 = !{i64 2162613207, i64 2162613234, i64 2162613629, i64 2162613662, i64 2162613697, i64 2162613713, i64 2162614554, i64 2162614612, i64 2162614661, i64 2162614471, i64 2162613772, i64 2162613804}
!46 = !{i64 2162611592}
!47 = !{i64 2162615137, i64 2162615007}
!48 = !{i64 2162615668, i64 2162616144, i64 2162616177, i64 2162616212, i64 2162616228, i64 2162617069, i64 2162617127, i64 2162617176, i64 2162616986, i64 2162616287, i64 2162616319}
!49 = !{i64 2162617364}
!50 = !{!"branch_weights", i32 2000, i32 0, i32 0}
!51 = !{i64 2149166141, i64 2149166180, i64 2149166201, i64 2149166238, i64 2149166261, i64 2149166132}
!52 = !{i64 686270}
!53 = !{!"branch_weights", i32 1, i32 1999}
!54 = !{i64 2162646575}
!55 = !{i64 2162649942}
!56 = !{i64 2162646300}
!57 = !{i64 2162650120}
!58 = !{i64 2151839012, i64 2151838887}
!59 = !{i64 2151839535, i64 2151840588, i64 2151840621, i64 2151840656, i64 2151840672, i64 2151841599, i64 2151841657, i64 2151841706, i64 2151841516, i64 2151840731, i64 2151840763, i64 2151840846}
!60 = !{i64 2151842010, i64 2151841886}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{i64 104885}
!64 = distinct !{!64, !14}
!65 = !{i64 2162850417, i64 2162850287}
!66 = !{i64 2162850948, i64 2162851424, i64 2162851457, i64 2162851492, i64 2162851508, i64 2162852349, i64 2162852407, i64 2162852456, i64 2162852266, i64 2162851567, i64 2162851599}
!67 = !{i64 2162862392}
!68 = !{i64 2163254177, i64 2163254047}
!69 = !{i64 2163254708, i64 2163255779, i64 2163255812, i64 2163255847, i64 2163255863, i64 2163256790, i64 2163256848, i64 2163256897, i64 2163256707, i64 2163255922, i64 2163255954, i64 2163256037}
!70 = !{i64 2163257205, i64 2163257076}
!71 = distinct !{!71, !14}
!72 = !{i64 86282}
!73 = !{i64 2153249949}
!74 = !{i64 2153231921}
!75 = !{i64 2161192848}
!76 = !{i64 2162710459, i64 2162710329}
!77 = !{i64 2162710990, i64 2162716120, i64 2162716153, i64 2162716188, i64 2162716204, i64 2162717131, i64 2162717189, i64 2162717238, i64 2162717048, i64 2162716263, i64 2162716295, i64 2162716378}
!78 = !{i64 2162717546, i64 2162717417}
!79 = !{i64 2162718886, i64 2162718756}
!80 = !{i64 2162719417, i64 2162720488, i64 2162720521, i64 2162720556, i64 2162720572, i64 2162721499, i64 2162721557, i64 2162721606, i64 2162721416, i64 2162720631, i64 2162720663, i64 2162720746}
!81 = !{i64 2162721914, i64 2162721785}
!82 = !{ptr @skb_set_owner_r}
!83 = !{i64 2152872482}
!84 = distinct !{!84, !14}
!85 = !{i64 2161193489}
!86 = !{i64 11158}
!87 = !{i64 81422}
!88 = !{i64 81526}
!89 = !{i64 84778}
!90 = !{i64 2163209055}
!91 = !{i64 2163210220}
!92 = !{i64 96472}
!93 = !{i64 97092}
!94 = !{i64 100093}
!95 = !{i64 100164}
!96 = !{i64 100331}
!97 = !{i64 2149156192}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = distinct !{null, null, null}
!101 = distinct !{null, null, null}
!102 = distinct !{!102, !14, !115, !116}
!103 = distinct !{null, null}
!104 = distinct !{null, null}
!105 = !{!"branch_weights", !"expected", i32 2747405, i32 2144736243}
!106 = !{!"branch_weights", i32 1, i32 127}
!107 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!108 = !{i64 2155626406, i64 2155626281}
!109 = !{i64 2155626929, i64 2155627998, i64 2155628031, i64 2155628066, i64 2155628082, i64 2155629009, i64 2155629067, i64 2155629116, i64 2155628926, i64 2155628141, i64 2155628173, i64 2155628256}
!110 = !{i64 2155629415, i64 2155629291}
!111 = !{i64 2155622038, i64 2155621913}
!112 = !{i64 2155622561, i64 2155623621, i64 2155623654, i64 2155623689, i64 2155623705, i64 2155624632, i64 2155624690, i64 2155624739, i64 2155624549, i64 2155623764, i64 2155623796, i64 2155623879}
!113 = !{i64 2155625038, i64 2155624914}
!114 = !{!"branch_weights", i32 127, i32 255873}
!115 = !{!"llvm.loop.peeled.count", i32 1}
!116 = !{!"llvm.loop.estimated_trip_count", i32 2015}
!117 = !{i64 68969}
!118 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!119 = !{i64 2162674505}
!120 = !{i64 75043}
!121 = !{i64 75154}
!122 = !{i64 79686}
!123 = !{i64 79903}
!124 = !{i64 88465}
!125 = !{!"branch_weights", !"expected", i32 4292819, i32 2143190829}
!126 = !{i64 2163049193, i64 2163049063}
!127 = !{i64 2163049724, i64 2163050780, i64 2163050813, i64 2163050848, i64 2163050864, i64 2163051791, i64 2163051849, i64 2163051898, i64 2163051708, i64 2163050923, i64 2163050955, i64 2163051038}
!128 = !{i64 2163052206, i64 2163052077}
!129 = !{i64 89778}
!130 = !{i64 90526}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14, !135}
!134 = distinct !{!134, !14}
!135 = !{!"llvm.loop.unswitch.partial.disable"}
!136 = distinct !{!136, !14}
!137 = !{!"branch_weights", i32 4000000, i32 4001}
!138 = !{i64 690616}
!139 = !{!"branch_weights", !"expected", i32 7631674, i32 2139851974}
!140 = !{i64 109341}
!141 = !{i64 112208}
!142 = distinct !{null, null, null, null}
!143 = !{i64 59091}
!144 = !{i64 60262}
!145 = !{i64 60435}
!146 = !{i64 2162653800}
!147 = !{i64 30268}
!148 = !{i64 30565}
!149 = !{i64 2162656527, i64 2162656554, i64 2162656948, i64 2162656981, i64 2162657016, i64 2162657032, i64 2162657873, i64 2162657931, i64 2162657980, i64 2162657790, i64 2162657091, i64 2162657123}
!150 = !{i64 2162654914}
!151 = !{i64 2162658457, i64 2162658327}
!152 = !{i64 2162658988, i64 2162659464, i64 2162659497, i64 2162659532, i64 2162659548, i64 2162660389, i64 2162660447, i64 2162660496, i64 2162660306, i64 2162659607, i64 2162659639}
!153 = !{i64 2148190703}
!154 = !{i64 62362}
!155 = !{i64 63275}
!156 = !{i64 2162942638, i64 2162942508}
!157 = !{i64 2162943169, i64 2162943645, i64 2162943678, i64 2162943713, i64 2162943729, i64 2162944570, i64 2162944628, i64 2162944677, i64 2162944487, i64 2162943788, i64 2162943820}
!158 = !{i64 64204}
!159 = !{i64 2162944982}
!160 = !{i64 2148179954}
!161 = distinct !{null, null}
!162 = distinct !{null}
!163 = !{i64 2162662915, i64 2162662942, i64 2162663337, i64 2162663370, i64 2162663405, i64 2162663421, i64 2162664262, i64 2162664320, i64 2162664369, i64 2162664179, i64 2162663480, i64 2162663512}
!164 = !{i64 2162661300}
end_hunk_1
