Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/netdev?download=true
inline.NumInlined: 1067
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@__e1000_shutdown:bb.a

bb.aa:                                            ; preds = %bb.z
  %.val3.i.i129 = load ptr, ptr %i.o, align 32
  %i.gk = getelementptr i8, ptr %.val3.i.i129, i64 23380
  %i.gl = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gk) #24, !srcloc !31
  %i.gm = and i32 %i.gl, 16777216
  %.not4.i.i130 = icmp eq i32 %i.gm, 0
  br i1 %.not4.i.i130, label %__ew32.exit136, label %.lr.ph.i.i131.preheader

.lr.ph.i.i131.preheader:                          ; preds = %bb.aa, %.lr.ph.i.i131.preheader
  %i.gn = phi i32 [ %i.gr, %.lr.ph.i.i131.preheader ], [ 1999, %bb.aa ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i134 = load ptr, ptr %i.o, align 32
  %i.go = getelementptr i8, ptr %.val.i.i134, i64 23380
  %i.gp = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.go) #24, !srcloc !31
  %i.gq = and i32 %i.gp, 16777216
  %.not.i.i135 = icmp eq i32 %i.gq, 0
  %i.gr = add nsw i32 %i.gn, -1                   ; 2 uses
  %.not2.i.i133 = icmp eq i32 %i.gr, 0
  %or.cond5 = select i1 %.not.i.i135, i1 true, i1 %.not2.i.i133
  br i1 %or.cond5, label %__ew32.exit136, label %.lr.ph.i.i131.preheader, !llvm.loop !0

__ew32.exit136:                                   ; preds = %.lr.ph.i.i131.preheader, %bb.z, %bb.aa
  %i.gs = load ptr, ptr %i.o, align 32
  %i.gt = getelementptr i8, ptr %i.gs, i64 22536
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %spec.select, ptr elementtype(i32) %i.gt) #24, !srcloc !32
  %i.gu = load ptr, ptr %i.g, align 8
  %i.gv = getelementptr i8, ptr %i.gu, i64 12000
  %i.gw = load i32, ptr %i.gv, align 32
  %i.gx = and i32 %i.gw, 2048
  %.not.i137 = icmp eq i32 %i.gx, 0
  br i1 %.not.i137, label %__ew32.exit145, label %bb.ab

bb.ab:                                            ; preds = %__ew32.exit136
  %.val3.i.i138 = load ptr, ptr %i.o, align 32
  %i.gy = getelementptr i8, ptr %.val3.i.i138, i64 23380
  %i.gz = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gy) #24, !srcloc !31
  %i.ha = and i32 %i.gz, 16777216
  %.not4.i.i139 = icmp eq i32 %i.ha, 0
  br i1 %.not4.i.i139, label %__ew32.exit145, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %bb.ab, %.lr.ph.i.i140.preheader
  %i.hb = phi i32 [ %i.hf, %.lr.ph.i.i140.preheader ], [ 1999, %bb.ab ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i143 = load ptr, ptr %i.o, align 32
  %i.hc = getelementptr i8, ptr %.val.i.i143, i64 23380
  %i.hd = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hc) #24, !srcloc !31
  %i.he = and i32 %i.hd, 16777216
  %.not.i.i144 = icmp eq i32 %i.he, 0
  %i.hf = add nsw i32 %i.hb, -1                   ; 2 uses
  %.not2.i.i142 = icmp eq i32 %i.hf, 0
  %or.cond6 = select i1 %.not.i.i144, i1 true, i1 %.not2.i.i142
  br i1 %or.cond6, label %__ew32.exit145, label %.lr.ph.i.i140.preheader, !llvm.loop !0

__ew32.exit145:                                   ; preds = %.lr.ph.i.i140.preheader, %__ew32.exit136, %bb.ab
  %i.hg = load ptr, ptr %i.o, align 32
  %i.hh = getelementptr i8, ptr %i.hg, i64 22528
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 2, ptr elementtype(i32) %i.hh) #24, !srcloc !32
  br label %e1000_power_down_phy.exit

bb.ac:                                            ; preds = %device_may_wakeup.exit.thread
  %i.hi = load ptr, ptr %i.g, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 12000
  %i.hk = load i32, ptr %i.hj, align 32
  %i.hl = and i32 %i.hk, 2048
  %.not.i146 = icmp eq i32 %i.hl, 0
  br i1 %.not.i146, label %__ew32.exit154, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val3.i.i147 = load ptr, ptr %i.o, align 8
  %i.hm = getelementptr i8, ptr %.val3.i.i147, i64 23380
  %i.hn = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hm) #24, !srcloc !31
  %i.ho = and i32 %i.hn, 16777216
  %.not4.i.i148 = icmp eq i32 %i.ho, 0
  br i1 %.not4.i.i148, label %__ew32.exit154, label %.lr.ph.i.i149.preheader

.lr.ph.i.i149.preheader:                          ; preds = %bb.ad, %.lr.ph.i.i149.preheader
  %i.hp = phi i32 [ %i.ht, %.lr.ph.i.i149.preheader ], [ 1999, %bb.ad ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i152 = load ptr, ptr %i.o, align 8
  %i.hq = getelementptr i8, ptr %.val.i.i152, i64 23380
  %i.hr = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hq) #24, !srcloc !31
  %i.hs = and i32 %i.hr, 16777216
  %.not.i.i153 = icmp eq i32 %i.hs, 0
  %i.ht = add nsw i32 %i.hp, -1                   ; 2 uses
  %.not2.i.i151 = icmp eq i32 %i.ht, 0
  %or.cond7 = select i1 %.not.i.i153, i1 true, i1 %.not2.i.i151
  br i1 %or.cond7, label %__ew32.exit154, label %.lr.ph.i.i149.preheader, !llvm.loop !0

__ew32.exit154:                                   ; preds = %.lr.ph.i.i149.preheader, %bb.ac, %bb.ad
  %i.hu = load ptr, ptr %i.o, align 8
  %i.hv = getelementptr i8, ptr %i.hu, i64 22528
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.hv) #24, !srcloc !32
  %i.hw = load ptr, ptr %i.g, align 8
  %i.hx = getelementptr i8, ptr %i.hw, i64 12000
  %i.hy = load i32, ptr %i.hx, align 32
  %i.hz = and i32 %i.hy, 2048
  %.not.i155 = icmp eq i32 %i.hz, 0
  br i1 %.not.i155, label %__ew32.exit163, label %bb.ae

bb.ae:                                            ; preds = %__ew32.exit154
  %.val3.i.i156 = load ptr, ptr %i.o, align 8
  %i.ia = getelementptr i8, ptr %.val3.i.i156, i64 23380
  %i.ib = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ia) #24, !srcloc !31
  %i.ic = and i32 %i.ib, 16777216
  %.not4.i.i157 = icmp eq i32 %i.ic, 0
  br i1 %.not4.i.i157, label %__ew32.exit163, label %.lr.ph.i.i158.preheader

.lr.ph.i.i158.preheader:                          ; preds = %bb.ae, %.lr.ph.i.i158.preheader
  %i.id = phi i32 [ %i.ih, %.lr.ph.i.i158.preheader ], [ 1999, %bb.ae ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i161 = load ptr, ptr %i.o, align 8
  %i.ie = getelementptr i8, ptr %.val.i.i161, i64 23380
  %i.if = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ie) #24, !srcloc !31
  %i.ig = and i32 %i.if, 16777216
  %.not.i.i162 = icmp eq i32 %i.ig, 0
  %i.ih = add nsw i32 %i.id, -1                   ; 2 uses
  %.not2.i.i160 = icmp eq i32 %i.ih, 0
  %or.cond8 = select i1 %.not.i.i162, i1 true, i1 %.not2.i.i160
  br i1 %or.cond8, label %__ew32.exit163, label %.lr.ph.i.i158.preheader, !llvm.loop !0

__ew32.exit163:                                   ; preds = %.lr.ph.i.i158.preheader, %__ew32.exit154, %bb.ae
  %i.ii = load ptr, ptr %i.o, align 8
  %i.ij = getelementptr i8, ptr %i.ii, i64 22536
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ij) #24, !srcloc !32
  %i.ik = getelementptr i8, ptr %.val106, i64 5136
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not.i164 = icmp eq ptr %i.il, null
  br i1 %.not.i164, label %e1000_power_down_phy.exit, label %bb.af

bb.af:                                            ; preds = %__ew32.exit163
  tail call void %i.il(ptr noundef %i.g) #23, !inline_history !3
  br label %e1000_power_down_phy.exit

e1000_power_down_phy.exit:                        ; preds = %bb.af, %__ew32.exit163, %e1000_init_phy_wakeup.exit, %__ew32.exit145
  %i.im = getelementptr i8, ptr %.val106, i64 4968
  %i.in = getelementptr i8, ptr %.val106, i64 5144 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8
  %i.ip = icmp eq i32 %i.io, 6
  br i1 %i.ip, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %e1000_power_down_phy.exit
  call void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef %i.g) #23
  br label %bb.ak

bb.ah:                                            ; preds = %e1000_power_down_phy.exit
  %i.iq = getelementptr i8, ptr %.val106, i64 4372
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = icmp ugt i32 %i.ir, 10
  %i.it = and i32 %spec.select, 28
  %.not91 = icmp eq i32 %i.it, 0
  %i.iu = and i1 %.not91, %i.is
  %or.cond102 = and i1 %i.t, %i.iu
  br i1 %or.cond102, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.iv = xor i1 %1, true
  %i.iw = call i32 @e1000_enable_ulp_lpt_lp(ptr noundef %i.g, i1 noundef zeroext %i.iv) #23
  %.not92 = icmp eq i32 %i.iw, 0
  br i1 %.not92, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ix = getelementptr i8, ptr %.val106, i64 4136
  %i.iy = load ptr, ptr %i.ix, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.iy, ptr noundef nonnull @.str.163) #27
  br label %bb.at

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.iz = load i32, ptr %i.in, align 8
  %i.ja = icmp ugt i32 %i.iz, 11
  br i1 %i.ja, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.jb = getelementptr i8, ptr %.val106, i64 15256 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 8
  %.not93 = icmp eq i16 %i.jc, 0
  br i1 %.not93, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = getelementptr i8, ptr %.val106, i64 13532 ; 2 uses
  %i.je = load i16, ptr %i.jd, align 4
  %.not94 = icmp eq i16 %i.je, 0
  br i1 %.not94, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i16 0, ptr %i.c, align 2
  %i.jf = load ptr, ptr %i.im, align 8
  %i.jg = call i32 %i.jf(ptr noundef %i.g) #23
  %.not95 = icmp eq i32 %i.jg, 0
  br i1 %.not95, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.jh = getelementptr i8, ptr %.val106, i64 5056
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = call i32 %i.ji(ptr noundef %i.g, i32 noundef 24724, ptr noundef nonnull %i.c) #23, !inline_history !213
  %.not96 = icmp eq i32 %i.jj, 0
  br i1 %.not96, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.jk = load i16, ptr %i.jb, align 8            ; 3 uses
  %i.jl = load i16, ptr %i.jd, align 4            ; 3 uses
  %2 = and i16 %i.jk, 2
  %3 = and i16 %2, %i.jl
  %.not97.not = icmp eq i16 %3, 0
  %.pre.pre = load i16, ptr %i.c, align 2         ; 2 uses
  %4 = or i16 %.pre.pre, 8192
  %.pre = select i1 %.not97.not, i16 %.pre.pre, i16 %4 ; 2 uses
  %i.jm = and i16 %i.jk, 4
  %i.jn = and i16 %i.jm, %i.jl
  %.not98.not = icmp eq i16 %i.jn, 0
  %i.jo = or i16 %.pre, 16384
  %5 = select i1 %.not98.not, i16 %.pre, i16 %i.jo ; 2 uses
  %i.jp = and i16 %i.jk, 6
  %i.jq = and i16 %i.jl, %i.jp
  %.not183 = icmp eq i16 %i.jq, 0
  br i1 %.not183, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i16 %5, ptr %i.c, align 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.jr = getelementptr i8, ptr %.val106, i64 5112
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = call i32 %i.js(ptr noundef %i.g, i32 noundef 24724, i16 noundef zeroext %5) #23, !inline_history !214 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar, %bb.an
  %i.ju = getelementptr i8, ptr %.val106, i64 5072
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.as, %bb.aj, %bb.y
  call void @e1000e_release_hw_control(ptr noundef %i.f) #28
  call void @pci_clear_master(ptr noundef %0) #23
  %i.jw = getelementptr i8, ptr %.val106, i64 14620
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = and i32 %i.jx, 8192
  %.not99 = icmp eq i32 %i.jy, 0
  br i1 %.not99, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jz = getelementptr i8, ptr %0, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr i8, ptr %i.ka, i64 56
  %i.kc = load ptr, ptr %i.kb, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i16 0, ptr %i.d, align 2, !annotation !27
  %.not100.not = icmp eq ptr %i.kc, null
  br i1 %.not100.not, label %.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kd = call i32 @pcie_capability_read_word(ptr noundef nonnull %i.kc, i32 noundef 8, ptr noundef nonnull %i.d) #23 ; 0 uses
  %i.ke = load i16, ptr %i.d, align 2
  %i.kf = and i16 %i.ke, -2
  %i.kg = call i32 @pcie_capability_write_word(ptr noundef nonnull %i.kc, i32 noundef 8, i16 noundef zeroext %i.kf) #23 ; 0 uses
  %i.kh = call i32 @pci_save_state(ptr noundef %0) #23 ; 0 uses
  %i.ki = call i32 @pci_prepare_to_sleep(ptr noundef %0) #23 ; 0 uses
  %i.kj = load i16, ptr %i.d, align 2
  %i.kk = call i32 @pcie_capability_write_word(ptr noundef nonnull %i.kc, i32 noundef 8, i16 noundef zeroext %i.kj) #23 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.at
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @e1000_suspend_workarounds_ich8lan(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_enable_ulp_lpt_lp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 3, 5) i32 @e1000_io_error_detected(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  %i.b = tail call i32 @e1000e_pm_freeze(ptr noundef %i.a) #28, !srcloc !217 ; 0 uses
  %i.c = icmp eq i32 %1, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pci_disable_device(ptr noundef %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 4, 6) i32 @e1000_io_slot_reset(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %.val, i64 2624
  %i.c = getelementptr i8, ptr %.val, i64 4152
  %i.d = getelementptr i8, ptr %.val, i64 14624
  %i.e = load i32, ptr %i.d, align 32             ; 2 uses
  %i.f = and i32 %i.e, 128
  %.not = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not, i16 0, i16 3
  %i.g = trunc i32 %i.e to i16
  %i.h = lshr i16 %i.g, 1
  %i.i = and i16 %i.h, 4
  %.1 = or disjoint i16 %spec.select, %i.i        ; 2 uses
  %.not20 = icmp eq i16 %.1, 0
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext range(i16 1, 8) %.1, i32 noundef 1) #28, !srcloc !218
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 @pci_enable_device_mem(ptr noundef %0) #23
  %.not21 = icmp eq i32 %i.j, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 200
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.k, ptr noundef nonnull @.str.166) #27
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @pci_restore_state(ptr noundef %0) #23
  tail call void @pci_set_master(ptr noundef %0) #23
  %i.l = tail call i32 @pci_enable_wake(ptr noundef %0, i32 noundef 3, i1 noundef zeroext false) #23 ; 0 uses
  %i.m = tail call i32 @pci_enable_wake(ptr noundef %0, i32 noundef 4, i1 noundef zeroext false) #23 ; 0 uses
  tail call void @e1000e_reset(ptr noundef %i.b) #28
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 12000
  %i.p = load i32, ptr %i.o, align 32
  %i.q = and i32 %i.p, 2048
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %__ew32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %.val, i64 4160    ; 2 uses
  %.val3.i.i = load ptr, ptr %i.r, align 32
  %i.s = getelementptr i8, ptr %.val3.i.i, i64 23380
  %i.t = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s) #24, !srcloc !31
  %i.u = and i32 %i.t, 16777216
  %.not4.i.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i.i, label %__ew32.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %.lr.ph.i.i.preheader
  %i.v = phi i32 [ %i.z, %.lr.ph.i.i.preheader ], [ 1999, %bb.f ]
  tail call void @__const_udelay(i64 noundef 214750) #23
  %.val.i.i = load ptr, ptr %i.r, align 32
  %i.w = getelementptr i8, ptr %.val.i.i, i64 23380
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #24, !srcloc !31
  %i.y = and i32 %i.x, 16777216
  %.not.i.i = icmp eq i32 %i.y, 0
  %i.z = add nsw i32 %i.v, -1                     ; 2 uses
  %.not2.i.i = icmp eq i32 %i.z, 0
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not2.i.i
  br i1 %or.cond, label %__ew32.exit, label %.lr.ph.i.i.preheader, !llvm.loop !0

__ew32.exit:                                      ; preds = %.lr.ph.i.i.preheader, %bb.e, %bb.f
  %i.aa = getelementptr i8, ptr %.val, i64 4160
  %i.ab = load ptr, ptr %i.aa, align 32
  %i.ac = getelementptr i8, ptr %i.ab, i64 22544
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -1, ptr elementtype(i32) %i.ac) #24, !srcloc !32
  br label %bb.g

bb.g:                                             ; preds = %__ew32.exit, %bb.d
  %.0 = phi i32 [ 4, %bb.d ], [ 5, %__ew32.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @e1000_io_resume(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 2624    ; 2 uses
  tail call fastcc void @e1000_init_manageability_pt(ptr noundef %i.b) #28, !srcloc !219
  %i.c = getelementptr i8, ptr %0, i64 200
  %i.d = tail call i32 @e1000e_pm_thaw(ptr noundef %i.c) #28, !srcloc !220 ; 0 uses
  %i.e = getelementptr i8, ptr %.val, i64 14620
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @e1000e_get_hw_control(ptr noundef %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

end_hunk_0
