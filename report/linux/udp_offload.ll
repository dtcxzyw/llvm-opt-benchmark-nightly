inline.NumInlined: 66
inline.NumDeleted: 40
begin_hunk_0_@udp6_gro_receive:bb.a
  %i.f = getelementptr i8, ptr %1, i64 112
  %.val5.i.i.i = load i32, ptr %i.f, align 8      ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 116
  %.val6.i.i.i = load i32, ptr %i.g, align 4
  %i.h = sub i32 %.val5.i.i.i, %.val6.i.i.i       ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.b, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %i.b, %.val5.i.i.i
  br i1 %i.i, label %.critedge, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.j = sub i32 %i.b, %i.h
  %i.k = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.j) #5
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %.critedge, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = getelementptr i8, ptr %1, i64 208
  br label %udp_gro_udphdr.exit

udp_gro_udphdr.exit:                              ; preds = %bb.a, %bb.e
  %.val.i.i.pn.in = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.e ]
  %.val.i.i.pn = load ptr, ptr %.val.i.i.pn.in, align 8
  %.0.i.i = getelementptr i8, ptr %.val.i.i.pn, i64 %i.d ; 5 uses
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %.critedge, label %bb.f, !prof !11

bb.f:                                             ; preds = %udp_gro_udphdr.exit
  %i.m = getelementptr i8, ptr %1, i64 60
  %i.n = load i16, ptr %i.m, align 4
  %.not28 = icmp eq i16 %i.n, 0
  br i1 %.not28, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %.0.i.i, i64 6     ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 96
  %.not.i = icmp eq i8 %i.s, 96
  br i1 %.not.i, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.val6.pre.i = load i32, ptr %i.a, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %1, i64 140
  %i.u = load i16, ptr %i.t, align 4
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr i8, ptr %1, i64 200
  %.val.i.i33 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %1, i64 208
  %.val2.i.i = load ptr, ptr %i.x, align 8
  %i.y = ptrtoint ptr %.val2.i.i to i64
  %i.z = ptrtoint ptr %.val.i.i33 to i64
  %.neg.i.i = sub i64 %i.z, %i.y
  %.neg3.i.i = trunc i64 %.neg.i.i to i32
  %i.aa = add i32 %.neg3.i.i, %i.v
  %.val.i34 = load i32, ptr %i.a, align 8         ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %.val.i34
  br i1 %i.ab, label %bb.i, label %.critedge32

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.val.i.i35 = phi i32 [ %.val6.pre.i, %._crit_edge.i ], [ %.val.i34, %bb.h ] ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 68
  %.val7.i = load i16, ptr %i.ac, align 4
  %i.ad = zext i16 %.val7.i to i32
  %i.ae = icmp eq i32 %.val.i.i35, %i.ad
  br i1 %i.ae, label %.critedge32, label %__skb_gro_checksum_validate_needed.exit

__skb_gro_checksum_validate_needed.exit:          ; preds = %bb.i
  %i.af = getelementptr i8, ptr %1, i64 70
  %i.ag = load i16, ptr %i.af, align 2            ; 3 uses
  %i.ah = and i16 %i.ag, 56
  %i.ai = icmp eq i16 %i.ah, 0
  %i.aj = icmp ne i16 %i.p, 0
  %spec.select.i = and i1 %i.aj, %i.ai
  br i1 %spec.select.i, label %ip6_gro_compute_pseudo.exit, label %.critedge32

ip6_gro_compute_pseudo.exit:                      ; preds = %__skb_gro_checksum_validate_needed.exit
  %.val8.i.i = load i32, ptr %i.e, align 8
  %.not.i.i36 = icmp ugt i32 %.val.i.i35, %.val8.i.i
  %i.ak = getelementptr i8, ptr %1, i64 208
  %.sink.in.i.i = select i1 %.not.i.i36, ptr %i.ak, ptr %i.c
  %i.al = getelementptr i8, ptr %1, i64 76
  %i.am = lshr i16 %i.ag, 1
  %i.an = and i16 %i.am, 1
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr [2 x i8], ptr %i.al, i64 %i.ao
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8
  %.sink10.i.i = load i16, ptr %i.ap, align 2
  %i.aq = zext i16 %.sink10.i.i to i64
  %i.ar = getelementptr i8, ptr %.sink.i.i, i64 %i.aq ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = getelementptr i8, ptr %i.ar, i64 24
  %i.au = getelementptr i8, ptr %1, i64 112
  %.val4.i = load i32, ptr %i.au, align 8
  %i.av = sub i32 %.val4.i, %.val.i.i35
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 4352
  %i.az = getelementptr i8, ptr %i.ar, i64 16
  %i.ba = getelementptr i8, ptr %i.ar, i64 32
  %i.bb = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.as, ptr elementtype(i64) %i.az, ptr elementtype(i64) %i.at, ptr elementtype(i64) %i.ba, i64 %i.ay) #6, !srcloc !12 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = lshr i64 %i.bb, 32
  %i.be = trunc nuw i64 %i.bd to i32
  %i.bf = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.bc, i32 %i.be) #6, !srcloc !13 ; 2 uses
  %i.bg = shl i32 %i.bf, 16
  %i.bh = and i32 %i.bf, -65536
  %i.bi = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bg, i32 %i.bh) #7, !srcloc !14
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bj, -65536           ; 2 uses
  %i.bl = and i16 %i.ag, 4
  %.not.i37 = icmp eq i16 %i.bl, 0
  br i1 %.not.i37, label %__skb_gro_checksum_validate_complete.exit, label %bb.j

bb.j:                                             ; preds = %ip6_gro_compute_pseudo.exit
  %i.bm = getelementptr i8, ptr %1, i64 72
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65536, 0) %i.bk, i32 %i.bn) #6, !srcloc !13 ; 2 uses
  %i.bp = shl i32 %i.bo, 16
  %i.bq = and i32 %i.bo, -65536
  %i.br = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bp, i32 %i.bq) #7, !srcloc !14
  %.not6.i = icmp ugt i32 %i.br, -65537
  br i1 %.not6.i, label %.critedge32, label %__skb_gro_checksum_validate_complete.exit

__skb_gro_checksum_validate_complete.exit:        ; preds = %ip6_gro_compute_pseudo.exit, %bb.j
  %i.bs = getelementptr i8, ptr %1, i64 72
  store i32 %i.bk, ptr %i.bs, align 8
  %i.bt = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #5
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %.critedge32, label %.critedge

.critedge32:                                      ; preds = %bb.j, %bb.h, %bb.i, %__skb_gro_checksum_validate_needed.exit, %__skb_gro_checksum_validate_complete.exit
  %i.bv = getelementptr i8, ptr %1, i64 70        ; 3 uses
  %i.bw = load i16, ptr %i.bv, align 2            ; 7 uses
  %i.bx = and i16 %i.bw, 56
  %.not.i39 = icmp eq i16 %i.bx, 0
  br i1 %.not.i39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge32
  %i.by = add i16 %i.bw, 56
  %i.bz = and i16 %i.by, 56
  %i.ca = and i16 %i.bw, -57
  %i.cb = or disjoint i16 %i.bz, %i.ca            ; 2 uses
  store i16 %i.cb, ptr %i.bv, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

bb.l:                                             ; preds = %.critedge32
  %i.cc = load i8, ptr %i.q, align 8              ; 2 uses
  %i.cd = lshr i8 %i.cc, 5
  %i.ce = and i8 %i.cd, 3
  switch i8 %i.ce, label %skb_gro_incr_csum_unnecessary.exit [
    i8 1, label %bb.m
    i8 0, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 1            ; 3 uses
  %i.ch = and i32 %i.cg, 192
  %.not.i.i40 = icmp eq i32 %i.ch, 192
  br i1 %.not.i.i40, label %skb_gro_incr_csum_unnecessary.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = add i32 %i.cg, 64
  %i.cj = and i32 %i.ci, 192
  %i.ck = and i32 %i.cg, -193
  %i.cl = or disjoint i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.cf, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

bb.o:                                             ; preds = %bb.l
  %i.cm = and i8 %i.cc, -97
  %i.cn = or disjoint i8 %i.cm, 32
  store i8 %i.cn, ptr %i.q, align 8
  %i.co = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = and i32 %i.cp, -193
  store i32 %i.cq, ptr %i.co, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.val = phi i16 [ %i.cb, %bb.k ], [ %i.bw, %bb.l ], [ %i.bw, %bb.m ], [ %i.bw, %bb.n ], [ %i.bw, %bb.o ] ; 3 uses
  %i.cr = load i16, ptr %i.o, align 2
  %.not30 = icmp ne i16 %i.cr, 0
  %i.cs = and i16 %.val, 60
  %i.ct = icmp eq i16 %i.cs, 0
  %or.cond = select i1 %.not30, i1 %i.ct, i1 false
  br i1 %or.cond, label %ip6_gro_compute_pseudo.exit49, label %bb.p

ip6_gro_compute_pseudo.exit49:                    ; preds = %skb_gro_incr_csum_unnecessary.exit
  %.val.i.i41 = load i32, ptr %i.a, align 8       ; 2 uses
  %.val8.i.i42 = load i32, ptr %i.e, align 8
  %.not.i.i43 = icmp ugt i32 %.val.i.i41, %.val8.i.i42
  %i.cu = getelementptr i8, ptr %1, i64 208
  %.sink.in.i.i45 = select i1 %.not.i.i43, ptr %i.cu, ptr %i.c
  %i.cv = getelementptr i8, ptr %1, i64 76
  %i.cw = lshr i16 %.val, 1
  %i.cx = and i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr [2 x i8], ptr %i.cv, i64 %i.cy
  %.sink.i.i46 = load ptr, ptr %.sink.in.i.i45, align 8
  %.sink10.i.i47 = load i16, ptr %i.cz, align 2
  %i.da = zext i16 %.sink10.i.i47 to i64
  %i.db = getelementptr i8, ptr %.sink.i.i46, i64 %i.da ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = getelementptr i8, ptr %i.db, i64 24
  %i.de = getelementptr i8, ptr %1, i64 112
  %.val4.i48 = load i32, ptr %i.de, align 8
  %i.df = sub i32 %.val4.i48, %.val.i.i41
  %i.dg = tail call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.dh, 4352
  %i.dj = getelementptr i8, ptr %i.db, i64 16
  %i.dk = getelementptr i8, ptr %i.db, i64 32
  %i.dl = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dc, ptr elementtype(i64) %i.dj, ptr elementtype(i64) %i.dd, ptr elementtype(i64) %i.dk, i64 %i.di) #6, !srcloc !12 ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = lshr i64 %i.dl, 32
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.dm, i32 %i.do) #6, !srcloc !13 ; 2 uses
  %i.dq = shl i32 %i.dp, 16
  %i.dr = and i32 %i.dp, -65536
  %i.ds = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dq, i32 %i.dr) #7, !srcloc !14
  %i.dt = xor i32 %i.ds, -1
  %i.du = lshr i32 %i.dt, 16
  %i.dv = getelementptr i8, ptr %1, i64 72
  store i32 %i.du, ptr %i.dv, align 8
  %i.dw = or disjoint i16 %.val, 4
  store i16 %i.dw, ptr %i.bv, align 2
  br label %bb.p

bb.p:                                             ; preds = %ip6_gro_compute_pseudo.exit49, %skb_gro_incr_csum_unnecessary.exit, %bb.f
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @udpv6_encap_needed_key, i1 false) #8
          to label %arch_static_branch.exit [label %udp6_gro_lookup_skb.exit], !srcloc !15

udp6_gro_lookup_skb.exit:                         ; preds = %bb.p
  %i.dx = load i16, ptr %.0.i.i, align 2
  %i.dy = getelementptr i8, ptr %.0.i.i, i64 2
  %i.dz = load i16, ptr %i.dy, align 2
  %.val.i.i50 = load i32, ptr %i.a, align 8
  %.val8.i.i51 = load i32, ptr %i.e, align 8
  %.not.i.i52 = icmp ugt i32 %.val.i.i50, %.val8.i.i51
  %i.ea = getelementptr i8, ptr %1, i64 208
  %.sink.in.i.i54 = select i1 %.not.i.i52, ptr %i.ea, ptr %i.c
  %i.eb = getelementptr i8, ptr %1, i64 76
  %i.ec = getelementptr i8, ptr %1, i64 70
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = lshr i16 %i.ed, 1
  %i.ef = and i16 %i.ee, 1
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = getelementptr [2 x i8], ptr %i.eb, i64 %i.eg
  %.sink.i.i55 = load ptr, ptr %.sink.in.i.i54, align 8
  %.sink10.i.i56 = load i16, ptr %i.eh, align 2
  %i.ei = zext i16 %.sink10.i.i56 to i64
  %i.ej = getelementptr i8, ptr %.sink.i.i55, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %1, i64 16
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 264
  %i.en = load volatile ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.el, i64 224
  %.val.val.i = load i32, ptr %i.eo, align 32
  %i.ep = getelementptr i8, ptr %i.ej, i64 8
  %i.eq = getelementptr i8, ptr %i.ej, i64 24
  %i.er = tail call ptr @__udp6_lib_lookup(ptr noundef %i.en, ptr noundef %i.ep, i16 noundef zeroext %i.dx, ptr noundef %i.eq, i16 noundef zeroext %i.dz, i32 noundef %.val.val.i, i32 noundef 0, ptr noundef null) #5
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.p, %udp6_gro_lookup_skb.exit
  %.026 = phi ptr [ %i.er, %udp6_gro_lookup_skb.exit ], [ null, %bb.p ]
  %i.es = tail call ptr @udp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i.i, ptr noundef %.026) #5
  br label %bb.q

.critedge:                                        ; preds = %bb.d, %bb.c, %__skb_gro_checksum_validate_complete.exit, %udp_gro_udphdr.exit
  %i.et = getelementptr i8, ptr %1, i64 60
  store i16 1, ptr %i.et, align 4
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %arch_static_branch.exit
  %.0 = phi ptr [ null, %.critedge ], [ %i.es, %arch_static_branch.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @udp_gro_receive(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @udp6_gro_complete(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 76
  %i.b = getelementptr i8, ptr %0, i64 129        ; 5 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = lshr i32 %i.c, 14
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr [2 x i8], ptr %i.a, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2
  %i.i = getelementptr i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i16 %i.h to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k     ; 4 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 70
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, -32766
  %or.cond = icmp eq i16 %i.q, -32768
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %0, i64 112
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sub i32 %i.s, %1
  %i.u = trunc i32 %i.t to i16
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = getelementptr i8, ptr %i.n, i64 4
  store i16 %i.v, ptr %i.w, align 2
  %i.x = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val26 = load i32, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val27 = load ptr, ptr %i.y, align 8
  %i.z = zext i32 %.val26 to i64
  %i.aa = getelementptr i8, ptr %.val27, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 24     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = or i32 %i.ac, 393216
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr i8, ptr %0, i64 62
  %i.af = load i16, ptr %i.ae, align 2
  %.val = load i32, ptr %i.x, align 8
  %.val25 = load ptr, ptr %i.y, align 8
  %i.ag = zext i32 %.val to i64
  %i.ah = getelementptr i8, ptr %.val25, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 6
  store i16 %i.af, ptr %i.ai, align 2
  %i.aj = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.al = lshr i8 %i.ak, 5
  %i.am = and i8 %i.al, 3
  switch i8 %i.am, label %__skb_incr_checksum_unnecessary.exit [
    i8 1, label %bb.c
    i8 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.an = load i32, ptr %i.b, align 1             ; 3 uses
  %i.ao = and i32 %i.an, 192
  %.not.i = icmp eq i32 %i.ao, 192
  br i1 %.not.i, label %__skb_incr_checksum_unnecessary.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add i32 %i.an, 64
  %i.aq = and i32 %i.ap, 192
  %i.ar = and i32 %i.an, -193
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.b, align 1
  br label %__skb_incr_checksum_unnecessary.exit

bb.e:                                             ; preds = %bb.b
  %i.at = and i8 %i.ak, -97
  %i.au = or disjoint i8 %i.at, 32
  store i8 %i.au, ptr %i.aj, align 8
  %i.av = load i32, ptr %i.b, align 1
  %i.aw = and i32 %i.av, -193
  store i32 %i.aw, ptr %i.b, align 1
  br label %__skb_incr_checksum_unnecessary.exit

bb.f:                                             ; preds = %bb.a
  %i.ax = getelementptr i8, ptr %i.n, i64 6       ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %.not24 = icmp eq i16 %i.ay, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %0, i64 112
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sub i32 %i.ba, %1
  %i.bc = getelementptr i8, ptr %i.l, i64 8
  %i.bd = getelementptr i8, ptr %i.l, i64 24
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bf = zext i32 %i.be to i64
  %i.bg = add nuw nsw i64 %i.bf, 4352
  %i.bh = getelementptr i8, ptr %i.l, i64 16
  %i.bi = getelementptr i8, ptr %i.l, i64 32
  %i.bj = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bc, ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bd, ptr elementtype(i64) %i.bi, i64 %i.bg) #6, !srcloc !12 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = lshr i64 %i.bj, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.bk, i32 %i.bm) #6, !srcloc !13 ; 2 uses
  %i.bo = shl i32 %i.bn, 16
  %i.bp = and i32 %i.bn, -65536
  %i.bq = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bo, i32 %i.bp) #7, !srcloc !14
  %i.br = xor i32 %i.bq, -1
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc nuw i32 %i.bs to i16
  %i.bu = xor i16 %i.bt, -1
  store i16 %i.bu, ptr %i.ax, align 2
end_hunk_0
