Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_self_test:bb.a
  store i32 %i.zk, ptr %i.h, align 4
  br label %bb.dh

bb.dh:                                            ; preds = %tg3_test_loopback.exit, %bb.dg
  %i.zl = getelementptr i8, ptr %0, i64 2628      ; 4 uses
  call void @_raw_spin_unlock_bh(ptr noundef %i.zl) #27
  %i.zm = call fastcc i32 @tg3_test_interrupt(ptr noundef %i.g) #30, !srcloc !399
  %.not74 = icmp eq i32 %i.zm, 0
  br i1 %.not74, label %netif_running.exit139, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zn = load i32, ptr %i.h, align 4
  %i.zo = or i32 %i.zn, 2
  store i32 %i.zo, ptr %i.h, align 4
  %i.zp = getelementptr i8, ptr %2, i64 56
  store i64 1, ptr %i.zp, align 8
  br label %netif_running.exit139

netif_running.exit139:                            ; preds = %bb.di, %bb.dh
  %i.zq = getelementptr i8, ptr %0, i64 2576      ; 3 uses
  call void @mutex_lock(ptr noundef %i.zq) #27
  call void @_raw_spin_lock_bh(ptr noundef %i.zl) #27
  call fastcc void @tg3_halt(ptr noundef %i.g, i32 noundef 0, i1 noundef zeroext true) #30
  %i.zr = load volatile i64, ptr %i.ld, align 8
  %.in.i138 = trunc i64 %i.zr to i1
  br i1 %.in.i138, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %netif_running.exit139
  %i.zs = getelementptr i8, ptr %0, i64 8012      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.zs, i32 1, ptr elementtype(i8) %i.zs) #28, !srcloc !41
  %i.zt = call fastcc i32 @tg3_restart_hw(ptr noundef %i.g, i1 noundef zeroext true) #30, !srcloc !400
  %.not75 = icmp eq i32 %i.zt, 0
  br i1 %.not75, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call fastcc void @tg3_netif_start(ptr noundef %i.g) #30, !srcloc !401
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %netif_running.exit139
  call void @_raw_spin_unlock_bh(ptr noundef %i.zl) #27
  call void @mutex_unlock(ptr noundef %i.zq) #27
  br i1 %.in.i, label %bb.dm, label %tg3_phy_start.exit

bb.dm:                                            ; preds = %bb.dl
  %i.zu = load i32, ptr %i.k, align 4
  %i.zv = and i32 %i.zu, 2
  %.not.i140 = icmp eq i32 %i.zv, 0
  br i1 %.not.i140, label %tg3_phy_start.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zw = getelementptr i8, ptr %0, i64 8216
  %i.zx = load ptr, ptr %i.zw, align 8
  %i.zy = getelementptr i8, ptr %0, i64 8228
  %i.zz = load i8, ptr %i.zy, align 4
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = call ptr @mdiobus_get_phy(ptr noundef %i.zx, i32 noundef %i.aaa) #27 ; 6 uses
  %i.aac = load i32, ptr %i.k, align 4            ; 2 uses
  %i.aad = and i32 %i.aac, 1
  %.not15.i141 = icmp eq i32 %i.aad, 0
  br i1 %.not15.i141, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aae = and i32 %i.aac, -2
  store i32 %i.aae, ptr %i.k, align 4
  %i.aaf = getelementptr i8, ptr %0, i64 8088
  %i.aag = getelementptr i8, ptr %0, i64 8092
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = getelementptr i8, ptr %i.aab, i64 1024
  store i32 %i.aah, ptr %i.aai, align 8
  %i.aaj = getelementptr i8, ptr %0, i64 8096
  %i.aak = load i8, ptr %i.aaj, align 32
  %i.aal = zext i8 %i.aak to i32
  %i.aam = getelementptr i8, ptr %i.aab, i64 1028
  store i32 %i.aal, ptr %i.aam, align 4
  %i.aan = getelementptr i8, ptr %0, i64 8097
  %i.aao = load i8, ptr %i.aan, align 1
  %i.aap = getelementptr i8, ptr %i.aab, i64 992  ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 8
  %i.aar = and i8 %i.aao, 1
  %i.aas = zext nneg i8 %i.aar to i32
  %i.aat = shl nuw nsw i32 %i.aas, 14
  %i.aau = and i32 %i.aaq, -16385
  %i.aav = or disjoint i32 %i.aat, %i.aau
  store i32 %i.aav, ptr %i.aap, align 8
  %i.aaw = getelementptr i8, ptr %i.aab, i64 1056
  %i.aax = load i32, ptr %i.aaf, align 8
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %i.aaw, i32 noundef %i.aax) #27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  call void @phy_start(ptr noundef %i.aab) #27
  %i.aay = call i32 @phy_start_aneg(ptr noundef %i.aab) #27 ; 0 uses
  br label %tg3_phy_start.exit

.critedge:                                        ; preds = %bb.dj
  call void @_raw_spin_unlock_bh(ptr noundef %i.zl) #27
  call void @mutex_unlock(ptr noundef %i.zq) #27
  br label %tg3_phy_start.exit

tg3_phy_start.exit:                               ; preds = %bb.dp, %bb.dm, %bb.dl, %.critedge, %tg3_test_link.exit
  %i.aaz = load i32, ptr %i.k, align 4
  %i.aba = and i32 %i.aaz, 1
  %.not76 = icmp eq i32 %i.aba, 0
  br i1 %.not76, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %tg3_phy_start.exit
  call fastcc void @tg3_power_down_prepare(ptr noundef %i.g) #30, !srcloc !402
  br label %bb.dr

bb.dr:                                            ; preds = %tg3_phy_start.exit, %bb.dq, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tg3_get_strings(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(2304) %2, ptr noundef align 16 dereferenceable(2304) @ethtool_stats_keys, i64 2304, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(256) %2, ptr noundef align 16 dereferenceable(256) @ethtool_test_keys, i64 256, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "1086: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1086b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1086) #28, !srcloc !403
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.36, ptr @.str.37, i32 12855, i32 2305, i64 16) #28, !srcloc !404
  tail call void asm sideeffect "1087: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1087b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1087) #28, !srcloc !405
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @tg3_set_phys_id(ptr noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  switch i32 %1, label %bb.e [
    i32 1, label %bb.f
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 2648
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef %i.a, i32 noundef 1036, i32 noundef 127) #27
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2648
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef %i.a, i32 noundef 1036, i32 noundef 17) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 2648
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 8240
  %i.i = load i32, ptr %i.h, align 16
  tail call void %i.g(ptr noundef %i.a, i32 noundef 1036, i32 noundef %i.i) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal void @tg3_get_ethtool_stats(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 576)) %2) #16 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8456
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2624
  tail call fastcc void @tg3_get_estats(ptr noundef %i.c, ptr noundef %2) #30, !srcloc !406
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(576) %2, i8 0, i64 576, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal range(i32 -95, 73) i32 @tg3_get_sset_count(ptr nofree readnone captures(none) %0, i32 noundef %1) #8 align 16 prefalign(16) {
bb.a:
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, i32 72, i32 -95
  %switch.selectcmp2 = icmp eq i32 %1, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 8, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tg3_get_rx_ring_count(ptr nofree noundef captures(address) %0) #2 align 16 prefalign(16) {
_tg3_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 8008
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %netif_running.exit

netif_running.exit:                               ; preds = %_tg3_flag.exit
  %i.d = getelementptr i8, ptr %0, i64 2688
  %i.e = load ptr, ptr %i.d, align 64
  %i.f = getelementptr i8, ptr %i.e, i64 168
  %i.g = load volatile i64, ptr %i.f, align 8
  %.in.i11 = trunc i64 %i.g to i1
  br i1 %.in.i11, label %bb.a, label %bb.b

bb.a:                                             ; preds = %netif_running.exit
  %i.h = getelementptr i8, ptr %0, i64 7216
  %i.i = load i32, ptr %i.h, align 16
  br label %bb.c

bb.b:                                             ; preds = %netif_running.exit
  %i.j = tail call i32 @netif_get_num_default_rss_queues() #27
  %i.k = getelementptr i8, ptr %0, i64 7220
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.l)
  br label %bb.c

bb.c:                                             ; preds = %_tg3_flag.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.a ], [ %i.m, %bb.b ], [ 1, %_tg3_flag.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define internal range(i32 0, 129) i32 @tg3_get_rxfh_indir_size(ptr nofree noundef captures(address) %0) #6 align 16 prefalign(16) {
_tg3_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 8008
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 9
  %spec.select = and i32 %i.d, 128
  ret i32 %spec.select
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @tg3_get_rxfh(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 1)) %1) #17 align 16 prefalign(16) {
bb.a:
  store i8 1, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8252       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.f, ptr %i.h, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr i8, ptr %i.c, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %indvars.iv.next
  store i32 %i.k, ptr %i.m, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = getelementptr i8, ptr %i.c, i64 %indvars.iv.next.1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.p, ptr %i.r, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.s = getelementptr i8, ptr %i.c, i64 %indvars.iv.next.2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv.next.2
  store i32 %i.u, ptr %i.w, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 128
  br i1 %exitcond.not.3, label %.loopexit, label %bb.b, !llvm.loop !407

.loopexit:                                        ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -95, 1) i32 @tg3_set_rxfh(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = getelementptr i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 8
  %switch = icmp ult i8 %i.d, 2
  br i1 %switch, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8252       ; 12 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %.024 = phi i64 [ 0, %.preheader ], [ %i.ae, %bb.d ] ; 6 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %.024
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr i8, ptr %i.g, i64 %.024
  store i8 %i.k, ptr %i.l, align 1
  %i.m = or disjoint i64 %.024, 1                 ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr i8, ptr %i.g, i64 %i.m
  store i8 %i.q, ptr %i.r, align 1
  %i.s = or disjoint i64 %.024, 2                 ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr i8, ptr %i.g, i64 %i.s
  store i8 %i.w, ptr %i.x, align 1
  %i.y = or disjoint i64 %.024, 3                 ; 2 uses
  %i.z = load ptr, ptr %i.e, align 8
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.y
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = add nuw nsw i64 %.024, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ae, 128
  br i1 %exitcond.not.3, label %netif_running.exit, label %bb.d, !llvm.loop !408

netif_running.exit:                               ; preds = %bb.d
  %i.af = getelementptr i8, ptr %0, i64 168
  %i.ag = load volatile i64, ptr %i.af, align 8
  %.in.i = trunc i64 %i.ag to i1
  br i1 %.in.i, label %_tg3_flag.exit, label %bb.g

_tg3_flag.exit:                                   ; preds = %netif_running.exit
  %i.ah = getelementptr i8, ptr %0, i64 8008
  %i.ai = load volatile i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 1152921504606846976
  %.not21 = icmp eq i64 %i.aj, 0
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_tg3_flag.exit
  %i.ak = getelementptr i8, ptr %0, i64 2628      ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.ak) #27
  %i.al = getelementptr i8, ptr %0, i64 2648
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.e
  %.01422.i = phi i32 [ 1584, %bb.e ], [ %i.co, %._crit_edge.i ] ; 2 uses
  %.01521.i = phi i32 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge.i ] ; 9 uses
  %i.am = sext i32 %.01521.i to i64
  %i.an = getelementptr i8, ptr %i.g, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %.116.i = add nsw i32 %.01521.i, 1              ; 3 uses
  %i.aq = and i32 %.116.i, 7
  %.not17.i = icmp eq i32 %i.aq, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ar = shl nuw nsw i32 %i.ap, 4
  %i.as = sext i32 %.116.i to i64
  %i.at = getelementptr i8, ptr %i.g, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = or i32 %i.ar, %i.av                     ; 2 uses
  %.1.i = add i32 %.01521.i, 2                    ; 3 uses
  %i.ax = and i32 %.1.i, 7
end_hunk_0
