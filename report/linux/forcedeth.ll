Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/forcedeth?download=true
inline.NumInlined: 1048
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nv_tx_done_optimized:bb.a
  %i.ay = add nsw i32 %.076, 1                    ; 3 uses
  %i.az = load i32, ptr %i.j, align 8
  %.not65 = icmp eq i32 %i.az, 0
  br i1 %.not65, label %nv_tx_flip_ownership.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr %i.k, align 4
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.k, align 4
  %i.bc = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i72 = icmp eq ptr %i.bc, null
  br i1 %.not.i72, label %nv_tx_flip_ownership.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 12     ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, -2147483648
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = load i32, ptr %i.k, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.k, align 4
  %i.bk = load ptr, ptr %i.l, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load ptr, ptr %i.m, align 8
  %i.bo = icmp eq ptr %i.bm, %i.bn
  %spec.store.select.i = select i1 %i.bo, ptr null, ptr %i.bm
  store ptr %spec.store.select.i, ptr %i.l, align 8
  %i.bp = load i32, ptr %i.n, align 4
  %i.bq = or i32 %i.bp, 1
  %.val.i = load ptr, ptr %i.h, align 8
  %i.br = getelementptr i8, ptr %.val.i, i64 324
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bq, ptr elementtype(i32) %i.br) #17, !srcloc !14
  br label %nv_tx_flip_ownership.exit

nv_tx_flip_ownership.exit:                        ; preds = %bb.m, %bb.l, %bb.k, %nv_unmap_txskb.exit
  %.156 = phi i32 [ %.05575, %nv_unmap_txskb.exit ], [ %i.aw, %bb.k ], [ %i.aw, %bb.l ], [ %i.aw, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %.076, %nv_unmap_txskb.exit ], [ %i.ay, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16     ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8
  %i.bu = load ptr, ptr %i.o, align 8
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.o, !prof !19

bb.n:                                             ; preds = %nv_tx_flip_ownership.exit
  %i.bw = load ptr, ptr %i.p, align 8             ; 2 uses
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %nv_tx_flip_ownership.exit
  %i.bx = phi ptr [ %i.bw, %bb.n ], [ %i.bt, %nv_tx_flip_ownership.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  store ptr %i.bz, ptr %i.e, align 8
  %i.ca = load ptr, ptr %i.q, align 8
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.q, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.r, align 8
  store ptr %i.cc, ptr %i.e, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cd = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.bx, %i.cd
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !106

.critedge:                                        ; preds = %bb.q, %bb.b
  %.055.lcssa = phi i32 [ %.05575, %bb.b ], [ %.156, %bb.q ] ; 2 uses
  %.0.lcssa = phi i32 [ %.076, %bb.b ], [ %.1, %bb.q ] ; 4 uses
  %i.ce = getelementptr i8, ptr %0, i64 2632
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %.val70 = load ptr, ptr %i.cg, align 8          ; 4 uses
  %.not.i.i = icmp eq i32 %.055.lcssa, 0
  br i1 %.not.i.i, label %netdev_completed_queue.exit, label %bb.r, !prof !25

bb.r:                                             ; preds = %.critedge
  %i.ch = getelementptr i8, ptr %.val70, i64 128  ; 2 uses
  tail call void @dql_completed(ptr noundef %i.ch, i32 noundef %.055.lcssa) #16
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !26
  %i.ci = getelementptr i8, ptr %.val70, i64 132
  %i.cj = load volatile i32, ptr %i.ci, align 4
  %i.ck = load volatile i32, ptr %i.ch, align 64
  %i.cl = sub i32 %i.cj, %i.ck
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %netdev_completed_queue.exit, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %.val70, i64 272  ; 2 uses
  %i.co = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cn, i64 1, ptr elementtype(i64) %i.cn) #17, !srcloc !27 ; 2 uses
  %i.cp = icmp ult i8 %i.co, 2
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = trunc nuw i8 %i.co to i1
  br i1 %i.cq, label %bb.t, label %netdev_completed_queue.exit

bb.t:                                             ; preds = %bb.s
  tail call void @netif_schedule_queue(ptr noundef %.val70) #16
  br label %netdev_completed_queue.exit

netdev_completed_queue.exit:                      ; preds = %bb.a, %.critedge, %bb.r, %bb.s, %bb.t
  %.0.lcssa89 = phi i32 [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %.critedge ], [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.s ], [ 0, %bb.a ]
  %i.cr = getelementptr i8, ptr %0, i64 3880      ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.u, label %.critedge69

bb.u:                                             ; preds = %netdev_completed_queue.exit
  %i.cu = load ptr, ptr %i.a, align 8
  %.not73 = icmp eq ptr %i.cu, %i.b
  br i1 %.not73, label %.critedge69, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cr, align 8
  %i.cv = getelementptr i8, ptr %0, i64 24
  %.val71 = load ptr, ptr %i.cv, align 8
  tail call void @netif_tx_wake_queue(ptr noundef %.val71) #16
  br label %.critedge69

.critedge69:                                      ; preds = %netdev_completed_queue.exit, %bb.v, %bb.u
  ret i32 %.0.lcssa89
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nv_gear_backoff_reseed(ptr %.3552.val) unnamed_addr #2 align 16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !annotation !12
  call void @get_random_bytes(ptr noundef nonnull %i.a, i64 noundef 4) #16
  %i.e = load i32, ptr %i.a, align 4
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %spec.store.select = select i1 %i.g, i32 2748, i32 %i.f
  store i32 %spec.store.select, ptr %i.a, align 4
  call void @get_random_bytes(ptr noundef nonnull %i.b, i64 noundef 4) #16
  %i.h = load i32, ptr %i.b, align 4
  %i.i = and i32 %i.h, 4095                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %spec.store.select2 = select i1 %i.j, i32 2748, i32 %i.i ; 4 uses
  store i32 %spec.store.select2, ptr %i.b, align 4
  %i.k = lshr i32 %spec.store.select2, 8
  %i.l = and i32 %spec.store.select2, 240
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = shl nuw nsw i32 %spec.store.select2, 8
  %i.o = and i32 %i.n, 3840
  %i.p = or disjoint i32 %i.m, %i.o
  call void @get_random_bytes(ptr noundef nonnull %i.c, i64 noundef 4) #16
  %i.q = load i32, ptr %i.c, align 4
  %i.r = and i32 %i.q, 4095                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %spec.store.select1 = select i1 %i.s, i32 2748, i32 %i.r ; 4 uses
  store i32 %spec.store.select1, ptr %i.c, align 4
  %i.t = lshr i32 %spec.store.select1, 8
  %i.u = and i32 %spec.store.select1, 240
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = shl nuw nsw i32 %spec.store.select1, 8
  %i.x = and i32 %i.w, 3840
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = xor i32 %i.p, %i.z
  %i.ab = shl i32 %i.aa, 12
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = xor i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = or i32 %i.ad, %i.ab                     ; 2 uses
  %i.af = and i32 %i.ad, 1023
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = or disjoint i32 %i.ae, 8
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.ae ; 3 uses
  %i.ai = and i32 %spec.select, 4190208
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = or disjoint i32 %spec.select, 32768
  %.1 = select i1 %i.aj, i32 %i.ak, i32 %spec.select ; 2 uses
  %i.al = and i32 %.1, 1023
  %i.am = lshr i32 %.1, 12
  %i.an = or i32 %i.am, %i.al
  %i.ao = or disjoint i32 %i.an, 1879048192
  %i.ap = getelementptr i8, ptr %.3552.val, i64 196 ; 16 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ao, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  call void @get_random_bytes(ptr noundef nonnull %i.d, i64 noundef 4) #16
  %i.aq = load i32, ptr %i.d, align 4
  %i.ar = and i32 %i.aq, 7                        ; 2 uses
  store i32 %i.ar, ptr %i.d, align 4
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr [60 x i8], ptr @main_seedset, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 1023
  %i.aw = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.as
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = shl i32 %i.ax, 12
  %i.az = and i32 %i.ay, 4190208
  %i.ba = or disjoint i32 %i.av, %i.az
  %i.bb = or disjoint i32 %i.ba, 1895825408
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.bc = load i32, ptr %i.d, align 4
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr [60 x i8], ptr @main_seedset, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 1023
  %i.bi = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.bd
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = shl i32 %i.bk, 12
  %i.bm = and i32 %i.bl, 4190208
  %i.bn = or disjoint i32 %i.bh, %i.bm
  %i.bo = or disjoint i32 %i.bn, 1912602624
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bo, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.bp = load i32, ptr %i.d, align 4
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [60 x i8], ptr @main_seedset, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 1023
  %i.bv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.bq
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = shl i32 %i.bx, 12
  %i.bz = and i32 %i.by, 4190208
  %i.ca = or disjoint i32 %i.bu, %i.bz
  %i.cb = or disjoint i32 %i.ca, 1929379840
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.cc = load i32, ptr %i.d, align 4
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr [60 x i8], ptr @main_seedset, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, 1023
  %i.ci = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.cd
  %i.cj = getelementptr i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = shl i32 %i.ck, 12
  %i.cm = and i32 %i.cl, 4190208
  %i.cn = or disjoint i32 %i.ch, %i.cm
  %i.co = or disjoint i32 %i.cn, 1946157056
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.co, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.cp = load i32, ptr %i.d, align 4
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr [60 x i8], ptr @main_seedset, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, 1023
  %i.cv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.cq
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = shl i32 %i.cx, 12
  %i.cz = and i32 %i.cy, 4190208
  %i.da = or disjoint i32 %i.cu, %i.cz
  %i.db = or disjoint i32 %i.da, 1962934272
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.db, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.dc = load i32, ptr %i.d, align 4
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr [60 x i8], ptr @main_seedset, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 1023
  %i.di = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.dd
  %i.dj = getelementptr i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = shl i32 %i.dk, 12
  %i.dm = and i32 %i.dl, 4190208
  %i.dn = or disjoint i32 %i.dh, %i.dm
  %i.do = or disjoint i32 %i.dn, 1979711488
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.do, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.dp = load i32, ptr %i.d, align 4
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr [60 x i8], ptr @main_seedset, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = and i32 %i.dt, 1023
  %i.dv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.dq
  %i.dw = getelementptr i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = shl i32 %i.dx, 12
  %i.dz = and i32 %i.dy, 4190208
  %i.ea = or disjoint i32 %i.du, %i.dz
  %i.eb = or disjoint i32 %i.ea, 1996488704
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.eb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.ec = load i32, ptr %i.d, align 4
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr [60 x i8], ptr @main_seedset, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 28
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, 1023
  %i.ei = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.ed
  %i.ej = getelementptr i8, ptr %i.ei, i64 28
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = shl i32 %i.ek, 12
  %i.em = and i32 %i.el, 4190208
  %i.en = or disjoint i32 %i.eh, %i.em
  %i.eo = or disjoint i32 %i.en, 2013265920
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.eo, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.ep = load i32, ptr %i.d, align 4
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr [60 x i8], ptr @main_seedset, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 32
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, 1023
  %i.ev = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.eq
  %i.ew = getelementptr i8, ptr %i.ev, i64 32
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = shl i32 %i.ex, 12
  %i.ez = and i32 %i.ey, 4190208
  %i.fa = or disjoint i32 %i.eu, %i.ez
  %i.fb = or disjoint i32 %i.fa, 2030043136
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.fb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.fc = load i32, ptr %i.d, align 4
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr [60 x i8], ptr @main_seedset, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 36
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 1023
  %i.fi = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.fd
  %i.fj = getelementptr i8, ptr %i.fi, i64 36
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = shl i32 %i.fk, 12
  %i.fm = and i32 %i.fl, 4190208
  %i.fn = or disjoint i32 %i.fh, %i.fm
  %i.fo = or disjoint i32 %i.fn, 2046820352
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.fo, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.fp = load i32, ptr %i.d, align 4
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr [60 x i8], ptr @main_seedset, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 40
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = and i32 %i.ft, 1023
  %i.fv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.fq
  %i.fw = getelementptr i8, ptr %i.fv, i64 40
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = shl i32 %i.fx, 12
  %i.fz = and i32 %i.fy, 4190208
  %i.ga = or disjoint i32 %i.fu, %i.fz
  %i.gb = or disjoint i32 %i.ga, 2063597568
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.gb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.gc = load i32, ptr %i.d, align 4
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr [60 x i8], ptr @main_seedset, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 44
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = and i32 %i.gg, 1023
  %i.gi = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.gd
  %i.gj = getelementptr i8, ptr %i.gi, i64 44
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = shl i32 %i.gk, 12
  %i.gm = and i32 %i.gl, 4190208
  %i.gn = or disjoint i32 %i.gh, %i.gm
  %i.go = or disjoint i32 %i.gn, 2080374784
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.go, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.gp = load i32, ptr %i.d, align 4
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr [60 x i8], ptr @main_seedset, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 48
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = and i32 %i.gt, 1023
  %i.gv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.gq
  %i.gw = getelementptr i8, ptr %i.gv, i64 48
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = shl i32 %i.gx, 12
  %i.gz = and i32 %i.gy, 4190208
  %i.ha = or disjoint i32 %i.gu, %i.gz
  %i.hb = or disjoint i32 %i.ha, 2097152000
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.hb, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.hc = load i32, ptr %i.d, align 4
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr [60 x i8], ptr @main_seedset, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 52
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 1023
  %i.hi = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.hd
  %i.hj = getelementptr i8, ptr %i.hi, i64 52
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = shl i32 %i.hk, 12
  %i.hm = and i32 %i.hl, 4190208
  %i.hn = or disjoint i32 %i.hh, %i.hm
  %i.ho = or disjoint i32 %i.hn, 2113929216
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ho, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  %i.hp = load i32, ptr %i.d, align 4
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr [60 x i8], ptr @main_seedset, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 56
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 1023
  %i.hv = getelementptr [60 x i8], ptr @gear_seedset, i64 %i.hq
  %i.hw = getelementptr i8, ptr %i.hv, i64 56
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = shl i32 %i.hx, 12
  %i.hz = and i32 %i.hy, 4190208
  %i.ia = or disjoint i32 %i.hu, %i.hz
  %i.ib = or disjoint i32 %i.ia, 2130706432
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ib, ptr elementtype(i32) %i.ap) #17, !srcloc !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nv_legacybackoff_reseed(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 3552       ; 8 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.c = getelementptr i8, ptr %.val, i64 156     ; 3 uses
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c) #17, !srcloc !13
  %i.e = and i32 %i.d, -256
  call void @get_random_bytes(ptr noundef nonnull %i.a, i64 noundef 4) #16
  %i.f = load i32, ptr %i.a, align 4
  %i.g = and i32 %i.f, 255
  %i.h = or disjoint i32 %i.g, %i.e               ; 2 uses
  %i.i = getelementptr i8, ptr %.val, i64 132
  %i.j = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i) #17, !srcloc !13
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  %.val.i20 = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 3536       ; 7 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %.val.i20, i64 132 ; 2 uses
  %i.n = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m) #17, !srcloc !13 ; 2 uses
  %i.o = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = or i32 %i.n, 16777216
  %i.q = and i32 %i.n, -2
  %.0.i = select i1 %.not.i, i32 %i.q, i32 %i.p
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i, ptr elementtype(i32) %i.m) #17, !srcloc !14
  %.val14.i = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.r = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val14.i) #17, !srcloc !13 ; 0 uses
  %i.s = getelementptr i8, ptr %.val14.i, i64 136
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.t = add nsw i32 %.0.i.i34, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.u = icmp slt i32 %.0.i.i34, 20
  br i1 %i.u, label %reg_delay.exit.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i.i34 = phi i32 [ 500000, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.v = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s) #17, !srcloc !13
  %i.w = and i32 %i.v, 1
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %reg_delay.exit.thread.i, label %bb.c, !llvm.loop !0

reg_delay.exit.i:                                 ; preds = %bb.c
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef @.str.66, ptr noundef @__func__.nv_stop_tx) #18
  br label %reg_delay.exit.thread.i

reg_delay.exit.thread.i:                          ; preds = %bb.d, %reg_delay.exit.i
  call void @__const_udelay(i64 noundef 429500) #16
  %i.x = load i32, ptr %i.l, align 8
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.e, label %nv_stop_tx.exit

bb.e:                                             ; preds = %reg_delay.exit.thread.i
  %i.y = getelementptr i8, ptr %.val.i20, i64 268 ; 2 uses
  %i.z = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y) #17, !srcloc !13
  %i.aa = and i32 %i.z, 32768
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.aa, ptr elementtype(i32) %i.y) #17, !srcloc !14
  br label %nv_stop_tx.exit

nv_stop_tx.exit:                                  ; preds = %reg_delay.exit.thread.i, %bb.e
  %.val.i11 = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.ab = getelementptr i8, ptr %.val.i11, i64 148 ; 2 uses
  %i.ac = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab) #17, !srcloc !13 ; 2 uses
  %i.ad = load i32, ptr %i.l, align 8
  %.not.i12 = icmp eq i32 %i.ad, 0
  %i.ae = or i32 %i.ac, 16777216
  %i.af = and i32 %i.ac, -2
  %.0.i13 = select i1 %.not.i12, i32 %i.af, i32 %i.ae
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i13, ptr elementtype(i32) %i.ab) #17, !srcloc !14
  %.val13.i = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.ag = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val13.i) #17, !srcloc !13 ; 0 uses
  %i.ah = getelementptr i8, ptr %.val13.i, i64 152
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %.0.i.i1435, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.aj = icmp slt i32 %.0.i.i1435, 20
  br i1 %i.aj, label %reg_delay.exit.i17, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %nv_stop_tx.exit, %bb.f
  %.0.i.i1435 = phi i32 [ 500000, %nv_stop_tx.exit ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ak = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah) #17, !srcloc !13
  %i.al = and i32 %i.ak, 1
  %.not.i.i15 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i15, label %reg_delay.exit.thread.i16, label %bb.f, !llvm.loop !0

reg_delay.exit.i17:                               ; preds = %bb.f
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef @.str.26, ptr noundef @__func__.nv_stop_rx) #18
  br label %reg_delay.exit.thread.i16

reg_delay.exit.thread.i16:                        ; preds = %bb.g, %reg_delay.exit.i17
  call void @__const_udelay(i64 noundef 429500) #16
  %i.am = load i32, ptr %i.l, align 8
  %.not12.i = icmp eq i32 %i.am, 0
  br i1 %.not12.i, label %bb.h, label %nv_stop_rx.exit

bb.h:                                             ; preds = %reg_delay.exit.thread.i16
  %i.an = getelementptr i8, ptr %.val.i11, i64 272
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.an) #17, !srcloc !14
  br label %nv_stop_rx.exit

nv_stop_rx.exit:                                  ; preds = %reg_delay.exit.thread.i16, %bb.h
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.h, ptr elementtype(i32) %i.c) #17, !srcloc !14
  %.val.i18 = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i18, i64 132 ; 2 uses
  %i.ap = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao) #17, !srcloc !13
  %i.aq = or i32 %i.ap, 1                         ; 2 uses
  %i.ar = load i32, ptr %i.l, align 8
  %.not.i19 = icmp eq i32 %i.ar, 0
  %i.as = and i32 %i.aq, -16777217
  %spec.select.i = select i1 %.not.i19, i32 %i.aq, i32 %i.as
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %spec.select.i, ptr elementtype(i32) %i.ao) #17, !srcloc !14
  %i.at = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i18) #17, !srcloc !13 ; 0 uses
  br label %bb.l

.critedge:                                        ; preds = %bb.a
  %i.au = getelementptr i8, ptr %.val.i20, i64 148 ; 2 uses
  %i.av = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au) #17, !srcloc !13 ; 2 uses
  %i.aw = load i32, ptr %i.l, align 8
  %.not.i21 = icmp eq i32 %i.aw, 0
  %i.ax = or i32 %i.av, 16777216
  %i.ay = and i32 %i.av, -2
  %.0.i22 = select i1 %.not.i21, i32 %i.ay, i32 %i.ax
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i22, ptr elementtype(i32) %i.au) #17, !srcloc !14
  %.val13.i23 = load ptr, ptr %i.b, align 8       ; 2 uses
  %i.az = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val13.i23) #17, !srcloc !13 ; 0 uses
  %i.ba = getelementptr i8, ptr %.val13.i23, i64 152
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %.0.i.i2436, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.bc = icmp slt i32 %.0.i.i2436, 20
  br i1 %i.bc, label %reg_delay.exit.i28, label %bb.j, !llvm.loop !0

bb.j:                                             ; preds = %.critedge, %bb.i
  %.0.i.i2436 = phi i32 [ 500000, %.critedge ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bd = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba) #17, !srcloc !13
  %i.be = and i32 %i.bd, 1
  %.not.i.i25 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i25, label %reg_delay.exit.thread.i26, label %bb.i, !llvm.loop !0

reg_delay.exit.i28:                               ; preds = %bb.i
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef @.str.26, ptr noundef @__func__.nv_stop_rx) #18
  br label %reg_delay.exit.thread.i26

reg_delay.exit.thread.i26:                        ; preds = %bb.j, %reg_delay.exit.i28
  call void @__const_udelay(i64 noundef 429500) #16
  %i.bf = load i32, ptr %i.l, align 8
  %.not12.i27 = icmp eq i32 %i.bf, 0
  br i1 %.not12.i27, label %bb.k, label %nv_stop_rx.exit29

bb.k:                                             ; preds = %reg_delay.exit.thread.i26
  %i.bg = getelementptr i8, ptr %.val.i20, i64 272
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.bg) #17, !srcloc !14
  br label %nv_stop_rx.exit29

nv_stop_rx.exit29:                                ; preds = %reg_delay.exit.thread.i26, %bb.k
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.h, ptr elementtype(i32) %i.c) #17, !srcloc !14
  br label %bb.l

bb.l:                                             ; preds = %nv_stop_rx.exit29, %nv_stop_rx.exit
  %.val.i30 = load ptr, ptr %i.b, align 8         ; 5 uses
  %i.bh = getelementptr i8, ptr %.val.i30, i64 148 ; 4 uses
  %i.bi = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bh) #17, !srcloc !13 ; 3 uses
  %i.bj = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bh) #17, !srcloc !13
  %i.bk = and i32 %i.bj, 1
  %.not.i31 = icmp eq i32 %i.bk, 0
  br i1 %.not.i31, label %nv_start_rx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %0, i64 3536
  %i.bm = load i32, ptr %i.bl, align 8
  %.not17.i = icmp eq i32 %i.bm, 0
  br i1 %.not17.i, label %bb.n, label %nv_start_rx.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = and i32 %i.bi, -2                       ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bn, ptr elementtype(i32) %i.bh) #17, !srcloc !14
  %i.bo = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val.i30) #17, !srcloc !13 ; 0 uses
end_hunk_0
