inline.NumInlined: 155
inline.NumDeleted: 67
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tcp_gro_receive:bb.a
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %.val96 to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i16
  %i.ip = getelementptr i8, ptr %1, i64 184
  %i.iq = add i16 %i.ii, %i.io
  store i16 %i.iq, ptr %i.ip, align 8
  %.not84 = icmp eq i32 %i.ia, 0
  br i1 %.not84, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ir = tail call i32 @skb_gro_receive_list(ptr noundef nonnull %.01521.i, ptr noundef %1) #10
  %.not85 = icmp eq i32 %i.ir, 0
  br i1 %.not85, label %tcp_gro_lookup.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br label %tcp_gro_lookup.exit.thread

bb.u:                                             ; preds = %bb.q
  %.not82 = icmp eq i32 %i.ha, 0
  br i1 %.not82, label %bb.v, label %tcp_gro_lookup.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.is = tail call i32 @skb_gro_receive(ptr noundef nonnull %.01521.i, ptr noundef %1) #10
  %.not83 = icmp eq i32 %i.is, 0
  br i1 %.not83, label %bb.w, label %tcp_gro_lookup.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.it = and i32 %i.h, 2304
  %i.iu = load i32, ptr %i.t, align 4
  %i.iv = or i32 %i.iu, %i.it
  store i32 %i.iv, ptr %i.t, align 4
  br label %tcp_gro_lookup.exit.thread

tcp_gro_lookup.exit.thread:                       ; preds = %bb.d, %bb.a, %bb.u, %bb.v, %bb.s, %bb.t, %tcp_gro_lookup.exit, %bb.w
  %.not106 = phi i1 [ false, %bb.t ], [ false, %bb.s ], [ true, %tcp_gro_lookup.exit ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ true, %bb.a ], [ true, %bb.d ]
  %.0.i105 = phi ptr [ %.01521.i, %bb.t ], [ %.01521.i, %bb.s ], [ null, %tcp_gro_lookup.exit ], [ %.01521.i, %bb.w ], [ %.01521.i, %bb.v ], [ %.01521.i, %bb.u ], [ null, %bb.a ], [ null, %bb.d ]
  %.077 = phi i32 [ 1, %bb.t ], [ %i.gd, %bb.s ], [ 1, %tcp_gro_lookup.exit ], [ %i.gd, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.a ], [ 1, %bb.d ]
  %i.iw = getelementptr i8, ptr %1, i64 192
  %.val93 = load i32, ptr %i.iw, align 8
  %i.ix = getelementptr i8, ptr %1, i64 200
  %.val94 = load ptr, ptr %i.ix, align 8
  %i.iy = zext i32 %.val93 to i64
  %i.iz = getelementptr i8, ptr %.val94, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %i.jb = load i16, ptr %i.ja, align 4            ; 2 uses
  %.not108 = icmp eq i16 %i.jb, 0
  br i1 %.not108, label %bb.y, label %bb.x, !prof !10

bb.x:                                             ; preds = %tcp_gro_lookup.exit.thread
  %i.jc = getelementptr i8, ptr %1, i64 62
  %i.jd = load i16, ptr %i.jc, align 2
  %i.je = zext i16 %i.jd to i32
  %i.jf = zext i16 %i.jb to i32
  %i.jg = mul nuw i32 %i.je, %i.jf
  %i.jh = icmp ne i32 %i.g, %i.jg
  br label %bb.z

bb.y:                                             ; preds = %tcp_gro_lookup.exit.thread
  %i.ji = icmp ult i32 %i.g, %.077
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2.in = phi i1 [ %i.jh, %bb.x ], [ %i.ji, %bb.y ]
  %.2 = zext i1 %.2.in to i32
  %i.jj = and i32 %i.h, 12032
  %i.jk = or disjoint i32 %i.jj, %.2              ; 2 uses
  br i1 %.not106, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jl = getelementptr i8, ptr %1, i64 70
  %i.jm = load i16, ptr %i.jl, align 2
  %i.jn = and i16 %i.jm, 1
  %i.jo = icmp eq i16 %i.jn, 0
  %i.jp = icmp ne i32 %i.jk, 0
  %or.cond = select i1 %i.jo, i1 true, i1 %i.jp
  %spec.select = select i1 %or.cond, ptr %.0.i105, ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.078 = phi ptr [ null, %bb.z ], [ %spec.select, %bb.aa ]
  %i.jq = icmp ne i32 %i.jk, 0
  %i.jr = getelementptr i8, ptr %1, i64 60        ; 2 uses
  %i.js = load i16, ptr %i.jr, align 4
  %i.jt = zext i1 %i.jq to i16
  %i.ju = or i16 %i.js, %i.jt
  store i16 %i.ju, ptr %i.jr, align 4
  ret ptr %.078
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_gro_receive_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @tcp_gro_complete(ptr nofree noundef captures(none) initializes((140, 144)) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 182
  %.val = load i16, ptr %i.a, align 2             ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val15 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = zext i16 %.val to i64
  %i.d = getelementptr i8, ptr %.val15, i64 %i.c
  %i.e = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 129
  %i.g = load i32, ptr %i.f, align 1
  %i.h = and i32 %i.g, 16384
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 174
  store i16 %.val, ptr %i.i, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 140
  store i16 %.val, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %0, i64 142
  store i16 16, ptr %i.k, align 2
  %i.l = load i8, ptr %i.e, align 8
  %i.m = or i8 %i.l, 96
  store i8 %i.m, ptr %i.e, align 8
  %i.n = getelementptr i8, ptr %0, i64 192
  %.val16 = load i32, ptr %i.n, align 8
  %i.o = zext i32 %.val16 to i64
  %i.p = getelementptr i8, ptr %.val15, i64 %i.o  ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 62
  %i.r = load i16, ptr %i.q, align 2
  %i.s = getelementptr i8, ptr %i.p, i64 6
  store i16 %i.r, ptr %i.s, align 2
  %i.t = getelementptr i8, ptr %i.d, i64 12
  %i.u = load i16, ptr %i.t, align 4
  %.not14 = icmp sgt i16 %i.u, -1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = or i32 %i.w, 524288
  store i32 %i.x, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @tcp4_gro_receive(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) #0 align 16 prefalign(16) {
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
  br i1 %i.o, label %bb.d, label %.critedge23

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.val.i.i24 = phi i32 [ %.val6.pre.i, %._crit_edge.i ], [ %.val.i, %bb.c ] ; 3 uses
  %i.p = getelementptr i8, ptr %1, i64 68
  %.val7.i = load i16, ptr %i.p, align 4
  %i.q = zext i16 %.val7.i to i32
  %i.r = icmp eq i32 %.val.i.i24, %i.q
  br i1 %i.r, label %.critedge23, label %__skb_gro_checksum_validate_needed.exit

__skb_gro_checksum_validate_needed.exit:          ; preds = %bb.d
  %i.s = getelementptr i8, ptr %1, i64 70
  %i.t = load i16, ptr %i.s, align 2              ; 4 uses
  %i.u = and i16 %i.t, 56
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %2, label %.critedge23

2:                                                ; preds = %__skb_gro_checksum_validate_needed.exit
  %3 = getelementptr i8, ptr %1, i64 48
  %.val7.i.i = load i32, ptr %3, align 8
  %.not.i.i = icmp ugt i32 %.val.i.i24, %.val7.i.i
  br i1 %.not.i.i, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %1, i64 76
  %6 = lshr i16 %i.t, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i64
  %9 = getelementptr [2 x i8], ptr %5, i64 %8
  %10 = getelementptr i8, ptr %1, i64 40
  br label %inet_gro_compute_pseudo.exit

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %1, i64 208
  %13 = getelementptr i8, ptr %1, i64 76
  %14 = lshr i16 %i.t, 1
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i64
  %17 = getelementptr [2 x i8], ptr %13, i64 %16
  br label %inet_gro_compute_pseudo.exit

inet_gro_compute_pseudo.exit:                     ; preds = %4, %11
  %.sink10.in.i.i = phi ptr [ %17, %11 ], [ %9, %4 ]
  %.sink.in.i.i = phi ptr [ %12, %11 ], [ %10, %4 ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8
  %.sink10.i.i = load i16, ptr %.sink10.in.i.i, align 2
  %i.w = zext i16 %.sink10.i.i to i64
  %i.x = getelementptr i8, ptr %.sink.i.i, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr i8, ptr %1, i64 112
  %.val4.i = load i32, ptr %i.ac, align 8
  %i.ad = sub i32 %.val4.i, %.val.i.i24
  %i.ae = shl i32 %i.ad, 8
  %i.af = add i32 %i.ae, 1536
  %i.ag = tail call i32 asm "  addl $1, $0\0A  adcl $2, $0\0A  adcl $3, $0\0A  adcl $$0, $0\0A", "=r,imr,imr,imr,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ab, i32 %i.z, i32 %i.af, i32 0) #13, !srcloc !30 ; 2 uses
  %i.ah = and i16 %i.t, 4
  %.not.i25 = icmp eq i16 %i.ah, 0
  br i1 %.not.i25, label %__skb_gro_checksum_validate_complete.exit, label %bb.e

bb.e:                                             ; preds = %inet_gro_compute_pseudo.exit
  %i.ai = getelementptr i8, ptr %1, i64 72
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = tail call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag, i32 %i.aj) #13, !srcloc !14 ; 2 uses
  %i.al = shl i32 %i.ak, 16
  %i.am = and i32 %i.ak, -65536
  %i.an = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al, i32 %i.am) #14, !srcloc !15
  %.not6.i = icmp ugt i32 %i.an, -65537
  br i1 %.not6.i, label %.critedge23, label %__skb_gro_checksum_validate_complete.exit

__skb_gro_checksum_validate_complete.exit:        ; preds = %inet_gro_compute_pseudo.exit, %bb.e
  %i.ao = getelementptr i8, ptr %1, i64 72
  store i32 %i.ag, ptr %i.ao, align 8
  %i.ap = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #10
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %.critedge23, label %.critedge

.critedge23:                                      ; preds = %bb.e, %bb.c, %bb.d, %__skb_gro_checksum_validate_needed.exit, %__skb_gro_checksum_validate_complete.exit
  %i.ar = getelementptr i8, ptr %1, i64 70        ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2            ; 3 uses
  %i.at = and i16 %i.as, 56
  %.not.i26 = icmp eq i16 %i.at, 0
  br i1 %.not.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge23
  %i.au = add i16 %i.as, 56
  %i.av = and i16 %i.au, 56
  %i.aw = and i16 %i.as, -57
  %i.ax = or disjoint i16 %i.av, %i.aw
  store i16 %i.ax, ptr %i.ar, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

bb.g:                                             ; preds = %.critedge23
  %i.ay = load i8, ptr %i.c, align 8              ; 2 uses
  %i.az = lshr i8 %i.ay, 5
  %i.ba = and i8 %i.az, 3
  switch i8 %i.ba, label %skb_gro_incr_csum_unnecessary.exit [
    i8 1, label %bb.h
    i8 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1            ; 3 uses
  %i.bd = and i32 %i.bc, 192
  %.not.i.i27 = icmp eq i32 %i.bd, 192
  br i1 %.not.i.i27, label %skb_gro_incr_csum_unnecessary.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i32 %i.bc, 64
  %i.bf = and i32 %i.be, 192
  %i.bg = and i32 %i.bc, -193
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.bb, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

bb.j:                                             ; preds = %bb.g
  %i.bi = and i8 %i.ay, -97
  %i.bj = or disjoint i8 %i.bi, 32
  store i8 %i.bj, ptr %i.c, align 8
  %i.bk = getelementptr i8, ptr %1, i64 129       ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = and i32 %i.bl, -193
  store i32 %i.bm, ptr %i.bk, align 1
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %i.bn = getelementptr i8, ptr %1, i64 56        ; 4 uses
  %.val.i28 = load i32, ptr %i.bn, align 8        ; 3 uses
  %i.bo = add i32 %.val.i28, 20                   ; 4 uses
  %i.bp = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.bq = zext i32 %.val.i28 to i64               ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %.val.i.i29 = load i32, ptr %i.br, align 8
  %.not.i.i30 = icmp ugt i32 %i.bo, %.val.i.i29
  br i1 %.not.i.i30, label %bb.k, label %skb_gro_header.exit.i

bb.k:                                             ; preds = %skb_gro_incr_csum_unnecessary.exit
  %i.bs = getelementptr i8, ptr %1, i64 112
  %.val5.i.i.i = load i32, ptr %i.bs, align 8     ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 116
  %.val6.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = sub i32 %.val5.i.i.i, %.val6.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.bo, %i.bu
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.n, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp ugt i32 %i.bo, %.val5.i.i.i
  br i1 %i.bv, label %.critedge, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bw = sub i32 %i.bo, %i.bu
  %i.bx = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.bw) #10
  %.not9.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not9.i.i.i.i, label %.critedge, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.by = getelementptr i8, ptr %1, i64 208
  br label %skb_gro_header.exit.i

skb_gro_header.exit.i:                            ; preds = %bb.n, %skb_gro_incr_csum_unnecessary.exit
  %.val7.i.pn.in.i = phi ptr [ %i.bp, %skb_gro_incr_csum_unnecessary.exit ], [ %i.by, %bb.n ]
  %.val7.i.pn.i = load ptr, ptr %.val7.i.pn.in.i, align 8
  %.0.i.i = getelementptr i8, ptr %.val7.i.pn.i, i64 %i.bq ; 3 uses
  %.not.i31 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i31, label %.critedge, label %bb.o, !prof !31

bb.o:                                             ; preds = %skb_gro_header.exit.i
  %i.bz = getelementptr i8, ptr %.0.i.i, i64 12
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = lshr i16 %i.ca, 2
  %i.cc = and i16 %i.cb, 60                       ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i32              ; 2 uses
  %i.ce = icmp samesign ult i16 %i.cc, 20
  br i1 %i.ce, label %.critedge, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.cf = add i32 %.val.i28, %i.cd                ; 4 uses
  %.val21.i = load i32, ptr %i.br, align 8
  %.not27.i = icmp ugt i32 %i.cf, %.val21.i
  br i1 %.not27.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr i8, ptr %1, i64 112
  %.val5.i.i = load i32, ptr %i.cg, align 8       ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 116
  %.val6.i.i = load i32, ptr %i.ch, align 4
  %i.ci = sub i32 %.val5.i.i, %.val6.i.i          ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.cf, %i.ci
  br i1 %.not.i.i.i, label %bb.r, label %skb_gro_header_slow.exit.i, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.cj = icmp ugt i32 %i.cf, %.val5.i.i
  br i1 %i.cj, label %.critedge, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.ck = sub i32 %i.cf, %i.ci
  %i.cl = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.ck) #10
  %.not9.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not9.i.i.i, label %.critedge, label %skb_gro_header_slow.exit.i, !prof !11

skb_gro_header_slow.exit.i:                       ; preds = %bb.s, %bb.q
  %i.cm = getelementptr i8, ptr %1, i64 208
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.bq  ; 2 uses
  %.not20.i = icmp eq ptr %i.co, null
  br i1 %.not20.i, label %.critedge, label %bb.t, !prof !32

bb.t:                                             ; preds = %skb_gro_header_slow.exit.i, %bb.p
  %.0.i32 = phi ptr [ %.0.i.i, %bb.p ], [ %i.co, %skb_gro_header_slow.exit.i ] ; 4 uses
  %i.cp = load i32, ptr %i.bn, align 8
  %i.cq = add i32 %i.cp, %i.cd
  store i32 %i.cq, ptr %i.bn, align 8
  %i.cr = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 184
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = and i64 %i.cu, 144115188075855872
  %.not.i33 = icmp eq i64 %i.cv, 0
  br i1 %.not.i33, label %tcp4_check_fraglist_gro.exit, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.cw = tail call ptr @tcp_gro_lookup(ptr noundef readonly %0, ptr noundef nonnull readonly %.0.i32) #12 ; 2 uses
  %.not19.i = icmp eq ptr %i.cw, null
  br i1 %.not19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr i8, ptr %i.cw, i64 70
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = and i16 %i.cy, -32768
  %i.da = getelementptr i8, ptr %1, i64 70        ; 2 uses
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = and i16 %i.db, 32767
  %i.dd = or disjoint i16 %i.dc, %i.cz
  store i16 %i.dd, ptr %i.da, align 2
  br label %tcp4_check_fraglist_gro.exit

bb.w:                                             ; preds = %bb.u
  %i.de = getelementptr i8, ptr %1, i64 88
  %.val.i.i.i = load i64, ptr %i.de, align 8
  %i.df = and i64 %.val.i.i.i, -2                 ; 2 uses
  %.not.i.i.i34 = icmp eq i64 %i.df, 0
end_hunk_0
