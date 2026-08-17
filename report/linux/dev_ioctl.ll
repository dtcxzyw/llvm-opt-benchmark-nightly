inline.NumInlined: 79
inline.NumDeleted: 32
begin_hunk_0_@generic_hwtstamp_get_lower:netif_device_present.exit
netdev_lock_ops.exit:                             ; preds = %netdev_need_ops_lock.exit.i, %netdev_need_ops_lock.exit.thread.i
  %i.m = tail call i32 @dev_get_hwtstamp_phylib(ptr noundef %0, ptr noundef %1) #14 ; 2 uses
  %i.n = load i8, ptr %i.g, align 1, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %netdev_need_ops_lock.exit.thread.i10, label %netdev_need_ops_lock.exit.i8

netdev_need_ops_lock.exit.i8:                     ; preds = %netdev_lock_ops.exit
  %i.p = getelementptr i8, ptr %0, i64 2288
  %i.q = load ptr, ptr %i.p, align 16
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %netdev_unlock_ops.exit, label %netdev_need_ops_lock.exit.thread.i10

netdev_need_ops_lock.exit.thread.i10:             ; preds = %netdev_need_ops_lock.exit.i8, %netdev_lock_ops.exit
  %i.r = getelementptr i8, ptr %0, i64 2576
  tail call void @mutex_unlock(ptr noundef %i.r) #12
  br label %netdev_unlock_ops.exit

netdev_unlock_ops.exit:                           ; preds = %netdev_need_ops_lock.exit.thread.i10, %netdev_need_ops_lock.exit.i8, %bb.a, %netif_device_present.exit
  %.0 = phi i32 [ -95, %bb.a ], [ -19, %netif_device_present.exit ], [ %i.m, %netdev_need_ops_lock.exit.i8 ], [ %i.m, %netdev_need_ops_lock.exit.thread.i10 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @generic_hwtstamp_set_lower(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
netif_device_present.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 168
  %i.d = load volatile i64, ptr %i.c, align 8
  %.in.in.i = and i64 %i.d, 2
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %netdev_unlock_ops.exit, label %bb.a

bb.a:                                             ; preds = %netif_device_present.exit
  %i.e = getelementptr i8, ptr %i.b, i64 688
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %netdev_unlock_ops.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 2569       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %netdev_need_ops_lock.exit.thread.i, label %netdev_need_ops_lock.exit.i

netdev_need_ops_lock.exit.i:                      ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 2288
  %i.k = load ptr, ptr %i.j, align 16
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %netdev_lock_ops.exit, label %netdev_need_ops_lock.exit.thread.i

netdev_need_ops_lock.exit.thread.i:               ; preds = %netdev_need_ops_lock.exit.i, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 2576
  tail call void @mutex_lock(ptr noundef %i.l) #12
  br label %netdev_lock_ops.exit

netdev_lock_ops.exit:                             ; preds = %netdev_need_ops_lock.exit.i, %netdev_need_ops_lock.exit.thread.i
  %i.m = tail call i32 @dev_set_hwtstamp_phylib(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14 ; 2 uses
  %i.n = load i8, ptr %i.g, align 1, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %netdev_need_ops_lock.exit.thread.i11, label %netdev_need_ops_lock.exit.i9

netdev_need_ops_lock.exit.i9:                     ; preds = %netdev_lock_ops.exit
  %i.p = getelementptr i8, ptr %0, i64 2288
  %i.q = load ptr, ptr %i.p, align 16
  %.not.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i10, label %netdev_unlock_ops.exit, label %netdev_need_ops_lock.exit.thread.i11

netdev_need_ops_lock.exit.thread.i11:             ; preds = %netdev_need_ops_lock.exit.i9, %netdev_lock_ops.exit
  %i.r = getelementptr i8, ptr %0, i64 2576
  tail call void @mutex_unlock(ptr noundef %i.r) #12
  br label %netdev_unlock_ops.exit

netdev_unlock_ops.exit:                           ; preds = %netdev_need_ops_lock.exit.thread.i11, %netdev_need_ops_lock.exit.i9, %bb.a, %netif_device_present.exit
  %.0 = phi i32 [ -95, %bb.a ], [ -19, %netif_device_present.exit ], [ %i.m, %netdev_need_ops_lock.exit.i9 ], [ %i.m, %netdev_need_ops_lock.exit.thread.i11 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @dev_load(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #12
  %i.a = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %1) #12
  tail call void @__rcu_read_unlock() #12
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @capable(i32 noundef 12) #12
  br i1 %i.b, label %bb.c, label %.thread8

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %1) #12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %.thread8

.thread8:                                         ; preds = %bb.b, %bb.c
  %i.e = tail call zeroext i1 @capable(i32 noundef 16) #12
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %.thread8
  %i.f = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %1) #12 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %.thread8, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @dev_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef initializes((15, 16)) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq i32 %1, 35088
  %i.b = getelementptr i8, ptr %2, i64 15
  store i8 0, ptr %i.b, align 1
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @netdev_get_name(ptr noundef %0, ptr noundef %2, i32 noundef %i.d) #12
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @strchr(ptr noundef %2, i32 noundef 58) #12 ; 6 uses
  %.not78 = icmp eq ptr %i.f, null                ; 5 uses
  br i1 %.not78, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.f, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i32 %1, label %bb.ae [
    i32 35111, label %bb.h
    i32 35091, label %bb.j
    i32 35101, label %bb.j
    i32 35105, label %bb.j
    i32 35113, label %bb.j
    i32 35184, label %bb.j
    i32 35123, label %bb.j
    i32 35138, label %bb.j
    i32 35142, label %bb.v
    i32 35143, label %bb.x
    i32 35144, label %bb.x
    i32 35107, label %bb.x
    i32 35185, label %bb.aa
    i32 35139, label %bb.aa
    i32 35092, label %bb.ab
    i32 35102, label %bb.ab
    i32 35106, label %bb.ab
    i32 35108, label %bb.ab
    i32 35120, label %bb.ab
    i32 35121, label %bb.ab
    i32 35122, label %bb.ab
    i32 35127, label %bb.ab
    i32 35145, label %bb.ab
    i32 35216, label %bb.ab
    i32 35217, label %bb.ab
    i32 35218, label %bb.ab
    i32 35221, label %bb.ab
    i32 35248, label %bb.ab
    i32 35219, label %bb.ac
    i32 35220, label %bb.ac
    i32 35103, label %bb.ag
    i32 35104, label %bb.ag
    i32 35089, label %bb.ag
    i32 35249, label %bb.af
    i32 35146, label %bb.af
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = tail call i32 @netif_get_mac_address(ptr noundef %i.g, ptr noundef %0, ptr noundef %2) #12 ; 2 uses
  br i1 %.not78, label %bb.ag, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 58, ptr %i.f, align 1
  br label %bb.ag

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  tail call void @__rcu_read_lock() #12
  %i.i = tail call ptr @dev_get_by_name_rcu(ptr noundef %0, ptr noundef %2) #12 ; 12 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %dev_ifsioc_locked.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %1, label %bb.t [
    i32 35091, label %bb.l
    i32 35101, label %bb.m
    i32 35105, label %bb.n
    i32 35113, label %dev_ifsioc_locked.exit
    i32 35184, label %bb.o
    i32 35123, label %bb.r
    i32 35138, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  %i.j = tail call i32 @netif_get_flags(ptr noundef nonnull %i.i) #12
  %i.k = trunc i32 %i.j to i16
  %i.l = getelementptr i8, ptr %2, i64 16
  store i16 %i.k, ptr %i.l, align 8
  br label %dev_ifsioc_locked.exit

bb.m:                                             ; preds = %bb.k
  %i.m = getelementptr i8, ptr %2, i64 16
  store i32 0, ptr %i.m, align 8
  br label %dev_ifsioc_locked.exit

bb.n:                                             ; preds = %bb.k
  %i.n = getelementptr i8, ptr %i.i, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %2, i64 16
  store i32 %i.o, ptr %i.p, align 8
  br label %dev_ifsioc_locked.exit

bb.o:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.r = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !srcloc !11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 2
  %.not.i.i.not.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr i8, ptr %i.i, i64 328
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = trunc i64 %i.x to i32
  store i32 %i.y, ptr %i.q, align 4
  %i.z = getelementptr i8, ptr %i.i, i64 320
  %i.aa = load i64, ptr %i.z, align 64
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr i8, ptr %2, i64 20
  store i32 %i.ab, ptr %i.ac, align 4
  br label %dev_getifmap.exit.i

bb.q:                                             ; preds = %bb.o
  store i64 %i.x, ptr %i.q, align 8
  %i.ad = getelementptr i8, ptr %i.i, i64 320
  %i.ae = load i64, ptr %i.ad, align 64
  %i.af = getelementptr i8, ptr %2, i64 24
  store i64 %i.ae, ptr %i.af, align 8
  br label %dev_getifmap.exit.i

dev_getifmap.exit.i:                              ; preds = %bb.q, %bb.p
  %.sink36.i.i = phi i64 [ 32, %bb.q ], [ 24, %bb.p ]
  %.sink33.i.i = phi i64 [ 34, %bb.q ], [ 26, %bb.p ]
  %.sink30.i.i = phi i64 [ 35, %bb.q ], [ 27, %bb.p ]
  %.sink27.i.i = phi i64 [ 36, %bb.q ], [ 28, %bb.p ]
  %5 = getelementptr i8, ptr %i.i, i64 336
  %6 = load i64, ptr %5, align 16
  %7 = trunc i64 %6 to i16
  %8 = getelementptr i8, ptr %2, i64 %.sink36.i.i
  store i16 %7, ptr %8, align 4
  %i.ag = getelementptr i8, ptr %i.i, i64 820
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr i8, ptr %2, i64 %.sink33.i.i
  store i8 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr i8, ptr %i.i, i64 774
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = getelementptr i8, ptr %2, i64 %.sink30.i.i
  store i8 %i.al, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.i, i64 773
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = getelementptr i8, ptr %2, i64 %.sink27.i.i
  store i8 %i.ao, ptr %i.ap, align 4
  br label %dev_ifsioc_locked.exit

bb.r:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.i, i64 224
  %i.ar = load i32, ptr %i.aq, align 32
  %i.as = getelementptr i8, ptr %2, i64 16
  store i32 %i.ar, ptr %i.as, align 8
  br label %dev_ifsioc_locked.exit

bb.s:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %i.i, i64 1192
  %i.au = load i32, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %2, i64 16
  store i32 %i.au, ptr %i.av, align 8
  br label %dev_ifsioc_locked.exit

bb.t:                                             ; preds = %bb.k
  tail call void asm sideeffect "1007: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1007b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1007) #11, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.7, i32 181, i32 2305, i64 16) #11, !srcloc !26
  tail call void asm sideeffect "1008: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1008b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1008) #11, !srcloc !27
  br label %dev_ifsioc_locked.exit

dev_ifsioc_locked.exit:                           ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %dev_getifmap.exit.i, %bb.r, %bb.s, %bb.t
  %.0.i = phi i32 [ -19, %bb.j ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %dev_getifmap.exit.i ], [ 0, %bb.r ], [ 0, %bb.s ], [ -25, %bb.t ], [ -22, %bb.k ] ; 2 uses
  tail call void @__rcu_read_unlock() #12
  br i1 %.not78, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %dev_ifsioc_locked.exit
  store i8 58, ptr %i.f, align 1
  br label %bb.ag

bb.v:                                             ; preds = %bb.g
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  %i.aw = tail call i32 @dev_ethtool(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12 ; 2 uses
  br i1 %.not78, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 58, ptr %i.f, align 1
  br label %bb.ag

bb.x:                                             ; preds = %bb.g, %bb.g, %bb.g
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  %i.ax = getelementptr i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 16
  %i.az = tail call zeroext i1 @ns_capable(ptr noundef %i.ay, i32 noundef 12) #12
  br i1 %i.az, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  tail call void @rtnl_lock() #12
  %i.ba = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1) #14, !srcloc !28 ; 2 uses
  tail call void @rtnl_unlock() #12
  br i1 %.not78, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 58, ptr %i.f, align 1
  br label %bb.ag

bb.aa:                                            ; preds = %bb.g, %bb.g
  %i.bb = tail call zeroext i1 @capable(i32 noundef 12) #12
  br i1 %i.bb, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.aa
  %i.bc = getelementptr i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 16
  %i.be = tail call zeroext i1 @ns_capable(ptr noundef %i.bd, i32 noundef 12) #12
  br i1 %i.be, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.g, %bb.g, %bb.ab
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  tail call void @rtnl_lock() #12
  %i.bf = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1) #14, !srcloc !29 ; 2 uses
  tail call void @rtnl_unlock() #12
  br i1 %.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %4, align 1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.g
  %i.bg = and i32 %1, -16
  %or.cond3 = icmp eq i32 %i.bg, 35312
  br i1 %or.cond3, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.g, %bb.g, %bb.ae
  tail call void @dev_load(ptr noundef %0, ptr noundef %2) #14
  tail call void @rtnl_lock() #12
  %i.bh = tail call fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %1) #14, !srcloc !30
  tail call void @rtnl_unlock() #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.ae, %bb.ac, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.z, %bb.x, %bb.v, %bb.w, %dev_ifsioc_locked.exit, %bb.u, %bb.h, %bb.i, %bb.af, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ %i.bh, %bb.af ], [ -25, %bb.g ], [ %i.bf, %bb.ac ], [ %i.h, %bb.h ], [ %.0.i, %dev_ifsioc_locked.exit ], [ -1, %bb.x ], [ %i.aw, %bb.v ], [ -1, %bb.ab ], [ -1, %bb.aa ], [ %i.ba, %bb.y ], [ %i.h, %bb.i ], [ %.0.i, %bb.u ], [ %i.aw, %bb.w ], [ %i.ba, %bb.z ], [ %i.bf, %bb.ad ], [ -25, %bb.g ], [ -25, %bb.g ], [ -25, %bb.ae ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @netif_get_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_ethtool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @dev_ifsioc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 35089, 35088) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef %1) #12 ; 57 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %netdev_unlock_ops.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  switch i32 %3, label %bb.ag [
    i32 35092, label %bb.c
    i32 35102, label %netdev_unlock_ops.exit
    i32 35106, label %bb.d
    i32 35108, label %bb.e
    i32 35127, label %bb.g
    i32 35185, label %bb.i
    i32 35121, label %bb.j
    i32 35122, label %bb.n
    i32 35139, label %bb.r
    i32 35107, label %bb.t
    i32 35146, label %bb.u
    i32 35312, label %bb.v
    i32 35313, label %bb.v
    i32 35314, label %bb.v
    i32 35315, label %bb.v
    i32 35316, label %bb.v
    i32 35317, label %bb.v
    i32 35318, label %bb.v
    i32 35319, label %bb.v
    i32 35320, label %bb.v
    i32 35321, label %bb.v
    i32 35322, label %bb.v
    i32 35323, label %bb.v
    i32 35324, label %bb.v
    i32 35325, label %bb.v
    i32 35326, label %bb.v
    i32 35327, label %bb.v
    i32 35248, label %bb.z
    i32 35249, label %bb.aa
    i32 35143, label %bb.ab
    i32 35144, label %bb.ab
    i32 35145, label %bb.ab
    i32 35216, label %bb.ac
    i32 35217, label %bb.ac
    i32 35218, label %bb.ac
    i32 35219, label %bb.ac
    i32 35220, label %bb.ac
    i32 35221, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load i16, ptr %i.d, align 8
  %i.f = sext i16 %i.e to i32
  %i.g = tail call i32 @dev_change_flags(ptr noundef nonnull %i.a, i32 noundef %i.f, ptr noundef null) #12
  br label %netdev_unlock_ops.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call i32 @dev_set_mtu(ptr noundef nonnull %i.a, i32 noundef %i.i) #12
  br label %netdev_unlock_ops.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.a, i64 808
  %i.l = load i8, ptr %i.k, align 8
  %i.m = icmp ugt i8 %i.l, 16
  br i1 %i.m, label %netdev_unlock_ops.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = tail call i32 @dev_set_mac_address_user(ptr noundef nonnull %i.a, ptr noundef %i.n, ptr noundef null) #12
  br label %netdev_unlock_ops.exit

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i16, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.a, i64 544
  %i.s = load i16, ptr %i.r, align 32
end_hunk_0
