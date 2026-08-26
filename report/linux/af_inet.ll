Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/af_inet?download=true
inline.NumInlined: 260
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@inet_gro_complete:bb.a
  %i.l = getelementptr i8, ptr %0, i64 172
  store i16 8, ptr %i.l, align 4
  %i.m = and i32 %i.j, -257
  store i32 %i.m, ptr %i.i, align 1
  %i.n = getelementptr i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i16
  %i.t = getelementptr i8, ptr %0, i64 176
  %i.u = trunc i32 %1 to i16
  %i.v = add i16 %i.s, %i.u
  store i16 %i.v, ptr %i.t, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sub i32 %i.x, %1                         ; 2 uses
  %i.z = icmp ult i32 %i.y, 65536
  %i.aa = trunc nuw i32 %i.y to i16
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = select i1 %i.z, i16 %i.ab, i16 0        ; 3 uses
  store i16 %i.ac, ptr %i.e, align 2
  %i.ad = getelementptr i8, ptr %i.d, i64 10      ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = xor i16 %i.f, -1
  %i.ag = add i16 %i.f, %i.ae
  %i.ah = sub i16 -2, %i.ag                       ; 2 uses
  %i.ai = icmp ult i16 %i.ah, %i.af
  %i.aj = zext i1 %i.ai to i16
  %i.ak = add i16 %i.ac, %i.ah
  %i.al = add i16 %i.ak, %i.aj                    ; 2 uses
  %i.am = icmp ult i16 %i.al, %i.ac
  %i.an = zext i1 %i.am to i16
  %i.ao = add i16 %i.al, %i.an
  %i.ap = xor i16 %i.ao, -1
  store i16 %i.ap, ptr %i.ad, align 2
  %i.aq = zext i8 %i.h to i64
  %i.ar = getelementptr [8 x i8], ptr @inet_offloads, i64 %i.aq
  %i.as = load volatile ptr, ptr %i.ar, align 8   ; 2 uses
  %.not39 = icmp eq ptr %i.as, null
  br i1 %.not39, label %.critedge42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %.not40 = icmp eq ptr %i.au, null
  br i1 %.not40, label %.critedge42, label %.critedge, !prof !34

.critedge42:                                      ; preds = %bb.c, %bb.d
  tail call void asm sideeffect "1394: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1394b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1394) #18, !srcloc !68
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 1611, i32 2305, i64 16) #18, !srcloc !69
  tail call void asm sideeffect "1395: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1395b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1395) #18, !srcloc !70
  br label %bb.i

.critedge:                                        ; preds = %bb.d
  %i.av = icmp eq ptr %i.au, @tcp4_gro_complete
  br i1 %i.av, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %.critedge
  %i.aw = add i32 %1, 20
  %i.ax = tail call i32 @tcp4_gro_complete(ptr noundef %0, i32 noundef %i.aw) #16
  br label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.ay = icmp eq ptr %i.au, @udp4_gro_complete
  %i.az = add i32 %1, 20                          ; 2 uses
  br i1 %i.ay, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call i32 @udp4_gro_complete(ptr noundef %0, i32 noundef %i.az) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bb = tail call i32 %i.au(ptr noundef %0, i32 noundef %i.az) #16
  br label %bb.i

bb.i:                                             ; preds = %.critedge42, %bb.e, %bb.h, %bb.g
  %.0 = phi i32 [ -38, %.critedge42 ], [ %i.ax, %bb.e ], [ %i.ba, %bb.g ], [ %i.bb, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp4_gro_complete(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @udp4_gro_complete(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @inet_ctl_sock_create(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !annotation !45
  %i.b = zext i16 %1 to i32
  %i.c = zext i16 %2 to i32
  %i.d = zext i8 %3 to i32
  %i.e = call i32 @sock_create_kern(ptr noundef %4, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  store ptr %i.i, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 560
  store i32 2080, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 573
  store i8 0, ptr %i.l, align 1
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef %i.m) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @snmp_fold_field(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @__cpu_possible_mask, align 8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ 0, %bb.a ], [ %i.s, %bb.c ]
  %.0710 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]  ; 3 uses
  %i.e = shl nsw i64 -1, %i.d
  %i.f = and i64 %i.a, %i.e                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #19, !srcloc !71 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.j = and i64 %i.g, 63
  %i.k = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, %i.b
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.c
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %.0710                     ; 2 uses
  %i.r = add nuw nsw i64 %i.g, 1
  %i.s = and i64 %i.r, 127                        ; 2 uses
  %i.t = icmp samesign ugt i64 %i.s, 63
  br i1 %i.t, label %find_next_bit.exit.thread, label %bb.b, !prof !72, !llvm.loop !73

find_next_bit.exit.thread:                        ; preds = %bb.b, %bb.c, %find_next_bit.exit
  %.07.lcssa = phi i64 [ %.0710, %bb.b ], [ %i.q, %bb.c ], [ %.0710, %find_next_bit.exit ]
  ret i64 %.07.lcssa
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @ipv4_offload_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @udpv4_offload_init() #16
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.ipv4_offload_init) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @tcpv4_offload_init() #16
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ipv4_offload_init) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call i32 @inet_add_offload(ptr noundef nonnull @ipip_offload, i8 noundef zeroext 4) #16
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ipv4_offload_init) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i16 8, ptr @net_hotdata, align 8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 2), align 2
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 4), align 4
  store ptr @inet_gso_segment, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 8), align 8
  store ptr @inet_gro_receive, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 16), align 8
  store ptr @inet_gro_complete, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 24), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 32), i8 0, i64 16, i1 false)
  tail call void @dev_add_offload(ptr noundef nonnull @net_hotdata) #16
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @inet_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i32 0, ptr @raw_v4_hashinfo, align 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @raw_v4_hashinfo, i64 64), i8 0, i64 2048, i1 false)
  %i.a = tail call i32 @proto_register(ptr noundef nonnull @tcp_prot, i32 noundef 1) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @proto_register(ptr noundef nonnull @udp_prot, i32 noundef 1) #16 ; 2 uses
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @proto_register(ptr noundef nonnull @raw_prot, i32 noundef 1) #16 ; 2 uses
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @proto_register(ptr noundef nonnull @ping_prot, i32 noundef 1) #16 ; 2 uses
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @sock_register(ptr noundef nonnull @inet_family_ops) #16 ; 0 uses
  tail call void @ip_static_sysctl_init() #16
  %i.f = tail call i32 @inet_add_protocol(ptr noundef nonnull @icmp_protocol, i8 noundef zeroext 1) #16
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr @udp_rcv, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 136), align 8
  store ptr @udp_err, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 144), align 8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 152), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 153), i8 0, i64 7, i1 false)
  %i.i = tail call i32 @inet_add_protocol(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 136), i8 noundef zeroext 17) #16
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr @tcp_v4_rcv, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 80), align 8
  store ptr @tcp_v4_err, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 88), align 8
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 96), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 97), i8 0, i64 7, i1 false)
  %i.l = tail call i32 @inet_add_protocol(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @net_hotdata, i64 80), i8 noundef zeroext 6) #16
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = tail call i32 @inet_add_protocol(ptr noundef nonnull @igmp_protocol, i8 noundef zeroext 2) #16
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %.preheader34

bb.l:                                             ; preds = %bb.k
  %i.q = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %.preheader34

.preheader34:                                     ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader34, %bb.m
  %.01729 = phi ptr [ %i.s, %bb.m ], [ @inetsw, %.preheader34 ] ; 5 uses
  store volatile ptr %.01729, ptr %.01729, align 8
  %i.r = getelementptr i8, ptr %.01729, i64 8
  store volatile ptr %.01729, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.01729, i64 16    ; 2 uses
  %i.t = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @inetsw, i64 176)
  br i1 %i.t, label %bb.m, label %.preheader, !llvm.loop !74

.preheader:                                       ; preds = %bb.m, %.preheader
  %.030 = phi ptr [ %i.u, %.preheader ], [ @inetsw_array, %bb.m ] ; 2 uses
  tail call void @inet_register_protosw(ptr noundef %.030) #20
  %i.u = getelementptr i8, ptr %.030, i64 48      ; 2 uses
  %i.v = icmp ult ptr %i.u, getelementptr inbounds nuw (i8, ptr @inetsw_array, i64 192)
  br i1 %i.v, label %.preheader, label %bb.n, !llvm.loop !75

bb.n:                                             ; preds = %.preheader
  tail call void @arp_init() #16
  tail call void @ip_init() #16
  %i.w = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv4_mib_ops) #16
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.inet_init) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @tcp_init() #16
  tail call void @udp_init() #16
  tail call void @raw_init() #16
  tail call void @ping_init() #17
  %i.x = tail call i32 @icmp_init() #16
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.19) #21
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.z = tail call i32 @ip_mr_init() #16
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ab = tail call i32 @register_pernet_subsys(ptr noundef nonnull @af_inet_ops) #16
  %.not28 = icmp eq i32 %i.ab, 0
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ac = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.inet_init) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call fastcc void @ipv4_proc_init() #20
  tail call void @ipfrag_init() #16
  tail call void @dev_add_pack(ptr noundef nonnull @ip_packet_type) #16
  tail call void @ip_tunnel_core_init() #17
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.z, %bb.v
  %.018 = phi i32 [ %i.a, %bb.a ], [ %.2, %bb.z ], [ 0, %bb.v ]
  ret i32 %.018

bb.x:                                             ; preds = %bb.d
  tail call void @proto_unregister(ptr noundef nonnull @raw_prot) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.c, %bb.x
  %.1 = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.x ]
  tail call void @proto_unregister(ptr noundef nonnull @udp_prot) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.b, %bb.y
  %.2 = phi i32 [ %i.b, %bb.b ], [ %.1, %bb.y ]
  tail call void @proto_unregister(ptr noundef nonnull @tcp_prot) #16
  br label %bb.w
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_woken(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inet_bhash2_update_saddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_inet_sock_set_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @udpv4_offload_init() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcpv4_offload_init() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ipip_gso_segment(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val3 = load ptr, ptr %i.b, align 8
  %i.c = zext i32 %.val to i64
  %i.d = getelementptr i8, ptr %.val3, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 256
end_hunk_0
