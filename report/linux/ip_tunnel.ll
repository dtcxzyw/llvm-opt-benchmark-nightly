Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ip_tunnel?download=true
inline.NumInlined: 352
inline.NumDeleted: 130
begin_hunk_0_@ip_tunnel_rcv:bb.a
  %switch.selectcmp.i.i = icmp eq i16 %i.ap, 8
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 20, i32 0
  %switch.selectcmp2.i.i = icmp eq i16 %i.ap, -8826
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 40, i32 %switch.select.i.i
  %i.aq = zext i16 %i.an to i64
  %i.ar = getelementptr i8, ptr %.val99, i64 %i.aq
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ai
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %switch.select3.i.i, %i.au      ; 3 uses
  %i.aw = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.aw, align 8     ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 116
  %.val4.i.i.i = load i32, ptr %i.ax, align 4
  %i.ay = sub i32 %.val3.i.i.i, %.val4.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.av, %i.ay
  br i1 %.not.i.i.i.i, label %bb.h, label %pskb_inet_may_pull.exit.thread, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.az = icmp ugt i32 %i.av, %.val3.i.i.i
  br i1 %i.az, label %pskb_inet_may_pull.exit.thread109, label %pskb_inet_may_pull.exit, !prof !13

pskb_inet_may_pull.exit:                          ; preds = %bb.h
  %i.ba = sub nuw i32 %i.av, %i.ay
  %i.bb = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.ba) #13
  %.not9.i.i.i.i.not = icmp eq ptr %i.bb, null
  br i1 %.not9.i.i.i.i.not, label %pskb_inet_may_pull.exit.thread109, label %pskb_inet_may_pull.exit.pskb_inet_may_pull.exit.thread_crit_edge

pskb_inet_may_pull.exit.pskb_inet_may_pull.exit.thread_crit_edge: ; preds = %pskb_inet_may_pull.exit
  %.pre117 = load ptr, ptr %i.b, align 8
  %.pre118 = load i16, ptr %i.ao, align 4
  br label %pskb_inet_may_pull.exit.thread

pskb_inet_may_pull.exit.thread109:                ; preds = %bb.h, %pskb_inet_may_pull.exit
  %i.bc = load ptr, ptr %i.ab, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 632    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bd, ptr elementtype(i64) %i.bd) #12, !srcloc !12
  %i.be = load ptr, ptr %i.ab, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 584    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bf, ptr elementtype(i64) %i.bf) #12, !srcloc !12
  br label %bb.as

pskb_inet_may_pull.exit.thread:                   ; preds = %pskb_inet_may_pull.exit.pskb_inet_may_pull.exit.thread_crit_edge, %bb.g
  %i.bg = phi i16 [ %.pre118, %pskb_inet_may_pull.exit.pskb_inet_may_pull.exit.thread_crit_edge ], [ %i.ap, %bb.g ] ; 3 uses
  %i.bh = phi ptr [ %.pre117, %pskb_inet_may_pull.exit.pskb_inet_may_pull.exit.thread_crit_edge ], [ %.val99, %bb.g ]
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.aa  ; 2 uses
  switch i16 %i.bg, label %skb_protocol.exit.i [
    i16 -22392, label %bb.i
    i16 129, label %bb.i
  ]

bb.i:                                             ; preds = %pskb_inet_may_pull.exit.thread, %pskb_inet_may_pull.exit.thread
  %i.bj = tail call i32 @__vlan_get_protocol_offset(ptr noundef %1, i16 noundef zeroext %i.bg, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i.i = trunc i32 %i.bj to i16
  br label %skb_protocol.exit.i

skb_protocol.exit.i:                              ; preds = %bb.i, %pskb_inet_may_pull.exit.thread
  %.0.i.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i, %bb.i ], [ %i.bg, %pskb_inet_may_pull.exit.thread ]
  switch i16 %.0.i.i.i.i.i, label %IP_ECN_decapsulate.exit.thread [
    i16 8, label %bb.j
    i16 -8826, label %bb.k
  ]

bb.j:                                             ; preds = %skb_protocol.exit.i
  %.val.i = load i16, ptr %i.a, align 8
  %.val7.i = load ptr, ptr %i.b, align 8
  %i.bk = zext i16 %.val.i to i64
  %i.bl = getelementptr i8, ptr %.val7.i, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  br label %bb.l

bb.k:                                             ; preds = %skb_protocol.exit.i
  %.val8.i = load i16, ptr %i.a, align 8
  %.val9.i = load ptr, ptr %i.b, align 8
  %i.bo = zext i16 %.val8.i to i64
  %i.bp = getelementptr i8, ptr %.val9.i, i64 %i.bo
  %.val10.i = load i16, ptr %i.bp, align 2
  %i.bq = tail call i16 @llvm.bswap.i16(i16 %.val10.i)
  %i.br = lshr i16 %i.bq, 4
  %i.bs = trunc i16 %i.br to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi i8 [ %i.bn, %bb.j ], [ %i.bs, %bb.k ]
  %i.bt = getelementptr i8, ptr %i.bi, i64 1      ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = and i8 %.0.i, 3
  %.not.i.i.i = icmp eq i8 %i.bv, 0
  %i.bw = and i8 %i.bu, 3                         ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  switch i8 %i.bw, label %default.unreachable [
    i8 0, label %IP_ECN_decapsulate.exit.thread
    i8 2, label %IP_ECN_decapsulate.exit
    i8 1, label %IP_ECN_decapsulate.exit
    i8 3, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %IP_ECN_decapsulate.exit

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  switch i8 %i.bw, label %IP_ECN_decapsulate.exit.thread [
    i8 3, label %bb.p
    i8 1, label %bb.y
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %i.ao, align 4            ; 3 uses
  switch i16 %i.bx, label %skb_protocol.exit.i.i.i [
    i16 -22392, label %bb.q
    i16 129, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.by = tail call i32 @__vlan_get_protocol_offset(ptr noundef %1, i16 noundef zeroext %i.bx, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i = trunc i32 %i.by to i16
  br label %skb_protocol.exit.i.i.i

skb_protocol.exit.i.i.i:                          ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i, %bb.q ], [ %i.bx, %bb.p ]
  switch i16 %.0.i.i.i.i.i.i.i, label %IP_ECN_decapsulate.exit.thread [
    i16 8, label %bb.r
    i16 -8826, label %bb.u
  ]

bb.r:                                             ; preds = %skb_protocol.exit.i.i.i
  %.val10.i.i.i = load i16, ptr %i.a, align 8
  %.val11.i.i.i = load ptr, ptr %i.b, align 8     ; 2 uses
  %i.bz = zext i16 %.val10.i.i.i to i64
  %i.ca = getelementptr i8, ptr %.val11.i.i.i, i64 %i.bz ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 20
  %i.cc = getelementptr i8, ptr %1, i64 188
  %.val18.i.i.i = load i32, ptr %i.cc, align 4
  %i.cd = zext i32 %.val18.i.i.i to i64
  %i.ce = getelementptr i8, ptr %.val11.i.i.i, i64 %i.cd
  %.not8.i.i.i = icmp ugt ptr %i.cb, %i.ce
  br i1 %.not8.i.i.i, label %IP_ECN_decapsulate.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %i.ca, i64 1      ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  %i.ch = add i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 3                         ; 2 uses
  %.not.i.i.i.i106 = icmp samesign ult i8 %i.ci, 2
  br i1 %.not.i.i.i.i106, label %IP_ECN_decapsulate.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = zext nneg i8 %i.ci to i16
  %i.ck = shl nuw nsw i16 %i.cj, 8
  %i.cl = add nuw nsw i16 %i.ck, -1025            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ca, i64 10     ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = add i16 %i.cn, %i.cl                    ; 2 uses
  %i.cp = icmp ult i16 %i.co, %i.cl
  %i.cq = zext i1 %i.cp to i16
  %i.cr = add i16 %i.co, %i.cq
  store i16 %i.cr, ptr %i.cm, align 2
  %i.cs = or i8 %i.cg, 3
  store i8 %i.cs, ptr %i.cf, align 1
  br label %IP_ECN_decapsulate.exit.thread

bb.u:                                             ; preds = %skb_protocol.exit.i.i.i
  %.val.i.i.i = load i16, ptr %i.a, align 8
  %.val9.i.i.i = load ptr, ptr %i.b, align 8      ; 2 uses
  %i.ct = zext i16 %.val.i.i.i to i64
  %i.cu = getelementptr i8, ptr %.val9.i.i.i, i64 %i.ct ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 40
  %i.cw = getelementptr i8, ptr %1, i64 188
  %.val16.i.i.i = load i32, ptr %i.cw, align 4
  %i.cx = zext i32 %.val16.i.i.i to i64
  %i.cy = getelementptr i8, ptr %.val9.i.i.i, i64 %i.cx
  %.not.i6.i.i = icmp ugt ptr %i.cv, %i.cy
  br i1 %.not.i6.i.i, label %IP_ECN_decapsulate.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val.i.i.i.i105 = load i16, ptr %i.cu, align 2
  %i.cz = and i16 %.val.i.i.i.i105, 12288
  %.not.i20.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i20.i.i.i, label %IP_ECN_decapsulate.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.db = or i32 %i.da, 12288                     ; 2 uses
  store i32 %i.db, ptr %i.cu, align 4
  %i.dc = getelementptr i8, ptr %1, i64 128
  %i.dd = load i8, ptr %i.dc, align 8
  %i.de = and i8 %i.dd, 96
  %i.df = icmp eq i8 %i.de, 64
  br i1 %i.df, label %bb.x, label %IP_ECN_decapsulate.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr i8, ptr %1, i64 140       ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = xor i32 %i.da, -1
  %i.dj = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh, i32 %i.di) #14, !srcloc !21
  %i.dk = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.dj, i32 %i.db) #14, !srcloc !21
  store i32 %i.dk, ptr %i.dg, align 4
  br label %IP_ECN_decapsulate.exit.thread

bb.y:                                             ; preds = %bb.o
  %i.dl = load i16, ptr %i.ao, align 4            ; 3 uses
  switch i16 %i.dl, label %skb_protocol.exit.i9.i.i [
    i16 -22392, label %bb.z
    i16 129, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.dm = tail call i32 @__vlan_get_protocol_offset(ptr noundef %1, i16 noundef zeroext %i.dl, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i.i8.i.i = trunc i32 %i.dm to i16
  br label %skb_protocol.exit.i9.i.i

skb_protocol.exit.i9.i.i:                         ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i10.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i8.i.i, %bb.z ], [ %i.dl, %bb.y ]
  switch i16 %.0.i.i.i.i.i10.i.i, label %IP_ECN_decapsulate.exit.thread [
    i16 8, label %bb.aa
    i16 -8826, label %bb.ad
  ]

bb.aa:                                            ; preds = %skb_protocol.exit.i9.i.i
  %.val10.i18.i.i = load i16, ptr %i.a, align 8
  %.val11.i19.i.i = load ptr, ptr %i.b, align 8   ; 2 uses
  %i.dn = zext i16 %.val10.i18.i.i to i64
  %i.do = getelementptr i8, ptr %.val11.i19.i.i, i64 %i.dn ; 3 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 20
  %i.dq = getelementptr i8, ptr %1, i64 188
  %.val18.i20.i.i = load i32, ptr %i.dq, align 4
  %i.dr = zext i32 %.val18.i20.i.i to i64
  %i.ds = getelementptr i8, ptr %.val11.i19.i.i, i64 %i.dr
  %.not8.i21.i.i = icmp ugt ptr %i.dp, %i.ds
  br i1 %.not8.i21.i.i, label %IP_ECN_decapsulate.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr i8, ptr %i.do, i64 1      ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  %i.dv = and i8 %i.du, 3
  %.not.i.i22.i.i = icmp eq i8 %i.dv, 2
  br i1 %.not.i.i22.i.i, label %bb.ac, label %IP_ECN_decapsulate.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dw = getelementptr i8, ptr %i.do, i64 10     ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2            ; 2 uses
  %i.dy = add i16 %i.dx, 256
  %i.dz = icmp ugt i16 %i.dx, -257
  %i.ea = zext i1 %i.dz to i16
  %i.eb = add i16 %i.dy, %i.ea
  store i16 %i.eb, ptr %i.dw, align 2
  %i.ec = xor i8 %i.du, 3
  store i8 %i.ec, ptr %i.dt, align 1
  br label %IP_ECN_decapsulate.exit.thread

bb.ad:                                            ; preds = %skb_protocol.exit.i9.i.i
  %.val.i11.i.i = load i16, ptr %i.a, align 8
  %.val9.i12.i.i = load ptr, ptr %i.b, align 8    ; 2 uses
  %i.ed = zext i16 %.val.i11.i.i to i64
  %i.ee = getelementptr i8, ptr %.val9.i12.i.i, i64 %i.ed ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 40
  %i.eg = getelementptr i8, ptr %1, i64 188
  %.val16.i13.i.i = load i32, ptr %i.eg, align 4
  %i.eh = zext i32 %.val16.i13.i.i to i64
  %i.ei = getelementptr i8, ptr %.val9.i12.i.i, i64 %i.eh
  %.not.i14.i.i = icmp ugt ptr %i.ef, %i.ei
  br i1 %.not.i14.i.i, label %IP_ECN_decapsulate.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i15.i.i = load i16, ptr %i.ee, align 2
  %i.ej = and i16 %.val.i.i15.i.i, 12288
  %.not.i20.i16.i.i = icmp eq i16 %i.ej, 8192
  br i1 %.not.i20.i16.i.i, label %bb.af, label %IP_ECN_decapsulate.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.ee, align 4            ; 2 uses
  %i.el = xor i32 %i.ek, 12288                    ; 2 uses
  store i32 %i.el, ptr %i.ee, align 4
  %i.em = getelementptr i8, ptr %1, i64 128
  %i.en = load i8, ptr %i.em, align 8
  %i.eo = and i8 %i.en, 96
  %i.ep = icmp eq i8 %i.eo, 64
  br i1 %i.ep, label %bb.ag, label %IP_ECN_decapsulate.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr i8, ptr %1, i64 140       ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = xor i32 %i.ek, -1
  %i.et = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.er, i32 %i.es) #14, !srcloc !21
  %i.eu = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.et, i32 %i.el) #14, !srcloc !21
  store i32 %i.eu, ptr %i.eq, align 4
  br label %IP_ECN_decapsulate.exit.thread

IP_ECN_decapsulate.exit:                          ; preds = %bb.m, %bb.m, %bb.n
  %.not95 = phi i1 [ false, %bb.n ], [ true, %bb.m ], [ true, %bb.m ]
  br i1 %4, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %IP_ECN_decapsulate.exit
  %i.ev = tail call i32 @net_ratelimit() #13
  %.not94 = icmp eq i32 %i.ev, 0
  br i1 %.not94, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ew = getelementptr i8, ptr %i.bi, i64 12
  %i.ex = load i8, ptr %i.bt, align 1
  %i.ey = zext i8 %i.ex to i32
  %i.ez = tail call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %i.ew, i32 noundef %i.ey) #15 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %IP_ECN_decapsulate.exit
  br i1 %.not95, label %IP_ECN_decapsulate.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = load ptr, ptr %i.ab, align 8
  %i.fb = getelementptr i8, ptr %i.fa, i64 656    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fb, ptr elementtype(i64) %i.fb) #12, !srcloc !12
  %i.fc = load ptr, ptr %i.ab, align 8
  %i.fd = getelementptr i8, ptr %i.fc, i64 584    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fd, ptr elementtype(i64) %i.fd) #12, !srcloc !12
  br label %bb.as

IP_ECN_decapsulate.exit.thread:                   ; preds = %bb.s, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %skb_protocol.exit.i9.i.i, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.m, %bb.r, %skb_protocol.exit.i.i.i, %bb.o, %bb.ag, %skb_protocol.exit.i, %bb.aj
  %i.fe = load ptr, ptr %i.ab, align 8
  %i.ff = load i32, ptr %i.aw, align 8
  %i.fg = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off) #14, !srcloc !22
  %i.fh = getelementptr i8, ptr %i.fe, i64 160
  %i.fi = load ptr, ptr %i.fh, align 32
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = add i64 %i.fg, %i.fj
  %i.fl = inttoptr i64 %i.fk to ptr               ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  %i.fn = zext i32 %i.ff to i64
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fm, i64 range(i64 0, 4294967296) %i.fn, ptr elementtype(i64) %i.fm) #12, !srcloc !23
  tail call void asm sideeffect " incq $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fl, ptr elementtype(i64) %i.fl) #12, !srcloc !24
  %i.fo = getelementptr i8, ptr %0, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load ptr, ptr %i.ab, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 264
  %.val102 = load ptr, ptr %i.fr, align 8
  %i.fs = icmp ne ptr %i.fp, %.val102
  tail call void @skb_scrub_packet(ptr noundef %1, i1 noundef zeroext %i.fs) #13
  %i.ft = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 544
  %i.fv = load i16, ptr %i.fu, align 32
  %i.fw = icmp eq i16 %i.fv, 1
  br i1 %i.fw, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %IP_ECN_decapsulate.exit.thread
  %i.fx = tail call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef %i.ft) #13
  store i16 %i.fx, ptr %i.ao, align 4
  %.val104 = load ptr, ptr %i.b, align 8          ; 2 uses
  %i.fy = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 8             ; 2 uses
  %i.ga = lshr i8 %i.fz, 5
  %i.gb = and i8 %i.ga, 3
  switch i8 %i.gb, label %skb_postpull_rcsum.exit [
    i8 2, label %bb.am
    i8 3, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr i8, ptr %1, i64 186
  %.val103 = load i16, ptr %i.gc, align 2
  %i.gd = zext i16 %.val103 to i64
  %i.ge = getelementptr i8, ptr %.val104, i64 %i.gd
  %i.gf = getelementptr i8, ptr %1, i64 140       ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = sub i32 0, %i.gg
  %i.gi = tail call i32 @csum_partial(ptr noundef %i.ge, i32 noundef 14, i32 noundef %i.gh) #13
  %i.gj = sub i32 0, %i.gi
  store i32 %i.gj, ptr %i.gf, align 4
  br label %skb_postpull_rcsum.exit

bb.an:                                            ; preds = %bb.al
  %i.gk = getelementptr i8, ptr %1, i64 140
  %i.gl = load i16, ptr %i.gk, align 4
  %i.gm = zext i16 %i.gl to i32
  %.val2.i = load ptr, ptr %i.ag, align 8
  %i.gn = ptrtoint ptr %.val2.i to i64
  %i.go = ptrtoint ptr %.val104 to i64
  %.neg.i = sub i64 %i.go, %i.gn
  %.neg3.i = trunc i64 %.neg.i to i32
  %i.gp = add i32 %.neg3.i, %i.gm
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %bb.ao, label %skb_postpull_rcsum.exit

bb.ao:                                            ; preds = %bb.an
  %i.gr = and i8 %i.fz, -97
  store i8 %i.gr, ptr %i.fy, align 8
  br label %skb_postpull_rcsum.exit

bb.ap:                                            ; preds = %IP_ECN_decapsulate.exit.thread
  %i.gs = getelementptr i8, ptr %1, i64 16
  store ptr %i.ft, ptr %i.gs, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ap
  %.not97 = icmp eq ptr %3, null
  br i1 %.not97, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %skb_postpull_rcsum.exit
  %i.gt = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = or i32 %i.gu, 2097152
  store i32 %i.gv, ptr %i.gt, align 1
  %i.gw = ptrtoint ptr %3 to i64
  %i.gx = getelementptr i8, ptr %1, i64 88
  store i64 %i.gw, ptr %i.gx, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %skb_postpull_rcsum.exit
  %i.gy = getelementptr i8, ptr %0, i64 192
  %i.gz = tail call i32 @gro_cells_receive(ptr noundef %i.gy, ptr noundef %1) #13 ; 0 uses
  br label %bb.av

bb.as:                                            ; preds = %bb.ak, %pskb_inet_may_pull.exit.thread109, %bb.f, %bb.b
  %.not98 = icmp eq ptr %3, null
  br i1 %.not98, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @dst_release(ptr noundef nonnull %3) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %1, i32 noundef 2) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @ip_tunnel_encap_add_ops(ptr noundef %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.b ; 2 uses
  %i.d = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr %0, ptr null, ptr elementtype(i64) %i.c) #12, !srcloc !25
  %.not = icmp ne ptr %i.d, null
  %i.e = sext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -34, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @ip_tunnel_encap_del_ops(ptr noundef %0, i32 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.b ; 2 uses
  %i.d = tail call ptr asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.c, ptr null, ptr %0, ptr elementtype(i64) %i.c) #12, !srcloc !26
  %i.e = icmp ne ptr %i.d, %0
  %i.f = sext i1 %i.e to i32
  tail call void @synchronize_net() #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ -34, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @ip_tunnel_encap_setup(ptr nofree noundef captures(none) initializes((164, 172)) %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 164        ; 2 uses
  store i64 0, ptr %i.a, align 4
  %i.b = load i16, ptr %1, align 2                ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %ip_encap_hlen.exit.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i16 %i.b, 7
  br i1 %i.d, label %ip_encap_hlen.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__rcu_read_lock() #13
  %i.e = load i16, ptr %1, align 2
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.f
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ip_encap_hlen.exit.thread22, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.i, null
  br i1 %.not14.i, label %ip_encap_hlen.exit.thread22, label %ip_encap_hlen.exit, !prof !13

ip_encap_hlen.exit.thread22:                      ; preds = %bb.d, %bb.c
  tail call void @__rcu_read_unlock() #13
  br label %ip_encap_hlen.exit.thread

ip_encap_hlen.exit:                               ; preds = %bb.d
  %i.j = tail call i64 %i.i(ptr noundef %1) #13, !inline_history !0
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  tail call void @__rcu_read_unlock() #13
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %ip_encap_hlen.exit.thread, label %ip_encap_hlen.exit.ip_encap_hlen.exit.thread19_crit_edge

ip_encap_hlen.exit.ip_encap_hlen.exit.thread19_crit_edge: ; preds = %ip_encap_hlen.exit
  %.pre = load i16, ptr %1, align 2
  br label %ip_encap_hlen.exit.thread19

ip_encap_hlen.exit.thread19:                      ; preds = %ip_encap_hlen.exit.ip_encap_hlen.exit.thread19_crit_edge, %bb.a
  %i.m = phi i16 [ %.pre, %ip_encap_hlen.exit.ip_encap_hlen.exit.thread19_crit_edge ], [ 0, %bb.a ]
  %.0.i21 = phi i32 [ %i.k, %ip_encap_hlen.exit.ip_encap_hlen.exit.thread19_crit_edge ], [ 0, %bb.a ] ; 2 uses
  store i16 %i.m, ptr %i.a, align 4
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i16, ptr %i.n, align 2
  %i.p = getelementptr i8, ptr %0, i64 168
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %1, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %i.s = getelementptr i8, ptr %0, i64 170
  store i16 %i.r, ptr %i.s, align 2
  %i.t = getelementptr i8, ptr %1, i64 2
  %i.u = load i16, ptr %i.t, align 2
  %i.v = getelementptr i8, ptr %0, i64 166
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr i8, ptr %0, i64 156
  store i32 %.0.i21, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %0, i64 60
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, %.0.i21
  %i.aa = getelementptr i8, ptr %0, i64 160
  store i32 %i.z, ptr %i.aa, align 8
  br label %ip_encap_hlen.exit.thread

ip_encap_hlen.exit.thread:                        ; preds = %bb.b, %ip_encap_hlen.exit.thread22, %ip_encap_hlen.exit, %ip_encap_hlen.exit.thread19
  %.0 = phi i32 [ 0, %ip_encap_hlen.exit.thread19 ], [ %i.k, %ip_encap_hlen.exit ], [ -22, %ip_encap_hlen.exit.thread22 ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ip_md_tunnel_xmit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %4 = alloca %struct.flowi4, align 8             ; 16 uses
  store i8 %2, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !14
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val104 = load i64, ptr %i.b, align 8
  %i.c = and i64 %.val104, -2                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 56
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 128
  %.not6.i.i = icmp eq i16 %i.g, 0
  br i1 %.not6.i.i, label %skb_metadata_dst.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 136
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %skb_metadata_dst.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.d, i64 144
  br label %skb_tunnel_info.exit

skb_metadata_dst.exit.thread.i:                   ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 128
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not16.i = icmp eq ptr %i.m, null
  br i1 %.not16.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %skb_metadata_dst.exit.thread.i
  %i.n = load i16, ptr %i.m, align 8
  switch i16 %i.n, label %.critedge [
    i16 2, label %bb.f
    i16 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.o = getelementptr i8, ptr %i.m, i64 48
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %bb.d, %bb.f
  %.0.i = phi ptr [ %i.k, %bb.d ], [ %i.o, %bb.f ] ; 14 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %.critedge, label %bb.g, !prof !27

bb.g:                                             ; preds = %skb_tunnel_info.exit
  %i.p = getelementptr i8, ptr %.0.i, i64 89
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 3
  %or.cond144 = icmp eq i8 %i.r, 1
  br i1 %or.cond144, label %bb.h, label %.critedge, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr i8, ptr %0, i64 176
  %.val106 = load i16, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %.val107 = load ptr, ptr %i.u, align 8
  %i.v = zext i16 %.val106 to i64
  %i.w = getelementptr i8, ptr %.val107, i64 %i.v ; 7 uses
  %i.x = getelementptr i8, ptr %.0.i, i64 56
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %0, i64 180
  %i.ab = load i16, ptr %i.aa, align 4
  switch i16 %i.ab, label %bb.l [
    i16 8, label %bb.j
    i16 -8826, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.w, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.val = load i16, ptr %i.w, align 2
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.val)
  %i.af = lshr i16 %i.ae, 4
  %i.ag = trunc i16 %i.af to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %.088 = phi i8 [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ 1, %bb.i ], [ %i.y, %bb.h ]
  %i.ah = getelementptr i8, ptr %.0.i, i64 8
  %i.ai = getelementptr i8, ptr %.0.i, i64 12     ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = load i32, ptr %i.ah, align 8
  %i.al = load i64, ptr %.0.i, align 8
  %i.am = lshr i64 %i.al, 32
  %i.an = trunc nuw i64 %i.am to i32
  %i.ao = and i8 %.088, -4                        ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 2656      ; 4 uses
  %i.aq = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %0, i64 129
  %i.at = load i32, ptr %i.as, align 1
  %i.au = and i32 %i.at, 1536
  %or.cond.i = icmp eq i32 %i.au, 0
  br i1 %or.cond.i, label %bb.m, label %skb_get_hash.exit

bb.m:                                             ; preds = %bb.l
  tail call void @__skb_get_hash_net(ptr noundef null, ptr noundef %0) #13
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %bb.l, %bb.m
  %i.av = getelementptr i8, ptr %0, i64 152
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %.0.i, i64 62
  %i.ay = load i8, ptr %i.ax, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  store i32 %i.aj, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store i32 %i.ak, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.ao, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %2, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.an, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ar, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.aw, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 %i.ay, ptr %i.bg, align 1
  %.not98 = icmp eq i32 %3, 0
  br i1 %.not98, label %bb.n, label %ip_encap_hlen.exit

bb.n:                                             ; preds = %skb_get_hash.exit
  %i.bh = getelementptr i8, ptr %.0.i, i64 64     ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %ip_encap_hlen.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp ugt i16 %i.bi, 7
  br i1 %i.bk, label %ip_encap_hlen.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__rcu_read_lock() #13
  %i.bl = load i16, ptr %i.bh, align 8
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.bm
  %i.bo = load volatile ptr, ptr %i.bn, align 8   ; 2 uses
  %.not.i109 = icmp eq ptr %i.bo, null
  br i1 %.not.i109, label %.critedge.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.bp, null
  br i1 %.not14.i, label %.critedge.i, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call i64 %i.bp(ptr noundef %i.bh) #13, !inline_history !0
  %i.br = trunc i64 %i.bq to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %bb.q, %bb.p
  %.011.i = phi i32 [ %i.br, %bb.r ], [ -22, %bb.q ], [ -22, %bb.p ]
  tail call void @__rcu_read_unlock() #13
  br label %ip_encap_hlen.exit

ip_encap_hlen.exit:                               ; preds = %.critedge.i, %bb.o, %bb.n, %skb_get_hash.exit
  %.0 = phi i32 [ %3, %skb_get_hash.exit ], [ %.011.i, %.critedge.i ], [ 0, %bb.n ], [ -22, %bb.o ]
  %i.bs = getelementptr i8, ptr %.0.i, i64 64     ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %ip_tunnel_encap.exit.thread125, label %bb.s

bb.s:                                             ; preds = %ip_encap_hlen.exit
  %i.bv = icmp ugt i16 %i.bt, 7
  br i1 %i.bv, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__rcu_read_lock() #13
  %i.bw = load i16, ptr %i.bs, align 8
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.bx
  %i.bz = load volatile ptr, ptr %i.by, align 8   ; 2 uses
  %.not.i111 = icmp eq ptr %i.bz, null
  br i1 %.not.i111, label %ip_tunnel_encap.exit.thread127, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.cb, null
  br i1 %.not17.i, label %ip_tunnel_encap.exit.thread127, label %ip_tunnel_encap.exit, !prof !13

ip_tunnel_encap.exit.thread127:                   ; preds = %bb.u, %bb.t
  tail call void @__rcu_read_unlock() #13
  br label %.critedge

ip_tunnel_encap.exit:                             ; preds = %bb.u
  %i.cc = call i32 %i.cb(ptr noundef %0, ptr noundef %i.bs, ptr noundef nonnull %i.a, ptr noundef nonnull %4) #13, !inline_history !1
  call void @__rcu_read_unlock() #13
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.critedge, label %ip_tunnel_encap.exit.thread125

ip_tunnel_encap.exit.thread125:                   ; preds = %ip_encap_hlen.exit, %ip_tunnel_encap.exit
  %.val108 = load i32, ptr %i.aq, align 8
  %.not.i114 = icmp eq i32 %.val108, 0
  br i1 %.not.i114, label %ip_tunnel_dst_cache_usable.exit, label %.thread.thread

ip_tunnel_dst_cache_usable.exit:                  ; preds = %ip_tunnel_encap.exit.thread125
  %i.ce = getelementptr i8, ptr %.0.i, i64 40
  %i.cf = load volatile i64, ptr %i.ce, align 8
  %.in.in.i = and i64 %i.cf, 8192
  %.in.not.i = icmp eq i64 %.in.in.i, 0
  br i1 %.in.not.i, label %bb.v, label %.thread.thread163

bb.v:                                             ; preds = %ip_tunnel_dst_cache_usable.exit
  %i.cg = getelementptr i8, ptr %.0.i, i64 72
  %i.ch = call ptr @dst_cache_get_ip4(ptr noundef %i.cg, ptr noundef nonnull %i.ba) #13 ; 2 uses
  %.not99 = icmp eq ptr %i.ch, null
  br i1 %.not99, label %.thread, label %.thread139

.thread:                                          ; preds = %bb.v
  %i.ci = load ptr, ptr %i.ap, align 8
  %i.cj = call ptr @ip_route_output_flow(ptr noundef %i.ci, ptr noundef nonnull %4, ptr noundef null) #13 ; 3 uses
  %i.ck = icmp ugt ptr %i.cj, inttoptr (i64 -4096 to ptr)
  br i1 %i.ck, label %bb.w, label %bb.x

.thread.thread163:                                ; preds = %ip_tunnel_dst_cache_usable.exit
  %i.cl = load ptr, ptr %i.ap, align 8
  %i.cm = call ptr @ip_route_output_flow(ptr noundef %i.cl, ptr noundef nonnull %4, ptr noundef null) #13 ; 2 uses
  %i.cn = icmp ugt ptr %i.cm, inttoptr (i64 -4096 to ptr)
  br i1 %i.cn, label %bb.w, label %.thread139

.thread.thread:                                   ; preds = %ip_tunnel_encap.exit.thread125
  %i.co = load ptr, ptr %i.ap, align 8
  %i.cp = call ptr @ip_route_output_flow(ptr noundef %i.co, ptr noundef nonnull %4, ptr noundef null) #13 ; 2 uses
  %i.cq = icmp ugt ptr %i.cp, inttoptr (i64 -4096 to ptr)
  br i1 %i.cq, label %bb.w, label %.thread139

bb.w:                                             ; preds = %.thread.thread163, %.thread.thread, %.thread
  %i.cr = getelementptr i8, ptr %1, i64 688       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cr, ptr elementtype(i64) %i.cr) #12, !srcloc !12
  br label %.critedge

bb.x:                                             ; preds = %.thread
  %i.cs = getelementptr i8, ptr %.0.i, i64 72
  %i.ct = load i32, ptr %i.ba, align 8
  call void @dst_cache_set_ip4(ptr noundef %i.cs, ptr noundef %i.cj, i32 noundef %i.ct) #13
  br label %.thread139

.thread139:                                       ; preds = %.thread.thread163, %.thread.thread, %bb.x, %bb.v
  %.1 = phi ptr [ %i.ch, %bb.v ], [ %i.cj, %bb.x ], [ %i.cp, %.thread.thread ], [ %i.cm, %.thread.thread163 ] ; 9 uses
  %i.cu = load ptr, ptr %.1, align 8
  %i.cv = icmp eq ptr %i.cu, %1
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread139
  call void @dst_release(ptr noundef %.1) #13
  %i.cw = getelementptr i8, ptr %1, i64 624       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cw, ptr elementtype(i64) %i.cw) #12, !srcloc !12
  br label %.critedge

bb.z:                                             ; preds = %.thread139
  %i.cx = getelementptr i8, ptr %.0.i, i64 40
  %i.cy = load volatile i64, ptr %i.cx, align 8
  %i.cz = trunc i64 %i.cy to i16
  %i.da = lshr i16 %i.cz, 2
  %spec.select = and i16 %i.da, 64                ; 2 uses
  %i.db = load i32, ptr %i.ai, align 4
  %i.dc = call fastcc i32 @tnl_update_pmtu(ptr noundef %1, ptr noundef %0, ptr noundef %.1, i16 noundef zeroext %spec.select, ptr noundef %i.w, i32 noundef %.0, i32 noundef %i.db, i1 noundef zeroext true) #16, !srcloc !29
  %.not100 = icmp eq i32 %i.dc, 0
  br i1 %.not100, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @dst_release(ptr noundef %.1) #13
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.dd = getelementptr i8, ptr %0, i64 180       ; 2 uses
  %i.de = load i16, ptr %i.dd, align 4            ; 3 uses
  switch i16 %i.de, label %skb_protocol.exit.i.i [
    i16 -22392, label %bb.ac
    i16 129, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.df = call i32 @__vlan_get_protocol_offset(ptr noundef %0, i16 noundef zeroext %i.de, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i = trunc i32 %i.df to i16
  br label %skb_protocol.exit.i.i

skb_protocol.exit.i.i:                            ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i.i, %bb.ac ], [ %i.de, %bb.ab ]
  switch i16 %.0.i.i.i.i.i.i, label %ip_tunnel_ecn_encap.exit [
    i16 8, label %bb.ad
    i16 -8826, label %bb.ae
  ]

bb.ad:                                            ; preds = %skb_protocol.exit.i.i
  %i.dg = getelementptr i8, ptr %i.w, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  br label %ip_tunnel_ecn_encap.exit

bb.ae:                                            ; preds = %skb_protocol.exit.i.i
  %.val.i.i = load i16, ptr %i.w, align 2
  %i.di = call i16 @llvm.bswap.i16(i16 %.val.i.i)
  %i.dj = lshr i16 %i.di, 4
  %i.dk = trunc i16 %i.dj to i8
  br label %ip_tunnel_ecn_encap.exit

ip_tunnel_ecn_encap.exit:                         ; preds = %skb_protocol.exit.i.i, %bb.ad, %bb.ae
  %.0.i.i = phi i8 [ %i.dh, %bb.ad ], [ %i.dk, %bb.ae ], [ 0, %skb_protocol.exit.i.i ]
  %i.dl = and i8 %.0.i.i, 3                       ; 2 uses
  %.not.i.i118 = icmp eq i8 %i.dl, 3
  %i.dm = select i1 %.not.i.i118, i8 2, i8 %i.dl
  %i.dn = or disjoint i8 %i.dm, %i.ao
  %i.do = getelementptr i8, ptr %.0.i, i64 57
  %i.dp = load i8, ptr %i.do, align 1             ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %ip_tunnel_ecn_encap.exit
  %i.dr = load i16, ptr %i.dd, align 4
  switch i16 %i.dr, label %bb.ai [
    i16 8, label %bb.ag
    i16 -8826, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr i8, ptr %i.w, i64 8
  %i.dt = load i8, ptr %i.ds, align 4
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.du = getelementptr i8, ptr %i.w, i64 7
  %i.dv = load i8, ptr %i.du, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.dw = call fastcc i32 @ip4_dst_hoplimit(ptr noundef %.1) #16, !srcloc !30
  %i.dx = trunc i32 %i.dw to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah, %ip_tunnel_ecn_encap.exit
  %.087 = phi i8 [ %i.dt, %bb.ag ], [ %i.dv, %bb.ah ], [ %i.dx, %bb.ai ], [ %i.dp, %ip_tunnel_ecn_encap.exit ]
  %i.dy = load ptr, ptr %.1, align 8              ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 180
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = zext i16 %i.ea to i32
  %i.ec = getelementptr i8, ptr %i.dy, i64 60
  %i.ed = load volatile i16, ptr %i.ec, align 4
  %i.ee = zext i16 %i.ed to i32
  %i.ef = add nuw nsw i32 %i.ee, %i.eb
  %i.eg = and i32 %i.ef, 131056
  %i.eh = getelementptr i8, ptr %.1, i64 60
  %i.ei = load i16, ptr %i.eh, align 4
  %i.ej = zext i16 %i.ei to i32
  %i.ek = add nuw nsw i32 %i.ej, 36
  %i.el = add nuw nsw i32 %i.ek, %i.eg            ; 2 uses
  %i.em = getelementptr i8, ptr %0, i64 126
  %i.en = load i8, ptr %i.em, align 2
  %i.eo = and i8 %i.en, 1
  %.not.i.i119 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i119, label %.skb_header_cloned.exit_crit_edge.i, label %bb.ak

.skb_header_cloned.exit_crit_edge.i:              ; preds = %bb.aj
  %.val30.i.pre.i = load ptr, ptr %i.u, align 8
  br label %skb_header_cloned.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr i8, ptr %0, i64 192
  %.val.i.i120 = load i32, ptr %i.ep, align 8
  %.val5.i.i = load ptr, ptr %i.u, align 8        ; 2 uses
  %i.eq = zext i32 %.val.i.i120 to i64
  %i.er = getelementptr i8, ptr %.val5.i.i, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 32
  %i.et = load volatile i32, ptr %i.es, align 4   ; 2 uses
  %i.eu = and i32 %i.et, 65535
  %i.ev = ashr i32 %i.et, 16
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = icmp ne i32 %i.ew, 1
  %i.ey = zext i1 %i.ex to i32
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %bb.ak, %.skb_header_cloned.exit_crit_edge.i
  %.val30.i.i = phi ptr [ %.val5.i.i, %bb.ak ], [ %.val30.i.pre.i, %.skb_header_cloned.exit_crit_edge.i ]
  %.0.i.i121 = phi i32 [ %i.ey, %bb.ak ], [ 0, %.skb_header_cloned.exit_crit_edge.i ]
  %i.ez = getelementptr i8, ptr %0, i64 208
  %.val31.i.i = load ptr, ptr %i.ez, align 8
  %i.fa = ptrtoint ptr %.val31.i.i to i64
  %i.fb = ptrtoint ptr %.val30.i.i to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %spec.select.i.i = call i32 @llvm.usub.sat.i32(i32 %i.el, i32 %i.fd) ; 2 uses
  %i.fe = or i32 %spec.select.i.i, %.0.i.i121
  %or.cond.not.i.i = icmp eq i32 %i.fe, 0
  br i1 %or.cond.not.i.i, label %skb_cow_head.exit.thread, label %skb_cow_head.exit

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %i.ff = add nuw nsw i32 %spec.select.i.i, 63
  %i.fg = and i32 %i.ff, 524224
  %i.fh = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %i.fg, i32 noundef 0, i32 noundef 2080) #13
  %.not101 = icmp eq i32 %i.fh, 0
  br i1 %.not101, label %skb_cow_head.exit.thread, label %bb.al

bb.al:                                            ; preds = %skb_cow_head.exit
  call void @dst_release(ptr noundef %.1) #13
  %i.fi = getelementptr i8, ptr %1, i64 608       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fi, ptr elementtype(i64) %i.fi) #12, !srcloc !12
  br label %bb.an

skb_cow_head.exit.thread:                         ; preds = %skb_header_cloned.exit.i, %skb_cow_head.exit
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.el, i32 512) ; 2 uses
  %i.fj = getelementptr i8, ptr %1, i64 60        ; 2 uses
  %i.fk = load volatile i16, ptr %i.fj, align 4
  %i.fl = zext i16 %i.fk to i32
  %i.fm = icmp samesign ugt i32 %spec.store.select.i, %i.fl
  br i1 %i.fm, label %bb.am, label %ip_tunnel_adj_headroom.exit

bb.am:                                            ; preds = %skb_cow_head.exit.thread
  %i.fn = trunc nuw nsw i32 %spec.store.select.i to i16
  store volatile i16 %i.fn, ptr %i.fj, align 4
  br label %ip_tunnel_adj_headroom.exit

ip_tunnel_adj_headroom.exit:                      ; preds = %skb_cow_head.exit.thread, %bb.am
  %i.fo = load i32, ptr %i.ba, align 8
  %i.fp = load i32, ptr %i.az, align 4
  %i.fq = load i8, ptr %i.a, align 1
  %i.fr = load ptr, ptr %i.ap, align 8
  %i.fs = getelementptr i8, ptr %1, i64 264
  %.val103 = load ptr, ptr %i.fs, align 8
  %i.ft = icmp ne ptr %i.fr, %.val103
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %.1, ptr noundef %0, i32 noundef %i.fo, i32 noundef %i.fp, i8 noundef zeroext %i.fq, i8 noundef zeroext %i.dn, i8 noundef zeroext %.087, i16 noundef zeroext %spec.select, i1 noundef zeroext %i.ft, i16 noundef zeroext 0) #13
  br label %bb.ao

.critedge:                                        ; preds = %bb.s, %bb.a, %skb_metadata_dst.exit.thread.i, %bb.e, %ip_tunnel_encap.exit.thread127, %bb.g, %skb_tunnel_info.exit, %ip_tunnel_encap.exit, %bb.aa, %bb.y, %bb.w
  %i.fu = getelementptr i8, ptr %1, i64 592       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fu, ptr elementtype(i64) %i.fu) #12, !srcloc !12
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %.critedge
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %ip_tunnel_adj_headroom.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -7, 1) i32 @tnl_update_pmtu(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  br i1 %7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 2784
  %i.b = load i32, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %5, %bb.a ]   ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 112
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 544        ; 2 uses
  %i.g = load i16, ptr %i.f, align 32
  %i.h = icmp eq i16 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 180
  %i.j = load i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = add i32 %i.c, %i.l
  %i.n = sub i32 %i.e, %i.m                       ; 2 uses
  %.not60 = icmp eq i16 %3, 0
  br i1 %.not60, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 32             ; 3 uses
  %i.s = icmp eq ptr %i.r, @ip6_mtu
  br i1 %i.s, label %bb.g, label %bb.h, !prof !34

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @ip6_mtu(ptr noundef %2) #13
  br label %dst_mtu.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq ptr %i.r, @ipv4_mtu
  br i1 %i.u, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @ipv4_mtu(ptr noundef %2) #13
  br label %dst_mtu.exit

bb.j:                                             ; preds = %bb.h
  %i.w = tail call i32 %i.r(ptr noundef %2) #13, !inline_history !31
  br label %dst_mtu.exit

dst_mtu.exit:                                     ; preds = %bb.g, %bb.i, %bb.j
  %i.x = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  %i.y = load i16, ptr %i.f, align 32
  %i.z = icmp eq i16 %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %dst_mtu.exit
  %i.aa = getelementptr i8, ptr %0, i64 180
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = zext i16 %i.ab to i32
  br label %bb.l

bb.l:                                             ; preds = %dst_mtu.exit, %bb.k
  %i.ad = phi i32 [ %i.ac, %bb.k ], [ 0, %dst_mtu.exit ]
  %i.ae = add i32 %i.x, -20
  %i.af = add i32 %i.c, %i.ad
  %i.ag = sub i32 %i.ae, %i.af
  br label %dst_mtu.exit76

bb.m:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %1, i64 88
  %.val71 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.val71, -2                     ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %skb_valid_dst.exit.thread, label %skb_valid_dst.exit

skb_valid_dst.exit:                               ; preds = %bb.m
  %i.aj = inttoptr i64 %i.ai to ptr               ; 5 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 56
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = and i16 %i.al, 128
  %.not3.i = icmp eq i16 %i.am, 0
  br i1 %.not3.i, label %bb.n, label %skb_valid_dst.exit.thread

bb.n:                                             ; preds = %skb_valid_dst.exit
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 32           ; 3 uses
  %i.ar = icmp eq ptr %i.aq, @ip6_mtu
  br i1 %i.ar, label %bb.o, label %bb.p, !prof !34

bb.o:                                             ; preds = %bb.n
  %i.as = tail call i32 @ip6_mtu(ptr noundef nonnull %i.aj) #13
  br label %dst_mtu.exit76

bb.p:                                             ; preds = %bb.n
  %i.at = icmp eq ptr %i.aq, @ipv4_mtu
  br i1 %i.at, label %bb.q, label %bb.r, !prof !34

bb.q:                                             ; preds = %bb.p
  %i.au = tail call i32 @ipv4_mtu(ptr noundef nonnull %i.aj) #13
  br label %dst_mtu.exit76

bb.r:                                             ; preds = %bb.p
  %i.av = tail call i32 %i.aq(ptr noundef nonnull %i.aj) #13, !inline_history !31
  br label %dst_mtu.exit76

skb_valid_dst.exit.thread:                        ; preds = %bb.m, %skb_valid_dst.exit
  %i.aw = getelementptr i8, ptr %0, i64 56
  %i.ax = load i32, ptr %i.aw, align 8
  br label %dst_mtu.exit76

dst_mtu.exit76:                                   ; preds = %bb.r, %bb.q, %bb.o, %skb_valid_dst.exit.thread, %bb.l
  %.057 = phi i32 [ %i.ag, %bb.l ], [ %i.ax, %skb_valid_dst.exit.thread ], [ %i.as, %bb.o ], [ %i.au, %bb.q ], [ %i.av, %bb.r ] ; 9 uses
  %i.ay = getelementptr i8, ptr %1, i64 88        ; 3 uses
  %.val70 = load i64, ptr %i.ay, align 8
  %i.az = and i64 %.val70, -2                     ; 2 uses
  %.not.i77 = icmp eq i64 %i.az, 0
  br i1 %.not.i77, label %skb_dst_update_pmtu_no_confirm.exit, label %skb_valid_dst.exit79

skb_valid_dst.exit79:                             ; preds = %dst_mtu.exit76
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 56
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 128
  %.not3.i78 = icmp eq i16 %i.bd, 0
  br i1 %.not3.i78, label %bb.s, label %skb_dst_update_pmtu_no_confirm.exit

bb.s:                                             ; preds = %skb_valid_dst.exit79
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 80
  %i.bh = load ptr, ptr %i.bg, align 16           ; 2 uses
  %.not7.i = icmp eq ptr %i.bh, null
  br i1 %.not7.i, label %skb_dst_update_pmtu_no_confirm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.bh(ptr noundef nonnull %i.ba, ptr noundef null, ptr noundef %1, i32 noundef %.057, i1 noundef zeroext false) #13, !inline_history !32
  br label %skb_dst_update_pmtu_no_confirm.exit

skb_dst_update_pmtu_no_confirm.exit:              ; preds = %dst_mtu.exit76, %bb.t, %bb.s, %skb_valid_dst.exit79
  %i.bi = getelementptr i8, ptr %1, i64 180
  %i.bj = load i16, ptr %i.bi, align 4
  switch i16 %i.bj, label %bb.an [
    i16 8, label %bb.u
    i16 -8826, label %bb.x
  ]

bb.u:                                             ; preds = %skb_dst_update_pmtu_no_confirm.exit
  %i.bk = getelementptr i8, ptr %1, i64 192
  %.val74 = load i32, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %1, i64 200
  %.val75 = load ptr, ptr %i.bl, align 8
  %i.bm = zext i32 %.val74 to i64
  %i.bn = getelementptr i8, ptr %.val75, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 4
  %.not91 = icmp eq i16 %i.bp, 0
  br i1 %.not91, label %bb.v, label %bb.an

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr i8, ptr %4, i64 6
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = and i16 %i.br, 64
  %.not = icmp ne i16 %i.bs, 0
  %i.bt = icmp slt i32 %.057, %i.n
  %or.cond64 = select i1 %.not, i1 %i.bt, i1 false
  br i1 %or.cond64, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %.057)
  tail call void @icmp_ndo_send(ptr noundef %1, i32 noundef 3, i32 noundef 4, i32 noundef %i.bu) #13
  br label %bb.an

bb.x:                                             ; preds = %skb_dst_update_pmtu_no_confirm.exit
  %.val69 = load i64, ptr %i.ay, align 8
  %i.bv = and i64 %.val69, -2                     ; 3 uses
  %.not.i81 = icmp eq i64 %i.bv, 0
  br i1 %.not.i81, label %skb_valid_dst.exit83.thread, label %skb_valid_dst.exit83

skb_valid_dst.exit83:                             ; preds = %bb.x
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 56
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = and i16 %i.by, 128
  %.not3.i82 = icmp eq i16 %i.bz, 0
  %spec.select = select i1 %.not3.i82, ptr %i.bw, ptr null
  br label %skb_valid_dst.exit83.thread

skb_valid_dst.exit83.thread:                      ; preds = %skb_valid_dst.exit83, %bb.x
  %i.ca = phi ptr [ null, %bb.x ], [ %spec.select, %skb_valid_dst.exit83 ] ; 3 uses
  br i1 %7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %skb_valid_dst.exit83.thread
  %i.cb = getelementptr i8, ptr %0, i64 2772
  %i.cc = load i32, ptr %i.cb, align 4
  br label %bb.z

bb.z:                                             ; preds = %skb_valid_dst.exit83.thread, %bb.y
  %i.cd = phi i32 [ %i.cc, %bb.y ], [ %6, %skb_valid_dst.exit83.thread ] ; 2 uses
  %.not61 = icmp eq ptr %i.ca, null
  br i1 %.not61, label %dst_metric_set.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = inttoptr i64 %i.bv to ptr               ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 32           ; 3 uses
  %i.cj = icmp eq ptr %i.ci, @ip6_mtu
  br i1 %i.cj, label %bb.ab, label %bb.ac, !prof !34

bb.ab:                                            ; preds = %bb.aa
  %i.ck = tail call i32 @ip6_mtu(ptr noundef %i.ce) #13
  br label %dst_mtu.exit84

bb.ac:                                            ; preds = %bb.aa
  %i.cl = icmp eq ptr %i.ci, @ipv4_mtu
  br i1 %i.cl, label %bb.ad, label %bb.ae, !prof !34

bb.ad:                                            ; preds = %bb.ac
  %i.cm = tail call i32 @ipv4_mtu(ptr noundef %i.ce) #13
  br label %dst_mtu.exit84

bb.ae:                                            ; preds = %bb.ac
  %i.cn = tail call i32 %i.ci(ptr noundef %i.ce) #13, !inline_history !31
  br label %dst_mtu.exit84

dst_mtu.exit84:                                   ; preds = %bb.ab, %bb.ad, %bb.ae
  %i.co = phi i32 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ad ], [ %i.cn, %bb.ae ]
  %i.cp = icmp ult i32 %.057, %i.co
  %i.cq = icmp sgt i32 %.057, 1279
  %or.cond = and i1 %i.cq, %i.cp
  br i1 %or.cond, label %bb.af, label %dst_metric_set.exit

bb.af:                                            ; preds = %dst_mtu.exit84
  %.not62 = icmp eq i32 %i.cd, 0
  %i.cr = and i32 %i.cd, 240
  %i.cs = icmp eq i32 %i.cr, 224
  %or.cond87 = or i1 %.not62, %i.cs
  br i1 %or.cond87, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr i8, ptr %i.ca, i64 164
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = icmp eq i32 %i.cu, 128
  br i1 %i.cv, label %bb.ah, label %dst_metric_set.exit

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.cw = getelementptr i8, ptr %i.ca, i64 216    ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = or i32 %i.cx, 32
  store i32 %i.cy, ptr %i.cw, align 8
  %.val = load i64, ptr %i.ay, align 8
  %i.cz = and i64 %.val, -2
  %i.da = inttoptr i64 %i.cz to ptr               ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8            ; 4 uses
  %.not.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "706: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 706b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 706) #12, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, ptr @.str.2, i32 133, i32 0, i64 16) #12, !srcloc !36
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dd = and i64 %i.dc, 1
  %.not7.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not7.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr i8, ptr %i.da, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call ptr %i.dh(ptr noundef %i.da, i64 noundef %i.dc) #13, !inline_history !33
  br label %dst_metrics_write_ptr.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dj = and i64 %i.dc, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  br label %dst_metrics_write_ptr.exit.i

dst_metrics_write_ptr.exit.i:                     ; preds = %bb.al, %bb.ak
  %.0.i.i = phi ptr [ %i.di, %bb.ak ], [ %i.dk, %bb.al ] ; 2 uses
  %.not.i85 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i85, label %dst_metric_set.exit, label %bb.am

bb.am:                                            ; preds = %dst_metrics_write_ptr.exit.i
  %i.dl = getelementptr i8, ptr %.0.i.i, i64 4
  store i32 %.057, ptr %i.dl, align 4
  br label %dst_metric_set.exit

dst_metric_set.exit:                              ; preds = %bb.am, %dst_metrics_write_ptr.exit.i, %bb.ag, %dst_mtu.exit84, %bb.z
  %i.dm = getelementptr i8, ptr %1, i64 192
  %.val72 = load i32, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %1, i64 200
  %.val73 = load ptr, ptr %i.dn, align 8
  %i.do = zext i32 %.val72 to i64
  %i.dp = getelementptr i8, ptr %.val73, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i16, ptr %i.dq, align 4
  %i.ds = icmp eq i16 %i.dr, 0
  %i.dt = icmp sgt i32 %.057, 1279
  %or.cond3.not.not90 = select i1 %i.ds, i1 %i.dt, i1 false
  %i.du = icmp slt i32 %.057, %i.n
  %or.cond65 = select i1 %or.cond3.not.not90, i1 %i.du, i1 false
  br i1 %or.cond65, label %.critedge, label %bb.an

.critedge:                                        ; preds = %dst_metric_set.exit
  tail call void @icmpv6_ndo_send(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %.057) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %bb.u, %skb_dst_update_pmtu_no_confirm.exit, %dst_metric_set.exit, %.critedge, %bb.w
  %.1 = phi i32 [ -7, %.critedge ], [ -7, %bb.w ], [ 0, %dst_metric_set.exit ], [ 0, %skb_dst_update_pmtu_no_confirm.exit ], [ 0, %bb.u ], [ 0, %bb.v ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ip4_dst_hoplimit(ptr nofree noundef captures(address) %0) unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, -4
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 36
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #13
  %i.g = load volatile ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 264
  %i.i = load volatile ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 1448
  %i.k = load volatile i8, ptr %i.j, align 8
  %i.l = zext i8 %i.k to i32
  tail call void @__rcu_read_unlock() #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iptunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ip_tunnel_xmit(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %4 = alloca %struct.flowi4, align 8             ; 16 uses
  store i8 %3, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = getelementptr i8, ptr %0, i64 176
  %.val178 = load i16, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 200        ; 5 uses
  %.val179 = load ptr, ptr %i.c, align 8
  %i.d = zext i16 %.val178 to i64
  %i.e = getelementptr i8, ptr %.val179, i64 %i.d ; 9 uses
  %i.f = getelementptr i8, ptr %1, i64 2772
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp ne i32 %i.g, 0                      ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %i.j = load i16, ptr %i.i, align 4              ; 3 uses
  switch i16 %i.j, label %skb_protocol.exit [
    i16 -22392, label %bb.b
    i16 129, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = tail call i32 @__vlan_get_protocol_offset(ptr noundef %0, i16 noundef zeroext %i.j, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i = trunc i32 %i.k to i16
  br label %skb_protocol.exit

skb_protocol.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i, %bb.b ], [ %i.j, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !14
  %i.l = getelementptr i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %2, i64 12
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.w

bb.c:                                             ; preds = %skb_protocol.exit
  %i.q = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val175 = load i64, ptr %i.q, align 8
  %i.r = and i64 %.val175, -2                     ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 10 uses
  %.not159 = icmp eq i64 %i.r, 0
  br i1 %.not159, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %1, i64 696        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, ptr elementtype(i64) %i.t) #12, !srcloc !12
  br label %dst_link_failure.exit202

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.s, i64 56
  %i.v = load i16, ptr %i.u, align 8
  %i.w = and i16 %i.v, 128
  %.not6.i.i = icmp eq i16 %i.w, 0
  br i1 %.not6.i.i, label %skb_metadata_dst.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.s, i64 136
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %skb_metadata_dst.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.s, i64 144
  br label %skb_tunnel_info.exit

skb_metadata_dst.exit.thread.i:                   ; preds = %bb.f, %bb.e
  %i.ab = getelementptr i8, ptr %i.s, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %skb_tunnel_info.exit.thread, label %bb.h

bb.h:                                             ; preds = %skb_metadata_dst.exit.thread.i
  %i.ad = load i16, ptr %i.ac, align 8
  switch i16 %i.ad, label %skb_tunnel_info.exit.thread [
    i16 2, label %bb.i
    i16 4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ae = getelementptr i8, ptr %i.ac, i64 48
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %bb.g, %bb.i
  %.0.i = phi ptr [ %i.aa, %bb.g ], [ %i.ae, %bb.i ] ; 6 uses
  %.not160 = icmp eq ptr %.0.i, null
  br i1 %.not160, label %skb_tunnel_info.exit.thread, label %bb.j

bb.j:                                             ; preds = %skb_tunnel_info.exit
  %i.af = getelementptr i8, ptr %.0.i, i64 89
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 3
  %or.cond237 = icmp eq i8 %i.ah, 1
  br i1 %or.cond237, label %bb.k, label %skb_tunnel_info.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %.0.i, i64 12
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not162 = icmp eq i32 %i.aj, 0
  br i1 %.not162, label %skb_tunnel_info.exit.thread, label %rt_nexthop.exit

skb_tunnel_info.exit.thread:                      ; preds = %skb_metadata_dst.exit.thread.i, %bb.h, %bb.k, %bb.j, %skb_tunnel_info.exit
  %.0.i206 = phi ptr [ null, %skb_tunnel_info.exit ], [ %.0.i, %bb.k ], [ null, %skb_metadata_dst.exit.thread.i ], [ %.0.i, %bb.j ], [ null, %bb.h ] ; 3 uses
  switch i16 %.0.i.i.i.i, label %dst_link_failure.exit202 [
    i16 8, label %bb.l
    i16 -8826, label %bb.n
  ]

bb.l:                                             ; preds = %skb_tunnel_info.exit.thread
  %i.ak = getelementptr i8, ptr %i.e, i64 16
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %i.s, i64 152
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.m, label %rt_nexthop.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.s, i64 156
  %i.aq = load i32, ptr %i.ap, align 4
  br label %rt_nexthop.exit

bb.n:                                             ; preds = %skb_tunnel_info.exit.thread
  %i.ar = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %.val170 = load i16, ptr %i.ar, align 8
  %.val171 = load ptr, ptr %i.c, align 8
  %i.as = zext i16 %.val170 to i64
  %i.at = getelementptr i8, ptr %.val171, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %i.av = getelementptr i8, ptr %i.s, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr %i.ay(ptr noundef nonnull %i.s, ptr noundef null, ptr noundef %i.au) #13, !inline_history !37 ; 5 uses
  %i.ba = icmp ugt ptr %i.az, inttoptr (i64 -4096 to ptr)
  %.not163236 = icmp eq ptr %i.az, null
  %.not163 = or i1 %i.ba, %.not163236
  br i1 %.not163, label %dst_link_failure.exit202, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %i.az, i64 392    ; 2 uses
  %i.bc = tail call i32 @__ipv6_addr_type(ptr noundef %i.bb) #13
  %i.bd = and i32 %i.bc, 65535                    ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val = load i16, ptr %i.ar, align 8
  %.val169 = load ptr, ptr %i.c, align 8
  %i.bf = zext i16 %.val to i64
  %i.bg = getelementptr i8, ptr %.val169, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 24     ; 2 uses
  %i.bi = tail call i32 @__ipv6_addr_type(ptr noundef %i.bh) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0132 = phi ptr [ %i.bh, %bb.p ], [ %i.bb, %bb.o ]
  %.0130 = phi i32 [ %i.bi, %bb.p ], [ %i.bd, %bb.o ]
  %i.bj = and i32 %.0130, 128
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr i8, ptr %.0132, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0134 = phi i32 [ %i.bm, %bb.r ], [ 0, %bb.q ]
  %i.bn = getelementptr i8, ptr %i.az, i64 72     ; 3 uses
  %i.bo = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bn, i32 -1, ptr elementtype(i32) %i.bn) #12, !srcloc !39 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %bb.u, label %neigh_release.exit, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @refcount_warn_saturate(ptr noundef %i.bn, i32 noundef 3) #13
  br label %neigh_release.exit

bb.v:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  tail call void @neigh_destroy(ptr noundef nonnull %i.az) #13
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %bb.t, %bb.u, %bb.v
  br i1 %i.bk, label %bb.bt, label %rt_nexthop.exit

rt_nexthop.exit:                                  ; preds = %neigh_release.exit, %bb.m, %bb.l, %bb.k
  %.0.i205 = phi ptr [ %.0.i206, %bb.m ], [ %.0.i, %bb.k ], [ %.0.i206, %bb.l ], [ %.0.i206, %neigh_release.exit ]
  %.0143 = phi ptr [ %i.s, %bb.m ], [ null, %bb.k ], [ %i.s, %bb.l ], [ null, %neigh_release.exit ]
  %.0140 = phi i1 [ false, %bb.m ], [ true, %bb.k ], [ false, %bb.l ], [ false, %neigh_release.exit ] ; 2 uses
  %.0137 = phi i1 [ %i.h, %bb.m ], [ true, %bb.k ], [ %i.h, %bb.l ], [ %i.h, %neigh_release.exit ]
  %.2 = phi i32 [ %i.aq, %bb.m ], [ %i.aj, %bb.k ], [ %i.al, %bb.l ], [ %.0134, %neigh_release.exit ]
  %spec.select = select i1 %.0140, i1 %.0137, i1 false
  br label %bb.w

bb.w:                                             ; preds = %rt_nexthop.exit, %skb_protocol.exit
  %.1144 = phi ptr [ %.0143, %rt_nexthop.exit ], [ null, %skb_protocol.exit ] ; 2 uses
  %.1141 = phi i1 [ %.0140, %rt_nexthop.exit ], [ false, %skb_protocol.exit ] ; 2 uses
  %.1138 = phi i1 [ %spec.select, %rt_nexthop.exit ], [ %i.h, %skb_protocol.exit ] ; 2 uses
  %.3 = phi i32 [ %.2, %rt_nexthop.exit ], [ %i.o, %skb_protocol.exit ]
  %.0 = phi ptr [ %.0.i205, %rt_nexthop.exit ], [ null, %skb_protocol.exit ] ; 4 uses
  %i.br = getelementptr i8, ptr %2, i64 1
  %i.bs = load i8, ptr %i.br, align 1             ; 3 uses
  %i.bt = and i8 %i.bs, 1
  %.not164 = icmp eq i8 %i.bt, 0
  br i1 %.not164, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i16 %.0.i.i.i.i, label %bb.aa [
    i16 8, label %bb.y
    i16 -8826, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr i8, ptr %i.e, i64 1
  %i.bv = load i8, ptr %i.bu, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.val172 = load i16, ptr %i.e, align 2
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %.val172)
  %i.bx = lshr i16 %i.bw, 4
  %i.by = trunc i16 %i.bx to i8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.w
  %.2139 = phi i1 [ false, %bb.y ], [ false, %bb.z ], [ %.1138, %bb.x ], [ %.1138, %bb.w ] ; 3 uses
  %.0136 = phi i8 [ %i.bv, %bb.y ], [ %i.by, %bb.z ], [ %i.bs, %bb.x ], [ %i.bs, %bb.w ]
  %i.bz = load i32, ptr %i.m, align 4
  %i.ca = getelementptr i8, ptr %1, i64 2748
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i8 %.0136, -4                       ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 2656      ; 3 uses
  %i.ce = getelementptr i8, ptr %1, i64 2752
  %i.cf = load volatile i32, ptr %i.ce, align 8   ; 2 uses
  %i.cg = getelementptr i8, ptr %1, i64 2824
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %0, i64 129
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = and i32 %i.cj, 1536
  %or.cond.i = icmp eq i32 %i.ck, 0
  br i1 %or.cond.i, label %bb.ab, label %skb_get_hash.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @__skb_get_hash_net(ptr noundef null, ptr noundef %0) #13
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %bb.aa, %bb.ab
  %i.cl = getelementptr i8, ptr %0, i64 152
  %i.cm = load i32, ptr %i.cl, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %.not.i183 = icmp eq i32 %i.cf, 0
  br i1 %.not.i183, label %ip_tunnel_init_flow.exit, label %bb.ac

bb.ac:                                            ; preds = %skb_get_hash.exit
  store i32 %i.cf, ptr %4, align 8
  br label %ip_tunnel_init_flow.exit

ip_tunnel_init_flow.exit:                         ; preds = %skb_get_hash.exit, %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  store i32 %.3, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store i32 %i.bz, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.cc, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 %3, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.cb, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ch, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.cm, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.cu, align 1
  %i.cv = getelementptr i8, ptr %1, i64 2788      ; 6 uses
  %i.cw = load i16, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp eq i16 %i.cw, 0
  br i1 %i.cx, label %ip_tunnel_encap.exit.thread213, label %bb.ad

bb.ad:                                            ; preds = %ip_tunnel_init_flow.exit
  %i.cy = icmp ugt i16 %i.cw, 7
  br i1 %i.cy, label %dst_link_failure.exit202, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__rcu_read_lock() #13
  %i.cz = load i16, ptr %i.cv, align 4
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.da
  %i.dc = load volatile ptr, ptr %i.db, align 8   ; 2 uses
  %.not.i184 = icmp eq ptr %i.dc, null
  br i1 %.not.i184, label %ip_tunnel_encap.exit.thread215, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not17.i = icmp eq ptr %i.de, null
  br i1 %.not17.i, label %ip_tunnel_encap.exit.thread215, label %ip_tunnel_encap.exit, !prof !13

ip_tunnel_encap.exit.thread215:                   ; preds = %bb.af, %bb.ae
  tail call void @__rcu_read_unlock() #13
  br label %dst_link_failure.exit202

ip_tunnel_encap.exit:                             ; preds = %bb.af
  %i.df = call i32 %i.de(ptr noundef %0, ptr noundef %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %4) #13, !inline_history !1
  call void @__rcu_read_unlock() #13
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %dst_link_failure.exit202, label %ip_tunnel_encap.exit.thread213

ip_tunnel_encap.exit.thread213:                   ; preds = %ip_tunnel_init_flow.exit, %ip_tunnel_encap.exit
  %or.cond = and i1 %.1141, %.2139                ; 2 uses
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %ip_tunnel_encap.exit.thread213
  %i.dh = getelementptr i8, ptr %0, i64 168
  %.val180 = load i32, ptr %i.dh, align 8
  %.not.i186 = icmp eq i32 %.val180, 0
  br i1 %.not.i186, label %bb.ah, label %ip_tunnel_dst_cache_usable.exit.thread219

bb.ah:                                            ; preds = %bb.ag
  %.not14.i = icmp eq ptr %.0, null
  br i1 %.not14.i, label %ip_tunnel_dst_cache_usable.exit.thread, label %ip_tunnel_dst_cache_usable.exit

ip_tunnel_dst_cache_usable.exit:                  ; preds = %bb.ah
  %i.di = getelementptr i8, ptr %.0, i64 40
  %i.dj = load volatile i64, ptr %i.di, align 8
  %.in.in.i = and i64 %i.dj, 8192
  %.in.not.i = icmp eq i64 %.in.in.i, 0
  br i1 %.in.not.i, label %ip_tunnel_dst_cache_usable.exit.thread, label %ip_tunnel_dst_cache_usable.exit.thread219

ip_tunnel_dst_cache_usable.exit.thread:           ; preds = %bb.ah, %ip_tunnel_dst_cache_usable.exit
  %i.dk = getelementptr i8, ptr %.0, i64 72
  br label %ip_tunnel_dst_cache_usable.exit.thread219.sink.split

bb.ai:                                            ; preds = %ip_tunnel_encap.exit.thread213
  br i1 %.2139, label %bb.aj, label %.thread226

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr i8, ptr %1, i64 2696
  br label %ip_tunnel_dst_cache_usable.exit.thread219.sink.split

ip_tunnel_dst_cache_usable.exit.thread219.sink.split: ; preds = %ip_tunnel_dst_cache_usable.exit.thread, %bb.aj
  %.sink = phi ptr [ %i.dl, %bb.aj ], [ %i.dk, %ip_tunnel_dst_cache_usable.exit.thread ]
  %i.dm = call ptr @dst_cache_get_ip4(ptr noundef %.sink, ptr noundef nonnull %i.co) #13
  br label %ip_tunnel_dst_cache_usable.exit.thread219

ip_tunnel_dst_cache_usable.exit.thread219:        ; preds = %ip_tunnel_dst_cache_usable.exit.thread219.sink.split, %bb.ag, %ip_tunnel_dst_cache_usable.exit
  %.2145 = phi ptr [ %.1144, %bb.ag ], [ %.1144, %ip_tunnel_dst_cache_usable.exit ], [ %i.dm, %ip_tunnel_dst_cache_usable.exit.thread219.sink.split ] ; 2 uses
  %.0142.shrunk = phi i1 [ false, %bb.ag ], [ false, %ip_tunnel_dst_cache_usable.exit ], [ %or.cond, %ip_tunnel_dst_cache_usable.exit.thread219.sink.split ]
  %.not165 = icmp eq ptr %.2145, null
  br i1 %.not165, label %bb.ak, label %.thread231

bb.ak:                                            ; preds = %ip_tunnel_dst_cache_usable.exit.thread219
  %i.dn = load ptr, ptr %i.cd, align 8
  %i.do = call ptr @ip_route_output_flow(ptr noundef %i.dn, ptr noundef nonnull %4, ptr noundef null) #13 ; 4 uses
  %i.dp = icmp ugt ptr %i.do, inttoptr (i64 -4096 to ptr)
  br i1 %i.dp, label %bb.al, label %bb.am

.thread226:                                       ; preds = %bb.ai
  %i.dq = load ptr, ptr %i.cd, align 8
  %i.dr = call ptr @ip_route_output_flow(ptr noundef %i.dq, ptr noundef nonnull %4, ptr noundef null) #13 ; 2 uses
  %i.ds = icmp ugt ptr %i.dr, inttoptr (i64 -4096 to ptr)
  br i1 %i.ds, label %bb.al, label %.thread231

bb.al:                                            ; preds = %.thread226, %bb.ak
  %i.dt = getelementptr i8, ptr %1, i64 688       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dt, ptr elementtype(i64) %i.dt) #12, !srcloc !12
  br label %dst_link_failure.exit202

bb.am:                                            ; preds = %bb.ak
  br i1 %.0142.shrunk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr i8, ptr %.0, i64 72
  br label %.thread231.sink.split

bb.ao:                                            ; preds = %bb.am
  %.not = xor i1 %.1141, true
  %or.cond3 = select i1 %.not, i1 %.2139, i1 false
  br i1 %or.cond3, label %bb.ap, label %.thread231

bb.ap:                                            ; preds = %bb.ao
  %i.dv = getelementptr i8, ptr %1, i64 2696
  br label %.thread231.sink.split

.thread231.sink.split:                            ; preds = %bb.ap, %bb.an
  %.sink264 = phi ptr [ %i.du, %bb.an ], [ %i.dv, %bb.ap ]
  %i.dw = load i32, ptr %i.co, align 8
  call void @dst_cache_set_ip4(ptr noundef %.sink264, ptr noundef %i.do, i32 noundef %i.dw) #13
  br label %.thread231

.thread231:                                       ; preds = %.thread231.sink.split, %.thread226, %bb.ao, %ip_tunnel_dst_cache_usable.exit.thread219
  %.3146 = phi ptr [ %.2145, %ip_tunnel_dst_cache_usable.exit.thread219 ], [ %i.do, %bb.ao ], [ %i.dr, %.thread226 ], [ %i.do, %.thread231.sink.split ] ; 9 uses
  %i.dx = load ptr, ptr %.3146, align 8
  %i.dy = icmp eq ptr %i.dx, %1
  br i1 %i.dy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread231
  call void @dst_release(ptr noundef %.3146) #13
  %i.dz = getelementptr i8, ptr %1, i64 624       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dz, ptr elementtype(i64) %i.dz) #12, !srcloc !12
  br label %dst_link_failure.exit202

bb.ar:                                            ; preds = %.thread231
  %i.ea = getelementptr i8, ptr %2, i64 6
  %i.eb = load i16, ptr %i.ea, align 2            ; 3 uses
  %i.ec = icmp eq i16 %.0.i.i.i.i, 8              ; 2 uses
  br i1 %i.ec, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ed = getelementptr i8, ptr %1, i64 2829
  %i.ee = load i8, ptr %i.ed, align 1, !range !15, !noundef !16
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eg = getelementptr i8, ptr %i.e, i64 6
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = and i16 %i.eh, 64
  %i.ej = or i16 %i.ei, %i.eb
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0133 = phi i16 [ %i.eb, %bb.as ], [ %i.ej, %bb.at ], [ %i.eb, %bb.ar ] ; 2 uses
  %i.ek = call fastcc i32 @tnl_update_pmtu(ptr noundef %1, ptr noundef %0, ptr noundef %.3146, i16 noundef zeroext %.0133, ptr noundef %i.e, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #16, !srcloc !41
  %.not166 = icmp eq i32 %i.ek, 0
  br i1 %.not166, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @dst_release(ptr noundef %.3146) #13
  br label %dst_link_failure.exit202

bb.aw:                                            ; preds = %bb.au
  %i.el = getelementptr i8, ptr %1, i64 2672      ; 3 uses
  %i.em = load volatile i32, ptr %i.el, align 8   ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.ax, label %dst_link_failure.exit

bb.ax:                                            ; preds = %bb.aw
  %i.eo = load volatile i64, ptr @jiffies, align 64
  %i.ep = getelementptr i8, ptr %1, i64 2664
  %i.eq = load volatile i64, ptr %i.ep, align 8
  %.neg238 = add i64 %i.eo, -30000
  %i.er = sub i64 %.neg238, %i.eq
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.et = add nsw i32 %i.em, -1
  store volatile i32 %i.et, ptr %i.el, align 8
  %i.eu = getelementptr i8, ptr %0, i64 88
  %.val.i = load i64, ptr %i.eu, align 8
  %i.ev = and i64 %.val.i, -2                     ; 2 uses
  %.not.i189 = icmp eq i64 %i.ev, 0
  br i1 %.not.i189, label %dst_link_failure.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ey, null
  br i1 %.not8.i, label %dst_link_failure.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ez = getelementptr i8, ptr %i.ey, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.fa, null
  br i1 %.not9.i, label %dst_link_failure.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void %i.fa(ptr noundef %0) #13, !inline_history !38
  br label %dst_link_failure.exit

bb.bc:                                            ; preds = %bb.ax
  store volatile i32 0, ptr %i.el, align 8
  br label %dst_link_failure.exit

dst_link_failure.exit:                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.bc, %bb.aw
  %i.fb = load i16, ptr %i.i, align 4             ; 3 uses
  switch i16 %i.fb, label %skb_protocol.exit.i.i [
    i16 -22392, label %bb.bd
    i16 129, label %bb.bd
  ]

bb.bd:                                            ; preds = %dst_link_failure.exit, %dst_link_failure.exit
  %i.fc = call i32 @__vlan_get_protocol_offset(ptr noundef %0, i16 noundef zeroext %i.fb, i32 noundef 0) #13
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i = trunc i32 %i.fc to i16
  br label %skb_protocol.exit.i.i

skb_protocol.exit.i.i:                            ; preds = %bb.bd, %dst_link_failure.exit
  %.0.i.i.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i.i, %bb.bd ], [ %i.fb, %dst_link_failure.exit ]
  switch i16 %.0.i.i.i.i.i.i, label %ip_tunnel_ecn_encap.exit [
    i16 8, label %bb.be
    i16 -8826, label %bb.bf
  ]

bb.be:                                            ; preds = %skb_protocol.exit.i.i
  %i.fd = getelementptr i8, ptr %i.e, i64 1
  %i.fe = load i8, ptr %i.fd, align 1
  br label %ip_tunnel_ecn_encap.exit

bb.bf:                                            ; preds = %skb_protocol.exit.i.i
  %.val.i.i = load i16, ptr %i.e, align 2
  %i.ff = call i16 @llvm.bswap.i16(i16 %.val.i.i)
  %i.fg = lshr i16 %i.ff, 4
  %i.fh = trunc i16 %i.fg to i8
  br label %ip_tunnel_ecn_encap.exit

ip_tunnel_ecn_encap.exit:                         ; preds = %skb_protocol.exit.i.i, %bb.be, %bb.bf
  %.0.i.i = phi i8 [ %i.fe, %bb.be ], [ %i.fh, %bb.bf ], [ 0, %skb_protocol.exit.i.i ]
  %i.fi = and i8 %.0.i.i, 3                       ; 2 uses
  %.not.i.i190 = icmp eq i8 %i.fi, 3
  %i.fj = select i1 %.not.i.i190, i8 2, i8 %i.fi
  %i.fk = or disjoint i8 %i.fj, %i.cc
  %i.fl = getelementptr i8, ptr %2, i64 8
  %i.fm = load i8, ptr %i.fl, align 4             ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %ip_tunnel_ecn_encap.exit
  br i1 %i.ec, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fo = getelementptr i8, ptr %i.e, i64 8
  %i.fp = load i8, ptr %i.fo, align 4
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.fq = icmp eq i16 %.0.i.i.i.i, -8826
  br i1 %i.fq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fr = getelementptr i8, ptr %i.e, i64 7
  %i.fs = load i8, ptr %i.fr, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ft = call fastcc i32 @ip4_dst_hoplimit(ptr noundef %.3146) #16, !srcloc !42
  %i.fu = trunc i32 %i.ft to i8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk, %bb.bj, %ip_tunnel_ecn_encap.exit
  %.0135 = phi i8 [ %i.fp, %bb.bh ], [ %i.fs, %bb.bj ], [ %i.fu, %bb.bk ], [ %i.fm, %ip_tunnel_ecn_encap.exit ]
  %i.fv = load ptr, ptr %.3146, align 8           ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 180
  %i.fx = load i16, ptr %i.fw, align 4
  %i.fy = zext i16 %i.fx to i32
  %i.fz = getelementptr i8, ptr %i.fv, i64 60
  %i.ga = load volatile i16, ptr %i.fz, align 4
  %i.gb = zext i16 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.gb, %i.fy
  %i.gd = and i32 %i.gc, 131056
  %i.ge = getelementptr i8, ptr %.3146, i64 60
  %i.gf = load i16, ptr %i.ge, align 4
  %i.gg = zext i16 %i.gf to i32
  %i.gh = load i16, ptr %i.cv, align 4            ; 2 uses
  %i.gi = icmp eq i16 %i.gh, 0
  br i1 %i.gi, label %ip_encap_hlen.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gj = icmp ugt i16 %i.gh, 7
  br i1 %i.gj, label %ip_encap_hlen.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @__rcu_read_lock() #13
  %i.gk = load i16, ptr %i.cv, align 4
  %i.gl = zext i16 %i.gk to i64
  %i.gm = getelementptr [8 x i8], ptr @iptun_encaps, i64 %i.gl
  %i.gn = load volatile ptr, ptr %i.gm, align 8   ; 2 uses
  %.not.i191 = icmp eq ptr %i.gn, null
  br i1 %.not.i191, label %.critedge.i193, label %bb.bo, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.go = load ptr, ptr %i.gn, align 8            ; 2 uses
  %.not14.i192 = icmp eq ptr %i.go, null
  br i1 %.not14.i192, label %.critedge.i193, label %bb.bp, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.gp = call i64 %i.go(ptr noundef %i.cv) #13, !inline_history !0
  %i.gq = trunc i64 %i.gp to i32
  br label %.critedge.i193

.critedge.i193:                                   ; preds = %bb.bp, %bb.bo, %bb.bn
  %.011.i = phi i32 [ %i.gq, %bb.bp ], [ -22, %bb.bo ], [ -22, %bb.bn ]
  call void @__rcu_read_unlock() #13
  br label %ip_encap_hlen.exit

ip_encap_hlen.exit:                               ; preds = %bb.bl, %bb.bm, %.critedge.i193
  %.0.i194 = phi i32 [ %.011.i, %.critedge.i193 ], [ 0, %bb.bl ], [ -22, %bb.bm ]
  %i.gr = add nuw nsw i32 %i.gg, 36
  %i.gs = add nuw nsw i32 %i.gr, %i.gd
  %i.gt = add i32 %i.gs, %.0.i194                 ; 2 uses
  %i.gu = getelementptr i8, ptr %0, i64 126
  %i.gv = load i8, ptr %i.gu, align 2
  %i.gw = and i8 %i.gv, 1
  %.not.i.i195 = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i195, label %.skb_header_cloned.exit_crit_edge.i, label %bb.bq

.skb_header_cloned.exit_crit_edge.i:              ; preds = %ip_encap_hlen.exit
  %.val30.i.pre.i = load ptr, ptr %i.c, align 8
  br label %skb_header_cloned.exit.i

bb.bq:                                            ; preds = %ip_encap_hlen.exit
  %i.gx = getelementptr i8, ptr %0, i64 192
  %.val.i.i196 = load i32, ptr %i.gx, align 8
  %.val5.i.i = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.gy = zext i32 %.val.i.i196 to i64
  %i.gz = getelementptr i8, ptr %.val5.i.i, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 32
  %i.hb = load volatile i32, ptr %i.ha, align 4   ; 2 uses
  %i.hc = and i32 %i.hb, 65535
  %i.hd = ashr i32 %i.hb, 16
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = icmp ne i32 %i.he, 1
  %i.hg = zext i1 %i.hf to i32
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %bb.bq, %.skb_header_cloned.exit_crit_edge.i
  %.val30.i.i = phi ptr [ %.val5.i.i, %bb.bq ], [ %.val30.i.pre.i, %.skb_header_cloned.exit_crit_edge.i ]
  %.0.i.i197 = phi i32 [ %i.hg, %bb.bq ], [ 0, %.skb_header_cloned.exit_crit_edge.i ]
  %i.hh = getelementptr i8, ptr %0, i64 208
  %.val31.i.i = load ptr, ptr %i.hh, align 8
  %i.hi = ptrtoint ptr %.val31.i.i to i64
  %i.hj = ptrtoint ptr %.val30.i.i to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %spec.select.i.i = call i32 @llvm.usub.sat.i32(i32 %i.gt, i32 %i.hl) ; 2 uses
  %i.hm = or i32 %spec.select.i.i, %.0.i.i197
  %or.cond.not.i.i = icmp eq i32 %i.hm, 0
  br i1 %or.cond.not.i.i, label %skb_cow_head.exit.thread, label %skb_cow_head.exit

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %i.hn = add i32 %spec.select.i.i, 63
  %i.ho = and i32 %i.hn, -64
  %i.hp = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %i.ho, i32 noundef 0, i32 noundef 2080) #13
  %.not167 = icmp eq i32 %i.hp, 0
  br i1 %.not167, label %skb_cow_head.exit.thread, label %bb.br

bb.br:                                            ; preds = %skb_cow_head.exit
  call void @dst_release(ptr noundef %.3146) #13
  %i.hq = getelementptr i8, ptr %1, i64 608       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hq, ptr elementtype(i64) %i.hq) #12, !srcloc !12
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  br label %bb.bx

skb_cow_head.exit.thread:                         ; preds = %skb_header_cloned.exit.i, %skb_cow_head.exit
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.gt, i32 512) ; 2 uses
  %i.hr = getelementptr i8, ptr %1, i64 60        ; 2 uses
  %i.hs = load volatile i16, ptr %i.hr, align 4
  %i.ht = zext i16 %i.hs to i32
  %i.hu = icmp samesign ugt i32 %spec.store.select.i, %i.ht
  br i1 %i.hu, label %bb.bs, label %ip_tunnel_adj_headroom.exit

bb.bs:                                            ; preds = %skb_cow_head.exit.thread
  %i.hv = trunc nuw nsw i32 %spec.store.select.i to i16
  store volatile i16 %i.hv, ptr %i.hr, align 4
  br label %ip_tunnel_adj_headroom.exit

ip_tunnel_adj_headroom.exit:                      ; preds = %skb_cow_head.exit.thread, %bb.bs
  %i.hw = load i32, ptr %i.co, align 8
  %i.hx = load i32, ptr %i.cn, align 4
  %i.hy = load i8, ptr %i.a, align 1
  %i.hz = load ptr, ptr %i.cd, align 8
  %i.ia = getelementptr i8, ptr %1, i64 264
  %.val173 = load ptr, ptr %i.ia, align 8
  %i.ib = icmp ne ptr %i.hz, %.val173
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %.3146, ptr noundef %0, i32 noundef %i.hw, i32 noundef %i.hx, i8 noundef zeroext %i.hy, i8 noundef zeroext %i.fk, i8 noundef zeroext %.0135, i16 noundef zeroext %.0133, i1 noundef zeroext %i.ib, i16 noundef zeroext 0) #13
  br label %bb.bx

bb.bt:                                            ; preds = %neigh_release.exit
  %.val.i198 = load i64, ptr %i.q, align 8
  %i.ic = and i64 %.val.i198, -2                  ; 2 uses
  %.not.i199 = icmp eq i64 %i.ic, 0
  br i1 %.not.i199, label %dst_link_failure.exit202, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %.not8.i200 = icmp eq ptr %i.if, null
  br i1 %.not8.i200, label %dst_link_failure.exit202, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ig = getelementptr i8, ptr %i.if, i64 72
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not9.i201 = icmp eq ptr %i.ih, null
  br i1 %.not9.i201, label %dst_link_failure.exit202, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void %i.ih(ptr noundef %0) #13, !inline_history !38
  br label %dst_link_failure.exit202

dst_link_failure.exit202:                         ; preds = %bb.ad, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %ip_tunnel_encap.exit.thread215, %bb.n, %skb_tunnel_info.exit.thread, %ip_tunnel_encap.exit, %bb.av, %bb.aq, %bb.al, %bb.d
  %i.ii = getelementptr i8, ptr %1, i64 592       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ii, ptr elementtype(i64) %i.ii) #12, !srcloc !12
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  br label %bb.bx

bb.bx:                                            ; preds = %dst_link_failure.exit202, %ip_tunnel_adj_headroom.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ip_tunnel_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 2656
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 2812
  %i.e = load i32, ptr %i.d, align 4
  tail call void @__rcu_read_lock() #13
  %i.f = getelementptr i8, ptr %i.c, i64 2984
  %i.g = load volatile ptr, ptr %i.f, align 8
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 12 uses
  tail call void @__rcu_read_unlock() #13
  switch i32 %2, label %PTR_ERR_OR_ZERO.exit [
    i32 35312, label %bb.b
    i32 35313, label %bb.e
    i32 35315, label %bb.e
    i32 35314, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %0, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.k, i64 544
  %i.n = load i16, ptr %i.m, align 32
  %i.o = zext i16 %i.n to i32
  %i.p = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.o) #16, !srcloc !43 ; 2 uses
  %.not109 = icmp eq ptr %i.p, null
  %spec.select118 = select i1 %.not109, ptr %i.a, ptr %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.088 = phi ptr [ %spec.select118, %bb.c ], [ %i.a, %bb.b ]
  %i.q = getelementptr i8, ptr %.088, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %1, ptr noundef align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  br label %PTR_ERR_OR_ZERO.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.r = getelementptr i8, ptr %i.c, i64 112
  %i.s = load ptr, ptr %i.r, align 16
  %i.t = tail call zeroext i1 @ns_capable(ptr noundef %i.s, i32 noundef 12) #13
  br i1 %i.t, label %bb.f, label %PTR_ERR_OR_ZERO.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %1, i64 52
  %i.v = load i8, ptr %i.u, align 4
  %.not102 = icmp eq i8 %i.v, 0
  br i1 %.not102, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %1, i64 50         ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = or i16 %i.x, 64
  store i16 %i.y, ptr %i.w, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.aa = load volatile i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 65536
  %.not119 = icmp eq i64 %i.ab, 0
  br i1 %.not119, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ac = load volatile i64, ptr %i.z, align 8
  %i.ad = and i64 %i.ac, 4
  %.not121 = icmp eq i64 %i.ad, 0
  br i1 %.not121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %1, i64 32
  store i32 0, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load volatile i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 4
  %.not123 = icmp eq i64 %i.ah, 0
  br i1 %.not123, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %1, i64 36
  store i32 0, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %i.aj = getelementptr i8, ptr %i.j, i64 1048
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.ak) #16, !srcloc !44 ; 5 uses
  %i.am = icmp eq i32 %2, 35313
  br i1 %i.am, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %bb.o, label %PTR_ERR_OR_ZERO.exit

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.j, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call fastcc ptr @__ip_tunnel_create(ptr noundef %i.c, ptr noundef %i.ao, ptr noundef %1) #16, !srcloc !45 ; 17 uses
  %i.aq = icmp ugt ptr %i.ap, inttoptr (i64 -4096 to ptr)
  br i1 %i.aq, label %ip_tunnel_create.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %i.ap) #16, !srcloc !46
  %i.as = tail call i32 @dev_set_mtu(ptr noundef %i.ap, i32 noundef %i.ar) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %i.ap, i64 2624   ; 3 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 2784
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.ap, i64 536
  store i32 68, ptr %i.aw, align 8
  %i.ax = sub i32 65515, %i.av                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 540    ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %i.ap, i64 544
  %i.ba = load i16, ptr %i.az, align 32
  %i.bb = icmp eq i16 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %i.ap, i64 180
  %i.bd = load i16, ptr %i.bc, align 4
  %i.be = zext i16 %i.bd to i32
  %i.bf = sub i32 %i.ax, %i.be
  store i32 %i.bf, ptr %i.ay, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr i8, ptr %i.ap, i64 2744
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ap, i64 2772
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ap, i64 2728   ; 2 uses
  %i.bl = load volatile i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 4
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.t, label %ip_bucket.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bn = load volatile i64, ptr %i.bk, align 8
  %i.bo = and i64 %i.bn, 65536
  %.not31.i.i.i = icmp eq i64 %i.bo, 0
  %spec.select137 = select i1 %.not31.i.i.i, i32 %i.bh, i32 0
  br label %ip_bucket.exit.i.i

ip_bucket.exit.i.i:                               ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi i32 [ %i.bh, %bb.s ], [ %spec.select137, %bb.t ]
  %i.bp = and i32 %i.bj, 240
  %i.bq = icmp eq i32 %i.bp, 224
  %.026.i.i.i = select i1 %i.bq, i32 0, i32 %i.bj
  %i.br = xor i32 %.0.i.i.i, %.026.i.i.i
  %i.bs = mul i32 %i.br, 1640531527
  %i.bt = lshr i32 %i.bs, 25
  %i.bu = getelementptr i8, ptr %i.j, i64 16
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.ap, i64 2828
  %i.by = load i8, ptr %i.bx, align 4, !range !15, !noundef !16
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %ip_bucket.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ca = getelementptr i8, ptr %i.j, i64 1040
  store volatile ptr %i.at, ptr %i.ca, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ip_bucket.exit.i.i
  %i.cb = getelementptr i8, ptr %i.ap, i64 2632   ; 3 uses
  %i.cc = load ptr, ptr %i.bw, align 8            ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.ap, i64 2640
  store volatile ptr %i.bw, ptr %i.cd, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  store volatile ptr %i.cb, ptr %i.bw, align 8
  %.not.i7.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i7.i.i, label %ip_tunnel_create.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store volatile ptr %i.cb, ptr %i.ce, align 8
  br label %ip_tunnel_create.exit

bb.x:                                             ; preds = %bb.p
  tail call void @unregister_netdevice_queue(ptr noundef %i.ap, ptr noundef null) #13
  %i.cf = sext i32 %i.as to i64
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %ip_tunnel_create.exit

ip_tunnel_create.exit:                            ; preds = %bb.o, %bb.v, %bb.w, %bb.x
  %.0.i110 = phi ptr [ %i.ap, %bb.o ], [ %i.cg, %bb.x ], [ %i.at, %bb.v ], [ %i.at, %bb.w ] ; 2 uses
  %i.ch = icmp ugt ptr %.0.i110, inttoptr (i64 -4096 to ptr)
  br i1 %i.ch, label %bb.y, label %PTR_ERR_OR_ZERO.exit

bb.y:                                             ; preds = %ip_tunnel_create.exit
  %i.ci = ptrtoint ptr %.0.i110 to i64
  %i.cj = trunc i64 %i.ci to i32
  br label %PTR_ERR_OR_ZERO.exit

bb.z:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.j, align 8
  %i.cl = icmp ne ptr %0, %i.ck
  %i.cm = icmp eq i32 %2, 35315
  %or.cond16 = and i1 %i.cm, %i.cl
  br i1 %or.cond16, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %.not103 = icmp eq ptr %i.al, null
  br i1 %.not103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr i8, ptr %i.al, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %.not106 = icmp eq ptr %i.co, %0
  br i1 %.not106, label %.thread114, label %PTR_ERR_OR_ZERO.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cp = getelementptr i8, ptr %1, i64 60
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = and i32 %i.cq, 240
  %i.cs = icmp eq i32 %i.cr, 224
  %.not104 = icmp eq i32 %i.cq, 0
  %spec.select = select i1 %.not104, i32 0, i32 16
  %.087 = select i1 %i.cs, i32 2, i32 %spec.select
  %i.ct = getelementptr i8, ptr %0, i64 176
  %i.cu = load i32, ptr %i.ct, align 16
  %.masked = and i32 %i.cu, 18
  %.not105 = icmp eq i32 %.masked, %.087
  br i1 %.not105, label %.thread, label %PTR_ERR_OR_ZERO.exit

.thread:                                          ; preds = %bb.ac, %bb.z
  %.2 = phi ptr [ %i.al, %bb.z ], [ %i.a, %bb.ac ] ; 2 uses
  %.not107 = icmp eq ptr %.2, null
  br i1 %.not107, label %PTR_ERR_OR_ZERO.exit, label %.thread114

.thread114:                                       ; preds = %bb.ab, %.thread
  %.2117 = phi ptr [ %.2, %.thread ], [ %i.al, %bb.ab ]
  tail call fastcc void @ip_tunnel_update(ptr noundef %i.j, ptr noundef nonnull %.2117, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i32 noundef 0) #16, !srcloc !47
  br label %PTR_ERR_OR_ZERO.exit

bb.ad:                                            ; preds = %bb.a
  %i.cv = getelementptr i8, ptr %i.c, i64 112
  %i.cw = load ptr, ptr %i.cv, align 16
  %i.cx = tail call zeroext i1 @ns_capable(ptr noundef %i.cw, i32 noundef 12) #13
  br i1 %i.cx, label %bb.ae, label %PTR_ERR_OR_ZERO.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cz = icmp eq ptr %0, %i.cy
  br i1 %i.cz, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr i8, ptr %i.cy, i64 544
  %i.db = load i16, ptr %i.da, align 32
  %i.dc = zext i16 %i.db to i32
  %i.dd = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.dc) #16, !srcloc !48 ; 3 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %PTR_ERR_OR_ZERO.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 2624
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %PTR_ERR_OR_ZERO.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = getelementptr i8, ptr %i.dd, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.091 = phi ptr [ %i.di, %bb.ah ], [ %0, %bb.ae ]
  tail call void @unregister_netdevice_queue(ptr noundef %.091, ptr noundef null) #13
  br label %PTR_ERR_OR_ZERO.exit

PTR_ERR_OR_ZERO.exit:                             ; preds = %bb.ac, %bb.y, %ip_tunnel_create.exit, %bb.a, %.thread, %bb.ab, %bb.n, %bb.d, %bb.ai, %.thread114, %bb.ag, %bb.af, %bb.ad, %bb.e
  %.190 = phi i32 [ -2, %.thread ], [ 0, %bb.d ], [ -1, %bb.ad ], [ -22, %bb.a ], [ -17, %bb.n ], [ 0, %.thread114 ], [ -17, %bb.ab ], [ 0, %ip_tunnel_create.exit ], [ -1, %bb.e ], [ -1, %bb.ag ], [ 0, %bb.ai ], [ -2, %bb.af ], [ %i.cj, %bb.y ], [ -22, %bb.ac ]
  ret i32 %.190
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc ptr @ip_tunnel_find(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 56
  %i.b = getelementptr i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.j = load volatile i64, ptr %i.i, align 8     ; 2 uses
  %i.k = and i64 %i.j, 4
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.b, label %ip_bucket.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load volatile i64, ptr %i.i, align 8     ; 2 uses
  %i.m = and i64 %i.l, 65536
  %.not31.i = icmp eq i64 %i.m, 0
  %spec.select = select i1 %.not31.i, i32 %i.f, i32 0
  br label %ip_bucket.exit

ip_bucket.exit:                                   ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.j, %bb.a ], [ %i.l, %bb.b ]
  %.0.i = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  %i.o = and i32 %i.c, 240
  %i.p = icmp eq i32 %i.o, 224
  %.026.i = select i1 %i.p, i32 0, i32 %i.c
  %i.q = xor i32 %.0.i, %.026.i
  %i.r = mul i32 %i.q, 1640531527
  %i.s = lshr i32 %i.r, 25
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  store i64 %i.n, ptr %.sroa.0, align 8
  %i.w = load volatile ptr, ptr %i.v, align 8     ; 2 uses
  %.not = icmp eq ptr %i.w, null
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %.not395157 = icmp eq ptr %i.x, null
  %.not3951 = or i1 %.not, %.not395157
  br i1 %.not3951, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ip_bucket.exit, %ip_tunnel_key_match.exit.thread
  %.052 = phi ptr [ %i.av, %ip_tunnel_key_match.exit.thread ], [ %i.x, %ip_bucket.exit ] ; 9 uses
  %i.y = getelementptr i8, ptr %.052, i64 144
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %ip_tunnel_key_match.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %.052, i64 148
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.c, %i.ac
  br i1 %i.ad, label %bb.d, label %ip_tunnel_key_match.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %.052, i64 128
  %i.af = load volatile i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.h, %i.af
  br i1 %i.ag, label %bb.e, label %ip_tunnel_key_match.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %.052, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 544
  %i.ak = load i16, ptr %i.aj, align 32
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %2, %i.al
  br i1 %i.am, label %bb.f, label %ip_tunnel_key_match.exit.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load volatile i64, ptr %.sroa.0, align 8
  %i.an = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4
  %.not.i43 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %.052, i64 104
  %i.ap = load volatile i64, ptr %i.ao, align 8
  %.in.in.i = and i64 %i.ap, 4
  %.in.not.i = icmp eq i64 %.in.in.i, 0           ; 2 uses
  br i1 %.not.i43, label %.split, label %bb.g

.split:                                           ; preds = %bb.f
  br i1 %.in.not.i, label %.split._crit_edge, label %ip_tunnel_key_match.exit.thread

bb.g:                                             ; preds = %bb.f
  br i1 %.in.not.i, label %ip_tunnel_key_match.exit.thread, label %ip_tunnel_key_match.exit

ip_tunnel_key_match.exit:                         ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %.052, i64 120
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ar, %i.f
  br i1 %i.as, label %.split._crit_edge, label %ip_tunnel_key_match.exit.thread

ip_tunnel_key_match.exit.thread:                  ; preds = %bb.g, %.split, %.lr.ph, %bb.c, %bb.d, %bb.e, %ip_tunnel_key_match.exit
  %i.at = getelementptr i8, ptr %.052, i64 8
  %i.au = load volatile ptr, ptr %i.at, align 8   ; 2 uses
  %.not40 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %i.au, i64 -8     ; 2 uses
  %.not3958 = icmp eq ptr %i.av, null
  %.not39 = or i1 %.not40, %.not3958
  br i1 %.not39, label %.split._crit_edge, label %.lr.ph

.split._crit_edge:                                ; preds = %ip_tunnel_key_match.exit.thread, %ip_tunnel_key_match.exit, %.split, %ip_bucket.exit
  %.0.lcssa = phi ptr [ null, %ip_bucket.exit ], [ %.052, %.split ], [ %.052, %ip_tunnel_key_match.exit ], [ null, %ip_tunnel_key_match.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ip_tunnel_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 204        ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1040
  store volatile ptr null, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val.i.i = load ptr, ptr %i.e, align 8         ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.not.i.i, label %ip_tunnel_del.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  store volatile ptr %i.g, ptr %.val.i.i, align 8
  %.not.i3.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i3.i.i, label %__hlist_del.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store volatile ptr %.val.i.i, ptr %i.h, align 8
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %bb.e, %bb.d
  store volatile ptr null, ptr %i.e, align 8
  br label %ip_tunnel_del.exit

ip_tunnel_del.exit:                               ; preds = %bb.c, %__hlist_del.exit.i.i
  %i.i = getelementptr i8, ptr %3, i64 56         ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %1, i64 144
  store i32 %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %3, i64 60         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 148        ; 2 uses
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %3, i64 32
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 120        ; 2 uses
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %3, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %1, i64 124
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %2, i64 544
  %i.v = load i16, ptr %i.u, align 32
  %.not = icmp eq i16 %i.v, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ip_tunnel_del.exit
  tail call void @dev_addr_mod(ptr noundef %2, i32 noundef 0, ptr noundef %i.i, i64 noundef 4) #13
  %i.w = getelementptr i8, ptr %2, i64 1120
  %i.x = load i32, ptr %i.l, align 4
  store i32 %i.x, ptr %i.w, align 32
  %.pre = load i32, ptr %i.q, align 8
  %.pre38 = load i32, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %ip_tunnel_del.exit
  %i.y = phi i32 [ %.pre38, %bb.f ], [ %i.m, %ip_tunnel_del.exit ] ; 2 uses
  %i.z = phi i32 [ %.pre, %bb.f ], [ %i.p, %ip_tunnel_del.exit ] ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 4
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %bb.h, label %ip_bucket.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load volatile i64, ptr %i.aa, align 8
  %i.ae = and i64 %i.ad, 65536
  %.not31.i.i = icmp eq i64 %i.ae, 0
  %spec.select = select i1 %.not31.i.i, i32 %i.z, i32 0
  br label %ip_bucket.exit.i

ip_bucket.exit.i:                                 ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.z, %bb.g ], [ %spec.select, %bb.h ]
  %i.af = and i32 %i.y, 240
  %i.ag = icmp eq i32 %i.af, 224
  %.026.i.i = select i1 %i.ag, i32 0, i32 %i.y
  %i.ah = xor i32 %.0.i.i, %.026.i.i
  %i.ai = mul i32 %i.ah, 1640531527
  %i.aj = lshr i32 %i.ai, 25
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 3 uses
  %i.an = load i8, ptr %i.a, align 4, !range !15, !noundef !16
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ip_bucket.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ap = getelementptr i8, ptr %0, i64 1040
  store volatile ptr %1, ptr %i.ap, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ip_bucket.exit.i
  %i.aq = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ar = load ptr, ptr %i.am, align 8            ; 3 uses
  store ptr %i.ar, ptr %i.aq, align 8
  store volatile ptr %i.am, ptr %i.e, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  store volatile ptr %i.aq, ptr %i.am, align 8
  %.not.i7.i = icmp eq ptr %i.ar, null
  br i1 %.not.i7.i, label %ip_tunnel_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store volatile ptr %i.aq, ptr %i.as, align 8
  br label %ip_tunnel_add.exit

ip_tunnel_add.exit:                               ; preds = %bb.j, %bb.k
  %i.at = getelementptr i8, ptr %3, i64 52
  %i.au = load i8, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %1, i64 140
  store i8 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %3, i64 45
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr i8, ptr %1, i64 133
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %3, i64 50
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = getelementptr i8, ptr %1, i64 138
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %3, i64 40
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %.not36 = icmp eq i32 %i.bd, %i.bf
  br i1 %.not36, label %bb.l, label %bb.m

bb.l:                                             ; preds = %ip_tunnel_add.exit
  %i.bg = getelementptr i8, ptr %1, i64 200
  %i.bh = load i32, ptr %i.bg, align 8
  %.not37 = icmp eq i32 %i.bh, %5
  br i1 %.not37, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %ip_tunnel_add.exit
  store volatile i32 %i.bf, ptr %i.bc, align 8
  %i.bi = getelementptr i8, ptr %1, i64 200
  store i32 %5, ptr %i.bi, align 8
  %i.bj = tail call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %2) #16, !srcloc !49
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %2, i64 56
  store volatile i32 %i.bj, ptr %i.bk, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.bl = load volatile i64, ptr @jiffies, align 64
  %i.bm = getelementptr i8, ptr %1, i64 80
  store volatile i64 %i.bl, ptr %i.bm, align 8
  tail call void @netdev_state_change(ptr noundef %2) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @ip_tunnel_parm_from_user(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.ip_tunnel_parm, align 4     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false), !annotation !14
  %i.a = call i64 @_copy_from_user(ptr noundef nonnull %2, ptr noundef %1, i64 noundef 52) #13
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.a, label %bb.f

bb.a:                                             ; preds = %copy_from_user.exit
  %i.b = call i64 @sized_strscpy(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 16) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i16, ptr %i.g, align 4              ; 2 uses
  %i.i = call i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i64
  store i64 %i.j, ptr %i.f, align 8
  %i.k = and i16 %i.h, 1
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, i64 16) #12, !srcloc !19
  br label %ip_tunnel_flags_from_be16.exit

bb.c:                                             ; preds = %bb.a
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, i64 16) #12, !srcloc !20
  br label %ip_tunnel_flags_from_be16.exit

ip_tunnel_flags_from_be16.exit:                   ; preds = %bb.b, %bb.c
  %i.l = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = call i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i64
  store i64 %i.p, ptr %i.l, align 8
  %i.q = and i16 %i.n, 1
  %.not.i13 = icmp eq i16 %i.q, 0
  br i1 %.not.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ip_tunnel_flags_from_be16.exit
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, i64 16) #12, !srcloc !19
  br label %ip_tunnel_flags_from_be16.exit16

bb.e:                                             ; preds = %ip_tunnel_flags_from_be16.exit
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, i64 16) #12, !srcloc !20
  br label %ip_tunnel_flags_from_be16.exit16

ip_tunnel_flags_from_be16.exit16:                 ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %0, i64 32
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr i8, ptr %0, i64 36
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %0, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(20) %i.x, ptr noundef nonnull align 4 dereferenceable(20) %i.y, i64 20, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %copy_from_user.exit, %ip_tunnel_flags_from_be16.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.not
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @ip_tunnel_parm_to_user(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ip_tunnel_parm, align 4     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 131072
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 131072
  %.not.i.i15 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i15, label %ip_tunnel_flags_to_be16.exit, label %bb.c

ip_tunnel_flags_to_be16.exit:                     ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %i.g = call i64 @sized_strscpy(ptr noundef nonnull %2, ptr noundef %1, i64 noundef 16) #13 ; 0 uses
  %i.h = getelementptr i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.i, ptr %i.j, align 4
  %i.k = load i64, ptr %i.a, align 8
  %i.l = trunc i64 %i.k to i16
  %i.m = call i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = load volatile i64, ptr %i.a, align 8
  %i.o = lshr i64 %i.n, 16
  %i.p = trunc i64 %i.o to i16
  %i.q = and i16 %i.p, 1
  %.0.i16 = or i16 %i.m, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 %.0.i16, ptr %i.r, align 4
  %i.s = load i64, ptr %i.d, align 8
  %i.t = trunc i64 %i.s to i16
  %i.u = call i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = load volatile i64, ptr %i.d, align 8
  %i.w = lshr i64 %i.v, 16
  %i.x = trunc i64 %i.w to i16
  %i.y = and i16 %i.x, 1
  %.0.i19 = or i16 %i.u, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %.0.i19, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %1, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = getelementptr i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, ptr noundef align 4 dereferenceable(20) %i.ah, i64 20, i1 false)
  %i.ai = call i64 @_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 52) #13
  %i.aj = icmp eq i64 %i.ai, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %ip_tunnel_flags_to_be16.exit
  %.0 = phi i1 [ %i.aj, %ip_tunnel_flags_to_be16.exit ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.ip_tunnel_parm, align 4     ; 12 uses
  %5 = alloca %struct.ip_tunnel_parm, align 4     ; 12 uses
  %6 = alloca %struct.ip_tunnel_parm_kern, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i64 52, i1 false), !annotation !14
  %7 = call i64 @_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 52) #13
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %8, label %ip_tunnel_parm_from_user.exit

8:                                                ; preds = %bb.a
  %9 = call i64 @sized_strscpy(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef 16) #13 ; 0 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %15 = load i16, ptr %14, align 4                ; 2 uses
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = zext i16 %16 to i64
  store i64 %17, ptr %13, align 8
  %18 = and i16 %15, 1
  %.not.i.i = icmp eq i16 %18, 0
  br i1 %.not.i.i, label %20, label %19

19:                                               ; preds = %8
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %13, i64 16) #12, !srcloc !19
  br label %ip_tunnel_flags_from_be16.exit.i

20:                                               ; preds = %8
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %13, i64 16) #12, !srcloc !20
  br label %ip_tunnel_flags_from_be16.exit.i

ip_tunnel_flags_from_be16.exit.i:                 ; preds = %20, %19
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 22
  %23 = load i16, ptr %22, align 2                ; 2 uses
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %25 = zext i16 %24 to i64
  store i64 %25, ptr %21, align 8
  %26 = and i16 %23, 1
  %.not.i13.i = icmp eq i16 %26, 0
  br i1 %.not.i13.i, label %28, label %27

27:                                               ; preds = %ip_tunnel_flags_from_be16.exit.i
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %21, i64 16) #12, !srcloc !19
  br label %bb.b

28:                                               ; preds = %ip_tunnel_flags_from_be16.exit.i
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %21, i64 16) #12, !srcloc !20
  br label %bb.b

ip_tunnel_parm_from_user.exit:                    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.b:                                             ; preds = %27, %28
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 28
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %35, ptr noundef nonnull align 4 dereferenceable(20) %36, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 648
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i32 %i.d(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3) #13 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.f = load i64, ptr %13, align 8
  %i.g = and i64 %i.f, 131072
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %bb.d, label %ip_tunnel_parm_to_user.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %21, align 8
  %i.i = and i64 %i.h, 131072
  %.not.i.i15.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i15.i, label %ip_tunnel_flags_to_be16.exit.i, label %ip_tunnel_parm_to_user.exit.thread

ip_tunnel_flags_to_be16.exit.i:                   ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i64 52, i1 false)
  %i.j = call i64 @sized_strscpy(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef 16) #13 ; 0 uses
  %i.k = load i32, ptr %12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.k, ptr %i.l, align 4
  %i.m = load i64, ptr %13, align 8
  %i.n = trunc i64 %i.m to i16
  %i.o = call i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = load volatile i64, ptr %13, align 8
  %i.q = lshr i64 %i.p, 16
  %i.r = trunc i64 %i.q to i16
  %i.s = and i16 %i.r, 1
  %.0.i16.i = or i16 %i.o, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 %.0.i16.i, ptr %i.t, align 4
  %i.u = load i64, ptr %21, align 8
  %i.v = trunc i64 %i.u to i16
  %i.w = call i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = load volatile i64, ptr %21, align 8
  %i.y = lshr i64 %i.x, 16
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 1
  %.0.i19.i = or i16 %i.w, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 %.0.i19.i, ptr %i.ab, align 2
  %i.ac = load i32, ptr %31, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = load i32, ptr %34, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, ptr noundef nonnull align 4 dereferenceable(20) %35, i64 20, i1 false)
  %i.ah = call i64 @_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 52) #13
  %i.ai = icmp eq i64 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.ai, label %bb.e, label %bb.f

ip_tunnel_parm_to_user.exit.thread:               ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.f

bb.e:                                             ; preds = %ip_tunnel_flags_to_be16.exit.i, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %ip_tunnel_parm_to_user.exit.thread, %ip_tunnel_parm_from_user.exit, %ip_tunnel_flags_to_be16.exit.i, %bb.e
  %.0 = phi i32 [ %i.e, %bb.e ], [ -14, %ip_tunnel_parm_from_user.exit ], [ -14, %ip_tunnel_flags_to_be16.exit.i ], [ -14, %ip_tunnel_parm_to_user.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local range(i32 -22, 1) i32 @__ip_tunnel_change_mtu(ptr nofree noundef captures(address) %0, i32 noundef %1, i1 noundef zeroext %2) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2784
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub i32 65515, %i.b                      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 544
  %i.e = load i16, ptr %i.d, align 32
  %i.f = icmp eq i16 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 180
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %i.j = sub i32 %i.c, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %i.k = icmp slt i32 %1, 68
  %i.l = icmp sgt i32 %1, %.0
  %brmerge.not = and i1 %2, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %brmerge.not
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.mux = tail call i32 @llvm.smin.i32(i32 %1, i32 %.0)
  %i.m = getelementptr i8, ptr %0, i64 56
  store volatile i32 %.mux, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.013 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ]
  ret i32 %.013
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local range(i32 -22, 1) i32 @ip_tunnel_change_mtu(ptr nofree noundef captures(address) %0, i32 noundef %1) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2784
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub i32 65515, %i.b                      ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 544
  %i.e = load i16, ptr %i.d, align 32
  %i.f = icmp eq i16 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 180
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %i.j = sub i32 %i.c, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.j, %bb.b ], [ %i.c, %bb.a ]
  %i.k = icmp slt i32 %1, 68
  %i.l = icmp sgt i32 %1, %.0.i
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %__ip_tunnel_change_mtu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 56
  store volatile i32 %1, ptr %i.m, align 8
  br label %__ip_tunnel_change_mtu.exit

__ip_tunnel_change_mtu.exit:                      ; preds = %bb.c, %bb.d
  %.013.i = phi i32 [ 0, %bb.d ], [ -22, %bb.c ]
  ret i32 %.013.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ip_tunnel_dellink(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2656
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 2812
  %i.d = load i32, ptr %i.c, align 4
  tail call void @__rcu_read_lock() #13
  %i.e = getelementptr i8, ptr %i.b, i64 2984
  %i.f = load volatile ptr, ptr %i.e, align 8
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  tail call void @__rcu_read_unlock() #13
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, %0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 2828
  %i.l = load i8, ptr %i.k, align 4, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.i, i64 1040
  store volatile ptr null, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr i8, ptr %0, i64 2640       ; 2 uses
  %.val.i.i = load ptr, ptr %i.o, align 8         ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.not.i.i, label %ip_tunnel_del.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 2632
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  store volatile ptr %i.q, ptr %.val.i.i, align 8
  %.not.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i.i, label %__hlist_del.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store volatile ptr %.val.i.i, ptr %i.r, align 8
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %bb.f, %bb.e
  store volatile ptr null, ptr %i.o, align 8
  br label %ip_tunnel_del.exit

ip_tunnel_del.exit:                               ; preds = %bb.d, %__hlist_del.exit.i.i
  tail call void @unregister_netdevice_queue(ptr noundef %0, ptr noundef %1) #13
  br label %bb.g

bb.g:                                             ; preds = %ip_tunnel_del.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local ptr @ip_tunnel_get_link_net(ptr nofree noundef captures(address) %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2656
  %i.b = load volatile ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local i32 @ip_tunnel_get_iflink(ptr nofree noundef captures(address) %0) #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2752
  %i.b = load volatile i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ip_tunnel_init_net(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.ip_tunnel_parm_kern, align 8 ; 5 uses
  tail call void @__rcu_read_lock() #13
  %i.a = getelementptr i8, ptr %0, i64 2984
  %i.b = load volatile ptr, ptr %i.a, align 8
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  tail call void @__rcu_read_unlock() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load volatile i32, ptr @sysctl_fb_tunnels_only_for_init_net, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %net_has_fallback_tunnels.exit.thread, label %net_has_fallback_tunnels.exit

net_has_fallback_tunnels.exit:                    ; preds = %bb.b
  %i.i = icmp eq ptr %0, @init_net
  %i.j = icmp eq i32 %i.h, 1
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %net_has_fallback_tunnels.exit.thread, label %bb.c

bb.c:                                             ; preds = %net_has_fallback_tunnels.exit, %bb.a
  tail call void @__rcu_read_lock() #13
  %i.l = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @init_net, i64 2984), align 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.c
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @__rcu_read_unlock() #13
  %i.o = getelementptr i8, ptr %i.n, i64 1048
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.e, i64 1048
  store i32 %i.p, ptr %i.q, align 8
  store ptr null, ptr %i.e, align 8
  br label %PTR_ERR_OR_ZERO.exit

net_has_fallback_tunnels.exit.thread:             ; preds = %bb.b, %net_has_fallback_tunnels.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %bb.e, label %bb.d
end_hunk_0
begin_hunk_1_@ip_tunnel_uninit:bb.a
  %i.k = load i8, ptr %i.j, align 4, !range !15, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.i, i64 1040
  store volatile ptr null, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %0, i64 2640       ; 2 uses
  %.val.i.i = load ptr, ptr %i.n, align 8         ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.not.i.i, label %ip_tunnel_del.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 2632
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  store volatile ptr %i.p, ptr %.val.i.i, align 8
  %.not.i3.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i3.i.i, label %__hlist_del.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store volatile ptr %.val.i.i, ptr %i.q, align 8
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %bb.e, %bb.d
  store volatile ptr null, ptr %i.n, align 8
  br label %ip_tunnel_del.exit

ip_tunnel_del.exit:                               ; preds = %bb.c, %__hlist_del.exit.i.i
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ip_tunnel_del.exit
  store volatile ptr null, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %ip_tunnel_del.exit
  %i.t = load volatile i64, ptr @jiffies, align 64
  %i.u = getelementptr i8, ptr %0, i64 2704
  store volatile i64 %i.t, ptr %i.u, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @ip_tunnel_setup(ptr nofree noundef writeonly captures(none) initializes((2812, 2816)) %0, i32 noundef %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2812
  store i32 %1, ptr %i.a, align 4
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__skb_get_hash_net(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @icmp_ndo_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @icmpv6_ndo_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip6_mtu(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv4_mtu(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__vlan_get_protocol_offset(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @dev_valid_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind memory(read) }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{i64 2149029428, i64 2149029467, i64 2149029488, i64 2149029525, i64 2149029548, i64 2149029419}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 2162312172}
!18 = !{i64 2153157919}
!19 = !{i64 2148607500}
!20 = !{i64 2148609057}
!21 = !{i64 8544434, i64 8544447}
!22 = !{i64 2159205900}
!23 = !{i64 2157123710}
!24 = !{i64 2157123000}
!25 = !{i64 2162366271, i64 2162366310, i64 2162366331, i64 2162366368, i64 2162366391, i64 2162366400}
!26 = !{i64 2162371090, i64 2162371129, i64 2162371150, i64 2162371187, i64 2162371210, i64 2162371219}
!27 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!28 = !{!"branch_weights", i32 4000000, i32 4001}
!29 = !{i64 15684}
!30 = !{i64 16081}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{i64 2159843111, i64 2159842986}
!36 = !{i64 2159843634, i64 2159844110, i64 2159844143, i64 2159844178, i64 2159844194, i64 2159845035, i64 2159845093, i64 2159845142, i64 2159844952, i64 2159844253, i64 2159844285}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = !{i64 2149012111, i64 2149012150, i64 2149012171, i64 2149012208, i64 2149012231, i64 2149012240}
!40 = !{i64 2151109010}
!41 = !{i64 20082}
!42 = !{i64 20778}
!43 = !{i64 22606}
!44 = !{i64 23112}
!45 = !{i64 8052}
!46 = !{i64 8154}
!47 = !{i64 23778}
!48 = !{i64 24024}
!49 = !{i64 22155}
!50 = !{i64 28115}
!51 = !{i64 28394}
!52 = !{i64 2162349125, i64 2162349152, i64 2162349550, i64 2162349583, i64 2162349618, i64 2162349634, i64 2162350475, i64 2162350533, i64 2162350582, i64 2162350392, i64 2162349693, i64 2162349725}
!53 = !{i64 2162348592}
!54 = !{i64 2157417456}
!55 = distinct !{!55, !59}
!56 = distinct !{!56, !59}
!57 = !{i64 2159641842, i64 2159641869, i64 2159642267, i64 2159642300, i64 2159642335, i64 2159642351, i64 2159643192, i64 2159643250, i64 2159643299, i64 2159643109, i64 2159642410, i64 2159642442}
!58 = !{i64 2159641304}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{i64 29806}
!61 = !{i64 30081}
!62 = !{i64 30897}
!63 = !{i64 31299}
end_hunk_1
