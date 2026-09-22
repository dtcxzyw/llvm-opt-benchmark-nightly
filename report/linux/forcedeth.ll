Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/forcedeth?download=true
inline.NumInlined: 1048
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nv_set_link_ksettings:bb.a
  %.not.i172 = icmp eq i32 %i.bx, 0
  br i1 %.not.i172, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mii_rw.exit
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.bv) #17, !srcloc !14
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %mii_rw.exit
  %i.by = shl i32 %i.bt, 5
  %i.bz = getelementptr i8, ptr %.val.i171, i64 404
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.5130, ptr elementtype(i32) %i.bz) #17, !srcloc !14
  %i.ca = or i32 %i.by, 1028
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ca, ptr elementtype(i32) %i.bv) #17, !srcloc !14
  %.val22.i173 = load ptr, ptr %i.ar, align 8     ; 2 uses
  %i.cb = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i173) #17, !srcloc !13 ; 0 uses
  %i.cc = getelementptr i8, ptr %.val22.i173, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.cd = add nsw i32 %.0.i.i174262, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.ce = icmp slt i32 %.0.i.i174262, 20
  br i1 %i.ce, label %mii_rw.exit179, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %bb.t, %bb.u
  %.0.i.i174262 = phi i32 [ 10000, %bb.t ], [ %i.cd, %bb.u ] ; 2 uses
  %i.cf = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cc) #17, !srcloc !13
  %i.cg = and i32 %i.cf, 32768
  %.not.i.i175 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i175, label %mii_rw.exit179, label %bb.u, !llvm.loop !0

mii_rw.exit179:                                   ; preds = %bb.u, %bb.v
  %i.ch = getelementptr i8, ptr %0, i64 3464
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = icmp eq i16 %i.ci, 256
  br i1 %i.cj, label %bb.w, label %netif_running.exit183

bb.w:                                             ; preds = %mii_rw.exit179
  %i.ck = load i32, ptr %i.l, align 4
  %i.cl = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.ck, i32 noundef 9, i32 noundef -1) #20, !srcloc !194
  %i.cm = and i32 %i.cl, -513
  %i.cn = load i32, ptr %i.a, align 4
  %i.co = shl i32 %i.cn, 4
  %masksel = and i32 %i.co, 512
  %spec.select161 = or disjoint i32 %masksel, %i.cm
  %i.cp = load i32, ptr %i.l, align 4
  %i.cq = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.cp, i32 noundef 9, i32 noundef %spec.select161) #20, !srcloc !195 ; 0 uses
  br label %netif_running.exit183

netif_running.exit183:                            ; preds = %mii_rw.exit179, %bb.w
  %i.cr = load volatile i64, ptr %i.w, align 8
  %.in.i182 = trunc i64 %i.cr to i1
  br i1 %.in.i182, label %bb.x, label %bb.y

bb.x:                                             ; preds = %netif_running.exit183
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.31) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %netif_running.exit183
  %i.cs = load i32, ptr %i.l, align 4
  %.val.i184 = load ptr, ptr %i.ar, align 8       ; 3 uses
  %i.ct = getelementptr i8, ptr %.val.i184, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.ct) #17, !srcloc !14
  %i.cu = getelementptr i8, ptr %.val.i184, i64 400 ; 3 uses
  %i.cv = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cu) #17, !srcloc !13
  %i.cw = and i32 %i.cv, 32768
  %.not.i185 = icmp eq i32 %i.cw, 0
  br i1 %.not.i185, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.cu) #17, !srcloc !14
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cx = shl i32 %i.cs, 5
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cx, ptr elementtype(i32) %i.cu) #17, !srcloc !14
  %.val22.i187 = load ptr, ptr %i.ar, align 8     ; 2 uses
  %i.cy = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i187) #17, !srcloc !13 ; 0 uses
  %i.cz = getelementptr i8, ptr %.val22.i187, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %i.da = add nsw i32 %.0.i.i188263, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.db = icmp slt i32 %.0.i.i188263, 20
  br i1 %i.db, label %mii_rw.exit193, label %bb.ac, !llvm.loop !0

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0.i.i188263 = phi i32 [ 10000, %bb.aa ], [ %i.da, %bb.ab ] ; 2 uses
  %i.dc = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cz) #17, !srcloc !13
  %i.dd = and i32 %i.dc, 32768
  %.not.i.i189 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i189, label %reg_delay.exit.i190, label %bb.ab, !llvm.loop !0

reg_delay.exit.i190:                              ; preds = %bb.ac
  %i.de = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ct) #17, !srcloc !13
  %i.df = and i32 %i.de, 1
  %.not21.i191 = icmp eq i32 %i.df, 0
  br i1 %.not21.i191, label %bb.ad, label %mii_rw.exit193

bb.ad:                                            ; preds = %reg_delay.exit.i190
  %i.dg = getelementptr i8, ptr %.val.i184, i64 404
  %i.dh = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dg) #17, !srcloc !13
  br label %mii_rw.exit193

mii_rw.exit193:                                   ; preds = %bb.ab, %reg_delay.exit.i190, %bb.ad
  %.0.i192 = phi i32 [ %i.dh, %bb.ad ], [ -1, %reg_delay.exit.i190 ], [ -1, %bb.ab ] ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 3456
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp eq i32 %i.dj, 544
  br i1 %i.dk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %mii_rw.exit193
  %i.dl = or i32 %.0.i192, 4096
  %i.dm = call fastcc i32 @phy_reset(ptr noundef %0, i32 noundef %i.dl) #20, !srcloc !196
  %.not159 = icmp eq i32 %i.dm, 0
  br i1 %.not159, label %netif_running.exit232, label %.critedge

.critedge:                                        ; preds = %bb.ae
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.59) #18
  br label %bb.bl

bb.af:                                            ; preds = %mii_rw.exit193
  %i.dn = or i32 %.0.i192, 4608
  %i.do = load i32, ptr %i.l, align 4
  %i.dp = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.do, i32 noundef 0, i32 noundef %i.dn) #20, !srcloc !197 ; 0 uses
  br label %netif_running.exit232

bb.ag:                                            ; preds = %bb.l
  store i32 0, ptr %i.aq, align 4
  %i.dq = load i32, ptr %i.l, align 4
  %.val.i194 = load ptr, ptr %i.ar, align 8       ; 3 uses
  %i.dr = getelementptr i8, ptr %.val.i194, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.dr) #17, !srcloc !14
  %i.ds = getelementptr i8, ptr %.val.i194, i64 400 ; 3 uses
  %i.dt = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ds) #17, !srcloc !13
  %i.du = and i32 %i.dt, 32768
  %.not.i195 = icmp eq i32 %i.du, 0
  br i1 %.not.i195, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.ds) #17, !srcloc !14
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = shl i32 %i.dq, 5
  %i.dw = or disjoint i32 %i.dv, 4
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dw, ptr elementtype(i32) %i.ds) #17, !srcloc !14
  %.val22.i197 = load ptr, ptr %i.ar, align 8     ; 2 uses
  %i.dx = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i197) #17, !srcloc !13 ; 0 uses
  %i.dy = getelementptr i8, ptr %.val22.i197, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %i.dz = add nsw i32 %.0.i.i198258, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.ea = icmp slt i32 %.0.i.i198258, 20
  br i1 %i.ea, label %mii_rw.exit203, label %bb.ak, !llvm.loop !0

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.0.i.i198258 = phi i32 [ 10000, %bb.ai ], [ %i.dz, %bb.aj ] ; 2 uses
  %i.eb = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dy) #17, !srcloc !13
  %i.ec = and i32 %i.eb, 32768
  %.not.i.i199 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i199, label %reg_delay.exit.i200, label %bb.aj, !llvm.loop !0

reg_delay.exit.i200:                              ; preds = %bb.ak
  %i.ed = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dr) #17, !srcloc !13
  %i.ee = and i32 %i.ed, 1
  %.not21.i201 = icmp eq i32 %i.ee, 0
  br i1 %.not21.i201, label %bb.al, label %mii_rw.exit203

bb.al:                                            ; preds = %reg_delay.exit.i200
  %i.ef = getelementptr i8, ptr %.val.i194, i64 404
  %i.eg = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ef) #17, !srcloc !13
  %i.eh = and i32 %i.eg, -4065
  br label %mii_rw.exit203

mii_rw.exit203:                                   ; preds = %bb.aj, %reg_delay.exit.i200, %bb.al
  %.0.i202 = phi i32 [ %i.eh, %bb.al ], [ -4065, %reg_delay.exit.i200 ], [ -4065, %bb.aj ] ; 2 uses
  switch i32 %i.d, label %.thread247 [
    i32 10, label %.thread247.sink.split
    i32 100, label %bb.am
  ]

bb.am:                                            ; preds = %mii_rw.exit203
  br label %.thread247.sink.split

.thread247.sink.split:                            ; preds = %mii_rw.exit203, %bb.am
  %.sink256 = phi i32 [ 128, %bb.am ], [ 32, %mii_rw.exit203 ]
  %.sink253 = phi i32 [ 256, %bb.am ], [ 64, %mii_rw.exit203 ]
  %i.ei = getelementptr i8, ptr %1, i64 8
  %i.ej = load i8, ptr %i.ei, align 8             ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = icmp eq i8 %i.ej, 1
  %i.em = select i1 %i.el, i32 %.sink253, i32 0
  %2 = select i1 %i.ek, i32 %.sink256, i32 %i.em
  %spec.select163 = or disjoint i32 %2, %.0.i202
  br label %.thread247

.thread247:                                       ; preds = %.thread247.sink.split, %mii_rw.exit203
  %.3 = phi i32 [ %.0.i202, %mii_rw.exit203 ], [ %spec.select163, %.thread247.sink.split ] ; 2 uses
  %i.en = getelementptr i8, ptr %0, i64 3952      ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8            ; 4 uses
  %i.ep = and i32 %i.eo, -77
  %i.eq = and i32 %i.eo, 16
  %.not146 = icmp eq i32 %i.eq, 0
  %i.er = or i32 %.3, 3072
  %.4 = select i1 %.not146, i32 %.3, i32 %i.er
  %i.es = lshr i32 %i.eo, 2
  %i.et = and i32 %i.es, 12
  %storemerge148 = or disjoint i32 %i.et, %i.ep
  %i.eu = shl i32 %i.eo, 6
  %i.ev = and i32 %i.eu, 2048
  %.5 = or i32 %.4, %i.ev                         ; 3 uses
  store i32 %storemerge148, ptr %i.en, align 8
  %i.ew = load i32, ptr %i.l, align 4
  %.val.i204 = load ptr, ptr %i.ar, align 8       ; 4 uses
  %i.ex = getelementptr i8, ptr %.val.i204, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.ex) #17, !srcloc !14
  %i.ey = getelementptr i8, ptr %.val.i204, i64 400 ; 3 uses
  %i.ez = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ey) #17, !srcloc !13
  %i.fa = and i32 %i.ez, 32768
  %.not.i205 = icmp eq i32 %i.fa, 0
  br i1 %.not.i205, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread247
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.ey) #17, !srcloc !14
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread247
  %i.fb = shl i32 %i.ew, 5                        ; 2 uses
  %i.fc = or disjoint i32 %i.fb, 4
  %.not19.not.i206 = icmp eq i32 %.5, -1          ; 2 uses
  br i1 %.not19.not.i206, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr i8, ptr %.val.i204, i64 404
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.5, ptr elementtype(i32) %i.fd) #17, !srcloc !14
  %i.fe = or i32 %i.fb, 1028
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.017.i207 = phi i32 [ %i.fe, %bb.ap ], [ %i.fc, %bb.ao ]
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.017.i207, ptr elementtype(i32) %i.ey) #17, !srcloc !14
  %.val22.i208 = load ptr, ptr %i.ar, align 8     ; 2 uses
  %i.ff = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i208) #17, !srcloc !13 ; 0 uses
  %i.fg = getelementptr i8, ptr %.val22.i208, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %i.fh = add nsw i32 %.0.i.i209259, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.fi = icmp slt i32 %.0.i.i209259, 20
  br i1 %i.fi, label %mii_rw.exit214, label %bb.as, !llvm.loop !0

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.0.i.i209259 = phi i32 [ 10000, %bb.aq ], [ %i.fh, %bb.ar ] ; 2 uses
  %i.fj = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fg) #17, !srcloc !13
  %i.fk = and i32 %i.fj, 32768
  %.not.i.i210 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i210, label %reg_delay.exit.i211, label %bb.ar, !llvm.loop !0

reg_delay.exit.i211:                              ; preds = %bb.as
  br i1 %.not19.not.i206, label %bb.at, label %mii_rw.exit214

bb.at:                                            ; preds = %reg_delay.exit.i211
  %i.fl = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ex) #17, !srcloc !13
  %i.fm = and i32 %i.fl, 1
  %.not21.i213 = icmp eq i32 %i.fm, 0
  br i1 %.not21.i213, label %bb.au, label %mii_rw.exit214

bb.au:                                            ; preds = %bb.at
  %i.fn = getelementptr i8, ptr %.val.i204, i64 404
  %i.fo = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fn) #17, !srcloc !13 ; 0 uses
  br label %mii_rw.exit214

mii_rw.exit214:                                   ; preds = %bb.ar, %reg_delay.exit.i211, %bb.at, %bb.au
  %i.fp = getelementptr i8, ptr %0, i64 3440      ; 2 uses
  store i32 %.5, ptr %i.fp, align 8
  %i.fq = getelementptr i8, ptr %0, i64 3464
  %i.fr = load i16, ptr %i.fq, align 8
  %i.fs = icmp eq i16 %i.fr, 256
  br i1 %i.fs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %mii_rw.exit214
  %i.ft = load i32, ptr %i.l, align 4
  %i.fu = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.ft, i32 noundef 9, i32 noundef -1) #20, !srcloc !198
  %i.fv = and i32 %i.fu, -513
  %i.fw = load i32, ptr %i.l, align 4
  %i.fx = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.fw, i32 noundef 9, i32 noundef %i.fv) #20, !srcloc !199 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %mii_rw.exit214
  %i.fy = load i32, ptr %i.l, align 4
  %.val.i215 = load ptr, ptr %i.ar, align 8       ; 3 uses
  %i.fz = getelementptr i8, ptr %.val.i215, i64 384 ; 2 uses
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 7, ptr elementtype(i32) %i.fz) #17, !srcloc !14
  %i.ga = getelementptr i8, ptr %.val.i215, i64 400 ; 3 uses
  %i.gb = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ga) #17, !srcloc !13
  %i.gc = and i32 %i.gb, 32768
  %.not.i216 = icmp eq i32 %i.gc, 0
  br i1 %.not.i216, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32768, ptr elementtype(i32) %i.ga) #17, !srcloc !14
  call void @__const_udelay(i64 noundef 214750) #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gd = shl i32 %i.fy, 5
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.gd, ptr elementtype(i32) %i.ga) #17, !srcloc !14
  %.val22.i218 = load ptr, ptr %i.ar, align 8     ; 2 uses
  %i.ge = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val22.i218) #17, !srcloc !13 ; 0 uses
  %i.gf = getelementptr i8, ptr %.val22.i218, i64 400
  call void @__const_udelay(i64 noundef 42950) #16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %i.gg = add nsw i32 %.0.i.i219260, -10
  call void @__const_udelay(i64 noundef 42950) #16
  %i.gh = icmp slt i32 %.0.i.i219260, 20
  br i1 %i.gh, label %mii_rw.exit224, label %bb.ba, !llvm.loop !0

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.0.i.i219260 = phi i32 [ 10000, %bb.ay ], [ %i.gg, %bb.az ] ; 2 uses
  %i.gi = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gf) #17, !srcloc !13
  %i.gj = and i32 %i.gi, 32768
  %.not.i.i220 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i220, label %reg_delay.exit.i221, label %bb.az, !llvm.loop !0

reg_delay.exit.i221:                              ; preds = %bb.ba
  %i.gk = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fz) #17, !srcloc !13
  %i.gl = and i32 %i.gk, 1
  %.not21.i222 = icmp eq i32 %i.gl, 0
  br i1 %.not21.i222, label %bb.bb, label %mii_rw.exit224

bb.bb:                                            ; preds = %reg_delay.exit.i221
  %i.gm = getelementptr i8, ptr %.val.i215, i64 404
  %i.gn = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gm) #17, !srcloc !13
  %i.go = and i32 %i.gn, -12609
  br label %mii_rw.exit224

mii_rw.exit224:                                   ; preds = %bb.az, %reg_delay.exit.i221, %bb.bb
  %.0.i223 = phi i32 [ %i.go, %bb.bb ], [ -12609, %reg_delay.exit.i221 ], [ -12609, %bb.az ] ; 2 uses
  %i.gp = load i32, ptr %i.fp, align 8            ; 2 uses
  %i.gq = and i32 %i.gp, 320
  %.not149 = icmp eq i32 %i.gq, 0
  %i.gr = or disjoint i32 %.0.i223, 256
  %spec.select166 = select i1 %.not149, i32 %.0.i223, i32 %i.gr ; 2 uses
  %i.gs = and i32 %i.gp, 384
  %.not150 = icmp eq i32 %i.gs, 0
  %i.gt = or disjoint i32 %spec.select166, 8192
  %.1 = select i1 %.not150, i32 %spec.select166, i32 %i.gt ; 2 uses
  %i.gu = getelementptr i8, ptr %0, i64 3452
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = icmp eq i32 %i.gv, 20547
  br i1 %i.gw, label %bb.bc, label %netif_running.exit228

bb.bc:                                            ; preds = %mii_rw.exit224
  %i.gx = call fastcc i32 @phy_reset(ptr noundef %0, i32 noundef %.1) #20, !srcloc !200
  %.not151 = icmp eq i32 %i.gx, 0
  br i1 %.not151, label %netif_running.exit232, label %.critedge168

.critedge168:                                     ; preds = %bb.bc
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.59) #18
  br label %bb.bl

netif_running.exit228:                            ; preds = %mii_rw.exit224
  %i.gy = load i32, ptr %i.l, align 4
  %i.gz = call fastcc i32 @mii_rw(ptr noundef %0, i32 noundef %i.gy, i32 noundef 0, i32 noundef %.1) #20, !srcloc !201 ; 0 uses
  %i.ha = load volatile i64, ptr %i.w, align 8
  %.in.i227 = trunc i64 %i.ha to i1
  br i1 %.in.i227, label %bb.bd, label %netif_running.exit232

bb.bd:                                            ; preds = %netif_running.exit228
  call void @__const_udelay(i64 noundef 42950) #16
  call fastcc void @nv_linkchange(ptr noundef %0) #20, !srcloc !202
  br label %netif_running.exit232

netif_running.exit232:                            ; preds = %bb.af, %bb.ae, %bb.bc, %bb.bd, %netif_running.exit228
  %i.hb = load volatile i64, ptr %i.w, align 8
  %.in.i231 = trunc i64 %i.hb to i1
  br i1 %.in.i231, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %netif_running.exit232
  %i.hc = getelementptr i8, ptr %0, i64 3552      ; 2 uses
  %.val.i.i = load ptr, ptr %i.hc, align 8        ; 5 uses
  %i.hd = getelementptr i8, ptr %.val.i.i, i64 148 ; 4 uses
  %i.he = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hd) #17, !srcloc !13 ; 3 uses
  %i.hf = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hd) #17, !srcloc !13
  %i.hg = and i32 %i.hf, 1
  %.not.i.i233 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i233, label %nv_start_rxtx.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
end_hunk_0
