Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tg3?download=true
inline.NumInlined: 2274
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@tg3_setup_eee:bb.a
  %i.bj = getelementptr i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 16
  %i.bl = tail call i32 %i.bk(ptr noundef %0, i32 noundef 14000) #27, !inline_history !107 ; 0 uses
  br label %_tw32_flush.exit40

_tw32_flush.exit40:                               ; preds = %bb.h, %bb.i
  %i.bm = getelementptr i8, ptr %0, i64 6064
  %i.bn = load i32, ptr %i.bm, align 16
  %i.bo = and i32 %i.bn, 65535
  %i.bp = or disjoint i32 %i.bo, 134152192        ; 2 uses
  %i.bq = load volatile i64, ptr %i.aa, align 8
  %i.br = and i64 %i.bq, 512
  %.not.i43 = icmp eq i64 %i.br, 0
  br i1 %.not.i43, label %_tg3_flag.exit21.i45, label %bb.j

_tg3_flag.exit21.i45:                             ; preds = %_tw32_flush.exit40
  %i.bs = load volatile i64, ptr %i.aa, align 8
  %i.bt = and i64 %i.bs, 35184372088832
  %.not15.i47 = icmp eq i64 %i.bt, 0
  br i1 %.not15.i47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_tg3_flag.exit21.i45, %_tw32_flush.exit40
  %i.bu = getelementptr i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef %0, i32 noundef 14004, i32 noundef %i.bp) #27, !inline_history !107
  br label %_tw32_flush.exit48

bb.k:                                             ; preds = %_tg3_flag.exit21.i45
  %i.bw = getelementptr i8, ptr %0, i64 48
  %i.bx = load ptr, ptr %i.bw, align 16
  %i.by = getelementptr i8, ptr %i.bx, i64 14004
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bp, ptr elementtype(i32) %i.by) #28, !srcloc !52
  %i.bz = getelementptr i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 16
  %i.cb = tail call i32 %i.ca(ptr noundef %0, i32 noundef 14004) #27, !inline_history !107 ; 0 uses
  br label %_tw32_flush.exit48

_tw32_flush.exit48:                               ; preds = %bb.k, %bb.j
  %i.cc = load volatile i64, ptr %i.aa, align 8
  %i.cd = and i64 %i.cc, 512
  %.not.i51 = icmp eq i64 %i.cd, 0
  br i1 %.not.i51, label %_tg3_flag.exit21.i53, label %bb.l

_tg3_flag.exit21.i53:                             ; preds = %_tw32_flush.exit48
  %i.ce = load volatile i64, ptr %i.aa, align 8
  %i.cf = and i64 %i.ce, 35184372088832
  %.not15.i55 = icmp eq i64 %i.cf, 0
  br i1 %.not15.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_tg3_flag.exit21.i53, %_tw32_flush.exit48
  %i.cg = getelementptr i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef %0, i32 noundef 14008, i32 noundef 134154239) #27, !inline_history !107
  br label %_tw32_flush.exit56

bb.m:                                             ; preds = %_tg3_flag.exit21.i53
  %i.ci = getelementptr i8, ptr %0, i64 48
  %i.cj = load ptr, ptr %i.ci, align 16
  %i.ck = getelementptr i8, ptr %i.cj, i64 14008
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 134154239, ptr elementtype(i32) %i.ck) #28, !srcloc !52
  %i.cl = getelementptr i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16
  %i.cn = tail call i32 %i.cm(ptr noundef %0, i32 noundef 14008) #27, !inline_history !107 ; 0 uses
  br label %_tw32_flush.exit56

_tw32_flush.exit56:                               ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -16, 1) i32 @tg3_phy_reset(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 24 uses
  %i.l = alloca i32, align 4                      ; 18 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 16 uses
  %i.q = alloca i32, align 4                      ; 16 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i32, align 4                      ; 6 uses
  %i.v = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #28
  store i32 0, ptr %i.v, align 4, !annotation !11
  %i.w = getelementptr i8, ptr %0, i64 5564       ; 5 uses
  %i.x = load i32, ptr %i.w, align 4
  %.mask = and i32 %i.x, -4096
  %i.y = icmp eq i32 %.mask, 49152
  br i1 %i.y, label %_tg3_flag.exit.i, label %bb.d

_tg3_flag.exit.i:                                 ; preds = %bb.a
  %i.z = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 16
  %i.ab = tail call i32 %i.aa(ptr noundef %0, i32 noundef 26628) #27 ; 2 uses
  store i32 %i.ab, ptr %i.v, align 4
  %i.ac = and i32 %i.ab, -2097153                 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 5384      ; 2 uses
  %i.ae = load volatile i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 512
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %_tg3_flag.exit21.i, label %bb.b

_tg3_flag.exit21.i:                               ; preds = %_tg3_flag.exit.i
  %i.ag = load volatile i64, ptr %i.ad, align 8
  %i.ah = and i64 %i.ag, 35184372088832
  %.not15.i = icmp eq i64 %i.ah, 0
  br i1 %.not15.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_tg3_flag.exit21.i, %_tg3_flag.exit.i
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef %0, i32 noundef 26628, i32 noundef %i.ac) #27, !inline_history !107
  br label %_tw32_flush.exit

bb.c:                                             ; preds = %_tg3_flag.exit21.i
  %i.ak = getelementptr i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 16
  %i.am = getelementptr i8, ptr %i.al, i64 26628
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ac, ptr elementtype(i32) %i.am) #28, !srcloc !52
  %i.an = load ptr, ptr %i.z, align 16
  %i.ao = tail call i32 %i.an(ptr noundef %0, i32 noundef 26628) #27, !inline_history !107 ; 0 uses
  br label %_tw32_flush.exit

_tw32_flush.exit:                                 ; preds = %bb.b, %bb.c
  tail call void @__const_udelay(i64 noundef 171800) #27
  br label %bb.d

bb.d:                                             ; preds = %_tw32_flush.exit, %bb.a
  %i.ap = getelementptr i8, ptr %0, i64 5604      ; 154 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = zext i8 %i.aq to i32
  %i.as = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, ptr noundef nonnull %i.v) #30, !srcloc !59
  %i.at = load i8, ptr %i.ap, align 4
  %i.au = zext i8 %i.at to i32
  %i.av = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.au, i32 noundef 1, ptr noundef nonnull %i.v) #30, !srcloc !59
  %i.aw = or i32 %i.av, %i.as
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %netif_running.exit, label %bb.dg

netif_running.exit:                               ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 64           ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 168
  %i.ba = load volatile i64, ptr %i.az, align 8
  %.in.i = trunc i64 %i.ba to i1
  br i1 %.in.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %netif_running.exit
  %i.bb = getelementptr i8, ptr %0, i64 6104
  %i.bc = load i8, ptr %i.bb, align 8, !range !26, !noundef !27
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @netif_carrier_off(ptr noundef %i.ay) #27
  tail call fastcc void @tg3_link_report(ptr noundef %0) #30, !srcloc !201
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %netif_running.exit
  %i.be = load i32, ptr %i.w, align 4             ; 2 uses
  %i.bf = lshr i32 %i.be, 12
  switch i32 %i.bf, label %bb.bd [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 22404, label %bb.ba
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #28
  store i32 0, ptr %i.t, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #28
  store i32 0, ptr %i.u, align 4, !annotation !11
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.h
  %.058.i = phi i32 [ 1, %bb.h ], [ %.058.i.be, %.backedge.i.backedge ]
  %.0.i = phi i32 [ 10, %bb.h ], [ %.0.i.be, %.backedge.i.backedge ] ; 2 uses
  %.not.i109 = icmp eq i32 %.058.i, 0
  br i1 %.not.i109, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.backedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #28
  store i32 32768, ptr %i.s, align 4
  %i.bg = load i8, ptr %i.ap, align 4
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.bh, i32 noundef 0, i32 noundef 32768) #30, !srcloc !60
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %tg3_bmcr_reset.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.i, %bb.l
  %i.bj = phi i32 [ %i.bq, %bb.l ], [ 4999, %bb.i ] ; 3 uses
  %i.bk = load i8, ptr %i.ap, align 4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.bl, i32 noundef 0, ptr noundef nonnull %i.s) #30, !srcloc !59
  %.not8.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not8.i.i, label %bb.j, label %tg3_bmcr_reset.exit.thread.i

bb.j:                                             ; preds = %.preheader.i.i
  %i.bn = load i32, ptr %i.s, align 4
  %i.bo = and i32 %i.bn, 32768
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__const_udelay(i64 noundef 171800) #27
  %1 = icmp slt i32 %i.bj, 0
  br i1 %1, label %tg3_bmcr_reset.exit.thread.i, label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @__const_udelay(i64 noundef 42950) #27
  %i.bq = add nsw i32 %i.bj, -1
  %.not7.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not7.i.i, label %tg3_bmcr_reset.exit.thread.i, label %.preheader.i.i, !llvm.loop !61

tg3_bmcr_reset.exit.thread.i:                     ; preds = %bb.k, %bb.i, %bb.l, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  br label %tg3_phy_reset_5703_4_5.exit.thread

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.backedge.i
  %i.br = load i8, ptr %i.ap, align 4
  %i.bs = zext i8 %i.br to i32
  %i.bt = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.bs, i32 noundef 16, ptr noundef nonnull %i.t) #30, !srcloc !59
  %.not34.i = icmp eq i32 %i.bt, 0
  br i1 %.not34.i, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n
  %i.bu = load i32, ptr %i.t, align 4
  %i.bv = or i32 %i.bu, 12288                     ; 2 uses
  store i32 %i.bv, ptr %i.t, align 4
  %i.bw = load i8, ptr %i.ap, align 4
  %i.bx = zext i8 %i.bw to i32
  %i.by = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.bx, i32 noundef 16, i32 noundef %i.bv) #30, !srcloc !60 ; 0 uses
  %i.bz = load i8, ptr %i.ap, align 4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ca, i32 noundef 0, i32 noundef 320) #30, !srcloc !60 ; 0 uses
  %i.cc = load i8, ptr %i.ap, align 4
  %i.cd = zext i8 %i.cc to i32
  %i.ce = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.cd, i32 noundef 9, ptr noundef nonnull %i.u) #30, !srcloc !59
  %.not35.i = icmp eq i32 %i.ce, 0
  br i1 %.not35.i, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %i.cf = load i8, ptr %i.ap, align 4
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.cg, i32 noundef 9, i32 noundef 6144) #30, !srcloc !60 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  %i.ci = load i8, ptr %i.ap, align 4
  %i.cj = zext i8 %i.ci to i32
  %i.ck = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.cj, i32 noundef 24, i32 noundef 7) #30, !srcloc !60 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i, label %tg3_phy_auxctl_read.exit.i.i, label %tg3_phy_toggle_auxctl_smdsp.exit.thread.i

tg3_phy_auxctl_read.exit.i.i:                     ; preds = %bb.p
  store i32 0, ptr %i.r, align 4, !annotation !11
  %i.cl = load i8, ptr %i.ap, align 4
  %i.cm = zext i8 %i.cl to i32
  %i.cn = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.cm, i32 noundef 24, ptr noundef nonnull %i.r) #30, !srcloc !59 ; 2 uses
  %.not.i41.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i41.i, label %tg3_phy_toggle_auxctl_smdsp.exit.i, label %tg3_phy_toggle_auxctl_smdsp.exit.thread.i

tg3_phy_toggle_auxctl_smdsp.exit.thread.i:        ; preds = %tg3_phy_auxctl_read.exit.i.i, %bb.p
  %.0.i.ph.i = phi i32 [ %i.ck, %bb.p ], [ %i.cn, %tg3_phy_auxctl_read.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  br label %tg3_phy_reset_5703_4_5.exit.thread

tg3_phy_toggle_auxctl_smdsp.exit.i:               ; preds = %tg3_phy_auxctl_read.exit.i.i
  %i.co = load i32, ptr %i.r, align 4
  %i.cp = or i32 %i.co, 3072
  %i.cq = load i8, ptr %i.ap, align 4
  %i.cr = zext i8 %i.cq to i32
  %i.cs = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.cr, i32 noundef 24, i32 noundef %i.cp) #30, !srcloc !60 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  %.not36.i = icmp eq i32 %i.cs, 0
  br i1 %.not36.i, label %bb.q, label %tg3_phy_reset_5703_4_5.exit.thread

bb.q:                                             ; preds = %tg3_phy_toggle_auxctl_smdsp.exit.i
  %i.ct = load i8, ptr %i.ap, align 4
  %i.cu = zext i8 %i.ct to i32
  %i.cv = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.cu, i32 noundef 23, i32 noundef 32773) #30, !srcloc !60
  %.not.i42.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i42.i, label %bb.r, label %tg3_phydsp_write.exit.i.preheader

bb.r:                                             ; preds = %bb.q
  %i.cw = load i8, ptr %i.ap, align 4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.cx, i32 noundef 21, i32 noundef 2048) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit.i.preheader

tg3_phydsp_write.exit.i.preheader:                ; preds = %bb.r, %bb.q
  br label %tg3_phydsp_write.exit.i

tg3_phydsp_write.exit.i:                          ; preds = %tg3_phydsp_write.exit.i.preheader, %tg3_wait_macro_done.exit60.2.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %tg3_wait_macro_done.exit60.2.i.i ], [ 0, %tg3_phydsp_write.exit.i.preheader ] ; 3 uses
  %i.cz = load i8, ptr %i.ap, align 4
  %i.da = zext i8 %i.cz to i32
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.db = shl i32 %indvars.iv.tr.i.i, 13
  %i.dc = or disjoint i32 %i.db, 512              ; 2 uses
  %i.dd = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.da, i32 noundef 23, i32 noundef %i.dc) #30, !srcloc !60 ; 0 uses
  %i.de = load i8, ptr %i.ap, align 4
  %i.df = zext i8 %i.de to i32
  %i.dg = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.df, i32 noundef 22, i32 noundef 2) #30, !srcloc !60 ; 0 uses
  %i.dh = getelementptr [24 x i8], ptr @tg3_phy_write_and_check_testpat.test_pat, i64 %indvars.iv.i.i ; 6 uses
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.dj = load i8, ptr %i.ap, align 4
  %i.dk = zext i8 %i.dj to i32
  %i.dl = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.dk, i32 noundef 21, i32 noundef %i.di) #30, !srcloc !60 ; 0 uses
  %i.dm = getelementptr i8, ptr %i.dh, i64 4
  %i.dn = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.do = load i8, ptr %i.ap, align 4
  %i.dp = zext i8 %i.do to i32
  %i.dq = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.dp, i32 noundef 21, i32 noundef %i.dn) #30, !srcloc !60 ; 0 uses
  %i.dr = getelementptr i8, ptr %i.dh, i64 8
  %i.ds = load i32, ptr %i.dr, align 8            ; 2 uses
  %i.dt = load i8, ptr %i.ap, align 4
  %i.du = zext i8 %i.dt to i32
  %i.dv = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.du, i32 noundef 21, i32 noundef %i.ds) #30, !srcloc !60 ; 0 uses
  %i.dw = getelementptr i8, ptr %i.dh, i64 12
  %i.dx = load i32, ptr %i.dw, align 4            ; 2 uses
  %i.dy = load i8, ptr %i.ap, align 4
  %i.dz = zext i8 %i.dy to i32
  %i.ea = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.dz, i32 noundef 21, i32 noundef %i.dx) #30, !srcloc !60 ; 0 uses
  %i.eb = getelementptr i8, ptr %i.dh, i64 16
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = load i8, ptr %i.ap, align 4
  %i.ee = zext i8 %i.ed to i32
  %i.ef = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ee, i32 noundef 21, i32 noundef %i.ec) #30, !srcloc !60 ; 0 uses
  %i.eg = getelementptr i8, ptr %i.dh, i64 20
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = load i8, ptr %i.ap, align 4
  %i.ej = zext i8 %i.ei to i32
  %i.ek = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ej, i32 noundef 21, i32 noundef %i.eh) #30, !srcloc !60 ; 0 uses
  %i.el = load i8, ptr %i.ap, align 4
  %i.em = zext i8 %i.el to i32
  %i.en = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.em, i32 noundef 22, i32 noundef 514) #30, !srcloc !60 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %2, %tg3_phydsp_write.exit.i
  %i.eo = phi i32 [ 99, %tg3_phydsp_write.exit.i ], [ %3, %2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store i32 0, ptr %i.o, align 4, !annotation !11
  %i.ep = load i8, ptr %i.ap, align 4
  %i.eq = zext i8 %i.ep to i32
  %i.er = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.eq, i32 noundef 22, ptr noundef nonnull %i.o) #30, !srcloc !59
  %.not6.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not6.i.i.i, label %bb.t, label %2

bb.t:                                             ; preds = %bb.s
  %i.es = load i32, ptr %i.o, align 4
  %i.et = and i32 %i.es, 4096
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %tg3_wait_macro_done.exit.i.i, label %2

2:                                                ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  %3 = add nsw i32 %i.eo, -1
  %.not.i.i44.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i44.i, label %tg3_phy_write_and_check_testpat.exit.i, label %bb.s

tg3_wait_macro_done.exit.i.i:                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  %i.ev = load i8, ptr %i.ap, align 4
  %i.ew = zext i8 %i.ev to i32
  %i.ex = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ew, i32 noundef 23, i32 noundef %i.dc) #30, !srcloc !60 ; 0 uses
  %i.ey = load i8, ptr %i.ap, align 4
  %i.ez = zext i8 %i.ey to i32
  %i.fa = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ez, i32 noundef 22, i32 noundef 130) #30, !srcloc !60 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %tg3_wait_macro_done.exit.i.i
  %i.fb = phi i32 [ 99, %tg3_wait_macro_done.exit.i.i ], [ %4, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store i32 0, ptr %i.n, align 4, !annotation !11
  %i.fc = load i8, ptr %i.ap, align 4
  %i.fd = zext i8 %i.fc to i32
  %i.fe = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.fd, i32 noundef 22, ptr noundef nonnull %i.n) #30, !srcloc !59
  %.not6.i51.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not6.i51.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ff = load i32, ptr %i.n, align 4
  %i.fg = and i32 %i.ff, 4096
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %tg3_wait_macro_done.exit55.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  %4 = add nsw i32 %i.fb, -1
  %.not.i52.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i52.i.i, label %tg3_phy_write_and_check_testpat.exit.i, label %bb.u

tg3_wait_macro_done.exit55.i.i:                   ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  %5 = load i8, ptr %i.ap, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %6, i32 noundef 22, i32 noundef 2050) #30, !srcloc !60 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %tg3_wait_macro_done.exit55.i.i
  %i.fi = phi i32 [ 99, %tg3_wait_macro_done.exit55.i.i ], [ %i.fs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store i32 0, ptr %i.m, align 4, !annotation !11
  %i.fj = load i8, ptr %i.ap, align 4
  %i.fk = zext i8 %i.fj to i32
  %i.fl = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.fk, i32 noundef 22, ptr noundef nonnull %i.m) #30, !srcloc !59
  %.not6.i56.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not6.i56.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fm = load i32, ptr %i.m, align 4
  %i.fn = and i32 %i.fm, 4096
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %tg3_wait_macro_done.exit60.preheader.i.i, label %bb.z

tg3_wait_macro_done.exit60.preheader.i.i:         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store i32 0, ptr %i.p, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store i32 0, ptr %i.q, align 4, !annotation !11
  %i.fp = load i8, ptr %i.ap, align 4
  %i.fq = zext i8 %i.fp to i32
  %i.fr = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.fq, i32 noundef 21, ptr noundef nonnull %i.p) #30, !srcloc !59
  %.not44.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not44.i.i, label %bb.aa, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %i.fs = add nsw i32 %i.fi, -1
  %.not.i57.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i57.i.i, label %tg3_phy_write_and_check_testpat.exit.i, label %bb.x

bb.aa:                                            ; preds = %tg3_wait_macro_done.exit60.preheader.i.i
  %i.ft = load i8, ptr %i.ap, align 4
  %i.fu = zext i8 %i.ft to i32
  %i.fv = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.fu, i32 noundef 21, ptr noundef nonnull %i.q) #30, !srcloc !59
  %.not45.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not45.i.i, label %.preheader.i45.i, label %.critedge.i.i

.preheader.i45.i:                                 ; preds = %bb.aa, %8
  %i.fw = phi i32 [ %9, %8 ], [ 99, %bb.aa ]      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 0, ptr %i.l, align 4, !annotation !11
  %i.fx = load i8, ptr %i.ap, align 4
  %i.fy = zext i8 %i.fx to i32
  %i.fz = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.fy, i32 noundef 22, ptr noundef nonnull %i.l) #30, !srcloc !59
  %.not6.i61.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not6.i61.i.i, label %bb.ab, label %8

bb.ab:                                            ; preds = %.preheader.i45.i
  %i.ga = load i32, ptr %i.l, align 4
  %i.gb = and i32 %i.ga, 4096
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %tg3_wait_macro_done.exit65.i.i, label %8

8:                                                ; preds = %bb.ab, %.preheader.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %9 = add nsw i32 %i.fw, -1
  %.not.i62.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i62.i.i, label %.critedge.i.i, label %.preheader.i45.i

tg3_wait_macro_done.exit65.i.i:                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.gd = load i32, ptr %i.p, align 4
  %i.ge = and i32 %i.gd, 32767
  %i.gf = load i32, ptr %i.q, align 4
  %i.gg = and i32 %i.gf, 15
  %.not47.i.i = icmp eq i32 %i.ge, %i.di
  %.not48.i.i = icmp eq i32 %i.gg, %i.dn
  %or.cond.i.i110 = select i1 %.not47.i.i, i1 %.not48.i.i, i1 false
  br i1 %or.cond.i.i110, label %tg3_wait_macro_done.exit60.i.i, label %bb.ac

bb.ac:                                            ; preds = %tg3_wait_macro_done.exit65.2.i.i, %tg3_wait_macro_done.exit65.1.i.i, %tg3_wait_macro_done.exit65.i.i
  %i.gh = load i8, ptr %i.ap, align 4
  %i.gi = zext i8 %i.gh to i32
  %i.gj = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.gi, i32 noundef 23, i32 noundef 11) #30, !srcloc !60 ; 0 uses
  %i.gk = load i8, ptr %i.ap, align 4
  %i.gl = zext i8 %i.gk to i32
  %i.gm = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.gl, i32 noundef 21, i32 noundef 16385) #30, !srcloc !60 ; 0 uses
  %i.gn = load i8, ptr %i.ap, align 4
  %i.go = zext i8 %i.gn to i32
  %i.gp = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.go, i32 noundef 21, i32 noundef 16389) #30, !srcloc !60 ; 0 uses
  br label %.critedge.i.i

tg3_wait_macro_done.exit60.i.i:                   ; preds = %tg3_wait_macro_done.exit65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store i32 0, ptr %i.p, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store i32 0, ptr %i.q, align 4, !annotation !11
  %i.gq = load i8, ptr %i.ap, align 4
  %i.gr = zext i8 %i.gq to i32
  %i.gs = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.gr, i32 noundef 21, ptr noundef nonnull %i.p) #30, !srcloc !59
  %.not44.1.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not44.1.i.i, label %bb.ad, label %.critedge.i.i

bb.ad:                                            ; preds = %tg3_wait_macro_done.exit60.i.i
  %i.gt = load i8, ptr %i.ap, align 4
  %i.gu = zext i8 %i.gt to i32
  %i.gv = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.gu, i32 noundef 21, ptr noundef nonnull %i.q) #30, !srcloc !59
  %.not45.1.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not45.1.i.i, label %.preheader.1.i.i, label %.critedge.i.i

.preheader.1.i.i:                                 ; preds = %bb.ad, %bb.af
  %i.gw = phi i32 [ %i.hd, %bb.af ], [ 99, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 0, ptr %i.l, align 4, !annotation !11
  %i.gx = load i8, ptr %i.ap, align 4
  %i.gy = zext i8 %i.gx to i32
  %i.gz = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.gy, i32 noundef 22, ptr noundef nonnull %i.l) #30, !srcloc !59
  %.not6.i61.1.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not6.i61.1.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.preheader.1.i.i
  %i.ha = load i32, ptr %i.l, align 4
  %i.hb = and i32 %i.ha, 4096
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %tg3_wait_macro_done.exit65.1.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.hd = add nsw i32 %i.gw, -1
  %.not.i62.1.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i62.1.i.i, label %.critedge.i.i, label %.preheader.1.i.i

tg3_wait_macro_done.exit65.1.i.i:                 ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.he = load i32, ptr %i.p, align 4
  %i.hf = and i32 %i.he, 32767
  %i.hg = load i32, ptr %i.q, align 4
  %i.hh = and i32 %i.hg, 15
  %.not47.1.i.i = icmp eq i32 %i.hf, %i.ds
  %.not48.1.i.i = icmp eq i32 %i.hh, %i.dx
  %or.cond119.i.i = select i1 %.not47.1.i.i, i1 %.not48.1.i.i, i1 false
  br i1 %or.cond119.i.i, label %tg3_wait_macro_done.exit60.1.i.i, label %bb.ac

tg3_wait_macro_done.exit60.1.i.i:                 ; preds = %tg3_wait_macro_done.exit65.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store i32 0, ptr %i.p, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store i32 0, ptr %i.q, align 4, !annotation !11
  %i.hi = load i8, ptr %i.ap, align 4
  %i.hj = zext i8 %i.hi to i32
  %i.hk = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.hj, i32 noundef 21, ptr noundef nonnull %i.p) #30, !srcloc !59
  %.not44.2.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not44.2.i.i, label %bb.ag, label %.critedge.i.i

bb.ag:                                            ; preds = %tg3_wait_macro_done.exit60.1.i.i
  %i.hl = load i8, ptr %i.ap, align 4
  %i.hm = zext i8 %i.hl to i32
  %i.hn = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.hm, i32 noundef 21, ptr noundef nonnull %i.q) #30, !srcloc !59
  %.not45.2.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not45.2.i.i, label %.preheader.2.i.i, label %.critedge.i.i

.preheader.2.i.i:                                 ; preds = %bb.ag, %bb.ai
  %i.ho = phi i32 [ %i.hv, %bb.ai ], [ 99, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 0, ptr %i.l, align 4, !annotation !11
  %i.hp = load i8, ptr %i.ap, align 4
  %i.hq = zext i8 %i.hp to i32
  %i.hr = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.hq, i32 noundef 22, ptr noundef nonnull %i.l) #30, !srcloc !59
  %.not6.i61.2.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not6.i61.2.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.2.i.i
  %i.hs = load i32, ptr %i.l, align 4
  %i.ht = and i32 %i.hs, 4096
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %tg3_wait_macro_done.exit65.2.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.hv = add nsw i32 %i.ho, -1
  %.not.i62.2.i.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i62.2.i.i, label %.critedge.i.i, label %.preheader.2.i.i

tg3_wait_macro_done.exit65.2.i.i:                 ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.hw = load i32, ptr %i.p, align 4
  %i.hx = and i32 %i.hw, 32767
  %i.hy = load i32, ptr %i.q, align 4
  %i.hz = and i32 %i.hy, 15
  %.not47.2.i.i = icmp eq i32 %i.hx, %i.ec
  %.not48.2.i.i = icmp eq i32 %i.hz, %i.eh
  %or.cond120.i.i = select i1 %.not47.2.i.i, i1 %.not48.2.i.i, i1 false
  br i1 %or.cond120.i.i, label %tg3_wait_macro_done.exit60.2.i.i, label %bb.ac

tg3_wait_macro_done.exit60.2.i.i:                 ; preds = %tg3_wait_macro_done.exit65.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.not.i.i, label %tg3_phy_write_and_check_testpat.exit.thread.i, label %tg3_phydsp_write.exit.i, !llvm.loop !202

.critedge.i.i:                                    ; preds = %bb.ag, %tg3_wait_macro_done.exit60.1.i.i, %bb.ad, %tg3_wait_macro_done.exit60.i.i, %bb.aa, %tg3_wait_macro_done.exit60.preheader.i.i, %8, %bb.af, %bb.ai, %bb.ac
  %.2.i = phi i32 [ 0, %bb.ac ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %8 ], [ 1, %tg3_wait_macro_done.exit60.preheader.i.i ], [ 1, %bb.aa ], [ 1, %tg3_wait_macro_done.exit60.i.i ], [ 1, %bb.ad ], [ 1, %tg3_wait_macro_done.exit60.1.i.i ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  br label %tg3_phy_write_and_check_testpat.exit.i

tg3_phy_write_and_check_testpat.exit.i:           ; preds = %2, %bb.w, %bb.z, %.critedge.i.i
  %.3.i = phi i32 [ 1, %bb.z ], [ %.2.i, %.critedge.i.i ], [ 1, %bb.w ], [ 1, %2 ]
  %i.ia = add i32 %.0.i, -1                       ; 2 uses
  %.not38.i = icmp eq i32 %i.ia, 0
  br i1 %.not38.i, label %tg3_phy_write_and_check_testpat.exit.thread.i, label %.backedge.i.backedge

bb.aj:                                            ; preds = %bb.o, %bb.n
  %.old.i = add i32 %.0.i, -1                     ; 2 uses
  %.not38.old.i = icmp eq i32 %.old.i, 0
  br i1 %.not38.old.i, label %tg3_phy_write_and_check_testpat.exit.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.aj, %tg3_phy_write_and_check_testpat.exit.i
  %.058.i.be = phi i32 [ %.3.i, %tg3_phy_write_and_check_testpat.exit.i ], [ 0, %bb.aj ]
  %.0.i.be = phi i32 [ %i.ia, %tg3_phy_write_and_check_testpat.exit.i ], [ %.old.i, %bb.aj ]
  br label %.backedge.i, !llvm.loop !203

tg3_phy_write_and_check_testpat.exit.thread.i:    ; preds = %bb.aj, %tg3_phy_write_and_check_testpat.exit.i, %tg3_wait_macro_done.exit60.2.i.i
  %i.ib = load i8, ptr %i.ap, align 4
  %i.ic = zext i8 %i.ib to i32
  %i.id = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ic, i32 noundef 23, i32 noundef 512) #30, !srcloc !60 ; 0 uses
  %i.ie = load i8, ptr %i.ap, align 4
  %i.if = zext i8 %i.ie to i32
  %i.ig = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.if, i32 noundef 22, i32 noundef 2) #30, !srcloc !60 ; 0 uses
  %i.ih = load i8, ptr %i.ap, align 4
  %i.ii = zext i8 %i.ih to i32
  %i.ij = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ii, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ik = load i8, ptr %i.ap, align 4
  %i.il = zext i8 %i.ik to i32
  %i.im = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.il, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.in = load i8, ptr %i.ap, align 4
  %i.io = zext i8 %i.in to i32
  %i.ip = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.io, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.iq = load i8, ptr %i.ap, align 4
  %i.ir = zext i8 %i.iq to i32
  %i.is = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ir, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.it = load i8, ptr %i.ap, align 4
  %i.iu = zext i8 %i.it to i32
  %i.iv = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.iu, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.iw = load i8, ptr %i.ap, align 4
  %i.ix = zext i8 %i.iw to i32
  %i.iy = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ix, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.iz = load i8, ptr %i.ap, align 4
  %i.ja = zext i8 %i.iz to i32
  %i.jb = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ja, i32 noundef 22, i32 noundef 514) #30, !srcloc !60 ; 0 uses
  br label %10

bb.ak:                                            ; preds = %15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.jc = load i8, ptr %i.ap, align 4
  %i.jd = zext i8 %i.jc to i32
  %i.je = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jd, i32 noundef 23, i32 noundef 8704) #30, !srcloc !60 ; 0 uses
  %i.jf = load i8, ptr %i.ap, align 4
  %i.jg = zext i8 %i.jf to i32
  %i.jh = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jg, i32 noundef 22, i32 noundef 2) #30, !srcloc !60 ; 0 uses
  %i.ji = load i8, ptr %i.ap, align 4
  %i.jj = zext i8 %i.ji to i32
  %i.jk = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jj, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.jl = load i8, ptr %i.ap, align 4
  %i.jm = zext i8 %i.jl to i32
  %i.jn = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jm, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.jo = load i8, ptr %i.ap, align 4
  %i.jp = zext i8 %i.jo to i32
  %i.jq = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jp, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.jr = load i8, ptr %i.ap, align 4
  %i.js = zext i8 %i.jr to i32
  %i.jt = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.js, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ju = load i8, ptr %i.ap, align 4
  %i.jv = zext i8 %i.ju to i32
  %i.jw = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jv, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.jx = load i8, ptr %i.ap, align 4
  %i.jy = zext i8 %i.jx to i32
  %i.jz = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.jy, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ka = load i8, ptr %i.ap, align 4
  %i.kb = zext i8 %i.ka to i32
  %i.kc = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.kb, i32 noundef 22, i32 noundef 514) #30, !srcloc !60 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %i.kd = phi i32 [ 99, %bb.ak ], [ %i.kk, %bb.an ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 0, ptr %i.k, align 4, !annotation !11
  %i.ke = load i8, ptr %i.ap, align 4
  %i.kf = zext i8 %i.ke to i32
  %i.kg = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.kf, i32 noundef 22, ptr noundef nonnull %i.k) #30, !srcloc !59
  %.not6.i.i46.1.i = icmp eq i32 %i.kg, 0
  br i1 %.not6.i.i46.1.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kh = load i32, ptr %i.k, align 4
  %i.ki = and i32 %i.kh, 4096
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.kk = add nsw i32 %i.kd, -1
  %.not.i.i47.1.i = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i47.1.i, label %tg3_phy_reset_5703_4_5.exit.thread, label %bb.al

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.kl = load i8, ptr %i.ap, align 4
  %i.km = zext i8 %i.kl to i32
  %i.kn = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.km, i32 noundef 23, i32 noundef 16896) #30, !srcloc !60 ; 0 uses
  %i.ko = load i8, ptr %i.ap, align 4
  %i.kp = zext i8 %i.ko to i32
  %i.kq = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.kp, i32 noundef 22, i32 noundef 2) #30, !srcloc !60 ; 0 uses
  %i.kr = load i8, ptr %i.ap, align 4
  %i.ks = zext i8 %i.kr to i32
  %i.kt = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ks, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ku = load i8, ptr %i.ap, align 4
  %i.kv = zext i8 %i.ku to i32
  %i.kw = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.kv, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.kx = load i8, ptr %i.ap, align 4
  %i.ky = zext i8 %i.kx to i32
  %i.kz = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ky, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.la = load i8, ptr %i.ap, align 4
  %i.lb = zext i8 %i.la to i32
  %i.lc = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.lb, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ld = load i8, ptr %i.ap, align 4
  %i.le = zext i8 %i.ld to i32
  %i.lf = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.le, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.lg = load i8, ptr %i.ap, align 4
  %i.lh = zext i8 %i.lg to i32
  %i.li = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.lh, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.lj = load i8, ptr %i.ap, align 4
  %i.lk = zext i8 %i.lj to i32
  %i.ll = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.lk, i32 noundef 22, i32 noundef 514) #30, !srcloc !60 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %i.lm = phi i32 [ 99, %bb.ao ], [ %i.lt, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 0, ptr %i.k, align 4, !annotation !11
  %i.ln = load i8, ptr %i.ap, align 4
  %i.lo = zext i8 %i.ln to i32
  %i.lp = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.lo, i32 noundef 22, ptr noundef nonnull %i.k) #30, !srcloc !59
  %.not6.i.i46.2.i = icmp eq i32 %i.lp, 0
  br i1 %.not6.i.i46.2.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lq = load i32, ptr %i.k, align 4
  %i.lr = and i32 %i.lq, 4096
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.lt = add nsw i32 %i.lm, -1
  %.not.i.i47.2.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i47.2.i, label %tg3_phy_reset_5703_4_5.exit.thread, label %bb.ap

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.lu = load i8, ptr %i.ap, align 4
  %i.lv = zext i8 %i.lu to i32
  %i.lw = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.lv, i32 noundef 23, i32 noundef 25088) #30, !srcloc !60 ; 0 uses
  %i.lx = load i8, ptr %i.ap, align 4
  %i.ly = zext i8 %i.lx to i32
  %i.lz = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ly, i32 noundef 22, i32 noundef 2) #30, !srcloc !60 ; 0 uses
  %i.ma = load i8, ptr %i.ap, align 4
  %i.mb = zext i8 %i.ma to i32
  %i.mc = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mb, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.md = load i8, ptr %i.ap, align 4
  %i.me = zext i8 %i.md to i32
  %i.mf = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.me, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.mg = load i8, ptr %i.ap, align 4
  %i.mh = zext i8 %i.mg to i32
  %i.mi = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mh, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.mj = load i8, ptr %i.ap, align 4
  %i.mk = zext i8 %i.mj to i32
  %i.ml = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mk, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.mm = load i8, ptr %i.ap, align 4
  %i.mn = zext i8 %i.mm to i32
  %i.mo = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mn, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.mp = load i8, ptr %i.ap, align 4
  %i.mq = zext i8 %i.mp to i32
  %i.mr = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mq, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  %i.ms = load i8, ptr %i.ap, align 4
  %i.mt = zext i8 %i.ms to i32
  %i.mu = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.mt, i32 noundef 22, i32 noundef 514) #30, !srcloc !60 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %i.mv = phi i32 [ 99, %bb.as ], [ %i.nc, %bb.av ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 0, ptr %i.k, align 4, !annotation !11
  %i.mw = load i8, ptr %i.ap, align 4
  %i.mx = zext i8 %i.mw to i32
  %i.my = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.mx, i32 noundef 22, ptr noundef nonnull %i.k) #30, !srcloc !59
  %.not6.i.i46.3.i = icmp eq i32 %i.my, 0
  br i1 %.not6.i.i46.3.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.mz = load i32, ptr %i.k, align 4
  %i.na = and i32 %i.mz, 4096
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.nc = add nsw i32 %i.mv, -1
  %.not.i.i47.3.i = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i47.3.i, label %tg3_phy_reset_5703_4_5.exit.thread, label %bb.at

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.nd = load i8, ptr %i.ap, align 4
  %i.ne = zext i8 %i.nd to i32
  %i.nf = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ne, i32 noundef 23, i32 noundef 32773) #30, !srcloc !60
  %.not.i49.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i49.i, label %bb.ay, label %tg3_phydsp_write.exit51.i

10:                                               ; preds = %bb.ax, %tg3_phy_write_and_check_testpat.exit.thread.i
  %11 = phi i32 [ 99, %tg3_phy_write_and_check_testpat.exit.thread.i ], [ %i.ng, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 0, ptr %i.k, align 4, !annotation !11
  %12 = load i8, ptr %i.ap, align 4
  %13 = zext i8 %12 to i32
  %14 = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %13, i32 noundef 22, ptr noundef nonnull %i.k) #30, !srcloc !59
  %.not6.i.i46.i = icmp eq i32 %14, 0
  br i1 %.not6.i.i46.i, label %15, label %bb.ax

15:                                               ; preds = %10
  %16 = load i32, ptr %i.k, align 4
  %17 = and i32 %16, 4096
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %bb.ak, label %bb.ax

bb.ax:                                            ; preds = %15, %10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  %i.ng = add nsw i32 %11, -1
  %.not.i.i47.i = icmp eq i32 %11, 0
  br i1 %.not.i.i47.i, label %tg3_phy_reset_5703_4_5.exit.thread, label %10

bb.ay:                                            ; preds = %bb.aw
  %i.nh = load i8, ptr %i.ap, align 4
  %i.ni = zext i8 %i.nh to i32
  %i.nj = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ni, i32 noundef 21, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit51.i

tg3_phydsp_write.exit51.i:                        ; preds = %bb.ay, %bb.aw
  %i.nk = load i8, ptr %i.ap, align 4
  %i.nl = zext i8 %i.nk to i32
  %i.nm = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.nl, i32 noundef 23, i32 noundef 33280) #30, !srcloc !60 ; 0 uses
  %i.nn = load i8, ptr %i.ap, align 4
  %i.no = zext i8 %i.nn to i32
  %i.np = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.no, i32 noundef 22, i32 noundef 0) #30, !srcloc !60 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  %i.nq = load i8, ptr %i.ap, align 4
  %i.nr = zext i8 %i.nq to i32
  %i.ns = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.nr, i32 noundef 24, i32 noundef 7) #30, !srcloc !60
  %.not.i.i52.i = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i52.i, label %tg3_phy_auxctl_read.exit.i54.i, label %tg3_phy_toggle_auxctl_smdsp.exit57.i

tg3_phy_auxctl_read.exit.i54.i:                   ; preds = %tg3_phydsp_write.exit51.i
  store i32 0, ptr %i.j, align 4, !annotation !11
  %i.nt = load i8, ptr %i.ap, align 4
  %i.nu = zext i8 %i.nt to i32
  %i.nv = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.nu, i32 noundef 24, ptr noundef nonnull %i.j) #30, !srcloc !59
  %.not.i55.i = icmp eq i32 %i.nv, 0
  br i1 %.not.i55.i, label %bb.az, label %tg3_phy_toggle_auxctl_smdsp.exit57.i

bb.az:                                            ; preds = %tg3_phy_auxctl_read.exit.i54.i
  %i.nw = load i32, ptr %i.j, align 4
  %i.nx = and i32 %i.nw, -3073
  %i.ny = or disjoint i32 %i.nx, 1024
  %i.nz = load i8, ptr %i.ap, align 4
  %i.oa = zext i8 %i.nz to i32
  %i.ob = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.oa, i32 noundef 24, i32 noundef %i.ny) #30, !srcloc !60 ; 0 uses
  br label %tg3_phy_toggle_auxctl_smdsp.exit57.i

tg3_phy_toggle_auxctl_smdsp.exit57.i:             ; preds = %bb.az, %tg3_phy_auxctl_read.exit.i54.i, %tg3_phydsp_write.exit51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  %i.oc = load i32, ptr %i.u, align 4
  %i.od = load i8, ptr %i.ap, align 4
  %i.oe = zext i8 %i.od to i32
  %i.of = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.oe, i32 noundef 9, i32 noundef %i.oc) #30, !srcloc !60 ; 0 uses
  %i.og = load i8, ptr %i.ap, align 4
  %i.oh = zext i8 %i.og to i32
  %i.oi = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.oh, i32 noundef 16, ptr noundef nonnull %i.t) #30, !srcloc !59 ; 2 uses
  %.not40.i = icmp eq i32 %i.oi, 0
  br i1 %.not40.i, label %tg3_phy_reset_5703_4_5.exit, label %tg3_phy_reset_5703_4_5.exit.thread

tg3_phy_reset_5703_4_5.exit.thread:               ; preds = %tg3_phy_toggle_auxctl_smdsp.exit.i, %bb.ax, %bb.an, %bb.ar, %bb.av, %tg3_bmcr_reset.exit.thread.i, %tg3_phy_toggle_auxctl_smdsp.exit.thread.i, %tg3_phy_toggle_auxctl_smdsp.exit57.i
  %.027.i.ph = phi i32 [ -16, %bb.an ], [ -16, %tg3_bmcr_reset.exit.thread.i ], [ -16, %bb.ar ], [ -16, %bb.av ], [ %i.oi, %tg3_phy_toggle_auxctl_smdsp.exit57.i ], [ %.0.i.ph.i, %tg3_phy_toggle_auxctl_smdsp.exit.thread.i ], [ -16, %bb.ax ], [ %i.cs, %tg3_phy_toggle_auxctl_smdsp.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  br label %bb.dg

tg3_phy_reset_5703_4_5.exit:                      ; preds = %tg3_phy_toggle_auxctl_smdsp.exit57.i
  %i.oj = load i32, ptr %i.t, align 4
  %i.ok = and i32 %i.oj, -12289
  %i.ol = load i8, ptr %i.ap, align 4
  %i.om = zext i8 %i.ol to i32
  %i.on = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.om, i32 noundef 16, i32 noundef %i.ok) #30, !srcloc !60 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #28
  br label %bb.bz

bb.ba:                                            ; preds = %bb.g
  %.mask88 = and i32 %i.be, 91770624
  %.not87 = icmp eq i32 %.mask88, 91766784
  br i1 %.not87, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oo = getelementptr i8, ptr %0, i64 16
  %i.op = load ptr, ptr %i.oo, align 16
  %i.oq = tail call i32 %i.op(ptr noundef %0, i32 noundef 13824) #27 ; 4 uses
  %i.or = and i32 %i.oq, 65536
  %.not89 = icmp eq i32 %i.or, 0
  br i1 %.not89, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.os = getelementptr i8, ptr %0, i64 24
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = and i32 %i.oq, -65537
  tail call void %i.ot(ptr noundef %0, i32 noundef 13824, i32 noundef %i.ou) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.g, %bb.bb, %bb.bc, %bb.ba
  %.0 = phi i32 [ %i.oq, %bb.bc ], [ %i.oq, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i32 32768, ptr %i.i, align 4
  %i.ov = load i8, ptr %i.ap, align 4
  %i.ow = zext i8 %i.ov to i32
  %i.ox = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ow, i32 noundef 0, i32 noundef 32768) #30, !srcloc !60
  %.not.i111 = icmp eq i32 %i.ox, 0
  br i1 %.not.i111, label %.preheader.i, label %tg3_bmcr_reset.exit.thread

.preheader.i:                                     ; preds = %bb.bd, %bb.bg
  %i.oy = phi i32 [ %i.pf, %bb.bg ], [ 4999, %bb.bd ] ; 3 uses
  %i.oz = load i8, ptr %i.ap, align 4
  %i.pa = zext i8 %i.oz to i32
  %i.pb = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.pa, i32 noundef 0, ptr noundef nonnull %i.i) #30, !srcloc !59
  %.not8.i = icmp eq i32 %i.pb, 0
  br i1 %.not8.i, label %bb.be, label %tg3_bmcr_reset.exit.thread

bb.be:                                            ; preds = %.preheader.i
  %i.pc = load i32, ptr %i.i, align 4
  %i.pd = and i32 %i.pc, 32768
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @__const_udelay(i64 noundef 171800) #27
  %19 = icmp slt i32 %i.oy, 0
  br i1 %19, label %tg3_bmcr_reset.exit.thread, label %20

bb.bg:                                            ; preds = %bb.be
  tail call void @__const_udelay(i64 noundef 42950) #27
  %i.pf = add nsw i32 %i.oy, -1
  %.not7.i = icmp eq i32 %i.oy, 0
  br i1 %.not7.i, label %tg3_bmcr_reset.exit.thread, label %.preheader.i, !llvm.loop !61

tg3_bmcr_reset.exit.thread:                       ; preds = %bb.bg, %.preheader.i, %bb.bd, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  br label %bb.dg

20:                                               ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %21 = and i32 %.0, 65536
  %.not91 = icmp eq i32 %21, 0
  br i1 %.not91, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %20
  store i32 513, ptr %i.v, align 4
  %i.pg = load i8, ptr %i.ap, align 4
  %i.ph = zext i8 %i.pg to i32
  %i.pi = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.ph, i32 noundef 23, i32 noundef 3848) #30, !srcloc !60
  %.not.i112 = icmp eq i32 %i.pi, 0
  br i1 %.not.i112, label %bb.bi, label %tg3_phydsp_write.exit

bb.bi:                                            ; preds = %bb.bh
  %i.pj = load i8, ptr %i.ap, align 4
  %i.pk = zext i8 %i.pj to i32
  %i.pl = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.pk, i32 noundef 21, i32 noundef 513) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit

tg3_phydsp_write.exit:                            ; preds = %bb.bh, %bb.bi
  %i.pm = getelementptr i8, ptr %0, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8
  tail call void %i.pn(ptr noundef %0, i32 noundef 13824, i32 noundef %.0) #27
  br label %bb.bj

bb.bj:                                            ; preds = %tg3_phydsp_write.exit, %20
  %i.po = load i32, ptr %i.w, align 4
  %i.pp = lshr i32 %i.po, 8
  switch i32 %i.pp, label %_tg3_flag.exit [
    i32 358464, label %bb.bk
    i32 357904, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  %i.pq = getelementptr i8, ptr %0, i64 16
  %i.pr = load ptr, ptr %i.pq, align 16
  %i.ps = tail call i32 %i.pr(ptr noundef %0, i32 noundef 13836) #27 ; 3 uses
  store i32 %i.ps, ptr %i.v, align 4
  %i.pt = and i32 %i.ps, 2031616
  %i.pu = icmp eq i32 %i.pt, 1114112
  br i1 %i.pu, label %bb.bl, label %_tg3_flag.exit

bb.bl:                                            ; preds = %bb.bk
  %i.pv = and i32 %i.ps, -2031617                 ; 2 uses
  store i32 %i.pv, ptr %i.v, align 4
  tail call void @__const_udelay(i64 noundef 171800) #27
  tail call fastcc void @_tw32_flush(ptr noundef %0, i32 noundef 13836, i32 noundef %i.pv, i32 noundef 0) #30, !srcloc !204
  br label %_tg3_flag.exit

_tg3_flag.exit:                                   ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.pw = getelementptr i8, ptr %0, i64 5392
  %i.px = load volatile i64, ptr %i.pw, align 16
  %i.py = and i64 %i.px, 16384
  %.not92 = icmp eq i64 %i.py, 0
  br i1 %.not92, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_tg3_flag.exit
  %i.pz = getelementptr i8, ptr %0, i64 5612
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = and i32 %i.qa, 32
  %.not93 = icmp eq i32 %i.qb, 0
  br i1 %.not93, label %bb.bn, label %bb.dg

bb.bn:                                            ; preds = %bb.bm, %_tg3_flag.exit
  %i.qc = getelementptr i8, ptr %0, i64 5620
  %i.qd = load i32, ptr %i.qc, align 4            ; 6 uses
  %.not.i116 = icmp eq i32 %i.qd, 0
  br i1 %.not.i116, label %tg3_phy_apply_otp.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.qe = load i8, ptr %i.ap, align 4
  %i.qf = zext i8 %i.qe to i32
  %i.qg = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.qf, i32 noundef 24, i32 noundef 7) #30, !srcloc !60
  %.not.i.i.i117 = icmp eq i32 %i.qg, 0
  br i1 %.not.i.i.i117, label %tg3_phy_auxctl_read.exit.i.i119, label %tg3_phy_toggle_auxctl_smdsp.exit.thread.i118

tg3_phy_auxctl_read.exit.i.i119:                  ; preds = %bb.bo
  store i32 0, ptr %i.h, align 4, !annotation !11
  %i.qh = load i8, ptr %i.ap, align 4
  %i.qi = zext i8 %i.qh to i32
  %i.qj = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.qi, i32 noundef 24, ptr noundef nonnull %i.h) #30, !srcloc !59
  %.not.i.i120 = icmp eq i32 %i.qj, 0
  br i1 %.not.i.i120, label %tg3_phy_toggle_auxctl_smdsp.exit.i121, label %tg3_phy_toggle_auxctl_smdsp.exit.thread.i118

tg3_phy_toggle_auxctl_smdsp.exit.thread.i118:     ; preds = %tg3_phy_auxctl_read.exit.i.i119, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %tg3_phy_apply_otp.exit

tg3_phy_toggle_auxctl_smdsp.exit.i121:            ; preds = %tg3_phy_auxctl_read.exit.i.i119
  %i.qk = load i32, ptr %i.h, align 4
  %i.ql = or i32 %i.qk, 3072
  %i.qm = load i8, ptr %i.ap, align 4
  %i.qn = zext i8 %i.qm to i32
  %i.qo = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.qn, i32 noundef 24, i32 noundef %i.ql) #30, !srcloc !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %.not25.i = icmp eq i32 %i.qo, 0
  br i1 %.not25.i, label %bb.bp, label %tg3_phy_apply_otp.exit

bb.bp:                                            ; preds = %tg3_phy_toggle_auxctl_smdsp.exit.i121
  %i.qp = lshr i32 %i.qd, 1                       ; 2 uses
  %i.qq = load i8, ptr %i.ap, align 4
  %i.qr = zext i8 %i.qq to i32
  %i.qs = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.qr, i32 noundef 23, i32 noundef 1) #30, !srcloc !60
  %.not.i26.i = icmp eq i32 %i.qs, 0
  br i1 %.not.i26.i, label %bb.bq, label %tg3_phydsp_write.exit.i122

bb.bq:                                            ; preds = %bb.bp
  %i.qt = and i32 %i.qp, 112
  %i.qu = or disjoint i32 %i.qt, 7
  %i.qv = load i8, ptr %i.ap, align 4
  %i.qw = zext i8 %i.qv to i32
  %i.qx = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.qw, i32 noundef 21, i32 noundef %i.qu) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit.i122

tg3_phydsp_write.exit.i122:                       ; preds = %bb.bq, %bb.bp
  %i.qy = load i8, ptr %i.ap, align 4
  %i.qz = zext i8 %i.qy to i32
  %i.ra = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.qz, i32 noundef 23, i32 noundef 31) #30, !srcloc !60
  %.not.i28.i = icmp eq i32 %i.ra, 0
  br i1 %.not.i28.i, label %bb.br, label %tg3_phydsp_write.exit30.i

bb.br:                                            ; preds = %tg3_phydsp_write.exit.i122
  %i.rb = and i32 %i.qp, 896
  %i.rc = load i8, ptr %i.ap, align 4
  %i.rd = zext i8 %i.rc to i32
  %i.re = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rd, i32 noundef 21, i32 noundef %i.rb) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit30.i

tg3_phydsp_write.exit30.i:                        ; preds = %bb.br, %tg3_phydsp_write.exit.i122
  %i.rf = lshr i32 %i.qd, 11                      ; 2 uses
  %i.rg = load i8, ptr %i.ap, align 4
  %i.rh = zext i8 %i.rg to i32
  %i.ri = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rh, i32 noundef 23, i32 noundef 24607) #30, !srcloc !60
  %.not.i31.i = icmp eq i32 %i.ri, 0
  br i1 %.not.i31.i, label %bb.bs, label %tg3_phydsp_write.exit33.i

bb.bs:                                            ; preds = %tg3_phydsp_write.exit30.i
  %i.rj = and i32 %i.rf, 1
  %i.rk = or disjoint i32 %i.rj, 2
  %i.rl = load i8, ptr %i.ap, align 4
  %i.rm = zext i8 %i.rl to i32
  %i.rn = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rm, i32 noundef 21, i32 noundef %i.rk) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit33.i

tg3_phydsp_write.exit33.i:                        ; preds = %bb.bs, %tg3_phydsp_write.exit30.i
  %i.ro = load i8, ptr %i.ap, align 4
  %i.rp = zext i8 %i.ro to i32
  %i.rq = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rp, i32 noundef 23, i32 noundef 3957) #30, !srcloc !60
  %.not.i34.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i34.i, label %bb.bt, label %tg3_phydsp_write.exit36.i

bb.bt:                                            ; preds = %tg3_phydsp_write.exit33.i
  %i.rr = lshr i32 %i.qd, 24
  %i.rs = load i8, ptr %i.ap, align 4
  %i.rt = zext i8 %i.rs to i32
  %i.ru = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rt, i32 noundef 21, i32 noundef %i.rr) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit36.i

tg3_phydsp_write.exit36.i:                        ; preds = %bb.bt, %tg3_phydsp_write.exit33.i
  %i.rv = load i8, ptr %i.ap, align 4
  %i.rw = zext i8 %i.rv to i32
  %i.rx = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.rw, i32 noundef 23, i32 noundef 3990) #30, !srcloc !60
  %.not.i37.i = icmp eq i32 %i.rx, 0
  br i1 %.not.i37.i, label %bb.bu, label %tg3_phydsp_write.exit39.i

bb.bu:                                            ; preds = %tg3_phydsp_write.exit36.i
  %i.ry = lshr i32 %i.qd, 8
  %i.rz = and i32 %i.ry, 240
  %i.sa = load i8, ptr %i.ap, align 4
  %i.sb = zext i8 %i.sa to i32
  %i.sc = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.sb, i32 noundef 21, i32 noundef %i.rz) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit39.i

tg3_phydsp_write.exit39.i:                        ; preds = %bb.bu, %tg3_phydsp_write.exit36.i
  %i.sd = load i8, ptr %i.ap, align 4
  %i.se = zext i8 %i.sd to i32
  %i.sf = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.se, i32 noundef 23, i32 noundef 3991) #30, !srcloc !60
  %.not.i40.i = icmp eq i32 %i.sf, 0
  br i1 %.not.i40.i, label %bb.bv, label %tg3_phydsp_write.exit42.i

bb.bv:                                            ; preds = %tg3_phydsp_write.exit39.i
  %i.sg = and i32 %i.rf, 7168
  %i.sh = lshr i32 %i.qd, 16
  %i.si = and i32 %i.sh, 28
  %i.sj = or disjoint i32 %i.sg, %i.si
  %i.sk = load i8, ptr %i.ap, align 4
  %i.sl = zext i8 %i.sk to i32
  %i.sm = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.sl, i32 noundef 21, i32 noundef %i.sj) #30, !srcloc !60 ; 0 uses
  br label %tg3_phydsp_write.exit42.i

tg3_phydsp_write.exit42.i:                        ; preds = %bb.bv, %tg3_phydsp_write.exit39.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.sn = load i8, ptr %i.ap, align 4
  %i.so = zext i8 %i.sn to i32
  %i.sp = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.so, i32 noundef 24, i32 noundef 7) #30, !srcloc !60
  %.not.i.i43.i = icmp eq i32 %i.sp, 0
  br i1 %.not.i.i43.i, label %tg3_phy_auxctl_read.exit.i45.i, label %tg3_phy_toggle_auxctl_smdsp.exit48.i

tg3_phy_auxctl_read.exit.i45.i:                   ; preds = %tg3_phydsp_write.exit42.i
  store i32 0, ptr %i.g, align 4, !annotation !11
  %i.sq = load i8, ptr %i.ap, align 4
  %i.sr = zext i8 %i.sq to i32
  %i.ss = call fastcc range(i32 -16, 1) i32 @__tg3_readphy(ptr noundef %0, i32 noundef %i.sr, i32 noundef 24, ptr noundef nonnull %i.g) #30, !srcloc !59
  %.not.i46.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i46.i, label %bb.bw, label %tg3_phy_toggle_auxctl_smdsp.exit48.i

bb.bw:                                            ; preds = %tg3_phy_auxctl_read.exit.i45.i
  %i.st = load i32, ptr %i.g, align 4
  %i.su = and i32 %i.st, -3073
  %i.sv = or disjoint i32 %i.su, 1024
  %i.sw = load i8, ptr %i.ap, align 4
  %i.sx = zext i8 %i.sw to i32
  %i.sy = tail call fastcc range(i32 -16, 1) i32 @__tg3_writephy(ptr noundef %0, i32 noundef %i.sx, i32 noundef 24, i32 noundef %i.sv) #30, !srcloc !60 ; 0 uses
  br label %tg3_phy_toggle_auxctl_smdsp.exit48.i

tg3_phy_toggle_auxctl_smdsp.exit48.i:             ; preds = %bb.bw, %tg3_phy_auxctl_read.exit.i45.i, %tg3_phydsp_write.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %tg3_phy_apply_otp.exit

tg3_phy_apply_otp.exit:                           ; preds = %bb.bn, %tg3_phy_toggle_auxctl_smdsp.exit.thread.i118, %tg3_phy_toggle_auxctl_smdsp.exit.i121, %tg3_phy_toggle_auxctl_smdsp.exit48.i
  %i.sz = getelementptr i8, ptr %0, i64 5612
  %i.ta = load i32, ptr %i.sz, align 4
  %i.tb = and i32 %i.ta, 256
  %.not94 = icmp eq i32 %i.tb, 0
  br i1 %.not94, label %bb.by, label %bb.bx
end_hunk_0
