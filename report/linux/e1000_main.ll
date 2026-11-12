Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/e1000_main?download=true
inline.NumInlined: 775
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@e1000_configure:bb.a
  %i.p = trunc i64 %i.i to i16
  %i.q = getelementptr i8, ptr %i.j, i64 3136
  %i.r = load i16, ptr %i.q, align 8
  %i.s = icmp eq i16 %i.r, %i.p
  br i1 %i.s, label %e1000_vlan_rx_add_vid.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = tail call i64 @_find_next_bit(ptr noundef %i.k, i64 noundef 4096, i64 noundef 0) #17, !inline_history !17
  %i.u = and i64 %i.t, 61440
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @e1000_vlan_filter_on_off(ptr noundef %i.k, i1 noundef zeroext true) #18, !inline_history !17, !srcloc !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = trunc i64 %i.i to i32                    ; 2 uses
  %i.x = lshr i32 %i.w, 5
  %i.y = and i32 %i.x, 127                        ; 2 uses
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = getelementptr i8, ptr %i.j, i64 3920
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp ugt i32 %i.ab, 2
  %i.ad = select i1 %i.ac, i64 22016, i64 1536
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad
  %i.af = shl nuw nsw i32 %i.y, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah) #19, !inline_history !17, !srcloc !16
  %i.aj = and i32 %i.w, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = or i32 %i.ai, %i.ak
  tail call void @e1000_write_vfta(ptr noundef %i.l, i32 noundef %i.y, i32 noundef %i.al) #17, !inline_history !17
  %i.am = and i64 %i.i, 4095
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, i64 range(i64 0, 65536) %i.am) #19, !inline_history !17, !srcloc !19
  br label %e1000_vlan_rx_add_vid.exit.i

e1000_vlan_rx_add_vid.exit.i:                     ; preds = %bb.f, %bb.c
  %i.an = add nuw nsw i64 %i.i, 1
  %i.ao = and i64 %i.an, 65535
  %i.ap = tail call i64 @_find_next_bit(ptr noundef %0, i64 noundef 4096, i64 noundef range(i64 0, 65536) %i.ao) #17 ; 2 uses
  %i.aq = and i64 %i.ap, 61440
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %e1000_restore_vlan.exit, !llvm.loop !38

e1000_restore_vlan.exit:                          ; preds = %e1000_vlan_rx_add_vid.exit.i, %bb.a, %bb.b
  %i.as = getelementptr i8, ptr %0, i64 532
  %i.at = load i32, ptr %i.as, align 4
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %e1000_init_manageability.exit, label %bb.g

bb.g:                                             ; preds = %e1000_restore_vlan.exit
  %i.au = getelementptr i8, ptr %0, i64 1272      ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 22560
  %i.ax = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aw) #19, !srcloc !16
  %i.ay = and i32 %i.ax, -8193
  %i.az = load ptr, ptr %i.au, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 22560
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ay, ptr elementtype(i32) %i.ba) #19, !srcloc !15
  br label %e1000_init_manageability.exit

e1000_init_manageability.exit:                    ; preds = %e1000_restore_vlan.exit, %bb.g
  %i.bb = getelementptr i8, ptr %0, i64 1272      ; 13 uses
  %i.bc = getelementptr i8, ptr %0, i64 576       ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 20
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = shl i32 %i.bh, 4
  %i.bj = load ptr, ptr %i.bb, align 8
  %i.bk = getelementptr i8, ptr %0, i64 1296      ; 11 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ugt i32 %i.bl, 2
  %i.bn = select i1 %i.bm, i64 14344, i64 1064
  %i.bo = getelementptr i8, ptr %i.bj, i64 %i.bn
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bi, ptr elementtype(i32) %i.bo) #19, !srcloc !15
  %i.bp = lshr i64 %i.bf, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = load i32, ptr %i.bk, align 8
  %i.bt = icmp ugt i32 %i.bs, 2
  %i.bu = select i1 %i.bt, i64 14340, i64 1060
  %i.bv = getelementptr i8, ptr %i.br, i64 %i.bu
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bq, ptr elementtype(i32) %i.bv) #19, !srcloc !15
  %i.bw = trunc i64 %i.bf to i32
  %i.bx = load ptr, ptr %i.bb, align 8
  %i.by = load i32, ptr %i.bk, align 8
  %i.bz = icmp ugt i32 %i.by, 2
  %i.ca = select i1 %i.bz, i64 14336, i64 1056
  %i.cb = getelementptr i8, ptr %i.bx, i64 %i.ca
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bw, ptr elementtype(i32) %i.cb) #19, !srcloc !15
  %i.cc = load ptr, ptr %i.bb, align 8
  %i.cd = load i32, ptr %i.bk, align 8
  %i.ce = icmp ugt i32 %i.cd, 2
  %i.cf = select i1 %i.ce, i64 14360, i64 1080
  %i.cg = getelementptr i8, ptr %i.cc, i64 %i.cf
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.cg) #19, !srcloc !15
  %i.ch = load ptr, ptr %i.bb, align 8
  %i.ci = load i32, ptr %i.bk, align 8
  %i.cj = icmp ugt i32 %i.ci, 2
  %i.ck = select i1 %i.cj, i64 14352, i64 1072
  %i.cl = getelementptr i8, ptr %i.ch, i64 %i.ck
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.cl) #19, !srcloc !15
  %i.cm = load i32, ptr %i.bk, align 8
  %i.cn = icmp ugt i32 %i.cm, 2
  %i.co = select i1 %i.cn, i16 14352, i16 1072
  %i.cp = load ptr, ptr %i.bc, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 40
  store i16 %i.co, ptr %i.cq, align 8
  %i.cr = load i32, ptr %i.bk, align 8
  %i.cs = icmp ugt i32 %i.cr, 2
  %i.ct = select i1 %i.cs, i16 14360, i16 1080
  %i.cu = load ptr, ptr %i.bc, align 8
  %i.cv = getelementptr i8, ptr %i.cu, i64 42
  store i16 %i.ct, ptr %i.cv, align 2
  %i.cw = getelementptr i8, ptr %0, i64 1308
  %i.cx = load i32, ptr %i.cw, align 4
  %.off57.i = add i32 %i.cx, -1
  %switch58.i = icmp ult i32 %.off57.i, 2
  %spec.select.i = select i1 %switch58.i, i32 6299657, i32 6299656
  %i.cy = load i32, ptr %i.bk, align 8
  %.off.i = add i32 %i.cy, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %..055.i = select i1 %switch.i, i32 10487818, i32 %spec.select.i
  %i.cz = load ptr, ptr %i.bb, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 1040
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %..055.i, ptr elementtype(i32) %i.da) #19, !srcloc !15
  %i.db = getelementptr i8, ptr %0, i64 592       ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.bb, align 8
  %i.de = load i32, ptr %i.bk, align 8
  %i.df = icmp ugt i32 %i.de, 2
  %i.dg = select i1 %i.df, i64 14368, i64 1088
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.dg
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dc, ptr elementtype(i32) %i.dh) #19, !srcloc !15
  %i.di = load i32, ptr %i.bk, align 8
  %i.dj = icmp ugt i32 %i.di, 4
  br i1 %i.dj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %e1000_init_manageability.exit
  %i.dk = getelementptr i8, ptr %0, i64 596
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = load ptr, ptr %i.bb, align 8
  %i.dn = getelementptr i8, ptr %i.dm, i64 14380
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dl, ptr elementtype(i32) %i.dn) #19, !srcloc !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %e1000_init_manageability.exit
  %i.do = load ptr, ptr %i.bb, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 1024
  %i.dq = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dp) #19, !srcloc !16
  tail call void @e1000_config_collision_dist(ptr noundef %i.bb) #17
  %i.dr = getelementptr i8, ptr %0, i64 588       ; 2 uses
  %i.ds = load i32, ptr %i.db, align 8
  %.not.i26 = icmp eq i32 %i.ds, 0
  %spec.store.select.i = select i1 %.not.i26, i32 50331648, i32 -2097152000 ; 2 uses
  %i.dt = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.du = icmp ult i32 %i.dt, 3
  br i1 %i.du, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.dv = or disjoint i32 %spec.store.select.i, 268435456
  store i32 %i.dv, ptr %i.dr, align 4
  br label %e1000_configure_tx.exit

bb.j:                                             ; preds = %bb.i
  %i.dw = or disjoint i32 %spec.store.select.i, 134217728
  store i32 %i.dw, ptr %i.dr, align 4
  %i.dx = icmp eq i32 %i.dt, 4
  br i1 %i.dx, label %bb.k, label %e1000_configure_tx.exit

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr i8, ptr %0, i64 1348
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.l, label %e1000_configure_tx.exit

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr i8, ptr %0, i64 656
  store i8 1, ptr %i.eb, align 8
  br label %e1000_configure_tx.exit

e1000_configure_tx.exit:                          ; preds = %.thread.i, %bb.j, %bb.k, %bb.l
  %i.ec = and i32 %i.dq, -16781305
  %i.ed = or disjoint i32 %i.ec, 16777464
  %i.ee = load ptr, ptr %i.bb, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ed, ptr elementtype(i32) %i.ef) #19, !srcloc !15
  %i.eg = load ptr, ptr %i.bb, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 256
  %i.ei = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eh) #19, !srcloc !16
  %i.ej = and i32 %i.ei, -45093
  %i.ek = getelementptr i8, ptr %0, i64 1432
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = shl i32 %i.el, 12
  %i.en = getelementptr i8, ptr %0, i64 1543
  %i.eo = load i8, ptr %i.en, align 1, !range !21, !noundef !22
  %1 = shl nuw nsw i8 %i.eo, 2
  %masksel.i = zext nneg i8 %1 to i32
  %i.ep = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 56
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp ult i32 %i.er, 1501
  %masksel25.i = select i1 %i.es, i32 0, i32 32
  %i.et = or i32 %i.em, %i.ej
  %2 = or disjoint i32 %i.et, %masksel.i
  %.0.i = or disjoint i32 %2, %masksel25.i        ; 2 uses
  %.1.i = and i32 %.0.i, -33783809                ; 3 uses
  %3 = or disjoint i32 %.1.i, 32768               ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 520
  %i.ev = load i32, ptr %i.eu, align 8            ; 2 uses
  %i.ew = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ev)
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %.split.i, label %e1000_setup_rctl.exit

.split.i:                                         ; preds = %e1000_configure_tx.exit
  %i.ey = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ev, i1 true)
  switch i32 %i.ey, label %e1000_setup_rctl.exit [
    i32 14, label %bb.o
    i32 12, label %bb.m
    i32 13, label %bb.n
  ]

bb.m:                                             ; preds = %.split.i
  %i.ez = or i32 %.0.i, 33783808
  br label %e1000_setup_rctl.exit

bb.n:                                             ; preds = %.split.i
  %i.fa = or disjoint i32 %.1.i, 33718272
  br label %e1000_setup_rctl.exit

bb.o:                                             ; preds = %.split.i
  %i.fb = or disjoint i32 %.1.i, 33652736
  br label %e1000_setup_rctl.exit

e1000_setup_rctl.exit:                            ; preds = %e1000_configure_tx.exit, %.split.i, %bb.m, %bb.n, %bb.o
  %.2.i = phi i32 [ %i.fa, %bb.n ], [ %i.fb, %bb.o ], [ %i.ez, %bb.m ], [ %3, %e1000_configure_tx.exit ], [ %3, %.split.i ] ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ep, i64 184
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = and i64 %i.fd, 17592186044416
  %.not.i27 = icmp eq i64 %i.fe, 0
  %i.ff = and i32 %.2.i, -13402117
  %i.fg = or disjoint i32 %i.ff, 8421380
  %.3.i = select i1 %.not.i27, i32 %.2.i, i32 %i.fg
  %i.fh = load ptr, ptr %i.bb, align 8
  %i.fi = getelementptr i8, ptr %i.fh, i64 256
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.3.i, ptr elementtype(i32) %i.fi) #19, !srcloc !15
  tail call fastcc void @e1000_configure_rx(ptr noundef %0) #18, !srcloc !42
  %i.fj = getelementptr i8, ptr %0, i64 1204      ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %e1000_setup_rctl.exit
  %i.fm = getelementptr i8, ptr %0, i64 680
  %i.fn = getelementptr i8, ptr %0, i64 672
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8
  %i.fp = getelementptr [56 x i8], ptr %i.fo, i64 %indvars.iv ; 4 uses
  %i.fq = load ptr, ptr %i.fn, align 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 28
  %i.fs = load volatile i32, ptr %i.fr, align 4   ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !43
  %i.ft = getelementptr i8, ptr %i.fp, i64 24
  %i.fu = load volatile i32, ptr %i.ft, align 8   ; 2 uses
  %i.fv = icmp ugt i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr i8, ptr %i.fp, i64 20
  %i.fx = load i32, ptr %i.fw, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fy = phi i32 [ %i.fx, %bb.q ], [ 0, %bb.p ]
  %i.fz = xor i32 %i.fu, -1
  %i.ga = add i32 %i.fs, %i.fz
  %i.gb = add i32 %i.ga, %i.fy
  tail call void %i.fq(ptr noundef %0, ptr noundef %i.fp, i32 noundef %i.gb) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gc = load i32, ptr %i.fj, align 4
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp slt i64 %indvars.iv.next, %i.gd
  br i1 %i.ge, label %bb.p, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.r, %e1000_setup_rctl.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @e1000_power_up_phy(ptr noundef %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i16 0, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 1308
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1272       ; 2 uses
  %i.f = call i32 @e1000_read_phy_reg(ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.g = load i16, ptr %i.a, align 2
  %i.h = and i16 %i.g, -2049                      ; 2 uses
  store i16 %i.h, ptr %i.a, align 2
  %i.i = call i32 @e1000_write_phy_reg(ptr noundef %i.e, i32 noundef 0, i16 noundef zeroext %i.h) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @e1000_down(ptr noundef %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1272       ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 1256
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 256
  %i.f = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #19, !srcloc !16
  %i.g = and i32 %i.f, -3
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 256
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.g, ptr elementtype(i32) %i.i) #19, !srcloc !15
  %i.j = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !46
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, i32 512, ptr elementtype(i32) @__preempt_count) #19, !srcloc !47
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !48
  %i.k = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #21, !srcloc !49
  %i.l = getelementptr i8, ptr %i.c, i64 1196     ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.l) #17
  %i.m = getelementptr i8, ptr %i.c, i64 1176     ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %netif_tx_disable.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr [320 x i8], ptr %.val.i, i64 %indvars.iv.i ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 256      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.q) #17
  %i.r = getelementptr i8, ptr %i.p, i64 260      ; 2 uses
  store volatile i32 %i.k, ptr %i.r, align 4
  %i.s = load volatile i64, ptr @jiffies, align 64
  %i.t = getelementptr i8, ptr %i.p, i64 264
  store volatile i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.p, i64 272      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.u, i32 1, ptr elementtype(i8) %i.u) #19, !srcloc !23
  store volatile i32 -1, ptr %i.r, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i.q) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.m, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.b, label %netif_tx_disable.exit, !llvm.loop !44

netif_tx_disable.exit:                            ; preds = %bb.b, %bb.a
  tail call void @_raw_spin_unlock(ptr noundef %i.l) #17
  tail call void @__local_bh_enable_ip(i64 noundef %i.j, i32 noundef 512) #17
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 1024
  %i.aa = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.z) #19, !srcloc !16
  %i.ab = and i32 %i.aa, -3
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 1024
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ab, ptr elementtype(i32) %i.ad) #19, !srcloc !15
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.af) #19, !srcloc !16 ; 0 uses
  tail call void @msleep(i32 noundef 10) #17
  tail call void @netif_carrier_off(ptr noundef %i.c) #17
  tail call void @netif_queue_set_napi(ptr noundef %i.c, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  tail call void @netif_queue_set_napi(ptr noundef %i.c, i32 noundef 0, i32 noundef 1, ptr noundef null) #17
  %i.ah = getelementptr i8, ptr %0, i64 688
  tail call void @napi_disable(ptr noundef %i.ah) #17
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 216
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -1, ptr elementtype(i32) %i.aj) #19, !srcloc !15
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.al) #19, !srcloc !16 ; 0 uses
  %i.an = getelementptr i8, ptr %0, i64 1264
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 964
  %i.aq = load i32, ptr %i.ap, align 4
  tail call void @synchronize_irq(i32 noundef %i.aq) #17
  %i.ar = getelementptr i8, ptr %0, i64 2272      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ar, i32 4, ptr elementtype(i8) %i.ar) #19, !srcloc !23
  %i.as = getelementptr i8, ptr %0, i64 2328
  %i.at = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i.as) #17 ; 0 uses
  %i.au = getelementptr i8, ptr %0, i64 2504
  %i.av = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i.au) #17 ; 0 uses
  %i.aw = getelementptr i8, ptr %0, i64 2416
  %i.ax = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i.aw) #17 ; 0 uses
  %i.ay = getelementptr i8, ptr %0, i64 536
  store i16 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %0, i64 538
  store i16 0, ptr %i.az, align 2
  tail call void @e1000_reset(ptr noundef %0) #18
  %i.ba = getelementptr i8, ptr %0, i64 1200      ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i26, label %e1000_clean_all_tx_rings.exit

.lr.ph.i26:                                       ; preds = %netif_tx_disable.exit
  %i.bd = getelementptr i8, ptr %0, i64 576
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i28, %bb.c ] ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr [48 x i8], ptr %i.be, i64 %indvars.iv.i27
  tail call fastcc void @e1000_clean_tx_ring(ptr noundef readonly %0, ptr noundef %i.bf) #18, !srcloc !50
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %i.bg = load i32, ptr %i.ba, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i28, %i.bh
  br i1 %i.bi, label %bb.c, label %e1000_clean_all_tx_rings.exit, !llvm.loop !45
end_hunk_0
begin_hunk_1_@e1000_regdump:bb.a
  %i.cy = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx) #19, !srcloc !16
  %i.cz = load ptr, ptr %i.a, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %i.db = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.da) #19, !srcloc !16
  %i.dc = load ptr, ptr %i.a, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 8200
  %i.de = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dd) #19, !srcloc !16
  %i.df = load ptr, ptr %i.a, align 8
  %i.dg = load i32, ptr %i.c, align 8
  %i.dh = icmp ugt i32 %i.dg, 2
  %i.di = select i1 %i.dh, i64 10240, i64 272
  %i.dj = getelementptr i8, ptr %i.df, i64 %i.di
  %i.dk = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dj) #19, !srcloc !16
  %i.dl = load ptr, ptr %i.a, align 8
  %i.dm = load i32, ptr %i.c, align 8
  %i.dn = icmp ugt i32 %i.dm, 2
  %i.do = select i1 %i.dn, i64 10244, i64 276
  %i.dp = getelementptr i8, ptr %i.dl, i64 %i.do
  %i.dq = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dp) #19, !srcloc !16
  %i.dr = load ptr, ptr %i.a, align 8
  %i.ds = load i32, ptr %i.c, align 8
  %i.dt = icmp ugt i32 %i.ds, 2
  %i.du = select i1 %i.dt, i64 13328, i64 32784
  %i.dv = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dw = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dv) #19, !srcloc !16
  %i.dx = load ptr, ptr %i.a, align 8
  %i.dy = load i32, ptr %i.c, align 8
  %i.dz = icmp ugt i32 %i.dy, 2
  %i.ea = select i1 %i.dz, i64 13336, i64 32792
  %i.eb = getelementptr i8, ptr %i.dx, i64 %i.ea
  %i.ec = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eb) #19, !srcloc !16
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = getelementptr i8, ptr %i.ed, i64 13344
  %i.ef = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ee) #19, !srcloc !16
  %i.eg = load ptr, ptr %i.a, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 13352
  %i.ei = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eh) #19, !srcloc !16
  %i.ej = load ptr, ptr %i.a, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 13360
  %i.el = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ek) #19, !srcloc !16
  %i.em = load ptr, ptr %i.a, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 9232
  %i.eo = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.en) #19, !srcloc !16
  %i.ep = load ptr, ptr %i.a, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 9240
  %i.er = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eq) #19, !srcloc !16
  %i.es = load ptr, ptr %i.a, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 9248
  %i.eu = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.et) #19, !srcloc !16
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 9256
  %i.ex = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ew) #19, !srcloc !16
  %i.ey = load ptr, ptr %i.a, align 8
  %i.ez = getelementptr i8, ptr %i.ey, i64 9264
  %i.fa = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ez) #19, !srcloc !16
  %i.fb = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.92) #16 ; 0 uses
  %i.fc = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.54, i32 noundef %i.d) #16 ; 0 uses
  %i.fd = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.55, i32 noundef %i.g) #16 ; 0 uses
  %i.fe = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.56, i32 noundef %i.j) #16 ; 0 uses
  %i.ff = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.57, i32 noundef %i.p) #16 ; 0 uses
  %i.fg = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.58, i32 noundef %i.v) #16 ; 0 uses
  %i.fh = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.59, i32 noundef %i.ab) #16 ; 0 uses
  %i.fi = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.60, i32 noundef %i.ah) #16 ; 0 uses
  %i.fj = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.61, i32 noundef %i.ak) #16 ; 0 uses
  %i.fk = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.62, i32 noundef %i.aq) #16 ; 0 uses
  %i.fl = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.63, i32 noundef %i.aw) #16 ; 0 uses
  %i.fm = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.64, i32 noundef %i.bc) #16 ; 0 uses
  %i.fn = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.65, i32 noundef %i.bi) #16 ; 0 uses
  %i.fo = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.66, i32 noundef %i.bo) #16 ; 0 uses
  %i.fp = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.67, i32 noundef %i.bu) #16 ; 0 uses
  %i.fq = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.68, i32 noundef %i.bx) #16 ; 0 uses
  %i.fr = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.69, i32 noundef %i.ca) #16 ; 0 uses
  %i.fs = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.70, i32 noundef %i.cd) #16 ; 0 uses
  %i.ft = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.71, i32 noundef %i.cg) #16 ; 0 uses
  %i.fu = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.72, i32 noundef %i.cj) #16 ; 0 uses
  %i.fv = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.73, i32 noundef %i.cm) #16 ; 0 uses
  %i.fw = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.74, i32 noundef %i.cp) #16 ; 0 uses
  %i.fx = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.75, i32 noundef %i.cs) #16 ; 0 uses
  %i.fy = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.76, i32 noundef %i.cv) #16 ; 0 uses
  %i.fz = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.77, i32 noundef %i.cy) #16 ; 0 uses
  %i.ga = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.78, i32 noundef %i.db) #16 ; 0 uses
  %i.gb = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.79, i32 noundef %i.de) #16 ; 0 uses
  %i.gc = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.80, i32 noundef %i.dk) #16 ; 0 uses
  %i.gd = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.81, i32 noundef %i.dq) #16 ; 0 uses
  %i.ge = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.82, i32 noundef %i.dw) #16 ; 0 uses
  %i.gf = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.83, i32 noundef %i.ec) #16 ; 0 uses
  %i.gg = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.84, i32 noundef %i.ef) #16 ; 0 uses
  %i.gh = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.85, i32 noundef %i.ei) #16 ; 0 uses
  %i.gi = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.86, i32 noundef %i.el) #16 ; 0 uses
  %i.gj = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.87, i32 noundef %i.eo) #16 ; 0 uses
  %i.gk = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.88, i32 noundef %i.er) #16 ; 0 uses
  %i.gl = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.89, i32 noundef %i.eu) #16 ; 0 uses
  %i.gm = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.90, i32 noundef %i.ex) #16 ; 0 uses
  %i.gn = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.93, ptr noundef @.str.91, i32 noundef %i.fa) #16 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_get_speed_and_duplex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @e1000_update_adaptive(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @e1000_phy_setup_autoneg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__e1000_shutdown(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #4 align 16 {
netif_running.exit:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val86 = load ptr, ptr %i.a, align 8           ; 17 uses
  %i.b = getelementptr i8, ptr %.val86, i64 2624
  %i.c = getelementptr i8, ptr %.val86, i64 3896  ; 14 uses
  %i.d = getelementptr i8, ptr %.val86, i64 3148
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  tail call void @netif_device_detach(ptr noundef %.val86) #17
  %i.f = getelementptr i8, ptr %.val86, i64 168   ; 2 uses
  %i.g = load volatile i64, ptr %i.f, align 8
  %.in.i = trunc i64 %i.g to i1
  br i1 %.in.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %netif_running.exit
  %i.h = getelementptr i8, ptr %.val86, i64 4896  ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.b, %.preheader
  %.0 = phi i32 [ %i.k, %bb.b ], [ 50, %.preheader ] ; 2 uses
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 2
  %.not92 = icmp eq i64 %i.j, 0
  %.not = icmp eq i32 %.0, 0
  %or.cond81 = select i1 %.not92, i1 true, i1 %.not
  br i1 %or.cond81, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.0, -1
  tail call void @usleep_range_state(i64 noundef 10000, i64 noundef 20000, i32 noundef 2) #17
  br label %bb.a, !llvm.loop !135

.critedge:                                        ; preds = %bb.a
  %i.l = load volatile i64, ptr %i.h, align 8
  %i.m = and i64 %i.l, 2
  %.not94 = icmp eq i64 %i.m, 0
  br i1 %.not94, label %bb.d, label %bb.c, !prof !33

bb.c:                                             ; preds = %.critedge
  tail call void asm sideeffect "1147: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1147b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1147) #19, !srcloc !136
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 5083, i32 2305, i64 16) #19, !srcloc !137
  tail call void asm sideeffect "1148: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1148b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1148) #19, !srcloc !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  tail call void @rtnl_lock() #17
  tail call void @e1000_down(ptr noundef %i.b) #18
  tail call void @rtnl_unlock() #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %netif_running.exit
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr i8, ptr %.val86, i64 3920
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p) #19, !srcloc !16
  %i.r = and i32 %i.q, 2
  %.not77 = icmp eq i32 %i.r, 0
  %i.s = and i32 %i.e, -2
  %spec.select = select i1 %.not77, i32 %i.e, i32 %i.s ; 3 uses
  %i.t = icmp ne i32 %spec.select, 0              ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.u, i64 256
  %i.w = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v) #19, !srcloc !16
  %i.x = and i32 %i.w, -45093
  %i.y = getelementptr i8, ptr %.val86, i64 4056
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = shl i32 %i.z, 12
  %i.ab = getelementptr i8, ptr %.val86, i64 4167
  %i.ac = load i8, ptr %i.ab, align 1, !range !21, !noundef !22
  %2 = shl nuw nsw i8 %i.ac, 2
  %masksel.i = zext nneg i8 %2 to i32
  %i.ad = getelementptr i8, ptr %.val86, i64 3880
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 56
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp ult i32 %i.ag, 1501
  %masksel25.i = select i1 %i.ah, i32 0, i32 32
  %i.ai = or i32 %i.aa, %i.x
  %3 = or disjoint i32 %i.ai, %masksel.i
  %.0.i = or disjoint i32 %3, %masksel25.i        ; 2 uses
  %.1.i = and i32 %.0.i, -33783809                ; 3 uses
  %4 = or disjoint i32 %.1.i, 32768               ; 2 uses
  %i.aj = getelementptr i8, ptr %.val86, i64 3144
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ak)
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.split.i, label %e1000_setup_rctl.exit

.split.i:                                         ; preds = %bb.f
  %i.an = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ak, i1 true)
  switch i32 %i.an, label %e1000_setup_rctl.exit [
    i32 14, label %bb.i
    i32 12, label %bb.g
    i32 13, label %bb.h
  ]

bb.g:                                             ; preds = %.split.i
  %i.ao = or i32 %.0.i, 33783808
  br label %e1000_setup_rctl.exit

bb.h:                                             ; preds = %.split.i
  %i.ap = or disjoint i32 %.1.i, 33718272
  br label %e1000_setup_rctl.exit

bb.i:                                             ; preds = %.split.i
  %i.aq = or disjoint i32 %.1.i, 33652736
  br label %e1000_setup_rctl.exit

e1000_setup_rctl.exit:                            ; preds = %bb.f, %.split.i, %bb.g, %bb.h, %bb.i
  %.2.i = phi i32 [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ %i.ao, %bb.g ], [ %4, %bb.f ], [ %4, %.split.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 184
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, 17592186044416
  %.not.i = icmp eq i64 %i.at, 0
  %i.au = and i32 %.2.i, -13402117
  %i.av = or disjoint i32 %i.au, 8421380
  %.3.i = select i1 %.not.i, i32 %.2.i, i32 %i.av
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 256
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.3.i, ptr elementtype(i32) %i.ax) #19, !srcloc !15
  tail call void @e1000_set_rx_mode(ptr noundef %.val86) #18, !srcloc !139
  %i.ay = load ptr, ptr %i.c, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 256
  %i.ba = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.az) #19, !srcloc !16
  %i.bb = shl i32 %spec.select, 1
  %i.bc = and i32 %i.bb, 16
  %spec.select84 = or i32 %i.bc, %i.ba
  %i.bd = or i32 %spec.select84, 2
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 256
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bd, ptr elementtype(i32) %i.bf) #19, !srcloc !15
  %i.bg = load i32, ptr %i.o, align 8
  %i.bh = icmp ugt i32 %i.bg, 4
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %e1000_setup_rctl.exit
  %i.bi = load ptr, ptr %i.c, align 8
  %i.bj = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bi) #19, !srcloc !16
  %i.bk = or i32 %i.bj, 3145728
  %i.bl = load ptr, ptr %i.c, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bk, ptr elementtype(i32) %i.bl) #19, !srcloc !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %e1000_setup_rctl.exit
  %i.bm = getelementptr i8, ptr %.val86, i64 3932
  %i.bn = load i32, ptr %i.bm, align 4
  %.off = add i32 %i.bn, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.c, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bp) #19, !srcloc !16
  %i.br = or i32 %i.bq, 128
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.br, ptr elementtype(i32) %i.bt) #19, !srcloc !15
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bu = load ptr, ptr %i.c, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 22528
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 2, ptr elementtype(i32) %i.bv) #19, !srcloc !15
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 22536
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %spec.select, ptr elementtype(i32) %i.bx) #19, !srcloc !15
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.by = getelementptr i8, ptr %i.u, i64 22528
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.by) #19, !srcloc !15
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 22536
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ca) #19, !srcloc !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cb = getelementptr i8, ptr %.val86, i64 3156 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %.not.i87 = icmp eq i32 %i.cc, 0
  br i1 %.not.i87, label %e1000_release_manageability.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.c, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 22560
  %i.cf = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ce) #19, !srcloc !16
  %i.cg = or i32 %i.cf, 8192
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 22560
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cg, ptr elementtype(i32) %i.ci) #19, !srcloc !15
  br label %e1000_release_manageability.exit

e1000_release_manageability.exit:                 ; preds = %bb.o, %bb.p
  %i.cj = zext i1 %i.t to i8                      ; 2 uses
  store i8 %i.cj, ptr %1, align 1
  %i.ck = load i32, ptr %i.cb, align 4
  %.not79 = icmp eq i32 %i.ck, 0
  %spec.store.select = select i1 %.not79, i8 %i.cj, i8 1
  store i8 %spec.store.select, ptr %1, align 1
  %i.cl = load volatile i64, ptr %i.f, align 8
  %.in.i90 = trunc i64 %i.cl to i1
  br i1 %.in.i90, label %bb.q, label %bb.r

bb.q:                                             ; preds = %e1000_release_manageability.exit
  %i.cm = getelementptr i8, ptr %.val86, i64 3880
  %.val = load ptr, ptr %i.cm, align 8
  %i.cn = getelementptr i8, ptr %.val86, i64 3888
  %.val85 = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %.val85, i64 964
  %.val85.val = load i32, ptr %i.co, align 4
  %i.cp = tail call ptr @free_irq(i32 noundef %.val85.val, ptr noundef %.val) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %e1000_release_manageability.exit
  %i.cq = getelementptr i8, ptr %.val86, i64 4896 ; 2 uses
  %i.cr = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cq, i64 3, ptr elementtype(i64) %i.cq) #19, !srcloc !25 ; 2 uses
  %i.cs = icmp ult i8 %i.cr, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = trunc nuw i8 %i.cr to i1
  br i1 %i.ct, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @pci_disable_device(ptr noundef %0) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 3, 5) i32 @e1000_io_error_detected(ptr noundef %0, i32 noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 2624
  tail call void @rtnl_lock() #17
  tail call void @netif_device_detach(ptr noundef %.val) #17
  %i.c = icmp eq i32 %1, 3
  br i1 %i.c, label %bb.e, label %netif_running.exit

netif_running.exit:                               ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 168
  %i.e = load volatile i64, ptr %i.d, align 8
  %.in.i = trunc i64 %i.e to i1
  br i1 %.in.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %netif_running.exit
  tail call void @e1000_down(ptr noundef %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %netif_running.exit
  %i.f = getelementptr i8, ptr %.val, i64 4896    ; 2 uses
  %i.g = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, i64 3, ptr elementtype(i64) %i.f) #19, !srcloc !25 ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pci_disable_device(ptr noundef %0) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 4, %bb.a ], [ 3, %bb.d ], [ 3, %bb.c ]
  tail call void @rtnl_unlock() #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 4, 6) i32 @e1000_io_slot_reset(ptr noundef %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 2624
  %i.c = getelementptr i8, ptr %.val, i64 3896
  %i.d = getelementptr i8, ptr %.val, i64 4912
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @pci_enable_device(ptr noundef %0) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @pci_enable_device_mem(ptr noundef %0) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.014 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %.not15 = icmp eq i32 %.014, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.120) #16 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.val, i64 4896    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.i, i32 -9, ptr elementtype(i8) %i.i) #19, !srcloc !14
end_hunk_1
