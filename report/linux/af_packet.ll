inline.NumInlined: 737
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@virtio_net_hdr_to_skb:bb.a
.lr.ph.i:                                         ; preds = %virtio_net_hdr_set_proto.exit
  %i.bo = and i32 %.294.i, 65536
  %.not114.i = icmp eq i32 %i.bo, 0
  br i1 %.not114.i, label %.critedge122.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.w
  %i.bp = load i16, ptr %i.ay, align 4
  %i.bq = icmp eq i16 %i.bp, 8
  br i1 %i.bq, label %bb.w, label %.critedge122.i

bb.w:                                             ; preds = %.lr.ph.split.i
  store i16 -8826, ptr %i.ay, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %i.br = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br i1 %i.br, label %._crit_edge.i, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.w, %virtio_net_hdr_set_proto.exit
  %i.bs = load i16, ptr %2, align 4
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %.196.i, %i.bt          ; 4 uses
  %i.bv = getelementptr i8, ptr %0, i64 112
  %.val149.i = load i32, ptr %i.bv, align 8       ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 116
  %.val150.i = load i32, ptr %i.bw, align 4
  %i.bx = sub i32 %.val149.i, %.val150.i          ; 2 uses
  %.not.i134.i = icmp ugt i32 %i.bu, %i.bx
  br i1 %.not.i134.i, label %bb.x, label %pskb_may_pull_reason.exit138.i, !prof !23

bb.x:                                             ; preds = %._crit_edge.i
  %i.by = icmp ugt i32 %i.bu, %.val149.i
  br i1 %i.by, label %.critedge122.i, label %bb.y, !prof !23

bb.y:                                             ; preds = %bb.x
  %i.bz = sub nsw i32 %i.bu, %i.bx
  %i.ca = call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.bz) #20
  %.not9.i136.i = icmp ne ptr %i.ca, null
  br label %pskb_may_pull_reason.exit138.i

pskb_may_pull_reason.exit138.i:                   ; preds = %bb.y, %._crit_edge.i
  %.0.i135.i = phi i1 [ %.not9.i136.i, %bb.y ], [ true, %._crit_edge.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = zext i8 %i.cc to i32
  %.not115.i = icmp eq i32 %.1101.i, %i.cd
  %or.cond.i = select i1 %.0.i135.i, i1 %.not115.i, i1 false
  br i1 %or.cond.i, label %.critedge.i, label %.critedge122.i

.critedge.i:                                      ; preds = %pskb_may_pull_reason.exit138.i
  %i.ce = load i16, ptr %2, align 4
  %i.cf = load ptr, ptr %i.h, align 8
  %i.cg = load ptr, ptr %i.j, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = getelementptr i8, ptr %0, i64 182
  %i.cm = add i16 %i.ce, %i.ck
  store i16 %i.cm, ptr %i.cl, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge124.i

bb.z:                                             ; preds = %bb.q
  %i.cn = add nuw nsw i32 %.191.i, %.196.i        ; 5 uses
  %i.co = getelementptr i8, ptr %0, i64 112
  %.val145.i = load i32, ptr %i.co, align 8       ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 116
  %.val146.i = load i32, ptr %i.cp, align 4
  %i.cq = sub i32 %.val145.i, %.val146.i          ; 2 uses
  %.not.i139.i = icmp ugt i32 %i.cn, %i.cq
  br i1 %.not.i139.i, label %bb.aa, label %.critedge124.i, !prof !23

bb.aa:                                            ; preds = %bb.z
  %i.cr = icmp ugt i32 %i.cn, %.val145.i
  br i1 %i.cr, label %__virtio_net_hdr_to_skb.exit, label %bb.ab, !prof !23

bb.ab:                                            ; preds = %bb.aa
  %i.cs = sub nsw i32 %i.cn, %i.cq
  %i.ct = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %0, i32 noundef %i.cs) #20
  %.not9.i141.i = icmp eq ptr %i.ct, null
  br i1 %.not9.i141.i, label %__virtio_net_hdr_to_skb.exit, label %.critedge124.i, !prof !23

.critedge124.i:                                   ; preds = %bb.ab, %bb.z, %.critedge.i, %bb.p, %bb.o, %bb.m
  %.299.i = phi i32 [ 0, %bb.p ], [ %i.bu, %.critedge.i ], [ %i.ar, %bb.o ], [ %i.ar, %bb.m ], [ %i.cn, %bb.z ], [ %i.cn, %bb.ab ] ; 7 uses
  br i1 %.not.i, label %__virtio_net_hdr_to_skb.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge124.i
  %i.cu = getelementptr i8, ptr %1, i64 4
  %i.cv = load i16, ptr %i.cu, align 2            ; 4 uses
  %i.cw = getelementptr i8, ptr %0, i64 192
  %.val159.i = load i32, ptr %i.cw, align 8
  %.val160.i = load ptr, ptr %i.j, align 8
  %i.cx = zext i32 %.val159.i to i64
  %i.cy = getelementptr i8, ptr %.val160.i, i64 %i.cx ; 3 uses
  %i.cz = and i32 %.294.i, -5                     ; 2 uses
  %i.da = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.cz)
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %.split.i, label %bb.aj

.split.i:                                         ; preds = %bb.ac
  %i.dc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cz, i1 true)
  switch i32 %i.dc, label %bb.aj [
    i32 16, label %bb.ad
    i32 17, label %bb.ae
    i32 0, label %bb.ah
    i32 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %.split.i
  %i.dd = sub i32 %.299.i, %.196.i
  br label %bb.aj

bb.ae:                                            ; preds = %.split.i
  %i.de = load i8, ptr %1, align 2
  %i.df = and i8 %i.de, 1
  %.not117.i = icmp eq i8 %i.df, 0
  br i1 %.not117.i, label %__virtio_net_hdr_to_skb.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr i8, ptr %0, i64 142
  %i.dh = load i16, ptr %i.dg, align 2
  %.not118.i = icmp eq i16 %i.dh, 6
  br i1 %.not118.i, label %bb.ag, label %__virtio_net_hdr_to_skb.exit

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr i8, ptr %0, i64 112
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = sub i32 %i.dj, %.299.i
  %i.dl = zext i16 %i.cv to i32
  %i.dm = shl nuw nsw i32 %i.dl, 7
  %i.dn = icmp ule i32 %i.dk, %i.dm
  %.not119.i = icmp eq i32 %.294.i, 131072
  %or.cond128.i = select i1 %i.dn, i1 %.not119.i, i1 false
  br i1 %or.cond128.i, label %bb.aj, label %__virtio_net_hdr_to_skb.exit

bb.ah:                                            ; preds = %.split.i, %.split.i
  %i.do = getelementptr i8, ptr %0, i64 128
  %i.dp = load i8, ptr %i.do, align 8
  %i.dq = and i8 %i.dp, 96
  %i.dr = icmp eq i8 %i.dq, 96
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = getelementptr i8, ptr %0, i64 142
  %i.dt = load i16, ptr %i.ds, align 2
  %.not116.i = icmp eq i16 %i.dt, 16
  br i1 %.not116.i, label %bb.aj, label %__virtio_net_hdr_to_skb.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad, %.split.i, %bb.ac
  %.089.i = phi i32 [ %.299.i, %.split.i ], [ %i.dd, %bb.ad ], [ %.299.i, %bb.ag ], [ %.299.i, %bb.ai ], [ %.299.i, %bb.ah ], [ %.299.i, %bb.ac ]
  %i.du = icmp eq i16 %i.cv, -1
  br i1 %i.du, label %__virtio_net_hdr_to_skb.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = zext i16 %i.cv to i32
  %i.dw = getelementptr i8, ptr %0, i64 112
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = sub i32 %i.dx, %.089.i
  %i.dz = icmp ugt i32 %i.dy, %i.dv
  br i1 %i.dz, label %bb.al, label %__virtio_net_hdr_to_skb.exit

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr i8, ptr %i.cy, i64 4
  store i16 %i.cv, ptr %i.ea, align 4
  %i.eb = getelementptr i8, ptr %i.cy, i64 24
  %i.ec = or i32 %.294.i, 2
  store i32 %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %i.cy, i64 6
  store i16 0, ptr %i.ed, align 2
  br label %__virtio_net_hdr_to_skb.exit

.critedge122.i:                                   ; preds = %.lr.ph.split.i, %pskb_may_pull_reason.exit138.i, %bb.x, %.lr.ph.i, %virtio_net_hdr_match_proto.exit.i, %.split172.i, %.split173.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %__virtio_net_hdr_to_skb.exit

__virtio_net_hdr_to_skb.exit:                     ; preds = %bb.b, %bb.f, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o, %bb.aa, %bb.ab, %.critedge124.i, %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %.critedge122.i
  %.6.i = phi i32 [ -22, %bb.f ], [ -22, %bb.b ], [ -22, %bb.j ], [ 0, %.critedge124.i ], [ -22, %bb.o ], [ -22, %.critedge122.i ], [ 0, %bb.al ], [ 0, %bb.ak ], [ -22, %bb.ai ], [ -22, %bb.ag ], [ -22, %bb.af ], [ -22, %bb.ae ], [ -22, %bb.aj ], [ -22, %bb.k ], [ -22, %bb.l ], [ -22, %bb.i ], [ -22, %bb.n ], [ -22, %bb.aa ], [ -22, %bb.ab ]
  ret i32 %.6.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tpacket_destruct_skb(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1032
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.o, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %.val13 = load i32, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val14 = load ptr, ptr %i.f, align 8
  %i.g = zext i32 %.val13 to i64
  %i.h = getelementptr i8, ptr %.val14, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 9 uses
  %i.n = getelementptr i8, ptr %i.b, i64 1072
  %.val15 = load ptr, ptr %i.n, align 8           ; 2 uses
  tail call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val15, ptr elementtype(i32) %.val15) #21, !srcloc !197
  %i.o = getelementptr i8, ptr %i.b, i64 1348
  %i.p = load volatile i32, ptr %i.o, align 4     ; 2 uses
  %.val.i.i = load i32, ptr %i.e, align 8
  %.val11.i.i = load ptr, ptr %i.f, align 8
  %i.q = zext i32 %.val.i.i to i64
  %i.r = getelementptr i8, ptr %.val11.i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = and i32 %i.p, 64
  %.not9.i.i = icmp eq i32 %i.t, 0
  %or.cond.i.i = or i1 %.not9.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %ktime_to_timespec64_cond.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8              ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.not.i.i, label %ktime_to_timespec64_cond.exit.i.i, label %bb.e

ktime_to_timespec64_cond.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.v = and i32 %i.p, 16
  %.not10.i.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i.i, label %__packet_set_timestamp.exit, label %bb.d

bb.d:                                             ; preds = %ktime_to_timespec64_cond.exit.i.i
  %i.w = getelementptr i8, ptr %0, i64 129
  %i.x = load i32, ptr %i.w, align 1
  %i.y = and i32 %i.x, 3
  %.not.i12.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i12.i.i, label %skb_tstamp.exit.i.i, label %__packet_set_timestamp.exit

skb_tstamp.exit.i.i:                              ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.not.i13.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i13.not.i.i, label %__packet_set_timestamp.exit, label %bb.e

bb.e:                                             ; preds = %skb_tstamp.exit.i.i, %bb.c
  %.sink25.i.i = phi i64 [ %i.u, %bb.c ], [ %i.aa, %skb_tstamp.exit.i.i ]
  %.0.ph.i.i = phi i32 [ -2147483648, %bb.c ], [ 536870912, %skb_tstamp.exit.i.i ]
  %i.ab = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %.sink25.i.i) #20 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 3 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 3 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 1336
  %i.af = load i32, ptr %i.ae, align 8
  switch i32 %i.af, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc i64 %i.ac to i32
  %i.ah = getelementptr i8, ptr %i.m, i64 20
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = sdiv i64 %i.ad, 1000
  %1 = trunc i64 %i.ai to i32
  %2 = getelementptr i8, ptr %i.m, i64 24
  store i32 %1, ptr %2, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aj = trunc i64 %i.ac to i32
  %i.ak = getelementptr i8, ptr %i.m, i64 16
  store i32 %i.aj, ptr %i.ak, align 4
  %3 = trunc i64 %i.ad to i32
  %4 = getelementptr i8, ptr %i.m, i64 20
  store i32 %3, ptr %4, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.al = trunc i64 %i.ac to i32
  %i.am = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.al, ptr %i.am, align 4
  %5 = trunc i64 %i.ad to i32
  %6 = getelementptr i8, ptr %i.m, i64 8
  store i32 %5, ptr %6, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.an = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.3, i32 503, i32 2321, i64 16) #21, !srcloc !198
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.an) #20
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !199
  tail call void asm sideeffect "1112: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1112b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1112) #21, !srcloc !200
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.3, i32 504, i32 0, i64 16) #21, !srcloc !201
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !202
  br label %__packet_set_timestamp.exit

__packet_set_timestamp.exit:                      ; preds = %ktime_to_timespec64_cond.exit.i.i, %bb.d, %skb_tstamp.exit.i.i, %bb.j
  %.0.i = phi i32 [ %.0.ph.i.i, %bb.j ], [ 0, %skb_tstamp.exit.i.i ], [ 0, %bb.d ], [ 0, %ktime_to_timespec64_cond.exit.i.i ] ; 3 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 1336
  %.val = load i32, ptr %i.ao, align 8
  switch i32 %.val, label %bb.n [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.k:                                             ; preds = %__packet_set_timestamp.exit
  %i.ap = sext i32 %.0.i to i64
  store volatile i64 %i.ap, ptr %i.m, align 8
  br label %__packet_set_status.exit

bb.l:                                             ; preds = %__packet_set_timestamp.exit
  store volatile i32 %.0.i, ptr %i.m, align 4
  br label %__packet_set_status.exit

bb.m:                                             ; preds = %__packet_set_timestamp.exit
  %i.aq = getelementptr i8, ptr %i.m, i64 20
  store volatile i32 %.0.i, ptr %i.aq, align 4
  br label %__packet_set_status.exit

bb.n:                                             ; preds = %__packet_set_timestamp.exit
  %i.ar = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.15, ptr nonnull @.str.3, i32 421, i32 2321, i64 16) #21, !srcloc !99
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ar) #20
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !100
  tail call void asm sideeffect "1104: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1104b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1104) #21, !srcloc !101
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.3, i32 422, i32 0, i64 16) #21, !srcloc !102
  unreachable

__packet_set_status.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !103
  %i.as = getelementptr i8, ptr %i.b, i64 1352
  tail call void @complete(ptr noundef %i.as) #20
  br label %bb.o

bb.o:                                             ; preds = %__packet_set_status.exit, %bb.a
  tail call void @sock_wfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @packet_xmit(ptr nofree noundef captures(address) %0, ptr noundef nonnull %1) unnamed_addr #2 align 16 prefalign(16) {
packet_sock_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 1296
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 64
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.a, label %bb.b

bb.a:                                             ; preds = %packet_sock_flag.exit
  %i.d = tail call i32 @__dev_queue_xmit(ptr noundef nonnull %1, ptr noundef null) #20
  br label %dev_direct_xmit.exit

bb.b:                                             ; preds = %packet_sock_flag.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @nf_hooks_needed, i64 416), i1 false) #21
          to label %nf_hook_egress_active.exit [label %bb.c], !srcloc !49

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @nf_hook_direct_egress(ptr noundef %1) #22, !srcloc !203 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %dev_direct_xmit.exit, label %nf_hook_egress_active.exit

nf_hook_egress_active.exit:                       ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.b ]    ; 7 uses
  %i.f = getelementptr i8, ptr %.0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #21, !srcloc !204 ; 2 uses
  %i.k = add i32 %i.j, 1
  %i.l = getelementptr i8, ptr %.0, i64 160
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.g, i64 40       ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = urem i32 %i.j, %i.n
  %i.p = trunc i32 %i.o to i16
  %i.q = add i16 %i.p, 1
  %i.r = getelementptr i8, ptr %.0, i64 124
  store i16 %i.q, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %nf_hook_egress_active.exit
  %i.u = tail call zeroext i16 %i.t(ptr noundef %i.g, ptr noundef nonnull %.0, ptr noundef null) #20, !inline_history !205 ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i32, ptr %i.m, align 8
  %.not.i.i = icmp ugt i32 %i.w, %i.v
  br i1 %.not.i.i, label %packet_pick_tx_queue.exit, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @net_ratelimit() #20
  %.not7.i.i = icmp eq i32 %i.x, 0
  br i1 %.not7.i.i, label %packet_pick_tx_queue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.g, i64 288
  %i.z = load i32, ptr %i.m, align 8
  %i.aa = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %i.y, i32 noundef %i.v, i32 noundef %i.z) #24 ; 0 uses
  br label %packet_pick_tx_queue.exit

bb.g:                                             ; preds = %nf_hook_egress_active.exit
  %i.ab = tail call zeroext i16 @netdev_pick_tx(ptr noundef %i.g, ptr noundef nonnull %.0, ptr noundef null) #20
  br label %packet_pick_tx_queue.exit

packet_pick_tx_queue.exit:                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i16 [ %i.ab, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.u, %bb.d ]
  %i.ac = tail call i32 @__dev_direct_xmit(ptr noundef nonnull %.0, i16 noundef zeroext %.0.i) #20 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 15
  br i1 %i.ad, label %dev_direct_xmit.exit, label %bb.h

bb.h:                                             ; preds = %packet_pick_tx_queue.exit
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %.0, i32 noundef 2) #20
  br label %dev_direct_xmit.exit

dev_direct_xmit.exit:                             ; preds = %bb.h, %packet_pick_tx_queue.exit, %bb.c, %bb.a
  %.06 = phi i32 [ 1, %bb.c ], [ %i.d, %bb.a ], [ %i.ac, %packet_pick_tx_queue.exit ], [ %i.ac, %bb.h ]
  ret i32 %.06
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skb_set_delivery_type_by_clockid(ptr nofree noundef nonnull captures(none) initializes((32, 40)) %0, i64 noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %.thread [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 11, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

.thread:                                          ; preds = %bb.a
  tail call void asm sideeffect "585: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 585b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 585) #21, !srcloc !78
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.16, i32 4484, i32 2307, i64 16) #21, !srcloc !79
  tail call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #21, !srcloc !80
  %i.a = getelementptr i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 129
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.c = getelementptr i8, ptr %0, i64 32
  store i64 %1, ptr %i.c, align 8
  %.not.i = icmp eq i64 %1, 0
  %i.d = getelementptr i8, ptr %0, i64 129        ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %i.d, align 1
  %i.f = and i32 %i.e, -4
  %i.g = or disjoint i32 %i.f, %.06
  br label %skb_set_delivery_time.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %i.h = phi ptr [ %i.b, %.thread ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = load i32, ptr %i.h, align 1
  %i.j = and i32 %i.i, -4
  br label %skb_set_delivery_time.exit

skb_set_delivery_time.exit:                       ; preds = %bb.e, %bb.f
  %i.k = phi ptr [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %.sink.i = phi i32 [ %i.j, %bb.f ], [ %i.g, %bb.e ]
  store i32 %.sink.i, ptr %i.k, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skb_setup_tx_timestamp(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 192
  %.val5 = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 200
  %.val6 = load ptr, ptr %i.d, align 8
  %i.e = zext i32 %.val5 to i64
  %i.f = getelementptr i8, ptr %.val6, i64 %i.e   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 28       ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_sock_tx_timestamp.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
end_hunk_0
