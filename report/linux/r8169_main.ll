Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/r8169_main?download=true
inline.NumInlined: 1309
inline.NumDeleted: 304
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@rtl_rar_set:bb.a
  br i1 %i.bu, label %fsleep.exit.us21.i.i23.i.preheader, label %rtl_rar_exgmac_set.exit

fsleep.exit.us21.i.i23.i.preheader:               ; preds = %_rtl_eri_write.exit22.i
  tail call void @usleep_range_state(i64 noundef range(i64 10, 12502) 100, i64 noundef range(i64 13, 50001) 125, i32 noundef 2) #18
  br label %bb.i

fsleep.exit.us21.i.i23.i:                         ; preds = %bb.i
  %i.bv = add nuw nsw i32 %.01519.us.i.i24.i19, 1 ; 2 uses
  tail call void @usleep_range_state(i64 noundef range(i64 10, 12502) 100, i64 noundef range(i64 13, 50001) 125, i32 noundef 2) #18
  %exitcond31.not.i.i25.i = icmp eq i32 %i.bv, 99
  br i1 %exitcond31.not.i.i25.i, label %.split17.us.i.i26.i, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %fsleep.exit.us21.i.i23.i.preheader, %fsleep.exit.us21.i.i23.i
  %.01519.us.i.i24.i19 = phi i32 [ 0, %fsleep.exit.us21.i.i23.i.preheader ], [ %i.bv, %fsleep.exit.us21.i.i23.i ]
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 116
  %i.by = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bx) #19, !srcloc !22
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %fsleep.exit.us21.i.i23.i, label %rtl_rar_exgmac_set.exit, !llvm.loop !0

.split17.us.i.i26.i:                              ; preds = %fsleep.exit.us21.i.i23.i
  %i.ca = tail call i32 @net_ratelimit() #18
  %.not.i.i27.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i27.i, label %rtl_rar_exgmac_set.exit, label %bb.j

bb.j:                                             ; preds = %.split17.us.i.i26.i
  %i.cb = getelementptr i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.cc, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 100, i64 noundef 100) #20
  br label %rtl_rar_exgmac_set.exit

rtl_rar_exgmac_set.exit:                          ; preds = %bb.i, %bb.j, %.split17.us.i.i26.i, %_rtl_eri_write.exit22.i, %bb.a
  %.val15 = load ptr, ptr %0, align 8
  %i.cd = getelementptr i8, ptr %.val15, i64 80
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr elementtype(i8) %i.cd) #19, !srcloc !29
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dev_fetch_sw_netstats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_reset_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169_get_drvinfo(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 9528
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = tail call i64 @sized_strscpy(ptr noundef %i.c, ptr noundef nonnull @.str.9, i64 noundef 32) #18 ; 0 uses
  %i.e = getelementptr i8, ptr %1, i64 100
  %i.f = getelementptr i8, ptr %0, i64 2632
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 280
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.b, label %pci_name.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 200
  %.val.i.i = load ptr, ptr %i.j, align 8
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.k = tail call i64 @sized_strscpy(ptr noundef %i.e, ptr noundef %.0.i.i, i64 noundef 32) #18 ; 0 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pci_name.exit
  %i.l = getelementptr i8, ptr %1, i64 68
  %i.m = getelementptr i8, ptr %i.b, i64 56
  %i.n = tail call i64 @sized_strscpy(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 32) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %pci_name.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @rtl8169_get_regs_len(ptr nofree readnone captures(none) %0) #14 align 16 prefalign(16) {
bb.a:
  ret i32 256
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169_get_regs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.010 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]   ; 2 uses
  %.069 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.b ]  ; 2 uses
  %.078 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  %i.c = getelementptr i8, ptr %.069, i64 4
  %i.d = getelementptr i8, ptr %.078, i64 4
  tail call void @memcpy_fromio(ptr noundef %.069, ptr noundef %.078, i64 noundef 4) #18
  %i.e = add nuw nsw i32 %.010, 4
  %i.f = icmp samesign ult i32 %.010, 252
  br i1 %i.f, label %bb.b, label %bb.c, !llvm.loop !211

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @rtl8169_get_wol(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 12)) %1) #15 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 47, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %0, i64 9512
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %1, i64 8
  store i32 %i.c, ptr %i.d, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @rtl8169_set_wol(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, -48
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2624
  %i.e = getelementptr i8, ptr %0, i64 9512
  store i32 %i.b, ptr %i.e, align 8
  tail call fastcc void @__rtl8169_set_wol(ptr noundef %i.d, i32 noundef %i.b) #22, !srcloc !212
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl_get_coalesce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = getelementptr i8, ptr %0, i64 3168       ; 2 uses
  %.val = load i32, ptr %i.b, align 8
  %i.c = icmp ugt i32 %.val, 39
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(92) %1, i8 0, i64 92, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 2648
  %.val38 = load ptr, ptr %i.d, align 8
  %.val39 = load i32, ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %.val38, i64 1024
  %.val38.val = load i32, ptr %i.e, align 8       ; 2 uses
  %i.f = icmp ult i32 %.val39, 5
  %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i = select i1 %i.f, ptr @rtl_coalesce_info_8169, ptr @rtl_coalesce_info_8168_8136 ; 2 uses
  %i.g = icmp eq i32 %.val38.val, -1
  br i1 %i.g, label %rtl_coalesce_info.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.k, %bb.c ], [ 1000, %bb.b ]
  %.12.i = phi ptr [ %i.j, %bb.c ], [ %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i, %bb.b ] ; 2 uses
  %i.i = icmp eq i32 %.val38.val, %i.h
  br i1 %i.i, label %rtl_coalesce_info.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.12.i, i64 20     ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %rtl_coalesce_info.exit.thread, label %.lr.ph.i, !llvm.loop !3

rtl_coalesce_info.exit:                           ; preds = %.lr.ph.i, %bb.b
  %.09.i = phi ptr [ %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i, %bb.b ], [ %.12.i, %.lr.ph.i ] ; 3 uses
  %i.l = icmp ugt ptr %.09.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %rtl_coalesce_info.exit.thread, label %bb.d

rtl_coalesce_info.exit.thread:                    ; preds = %bb.c, %rtl_coalesce_info.exit
  %.09.i41 = phi ptr [ %.09.i, %rtl_coalesce_info.exit ], [ inttoptr (i64 -48 to ptr), %bb.c ]
  %i.m = ptrtoint ptr %.09.i41 to i64
  %i.n = trunc i64 %i.m to i32
  br label %bb.e

bb.d:                                             ; preds = %rtl_coalesce_info.exit
  %i.o = getelementptr i8, ptr %.09.i, i64 4
  %i.p = getelementptr i8, ptr %0, i64 9368
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 3
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 226
  %i.x = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.w) #19, !srcloc !18 ; 4 uses
  %i.y = lshr i16 %i.x, 12                        ; 2 uses
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = mul i32 %i.u, %i.z
  %i.ab = add i32 %i.aa, 999
  %i.ac = udiv i32 %i.ab, 1000
  %i.ad = getelementptr i8, ptr %1, i64 20
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = lshr i16 %i.x, 8
  %i.af = and i16 %i.ae, 15                       ; 2 uses
  %i.ag = icmp ne i16 %i.y, 0
  %i.ah = icmp ne i16 %i.af, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  %i.ai = shl nuw nsw i16 %i.af, 2
  %i.aj = zext nneg i16 %i.ai to i32
  %i.ak = select i1 %or.cond, i32 %i.aj, i32 1
  %i.al = getelementptr i8, ptr %1, i64 24
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = lshr i16 %i.x, 4
  %i.an = and i16 %i.am, 15                       ; 2 uses
  %i.ao = zext nneg i16 %i.an to i32
  %i.ap = mul i32 %i.u, %i.ao
  %i.aq = add i32 %i.ap, 999
  %i.ar = udiv i32 %i.aq, 1000
  %i.as = getelementptr i8, ptr %1, i64 4
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = and i16 %i.x, 15                        ; 2 uses
  %i.au = icmp ne i16 %i.an, 0
  %i.av = icmp ne i16 %i.at, 0
  %or.cond3 = select i1 %i.au, i1 true, i1 %i.av
  %i.aw = shl nuw nsw i16 %i.at, 2
  %i.ax = zext nneg i16 %i.aw to i32
  %i.ay = select i1 %or.cond3, i32 %i.ax, i32 1
  %i.az = getelementptr i8, ptr %1, i64 8
  store i32 %i.ay, ptr %i.az, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %rtl_coalesce_info.exit.thread
  %.0 = phi i32 [ 0, %bb.d ], [ %i.n, %rtl_coalesce_info.exit.thread ], [ -95, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @rtl_set_coalesce(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 3168       ; 2 uses
  %.val82 = load i32, ptr %i.f, align 8           ; 2 uses
  %i.g = icmp ugt i32 %.val82, 39
  br i1 %i.g, label %rtl_coalesce_choose_scale.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %i.e, 60
  %i.i = icmp ugt i32 %i.c, 60
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %rtl_coalesce_choose_scale.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.m) ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 2648
  %.val83 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val83, i64 1024
  %.val83.val = load i32, ptr %i.p, align 8       ; 2 uses
  %i.q = icmp samesign ult i32 %.val82, 5
  %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i.i = select i1 %i.q, ptr @rtl_coalesce_info_8169, ptr @rtl_coalesce_info_8168_8136 ; 2 uses
  %i.r = icmp eq i32 %.val83.val, -1
  br i1 %i.r, label %rtl_coalesce_info.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %i.v, %bb.d ], [ 1000, %bb.c ]
  %.12.i.i = phi ptr [ %i.u, %bb.d ], [ %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i.i, %bb.c ] ; 2 uses
  %i.t = icmp eq i32 %.val83.val, %i.s
  br i1 %i.t, label %rtl_coalesce_info.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr i8, ptr %.12.i.i, i64 20   ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %rtl_coalesce_info.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !3

rtl_coalesce_info.exit.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %.09.i.i = phi ptr [ %rtl_coalesce_info_8169.rtl_coalesce_info_8168_8136.i.i, %bb.c ], [ %.12.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.w = icmp ugt ptr %.09.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.w, label %rtl_coalesce_info.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %rtl_coalesce_info.exit.i
  %i.x = getelementptr i8, ptr %.09.i.i, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = mul i32 %i.y, 15
  %i.aa = udiv i32 %i.z, 1000
  %.not.i = icmp ugt i32 %i.n, %i.aa
  br i1 %.not.i, label %bb.e, label %rtl_coalesce_choose_scale.exit

rtl_coalesce_info.exit.thread.i:                  ; preds = %bb.d, %rtl_coalesce_info.exit.i
  %.09.i2.i = phi ptr [ %.09.i.i, %rtl_coalesce_info.exit.i ], [ inttoptr (i64 -48 to ptr), %bb.d ]
  %i.ab = ptrtoint ptr %.09.i2.i to i64
  %i.ac = trunc i64 %i.ab to i32
  br label %rtl_coalesce_choose_scale.exit

bb.e:                                             ; preds = %.preheader.i
  %i.ad = getelementptr i8, ptr %.09.i.i, i64 8
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = mul i32 %i.ae, 15
  %i.ag = udiv i32 %i.af, 1000
  %.not.1.i = icmp ugt i32 %i.n, %i.ag
  br i1 %.not.1.i, label %bb.f, label %rtl_coalesce_choose_scale.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %.09.i.i, i64 12
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = mul i32 %i.ai, 15
  %i.ak = udiv i32 %i.aj, 1000
  %.not.2.i = icmp ugt i32 %i.n, %i.ak
  br i1 %.not.2.i, label %bb.g, label %rtl_coalesce_choose_scale.exit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %.09.i.i, i64 16
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = mul i32 %i.am, 15
  %i.ao = udiv i32 %i.an, 1000
  %.not.3.i = icmp ugt i32 %i.n, %i.ao
  br i1 %.not.3.i, label %rtl_coalesce_choose_scale.exit.thread, label %rtl_coalesce_choose_scale.exit

rtl_coalesce_choose_scale.exit:                   ; preds = %bb.g, %.preheader.i, %bb.e, %bb.f, %rtl_coalesce_info.exit.thread.i
  %.086 = phi i16 [ 0, %rtl_coalesce_info.exit.thread.i ], [ 2, %bb.f ], [ 0, %.preheader.i ], [ 1, %bb.e ], [ 3, %bb.g ]
  %.012.i = phi i32 [ %i.ac, %rtl_coalesce_info.exit.thread.i ], [ %i.ai, %bb.f ], [ %i.y, %.preheader.i ], [ %i.ae, %bb.e ], [ %i.am, %bb.g ] ; 6 uses
  %i.ap = icmp slt i32 %.012.i, 0
  br i1 %i.ap, label %rtl_coalesce_choose_scale.exit.thread, label %bb.h

bb.h:                                             ; preds = %rtl_coalesce_choose_scale.exit
  %i.aq = icmp eq i32 %i.e, 1
  %spec.store.select = select i1 %i.aq, i32 0, i32 %i.e ; 3 uses
  %i.ar = icmp eq i32 %i.c, 1
  %spec.store.select4 = select i1 %i.ar, i32 0, i32 %i.c ; 3 uses
  %.not76 = icmp ne i32 %spec.store.select4, 0
  %.not = icmp eq i32 %i.m, 0
  %or.cond89 = select i1 %.not76, i1 %.not, i1 false
  br i1 %or.cond89, label %rtl_coalesce_choose_scale.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not75 = icmp ne i32 %spec.store.select, 0
  %.not72 = icmp eq i32 %i.k, 0
  %or.cond90 = select i1 %.not75, i1 %.not72, i1 false
  br i1 %or.cond90, label %rtl_coalesce_choose_scale.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = mul i32 %i.m, 1000
  %i.at = add i32 %i.as, -1
  %i.au = add i32 %i.at, %.012.i
  %i.av = udiv i32 %i.au, %.012.i
  %i.aw = mul i32 %i.k, 1000
  %i.ax = add i32 %i.aw, -1
  %i.ay = add i32 %i.ax, %.012.i
  %i.az = udiv i32 %i.ay, %.012.i
  %i.ba = shl nuw nsw i32 %spec.store.select4, 6
  %i.bb = add nuw nsw i32 %i.ba, 192
  %i.bc = and i32 %i.bb, 3840
  %i.bd = add nuw nsw i32 %spec.store.select, 3
  %i.be = lshr i32 %i.bd, 2
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = trunc i32 %i.av to i16
  %i.bi = shl i16 %i.bh, 12
  %i.bj = trunc i32 %i.az to i16
  %i.bk = shl i16 %i.bj, 4
  %i.bl = and i16 %i.bk, 240
  %i.bm = or i16 %i.bi, %i.bg
  %i.bn = or i16 %i.bm, %i.bl
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 226
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.bn, ptr elementtype(i16) %i.bp) #19, !srcloc !19
  %.val81 = load i32, ptr %i.f, align 8           ; 2 uses
  %.not.i85 = icmp ne i32 %.val81, 31
  %i.bq = add i32 %.val81, -26
  %i.br = icmp ult i32 %i.bq, 14
  %i.bs = and i1 %.not.i85, %i.br
  br i1 %i.bs, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 9368
  %.pre = load i16, ptr %.phi.trans.insert, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bt = or i32 %spec.store.select, %spec.store.select4
  %or.cond3.not = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr i8, ptr %0, i64 9368
  %i.bv = load i16, ptr %i.bu, align 8            ; 2 uses
  br i1 %or.cond3.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = or i16 %i.bv, 128
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = and i16 %i.bv, -129
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.m
  %i.by = phi i16 [ %.pre, %._crit_edge ], [ %i.bw, %bb.l ], [ %i.bx, %bb.m ]
  %i.bz = getelementptr i8, ptr %0, i64 9368
  %i.ca = and i16 %i.by, -4
  %i.cb = or disjoint i16 %i.ca, %.086            ; 2 uses
  store i16 %i.cb, ptr %i.bz, align 8
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 224
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.cb, ptr elementtype(i16) %i.cd) #19, !srcloc !19
  %.val = load ptr, ptr %i.a, align 8
  %i.ce = getelementptr i8, ptr %.val, i64 55
  %i.cf = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ce) #19, !srcloc !28 ; 0 uses
  br label %rtl_coalesce_choose_scale.exit.thread

rtl_coalesce_choose_scale.exit.thread:            ; preds = %bb.i, %bb.h, %bb.g, %rtl_coalesce_choose_scale.exit, %bb.b, %bb.a, %bb.n
  %.0 = phi i32 [ %.012.i, %rtl_coalesce_choose_scale.exit ], [ -95, %bb.a ], [ -34, %bb.b ], [ 0, %bb.n ], [ -22, %bb.i ], [ -22, %bb.h ], [ -34, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal void @rtl8169_get_ringparam(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 8), (16, 24), (32, 36)) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #16 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 256, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %1, i64 20
  store i32 256, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %1, i64 16
  store i32 256, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %1, i64 32
  store i32 256, ptr %i.d, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169_get_pause_stats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 3168
  %.val = load i32, ptr %i.b, align 8
  %i.c = icmp ugt i32 %.val, 39
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 55
  %i.f = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e) #19, !srcloc !28 ; 2 uses
  %i.g = and i8 %i.f, 8
  %i.h = icmp ne i8 %i.g, 0
  %i.i = icmp ne i8 %i.f, -1
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.c, label %rtl8169_update_counters.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @rtl8169_do_counters(ptr noundef readonly %i.a, i32 noundef 8) #22, !srcloc !37
  br label %rtl8169_update_counters.exit

rtl8169_update_counters.exit:                     ; preds = %bb.b, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 9480       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 112
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.j, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 152
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %1, i64 16
  store i64 %i.s, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %rtl8169_update_counters.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169_get_pauseparam(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 16)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %i.a, align 1, !annotation !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !annotation !20
  %i.c = getelementptr i8, ptr %0, i64 2648       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  call void @phy_get_pause(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 992
  %i.g = load i32, ptr %i.f, align 8
  %i.h = lshr i32 %i.g, 14
  %i.i = and i32 %i.h, 1
  %i.j = getelementptr i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4
  %i.k = load i8, ptr %i.a, align 1, !range !35, !noundef !36
  %i.l = zext nneg i8 %i.k to i32
end_hunk_0
