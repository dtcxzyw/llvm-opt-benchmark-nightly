inline.NumInlined: 149
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tcp6_gso_segment:bb.a
  %i.ch = getelementptr i8, ptr %i.bu, i64 32
  %.val44.i.i = load i64, ptr %i.ch, align 8
  %i.ci = icmp eq i64 %.val41.i.i, %.val43.i.i
  %i.cj = icmp eq i64 %.val42.i.i, %.val44.i.i
  %i.ck = and i1 %i.ci, %i.cj
  %.not2956.i.i = icmp eq ptr %i.bn, null
  %or.cond.i.i = or i1 %.not2956.i.i, %i.ck
  br i1 %or.cond.i.i, label %pskb_may_pull_reason.exit, label %.lr.ph.i.i45

bb.k:                                             ; preds = %bb.i, %bb.h
  %.not2956.old.i.i = icmp eq ptr %i.bn, null
  br i1 %.not2956.old.i.i, label %pskb_may_pull_reason.exit, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %bb.k, %bb.j
  %i.cl = getelementptr i8, ptr %i.bm, i64 8      ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bm, i64 16
  %i.cn = getelementptr i8, ptr %i.bm, i64 24     ; 3 uses
  %i.co = getelementptr i8, ptr %i.bj, i64 2
  %i.cp = getelementptr i8, ptr %i.bm, i64 32
  br label %bb.l

bb.l:                                             ; preds = %__tcpv6_gso_segment_csum.exit55.i.i, %.lr.ph.i.i45
  %i.cq = phi ptr [ %i.bn, %.lr.ph.i.i45 ], [ %i.dz, %__tcpv6_gso_segment_csum.exit55.i.i ] ; 8 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 182    ; 2 uses
  %.val.i.i = load i16, ptr %i.cr, align 2
  %i.cs = getelementptr i8, ptr %i.cq, i64 200    ; 2 uses
  %.val30.i.i = load ptr, ptr %i.cs, align 8      ; 2 uses
  %i.ct = zext i16 %.val.i.i to i64
  %i.cu = getelementptr i8, ptr %.val30.i.i, i64 %i.ct ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 184
  %.val35.i.i = load i16, ptr %i.cv, align 8
  %i.cw = zext i16 %.val35.i.i to i64
  %i.cx = getelementptr i8, ptr %.val30.i.i, i64 %i.cw ; 4 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8      ; 3 uses
  %i.cz = load i16, ptr %i.bj, align 4            ; 3 uses
  %.val17.i.i.i = load i64, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %i.cx, i64 16
  %.val18.i.i.i = load i64, ptr %i.da, align 8
  %.val19.i.i.i = load i64, ptr %i.cl, align 8
  %.val20.i.i.i = load i64, ptr %i.cm, align 8
  %i.db = icmp eq i64 %.val17.i.i.i, %.val19.i.i.i
  %i.dc = icmp eq i64 %.val18.i.i.i, %.val20.i.i.i
  %i.dd = and i1 %i.db, %i.dc
  br i1 %i.dd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr i8, ptr %i.cu, i64 16
  tail call void @inet_proto_csum_replace16(ptr noundef %i.de, ptr noundef nonnull %i.cq, ptr noundef %i.cy, ptr noundef %i.cl, i1 noundef zeroext true) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.cy, ptr noundef align 4 dereferenceable(16) %i.cl, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.df = load i16, ptr %i.cu, align 2            ; 2 uses
  %i.dg = icmp eq i16 %i.df, %i.cz
  br i1 %i.dg, label %__tcpv6_gso_segment_csum.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr i8, ptr %i.cu, i64 16
  %i.di = zext i16 %i.df to i32
  %i.dj = zext i16 %i.cz to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %i.dh, ptr noundef nonnull %i.cq, i32 noundef %i.di, i32 noundef %i.dj, i1 noundef zeroext false) #11
  store i16 %i.cz, ptr %i.cu, align 2
  br label %__tcpv6_gso_segment_csum.exit.i.i

__tcpv6_gso_segment_csum.exit.i.i:                ; preds = %bb.o, %bb.n
  %i.dk = getelementptr i8, ptr %i.cx, i64 24     ; 3 uses
  %i.dl = getelementptr i8, ptr %i.cu, i64 2      ; 2 uses
  %i.dm = load i16, ptr %i.co, align 2            ; 3 uses
  %.val.i49.i.i = load i16, ptr %i.cr, align 2
  %.val16.i50.i.i = load ptr, ptr %i.cs, align 8
  %i.dn = zext i16 %.val.i49.i.i to i64
  %i.do = getelementptr i8, ptr %.val16.i50.i.i, i64 %i.dn ; 2 uses
  %.val17.i51.i.i = load i64, ptr %i.dk, align 8
  %i.dp = getelementptr i8, ptr %i.cx, i64 32
  %.val18.i52.i.i = load i64, ptr %i.dp, align 8
  %.val19.i53.i.i = load i64, ptr %i.cn, align 8
  %.val20.i54.i.i = load i64, ptr %i.cp, align 8
  %i.dq = icmp eq i64 %.val17.i51.i.i, %.val19.i53.i.i
  %i.dr = icmp eq i64 %.val18.i52.i.i, %.val20.i54.i.i
  %i.ds = and i1 %i.dq, %i.dr
  br i1 %i.ds, label %bb.q, label %bb.p

bb.p:                                             ; preds = %__tcpv6_gso_segment_csum.exit.i.i
  %i.dt = getelementptr i8, ptr %i.do, i64 16
  tail call void @inet_proto_csum_replace16(ptr noundef %i.dt, ptr noundef nonnull %i.cq, ptr noundef %i.dk, ptr noundef %i.cn, i1 noundef zeroext true) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.dk, ptr noundef align 4 dereferenceable(16) %i.cn, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %__tcpv6_gso_segment_csum.exit.i.i
  %i.du = load i16, ptr %i.dl, align 2            ; 2 uses
  %i.dv = icmp eq i16 %i.du, %i.dm
  br i1 %i.dv, label %__tcpv6_gso_segment_csum.exit55.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr i8, ptr %i.do, i64 16
  %i.dx = zext i16 %i.du to i32
  %i.dy = zext i16 %i.dm to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %i.dw, ptr noundef nonnull %i.cq, i32 noundef %i.dx, i32 noundef %i.dy, i1 noundef zeroext false) #11
  store i16 %i.dm, ptr %i.dl, align 2
  br label %__tcpv6_gso_segment_csum.exit55.i.i

__tcpv6_gso_segment_csum.exit55.i.i:              ; preds = %bb.r, %bb.q
  %i.dz = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not29.i.i = icmp eq ptr %i.dz, null
  br i1 %.not29.i.i, label %pskb_may_pull_reason.exit, label %bb.l, !llvm.loop !16

.thread:                                          ; preds = %skb_pagelen.exit
  %i.ea = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = and i8 %i.eb, -97
  store i8 %i.ec, ptr %i.ea, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %.phi.trans.insert55 = getelementptr i8, ptr %0, i64 128
  %.pre56 = load i8, ptr %.phi.trans.insert55, align 8
  %i.ed = and i8 %.pre56, 96
  %i.ee = icmp eq i8 %i.ed, 96
  br i1 %i.ee, label %bb.u, label %bb.t, !prof !17

bb.t:                                             ; preds = %.thread, %bb.s
  %i.ef = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.eg = getelementptr i8, ptr %0, i64 184
  %.val41 = load i16, ptr %i.eg, align 8
  %i.eh = zext i16 %.val41 to i64
  %i.ei = getelementptr i8, ptr %.val42, i64 %i.eh ; 2 uses
  %i.ej = getelementptr i8, ptr %0, i64 182
  %.val = load i16, ptr %i.ej, align 2
  %i.ek = zext i16 %.val to i64
  %i.el = getelementptr i8, ptr %.val42, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 16
  store i16 0, ptr %i.em, align 4
  %i.en = load i8, ptr %i.ef, align 8
  %i.eo = or i8 %i.en, 96
  store i8 %i.eo, ptr %i.ef, align 8
  %i.ep = getelementptr i8, ptr %i.ei, i64 8
  %i.eq = getelementptr i8, ptr %i.ei, i64 24
  tail call fastcc void @__tcp_v6_send_check(ptr noundef %0, ptr noundef %i.ep, ptr noundef %i.eq) #12, !srcloc !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.er = tail call ptr @tcp_gso_segment(ptr noundef %0, i64 noundef %1) #11
  br label %pskb_may_pull_reason.exit

pskb_may_pull_reason.exit:                        ; preds = %__tcpv6_gso_segment_csum.exit55.i.i, %bb.k, %bb.j, %bb.g, %bb.d, %bb.c, %bb.a, %bb.u
  %.1 = phi ptr [ %i.er, %bb.u ], [ inttoptr (i64 -22 to ptr), %bb.d ], [ inttoptr (i64 -22 to ptr), %bb.a ], [ inttoptr (i64 -22 to ptr), %bb.c ], [ %i.be, %bb.g ], [ %i.be, %bb.j ], [ %i.be, %bb.k ], [ %i.be, %__tcpv6_gso_segment_csum.exit55.i.i ]
  ret ptr %.1
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tcp6_gro_receive(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 60         ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %skb_gro_incr_csum_unnecessary.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 128        ; 3 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 96
  %.not.i = icmp eq i8 %i.e, 96
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 56
  %.val6.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 140
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr i8, ptr %1, i64 200
  %.val.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %1, i64 208
  %.val2.i.i = load ptr, ptr %i.j, align 8
  %i.k = ptrtoint ptr %.val2.i.i to i64
  %i.l = ptrtoint ptr %.val.i.i to i64
  %.neg.i.i = sub i64 %i.l, %i.k
  %.neg3.i.i = trunc i64 %.neg.i.i to i32
  %i.m = add i32 %.neg3.i.i, %i.h
  %i.n = getelementptr i8, ptr %1, i64 56
  %.val.i = load i32, ptr %i.n, align 8           ; 2 uses
  %i.o = icmp ult i32 %i.m, %.val.i
  br i1 %i.o, label %bb.d, label %.critedge25

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.val.i.i26 = phi i32 [ %.val6.pre.i, %._crit_edge.i ], [ %.val.i, %bb.c ] ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 68
  %.val7.i = load i16, ptr %i.p, align 4
  %i.q = zext i16 %.val7.i to i32
  %i.r = icmp eq i32 %.val.i.i26, %i.q
  br i1 %i.r, label %.critedge25, label %__skb_gro_checksum_validate_needed.exit

__skb_gro_checksum_validate_needed.exit:          ; preds = %bb.d
  %i.s = getelementptr i8, ptr %1, i64 70
  %i.t = load i16, ptr %i.s, align 2              ; 4 uses
  %i.u = and i16 %i.t, 56
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %2, label %.critedge25

2:                                                ; preds = %__skb_gro_checksum_validate_needed.exit
  %3 = getelementptr i8, ptr %1, i64 48
  %.val7.i.i = load i32, ptr %3, align 8
  %.not.i.i = icmp ugt i32 %.val.i.i26, %.val7.i.i
  br i1 %.not.i.i, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %1, i64 76
  %6 = lshr i16 %i.t, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i64
  %9 = getelementptr [2 x i8], ptr %5, i64 %8
  %10 = getelementptr i8, ptr %1, i64 40
  br label %ip6_gro_compute_pseudo.exit

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %1, i64 208
  %13 = getelementptr i8, ptr %1, i64 76
  %14 = lshr i16 %i.t, 1
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i64
  %17 = getelementptr [2 x i8], ptr %13, i64 %16
  br label %ip6_gro_compute_pseudo.exit

ip6_gro_compute_pseudo.exit:                      ; preds = %4, %11
  %.sink10.in.i.i = phi ptr [ %17, %11 ], [ %9, %4 ]
  %.sink.in.i.i = phi ptr [ %12, %11 ], [ %10, %4 ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8
  %.sink10.i.i = load i16, ptr %.sink10.in.i.i, align 2
  %i.w = zext i16 %.sink10.i.i to i64
  %i.x = getelementptr i8, ptr %.sink.i.i, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = getelementptr i8, ptr %i.x, i64 24
  %i.aa = getelementptr i8, ptr %1, i64 112
  %.val4.i = load i32, ptr %i.aa, align 8
  %i.ab = sub i32 %.val4.i, %.val.i.i26
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1536
  %i.af = getelementptr i8, ptr %i.x, i64 16
  %i.ag = getelementptr i8, ptr %i.x, i64 32
  %i.ah = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, ptr elementtype(i64) %i.af, ptr elementtype(i64) %i.z, ptr elementtype(i64) %i.ag, i64 %i.ae) #13, !srcloc !19 ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i64 %i.ah, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.ai, i32 %i.ak) #13, !srcloc !20 ; 2 uses
  %i.am = shl i32 %i.al, 16
  %i.an = and i32 %i.al, -65536
  %i.ao = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.am, i32 %i.an) #14, !srcloc !21
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = or disjoint i32 %i.ap, -65536           ; 2 uses
  %i.ar = and i16 %i.t, 4
  %.not.i27 = icmp eq i16 %i.ar, 0
  br i1 %.not.i27, label %__skb_gro_checksum_validate_complete.exit, label %bb.e

bb.e:                                             ; preds = %ip6_gro_compute_pseudo.exit
  %i.as = getelementptr i8, ptr %1, i64 72
  %i.at = load i32, ptr %i.as, align 8
  %i.au = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65536, 0) %i.aq, i32 %i.at) #13, !srcloc !20 ; 2 uses
  %i.av = shl i32 %i.au, 16
  %i.aw = and i32 %i.au, -65536
  %i.ax = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.av, i32 %i.aw) #14, !srcloc !21
  %.not6.i = icmp ugt i32 %i.ax, -65537
  br i1 %.not6.i, label %.critedge25, label %__skb_gro_checksum_validate_complete.exit

__skb_gro_checksum_validate_complete.exit:        ; preds = %ip6_gro_compute_pseudo.exit, %bb.e
  %i.ay = getelementptr i8, ptr %1, i64 72
  store i32 %i.aq, ptr %i.ay, align 8
  %i.az = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #11
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %.critedge25, label %.critedge

.critedge25:                                      ; preds = %bb.e, %bb.c, %bb.d, %__skb_gro_checksum_validate_needed.exit, %__skb_gro_checksum_validate_complete.exit
  %i.bb = getelementptr i8, ptr %1, i64 70        ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2            ; 3 uses
  %i.bd = and i16 %i.bc, 56
  %.not.i28 = icmp eq i16 %i.bd, 0
  br i1 %.not.i28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge25
  %i.be = add i16 %i.bc, 56
  %i.bf = and i16 %i.be, 56
  %i.bg = and i16 %i.bc, -57
  %i.bh = or disjoint i16 %i.bf, %i.bg
  store i16 %i.bh, ptr %i.bb, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

bb.g:                                             ; preds = %.critedge25
  %i.bi = load i8, ptr %i.c, align 8              ; 2 uses
  %i.bj = lshr i8 %i.bi, 5
  %i.bk = and i8 %i.bj, 3
  switch i8 %i.bk, label %skb_gro_incr_csum_unnecessary.exit [
    i8 1, label %bb.h
    i8 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 1            ; 3 uses
  %i.bn = and i32 %i.bm, 192
  %.not.i.i29 = icmp eq i32 %i.bn, 192
  br i1 %.not.i.i29, label %skb_gro_incr_csum_unnecessary.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = add i32 %i.bm, 64
  %i.bp = and i32 %i.bo, 192
  %i.bq = and i32 %i.bm, -193
  %i.br = or disjoint i32 %i.bp, %i.bq
  store i32 %i.br, ptr %i.bl, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

bb.j:                                             ; preds = %bb.g
  %i.bs = and i8 %i.bi, -97
  %i.bt = or disjoint i8 %i.bs, 32
  store i8 %i.bt, ptr %i.c, align 8
  %i.bu = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = and i32 %i.bv, -193
  store i32 %i.bw, ptr %i.bu, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %i.bx = getelementptr i8, ptr %1, i64 56        ; 3 uses
  %.val.i30 = load i32, ptr %i.bx, align 8        ; 3 uses
  %i.by = add i32 %.val.i30, 20                   ; 4 uses
  %i.bz = getelementptr i8, ptr %1, i64 40
  %i.ca = zext i32 %.val.i30 to i64               ; 2 uses
  %i.cb = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %.val.i.i31 = load i32, ptr %i.cb, align 8
  %.not.i.i32 = icmp ugt i32 %i.by, %.val.i.i31
  br i1 %.not.i.i32, label %bb.k, label %skb_gro_header.exit.i

bb.k:                                             ; preds = %skb_gro_incr_csum_unnecessary.exit
  %i.cc = getelementptr i8, ptr %1, i64 112
  %.val5.i.i.i = load i32, ptr %i.cc, align 8     ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 116
  %.val6.i.i.i = load i32, ptr %i.cd, align 4
  %i.ce = sub i32 %.val5.i.i.i, %.val6.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.by, %i.ce
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.n, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp ugt i32 %i.by, %.val5.i.i.i
  br i1 %i.cf, label %.critedge, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.cg = sub i32 %i.by, %i.ce
  %i.ch = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.cg) #11
  %.not9.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not9.i.i.i.i, label %.critedge, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ci = getelementptr i8, ptr %1, i64 208
  br label %skb_gro_header.exit.i

skb_gro_header.exit.i:                            ; preds = %bb.n, %skb_gro_incr_csum_unnecessary.exit
  %.val7.i.pn.in.i = phi ptr [ %i.bz, %skb_gro_incr_csum_unnecessary.exit ], [ %i.ci, %bb.n ]
  %.val7.i.pn.i = load ptr, ptr %.val7.i.pn.in.i, align 8
  %.0.i.i = getelementptr i8, ptr %.val7.i.pn.i, i64 %i.ca ; 3 uses
  %.not.i33 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i33, label %.critedge, label %bb.o, !prof !22

bb.o:                                             ; preds = %skb_gro_header.exit.i
  %i.cj = getelementptr i8, ptr %.0.i.i, i64 12
  %i.ck = load i16, ptr %i.cj, align 4
  %i.cl = lshr i16 %i.ck, 2
  %i.cm = and i16 %i.cl, 60                       ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i32              ; 2 uses
  %i.co = icmp samesign ult i16 %i.cm, 20
  br i1 %i.co, label %.critedge, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.cp = add i32 %.val.i30, %i.cn                ; 4 uses
  %.val21.i = load i32, ptr %i.cb, align 8
  %.not27.i = icmp ugt i32 %i.cp, %.val21.i
  br i1 %.not27.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr i8, ptr %1, i64 112
  %.val5.i.i = load i32, ptr %i.cq, align 8       ; 2 uses
  %i.cr = getelementptr i8, ptr %1, i64 116
  %.val6.i.i = load i32, ptr %i.cr, align 4
  %i.cs = sub i32 %.val5.i.i, %.val6.i.i          ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.cp, %i.cs
  br i1 %.not.i.i.i, label %bb.r, label %skb_gro_header_slow.exit.i, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.ct = icmp ugt i32 %i.cp, %.val5.i.i
  br i1 %i.ct, label %.critedge, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cu = sub i32 %i.cp, %i.cs
  %i.cv = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.cu) #11
  %.not9.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not9.i.i.i, label %.critedge, label %skb_gro_header_slow.exit.i, !prof !10

skb_gro_header_slow.exit.i:                       ; preds = %bb.s, %bb.q
  %i.cw = getelementptr i8, ptr %1, i64 208
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.ca  ; 2 uses
  %.not20.i = icmp eq ptr %i.cy, null
  br i1 %.not20.i, label %.critedge, label %bb.t, !prof !23

bb.t:                                             ; preds = %skb_gro_header_slow.exit.i, %bb.p
  %.0.i34 = phi ptr [ %.0.i.i, %bb.p ], [ %i.cy, %skb_gro_header_slow.exit.i ] ; 2 uses
  %i.cz = load i32, ptr %i.bx, align 8
  %i.da = add i32 %i.cz, %i.cn
  store i32 %i.da, ptr %i.bx, align 8
  %i.db = getelementptr i8, ptr %1, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 184
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = and i64 %i.de, 144115188075855872
  %.not23 = icmp eq i64 %i.df, 0
  br i1 %.not23, label %bb.v, label %bb.u, !prof !24

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @tcp6_check_fraglist_gro(ptr noundef %0, ptr noundef %1, ptr noundef %.0.i34) #12, !srcloc !25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = tail call ptr @tcp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i34) #11
  br label %bb.w

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.l, %bb.m, %skb_gro_header_slow.exit.i, %skb_gro_header.exit.i, %bb.o, %__skb_gro_checksum_validate_complete.exit
  store i16 1, ptr %i.a, align 4
  br label %bb.w
end_hunk_0
begin_hunk_1_@ipv6_gro_receive:bb.a
  %i.df = getelementptr i8, ptr %.082178.us, i64 208
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.b   ; 7 uses
  %i.di = load i32, ptr %.083, align 4
  %i.dj = load i32, ptr %i.dh, align 4
  %i.dk = xor i32 %i.dj, %i.di
  %i.dl = and i32 %i.dk, -61456
  %.not97.us = icmp eq i32 %i.dl, 0
  br i1 %.not97.us, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr i8, ptr %i.dh, i64 8
  %.val106.us = load i64, ptr %i.ct, align 8
  %.val107.us = load i64, ptr %i.cu, align 8
  %.val108.us = load i64, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.dh, i64 16
  %.val109.us = load i64, ptr %i.dn, align 8
  %i.do = icmp eq i64 %.val106.us, %.val108.us
  %i.dp = icmp eq i64 %.val107.us, %.val109.us
  %i.dq = and i1 %i.do, %i.dp
  br i1 %i.dq, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr i8, ptr %i.dh, i64 24
  %.val102.us = load i64, ptr %i.cv, align 8
  %.val103.us = load i64, ptr %i.cw, align 8
  %.val104.us = load i64, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %i.dh, i64 32
  %.val105.us = load i64, ptr %i.ds, align 8
  %i.dt = icmp eq i64 %.val102.us, %.val104.us
  %i.du = icmp eq i64 %.val103.us, %.val105.us
  %i.dv = and i1 %i.dt, %i.du
  br i1 %i.dv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dw = load i8, ptr %i.cx, align 2
  %i.dx = getelementptr i8, ptr %i.dh, i64 6
  %i.dy = load i8, ptr %i.dx, align 2
  %.not98.us = icmp eq i8 %i.dw, %i.dy
  br i1 %.not98.us, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr i8, ptr %i.dh, i64 40
  %bcmp.us = tail call i32 @bcmp(ptr %i.da, ptr %i.dz, i64 %i.db)
  %.not99.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not99.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.ea = and i16 %i.dd, -2
  store i16 %i.ea, ptr %i.dc, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph179.split.us
  %.082.us = load ptr, ptr %.082178.us, align 8   ; 2 uses
  %.not151.us = icmp eq ptr %.082.us, %0
  br i1 %.not151.us, label %._crit_edge, label %.lr.ph179.split.us, !llvm.loop !28

.lr.ph179.split:                                  ; preds = %.lr.ph179, %bb.ag
  %.082178 = phi ptr [ %.082, %bb.ag ], [ %.082176, %.lr.ph179 ] ; 3 uses
  %i.eb = getelementptr i8, ptr %.082178, i64 70  ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = and i16 %i.ec, 1
  %.not96 = icmp eq i16 %i.ed, 0
  br i1 %.not96, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph179.split
  %i.ee = getelementptr i8, ptr %.082178, i64 208
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.b   ; 6 uses
  %i.eh = load i32, ptr %.083, align 4
  %i.ei = load i32, ptr %i.eg, align 4
  %i.ej = xor i32 %i.ei, %i.eh
  %i.ek = and i32 %i.ej, -61456
  %.not97 = icmp eq i32 %i.ek, 0
  br i1 %.not97, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr i8, ptr %i.eg, i64 8
  %.val106 = load i64, ptr %i.ct, align 8
  %.val107 = load i64, ptr %i.cu, align 8
  %.val108 = load i64, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %i.eg, i64 16
  %.val109 = load i64, ptr %i.em, align 8
  %i.en = icmp eq i64 %.val106, %.val108
  %i.eo = icmp eq i64 %.val107, %.val109
  %i.ep = and i1 %i.en, %i.eo
  br i1 %i.ep, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr i8, ptr %i.eg, i64 24
  %.val102 = load i64, ptr %i.cv, align 8
  %.val103 = load i64, ptr %i.cw, align 8
  %.val104 = load i64, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %i.eg, i64 32
  %.val105 = load i64, ptr %i.er, align 8
  %i.es = icmp eq i64 %.val102, %.val104
  %i.et = icmp eq i64 %.val103, %.val105
  %i.eu = and i1 %i.es, %i.et
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load i8, ptr %i.cx, align 2
  %i.ew = getelementptr i8, ptr %i.eg, i64 6
  %i.ex = load i8, ptr %i.ew, align 2
  %.not98 = icmp eq i8 %i.ev, %i.ex
  br i1 %.not98, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.ey = and i16 %i.ec, -2
  store i16 %i.ey, ptr %i.eb, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %.lr.ph179.split, %bb.af
  %.082 = load ptr, ptr %.082178, align 8         ; 2 uses
  %.not151 = icmp eq ptr %.082, %0
  br i1 %.not151, label %._crit_edge, label %.lr.ph179.split, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.ag, %bb.aa, %bb.t
  %i.ez = getelementptr i8, ptr %1, i64 60        ; 4 uses
  %i.fa = load i16, ptr %i.ez, align 4
  %i.fb = or i16 %i.fa, %i.cr
  store i16 %i.fb, ptr %i.ez, align 4
  %i.fc = load i16, ptr %i.o, align 2             ; 2 uses
  %i.fd = and i16 %i.fc, 4
  %.not.i116 = icmp eq i16 %i.fd, 0
  br i1 %.not.i116, label %skb_gro_postpull_rcsum.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.fe = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = sub i32 0, %i.ff
  %i.fh = tail call i32 @csum_partial(ptr noundef %.083, i32 noundef %.fr180, i32 noundef %i.fg) #11
  %i.fi = sub i32 0, %i.fh
  store i32 %i.fi, ptr %i.fe, align 8
  %.pre183 = load i16, ptr %i.o, align 2
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %._crit_edge, %bb.ah
  %i.fj = phi i16 [ %i.fc, %._crit_edge ], [ %.pre183, %bb.ah ] ; 5 uses
  %i.fk = lshr i16 %i.fj, 11
  %i.fl = add nuw nsw i16 %i.fk, 1
  %i.fm = and i16 %i.fl, 15                       ; 2 uses
  %i.fn = shl nuw nsw i16 %i.fm, 11
  %i.fo = and i16 %i.fj, -30721
  %i.fp = or disjoint i16 %i.fn, %i.fo            ; 4 uses
  store i16 %i.fp, ptr %i.o, align 2
  %.not152 = icmp eq i16 %i.fm, 15
  br i1 %.not152, label %tcp6_gro_receive.exit, label %bb.ai, !prof !10

bb.ai:                                            ; preds = %skb_gro_postpull_rcsum.exit
  switch i32 %.085, label %bb.bf [
    i32 6, label %bb.aj
    i32 17, label %bb.be
  ], !prof !29

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i16, ptr %i.ez, align 4
  %.not.i = icmp eq i16 %i.fq, 0
  br i1 %.not.i, label %bb.ak, label %skb_gro_incr_csum_unnecessary.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr i8, ptr %1, i64 128       ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 8
  %i.ft = and i8 %i.fs, 96
  %.not.i117 = icmp eq i8 %i.ft, 96
  br i1 %.not.i117, label %bb.al, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ak
  %.val6.pre.i = load i32, ptr %i.a, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr i8, ptr %1, i64 140
  %i.fv = load i16, ptr %i.fu, align 4
  %i.fw = zext i16 %i.fv to i32
  %.val.i.i119 = load ptr, ptr %i.cg, align 8
  %.val2.i.i = load ptr, ptr %i.ce, align 8
  %i.fx = ptrtoint ptr %.val2.i.i to i64
  %i.fy = ptrtoint ptr %.val.i.i119 to i64
  %.neg.i.i = sub i64 %i.fy, %i.fx
  %.neg3.i.i = trunc i64 %.neg.i.i to i32
  %i.fz = add i32 %.neg3.i.i, %i.fw
  %.val.i120 = load i32, ptr %i.a, align 8        ; 2 uses
  %i.ga = icmp ult i32 %i.fz, %.val.i120
  br i1 %i.ga, label %bb.am, label %.critedge25.i

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  %.val.i.i121 = phi i32 [ %.val6.pre.i, %._crit_edge.i ], [ %.val.i120, %bb.al ] ; 3 uses
  %i.gb = getelementptr i8, ptr %1, i64 68
  %.val7.i118 = load i16, ptr %i.gb, align 4
  %i.gc = zext i16 %.val7.i118 to i32
  %i.gd = icmp ne i32 %.val.i.i121, %i.gc
  %i.ge = and i16 %i.fj, 56
  %i.gf = icmp eq i16 %i.ge, 0
  %or.cond = and i1 %i.gf, %i.gd
  br i1 %or.cond, label %ip6_gro_compute_pseudo.exit, label %.critedge25.i

ip6_gro_compute_pseudo.exit:                      ; preds = %bb.am
  %.val7.i.i = load i32, ptr %i.e, align 8
  %.not.i.i122 = icmp ugt i32 %.val.i.i121, %.val7.i.i
  %. = select i1 %.not.i.i122, ptr %i.ce, ptr %i.d
  %.pn.in.in = lshr i16 %i.fj, 1
  %.pn.in = and i16 %.pn.in.in, 1
  %.pn = zext nneg i16 %.pn.in to i64
  %.sink10.in.i.i = getelementptr [2 x i8], ptr %i.n, i64 %.pn
  %.sink.i.i = load ptr, ptr %., align 8
  %.sink10.i.i = load i16, ptr %.sink10.in.i.i, align 2
  %i.gg = zext i16 %.sink10.i.i to i64
  %i.gh = getelementptr i8, ptr %.sink.i.i, i64 %i.gg ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = getelementptr i8, ptr %i.gh, i64 24
  %.val4.i = load i32, ptr %i.y, align 8
  %i.gk = sub i32 %.val4.i, %.val.i.i121
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gk)
  %i.gm = zext i32 %i.gl to i64
  %i.gn = add nuw nsw i64 %i.gm, 1536
  %i.go = getelementptr i8, ptr %i.gh, i64 16
  %i.gp = getelementptr i8, ptr %i.gh, i64 32
  %i.gq = tail call i64 asm "\09addq $1,$0\0A\09adcq $2,$0\0A\09adcq $3,$0\0A\09adcq $4,$0\0A\09adcq $$0,$0\0A", "=r,*m,*m,*m,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gi, ptr elementtype(i64) %i.go, ptr elementtype(i64) %i.gj, ptr elementtype(i64) %i.gp, i64 %i.gn) #13, !srcloc !19 ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = lshr i64 %i.gq, 32
  %i.gt = trunc nuw i64 %i.gs to i32
  %i.gu = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.gr, i32 %i.gt) #13, !srcloc !20 ; 2 uses
  %i.gv = shl i32 %i.gu, 16
  %i.gw = and i32 %i.gu, -65536
  %i.gx = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gv, i32 %i.gw) #14, !srcloc !21
  %i.gy = lshr i32 %i.gx, 16
  %i.gz = or disjoint i32 %i.gy, -65536           ; 2 uses
  %i.ha = and i16 %i.fj, 4
  %.not.i123 = icmp eq i16 %i.ha, 0
  br i1 %.not.i123, label %__skb_gro_checksum_validate_complete.exit, label %bb.an

bb.an:                                            ; preds = %ip6_gro_compute_pseudo.exit
  %i.hb = getelementptr i8, ptr %1, i64 72
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65536, 0) %i.gz, i32 %i.hc) #13, !srcloc !20 ; 2 uses
  %i.he = shl i32 %i.hd, 16
  %i.hf = and i32 %i.hd, -65536
  %i.hg = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.he, i32 %i.hf) #14, !srcloc !21
  %.not6.i = icmp ugt i32 %i.hg, -65537
  br i1 %.not6.i, label %.critedge25.i, label %__skb_gro_checksum_validate_complete.exit

__skb_gro_checksum_validate_complete.exit:        ; preds = %ip6_gro_compute_pseudo.exit, %bb.an
  %i.hh = getelementptr i8, ptr %1, i64 72
  store i32 %i.gz, ptr %i.hh, align 8
  %i.hi = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #11
  %i.hj = icmp eq i16 %i.hi, 0
  br i1 %i.hj, label %__skb_gro_checksum_validate_complete.exit..critedge25.i_crit_edge, label %.critedge.i

__skb_gro_checksum_validate_complete.exit..critedge25.i_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  %.pre184 = load i16, ptr %i.o, align 2
  br label %.critedge25.i

.critedge25.i:                                    ; preds = %__skb_gro_checksum_validate_complete.exit..critedge25.i_crit_edge, %bb.an, %bb.al, %bb.am
  %i.hk = phi i16 [ %.pre184, %__skb_gro_checksum_validate_complete.exit..critedge25.i_crit_edge ], [ %i.fp, %bb.an ], [ %i.fp, %bb.al ], [ %i.fp, %bb.am ] ; 3 uses
  %i.hl = and i16 %i.hk, 56
  %.not.i125 = icmp eq i16 %i.hl, 0
  br i1 %.not.i125, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge25.i
  %i.hm = add i16 %i.hk, 56
  %i.hn = and i16 %i.hm, 56
  %i.ho = and i16 %i.hk, -57
  %i.hp = or disjoint i16 %i.hn, %i.ho
  store i16 %i.hp, ptr %i.o, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

bb.ap:                                            ; preds = %.critedge25.i
  %i.hq = load i8, ptr %i.fr, align 8             ; 2 uses
  %i.hr = lshr i8 %i.hq, 5
  %i.hs = and i8 %i.hr, 3
  switch i8 %i.hs, label %skb_gro_incr_csum_unnecessary.exit [
    i8 1, label %bb.aq
    i8 0, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 1            ; 3 uses
  %i.hv = and i32 %i.hu, 192
  %.not.i.i126 = icmp eq i32 %i.hv, 192
  br i1 %.not.i.i126, label %skb_gro_incr_csum_unnecessary.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hw = add i32 %i.hu, 64
  %i.hx = and i32 %i.hw, 192
  %i.hy = and i32 %i.hu, -193
  %i.hz = or disjoint i32 %i.hx, %i.hy
  store i32 %i.hz, ptr %i.ht, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

bb.as:                                            ; preds = %bb.ap
  %i.ia = and i8 %i.hq, -97
  %i.ib = or disjoint i8 %i.ia, 32
  store i8 %i.ib, ptr %i.fr, align 8
  %i.ic = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.id = load i32, ptr %i.ic, align 1
  %i.ie = and i32 %i.id, -193
  store i32 %i.ie, ptr %i.ic, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.aj
  %.val.i127 = load i32, ptr %i.a, align 8        ; 3 uses
  %i.if = add i32 %.val.i127, 20                  ; 4 uses
  %i.ig = zext i32 %.val.i127 to i64              ; 2 uses
  %.val.i.i128 = load i32, ptr %i.e, align 8
  %.not.i.i129 = icmp ugt i32 %i.if, %.val.i.i128
  br i1 %.not.i.i129, label %bb.at, label %skb_gro_header.exit.i130

bb.at:                                            ; preds = %skb_gro_incr_csum_unnecessary.exit
  %.val5.i.i.i141 = load i32, ptr %i.y, align 8   ; 2 uses
  %i.ih = getelementptr i8, ptr %1, i64 116
  %.val6.i.i.i142 = load i32, ptr %i.ih, align 4
  %i.ii = sub i32 %.val5.i.i.i141, %.val6.i.i.i142 ; 2 uses
  %.not.i.i.i.i143 = icmp ugt i32 %i.if, %i.ii
  br i1 %.not.i.i.i.i143, label %bb.au, label %skb_gro_header.exit.i130, !prof !10

bb.au:                                            ; preds = %bb.at
  %i.ij = icmp ugt i32 %i.if, %.val5.i.i.i141
  br i1 %i.ij, label %.critedge.i, label %bb.av, !prof !10

bb.av:                                            ; preds = %bb.au
  %i.ik = sub i32 %i.if, %i.ii
  %i.il = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.ik) #11
  %.not9.i.i.i.i144 = icmp eq ptr %i.il, null
  br i1 %.not9.i.i.i.i144, label %.critedge.i, label %skb_gro_header.exit.i130, !prof !10

skb_gro_header.exit.i130:                         ; preds = %bb.at, %bb.av, %skb_gro_incr_csum_unnecessary.exit
  %.val7.i.pn.in.i131 = phi ptr [ %i.d, %skb_gro_incr_csum_unnecessary.exit ], [ %i.ce, %bb.av ], [ %i.ce, %bb.at ]
  %.val7.i.pn.i132 = load ptr, ptr %.val7.i.pn.in.i131, align 8
  %.0.i.i133 = getelementptr i8, ptr %.val7.i.pn.i132, i64 %i.ig ; 3 uses
  %.not.i134 = icmp eq ptr %.0.i.i133, null
  br i1 %.not.i134, label %.critedge.i, label %bb.aw, !prof !22

bb.aw:                                            ; preds = %skb_gro_header.exit.i130
  %i.im = getelementptr i8, ptr %.0.i.i133, i64 12
  %i.in = load i16, ptr %i.im, align 4
  %i.io = lshr i16 %i.in, 2
  %i.ip = and i16 %i.io, 60                       ; 2 uses
  %i.iq = zext nneg i16 %i.ip to i32              ; 2 uses
  %i.ir = icmp samesign ult i16 %i.ip, 20
  br i1 %i.ir, label %.critedge.i, label %bb.ax, !prof !10

bb.ax:                                            ; preds = %bb.aw
  %i.is = add i32 %.val.i127, %i.iq               ; 4 uses
  %.val21.i = load i32, ptr %i.e, align 8
  %.not27.i135 = icmp ugt i32 %i.is, %.val21.i
  br i1 %.not27.i135, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.val5.i.i137 = load i32, ptr %i.y, align 8     ; 2 uses
  %i.it = getelementptr i8, ptr %1, i64 116
  %.val6.i.i138 = load i32, ptr %i.it, align 4
  %i.iu = sub i32 %.val5.i.i137, %.val6.i.i138    ; 2 uses
  %.not.i.i.i139 = icmp ugt i32 %i.is, %i.iu
  br i1 %.not.i.i.i139, label %bb.az, label %skb_gro_header_slow.exit.i, !prof !10

bb.az:                                            ; preds = %bb.ay
  %i.iv = icmp ugt i32 %i.is, %.val5.i.i137
  br i1 %i.iv, label %.critedge.i, label %bb.ba, !prof !10

bb.ba:                                            ; preds = %bb.az
  %i.iw = sub i32 %i.is, %i.iu
  %i.ix = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.iw) #11
  %.not9.i.i.i140 = icmp eq ptr %i.ix, null
  br i1 %.not9.i.i.i140, label %.critedge.i, label %skb_gro_header_slow.exit.i, !prof !10

skb_gro_header_slow.exit.i:                       ; preds = %bb.ba, %bb.ay
  %i.iy = load ptr, ptr %i.ce, align 8
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.ig  ; 2 uses
  %.not20.i = icmp eq ptr %i.iz, null
  br i1 %.not20.i, label %.critedge.i, label %bb.bb, !prof !23

bb.bb:                                            ; preds = %skb_gro_header_slow.exit.i, %bb.ax
  %.0.i136 = phi ptr [ %.0.i.i133, %bb.ax ], [ %i.iz, %skb_gro_header_slow.exit.i ] ; 2 uses
  %i.ja = load i32, ptr %i.a, align 8
  %i.jb = add i32 %i.ja, %i.iq
  store i32 %i.jb, ptr %i.a, align 8
  %i.jc = getelementptr i8, ptr %1, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr i8, ptr %i.jd, i64 184
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = and i64 %i.jf, 144115188075855872
  %.not23.i = icmp eq i64 %i.jg, 0
  br i1 %.not23.i, label %bb.bd, label %bb.bc, !prof !24

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @tcp6_check_fraglist_gro(ptr noundef %0, ptr noundef %1, ptr noundef %.0.i136) #12, !srcloc !25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jh = tail call ptr @tcp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i136) #11
  br label %tcp6_gro_receive.exit

.critedge.i:                                      ; preds = %bb.ba, %bb.az, %bb.au, %bb.av, %skb_gro_header_slow.exit.i, %skb_gro_header.exit.i130, %bb.aw, %__skb_gro_checksum_validate_complete.exit
  store i16 1, ptr %i.ez, align 4
  br label %tcp6_gro_receive.exit

bb.be:                                            ; preds = %bb.ai
  %i.ji = tail call ptr @udp6_gro_receive(ptr noundef %0, ptr noundef %1) #11
  br label %tcp6_gro_receive.exit

bb.bf:                                            ; preds = %bb.ai
  %i.jj = getelementptr i8, ptr %.0, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = tail call ptr %i.jk(ptr noundef %0, ptr noundef %1) #11
end_hunk_1
