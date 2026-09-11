Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ipmr?download=true
inline.NumInlined: 666
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vif_add:bb.a
ipmr_reg_vif.exit.thread:                         ; preds = %bb.i, %ipmr_init_vif_indev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr i8, ptr %i.p, i64 1408    ; 2 uses
  %.val.i = load ptr, ptr %i.ab, align 64         ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i, ptr elementtype(i32) %.val.i) #17, !srcloc !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ac = call i32 @dev_set_allmulti(ptr noundef nonnull %i.p, i32 noundef 1) #18 ; 2 uses
  %.not88 = icmp eq i32 %i.ac, 0
  br i1 %.not88, label %bb.ab, label %dev_put.exit

dev_put.exit:                                     ; preds = %bb.n
  call void @unregister_netdevice_queue(ptr noundef nonnull %i.p, ptr noundef null) #18
  %.val.i.i96 = load ptr, ptr %i.ab, align 64     ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i96, ptr elementtype(i32) %.val.i.i96) #17, !srcloc !21
  br label %.thread

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 56, i1 false)
  %i.ad = tail call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.9) #18 ; 4 uses
  %.not.i97 = icmp eq ptr %i.ad, null
  br i1 %.not.i97, label %ipmr_new_tunnel.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 %i.af, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 4
  store i32 %i.ak, ptr %i.ah, align 8
  store i8 69, ptr %i.ag, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 53
  store i8 4, ptr %i.al, align 1
  %i.am = load i16, ptr %2, align 4
  %i.an = zext i16 %i.am to i32
  %i.ao = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.an) #18 ; 0 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 648
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not29.i = icmp eq ptr %i.as, null
  br i1 %.not29.i, label %ipmr_new_tunnel.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = call i32 %i.as(ptr noundef nonnull %i.ad, ptr noundef nonnull %5, i32 noundef 35313) #18, !inline_history !67
  %.not30.i = icmp eq i32 %i.at, 0
  br i1 %.not30.i, label %bb.r, label %ipmr_new_tunnel.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.au = call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef nonnull %5) #18 ; 9 uses
  %.not31.i = icmp eq ptr %i.au, null
  br i1 %.not31.i, label %ipmr_new_tunnel.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %i.au, i64 176    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 16
  %i.ax = or i32 %i.aw, 4096
  store i32 %i.ax, ptr %i.av, align 16
  %i.ay = call i32 @rtnl_is_locked() #18
  %.not.i.i98 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i98, label %bb.t, label %bb.u, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.az = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 466, i32 2323, i64 16) #17, !srcloc !69
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.az, ptr noundef nonnull @.str.8, i32 noundef 466) #18
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !70
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ba = getelementptr i8, ptr %i.au, i64 1064
  %.val.i.i99 = load ptr, ptr %i.ba, align 8      ; 4 uses
  %.not12.i.not.i100 = icmp eq ptr %.val.i.i99, null
  br i1 %.not12.i.not.i100, label %ipmr_init_vif_indev.exit.i101, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr i8, ptr %.val.i.i99, i64 336
  store i64 -1, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val.i.i99, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 144
  store i64 -1, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %.val.i.i99, i64 228
  store i32 0, ptr %i.bf, align 4
  %i.bg = call i32 @dev_open(ptr noundef nonnull %i.au, ptr noundef null) #18
  %.not32.i = icmp eq i32 %i.bg, 0
  br i1 %.not32.i, label %bb.w, label %ipmr_init_vif_indev.exit.i101

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr i8, ptr %i.au, i64 1408   ; 2 uses
  %.val.i102 = load ptr, ptr %i.bh, align 64      ; 2 uses
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i102, ptr elementtype(i32) %.val.i102) #17, !srcloc !71
  %i.bi = call i32 @dev_set_allmulti(ptr noundef nonnull %i.au, i32 noundef 1) #18 ; 2 uses
  %.not33.i = icmp eq i32 %i.bi, 0
  br i1 %.not33.i, label %ipmr_new_tunnel.exit, label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %bb.w
  call void @dev_close(ptr noundef nonnull %i.au) #18
  %i.bj = load ptr, ptr %i.ap, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 648
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i32 %i.bl(ptr noundef nonnull %i.ad, ptr noundef nonnull %5, i32 noundef 35314) #18, !inline_history !67 ; 0 uses
  %.val.i.i.i = load ptr, ptr %i.bh, align 64     ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i.i, ptr elementtype(i32) %.val.i.i.i) #17, !srcloc !21
  %i.bn = sext i32 %i.bi to i64
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %ipmr_new_tunnel.exit

ipmr_init_vif_indev.exit.i101:                    ; preds = %bb.v, %bb.u
  call void @unregister_netdevice_queue(ptr noundef nonnull %i.au, ptr noundef null) #18
  br label %ipmr_new_tunnel.exit.thread

ipmr_new_tunnel.exit.thread:                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %ipmr_init_vif_indev.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.x

ipmr_new_tunnel.exit:                             ; preds = %bb.w, %dev_put.exit.i
  %.024.i = phi ptr [ %i.au, %bb.w ], [ %i.bo, %dev_put.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bp = icmp ugt ptr %.024.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bp, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %ipmr_new_tunnel.exit.thread, %ipmr_new_tunnel.exit
  %.024.i116 = phi ptr [ inttoptr (i64 -105 to ptr), %ipmr_new_tunnel.exit.thread ], [ %.024.i, %ipmr_new_tunnel.exit ]
  %i.bq = ptrtoint ptr %.024.i116 to i64
  %i.br = trunc i64 %i.bq to i32
  br label %.thread

bb.y:                                             ; preds = %bb.b
  %i.bs = getelementptr i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = tail call ptr @dev_get_by_index(ptr noundef %0, i32 noundef %i.bt) #18 ; 4 uses
  %.not83 = icmp eq ptr %i.bu, null
  br i1 %.not83, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr i8, ptr %i.bu, i64 1064
  %.val = load ptr, ptr %i.bv, align 8
  %.not84 = icmp eq ptr %.val, null
  br i1 %.not84, label %dev_put.exit105, label %.thread119

dev_put.exit105:                                  ; preds = %bb.z
  %i.bw = getelementptr i8, ptr %i.bu, i64 1408
  %.val.i.i104 = load ptr, ptr %i.bw, align 64    ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i104, ptr elementtype(i32) %.val.i.i104) #17, !srcloc !21
  br label %.thread

bb.aa:                                            ; preds = %bb.b
  %i.bx = getelementptr i8, ptr %2, i64 8
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = tail call ptr @__ip_dev_find(ptr noundef %0, i32 noundef %i.by, i1 noundef zeroext true) #18 ; 2 uses
  %.not85 = icmp eq ptr %i.bz, null
  br i1 %.not85, label %.thread, label %.thread119

.thread119:                                       ; preds = %bb.z, %bb.aa
  %.075122 = phi ptr [ %i.bz, %bb.aa ], [ %i.bu, %bb.z ] ; 3 uses
  %i.ca = tail call i32 @dev_set_allmulti(ptr noundef nonnull %.075122, i32 noundef 1) #18 ; 2 uses
  %.not86 = icmp eq i32 %i.ca, 0
  br i1 %.not86, label %bb.ab, label %dev_put.exit108

dev_put.exit108:                                  ; preds = %.thread119
  %i.cb = getelementptr i8, ptr %.075122, i64 1408
  %.val.i.i107 = load ptr, ptr %i.cb, align 64    ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i107, ptr elementtype(i32) %.val.i.i107) #17, !srcloc !21
  br label %.thread

bb.ab:                                            ; preds = %.thread119, %ipmr_new_tunnel.exit, %bb.n
  %.1 = phi ptr [ %i.p, %bb.n ], [ %.024.i, %ipmr_new_tunnel.exit ], [ %.075122, %.thread119 ] ; 7 uses
  %i.cc = getelementptr i8, ptr %.1, i64 1064
  %.1.val = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.not89 = icmp eq ptr %.1.val, null
  br i1 %.not89, label %dev_put.exit111, label %bb.ac

dev_put.exit111:                                  ; preds = %bb.ab
  %i.cd = getelementptr i8, ptr %.1, i64 1408
  %.val.i.i110 = load ptr, ptr %i.cd, align 64    ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i.i110, ptr elementtype(i32) %.val.i.i110) #17, !srcloc !21
  br label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr i8, ptr %.1.val, i64 192
  %i.cf = getelementptr i8, ptr %.1.val, i64 204  ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = getelementptr i8, ptr %.1, i64 224
  %i.cj = load i32, ptr %i.ci, align 32
  call void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef 80, i32 noundef 4, i32 noundef %i.cj, ptr noundef %i.ce) #18
  call void @ip_rt_multicast_event(ptr noundef nonnull %.1.val) #18
  %i.ck = getelementptr i8, ptr %2, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %2, i64 3
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = load i8, ptr %i.h, align 2
  %7 = zext i8 %i.cp to i32
  %8 = shl nuw nsw i32 %3, 15
  %9 = or disjoint i32 %8, %7
  %10 = trunc nuw i32 %9 to i16
  %11 = xor i16 %10, -32768
  call void @vif_device_init(ptr noundef %i.f, ptr noundef %.1, i64 noundef %i.cm, i8 noundef zeroext %i.co, i16 noundef zeroext %11, i16 noundef zeroext 5) #18
  %i.cq = call i32 @netif_get_port_parent_id(ptr noundef %.1, ptr noundef nonnull %6, i1 noundef zeroext true) #18
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr i8, ptr %i.f, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = zext i8 %i.cu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cs, ptr nonnull align 1 %6, i64 %i.cv, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sink = phi i8 [ %i.cu, %bb.ad ], [ 0, %bb.ac ]
  %i.cw = getelementptr i8, ptr %i.f, i64 88
  store i8 %.sink, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %2, i64 8
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr i8, ptr %i.f, i64 92
  store i32 %i.cy, ptr %i.cz, align 4
  %i.da = getelementptr i8, ptr %2, i64 12
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = getelementptr i8, ptr %i.f, i64 96
  store i32 %i.db, ptr %i.dc, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @mrt_lock) #18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !72
  store volatile ptr %.1, ptr %i.f, align 8
  %i.dd = getelementptr i8, ptr %i.f, i64 50      ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = and i16 %i.de, 4
  %.not91 = icmp eq i16 %i.df, 0
  br i1 %.not91, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr i8, ptr %1, i64 3684
  store volatile i32 %i.c, ptr %i.dg, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dh = getelementptr i8, ptr %1, i64 3672      ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8
  %.not92 = icmp sgt i32 %i.di, %i.c
  br i1 %.not92, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = add nuw nsw i32 %i.c, 1
  store volatile i32 %i.dj, ptr %i.dh, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @_raw_spin_unlock(ptr noundef nonnull @mrt_lock) #18
  %i.dk = getelementptr i8, ptr %1, i64 96
  %i.dl = load i32, ptr %i.dk, align 8
  %.val94 = load i16, ptr %i.dd, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 128, ptr %4, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.b, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %.val94, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.dl, ptr %i.dr, align 4
  %i.ds = call i32 @rtnl_is_locked() #18
  %.not.i.i112 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i112, label %bb.aj, label %call_ipmr_vif_entry_notifiers.exit, !prof !20

bb.aj:                                            ; preds = %bb.ai
  %i.dt = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.11, i32 91, i32 2323, i64 16) #17, !srcloc !22
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dt, ptr noundef nonnull @.str.11, i32 noundef 91) #18
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !23
  br label %call_ipmr_vif_entry_notifiers.exit

call_ipmr_vif_entry_notifiers.exit:               ; preds = %bb.ai, %bb.aj
  %i.du = getelementptr i8, ptr %0, i64 1736      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.du, ptr elementtype(i32) %i.du) #17, !srcloc !24
  %i.dv = call i32 @call_fib_notifiers(ptr noundef %0, i32 noundef range(i32 8, 10) 8, ptr noundef nonnull %4) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.y, %ipmr_reg_vif.exit.thread, %bb.aa, %bb.c, %bb.a, %call_ipmr_vif_entry_notifiers.exit, %dev_put.exit111, %dev_put.exit108, %dev_put.exit105, %bb.x, %dev_put.exit
  %.0 = phi i32 [ -105, %ipmr_reg_vif.exit.thread ], [ -99, %bb.aa ], [ -98, %bb.a ], [ %i.ac, %dev_put.exit ], [ 0, %call_ipmr_vif_entry_notifiers.exit ], [ -99, %dev_put.exit111 ], [ -98, %bb.c ], [ -99, %dev_put.exit105 ], [ %i.br, %bb.x ], [ %i.ca, %dev_put.exit108 ], [ -22, %bb.b ], [ -99, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -99, 1) i32 @vif_delete(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.vif_entry_notifier_info, align 8 ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3672       ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.f = zext nneg i32 %1 to i64                  ; 2 uses
  %i.g = getelementptr [104 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not49 = icmp eq ptr %i.h, null
  br i1 %.not49, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_raw_spin_lock(ptr noundef nonnull @mrt_lock) #18
  %i.i = trunc i32 %1 to i16
  %i.j = getelementptr i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.g, i64 50       ; 2 uses
  %.val54 = load i16, ptr %i.l, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 128, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.h, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %i.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %.val54, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.k, ptr %i.r, align 4
  %i.s = tail call i32 @rtnl_is_locked() #18
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %call_ipmr_vif_entry_notifiers.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.11, i32 91, i32 2323, i64 16) #17, !srcloc !22
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.t, ptr noundef nonnull @.str.11, i32 noundef 91) #18
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !23
  br label %call_ipmr_vif_entry_notifiers.exit

call_ipmr_vif_entry_notifiers.exit:               ; preds = %bb.d, %bb.e
  %i.u = getelementptr i8, ptr %.val, i64 1736    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, ptr elementtype(i32) %i.u) #17, !srcloc !24
  %i.v = call i32 @call_fib_notifiers(ptr noundef %.val, i32 noundef range(i32 8, 10) 9, ptr noundef nonnull %4) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  store volatile ptr null, ptr %i.g, align 8
  %i.w = getelementptr i8, ptr %0, i64 3684       ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %1, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %call_ipmr_vif_entry_notifiers.exit
  store volatile i32 -1, ptr %i.w, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %call_ipmr_vif_entry_notifiers.exit
  %i.z = add nuw nsw i32 %1, 1
  %i.aa = load i32, ptr %i.c, align 8
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.g
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.ac = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !73

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.ae = phi i32 [ %i.ac, %.preheader ], [ %1, %.preheader.preheader ]
  %indvars.iv60 = phi i64 [ %i.af, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.af = add nsw i64 %indvars.iv60, -1           ; 3 uses
  %i.ag = getelementptr [104 x i8], ptr %i.e, i64 %i.af
  %i.ah = load volatile ptr, ptr %i.ag, align 8
  %.not50 = icmp eq ptr %i.ah, null
  br i1 %.not50, label %.preheader, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader._crit_edge, !llvm.loop !73

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge, %.preheader.preheader
  %.045.in.lcssa = phi i32 [ 0, %.preheader.preheader ], [ %i.ae, %._crit_edge ], [ 0, %.preheader ]
  store volatile i32 %.045.in.lcssa, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %.preheader._crit_edge, %bb.g
  call void @_raw_spin_unlock(ptr noundef nonnull @mrt_lock) #18
  %i.ai = call i32 @dev_set_allmulti(ptr noundef nonnull %i.h, i32 noundef -1) #18 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.h, i64 1064
  %.val52 = load ptr, ptr %i.aj, align 8          ; 4 uses
  %.not51 = icmp eq ptr %.val52, null
  br i1 %.not51, label %bb.j, label %bb.i

end_hunk_0
